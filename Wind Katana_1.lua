wait(.25)--made by yoyyo75 :3
run = game:GetService("RunService")
local player = game.Players.LocalPlayer;char = player.Character;char.Archivable = true;
hrp = char:findFirstChild("HumanoidRootPart");head = char:findFirstChild("Head");ra = char:findFirstChild("Right Arm");la = char:findFirstChild("Left Arm");t = char:findFirstChild("Torso");humanoid = char:findFirstChild("Humanoid");ll = char:findFirstChild("Left Leg");rl = char:findFirstChild("Right Leg");
if player.Backpack:findFirstChild("WindKatana") then
player.Backpack:findFirstChild("WindKatana").Parent = nil
end
local hb = Instance.new("HopperBin", player.Backpack)
hb.Name = "WindKatana"
sword = Instance.new("Model");sword.Name = "WindKatana"
script.Parent =  hb;idol = true
if char:findFirstChild(hb.Name) then
char:findFirstChild(hb.Name):Destroy()
end
equip=false;anim = false;banim=false;click=false;damageon=false;DMG=0;edown=false;canjump=true;running=false;don=false;Damag = 10;fell = true;lenormal=true;lerun=false;canjump=true;locanrun=false;ss=false;canboost = true
if char:findFirstChild(hb.Name) then
char:findFirstChild(hb.Name).Parent = nil
end
function weldIt(p1,p2,r1,r2,place)
	local w = Instance.new("Weld")
	if place then
		w.Parent = place
	else
		w.Parent = p1
	end
	w.Part0 = p1
	w.Part1 = p2
	w.C0 = r1
	if r2 then
	w.C1 = r2
	end
	return w
end



Add = {
	part = function(color,size,pos, place, naym,scale, thing,mt,ccd,id,transparent,loool,ff,yos)
		if loool ~= nil then
		balleff = Instance.new(loool, place)
		else
		balleff = Instance.new("Part", place)
		balleff.Material = "SmoothPlastic"
		balleff.TopSurface = "SmoothNoOutlines"
		balleff.BottomSurface = "SmoothNoOutlines"
		balleff.RightSurface = "SmoothNoOutlines"
		balleff.LeftSurface = "SmoothNoOutlines"
		end
		balleff.Name = naym
		balleff.Anchored= true
		balleff.CFrame = pos
		if loool == nil then
		balleff.Shape = thing
		end
		if ff then
			balleff.FormFactor = ff
		end
		balleff.CanCollide = ccd;balleff.Transparency = transparent;
		balleff.TopSurface = 0
		balleff.BottomSurface = 0
		balleff.Size = size
		balleff.BrickColor = BrickColor.new(color)
		if not yos then
		mesh = Instance.new("SpecialMesh",balleff)
		mesh.MeshType = mt
		else
		mesh = Instance.new(yos,balleff)
		end
		mesh.Scale = scale
		if mt == "FileMesh" then
			mesh.MeshId = id
		end
		balleff.Parent = place
		return balleff
	end,
	bp = function(parent,num,p)
		lop = Instance.new("BodyPosition",parent)
		lop.Name = num
		lop.maxForce = Vector3.new(math.huge,math.huge,math.huge)
		lop.position = p
		return lop
	end,
	BG = function(P,cf)
		local bg = Instance.new("BodyGyro",P)
		bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
		bg.P = 14000
		bg.cframe = cf
		return bg
	end
}








-- MAKING THE BLADE---
Lite= Add.part("Mid gray",Vector3.new(0.300000042, 0.299999982, 0.399999976),CFrame.new(-185.849991, 1.64999986, -65.3999939, 0, -1, 0, 1, 0, -0, 0, 0, 1),sword,"Lite",Vector3.new(0.800000012, 0.800000012, 0.699999988),"Block","Brick",false,nil,0,Part,"Custom")
Dark= Add.part("Black",Vector3.new(0.400000066, 0.799999952, 0.49999997),CFrame.new(-185.991409, 1.50857925, -65.3999939, -0.707106709, -0.707106709, 0, 0.707106709, -0.707106709, 0, 0, 0, 1),sword,"Dark",Vector3.new(0.100000001, 0.949999988, 0.574999988),"Block","Brick",false,nil,0,Part,"Custom")
Dark= Add.part("Black",Vector3.new(0.400000066, 0.399999976, 0.399999976),CFrame.new(-185.991409, 1.50857735, -65.3999939, 0, -1, 0, 1, 0, -0, 0, 0, 1),sword,"Dark",Vector3.new(1, 1, 0.600000024),"Block","Brick",false,nil,0,Part,"Custom")
Blade= Add.part("Medium stone grey",Vector3.new(0.900000036, 0.200000003, 0.399999976),CFrame.new(-183.909775, 3.94065022, -65.3999939, 0.500000119, -0.866025269, 0, 0.866025269, 0.500000119, 0, 0, 0, 1),sword,"Blade",Vector3.new(1, 1, 0.200000003),"Block","Brick",false,nil,0,Part,"Custom")
Blade= Add.part("Medium stone grey",Vector3.new(0.900000036, 0.200000003, 0.399999976),CFrame.new(-183.803696, 3.83458066, -65.3799896, 0.500000119, 0.866025269, 1.44789709e-007, 0.866025269, -0.500000119, -6.87506159e-008, 1.28551001e-008, 1.5976687e-007, -1),sword,"Blade",Vector3.new(1, 0.5, 0.100000001),"Block","Wedge",false,nil,0,Part,"Custom")
Blade= Add.part("Medium stone grey",Vector3.new(0.900000036, 0.200000003, 0.399999976),CFrame.new(-185.531784, 1.82677507, -65.3999939, 0.707106829, -0.707106709, 0, 0.707106709, 0.707106829, 0, 0, 0, 1),sword,"Blade",Vector3.new(1, 1, 0.200000003),"Block","Brick",false,nil,0,Part,"Custom")
Dark= Add.part("Black",Vector3.new(0.300000042, 0.299999982, 0.399999976),CFrame.new(-185.849991, 1.64999986, -65.3999939, 0, -1, 0, 1, 0, -0, 0, 0, 1),sword,"Dark",Vector3.new(1, 1, 0.600000024),"Block","Brick",false,nil,0,Part,"Custom")
Dark= Add.part("Black",Vector3.new(0.200000077, 0.200000003, 0.5),CFrame.new(-185.991409, 1.50857735, -65.3999939, 0, -1, 0, 1, 0, -0, 0, 0, 1),sword,"Dark",Vector3.new(1, 1, 0.600000024),"Block","Brick",false,nil,0,Part,"Custom")
Lite= Add.part("Mid gray",Vector3.new(0.400000066, 0.399999976, 0.399999976),CFrame.new(-185.991409, 1.50857735, -65.3999939, 0, -1, 0, 1, 0, -0, 0, 0, 1),sword,"Lite",Vector3.new(0.800000012, 0.800000012, 0.699999988),"Block","Brick",false,nil,0,Part,"Custom")
BPart= Add.part("Black",Vector3.new(0.5, 0.399999976, 0.399999976),CFrame.new(-187.087418, 0.412563771, -65.3999939, 0.707106769, -0.70710665, 0, 0.70710665, 0.707106769, 0, 0, 0, 1),sword,"BPart",Vector3.new(0.300000012, 1, 0.800000012),"Block","Cylinder",false,nil,0,Part,"Custom")
Dark= Add.part("Black",Vector3.new(0.300000042, 0.299999982, 0.399999976),CFrame.new(-186.132828, 1.36715674, -65.3999939, 0, -1, 0, 1, 0, -0, 0, 0, 1),sword,"Dark",Vector3.new(1, 1, 0.600000024),"Block","Brick",false,nil,0,Part,"Custom")
Blade= Add.part("Medium stone grey",Vector3.new(1, 0.200000003, 0.399999976),CFrame.new(-185.461075, 1.68535447, -65.4199982, -0.707106948, 0.70710659, 4.49529054e-008, -0.70710659, -0.707106948, -1.68587405e-007, -8.74227553e-008, -1.50995817e-007, 1),sword,"Blade",Vector3.new(1, 0.5, 0.100000001),"Block","Wedge",false,nil,0,Part,"Custom")
Blade= Add.part("Medium stone grey",Vector3.new(0.450000018, 0.200000003, 0.399999976),CFrame.new(-183.487625, 4.42047977, -65.4199982, -0.42261827, 0.906307817, 6.54755326e-008, -0.906307817, -0.42261827, -1.5063398e-007, -1.08849591e-007, -1.23001655e-007, 1),sword,"Blade",Vector3.new(1, 0.5, 0.100000001),"Block","Wedge",false,nil,0,Part,"Custom")
Lite= Add.part("Mid gray",Vector3.new(0.300000042, 0.299999982, 0.399999976),CFrame.new(-186.132828, 1.36715674, -65.3999939, 0, -1, 0, 1, 0, -0, 0, 0, 1),sword,"Lite",Vector3.new(0.800000012, 0.800000012, 0.699999988),"Block","Brick",false,nil,0,Part,"Custom")
Blade= Add.part("Medium stone grey",Vector3.new(0.900000036, 0.200000003, 0.399999976),CFrame.new(-184.824173, 2.3771975, -65.4199982, -0.642787755, 0.766044319, 4.49529054e-008, -0.766044319, -0.642787755, -1.68587405e-007, -1.00250247e-007, -1.42801824e-007, 1),sword,"Blade",Vector3.new(1, 0.5, 0.100000001),"Block","Wedge",false,nil,0,Part,"Custom")
Blade= Add.part("Medium stone grey",Vector3.new(0.200000048, 0.400000006, 0.399999976),CFrame.new(-183.458023, 4.85696697, -65.3999939, -4.58588154e-008, 0.34202069, -0.939692378, -1.01666373e-008, 0.939692378, 0.34202069, 1, 2.52381778e-008, -3.96159798e-008),sword,"Blade",Vector3.new(0.400000006, 1, 0.5),"Block","Wedge",false,nil,0,Part,"Custom")
Blade= Add.part("Medium stone grey",Vector3.new(0.900000036, 0.200000003, 0.399999976),CFrame.new(-184.28212, 3.08361006, -65.3799896, 0.57357651, 0.819151938, 1.44790121e-007, 0.819151938, -0.57357651, -6.87501966e-008, 2.67313585e-008, 1.58038603e-007, -1),sword,"Blade",Vector3.new(1, 0.5, 0.100000001),"Block","Wedge",false,nil,0,Part,"Custom")
Blade= Add.part("Medium stone grey",Vector3.new(0.900000036, 0.200000003, 0.399999976),CFrame.new(-184.824173, 2.3771956, -65.3799896, 0.642787695, 0.766044378, 1.25616637e-007, 0.766044378, -0.642787695, -8.79236737e-008, 1.33913973e-008, 1.52744178e-007, -1),sword,"Blade",Vector3.new(1, 0.5, 0.100000001),"Block","Wedge",false,nil,0,Part,"Custom")
Blade= Add.part("Medium stone grey",Vector3.new(1, 0.200000003, 0.399999976),CFrame.new(-185.461075, 1.68535447, -65.3799896, 0.707106829, 0.707106709, 1.06770145e-007, 0.707106709, -0.707106829, -1.06770166e-007, 0, 1.50995803e-007, -1),sword,"Blade",Vector3.new(1, 0.5, 0.100000001),"Block","Wedge",false,nil,0,Part,"Custom")
Blade= Add.part("Medium stone grey",Vector3.new(0.5, 0.200000003, 0.399999976),CFrame.new(-183.40889, 4.83704281, -65.3799896, -0.0871555209, 0.99619472, 2.72493907e-007, 0.99619472, 0.0871555209, 5.89535674e-008, 3.49798697e-008, 2.76595131e-007, -1),sword,"Blade",Vector3.new(1, 0.5, 0.100000001),"Block","Wedge",false,nil,0,Part,"Custom")
Blade= Add.part("Medium stone grey",Vector3.new(0.400000036, 0.200000003, 0.399999976),CFrame.new(-183.604263, 4.50388622, -65.3999939, 0.42261833, -0.906307757, 0, 0.906307757, 0.42261833, 0, 0, 0, 1),sword,"Blade",Vector3.new(1, 1, 0.200000003),"Block","Brick",false,nil,0,Part,"Custom")
Handle= Add.part("Medium stone grey",Vector3.new(1.20000005, 0.399999976, 0.399999976),CFrame.new(-186.627823, 0.872184277, -65.3999939, 0.707106769, -0.70710665, 0, 0.70710665, 0.707106769, 0, 0, 0, 1),sword,"Handle",Vector3.new(1, 1, 0.600000024),"Block","Cylinder",false,nil,0,Part,"Custom")
Blade= Add.part("Medium stone grey",Vector3.new(0.450000018, 0.200000003, 0.399999976),CFrame.new(-183.487625, 4.4204855, -65.3799896, 0.422614396, 0.906309605, 1.64295614e-007, 0.906309605, -0.422614396, -4.92447079e-008, 2.48027376e-008, 1.69714212e-007, -1),sword,"Blade",Vector3.new(1, 0.5, 0.100000001),"Block","Wedge",false,nil,0,Part,"Custom")
Blade= Add.part("Medium stone grey",Vector3.new(0.900000036, 0.200000003, 0.399999976),CFrame.new(-184.930252, 2.48326516, -65.3999939, 0.642787695, -0.766044378, 0, 0.766044378, 0.642787695, 0, 0, 0, 1),sword,"Blade",Vector3.new(1, 1, 0.200000003),"Block","Brick",false,nil,0,Part,"Custom")
Blade= Add.part("Medium stone grey",Vector3.new(0.900000036, 0.200000003, 0.399999976),CFrame.new(-184.28212, 3.08361387, -65.4199982, -0.57357657, 0.819151938, 4.49529622e-008, -0.819151938, -0.57357657, -1.6858732e-007, -1.12314666e-007, -1.33521056e-007, 1),sword,"Blade",Vector3.new(1, 0.5, 0.100000001),"Block","Wedge",false,nil,0,Part,"Custom")
Blade= Add.part("Medium stone grey",Vector3.new(0.900000036, 0.200000003, 0.399999976),CFrame.new(-183.803696, 3.83458257, -65.4199982, -0.500000179, 0.866025329, 6.55408243e-008, -0.866025329, -0.500000179, -1.5046507e-007, -9.75361445e-008, -1.31992579e-007, 1),sword,"Blade",Vector3.new(1, 0.5, 0.100000001),"Block","Wedge",false,nil,0,Part,"Custom")
Blade= Add.part("Medium stone grey",Vector3.new(0.5, 0.200000003, 0.399999976),CFrame.new(-183.40889, 4.83704853, -65.4199982, 0.0871553719, 0.99619472, 6.76225653e-008, -0.99619472, 0.0871553719, -1.49568123e-007, -1.54892646e-007, -5.43295755e-008, 1),sword,"Blade",Vector3.new(1, 0.5, 0.100000001),"Block","Wedge",false,nil,0,Part,"Custom")
Core= Add.part("Bright red",Vector3.new(0.200000077, 0.200000003, 0.5),CFrame.new(-185.991409, 1.50857735, -65.3999939, 0, -1, 0, 1, 0, -0, 0, 0, 1),sword,"Core",Vector3.new(0.800000012, 0.800000012, 0.699999988),"Block","Brick",false,nil,0,Part,"Custom")
Blade= Add.part("Medium stone grey",Vector3.new(0.900000036, 0.200000003, 0.399999976),CFrame.new(-184.388199, 3.18968129, -65.3999939, 0.57357651, -0.819151998, 0, 0.819151998, 0.57357651, 0, 0, 0, 1),sword,"Blade",Vector3.new(1, 1, 0.200000003),"Block","Brick",false,nil,0,Part,"Custom")
hitbox= Add.part("Medium stone grey",Vector3.new(1, 3.46000004, 1),CFrame.new(-184.459076, 3.10561037, -65.4410172, 0.060511604, 0.598099828, -0.799133182, -0.0353691019, 0.801382124, 0.597104728, 0.997539937, -0.0078676939, 0.0696469769),sword,"hitbox",Vector3.new(1, 1, 1),"Block","Brick",false,nil,1,Part,"Brick")

while not ra or not la or not t or not humanoid or not head or not ll or not rl or not hrp do
	wait()
end
	hrpw = hrp:findFirstChild("RootJoint");lh = t:findFirstChild("Left Hip");rh = t:findFirstChild("Right Hip");rs = t:findFirstChild("Right Shoulder");ls = t:findFirstChild("Left Shoulder");neck = t:findFirstChild("Neck");
while not ls or not rs or not neck or not hrpw do
		wait()
end
co = hrpw.C0
moop = {}
function Hit(p)
	if don then
		Damagefunc(p,Damag-5,Damag+5,math.random(10,30),"Normal") end
	if QHIT then
		if not checkintable(p.Parent, moop) then
		Damagefunc(p,Damag+5,Damag+15,math.random(10,30),"Normal");
		table.insert(moop, p.Parent);else print("herena") end
	end
end


nu = sword:GetChildren()
for i = 1, #nu do
if nu[i].Name ~= "Handle" then
	if nu[i].Name == "Blade" or nu[i].Name == "hitbox" then
		nu[i].Touched:connect(Hit)
	end
	w = Instance.new("Weld", sword.Handle)
	w.Part0 = sword.Handle
	w.Part1 = nu[i]
	w.C0 = sword.Handle.CFrame:toObjectSpace(nu[i].CFrame)
	nu[i].Anchored = false
end
end
sword.Handle.Anchored = false;sword.Parent = char
function backweld()
bw = weldIt(t,Handle,CFrame.new(1.15,-0.85,-1)*CFrame.Angles(math.rad(25),math.rad(-90),0),nil)
return bw
end

backweld()

function checkintable(chek, tabl)
	for i = 1, #tabl do
		if tabl[i] == check then
		return true
		end
	end
	return false
end
------function of le splash-------------

function splash()
local blcf = hitbox.CFrame*CFrame.new(-.125,.2,0)
if scfr and (hitbox.Position-scfr.p).magnitude > .1 then
local h = 4.7
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,.1) end if b then game.Debris:AddItem(b,.1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,.1) end if b then game.Debris:AddItem(b,.1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
end
function rest(num)
for i = 0, 1, 0.13 do 
if combo ~= num then
return 
end
normal(i)
wait()
end
if combo ~= num then
return 
end
scfr=nil;anim = false;running=false;canslash=false;combo=4;runit()
end
-------------------------slashr------------------------------------------------------slashr------------------------------------------------------slashr-----------------------------
slash ={
function()
anim = true

for i = 0, 1, 0.23 do
animate("Toso",(co-Vector3.new(0,0.4,0)),0,math.rad(5),math.rad(170),i);
	animate("rr",CFrame.new(1.5,0.5,0),0,math.rad(95),math.rad(110),i);animate("lr",CFrame.new(-1.5,0.5,0),math.rad(-45),0,math.rad(-25),i)
	animate("bw",CFrame.new(0,-1,0),0,math.rad(90),0,i)
	animate("hr",CFrame.new(0,1,0),0,math.rad(-90),0,i)
	animate("reg",CFrame.new(0.5,-1.1,-0.65),math.rad(-15),0,0,i)
	animate("leg",CFrame.new(-0.5,-1.2,0),math.rad(-25),0,0,i)
	wait()
end
wait()
don = true;attackdebounce = false;scfr = nil
for i = 0, 1, 0.16 do
wait()
splash()
animate("Toso",(co-Vector3.new(0,0,0)),0,math.rad(0),math.rad(20),i);animate("hr",CFrame.new(0,1,0),0,math.rad(-20),0,i)
	animate("reg",CFrame.new(0.5,-1.5,0),math.rad(0),0,0,i)
	animate("leg",CFrame.new(-0.5,-1.5,0),math.rad(0),0,0,i)
	animate("rr",CFrame.new(1.5,0.5,0),0,math.rad(-60),math.rad(110),i);
end
scfr = nil;don = false;canslash=true;
rest(1)
end,



function()
anim = true
for i = 0, 1, 0.24 do
animate("bw",CFrame.new(0,-1,0),math.rad(20),math.rad(90),math.rad(0),i)
animate("Toso",(co-Vector3.new(0,0,0)),0,math.rad(0),math.rad(-50),i);animate("hr",CFrame.new(0,1,0),0,math.rad(10),0,i)
animate("reg",CFrame.new(0.5,-1.5,0),math.rad(0),0,math.rad(10),i)
animate("leg",CFrame.new(-0.5,-1.5,0),math.rad(0),0,0,i)
animate("rr",CFrame.new(1.5,0.5,0),math.rad(90),math.rad(0),math.rad(110),i);
wait()
end
wait();don = true;attackdebounce = false;scfr=nil;
for i = 0, 1, 0.2 do
wait()
splash()
animate("bw",CFrame.new(0,-1,0),math.rad(-60),math.rad(90),math.rad(0),i)
animate("Toso",(co-Vector3.new(0,0.3,0)),math.rad(40),math.rad(0),math.rad(0),i);animate("hr",CFrame.new(0,1,0),math.rad(40),math.rad(10),0,i)
animate("reg",CFrame.new(0.5,-1.2,-0.2),math.rad(10),0,math.rad(10),i)
animate("leg",CFrame.new(-0.5,-1.2,-0.6),math.rad(30),0,0,i)
animate("rr",CFrame.new(1.2,0.5,-0.3),math.rad(75),math.rad(0),math.rad(-40),i);
end
scfr = nil;don = false;canslash=true
rest(2)
end,
function()
anim = true;
for i = 0, 1, 0.24 do
wait();
animate("bw",CFrame.new(0,-1,0),math.rad(0),math.rad(90),math.rad(0),i)
animate("Toso",(co-Vector3.new(0,0,0)),0,math.rad(0),math.rad(30),i);animate("hr",CFrame.new(0,1,0),0,math.rad(-30),0,i)
animate("reg",CFrame.new(0.5,-1.5,0),math.rad(0),0,math.rad(15),i)
animate("leg",CFrame.new(-0.5,-1.5,0),math.rad(0),0,math.rad(-15),i)
animate("rr",CFrame.new(1,0.6,-0.25),math.rad(180),math.rad(40),math.rad(-70),i);
end;don = true;attackdebounce = false;scfr=nil
for i = 0, 1, 0.2 do
wait()
splash()
animate("bw",CFrame.new(0,-1,0),math.rad(-40),math.rad(90),math.rad(0),i)
animate("Toso",(co-Vector3.new(0,0,0)),0,math.rad(0),math.rad(-50),i);animate("hr",CFrame.new(0,1,0),0,math.rad(50),0,i)
animate("reg",CFrame.new(0.5,-1.5,0),math.rad(20),0,math.rad(6),i)
animate("leg",CFrame.new(-0.5,-1.5,0),math.rad(-10),0,math.rad(-10),i)
animate("rr",CFrame.new(1.5,0.5,0),math.rad(0),math.rad(60),math.rad(50),i);
end
scfr = nil;don = false;canslash=true
rest(3)
end,
function()
anim = true
for i = 0, 1, 0.24 do
animate("bw",CFrame.new(0,-1,0),math.rad(-100),math.rad(90),math.rad(0),i)
animate("Toso",(co-Vector3.new(0,0.6,0)),0,math.rad(0),math.rad(-40),i);animate("hr",CFrame.new(0,1,0),0,math.rad(-30),0,i)
animate("reg",CFrame.new(0.5,-0.9,-0.5),math.rad(0),0,math.rad(15),i)
animate("leg",CFrame.new(-0.5,-0.9,0.15),math.rad(-45),0,math.rad(0),i)
animate("rr",CFrame.new(1.4,0.5,0),math.rad(0),math.rad(0),math.rad(75),i);
wait()
end;wait();don = true;attackdebounce = false;scfr=nil
for i = 0, 1, 0.24 do
wait();splash()
animate("bw",CFrame.new(0,-1,0),math.rad(0),math.rad(90),math.rad(0),i)
animate("Toso",(co-Vector3.new(0,0,0)),0,math.rad(0),math.rad(30),i);animate("hr",CFrame.new(0,1,0),0,math.rad(-30),0,i)
animate("reg",CFrame.new(0.5,-1.5,0),math.rad(0),0,math.rad(15),i)
animate("leg",CFrame.new(-0.5,-1.5,0),math.rad(0),0,math.rad(-15),i)
animate("rr",CFrame.new(1,0.6,-0.25),math.rad(180),math.rad(40),math.rad(-70),i);
end;scfr = nil;don = false;canslash=true;rest(4)
end
}
-------------------------slashr------------------------------------------------------slashr------------------------------------------------------slashr-----------------------------

combo = 4;canslash=false


function clik()
	if not anim or canslash then
	canslash=false;scfr = nil
	if combo == 4 then
	combo=1;slash[1]();
	elseif combo == 1 then
	combo=2;slash[2]()
	elseif combo == 2 then
	combo=3;slash[3]()
	elseif combo == 3 then
	combo=4;slash[4]()
	end
	end
end
QHIT = false;
skills = {
function(mouse)
anim = true;locanrun=true;canjump=false
normal(1)
mh = mouse.Hit.p
x,y,z = (CFrame.new(char.Torso.Position,Vector3.new(mh.X,char.Torso.Position.Y,mh.Z))):toEulerAnglesXYZ()
char.Torso.CFrame = CFrame.new(char.Torso.Position,Vector3.new(mh.X,char.Torso.Position.Y,mh.Z))
wait();QHIT = true
for i = 0, 1, 0.333333 do
animate("bw",CFrame.new(0,-1,0),math.rad(-90),math.rad(90),math.rad(0),i)
animate("Toso",(co-Vector3.new(0,0.4,0)),0,math.rad(5),math.rad(-90),i);animate("hr",CFrame.new(0,1,0),math.rad(-10),math.rad(90),0,i)
animate("rr",CFrame.new(1.2,0.5,-1),math.rad(90),math.rad(0),math.rad(-90),i);
wait()
end
wait();moop={};
for i = 0, 1, 0.333333 do
animate("bw",CFrame.new(0,-1,0),math.rad(-90),math.rad(90),math.rad(0),i)
animate("Toso",(co-Vector3.new(0,0.4,0)),0,math.rad(5),math.rad(90),i);	animate("hr",CFrame.new(0,1,0),math.rad(-10),math.rad(-70),0,i)
animate("rr",CFrame.new(1.5,0.5,0),math.rad(90),math.rad(0),math.rad(90),i);
wait()
end;mufu={}
wind1= Add.part("Institutional white",Vector3.new(4, 1.2, 1),(hitbox.CFrame-Vector3.new(0,1,0))*CFrame.Angles(math.rad(-10),0,math.rad(90)),sword,"wind",Vector3.new(1.6, 1.1, 1.1),"Block","Sphere",false,nil,0.69999998807907,Part,"Brick")
wind2= Add.part("Really black",Vector3.new(4, 1.2, 1),(hitbox.CFrame-Vector3.new(0,1,0))*CFrame.Angles(math.rad(-10),0,math.rad(90)),sword,"wind",Vector3.new(1.6, 1.1, 1.1),"Block","Sphere",false,nil,0.60000002384186,Part,"Brick");wind2.Mesh.Offset = Vector3.new(0.4,0,0)
wind3= Add.part("Medium stone grey",Vector3.new(4, 1.2, 1),(hitbox.CFrame-Vector3.new(0,1,0))*CFrame.Angles(math.rad(-10),0,math.rad(90)),sword,"wind",Vector3.new(1.6, 1.1, 1.1),"Block","Sphere",false,nil,0.5,Part,"Brick");wind3.Mesh.Offset = Vector3.new(0.6,0,0)
wind1.CFrame = hitbox.CFrame*CFrame.Angles(math.rad(-10),0,math.rad(90))-Vector3.new(0,0.3,0);wind2.CFrame = hitbox.CFrame*CFrame.Angles(math.rad(-10),0,math.rad(90))-Vector3.new(0,0.3,0);wind3.CFrame = hitbox.CFrame*CFrame.Angles(math.rad(-10),0,math.rad(90))-Vector3.new(0,0.3,0)
eff2 = Add.part("Medium stone grey", Vector3.new(), hitbox.CFrame*CFrame.Angles(1,1,1),char,"effect",Vector3.new(1,1,1),"Block","Brick",false,nil,0.4,Part,"Brick")
eff1 = Add.part("Medium stone grey", Vector3.new(1,1,1), hitbox.CFrame*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),char,"effect",Vector3.new(1,1,1),"Block","Brick",false,nil,0.4,Part,"Brick")
eff3= Add.part("White",Vector3.new(1, 1, 1),hitbox.CFrame*CFrame.new(0,0,-1),char,"effect",Vector3.new(1.5, 1.5, 1),"Block","FileMesh",false,"http://www.roblox.com/asset/?id=3270017",0.8,Part,"Symmetric")
eff4= Add.part("Black",Vector3.new(1, 1, 1),hitbox.CFrame*CFrame.new(0,0,-1.5),char,"effect",Vector3.new(1.25, 1.25, 1),"Block","FileMesh",false,"http://www.roblox.com/asset/?id=3270017",0.8,Part,"Symmetric")
eff1.CFrame = hitbox.CFrame*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360));eff2.CFrame = hitbox.CFrame*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
eff3.CFrame = (hitbox.CFrame*CFrame.new(0,-1,0))*CFrame.Angles(math.rad(90),0,0);eff4.CFrame=(hitbox.CFrame*CFrame.new(0,-1.5,0))*CFrame.Angles(math.rad(90),0,0)
table.insert(mufu,wind1);table.insert(mufu,wind2);table.insert(mufu,wind3);
		coroutine.resume(coroutine.create(function(p1,p2,p3,p4,cf1)
		for i = 0,1,1/13 do
		p1.CFrame = (cf1*CFrame.new(0,3*i,-.5*i))*CFrame.Angles(math.rad(math.random(-400,400)),math.rad(math.random(-400,400)),math.rad(math.random(-400,400)));p1.Transparency=p1.Transparency+(0.6*(1/13))
		p2.CFrame = (cf1*CFrame.new(0,3*i,-.5*i))*CFrame.Angles(math.rad(math.random(-400,400)),math.rad(math.random(-400,400)),math.rad(math.random(-400,400)));p2.Transparency=p2.Transparency+(0.6*(1/13))
		p3.CFrame = (cf1*CFrame.new(0,-1+8*i,0.17-(8*(0.5/3))*i)*CFrame.Angles(math.rad(90),0,0));p3.Mesh.Scale = Vector3.new(1.5+1*i,1.5+1*i,1);p3.Transparency = 0.8+0.3*i
		p4.CFrame = (cf1*CFrame.new(0,-1.5+7.5*i,0.17-(7.5*(0.5/3))*i)*CFrame.Angles(math.rad(90),0,0));p4.Mesh.Scale = Vector3.new(1.25+1*i,1.25+1*i,1);p4.Transparency = 0.8+0.3*i
		wait();
		end;p1.Parent=nil;p2.Parent=nil;p3.Parent=nil;p4.Parent=nil
		end),eff1,eff2,eff3,eff4,hitbox.CFrame)
for x = 1, #mufu do
coroutine.resume(coroutine.create(function(wind,hey,trans,mehx)
	for i = 0, 1, (1/13) do
	wind.Mesh.Scale = Vector3.new(hey.X+1*i,hey.Y-hey.Y*i,hey.Z-hey.Z*i)
	wind.Mesh.Offset = Vector3.new(mehx+1*i,0,0)
	wind.Transparency = trans+(1-trans)*i
	wait()
	end;wind.Parent=nil
end),mufu[x],mufu[x].Mesh.Scale,mufu[x].Transparency,mufu[x].Mesh.Offset.X)
end



QHIT = false;locanrun=false;canjump=true;lerun=false
anim = false;
end,
function()
anim = true;canjump = false
bodyp = Add.bp(t,"Stay",t.Position);
for i = 0, 1, 1/7 do
	animate("bw",CFrame.new(0,-1,0),0,math.rad(90),0,i)
	animate("Toso",(co-Vector3.new(0,0.5,0)),math.rad(30),math.rad(0),math.rad(0),i)
	animate("hr",CFrame.new(0,1,0),math.rad(-10),math.rad(0),0,i)
	animate("rr",CFrame.new(1.5,0.5,0),math.rad(90),math.rad(35),math.rad(-25),i)
	animate("lr",CFrame.new(-1.5,0.5,0),math.rad(-15),0,math.rad(-45),i)
	animate("reg",CFrame.new(0.5,-1,-0.65),math.rad(25),0,0,i)
	animate("leg",CFrame.new(-0.5,-1.3,0),math.rad(5),0,0,i)
wait()
end;logic = Add.BG(hrp,hrp.CFrame)
for i = 1, 10 do
boost= Add.part("White",Vector3.new(1, 1, 1),t.CFrame*CFrame.new(0,0,-1),char,"effect",Vector3.new(3, 3, 3),"Block","FileMesh",false,"http://www.roblox.com/asset/?id=20329976",0.3,Part,"Symmetric")
boost.CFrame = CFrame.new(t.Position-Vector3.new(0,1.2,0))*CFrame.Angles(0,math.rad(math.random(-360,360)),0)
coroutine.resume(coroutine.create(function(mama)
	for i = 0, 1, 1/12 do
		mama.CFrame = mama.CFrame*CFrame.Angles(0,math.rad(math.random(-360,360)),0);mama.Transparency = 0.3+0.5*i;mama.Mesh.Scale = Vector3.new(3+1*i,3+1*i,3+1*i);
	wait()
	end;mama.Parent=nil
end),boost)
wait()
end;

for i = 0, 1, 1/7 do
	animate("bw",CFrame.new(0,-1,0),0,math.rad(90),0,i)
	animate("Toso",(co-Vector3.new(0,0,0)),math.rad(0),math.rad(0),math.rad(0),i)
	animate("hr",CFrame.new(0,1,0),math.rad(0),math.rad(0),0,i)
	animate("rr",CFrame.new(1.5,0.5,0),math.rad(0),math.rad(90),math.rad(90),i)
	animate("lr",CFrame.new(-1.5,0.5,0),math.rad(-15),0,math.rad(-45),i)
	animate("reg",CFrame.new(0.5,-1,-0),math.rad(0),0,math.rad(25),i)
	animate("leg",CFrame.new(-0.5,-1,0),math.rad(0),0,math.rad(-25),i)
wait()
end;

ball = Add.part("White", Vector3.new(1,1,1), t.CFrame, char, "Effect", Vector3.new(20,20,20), "Block", "Sphere",false,nil,0.7,Part,"Custom")ball.Anchored = false
anchor = Add.part("White",Vector3.new(5,5,5),t.CFrame,char,"anchor",Vector3.new(20,20,20),"Block","Sphere",false,nil,1,Part,"Custom");anchor.Anchored = false
wind = Add.part("White",Vector3.new(5,5,5),t.CFrame,char,"anchor",Vector3.new(20,20,20),"Block","FileMesh",false,"http://www.roblox.com/asset/?id=1051557",0.6,Part,"Custom");wind.Anchored = false
a=weldIt(t,anchor,CFrame.new(0,0,0),CFrame.new(0,0,0),nil);b=weldIt(t,wind,CFrame.new(0,0,0),CFrame.new(0,0,0),nil);c=weldIt(t,ball,CFrame.new(0,0,0),CFrame.new(0,0,0),nil)
already = {};weldos={};lepeepz=checkdist(t,17);gage = b.C0

for i = 1, #lepeepz do
 if lepeepz[i] then
 haw = weldIt(anchor,lepeepz[i].Torso,anchor.CFrame:toObjectSpace(lepeepz[i].Torso.CFrame),nil,nil)
 table.insert(weldos,haw);
 end
end
for i = 0,1, 1/120 do
if math.floor((i*120)%30) == 1 then
	for x = 1,#lepeepz do
	if lepeepz[x] and lepeepz[x]:findFirstChild("Humanoid") and lepeepz[x]:findFirstChild("Torso") then
	attackdebounce = false 
	Damagefunc(lepeepz[x].Torso,(humanoid.MaxHealth/10),(humanoid.MaxHealth/10),math.random(10,30),"Normal")
	end
	end
end
if math.floor((i*120)%4) == 1 then
lolbob = Add.part("White",Vector3.new(5,5,5),t.CFrame*CFrame.Angles(math.rad(math.random(-100,100)),math.rad(math.random(-100,100)),math.rad(math.random(-100,100))),char,"anchor",Vector3.new(2.5,2.5,2.5),"Block","FileMesh",false,"rbxassetid://168892432 ",0.4,Part,"Custom")
lolbob.CFrame = t.CFrame*CFrame.Angles(0,math.rad(-360,360),0)
coroutine.resume(coroutine.create(function(clone)
for i = 0, 1, 0.1 do
clone.Mesh.Scale = Vector3.new(2.5+5*i,2.5+5*i,2.5+5*i);clone.Transparency = 0.4+0.4*i
wait()
end;clone.Parent = nil
end),lolbob)
end
animate("Toso",(co-Vector3.new(0,0,0)),math.rad(0),math.rad(0),math.rad((360*16)*i),i);b.C0 = gage*CFrame.Angles(0,math.rad(100*i),0);ball.Transparency = 0.6-0.4*i;wind.Transparency = 0.6-0.4*i
for i = 1,#weldos do
weldos[i].C0 = weldos[i].C0*CFrame.new(0,0.0625,0)
end
wait()
end;logic.Parent=nil
coroutine.resume(coroutine.create(function(a1,a2,a3,ws,w)
	for i = 0, 1, 0.1 do
	w.C0 = ws*CFrame.Angles(0,math.rad(100*i),0)
	a1.Mesh.Scale = Vector3.new(20+3*i,20+3*i,20+3*i);a1.Transparency = 0.2+0.8*i
	a2.Mesh.Scale = Vector3.new(20+3*i,20+3*i,20+3*i);a2.Transparency = 0.2+0.8*i
	wait()
	end;a1.Parent=nil;a2.Parent=nil;a3.Parent=nil;
end),wind,ball,anchor,b.C0,b)
for i = 1,#weldos do if weldos[i] then weldos[i].Parent = nil end end
wait()
anim = false;bodyp.Parent=nil;canjump=true;
end,
function()
	niye = sword:GetChildren();guard=true;br = BrickColor.new("Institutional white")
	if ss then
		br = BrickColor.new("Medium stone grey");guard = false
	end
	for i = 1,# niye do
		if niye[i].Name == "Blade" then
			niye[i].BrickColor = br;ss = guard
		end
	end
end,
function(bik,rotate)
	if not canboost then return end
		coroutine.resume(coroutine.create(function(ilan,ratat)
	yolo = Add.bp(hrp,"BOPOLS",hrp.Position);canboost=false;
	boosts= Add.part("White",Vector3.new(5,5,5),hrp.CFrame,char,"boom",Vector3.new(2.5,2.5,2.5),"Block","FileMesh",false,"http://www.roblox.com/asset/?id=20329976",0.4,Part,"Custom")
	boosts.CFrame = (t.CFrame-Vector3.new(0,1.5,0))*CFrame.Angles(0,0,math.rad(ratat))
		coroutine.resume(coroutine.create(function(thing)
		print("yo")
			for i = 0, 1, 0.05 do
			thing.Mesh.Scale = Vector3.new(2.5+1*i,2.5+1*i,2.5+1*i);thing.Transparency = 0.4+0.5*i
			wait()
			end;thing.Parent=nil
				end),boosts)
	for i = 0, 1, 0.1 do
	yolo.position = (hrp.CFrame*CFrame.new(0,0,ilan)).p
	wait()
	end
	yolo.Parent = nil;canboost=true
		end),bik,rotate)
end
}
function led(key, mouse)
key = key:lower()
if anim then return end
if key == "z" then
skills[1](mouse)
elseif key == "x" then
skills[2](mouse)
elseif key == "r" then
skills[3]()
elseif key == "c" then
skills[4](-15,120)
elseif key == "v" then
skills[4](10,-120)
end
end
function normal(i)
	animate("bw",CFrame.new(0,-1,0),0,math.rad(90),0,i)
	animate("Toso",(co-Vector3.new(0,0.4,0)),0,math.rad(5),math.rad(90),i)
	animate("hr",CFrame.new(0,1,0),math.rad(-10),math.rad(-70),0,i)
	animate("rr",CFrame.new(1.5,0.5,0),math.rad(90),math.rad(115),math.rad(-25),i)
	animate("lr",CFrame.new(-1.5,0.5,0),math.rad(35),0,math.rad(-25),i)
	animate("reg",CFrame.new(0.5,-1.1,-0.65),math.rad(-15),0,0,i)
	animate("leg",CFrame.new(-0.5,-1.2,0),math.rad(-25),0,0,i)
end
function Equip(mouse)
print("yup")
if equip then return end
	while anim do wait() end
	rh.Parent=nil;rs.Parent=nil;lh.Parent=nil;neck.Parent=nil;ls.Parent=nil;rlw = weldIt(t,rl, CFrame.new(0.5,-1.5,0),CFrame.new(0,0.5,0));llw = weldIt(t,ll, CFrame.new(-0.5,-1.5,0),CFrame.new(0,0.5,0));
	rw = weldIt(t,ra,CFrame.new(1.5,0.5,0),CFrame.new(0,0.5,0),nil);lw = weldIt(t,la,CFrame.new(-1.5,0.5,0),CFrame.new(0,0.5,0));nw = weldIt(t,head,CFrame.new(0, 1, 0),CFrame.new(0,-0.5,0))
	anim = true
	bw.Parent = nil;running=false;idol=true;
	hw = weldIt(ra,Handle,CFrame.new(0,-1,0)*CFrame.Angles(0,math.rad(90),0),nil)
	for i = 0,1,0.1 do
	normal(i)
	wait(0.0001)
	end
	mouse.Button1Down:connect(clik)
	mouse.KeyDown:connect(function(k) led(k, mouse) end)
	equip = true;anim = false;
end
function unequip(mouse)
if not equip then return end
	while anim do wait() end
	anim = true;ss=false
	for i = 0,1,0.1 do
	animate("Toso",co-Vector3.new(0,0.4-0.4*i,0),0,0,0,i)
	animate("hr",CFrame.new(0,1,0),0,0,0,i)
	animate("rr",CFrame.new(1.5,0.5,0),0,0,0,i)
	animate("lr",CFrame.new(-1.5,0.5,0),0,0,0,i)
	animate("reg",CFrame.new(0.5,-1.5,0),0,0,0,i)
	animate("leg",CFrame.new(-0.5,-1.5,0),0,0,0,i)
	wait(0.0001)
	end
	hw.Parent = nil;backweld()
	rw.Parent=nil;lw.Parent=nil;hrpw.C0 = co;rlw.Parent=nil;llw.Parent=nil;rh.Parent=t;lh.Parent=t;rs.Parent=t;ls.Parent=t;neck.Parent=t;
	equip=false;anim=false
end
canrun=false
function runit()
if(t.Velocity*Vector3.new(1, 0, 1)).magnitude > 2 and not anim and equip and fell then
running = true;
for i = 0, 1,(1/7) do
if not anim and equip and running and fell then
	animate("bw",CFrame.new(0,-1,0),0,math.rad(90),0,i)
	animate("Toso",(co-Vector3.new(0,0.4,0)),0,math.rad(5),math.rad(80),i)
	animate("hr",CFrame.new(0,1,0),math.rad(0),math.rad(-80),0,i)
	animate("rr",CFrame.new(1.5,0.5,0),math.rad(90),math.rad(45),math.rad(-25),i)
	animate("lr",CFrame.new(-1.5,0.5,0),math.rad(-35),0,math.rad(-30),i)
	--[[animate("reg",CFrame.new(0.5,-1.1,0.2),math.rad(5),math.rad(-80),0,i)
	animate("leg",CFrame.new(-0.5,-1.2,-0.2),math.rad(-2),math.rad(-80),0,i)]]
	animate("reg",CFrame.new(0.6,-1.2,0),math.rad(5+35*math.cos((inf-7)/4)),math.rad(-40),0,i)
	animate("leg",CFrame.new(-0.6,-1.2,0),math.rad(-2-35*math.cos((inf-7)/4)),math.rad(-40),0,i)
wait()
else
if hw then
	hw.C0 = CFrame.new(0,-1,0)*CFrame.Angles(0,math.rad(90),0) end
break
end
end

end
end
--[[function run(speed)
if speed>0 then

if (t.Velocity*Vector3.new(1, 0, 1)).magnitude > 2 then
runit()
end
else
running = false
for i = 0, 1, 0.142 do
if not anim and equip and not running then
	normal(i)
wait()
else
if hw then
	hw.C0 = CFrame.new(0,-1,0)*CFrame.Angles(0,math.rad(90),0) end
break
end
end
idol = true
end
inf = 0
end]]




--to[mem


function Lerp(x,y,inc) return x + (y - x) * inc end

function animate(mem,cfr,x,y,z,e)
	To[mem].X=Lerp(To[mem].X,x,e);To[mem].Y=Lerp(To[mem].Y,y,e);To[mem].Z=Lerp(To[mem].Z,z,e)
	To[mem].cf=(cfr-Vector3.new(cfr.X,cfr.Y,cfr.Z))+Vector3.new(Lerp(To[mem].cf.X,cfr.X,e),Lerp(To[mem].cf.Y,cfr.Y,e),Lerp(To[mem].cf.Z,cfr.Z,e))
end
To={
 rr={X=0;Y=0;Z=0;cf=CFrame.new(1.5,0.5,0)};bw={X=math.rad(5);Y=math.rad(90);Z=0;cf=CFrame.new(0,-1,0)};lr={X=0;Y=0;Z=0;cf=CFrame.new(-1.5,0.5,0)};hr={X=0;Y=0;Z=0;cf=CFrame.new(0,1.5,0)};leg={X=0;Y=0;Z=0;cf=CFrame.new(-0.5,-1,0)};reg={X=0;Y=0;Z=0;cf=CFrame.new(0.5,-1,0)};Toso={X=0;Y=0;Z=0;cf=co}
}
game:service'RunService'.RenderStepped:connect(function()
	if rw then rw.C0=To["rr"].cf*CFrame.Angles((To["rr"].X),(To["rr"].Y),(To["rr"].Z)); end
	if hw and equip then hw.C0=To["bw"].cf*CFrame.Angles((To["bw"].X),(To["bw"].Y),(To["bw"].Z)) end
	if lw then lw.C0=To["lr"].cf*CFrame.Angles((To["lr"].X),(To["lr"].Y),(To["lr"].Z));end
	if nw then nw.C0=To["hr"].cf*CFrame.Angles((To["hr"].X),To["hr"].Y,To["hr"].Z);end
	if rlw then rlw.C0=To["reg"].cf*CFrame.Angles(To["reg"].X,To["reg"].Y,To["reg"].Z);end
	if llw then llw.C0=To["leg"].cf*CFrame.Angles(To["leg"].X,To["leg"].Y,To["leg"].Z);end
	if hrpw then hrpw.C0=To["Toso"].cf*CFrame.Angles(To["Toso"].X,To["Toso"].Y,To["Toso"].Z) end
end)
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
---------------------1274182751856210985126509218u8071894718946189406194189410-------------------------------------------
---------------------1274182751856210985126509218u8071894718946189406194189410-------------------------------------------
---------------------1274182751856210985126509218u8071894718946189406194189410-------------------------------------------
local ppart = Instance.new("Part")
ppart.Material = "SmoothPlastic"
ppart.TopSurface,ppart.BottomSurface = 0,0
ppart.FormFactor = "Custom"
ppart.Size = Vector3.new(.2,.2,.2)
ppart:BreakJoints()
ppart.TopSurface = "SmoothNoOutlines"
ppart.BottomSurface = "SmoothNoOutlines"
ppart.RightSurface = "SmoothNoOutlines"
ppart.LeftSurface = "SmoothNoOutlines"
ppart.CanCollide = false

local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end
 
function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else 
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
if Mode=="Unactive" then
w1.BrickColor = ppart.BrickColor
elseif Mode=="Hero" then
w1.BrickColor = BrickColor.new("Bright blue")
elseif Mode=="Infamous" then
w1.BrickColor = BrickColor.new("Bright red")
end
w1.Transparency = ppart.Transparency
w1.Reflectance = ppart.Reflectance
w1.Material = ppart.Material
w1.CanCollide = ppart.CanCollide
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.8
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.1 do
wait()
Part.Transparency=Part.Transparency+0.02
end
end),w1)
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
if Mode=="Unactive" then
w2.BrickColor = ppart.BrickColor
elseif Mode=="Hero" then
w2.BrickColor = BrickColor.new("Bright blue")
elseif Mode=="Infamous" then
w2.BrickColor = BrickColor.new("Bright red")
end
w2.Transparency = ppart.Transparency
w2.Reflectance = ppart.Reflectance
w2.Material = ppart.Material
w2.CanCollide = ppart.CanCollide
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.8
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.1 do
wait()
Part.Transparency=Part.Transparency+0.02
end
end),w2)
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
---------------------1274182751856210985126509218u8071894718946189406194189410-------------------------------------------
---------------------1274182751856210985126509218u8071894718946189406194189410-------------------------------------------
---------------------1274182751856210985126509218u8071894718946189406194189410-------------------------------------------




------------------------------
Damagefunc=function(hit,minim,maxim,knockback,Type,Property)
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if h~=nil and hit.Parent.Name~=char.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.2) 
        attackdebounce = false 
        end)) 

                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                if block.Value>0 then
                blocked=true
                block.Value=block.Value-1
                print(block.Value)
                end
                end
                if blocked==false then
				print("NOOOOP")
                h.Health=h.Health-Damage
                showDamage(hit.Parent,Damage,.5,BrickColor:Red())
                else
				print("NOOOOP")
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
wait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
print(angle)
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
				if Rootpart then
                vp.velocity=RootPart.CFrame.lookVector*knockback+RootPart.Velocity/1.05
				end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,20,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,.5)
                elseif Type=="Freeze" then
                BodPos=Instance.new("BodyPosition")
                BodPos.P=50000
                BodPos.D=1000
                BodPos.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                BodPos.position=hit.Parent.Torso.Position
                BodPos.Parent=hit.Parent.Torso
                BodGy = it("BodyGyro") 
                BodGy.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
                BodGy.P = 20e+003 
                BodGy.Parent=hit.Parent.Torso
                BodGy.cframe = hit.Parent.Torso.CFrame
                hit.Parent.Torso.Anchored=true
                coroutine.resume(coroutine.create(function(Part) 
                wait(1.5)
                Part.Anchored=false
                end),hit.Parent.Torso)
                game:GetService("Debris"):AddItem(BodPos,3)
                game:GetService("Debris"):AddItem(BodGy,3)
                end
                                c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
        end 
end

showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=Color
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        f=Instance.new("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        f.position=c.Position+Vector3.new(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end
 
 function humang()
	if not canjump then
	humanoid.Jump = false
	end
 end
 
 function checkint(tabl,thing)
	for i = 1,#tabl do
		if tabl[i] == thing then
			return true
		end
	end
	return false
 end
 ------------------------------------------------------
 
--humanoid.Running:connect(run)
humanoid.Changed:connect(humang)
hb.Deselected:connect(unequip)
hb.Selected:connect(Equip)


function checkdist(Part,magni)
tabol = {}
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=player.Name then 
table.insert(tabol, c)
end
end
end
end

return tabol
end



inf = 0;lejump = false;
while true do
if inf == 1000 then
inf = 0
end
if (t.Velocity*Vector3.new(1, 0, 1)).magnitude <= 2 and not anim and equip and (fell and (t.Velocity.Y <= 1 and t.Velocity.Y >= -1)) then
lerun=false;if rlw and hrpw and llw then
	if lenormal then
		for i = 0, 1, 0.2 do
		if (t.Velocity*Vector3.new(1, 0, 1)).magnitude <= 2 and not anim and equip and (fell and (t.Velocity.Y <= 1 and t.Velocity.Y >= -1)) then
		normal(i)
		wait()
		else
		break
		end
		end
		lenormal = false
	end
	animate("Toso",co-Vector3.new(0,0.4-0.2*math.cos(inf/23),0),0,math.rad(5),math.rad(90),1)
	animate("reg",CFrame.new(0.5,-1.1-0.2*math.cos(inf/23),-0.65),math.rad(-15),0,0,1)
	animate("leg",CFrame.new(-0.5,-1.2,0),math.rad(-25-15*(-1*math.cos(inf/23))),0,0,1)
	animate("rr",CFrame.new(1.5,0.5,0),math.rad(90),math.rad(115),math.rad(-25+5*math.cos(inf/23)),1)
	animate("lr",CFrame.new(-1.5,0.5,0),math.rad(35),0,math.rad(-25-10*math.cos(inf/23)),1)
end
elseif(t.Velocity*Vector3.new(1, 0, 1)).magnitude > 2 and not anim and equip and (fell and (t.Velocity.Y <= 1 and t.Velocity.Y >= -1)) or locanrun then
	lenormal=true;
	if not lerun and not locanrun then
		runit()
		lerun=true
	end
	animate("reg",CFrame.new(0.6,-1.2,0),math.rad(5+35*math.cos(inf/4)),math.rad(-40),0,1)
	animate("leg",CFrame.new(-0.6,-1.2,0),math.rad(-2-35*math.cos(inf/4)),math.rad(-40),0,1)
elseif t.Velocity.Y > 1 and not anim and equip and not lejump then
lejump=true;lenormal=true;lerun=false
	for i = 0, 1, 1/4 do
	if not anim and equip and lejump then
	animate("hr",CFrame.new(0,1,0),math.rad(15),math.rad(0),0,i)
	animate("reg",CFrame.new(0.6,-1.2,0),math.rad(35),math.rad(-40),0,i)
	animate("leg",CFrame.new(-0.6,-1.2,0),math.rad(-35),math.rad(-40),0,i)
	animate("rr",CFrame.new(1.5,0.5,0),math.rad(90),math.rad(75),math.rad(-25),i)
	animate("lr",CFrame.new(-1.5,0.5,0),math.rad(-35),0,math.rad(-30),i)
	wait()
	else
		break
	end
	end
	lejump=false
if t.Velocity.Y > 1 and not anim and equip and not lejump then
	fell = false
end
elseif t.Velocity.Y < -1 and not anim and equip and not lejump and not crosh then
fell = false;lenormal=true;lerun=false
	for i = 0, 1, 1/4 do
	if not anim and equip and (crosh == nil or (crosh and crosh.CanCollide == false)) then
	animate("hr",CFrame.new(0,1,0),math.rad(-5),math.rad(0),0,i)
	animate("reg",CFrame.new(0.6,-1.2,0),math.rad(-25),math.rad(-40),0,i)
	animate("leg",CFrame.new(-0.6,-1.2,0),math.rad(15),math.rad(-40),0,i)
	animate("rr",CFrame.new(1.5,0.5,0),math.rad(90),math.rad(100),math.rad(-25),i)
	animate("lr",CFrame.new(-1.5,0.5,0),math.rad(46),0,math.rad(-30),i)
	wait()
	else
		print('break')
		break
	end
	end
	lejump = false
else
	idol = true;lenormal=true;lerun=false
end

	ray = Ray.new(t.Position,(((t.CFrame*CFrame.new(0,-1.5,0)).p)-t.Position).unit*3)
	crosh, endPoint = Workspace:FindPartOnRay(ray,char)
	if (crosh) then
		lejump=false
		fell = true
	end
	if ss then
windy= Add.part("Institutional white",Vector3.new(4, 1.2, 1),(hitbox.CFrame),sword,"wind",Vector3.new(math.random(50,110)/100, 0.3, 0.3),"Block","Sphere",false,nil,0.69999998807907,Part,"Brick");windy.Anchored = false; windyweld=weldIt(hitbox,windy,CFrame.new(math.random(-100,100)/130,-2,math.random(-100,100)/130)*CFrame.Angles(0,0,math.rad(90)),nil,nil)
		coroutine.resume(coroutine.create(function(w,was,cu)
			for i = 0, 1, 0.2 do
			was.C0 = cu+Vector3.new(0,4*i,0)
			wait()
			end;was.Parent=nil;w.Parent = nil;print("yomama")
		end),windy,windyweld,windyweld.C0)
	end
inf =inf+1
wait()
end
