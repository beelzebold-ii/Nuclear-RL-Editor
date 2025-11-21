local json = require("json")

function SaveLevel()
	print("SAVING LEVEL...")
	local levelfile = {tilemap = tilemap,eObjs = eObjs,iObjs = iObjs,pObj = pObj,exit = exit,secret = secret}
	local filename = "nrl_level_"..os.date("!%Y-%m-%d_%H-%M-%S")..".json"
	print("Saving as: "..filename)
	lvlfile = love.filesystem.newFile(filename)
	local ok,err = lvlfile:open("w")
	if ok==false then
		print("level file failed to write: "..err)
		end
	lvlfile:write(json.encode(levelfile))
	lvlfile:close()
	end

function LoadLevel(levelstring)
	local levelfile = json.decode(levelstring)
	tilemap = levelfile.tilemap
	eObjs = levelfile.eObjs
	iObjs = levelfile.iObjs
	pObj = levelfile.pObj
	exit = levelfile.exit
	secret = levelfile.secret
	end

function love.filedropped(dfile)
	dfile:open("r")
	local data = dfile:read()
	dfile:close()
	LoadLevel(data)
	end