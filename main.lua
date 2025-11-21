--cqgunnin level editor, nuff said

xofs = 0
menu = false
menuselect = 1
txtsel = 0
menuframes = 0
optmenu = false
cursorx = 23
cursory = 10
framecounter = 0

boolnum = { [true]=1, [false]=0 }
placementtype = 0 --0=tile 1=eObj 2=iObj 3=ammo 4=misc (player, exits)
placementclass = 0 --also used for tile type
placementskill = 1
skillabove = true --true=spawns on skill and above, false=spawns on skill and below
placementcount = 10
eclasses = {
	"pissecguard",
	"shotsecguard",
	"secdog",
	"smgtacguard",
	"rifletacguard",
	"riflemilguard",
	"shotmilguard",
	"mildog",
	"gundrone",
	"shockdrone",
	"gundronesmall",
	"shockdronesmall",
	"turret1",
	"turret2",
	"protogunbot",
	"gunbot",
	"eliteguard"
}
iclasses = {
	"m99pis",--pistols
	"witchmag",
	"mk23pis",
	"ch7pis",
	"ch9pis",
	"sawnoff",--shotguns
	"ca12shotty",
	"autoshotty",
	"supershotgun",
	"autopis",--rifles
	"sm40smg",
	"sn730rifle",
	"z3rifle",
	"g26rifle",
	"machinegun",
	"huntrifle",--misc guns
	"bossrifle",
	"baton",--melee
	"knife",
	"machete",
	"knuckles",
	"secarm",--armors
	"riotarm",
	"milarm",
	"balarm",
	"nrgarm",
	"painkiller",--medical
	"adrenaline",
	"combatstim",
	"bandage",
	"medikit",
	"traumakit"
}

require("classes")

require("save")

--this can be actual static tile data
--45x25
tilemap={ --default level
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
{1,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
{1,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,1},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
}
tilecolor={{0.2,0.15,0.15,1},{0.6,0.5,0.5,1},{0.2,0.9,0.2,1}}
tilechar={".","#","="}
eObjs = {
	
}
iObjs = {
	
}
pObj = {char="@",color={0.2,0.2,1,1},pox=23,poy=13}
exit = {pox = 23,poy = 20}
secret = {pox = -1,poy = -1}

function love.load()
	screenCa = love.graphics.newCanvas(800,480)
	curveshader = love.graphics.newShader("curveshader.gl")
	
	font = love.graphics.newFont("consola.ttf",20,"mono")
	love.graphics.setFont(font)
	
	local scale = love.graphics.getHeight()/480
	xofs = (love.graphics.getWidth()-(800*scale))/2
	
	love.keyboard.setKeyRepeat(true)
	end

function love.update(dt)
	framecounter = (framecounter+(dt*60))%256
	if (menu) or (optmenu) then
		menuframes=menuframes+1
		else
		menuframes=0
		menuselect=1
		end
	end

function love.draw()
	screenCa:renderTo(nikodraw)
	
	local scale = love.graphics.getHeight()/480
	xofs = (love.graphics.getWidth()-(800*scale))/2
	
	love.graphics.clear(0.05,0.05,0.05)
	love.graphics.setColor(1,1,1,1)
	love.graphics.setShader(curveshader)
	love.graphics.draw(screenCa,xofs,0,0,scale,scale)
	love.graphics.setShader()
	end

function drawworld(camx,camy)
	for ty=camy,camy+24 do
		for tx=camx,camx+44 do
			--draw the tile at tx,ty
			love.graphics.setColor(tilecolor[tilemap[ty][tx]+1])
			love.graphics.print(tilechar[tilemap[ty][tx]+1],(tx*15)+50-7,(ty*15)+15-8)
			end
		end
	end
function drawObjs(camx,camy)
	for _,o in ipairs(iObjs) do objDraw(o) end
	objDraw({pox=secret.pox,poy=secret.poy,char=">",color={1,0.5,0.5,1}})
	objDraw({pox=exit.pox,poy=exit.poy,char=">",color={1,1,1,1}})
	for _,o in ipairs(eObjs) do objDraw(o) end
	objDraw(pObj)
	end
--actual function that draws individual objs
function objDraw(o,alwaysdraw)
	local isfobj = false
	if o.health==nil then isfobj = true end
	
	local sx,sy=(o.pox*15)+50-7,(o.poy*15)+15-8
	love.graphics.setColor(0,0,0)
	love.graphics.rectangle("fill",sx,sy,15,15)
	love.graphics.setColor(o.color)
	if o.pox>45 or o.poy>25 or o.pox<1 or o.poy<1 then return end
	if isfobj==true and tilemap[o.poy][o.pox]==2 then--apparently this fucking explodes somehow but I'm too lazy to fix it rn so TODO: that lmao :3
		love.graphics.setColor(tilecolor[3][1],tilecolor[3][2],tilecolor[3][3],1)
		end
	
	if isfobj==true and tilemap[o.poy][o.pox]==1 then
		love.graphics.print("#",sx,sy)
		else
		love.graphics.print(o.char,sx,sy)
		end
	end

function nikodraw()
	love.graphics.clear(0,0,0,1)
	
	drawworld(1,1)
	drawObjs(1,1)
	
	--draw the cursor
	if (not menu) then
		objDraw({char="X",color={0.75,0.8,1.0,1.0},pox=cursorx,poy=cursory})
		end
	
	love.graphics.setColor(1,1,1,1)
	
	--draw the indicators
	local typename = {"Tile  ","Enemy ","Items ","Ammo  ","Misc  "}
	local tilenames = {"Floor","Wall","Acid"}
	local miscnames = {"Player","Exit","Secret Exit"}
	love.graphics.print("[A] Type: "..typename[placementtype+1],30,400)
	local placename = ""
	--get placename
	if placementtype == 0 then
		placename = tilenames[placementclass+1]
		end
	if placementtype == 1 then
		placename = objclasses[eclasses[placementclass+1]].name
		end
	if placementtype == 2 then
		placename = itemclasses[iclasses[placementclass+1]].name
		end
	if placementtype == 3 then
		placename = ammotypes[placementclass+1]
		end
	if placementtype == 4 then
		placename = miscnames[placementclass+1]
		end
	
	--difficulty
	local skillup = "+"
	if skillabove==false then skillup = "-" end
	love.graphics.print("[</>/?]Gameskill: "..placementskill..skillup,30,415)
	
	--print selection
	love.graphics.print("[X/C]"..typename[placementtype+1].."ID "..placementclass+1 .." ["..placename.."]",30,430)
	if placementtype==3 then
		love.graphics.print("[S/D]Count: "..placementcount,30,445)
		end
	--print targetted tile info
	local objhere = "N/A"
	local oat = anyObjAt(cursorx,cursory)
	if oat[2]=="x" then
		objhere = "Exit"
		end
	if oat[2]=="s" then
		objhere = "Secret Exit"
		end
	if oat[2]=="p" then
		objhere = "Player"
		end
	if oat[2]=="i" then
		local skillup = "+"
		if iObjs[oat[1]].above==false then skillup = "-" end
		objhere = iObjs[oat[1]].name.." ["..iObjs[oat[1]].skill..skillup.."]"
		end
	if oat[2]=="e" then
		local skillup = "+"
		if eObjs[oat[1]].above==false then skillup = "-" end
		objhere = eObjs[oat[1]].name.." ["..eObjs[oat[1]].skill..skillup.."]"
		end
	love.graphics.print("Tile here: "..tilenames[tilemap[cursory][cursorx]+1],300,400)
	love.graphics.print("Object here: "..objhere,300,415)
			
	--draw the menu
	if menuframes>0 and (menu) then
		love.graphics.setColor(0.35,0.35,0.5,1)
		love.graphics.rectangle("fill",8*3+22,8*3,8*22,16*math.min(5,math.ceil(menuframes/3)))
		love.graphics.setColor(1,1,1)
		--menu text
		if menuframes>30 then
			local menutext = {"save level","exit"}
			local seletext = {"SAVE LEVEL","EXIT?"}
			for i=1,2 do
				if i~=menuselect then
					love.graphics.print(menutext[i],8*5+22,8*3+16*i)
					end
				--yk I wasn't gonna make the selection flash but I feel like it'll just make it just that little bit less bland and static
				if i==menuselect and framecounter%32<16 then
					love.graphics.print(seletext[i],8*5+22,8*3+16*i)
					end
				end
			end
		end
	end

function love.keypressed(key,scancode,isrepeat)
	if (optmenu) then menu=false end
	
	if (not (menu or optmenu)) then
		if key=="right" then
			cursorx=cursorx+1
			end
		if key=="left" then
			cursorx=cursorx-1
			end
		if key=="down" then
			cursory=cursory+1
			end
		if key=="up" then
			cursory=cursory-1
			end
		if cursorx>44 then cursorx=44 end
		if cursorx<2 then cursorx=2 end
		if cursory>24 then cursory=24 end
		if cursory<2 then cursory=2 end
		
		if key=="," then
			placementskill = math.max(placementskill - 1,1)
			end
		if key=="." then
			placementskill = math.min(placementskill + 1,4)
			end
		if key=="/" then
			skillabove = (not skillabove)
			end
		
		if key=="x" then
			local pclasses = {
				3,--tiles
				#eclasses,--enemies
				#iclasses,--items
				#ammotypes,--ammo
				3,--misc
			}
			placementclass=placementclass-1
			if placementclass<0 then
				placementclass=pclasses[placementtype+1]-1
				end
			end
		if key=="c" then
			local pclasses = {
				3,--tiles
				#eclasses,--enemies
				#iclasses,--items
				#ammotypes,--ammo
				3,--misc
			}
			placementclass=(placementclass+1)%pclasses[placementtype+1]
			end
		if key=="d" then
			placementcount = math.min(placementcount + 1,20)
			end
		if key=="s" then
			placementcount = math.max(placementcount - 1,2)
			end
		if key=="a" then
			placementcount = 10
			placementclass=0
			placementtype=(placementtype + 1) % 5
			end
		if key=="z" then
			--place a tile/object
			--tile
			if placementtype == 0 and (placementclass~=1 or anyObjAt(cursorx,cursory)[2]=="n") then
				tilemap[cursory][cursorx] = placementclass
				end
			--enemy
			if placementtype == 1 and tilemap[cursory][cursorx]~=1 and anyObjAt(cursorx,cursory)[2]=="n" then
				makeObj(eclasses[placementclass+1],cursorx,cursory)
				eObjs[#eObjs].skill = placementskill
				eObjs[#eObjs].above = skillabove
				end
			--item
			if placementtype == 2 and tilemap[cursory][cursorx]~=1 and anyObjAt(cursorx,cursory)[2]=="n" then
				makeItemObj(iclasses[placementclass+1],cursorx,cursory)
				iObjs[#iObjs].skill = placementskill
				iObjs[#iObjs].above = skillabove
				end
			--ammo
			if placementtype == 3 and tilemap[cursory][cursorx]~=1 and anyObjAt(cursorx,cursory)[2]=="n" then
				makeAmmoObj(ammotypes[placementclass+1],placementcount,cursorx,cursory)
				iObjs[#iObjs].skill = placementskill
				iObjs[#iObjs].above = skillabove
				end
			--misc
			if placementtype == 4 and tilemap[cursory][cursorx]~=1 and anyObjAt(cursorx,cursory)[2]=="n" then
				if placementclass == 1 then
					exit = {pox = cursorx,poy = cursory}
					end
				if placementclass == 2 then
					secret = {pox = cursorx,poy = cursory}
					end
				if placementclass == 0 then
					pObj.pox = cursorx;pObj.poy = cursory
					end
				end
			end
		if (key=="delete" or key=="backspace") then
			local oat = anyObjAt(cursorx,cursory)
			if oat[2]=="s" or oat[2]=="e" or oat[2]=="i" then
				if oat[2]=="s" then
					secret = {pox = -1,poy = -1}
					end
				if oat[2]=="i" then
					table.remove(iObjs,oat[1])
					for i,o in ipairs(iObjs) do
						o.id = i
						end
					end
				if oat[2]=="e" then
					table.remove(eObjs,oat[1])
					for i,o in ipairs(eObjs) do
						o.id = i
						end
					end
				else
				tilemap[cursory][cursorx] = 0
				end
			end
		--if (yes menu) then
		else
		
		if (optmenu) then
			if key=="right" then
				if menuselect>1 then
					lvsettings[menuselect]=math.min(lvsettings[menuselect]+1,50)
					else
					if txtsel<12 then
						txtsel=txtsel+1
						end
					end
				end
			if key=="left" then
				if menuselect>1 then
					lvsettings[menuselect]=math.max(lvsettings[menuselect]-1,1)
					else
					if txtsel>0 then
						txtsel=txtsel-1
						end
					end
				end
			end
		
		if key=="down" then
			if not (optmenu and txtsel>0) then
				menuselect=menuselect+1
				if menuselect>2 then menuselect=2 end
				if (optmenu) and menuselect>2 then menuselect=2 end
				else
				lvsettings[1][txtsel]=(lvsettings[1][txtsel]%30)+1
				end
			end
		if key=="up" then
			if not (optmenu and txtsel>0) then
				menuselect=menuselect-1
				if menuselect<1 then menuselect=1 end
				else
				lvsettings[1][txtsel]=(lvsettings[1][txtsel]-2)%30+1
				end
			end
		if key=="z" or key=="return" or key=="space" and isrepeat==false then
			if (menu) then
				local menufunctions = {
					function()--save
						SaveLevel()
						
						menu=false
						end,
					function()--BEGONE
						love.event.quit()
						end
				}
				menufunctions[menuselect]()
				end
			end
		if key=="x" then
			menu=false
			optmenu=false
			end
		end
	
	if key=="escape" and isrepeat==false then
		--open the menu
		if (not optmenu) then menu=(not menu) end
		end
	end

function objAt(ox,oy,otable)
	for i,o in ipairs(otable) do
		if o.pox==ox and o.poy==oy then
			--quick dirty fix for objat getting tripped up by ghosts like the hitscan check did
			if otable==eObjs and o.health<=0 then else
				return i
				end
			end
		end
	return -1
	end
objat = objAt
function anyObjAt(ox,oy)
	local oat = -1
	local otype = "n"
	if objAt(ox,oy,iObjs)~=-1 then
		oat = objAt(ox,oy,iObjs)
		otype = "i"
		end
	if objAt(ox,oy,eObjs)~=-1 then
		oat = objAt(ox,oy,eObjs)
		otype = "e"
		end
	if pObj.pox==ox and pObj.poy==oy then
		otype = "p"
		end
	if exit.pox==ox and exit.poy==oy then
		otype = "x"
		end
	if secret.pox==ox and secret.poy==oy then
		otype = "s"
		end
	return {oat,otype}
	end