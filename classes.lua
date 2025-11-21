objclasses={
	pissecguard = {
		char="S",
		color={0,0.6,0.9,1},
		name="Security Guard (m99)",
	},
	shotsecguard = {
		char="S",
		color={0,0.6,0.9,1},
		name="Security Guard (Sawnoff)",
	},
	secdog = {
		char="s",
		color={0,0.6,0.9,1},
		name="Security Dog",
	},
	smgtacguard = {
		char="R",
		color={0.6,0.6,0.6,1},
		name="Riot Guard (SM-40)",
	},
	rifletacguard = {
		char="R",
		color={0.6,0.6,0.6,1},
		name="Riot Guard (SN730)",
	},
	riflemilguard = {
		char="M",
		color={0,0.5,0,1},
		name="Militia Guard (SN730)",
	},
	shotmilguard = {
		char="M",
		color={0,0.5,0,1},
		name="Militia Guard (CA12)",
	},
	mildog = {
		char="m",
		color={0,0.5,0,1},
		name="Militia Dog",
	},
	gundrone = {
		char="D",
		color={0.4,0.4,0.4,1},
		name="Gun Drone",
	},
	shockdrone = {
		char="d",
		color={0.4,0.4,0.4,1},
		name="Shock Drone",
	},
	gundronesmall = {
		char="D",
		color={0.7,0.7,0.7,1},
		name="Lt.Gun Drone",
	},
	shockdronesmall = {
		char="d",
		color={0.7,0.7,0.7,1},
		name="Lt.Shock Drone",
	},
	protogunbot = {
		char="B",
		color={0.4,0.5,0.8,1},
		name="Defense Bot (Proto)",
	},
	gunbot = {
		char="B",
		color={0.5,1,0.6,1},
		name="Defense Bot (Final)",
	},
	turret1 = {
		char="t",
		color={0.4,0.4,0.4,1},
		name="Defense Turret (9mm)",
	},
	turret2 = {
		char="T",
		color={0.4,0.4,0.4,1},
		name="Defense Turret (5mm)",
	},
	eliteguard = {
		char="E",
		color={1,1,1,1},
		name="Elite Guard",
	}
}

itemclasses = {
	m99pis = {
		type="weapon",
		name="m99 Pistol",
		char="}",
		color={0.5,0.5,0.5,1}
	},
	baton = {
		type="weapon",
		name="Baton",
		char="/",
		color={0.4,0.4,0.5,1}
	},
	knife = {
		type="weapon",
		name="Combat Knife",
		char="/",
		color={0.6,0.6,0.7,1}
	},
	sawnoff = {
		type="weapon",
		name="Sawnoff Shotgun",
		char="}",
		color={0.7,0.5,0.45,1}
	},
	sm40smg = {
		type="weapon",
		name="sm-40 SMG",
		char="}",
		color={0.65,0.65,0.7,1}
	},
	ca12shotty = {
		type="weapon",
		name="CA12 Shotgun",
		char="}",
		color={0.9,0.5,0.5,1}
	},
	ch7pis = {
		type="weapon",
		name="CH7 Pistol",
		char="}",
		color={0.5,0.7,0.6,1}
	},
	machete = {
		type="weapon",
		name="Machete",
		char="/",
		color={0.7,0.5,0.5,1}
	},
	knuckles = {
		type="weapon",
		name="Knuckleduster",
		char="/",
		color={0.6,0.6,0.2,1}
	},
	sn730rifle = {
		type="weapon",
		name="SN730 Rifle",
		char="}",
		color={0.4,0.4,0.8,1}
	},
	z3rifle = {
		type="weapon",
		name="z-3 Battlerifle",
		char="}",
		color={0.9,0.8,0.5,1}
	},
	--energy weapons
	blaster = {
		type="weapon",
		name="Arc Pistol",
		char="}",
		color={0.7,0.3,1.0,1}
	},
	plasrifle = {
		type="weapon",
		name="Arc Cannon",
		char="}",
		color={1.0,0.3,0.7,1}
	},
	sword = {
		type="weapon",
		name="Arc Blade",
		char="/",
		color={0.7,0.3,1.0,1}
	},
	
	--new guns
	witchmag = {
		type="weapon",
		name="Magnum Revolver",
		char="}",
		color={0.4,0.65,0.5,1}
	},
	mk23pis = {
		type="weapon",
		name="mk21 Handcannon",
		char="}",
		color={0.1,0.55,0.15,1}
	},
	huntrifle = {
		type="weapon",
		name="Hunting Rifle",
		char="}",
		color={0.2,0.6,0.6,1}
	},
	bossrifle = {
		type="weapon",
		name="BM9 Rifle",
		char="}",
		color={0.2,0.6,0.6,1}
	},
	autopis = {
		type="weapon",
		name="sm-41 Micro-SMG",
		char="}",
		color={0.3,0.3,0.45,1}
	},
	
	--new superweapons
	--these are conventional firearms that are very rare and expensive but very effective if you find one
	magsmg = {
		type="weapon",
		name="mk13 SMG",
		char="}",
		color={0.8,0.75,0.15,1}
	},
	machinegun = {
		type="weapon",
		name="Machinegun",
		char="}",
		color={0.12,0.12,0.3,1}
	},
	autoshotty = {
		type="weapon",
		name="Autoshotgun",
		char="}",
		color={0.5,0.1,0.25,1}
	},
	supershotgun = {
		type="weapon",
		name="Supershotgun",
		char="}",
		color={1.0,0.0,0.25,1}
	},
	ch9pis = {
		type="weapon",
		name="CH9 Pistol",
		char="}",
		color={0.1,0.3,0.2,1}
	},
	g26rifle = {
		type="weapon",
		name="G26 Rifle",
		char="}",
		color={0.4,0.4,0.15,1}
	},
	
	secarm = {
		type="armor",
		name="Security Armor",
		char="[",
		color={0.2,0.4,0.6,1}
	},
	riotarm = {
		type="armor",
		name="Riot Armor",
		char="[",
		color={0.7,0.7,0.7,1}
	},
	milarm = {
		type="armor",
		name="Militia Armor",
		char="[",
		color={0.2,0.6,0.2,1}
	},
	balarm = {
		type="armor",
		name="Ballistic Armor",
		char="[",
		color={0.1,0.2,0.1,1}
	},
	nrgarm = {
		type="armor",
		name="Energy Armor",
		char="[",
		color={0.6,0.4,0.9,1}
	},
	
	--new medical items
	painkiller = {
		type="pain",
		name="Painkillers",
		char="+",
		color={0.1,0.4,0.08}
	},
	adrenaline = {
		type="pain",
		name="Adrenaline",
		char="+",
		color={0.15,0.8,0.35}
	},
	combatstim = {
		type="pain",
		name="Combat Stim",
		char="+",
		color={0.5,1.0,0.7}
	},
	bandage = {
		type="aid",
		name="Bandages",
		char="+",
		color={0.9,0.5,0.5}
	},
	medikit = {
		type="aid",
		name="First Aid Kit",
		char="+",
		color={0.75,0.3,0.225}
	},
	traumakit = {
		type="aid",
		name="Trauma Kit",
		char="+",
		color={0.6,0.0,0.0}
	},
}

ammotypes = {"9mm",".35","5mm","7mm","12ga"}


function makeObj(classname,ox,oy)
	local o={pox=ox,poy=oy}
	local c=objclasses[classname]
	if c==nil then print("invalid object classname!");mkHudmessage("invalid object classname!");return end
	o.char=c.char--the character representing the obj
	o.color=c.color--the color of said char
	o.health=10
	o.name=c.name--displayed on the info screen and when hovered
	o.id=#eObjs+1
	o.maxhealth=o.health
	o.cname=classname
	
	table.insert(eObjs,o)
	end


function inventoryItem(classname)
	local o = {}
	local c = itemclasses[classname]
	
	o.type = c.type
	o.name=c.name
	o.char=c.char
	o.color=c.color
	
	return o
	end
function makeItemObj(classname,ox,oy)
	print("made item obj")
	local ioat = objat(ox,oy,iObjs)
	if ioat~=-1 then
		return
		end
	local o={pox=ox,poy=oy,item=inventoryItem(classname)}
	o.char=o.item.char
	o.color=o.item.color
	o.name=o.item.name
	o.cname=classname
	o.id=#iObjs+1
	table.insert(iObjs,o)
	end
function makeAmmoObj(ammotype,count,ox,oy)
	print("made item obj")
	local ioat = objat(ox,oy,iObjs)
	if ioat~=-1 then
		return
		end
	local ammocolors={a9mm={0.7,0.7,0.7,1},["a.35"]={0.7,0.7,0.3,1},a5mm={0.6,0.4,0.2,1},a7mm={0.9,0.7,0.2,1},a12ga={1,0.5,0.5,1}}
	local o={pox=ox,poy=oy,item={type="ammo",name=ammotype.." ammo ("..count..")",ammotype=ammotype,amount=count,char="*",color=ammocolors["a"..ammotype]}}
	o.char=o.item.char
	o.color=o.item.color
	o.name=o.item.name
	o.cname=ammotype
	o.id=#iObjs+1
	table.insert(iObjs,o)
	end