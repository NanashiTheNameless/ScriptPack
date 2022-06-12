wait(.25)--made by yoyyo75 :3
run = game:GetService("RunService")
local player = game.Players.LocalPlayer;char = player.Character;char.Archivable = true;
hrp = char:findFirstChild("HumanoidRootPart");head = char:findFirstChild("Head");ra = char:findFirstChild("Right Arm");la = char:findFirstChild("Left Arm");t = char:findFirstChild("Torso");humanoid = char:findFirstChild("Humanoid");ll = char:findFirstChild("Left Leg");rl = char:findFirstChild("Right Leg");
mainColor = "New Yeller";color1 = "Really black";color2="Really black"
local hb = Instance.new("HopperBin", player.Backpack)
hb.Name = "ShardBlade"
sword = Instance.new("Model");sword.Name = "ShardBlade"
script.Parent =  hb
char.Humanoid.WalkSpeed = 30
equip=false;anim = false;banim=false;click=false;damageon=false;DMG=0;

function playSound(id,parent,volume,pitch)
        local sound = Instance.new("Sound",parent or workspace)
        sound.SoundId = "http://www.roblox.com/asset?id="..id
        sound.Volume = volume or 1
        sound.Pitch = pitch or 1
        coroutine.wrap(function()
                wait()
                sound:Play()
                wait(10)
                sound:Stop()
                sound:Destroy()
        end)()
        return sound
end

--[[function damage(hit,damage,cooldown)
for i,v in pairs(hit:GetChildren()) do 
if v:IsA("Humanoid") and hit.Name ~= char.Name then
local find = v:FindFirstChild("Hitz")
if not find then
if v.Parent:findFirstChild("Head") then
local BillG = Instance.new("BillboardGui",v.Parent.Head)BillG.Size = UDim2.new(1,0,1,0)
BillG.Adornee = v.Parent.Head BillG.StudsOffset = Vector3.new(math.random(-3,3),math.random(3,5),math.random(-3,3))
local TL = Instance.new("TextLabel",BillG)TL.Size = UDim2.new(1,0,1,0)
TL.BackgroundTransparency = 1 TL.Text = tostring(damage).."-"
TL.TextColor3 = BrickColor.new("Dark stone grey").Color TL.TextStrokeColor3 = BrickColor.new("Cyan").Color
TL.TextStrokeTransparency = 0 TL.TextXAlignment = Enum.TextXAlignment.Center
TL.TextYAlignment = Enum.TextYAlignment.Center TL.FontSize = Enum.FontSize.Size18
TL.Font = "ArialBold"
coroutine.resume(coroutine.create(function()
wait(1)
for i = 0,1,.1 do wait(.1) BillG.StudsOffset = BillG.StudsOffset+Vector3.new(0,.1,0) end
BillG:Destroy()
end))
end
v.Health = v.Health - damage local bool = Instance.new("BoolValue",v)bool.Name = 'Hitz'game:GetService("Debris"):AddItem(bool,cooldown)
end
end
end
end]]--

function Hit(part)
hum = part.Parent:findFirstChild("Humanoid")
if hum and damageon and hum ~= humanoid then
hum.Health = hum.Health-DMG;damageon=false
end
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
	end
}

slash={
	function()
	anim = true;banim=true
	playSound(10209850,b1,1,1)
	for i = 1, 6 do wait()
	animate("bw",CFrame.new(0,-1,0),math.rad(-90),math.rad(90),math.rad(-0),i/6)
	animate("hr",CFrame.new(0,1,0),math.rad(25),math.rad(15),0,i/6);animate("Toso",co,0,0,math.rad(-20),i/6)
	animate("rr",CFrame.new(1.5,0.5,0),math.rad(120),math.rad(20),math.rad(15),i/6);animate("lr",CFrame.new(-1.5,0.5,0),math.rad(70),math.rad(40),math.rad(0),i/6)
	animate("leg",CFrame.new(-0.5,-1,0),math.rad(0),math.rad(0),math.rad(-20),i/6);animate("reg",CFrame.new(0.5,-1,0),math.rad(0),math.rad(0),math.rad(20),i/6)
	end;damageon=true;DMG=15;
	for i = 1, 10 do wait()
	animate("bw",CFrame.new(0,-1,-0.25),math.rad(-90),math.rad(90),math.rad(-0),i/10)
	animate("hr",CFrame.new(0,1,0),math.rad(-25),math.rad(-15),0,i/10);animate("Toso",co,0,0,math.rad(20),i/10)
	animate("rr",CFrame.new(1.5,0.5,0),math.rad(20),math.rad(20),math.rad(0),i/10);animate("lr",CFrame.new(-1.5,0.5,0),math.rad(10),math.rad(40),math.rad(0),i/10)
	animate("leg",CFrame.new(-0.5,-1,0),math.rad(0),math.rad(0),math.rad(-20),i/10);animate("reg",CFrame.new(0.5,-1,0),math.rad(0),math.rad(0),math.rad(20),i/10)
	end;click=false;damageon=false
	for i = 1, 10 do if not click then wait(); else break;end;end
	if click then
	slash[2]()
	else
	standard()
	anim=false;banim=false end end,
	---[2]---
	function()
	for i = 1, 10 do wait(); banim = true
	playSound(10209850,b1,1,1)
	animate("bw",CFrame.new(0,-1-.75*(i/10),.5*(i/10)),math.rad(-180),math.rad(90),math.rad(-45),i/10)
	animate("hr",CFrame.new(0,1,0),math.rad(0),math.rad(0),0,i/10);animate("Toso",co,0,0,math.rad(90),i/10)
	animate("rr",CFrame.new(1.5-.15*(i/10),0.5,-.25*(i/10)),math.rad(0),math.rad(135),math.rad(90),i/10);animate("lr",CFrame.new(-1.5+.15*(i/10),0.5,-.25*(i/10)),math.rad(0),math.rad(-135),math.rad(-90),i/10)
	animate("leg",CFrame.new(-0.5,-1,0),math.rad(0),math.rad(0),math.rad(-20),i/10);animate("reg",CFrame.new(0.5,-1,0),math.rad(0),math.rad(0),math.rad(20),i/10)
	end;lastpoint=b1.Position
	for i = 1, 20 do wait();damageon=true;DMG=5;
	animate("Toso",co,0,0,math.rad(-1080),i/50);lineEffect(b1)
	end;animate("Toso",co,0,0,math.rad(0),1);damageon=false;banim=false;click=false;for i = 1, 10 do if not click then wait(); else break;end; end;if click then slash[3](); else standard();anim=false;banim=false end
	end,
	---[3]---
	function()
	playSound(10209850,b1,1,1)
	for i = 1, 10 do wait(); banim = true
	animate("bw",CFrame.new(0,-1,0),math.rad(-105),math.rad(90),math.rad(-0),i/10)
	animate("hr",CFrame.new(0,1,0),math.rad(-20),math.rad(-40),0,i/10);animate("Toso",co,0,0,math.rad(45),i/10)
	animate("rr",CFrame.new(1.5,0.5,0),math.rad(0),math.rad(110),math.rad(75),i/10);animate("lr",CFrame.new(-1.5,0.5,0),math.rad(0),math.rad(0),math.rad(-40),i/10)
	animate("leg",CFrame.new(-0.5,-1,0),math.rad(0),math.rad(0),math.rad(-20),i/10);animate("reg",CFrame.new(0.5,-1,0),math.rad(0),math.rad(0),math.rad(20),i/10)
	end;damageon=true;DMG=17;
	for i = 1, 10 do wait();
	animate("bw",CFrame.new(0,-1,0),math.rad(-180),math.rad(90),math.rad(-0),i/10)
	animate("hr",CFrame.new(0,1,0),math.rad(-20),math.rad(40),0,i/10);animate("Toso",co,0,0,math.rad(-45),i/10)
	animate("rr",CFrame.new(1.5,0.5,0),math.rad(0),math.rad(-30),math.rad(75),i/10);animate("lr",CFrame.new(-1.5,0.5,0),math.rad(0),math.rad(0),math.rad(-40),i/10)
	animate("leg",CFrame.new(-0.5,-1,0),math.rad(0),math.rad(0),math.rad(-20),i/10);animate("reg",CFrame.new(0.5,-1,0),math.rad(0),math.rad(0),math.rad(20),i/10)
	end;banim=false;damageon=false;for i = 1, 10 do if not edown then wait(); else break;end; end;if not edown then standard();anim=false else slash[4]() end;end,
	---[4]----
	function()
	for i = 1, 10 do wait(); banim = true
	animate("bw",CFrame.new(0,-1,0),math.rad(-105),math.rad(90),math.rad(-0),i/10)
	animate("hr",CFrame.new(0,1,0),math.rad(20),math.rad(0),0,i/10);animate("Toso",co+Vector3.new(0,2*(i/10),0),0,0,math.rad(0),i/10)
	animate("rr",CFrame.new(1.5,0.5,0),math.rad(160),math.rad(110),math.rad(75),i/10);animate("lr",CFrame.new(-1.5,0.5,0),math.rad(160),math.rad(0),math.rad(-40),i/10)
	animate("leg",CFrame.new(-0.5,-1,0),math.rad(0),math.rad(0),math.rad(-20),i/10);animate("reg",CFrame.new(0.5,-1,0),math.rad(0),math.rad(0),math.rad(20),i/10)
	end
	standard();banim=false;damageon=false;anim=false;end
}
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
--making sword--
handle = Add.part(color1,Vector3.new(1, 2.4, 1),CFrame.new(-1.33407784, 2.80192566, 2.60732269, 0.999998987, -2.33399805e-005, 1.04800883e-005, 2.33397132e-005, 0.999999881, 1.35496139e-005, -1.04803994e-005, -1.3549442e-005, 0.999999106),sword,"Handle",Vector3.new(0.211, 0.816, 0.211),"Block","Brick",false,nil,0,nil,"Brick","CylinderMesh")
orb = Add.part(mainColor,Vector3.new(1, 1.2, 1),CFrame.new(-1.33406639, 1.78086853, 2.60733032, 0.999998987, -2.33399805e-005, 1.04800883e-005, 2.33397132e-005, 0.999999881, 1.35496139e-005, -1.04803994e-005, -1.3549442e-005, 0.999999106),sword,"ORB",Vector3.new(0.316, 0.158, 0.316),"Block","Head",false,nil,0,nil,"Brick")
spike = Add.part(mainColor,Vector3.new(1, 1.2, 1),CFrame.new(-1.33406067, 1.5282402, 2.60733414, -0.999998868, 2.33399769e-005, 1.04800883e-005, -2.33397095e-005, -0.999999762, 1.35496139e-005, 1.04803985e-005, 1.35494402e-005, 0.999999106),sword,"Spike",Vector3.new(0.153, 0.621, 0.153),"Block","FileMesh",false,"http://www.roblox.com/asset/?id=1033714",0,nil,"Brick")
w1 = Add.part(mainColor,Vector3.new(1, 1.2, 1),CFrame.new(-1.40252697, 4.03350067, 2.60730743, -1.04800874e-005, -2.33399805e-005, 0.999998868, -1.3549612e-005, 0.999999881, 2.33397095e-005, -0.999998987, -1.3549442e-005, -1.04803985e-005),sword,"Wedge",Vector3.new(0.241, 0.361, 0.131),"Block","Wedge",false,nil,0,nil,"Brick")
w2 = Add.part(color1,Vector3.new(1, 1.2, 1),CFrame.new(-1.4393692, 4.03350067, 2.60730743, -1.04800874e-005, -2.33399805e-005, 0.999998868, -1.3549612e-005, 0.999999881, 2.33397095e-005, -0.999998987, -1.3549442e-005, -1.04803985e-005),sword,"Wedge",Vector3.new(0.211, 0.421, 0.211),"Block","Wedge",false,nil,0,nil,"Brick")
w3 = Add.part(mainColor,Vector3.new(1, 1.2, 1),CFrame.new(-1.26358211, 4.03350067, 2.60730362, 1.06588468e-005, -2.28629742e-005, -0.999992371, 1.33885387e-005, 0.999992609, -2.27733144e-005, 0.999993503, -1.34937982e-005, 1.0480323e-005),sword,"Wedge",Vector3.new(0.241, 0.361, 0.131),"Block","Wedge",false,nil,0,nil,"Brick")
w4 = Add.part(color1,Vector3.new(1, 1.2, 1),CFrame.new(-1.22884369, 4.03350067, 2.60730362, 1.06588468e-005, -2.28629742e-005, -0.999992371, 1.33885387e-005, 0.999992609, -2.27733144e-005, 0.999993503, -1.34937982e-005, 1.0480323e-005),sword,"Wedge",Vector3.new(0.211, 0.421, 0.211),"Block","Wedge",false,nil,0,nil,"Brick")
bog1 = Add.part(mainColor,Vector3.new(1, 1.2, 1),CFrame.new(-1.33408737, 3.23348236, 2.60731888, 0.999998987, -2.33399805e-005, 1.04800883e-005, 2.33397132e-005, 0.999999881, 1.35496139e-005, -1.04803994e-005, -1.3549442e-005, 0.999999106),sword,"Bilogs",Vector3.new(0.237, 0.026, 0.237),"Block","Head",false,nil,0,nil,"Brick","CylinderMesh")
bog2 = Add.part(mainColor,Vector3.new(1, 1.2, 1),CFrame.new(-1.33408546, 3.12823486, 2.60731888, 0.999998987, -2.33399805e-005, 1.04800883e-005, 2.33397132e-005, 0.999999881, 1.35496139e-005, -1.04803994e-005, -1.3549442e-005, 0.999999106),sword,"Bilogs",Vector3.new(0.237, 0.026, 0.237),"Block","Head",false,nil,0,nil,"Brick","CylinderMesh")
bog3 = Add.part(mainColor,Vector3.new(1, 1.2, 1),CFrame.new(-1.33408737, 2.86506653, 2.60731888, 0.999998987, -2.33399805e-005, 1.04800883e-005, 2.33397132e-005, 0.999999881, 1.35496139e-005, -1.04803994e-005, -1.3549442e-005, 0.999999106),sword,"Bilogs",Vector3.new(0.237, 0.026, 0.237),"Block","Head",false,nil,0,nil,"Brick","CylinderMesh")
bog4 = Add.part(mainColor,Vector3.new(1, 1.2, 1),CFrame.new(-1.33408546, 2.94928741, 2.60731888, 0.999998987, -2.33399805e-005, 1.04800883e-005, 2.33397132e-005, 0.999999881, 1.35496139e-005, -1.04803994e-005, -1.3549442e-005, 0.999999106),sword,"Bilogs",Vector3.new(0.237, 0.026, 0.237),"Block","Head",false,nil,0,nil,"Brick","CylinderMesh")
bog5 = Add.part(mainColor,Vector3.new(1, 1.2, 1),CFrame.new(-1.33408737, 3.03350067, 2.60731888, 0.999998987, -2.33399805e-005, 1.04800883e-005, 2.33397132e-005, 0.999999881, 1.35496139e-005, -1.04803994e-005, -1.3549442e-005, 0.999999106),sword,"Bilogs",Vector3.new(0.237, 0.026, 0.237),"Block","Head",false,nil,0,nil,"Brick","CylinderMesh")
bwings = Add.part(color1,Vector3.new(1, 0.4, 1),CFrame.new(-1.33252335, 3.80191803, 2.58099365, -0.999997973, -1.45399179e-010, -7.27595761e-012, 1.45399179e-010, 0.999999762, 8.27640179e-011, -7.27595761e-012, -8.27640179e-011, -0.999998212),sword,"BWINGS",Vector3.new(0.132, 0.447, 0.053),"Block","FileMesh",false,"http://www.roblox.com/asset/?id=15039295",0,nil,"Plate")
b1 = Add.part(mainColor,Vector3.new(1, 1.2, 1),CFrame.new(-1.14421082, 8.50718689, 2.58081436, -0.000282594148, -2.33399805e-005, -0.999998927, 1.35427736e-005, 0.999999881, -2.33436822e-005, 0.999999106, -1.3549442e-005, -0.000282593857),sword,"Blade",Vector3.new(0.01, 0.456, 0.416),"Block","Wedge",false,nil,0.5,nil,"Brick")
b2 = Add.part(color2,Vector3.new(1, 1.2, 1),CFrame.new(-1.62308502, 5.41242981, 2.58097458, -9.75956118e-006, -2.21925784e-005, 1.00000358, -1.35496966e-005, 1.00000393, 2.21625323e-005, -1.00000644, -1.36687177e-005, -9.67722008e-006),sword,"Blade",Vector3.new(0.053, 0.263, 0.211),"Block","Wedge",false,nil,0,nil,"Brick")
b3 = Add.part(mainColor,Vector3.new(1, 1.2, 1),CFrame.new(-0.887804985, 4.56140137, 2.57992554, 1.05462423e-005, -2.35187945e-005, -0.999999106, 1.35985892e-005, 0.999999881, -2.34887284e-005, 0.999998987, -1.35805712e-005, 1.04801138e-005),sword,"Blade",Vector3.new(0.01, 0.053, 0.105),"Block","Wedge",false,nil,0.5,nil,"Brick")
b4 = Add.part(mainColor,Vector3.new(0.2, 3.063, 0.2),CFrame.new(-1.33888626, 5.89138794, 2.58096313, 0.999998987, -2.33399805e-005, 1.04800883e-005, 2.33397132e-005, 0.999999881, 1.35496139e-005, -1.04803994e-005, -1.3549442e-005, 0.999999106),sword,"Blade",Vector3.new(0.232, 1.1, 0.289),"Block","Brick",false,nil,0,nil,"Custom")
b5 = Add.part(color2,Vector3.new(0.2, 0.474, 0.2),CFrame.new(-1.53359604, 4.76506805, 2.58098221, 0.999998987, -2.33399805e-005, 1.04800883e-005, 2.33397132e-005, 0.999999881, 1.35496139e-005, -1.04803994e-005, -1.3549442e-005, 0.999999106),sword,"Blade",Vector3.new(0.158, 1, 0.263),"Block","Brick",false,nil,0,nil,"Custom","BlockMesh")
b6 = Add.part(mainColor,Vector3.new(0.789, 4.442, 0.2),CFrame.new(-1.33362579, 6.01243591, 2.58096313, 0.999998987, -2.33399805e-005, 1.04800883e-005, 2.33397132e-005, 0.999999881, 1.35496139e-005, -1.04803994e-005, -1.3549442e-005, 0.999999106),sword,"Blade",Vector3.new(1, 1, 0.053),"Block","Brick",false,nil,0.5,nil,"Custom")
b7 = Add.part(color2,Vector3.new(0.2, 2.126, 0.2),CFrame.new(-1.52839088, 7.17033386, 2.58075333, 0.999998927, -2.33399805e-005, -0.000267181982, 2.3343473e-005, 0.999999881, 1.35431337e-005, 0.000267181691, -1.3549442e-005, 0.999999106),sword,"Blade",Vector3.new(0.211, 1, 0.263),"Block","Brick",false,nil,0,nil,"Custom")
b8 = Add.part(mainColor,Vector3.new(0.2, 0.737, 0.2),CFrame.new(-0.887794495, 4.16139984, 2.57992935, -0.999998868, -2.33399805e-005, -1.04800874e-005, -2.33397095e-005, 0.999999881, -1.3549612e-005, 1.04803985e-005, -1.3549442e-005, -0.999998987),sword,"Blade",Vector3.new(0.526, 1, 0.053),"Block","Brick",false,nil,0.5,nil,"Custom")
b9 = Add.part(mainColor,Vector3.new(0.2, 0.737, 0.2),CFrame.new(-1.78095245, 4.15979767, 2.58099365, 0.999999464, -2.33101782e-005, 1.05465324e-005, 2.33695264e-005, 0.999999881, 1.35317714e-005, -1.04139599e-005, -1.35672863e-005, 0.999999106),sword,"Blade",Vector3.new(0.526, 1, 0.053),"Block","Brick",false,nil,0.5,nil,"Custom")
b10 = Add.part(color2,Vector3.new(1, 4.8, 1),CFrame.new(-1.33362961, 6.08612061, 2.58079147, 0.999998808, -2.33399805e-005, -0.000279997184, 2.3343513e-005, 0.999999881, 1.35428327e-005, 0.00027019775, -1.3549442e-005, 0.999998987),sword,"Blade",Vector3.new(0.368, 0.895, 0.053),"Block","Brick",false,nil,0,nil,"Brick")
b11 = Add.part(mainColor,Vector3.new(1, 1.2, 1),CFrame.new(-1.3915062, 5.38085938, 2.58097076, -9.75956118e-006, -2.21925784e-005, 1.00000358, -1.35496966e-005, 1.00000393, 2.21625323e-005, -1.00000644, -1.36687177e-005, -9.67722008e-006),sword,"Blade",Vector3.new(0.063, 0.211, 0.105),"Block","Wedge",false,nil,0,nil,"Brick")
b12 = Add.part(color2,Vector3.new(1, 1.2, 1),CFrame.new(-1.44947433, 8.45454407, 2.58072662, 0.000280871434, -2.33399805e-005, 0.999998927, -1.35428136e-005, 0.999999881, 2.33436585e-005, -0.999999106, -1.3549442e-005, 0.000280871114),sword,"Blade",Vector3.new(0.053, 0.368, 0.2),"Block","Wedge",false,nil,0,nil,"Brick")
b13 = Add.part(mainColor,Vector3.new(1, 1.2, 1),CFrame.new(-1.78096008, 4.55979919, 2.58098984, -1.0612689e-005, -2.31313643e-005, 0.999999702, -1.34827969e-005, 0.999999881, 2.32205202e-005, -0.999999106, -1.3536157e-005, -1.04136734e-005),sword,"Blade",Vector3.new(0.01, 0.053, 0.105),"Block","Wedge",false,nil,0.5,nil,"Brick")
b14 = Add.part(color2,Vector3.new(1, 1.2, 1),CFrame.new(-1.04413223, 5.09666443, 2.58097458, -1.03609555e-005, 2.40255285e-005, -1.0000037, -1.36045401e-005, -1.00000393, -2.40550817e-005, -1.00000644, 1.35010014e-005, 1.03612501e-005),sword,"Blade",Vector3.new(0.053, 0.263, 0.211),"Block","Wedge",false,nil,0,nil,"Brick")
b15 = Add.part(mainColor,Vector3.new(1, 1.2, 1),CFrame.new(-1.28623772, 5.12823486, 2.58097458, -1.03609555e-005, 2.40255285e-005, -1.0000037, -1.36045401e-005, -1.00000393, -2.40550817e-005, -1.00000644, 1.35010014e-005, 1.03612501e-005),sword,"Blade",Vector3.new(0.063, 0.211, 0.105),"Block","Wedge",false,nil,0,nil,"Brick")
b16 = Add.part(mainColor,Vector3.new(1, 1.2, 1),CFrame.new(-1.28624344, 5.38085938, 2.58097076, 9.76491083e-006, -2.44875719e-005, -1.00000358, 1.35496975e-005, 1.00000393, -2.45171341e-005, 1.00000644, -1.34302754e-005, 9.64600076e-006),sword,"Blade",Vector3.new(0.063, 0.211, 0.105),"Block","Wedge",false,nil,0,nil,"Brick")
b17 = Add.part(color2,Vector3.new(1, 1.2, 1),CFrame.new(-1.62307739, 5.09664917, 2.58097839, 1.03919683e-005, 2.26546217e-005, 1.0000037, 1.34948832e-005, -1.00000393, 2.26245702e-005, 1.00000644, 1.35979917e-005, -1.03096354e-005),sword,"Blade",Vector3.new(0.053, 0.263, 0.211),"Block","Wedge",false,nil,0,nil,"Brick")
b18 = Add.part(color2,Vector3.new(1, 1.2, 1),CFrame.new(-1.24947548, 8.45454407, 2.58078384, -0.00028039061, -2.33399805e-005, -0.999998927, 1.35428254e-005, 0.999999881, -2.33436531e-005, 0.999999106, -1.3549442e-005, -0.00028039029),sword,"Blade",Vector3.new(0.053, 0.368, 0.2),"Block","Wedge",false,nil,0,nil,"Brick")
b19 = Add.part(mainColor,Vector3.new(1, 1.2, 1),CFrame.new(-0.782531738, 4.15613556, 2.58098221, 1.05396912e-005, -2.35187945e-005, -0.999999225, 1.35985892e-005, 0.999999881, -2.34887302e-005, 0.999998987, -1.35805712e-005, 1.04804039e-005),sword,"Blade",Vector3.new(0.01, 0.605, 0.105),"Block","Wedge",false,nil,0.5,nil,"Brick")
b20 = Add.part(mainColor,Vector3.new(1, 1.2, 1),CFrame.new(-1.88621521, 4.15453339, 2.5799408, -1.0546245e-005, -2.31611666e-005, 0.999999225, -1.35006394e-005, 0.999999881, 2.3190707e-005, -0.999999106, -1.35183127e-005, -1.0480112e-005),sword,"Blade",Vector3.new(0.01, 0.605, 0.105),"Block","Wedge",false,nil,0.5,nil,"Brick")
b21 = Add.part(mainColor,Vector3.new(1, 1.2, 1),CFrame.new(-1.39150047, 5.12823486, 2.58097458, 1.03919683e-005, 2.26546217e-005, 1.0000037, 1.34948832e-005, -1.00000393, 2.26245702e-005, 1.00000644, 1.35979917e-005, -1.03096354e-005),sword,"Blade",Vector3.new(0.063, 0.211, 0.105),"Block","Wedge",false,nil,0,nil,"Brick")
b22 = Add.part(mainColor,Vector3.new(1, 1.2, 1),CFrame.new(-1.53894806, 8.50717163, 2.58073044, 0.00027767272, -2.33399805e-005, 0.999998927, -1.35428882e-005, 0.999999881, 2.33436149e-005, -0.999999106, -1.3549442e-005, 0.000277672429),sword,"Blade",Vector3.new(0.01, 0.456, 0.379),"Block","Wedge",false,nil,0.5,nil,"Brick")
b23 = Add.part(color2,Vector3.new(1, 1.2, 1),CFrame.new(-1.04413986, 5.41244507, 2.58097076, 9.76491083e-006, -2.44875719e-005, -1.00000358, 1.35496975e-005, 1.00000393, -2.45171341e-005, 1.00000644, -1.34302754e-005, 9.64600076e-006),sword,"Blade",Vector3.new(0.053, 0.263, 0.211),"Block","Wedge",false,nil,0,nil,"Brick")
Light = Instance.new("PointLight",b14)
Light.Color = Color3.new(255, 255, 0)
Light.Range = 10
nu = sword:GetChildren()
for i = 1, #nu do
if nu[i].Name ~= "Handle" then
	if nu[i].Name == "Blade" then
	nu[i].Touched:connect(Hit)
	end
	w = Instance.new("Weld", sword.Handle)
	w.Part0 = sword.Handle
	w.Part1 = nu[i]
	w.C0 = sword.Handle.CFrame:toObjectSpace(nu[i].CFrame)
	nu[i].Anchored = false
end
end
while not ra or not la or not t or not humanoid or not head or not ll or not rl or not hrp do
	wait()
end
	hrpw = hrp:findFirstChild("RootJoint");lh = t:findFirstChild("Left Hip");rh = t:findFirstChild("Right Hip");rs = t:findFirstChild("Right Shoulder");ls = t:findFirstChild("Left Shoulder");neck = t:findFirstChild("Neck");
while not ls or not rs or not neck or not hrpw do
		wait()
end
	co = hrpw.C0
sword.Handle.Anchored = false;sword.Parent = char
function backweld()
bw = weldIt(t,handle,CFrame.new(1.5,2,0.75)*CFrame.Angles(0,0,math.rad(135)),nil)
return bw
end
function Lerp(x,y,inc) return x + (y - x) * inc end

function animate(mem,cfr,x,y,z,e)
	To[mem].cf =cfr;To[mem].X=Lerp(To[mem].X,x,e);To[mem].Y=Lerp(To[mem].Y,y,e);To[mem].Z=Lerp(To[mem].Z,z,e)
end
To={
 rr={X=0;Y=0;Z=0;cf=CFrame.new(1.5,0.5,0)};bw={X=math.rad(5);Y=math.rad(90);Z=0;cf=CFrame.new(0,-1,0)};lr={X=0;Y=0;Z=0;cf=CFrame.new(-1.5,0.5,0)};hr={X=0;Y=0;Z=0;cf=CFrame.new(0,1.5,0)};leg={X=0;Y=0;Z=0;cf=CFrame.new(-0.5,-1,0)};reg={X=0;Y=0;Z=0;cf=CFrame.new(0.5,-1,0)};Toso={X=0;Y=0;Z=0;cf=co}
}
game:service'RunService'.RenderStepped:connect(function()
	if rw then rw.C0=To["rr"].cf*CFrame.Angles((To["rr"].X),(To["rr"].Y),(To["rr"].Z));rw.C1=CFrame.new(0,0.5,0) end
	if hw and equip and banim then hw.C0=To.bw.cf*CFrame.Angles((To.bw.X),(To.bw.Y),(To.bw.Z)) end
	if lw then lw.C0=To["lr"].cf*CFrame.Angles((To["lr"].X),(To["lr"].Y),(To["lr"].Z));lw.C1=CFrame.new(0,0.5,0) end
	if nw then nw.C0=To["hr"].cf*CFrame.Angles((To["hr"].X),To["hr"].Y,To["hr"].Z);nw.C1 = CFrame.new(0,-0.5,0) end
	if rlw then rlw.C0=To["reg"].cf*CFrame.Angles(To["reg"].X,To["reg"].Y,To["reg"].Z);rlw.C1=CFrame.new(0,1,0) end
	if llw then llw.C0=To["leg"].cf*CFrame.Angles(To["leg"].X,To["leg"].Y,To["leg"].Z);llw.C1=CFrame.new(0,1,0) end
	if hrpw then hrpw.C0=To["Toso"].cf*CFrame.Angles(To["Toso"].X,To["Toso"].Y,To["Toso"].Z) end
end)

function standard()
	banim=true;for i = 1, 10 do wait()
	animate("bw",CFrame.new(0,-1,-0.25),math.rad(10),math.rad(90),math.rad(-35),i/10)
	animate("hr",CFrame.new(0,1,0),math.rad(-25),math.rad(25),0,i/10);animate("Toso",co,0,0,math.rad(-20),i/10)
	animate("rr",CFrame.new(1.5,0.5,0),math.rad(90),math.rad(30),math.rad(37.5),i/10);animate("lr",CFrame.new(-1.5,0.5,0),math.rad(0),math.rad(0),math.rad(-25),i/10)
	animate("leg",CFrame.new(-0.5,-1,0),math.rad(0),math.rad(0),math.rad(-20),i/10);animate("reg",CFrame.new(0.5,-1,0),math.rad(0),math.rad(0),math.rad(20),i/10)
	end;banim=false
end
function clicked(mouse) click=true
if not anim then
slash[1]();
end
end
hb.Selected:connect(function(mouse)
while anim do wait() end
if not equip then
To={
 rr={X=0;Y=0;Z=0;cf=CFrame.new(1.5,0.5,0)};bw={X=math.rad(5);Y=math.rad(90);Z=0;cf=CFrame.new(0,-1,0)};lr={X=0;Y=0;Z=0;cf=CFrame.new(-1.5,0.5,0)};hr={X=0;Y=0;Z=0;cf=CFrame.new(0,1,0)};leg={X=0;Y=0;Z=0;cf=CFrame.new(-0.5,-1,0)};reg={X=0;Y=0;Z=0;cf=CFrame.new(0.5,-1,0)};Toso={X=0;Y=0;Z=0;cf=co}
}
	rh.Parent=nil;rs.Parent=nil;lh.Parent=nil;neck.Parent=nil;ls.Parent=nil;rlw = weldIt(t,rl, CFrame.new(0.5,-1.5,0),nil);llw = weldIt(t,ll, CFrame.new(-0.5,-1.5,0),nil);
	rw = weldIt(t,ra,CFrame.new(1.5,0,0),nil);lw = weldIt(t,la,CFrame.new(-1.5,0,0));nw = weldIt(t,head,CFrame.new(0, 1, 0))
	anim = true
	for i = 1, 10 do wait()
	animate("rr",CFrame.new(1.5,0.5,0),math.rad(190),math.rad(0),math.rad(20),i/10)
	 end
	 wait(0.15)
	hw.Part0 = ra;hw.C0 = CFrame.new(0,-1,0)*CFrame.Angles(math.rad(-90),math.rad(90),0)
	equip = true;banim = true
	standard()
	 anim = false;banim=false;
	 mouse.Button1Down:connect(function() clicked(mouse) end)
end
end)
function reset()
	rs.Parent = t;ls.Parent = t;neck.Parent = t;rh.Parent = t;lh.Parent = t;hrpw.C0 = co
	if rw then rw.Parent = nil end
	if lw then lw.Parent = nil end
	if nw then nw.Parent = nil end
	if rlw then rlw.Parent = nil end
	if llw then llw.Parent = nil end
end
hw = backweld()
hb.Deselected:connect(function(mouse)
while anim do wait() end
if equip then
anim = true
for i = 1, 10 do wait();banim = true;
	animate("bw",CFrame.new(0,-1,0),math.rad(-90),math.rad(90),math.rad(0),i/10)
	animate("hr",CFrame.new(0,1,0),math.rad(0),math.rad(0),0,i/10);animate("Toso",co,0,0,math.rad(0),i/10)
	animate("rr",CFrame.new(1.5,0.5,0),math.rad(190),math.rad(0),math.rad(20),i/10);animate("lr",CFrame.new(-1.5,0.5,0),math.rad(0),math.rad(0),math.rad(0),i/10)
	animate("leg",CFrame.new(-0.5,-1,0),math.rad(0),math.rad(0),math.rad(0),i/10);animate("reg",CFrame.new(0.5,-1,0),math.rad(0),math.rad(0),math.rad(0),i/10)

	end
equip = false;banim=false;hw.Part0=t;hw.C0=CFrame.new(1.5,2,0.75)*CFrame.Angles(0,0,math.rad(135))
for i = 1, 10 do wait();banim = true;
	animate("rr",CFrame.new(1.5,0.5,0),math.rad(0),math.rad(0),math.rad(0),i/10)
end
reset()
anim = false
end
end)


function jump()
for i = 1, 10 do
if equip and not anim and (t.Velocity*Vector3.new(0, 1, 0)).magnitude > 2 then
jumped = false
animate("rr",CFrame.new(1.5,0.5,0),math.rad(45),math.rad(0),math.rad(0),i/10);animate("bw",CFrame.new(0,-1,-0.25),math.rad(10),math.rad(90),math.rad(-35),i/10)
animate("leg",CFrame.new(-0.5,-1,0),math.rad(-45),math.rad(0),math.rad(0),i/10);animate("reg",CFrame.new(0.5,-1+.25*(i/10),-0.5*(i/10)),math.rad(-30),math.rad(0),math.rad(0),i/10)
animate("Toso",co,0,0,math.rad(0),i/10);animate("hr",CFrame.new(0,1,0),math.rad(5),math.rad(0),0,i/10);animate("lr",CFrame.new(-1.5,0.5,0),math.rad(-45),math.rad(0),math.rad(25),i/10)
jumped = true
wait()
else
break
end
end
end
function fal(hit)
if hit.Parent ~= sword and hit.CanCollide == true and hit.Parent ~= char and jumped then
for i = 1, 10 do
if equip and not anim and jumped then
animate("rr",CFrame.new(1.5,0.5,0),math.rad(0),math.rad(0),math.rad(0),i/10);animate("bw",CFrame.new(0,-1,-0.25),math.rad(10),math.rad(90),math.rad(-35),i/10)
animate("leg",CFrame.new(-0.5,-1,0),math.rad(0),math.rad(0),math.rad(0),i/10);animate("reg",CFrame.new(0.5,-.75-.25*(i/10),-0.5+.5*(i/10)),math.rad(0),math.rad(0),math.rad(0),i/10)
animate("Toso",co,0,0,math.rad(0),i/10);animate("hr",CFrame.new(0,1,0),math.rad(0),math.rad(0),0,i/10);animate("lr",CFrame.new(-1.5,0.5,0),math.rad(0),math.rad(0),math.rad(-25),i/10)
wait()
else
break
end
end
jumped = false
end
end
rl.Touched:connect(fal);ll.Touched:connect(fal)
inf = 0;wasidle=false;jumped=false
humanoid.Jumping:connect(jump)




function lineEffect(tip)
	if tip~= nil then
		off = (tip.Mesh.Scale.z/tip.Size.z)/2
		point = (tip.CFrame*CFrame.new(0, 0, -off)).p
		unit = (lastpoint - point).unit
		mag = (lastpoint - point).magnitude
		if mag>1 then
			middle = lastpoint-(unit*(mag/2))
			cf = CFrame.new(middle, point)
			l = Instance.new("Part")
			l.Material = "SmoothPlastic"
			l.Name = "Wind"
			l.Anchored = true
			l.CanCollide = false
			l.Size = Vector3.new(1, 1, mag)
			l.BrickColor = BrickColor.new(color2)
			l.TopSurface = "SmoothNoOutlines"
			l.BottomSurface = "SmoothNoOutlines"
			l.RightSurface = "SmoothNoOutlines"
			l.LeftSurface = "SmoothNoOutlines"
			local m=  Instance.new("SpecialMesh")
			m.Name = "Mesh"
			m.MeshType = "Brick"
			if shadowblades and tip == claw2.BladeT then
			m.Scale = Vector3.new(1, .025, mag)/l.Size
			l.Transparency = 0.8
			else
			m.Scale = Vector3.new(.215, .215, mag)/l.Size
			end
			m.Parent = l
			l.Parent = sword
			l.CFrame = cf
			lastpoint = point
			end
		coroutine.resume(coroutine.create(function(lo,mog)
		for i = 0 , 1 , 0.1 do if lo then
		wait()
		lo.Transparency = 1*i
		lo.Mesh.Scale = (Vector3.new(.215, .215, mog)/lo.Size)-Vector3.new(.215, .215, 0)*i
		end;end;if lo then
		lo.Parent = nil;end;
		end),l,mag)
		end
end




while true do
if inf == 1000 then
inf = 0
end
if equip and not anim and not jumped then banim = true --and (t.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then (t.Velocity*Vector3.new(0, 1, 0)).magnitude > 2
animate("rr",CFrame.new(1.5,0.5,0),math.rad(90+6*math.cos(inf/15)),math.rad(30),math.rad(37.5),1);animate("bw",CFrame.new(0,-1,-0.25),math.rad(10),math.rad(90),math.rad(-35),1)
if (t.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
animate("leg",CFrame.new(-0.5,-1,0),math.rad(0),math.rad(0),math.rad(-20),1);animate("hr",CFrame.new(0,1,0),math.rad(-25+4*math.cos(inf/15)),math.rad(25),0,1)
animate("reg",CFrame.new(0.5,-1,0),math.rad(0),math.rad(0),math.rad(20),1)
animate("lr",CFrame.new(-1.5,0.65+0.15*math.cos(inf/15),0),math.rad(0),math.rad(0),math.rad(-25),1);animate("Toso",co,0,0,math.rad(-20),1)
elseif(t.Velocity*Vector3.new(1, 0, 1)).magnitude > 2 then
animate("Toso",co,0,0,math.rad(0),1);animate("hr",CFrame.new(0,1,0),math.rad(0),math.rad(0),0,1)
animate("lr",CFrame.new(-1.5,0.5,0),math.rad(-35*math.cos(inf/4)),math.rad(0),math.rad(0),1);
animate("leg",CFrame.new(-0.5,-.85+.15*math.cos(inf/2),0+.1*math.cos(inf/4)),math.rad(45*math.cos(inf/4)),math.rad(0),math.rad(0),1)
animate("reg",CFrame.new(0.5,-.85-.15*math.cos(inf/2),0-.1*math.cos(inf/4)),math.rad(-45*math.cos((inf)/4)),math.rad(0),math.rad(0),1)
end

end
inf =inf+1
wait()
end