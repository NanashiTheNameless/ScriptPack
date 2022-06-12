--[[
//Cross Sans
//Model by GrimFaith (Asriel)
//Scripting by Solavenge (Citrus)
//THIS DOES NOT GO INTO ANY ARCHIVES OTHER THAN PHOENIX.
]]



Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
mana=0
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil
Pocketed = true
Aggro = true
PowerBrickColor = BrickColor.new("Really red")

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

 
function swait(num)
	if num == 0 or num == nil then
		game:service'RunService'.Heartbeat:wait(0)
	else
		for i = 0, num do
			game:service'RunService'.Heartbeat:wait(0)
		end
	end
end	
	
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
wait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t)
return a:lerp(b,t)
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	it=Instance.new
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale,meshtextureid)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
			if meshtextureid then
			mesh.TextureId=meshtextureid
			end
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	
Damagefunc = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, HitSound, HitPitch)
        if hit.Parent == nil then
                return
        end
        local h = hit.Parent:FindFirstChild("Humanoid")
        for _, v in pairs(hit.Parent:children()) do
                if v:IsA("Humanoid") then
                        h = v
                end
        end
        if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
                if hit.Parent:findFirstChild("DebounceHit") ~= nil then
                        if hit.Parent.DebounceHit.Value == true then
                                return
                        end
                end
                if h.MaxHealth >= math.huge then
                        hit:BreakJoints()
                end
                local c = Instance.new("ObjectValue")
                        c.Name = "creator"
                        c.Value = game:service("Players").LocalPlayer
                        c.Parent = h
                
                game:GetService("Debris"):AddItem(c, .5)
                if HitSound ~= nil and HitPitch ~= nil then
                        so(HitSound, hit, 1, HitPitch) 
                end
                local Damage = math.random(minim, maxim)
--                h:TakeDamage(Damage)
                local blocked = false
                local block = hit.Parent:findFirstChild("Block")
                if block ~= nil then
                        if block.className == "IntValue" then
                                if block.Value > 0 then
                                        blocked = true
                                        block.Value = block.Value - 1
                                        print(block.Value)
                                end
                        end
                end
                if blocked == false then
--                h:TakeDamage(Damage)
                        h.Health = h.Health - Damage
                        if Damage ~= 0 then
                        Showdamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1, PowerBrickColor.Color)
                        end
                else
                        h.Health = h.Health - (Damage / 2)
                        if Damage ~=0 then
                        Showdamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1, PowerBrickColor.Color)
                        end
                end
                if Type == "Knockdown" then
                        local hum = hit.Parent.Humanoid
                        hum.PlatformStand = true
                        coroutine.resume(coroutine.create(function(HHumanoid)
                                swait(1)
                                HHumanoid.PlatformStand = false
                        end), hum)
                        local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
                        local bodvol = Instance.new("BodyVelocity")
                                bodvol.velocity = angle * knockback
                                bodvol.P = 5000
                                bodvol.maxForce = Vector3.new(8e+003, 8e+003, 8e+003)
                                bodvol.Parent = hit
                        
                        local rl = Instance.new("BodyAngularVelocity")
                                rl.P = 3000
                                rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
                                rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
                                rl.Parent = hit
                        
                        game:GetService("Debris"):AddItem(bodvol, .5)
                        game:GetService("Debris"):AddItem(rl, .5)
                elseif Type == "Plat" then
                        local hum = hit.Parent.Humanoid
                        hum.PlatformStand = true
                        coroutine.resume(coroutine.create(function(HHumanoid)
                                wait(0.8)
                                HHumanoid.PlatformStand = false
                        end), hum)

                        local rl = Instance.new("BodyAngularVelocity")
                                rl.P = 3000
                                rl.maxTorque = Vector3.new(100, 100, 100) * 500
                                rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
                                rl.Parent = hit

                        game:GetService("Debris"):AddItem(rl, .5)

						local vp = Instance.new("BodyVelocity")
                                vp.P = 500
                                vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                                vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
                        
                        if knockback > 0 then
                                vp.Parent = hit.Parent.Torso
                        end
                        game:GetService("Debris"):AddItem(vp, .5)

                elseif Type == "Normal" then
                        local vp = Instance.new("BodyVelocity")
                                vp.P = 500
                                vp.maxForce = Vector3.new(math.huge, 0, math.huge)
                                vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
                        
                        if knockback > 0 then
                                vp.Parent = hit.Parent.Torso
                        end
                        game:GetService("Debris"):AddItem(vp, .5)
				elseif Type == "Gravitate" then
						local tor = hit.Parent.Torso
                        local bp = Instance.new("BodyPosition",tor)
                                bp.P = 500
                                bp.maxForce = Vector3.new(4000, 1000, 4000)
                                bp.Position = Character.Torso.Position
                        game:GetService("Debris"):AddItem(bp, Delay)
                elseif Type == "Up" then
                        local bodyVelocity = Instance.new("BodyVelocity")
                                bodyVelocity.velocity = vt(0, 20, 0)
                                bodyVelocity.P = 5000
                                bodyVelocity.maxForce = Vector3.new(8e+003, 8e+003, 8e+003)
                                bodyVelocity.Parent = hit
                        
                        game:GetService("Debris"):AddItem(bodyVelocity, .5)
                elseif Type == "Snare" then
                        local bp = Instance.new("BodyPosition")
                                bp.P = 2000
                                bp.D = 100
                                bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                bp.position = hit.Parent.Torso.Position
                                bp.Parent = hit.Parent.Torso
                        game:GetService("Debris"):AddItem(bp, 1)

                elseif Type == "Freeze" then
                        local BodPos = Instance.new("BodyPosition")
                                BodPos.P = 50000
                                BodPos.D = 1000
                                BodPos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                BodPos.position = hit.Parent.Torso.Position
                                BodPos.Parent = hit.Parent.Torso
                        
                        local BodGy = Instance.new("BodyGyro") 
                                BodGy.maxTorque = Vector3.new(4e+005, 4e+005, 4e+005) * math.huge 
                                BodGy.P = 20e+003
                                BodGy.Parent = hit.Parent.Torso
                                BodGy.cframe = hit.Parent.Torso.CFrame
                        
                        hit.Parent.Torso.Anchored = true
                        coroutine.resume(coroutine.create(function(Part) 
                                swait(1.5)
                                Part.Anchored = false
                        end), hit.Parent.Torso)
                        game:GetService("Debris"):AddItem(BodPos, 3)
                        game:GetService("Debris"):AddItem(BodGy, 3)
                
                
                        elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end        
                end                
                
                local debounce = Instance.new("BoolValue")
                debounce.Name = "DebounceHit"
                debounce.Parent = hit.Parent
                debounce.Value = true
                game:GetService("Debris"):AddItem(debounce, Delay)
                c = Instance.new("ObjectValue")
                c.Name = "creator"
                c.Value = Player
                c.Parent = h
                game:GetService("Debris"):AddItem(c, .5)
        end
end

function Showdamage(Pos, Text, Time, Color)
        local Rate = (1 / 30)
        local Pos = (Pos or Vector3.new(0, 0, 0))
        local Text = (Text or "")
        local Time = (Time or 2)
        local Color = (Color or Color3.new(1, 0, 0))
        local EffectPart = part("Custom", workspace, "Neon", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
        EffectPart.Anchored = true
        local BillboardGui = Instance.new("BillboardGui")
                BillboardGui.Size = UDim2.new(3, 0, 3, 0)
                BillboardGui.Adornee = EffectPart
                BillboardGui.Parent = EffectPart
        
        local TextLabel = Instance.new("TextLabel")
                TextLabel.BackgroundTransparency = 1
                TextLabel.Size = UDim2.new(1, 0, 1, 0)
                TextLabel.Text = Text
                TextLabel.TextColor3 = Color
                TextLabel.TextScaled = true
                TextLabel.Font = Enum.Font.SourceSansBold
                TextLabel.Parent = BillboardGui
				TextLabel.TextStrokeTransparency = 0
				TextLabel.TextTransparency = 0.2
				
        
        game.Debris:AddItem(EffectPart, (Time + 0.1))
        EffectPart.Parent = game:GetService("Workspace")
        delay(0, function()
                local Frames = (Time / Rate)
                for Frame = 1, Frames do
                        wait(Rate)
                        local Percent = (Frame / Frames)
                        EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
                        TextLabel.TextTransparency = Percent
                end
                if EffectPart and EffectPart.Parent then
                        EffectPart:Destroy()
                end
        end)
end

function BlastEffect(brickcolor, cframe, x1, y1, z1, x2, y2, z2)
        local prt = part(3, workspace, "Neon", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
        prt.Anchored = true
        prt.CFrame = cframe
        local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
        coroutine.resume(coroutine.create(function() 
                for i = 0, 1, 0.05 do
                        wait()
                        prt.Transparency = i
                        msh.Scale = msh.Scale + vt(x2, y2, z2)
                end
                prt.Parent = nil
        end))
end

function weld(parent, part0, part1, c0, c1)
        local Weld = Instance.new("Weld")
                Weld.Parent = parent
                Weld.Part0 = part0
                Weld.Part1 = part1
                Weld.C0 = c0
                Weld.C1 = c1
        
        return Weld
end



function MagniDamage(Hit, Part, magni, mindam, maxdam, knock, Type, SoundID, Pitch)
        for _, c in pairs(workspace:children()) do
                local hum = c:findFirstChild("Humanoid")
                if hum ~= nil then
                        local head = c:findFirstChild("Torso")
                        if head ~= nil then
                                local targ = head.Position - Part.Position
                                local mag = targ.magnitude
                                if mag <= magni and c.Name ~= Player.Name then 
                                        Damagefunc(head, head, mindam, maxdam, knock, Type, RootPart, .2, SoundID or 1, Pitch or 3)
                                end
                        end
                end
        end
end

function MagicCircle(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, lifetime)
        local prt = part(3, workspace, "Neon", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
        prt.Anchored = true
        prt.CFrame = cframe
        local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
        game:GetService("Debris"):AddItem(prt, lifetime)
        coroutine.resume(coroutine.create(function(Part, Mesh) 
                for i = 0, 1, delay do
                        swait()
                        Part.CFrame = Part.CFrame
                        Part.Transparency = i
                        Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
                end
                Part.Parent = nil
        end), prt, msh)
end

function MagicBlock(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
        local prt=part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt())
        prt.Anchored=true
        prt.CFrame=cframe
        local msh = mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
        game:GetService("Debris"):AddItem(prt,2)
        coroutine.resume(coroutine.create(function(Part,Mesh) 
                for i=0,1,delay do
                        swait()
                        Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
                        Part.Transparency=i
                        Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
                end
                Part.Parent=nil
        end),prt,msh)
end 	
	
	
	
Player=game:GetService('Players').LocalPlayer
	Character=Player.Character
	Mouse=Player:GetMouse()
	m=Instance.new('Model',Character)

for i,v in pairs(Character:GetChildren()) do
	if v:IsA("BasePart") then 
		v.Transparency = 1
		if v:findFirstChild("Mesh") then
			v.Mesh:Remove()
		end
	end
end

for i,v in pairs(Character:GetChildren()) do
	if v:IsA("Hat") then 
		v:Remove()
	end
end

Character.Head.face:Remove()	
	
handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(1.10000002, 0.300000042, 1.30000007))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0567069054, -0.374963284, -0.0399932861, 1, -2.98022691e-008, 1.37788447e-010, 2.98023259e-008, 0.999998093, 2.36526621e-009, -1.37788447e-010, -2.36526176e-009, 1))
handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Really black","Handle",Vector3.new(1, 0.700000048, 1))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0067152977, 0.0250287056, 0.0100021362, 1, -2.98022691e-008, 1.37788447e-010, 2.98023259e-008, 0.999998093, 2.36526621e-009, -1.37788447e-010, -2.36526176e-009, 1))
handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(1, 0.700000048, 1))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0067076683, 0.725027561, 0.0100021362, 1, -2.98022691e-008, 1.37788447e-010, 2.98023259e-008, 0.999998093, 2.36526621e-009, -1.37788447e-010, -2.36526176e-009, 1))
handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(1, 0.700000048, 1))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0067076683, -0.774960995, 0.0100021362, 1, -2.98022691e-008, 1.37788447e-010, 2.98023259e-008, 0.999998093, 2.36526621e-009, -1.37788447e-010, -2.36526176e-009, 1))
handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(1, 0.600000024, 1))
handleweld=weld(m,Character["Left Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0420660973, -0.839612484, 0.0100021362, 1, 8.94067966e-008, 0, -8.94069672e-008, 0.999998093, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(1.10000002, 0.300000042, 1.30000007))
handleweld=weld(m,Character["Left Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0079408288, -0.389612675, -0.0399932861, 1, 8.94067966e-008, 0, -8.94069672e-008, 0.999998093, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(1, 0.700000048, 1))
handleweld=weld(m,Character["Left Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0420544744, 0.710381031, 0.0100021362, 1, 8.94067966e-008, 0, -8.94069672e-008, 0.999998093, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Really black","Handle",Vector3.new(1, 0.700000048, 1))
handleweld=weld(m,Character["Left Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0420659781, 0.0103850365, 0.0100021362, 1, 8.94067966e-008, 0, -8.94069672e-008, 0.999998093, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle",Vector3.new(1.4000001, 0.399999976, 0.399999976))
handleweld=weld(m,Character["Right Leg"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0718898773, -0.0278244019, -0.197489738, -0.168531105, 0.970746934, 0.171009302, -0.0593937077, 0.163174376, -0.984807849, -0.983905315, -0.176127285, 0.0301563554))
mesh("SpecialMesh",handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Mid gray","Handle",Vector3.new(1.19999933, 0.600000024, 1.60000014))
handleweld=weld(m,Character["Right Leg"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.999990821, 0.700016856, 0.410003662, 1, -2.43970271e-017, -5.56362636e-008, -1.36697535e-017, 0.999998093, 0, 5.56362636e-008, 0, 1))
mesh("SpecialMesh",handle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=108884514",Vector3.new(1, 0, 0),Vector3.new(0.899999976, 0.899999976, 0.899999976))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle",Vector3.new(1.29999995, 0.300000012, 0.299999952))
handleweld=weld(m,Character["Right Leg"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.328083873, -0.460006714, 0.131678104, -0.500000179, 0.86602366, 1.88850976e-007, -7.54979226e-008, 1.7447725e-007, -1, -0.866025329, -0.499999225, -2.18557012e-008))
mesh("SpecialMesh",handle,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle",Vector3.new(1.4000001, 0.399999976, 0.399999976))
handleweld=weld(m,Character["Right Leg"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0826148987, -0.0158462524, 0.132510662, 0.173648342, 0.96984458, 0.171009302, -2.73063711e-006, 0.173647553, -0.984807789, -0.98480773, 0.171009451, 0.0301563144))
mesh("SpecialMesh",handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle",Vector3.new(1.29999995, 0.300000012, 0.299999952))
handleweld=weld(m,Character["Right Leg"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.278078556, -0.460006714, -0.218289971, 0.500000417, 0.86602354, -6.0481824e-008, -1.13133467e-008, -6.33065369e-008, -1, -0.866025209, 0.499999464, -2.18557119e-008))
mesh("SpecialMesh",handle,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Really black","Handle",Vector3.new(1, 1.29999995, 1))
handleweld=weld(m,Character["Right Leg"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.24520874e-006, -0.349968076, 0.0100021362, 1, -8.8118653e-012, 1.37788447e-010, 8.81185316e-012, 0.999998093, 2.36526621e-009, -1.37788447e-010, -2.36526176e-009, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle",Vector3.new(1.29999995, 0.300000012, 0.299999952))
handleweld=weld(m,Character["Left Leg"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.278078675, -0.460006714, -0.21829015, 0.500000417, 0.86602354, -6.0481824e-008, -1.13133467e-008, -6.33065369e-008, -1, -0.866025209, 0.499999464, -2.18557119e-008))
mesh("SpecialMesh",handle,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle",Vector3.new(1.29999995, 0.300000012, 0.299999952))
handleweld=weld(m,Character["Left Leg"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.328083903, -0.460006714, 0.131678104, -0.500000179, 0.86602366, 1.88850976e-007, -7.54979226e-008, 1.7447725e-007, -1, -0.866025329, -0.499999225, -2.18557012e-008))
mesh("SpecialMesh",handle,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Really black","Handle",Vector3.new(1, 1.29999995, 1))
handleweld=weld(m,Character["Left Leg"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.24520874e-006, -0.349968076, 0.0100021362, 1, -8.8118653e-012, 1.37788447e-010, 8.81185316e-012, 0.999998093, 2.36526621e-009, -1.37788447e-010, -2.36526176e-009, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle",Vector3.new(1.4000001, 0.399999976, 0.399999976))
handleweld=weld(m,Character["Left Leg"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0826148987, -0.0158462524, 0.132510424, 0.173648342, 0.96984458, 0.171009302, -2.73063711e-006, 0.173647553, -0.984807789, -0.98480773, 0.171009451, 0.0301563144))
mesh("SpecialMesh",handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Handle",Vector3.new(1.4000001, 0.399999976, 0.399999976))
handleweld=weld(m,Character["Left Leg"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.071890831, -0.0278244019, -0.197489977, -0.168531105, 0.970746934, 0.171009302, -0.0593937077, 0.163174376, -0.984807849, -0.983905315, -0.176127285, 0.0301563554))
mesh("SpecialMesh",handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Mid gray","Handle",Vector3.new(1.19999933, 0.600000024, 1.60000014))
handleweld=weld(m,Character["Left Leg"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.999991, 0.700016856, 0.410003662, 1, -2.43970271e-017, -5.56362636e-008, -1.36697535e-017, 0.999998093, 0, 5.56362636e-008, 0, 1))
mesh("SpecialMesh",handle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=108884514",Vector3.new(1, 0, 0),Vector3.new(0.899999976, 0.899999976, 0.899999976))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Black","Handle",Vector3.new(2, 2, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.24520874e-006, 2.90870667e-005, -0.63999939, 1, -1.36697287e-017, 0, -1.36697535e-017, 0.999998212, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Black","Handle",Vector3.new(2, 0.299999952, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.24520874e-006, -1.04996729, -0.63999939, 1, -1.36697287e-017, 0, -1.36697535e-017, 0.999998212, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(0.699999988, 0.50000006, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.650002956, 0.550035, 0.560005188, 1, -1.36697287e-017, 0, -1.36697535e-017, 0.999998212, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(0.699999988, 0.50000006, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.649995327, 0.550035, 0.560005188, 1, -1.36697287e-017, 0, -1.36697535e-017, 0.999998212, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(0.400000006, 0.599999964, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.449995518, 0.700028896, 0.460006714, 1, -1.36697287e-017, 0, -1.36697535e-017, 0.999998212, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(0.300000012, 0.299999952, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.599997044, 0.350027561, 0.460006714, 1, -1.36697287e-017, 0, -1.36697535e-017, 0.999998212, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(0.200000003, 0.299999952, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.649995327, -0.049967289, 0.460006714, 1, -1.36697287e-017, 0, -1.36697535e-017, 0.999998212, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(0.200000003, 0.99999994, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.550000668, -0.399962902, 0.460006714, 1, -1.36697287e-017, 0, -1.36697535e-017, 0.999998212, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(0.200000003, 0.299999952, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.250001431, 0.550035, 0.460006714, 1, -1.36697287e-017, 0, -1.36697535e-017, 0.999998212, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(0.5, 0.299999952, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.400002956, 0.850027561, 0.460006714, 1, -1.36697287e-017, 0, -1.36697535e-017, 0.999998212, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(0.400000036, 2, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.799997807, 2.90870667e-005, 0.460006714, 1, -1.36697287e-017, 0, -1.36697535e-017, 0.999998212, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(0.5, 2, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.750005245, 2.90870667e-005, 0.460006714, 1, -1.36697287e-017, 0, -1.36697535e-017, 0.999998212, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(0.5, 0.299999952, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.500001431, 0.350027561, 0.460006714, 1, -1.36697287e-017, 0, -1.36697535e-017, 0.999998212, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"White","Handle",Vector3.new(2.00000024, 0.5, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43051147e-006, 0.650028706, 0.660003662, 1, -1.36697287e-017, 0, -1.36697535e-017, 0.999998212, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"White","Handle",Vector3.new(1.00000024, 0.5, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.160003662, 0.650028706, 1.09999704, -4.37113883e-008, 0, -1, -1.36697535e-017, 0.999998212, 0, 1, -2.20977777e-017, -4.37113883e-008))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"White","Handle",Vector3.new(1.00000024, 0.5, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.160003662, 0.650028706, -1.10000372, -4.37113883e-008, 0, -1, -1.36697535e-017, 0.999998212, 0, 1, -2.20977777e-017, -4.37113883e-008))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"White","Handle",Vector3.new(2.20000005, 0.5, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.43051147e-006, 0.650028706, 0.660003662, 1, -1.36697287e-017, 0, -1.36697535e-017, 0.999998212, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Handle",Vector3.new(0.699999988, 0.599999964, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.889498711, -0.0537874699, 0.733566284, 0.642787635, 0.766043067, -3.55271368e-015, -0.766044438, 0.642786503, 0, 0, 0, 1))
mesh("SpecialMesh",handle,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Handle",Vector3.new(0.800000072, 1.60000002, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0518354177, 0.906989098, 0.733566284, 0.766044438, -0.642786503, 0, 0.642787635, 0.766043067, -3.55271368e-015, 0, 0, 1))
mesh("SpecialMesh",handle,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(0.900000155, 0.600000024, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.170783401, -0.534261465, 0.460006714, 0.98480773, -0.173647895, 0, 0.173648208, 0.984805942, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(0.400000125, 0.600000024, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.287393093, -0.502182484, 0.460006714, 1, 1.49011363e-008, 0, -1.4901163e-008, 0.999998212, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(0.200000167, 0.700000048, 0.200000003))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.499696255, -0.599782467, 0.460006714, 1, 1.49011363e-008, 0, -1.4901163e-008, 0.999998212, 0, 0, 0, 1))
handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Really black","Handle",Vector3.new(2, 2, 1))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-5.24520874e-006, 2.90870667e-005, -0.0899963379, 1, -8.81186617e-012, 1.37788447e-010, 8.81185316e-012, 0.999998212, 2.36526621e-009, -1.37788447e-010, -2.36526199e-009, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Black","Handle",Vector3.new(0.200000033, 0.200000003, 0.200000048))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0365233421, -0.688952446, 0.716278076, 0.999922216, 0.00910925679, 0.00851889979, -0.00851848722, 0.997715652, -0.0669871122, -0.00910965912, 0.0669092163, 0.9977175))
mesh("SpecialMesh",handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Black","Handle",Vector3.new(0.200000033, 0.300000012, 0.200000048))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0347619057, -0.832028389, 0.609809875, 0.999922216, 0.00910925679, 0.00851889979, -0.00851848722, 0.997715652, -0.0669871122, -0.00910965912, 0.0669092163, 0.9977175))
mesh("SpecialMesh",handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Deep orange","Handle",Vector3.new(0.7099998, 0.690000057, 0.800000072))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0450046062, -0.34496069, -0.510002136, -1, 1.50995476e-007, -3.53902607e-007, 1.50995803e-007, 0.999998212, -1.50995746e-007, 3.53902578e-007, -1.50995533e-007, -1))
mesh("SpecialMesh",handle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=105992239",Vector3.new(0, 0, 0),Vector3.new(1.5, 1.5, 1.5))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Really black","Handle",Vector3.new(0.300000042, 1, 0.200000048))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.533332825, -0.763595104, 0.573783875, 0.939692616, -0.342019498, 0, 0.342020124, 0.939690948, 0, 0, 0, 1))
mesh("SpecialMesh",handle,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Really black","Handle",Vector3.new(0.300000042, 1, 0.200000048))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0400032997, -0.899955273, 0.573783875, 1, -1.36697287e-017, 0, -1.36697535e-017, 0.999998212, 0, 0, 0, 1))
mesh("SpecialMesh",handle,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Really black","Handle",Vector3.new(0.300000042, 1, 0.200000048))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.458151102, -0.79095912, 0.573783875, 0.939692616, 0.342019498, 0, -0.342020124, 0.939690948, 0, 0, 0, 1))
mesh("SpecialMesh",handle,Enum.MeshType.Cylinder,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"White","Handle",Vector3.new(0.900000036, 1, 0.699999988))
handleweld=weld(m,Character["Head"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.26664257, 0.659667969, -1.10489941, 0.492403835, -0.852867007, -0.173648104, 0.235888645, -0.0612748675, 0.969846308, -0.837791741, -0.518516719, 0.171009973))
mesh("SpecialMesh",handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"White","Handle",Vector3.new(0.900000036, 1, 2))
handleweld=weld(m,Character["Head"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.94452858, 0.400018692, -0.135944366, 0.866025388, 6.9388815e-018, 0.5, -1.36697535e-017, 0.999998212, 0, -0.5, 1.3877763e-017, 0.866025388))
mesh("SpecialMesh",handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"White","Handle",Vector3.new(0.900000036, 1, 2))
handleweld=weld(m,Character["Head"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.09449005, 0.400018692, -0.229496002, 0.939692557, -6.9388815e-018, -0.342020363, -1.36697535e-017, 0.999998212, 0, 0.342020363, -1.3877763e-017, 0.939692557))
mesh("SpecialMesh",handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"White","Handle",Vector3.new(0.900000036, 1, 2))
handleweld=weld(m,Character["Head"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.2899704, 0.400019169, 0.0504355431, -0.000345305598, -3.01991037e-007, -0.99999994, -5.21397127e-011, 0.999998212, -3.01991577e-007, 0.99999994, -5.21396225e-011, -0.000345305598))
mesh("SpecialMesh",handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"White","Handle",Vector3.new(0.900000036, 1, 2))
handleweld=weld(m,Character["Head"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.950009823, 0.400018692, -0.0899963379, 1, -1.36697287e-017, 0, -1.36697535e-017, 0.999998212, 0, 0, 0, 1))
mesh("SpecialMesh",handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"White","Handle",Vector3.new(0.900000036, 1, 2))
handleweld=weld(m,Character["Head"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.04999018, 0.400018692, -0.0899963379, 1, -1.36697287e-017, 0, -1.36697535e-017, 0.999998212, 0, 0, 0, 1))
mesh("SpecialMesh",handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"White","Handle",Vector3.new(0.900000036, 1, 2))
handleweld=weld(m,Character["Head"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.02066422, 0.400018692, -0.317581177, 0.98480773, -6.9388815e-018, 0.173648179, -1.36697535e-017, 0.999998212, 0, -0.173648179, 1.3877763e-017, 0.98480773))
mesh("SpecialMesh",handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(1, 1, 1))
handleweld=weld(m,Character["Head"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0799401999, 0.0609292984, -0.190055847, 0.999984324, 5.84840677e-007, 0.00560137676, -8.11467146e-007, 0.999998212, 4.04566163e-005, -0.00560137676, -4.04604543e-005, 0.999984324))
mesh("SpecialMesh",handle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=20637493",Vector3.new(0, 0, 0),Vector3.new(2, 0.899999976, 1.5))
handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Really black","Handle",Vector3.new(1.60000002, 2.9000001, 2.20000005))
handleweld=weld(m,Character["Head"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0499823093, -0.55574131, -0.340011597, 1, 2.42325049e-010, 7.0896931e-008, -2.42325493e-010, 0.999998212, -1.92811656e-010, -7.0896931e-008, 1.92811295e-010, 1))
mesh("SpecialMesh",handle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18010902",Vector3.new(0, 0, 0),Vector3.new(1.5, 1.5, 1.5))
handle=part(Enum.FormFactor.Custom,m,Enum.Material.Slate,0,0,"Lily white","Handle",Vector3.new(0.200000003, 1.49762106, 0.367621154))
handleweld=weld(m,Character["Head"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.759941101, -0.604561329, -0.783833981, -4.37113883e-008, -7.24829704e-007, -1, -9.45288769e-019, 0.999998212, -7.24831011e-007, 1, -3.17189072e-014, -4.37113883e-008))
mesh("SpecialMesh",handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Custom,m,Enum.Material.Slate,0,0,"Lily white","Handle",Vector3.new(0.25, 1.39762104, 0.467621028))
handleweld=weld(m,Character["Head"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.734962463, -0.382373154, -1.40004396, 2.29845955e-005, 3.82969354e-008, -1, -0.866037309, 0.499978483, -1.9886369e-005, 0.499979377, 0.866035759, 1.15249904e-005))
mesh("SpecialMesh",handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Custom,m,Enum.Material.Slate,0,0,"Lily white","Handle",Vector3.new(0.25, 1.39762104, 0.450000018))
handleweld=weld(m,Character["Head"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.734977722, -0.247079849, -1.46933198, -2.09955142e-005, -3.72491975e-008, 1, 0.866037309, 0.499978483, 1.82015228e-005, -0.499979377, 0.866035759, -1.04650644e-005))
mesh("SpecialMesh",handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Custom,m,Enum.Material.Slate,0,0,"Lily white","Handle",Vector3.new(0.25, 1.49762106, 0.317621171))
handleweld=weld(m,Character["Head"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.734931946, -0.604560852, -0.865053654, -4.37113883e-008, 1.94631519e-010, 1, 1.29048331e-019, 0.999998212, -1.94631866e-010, -1, 5.24167976e-018, -4.37113883e-008))
mesh("SpecialMesh",handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Cheek=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really red","Cheek",Vector3.new(0.200000003, 0.797621012, 0.200000003))
cheekweld=weld(m,Character["Head"],Cheek,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.601955414, -0.162797928, 0.295737267, 0.342046022, 4.04983638e-008, -0.939683199, 0.939683199, 2.29856287e-005, 0.342046022, 2.16131011e-005, -0.999998212, 7.82410189e-006))
mesh("SpecialMesh",Cheek,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Slate,0,0,"White","Handle",Vector3.new(0.900000036, 1, 0.699999988))
handleweld=weld(m,Character["Head"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0582208633, 0.27583313, 1.28360176, -0.633022189, -0.754405081, -0.173648059, 0.023099035, -0.242619634, 0.969846308, -0.773788929, 0.609922111, 0.171009958))
mesh("SpecialMesh",handle,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
LEye=part(Enum.FormFactor.Symmetric,m,Enum.Material.Neon,0,0,"Really red","LEye",Vector3.new(0.127664909, 0.127664909, 0.127664909))
leyeweld=weld(m,Character["Head"],LEye,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.318228245, -0.559594631, 0.257324219, 1, -3.00161137e-005, 3.04324476e-005, 3.00170814e-005, 0.999998212, -3.00167321e-005, -3.04315472e-005, 3.00175907e-005, 1))
mesh("SpecialMesh",LEye,Enum.MeshType.Sphere,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
handle=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Lily white","Handle",Vector3.new(1.66100001, 1.78699994, 1.70799994))
handleweld=weld(m,Character["Head"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0900025368, -0.449978828, -0.269989014, 1, -1.36697287e-017, 0, -1.36697535e-017, 0.999998212, 0, 0, 0, 1))
mesh("SpecialMesh",handle,Enum.MeshType.FileMesh,"rbxassetid://430073345",Vector3.new(0, 0, 0),Vector3.new(0.899999976, 0.899999976, 0.899999976),"rbxassetid://430073362")
handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(1, 1, 1))
handleweld=weld(m,Character["Head"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.309482574, -0.645757675, 0.518859863, 0.861629188, 0, -0.507538319, 0, 0.999998212, 0, 0.507538319, 0, 0.861629188))
mesh("SpecialMesh",handle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1185246",Vector3.new(0, 0, 0),Vector3.new(-0.800000012, -0.800000012, -0.200000003))
handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(1, 1, 1))
handleweld=weld(m,Character["Head"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.36045742, -0.627934456, 0.292892456, 0.992546678, 6.49359566e-010, 0.121869393, 0.0106216129, 0.996192873, -0.0865061134, -0.121405624, 0.0871556029, 0.98876977))
mesh("SpecialMesh",handle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1185246",Vector3.new(0, 0, 0),Vector3.new(-0.600000024, -0.600000024, -0.200000003))
handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Really black","Handle",Vector3.new(2.99997711, 4.19996166, 1.54998469))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(5.96046448e-005, 0.622812271, -1.06464767, 1, 1.77355797e-010, 1.12091172e-008, 3.66705954e-009, 0.939691782, -0.342017889, -1.05937978e-008, 0.342017263, 0.939693451))
mesh("SpecialMesh",handle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=63717022",Vector3.new(0, 0, 0),Vector3.new(1.29999995, -2.6500001, 1.5))
handle=part(Enum.FormFactor.Symmetric,m,Enum.Material.Plastic,0,0,"Institutional white","Handle",Vector3.new(2.99997711, 4.19996166, 1.54998469))
handleweld=weld(m,Character["Torso"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(2.52723694e-005, 0.690700531, -1.14962769, 1, 1.77355797e-010, 1.12091172e-008, 3.66705954e-009, 0.939691782, -0.342017889, -1.05937978e-008, 0.342017263, 0.939693451))
mesh("SpecialMesh",handle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=63717022",Vector3.new(0, 0, 0),Vector3.new(1.29999995, -2.6500001, 1.5))

local CharaCheek = m:FindFirstChild("Cheek")

local leyeemitter = Instance.new("ParticleEmitter", LEye)
leyeemitter.VelocitySpread = 1
leyeemitter.VelocityInheritance = 0.6
leyeemitter.Lifetime = NumberRange.new(0.2)
leyeemitter.Speed = NumberRange.new(1)
leyeemitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.1), NumberSequenceKeypoint.new(1, 0.1)})
leyeemitter.RotSpeed = NumberRange.new(100)
leyeemitter.Rate = 1000
leyeemitter.Rotation = NumberRange.new(20)
leyeemitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5), NumberSequenceKeypoint.new(1, 0.5)})
leyeemitter.LightEmission = 40
leyeemitter.Color = ColorSequence.new(Color3.new(1, 0, 0.0156863), Color3.new(1, 0, 0.0156863))
leyeemitter.Enabled = false

function MagicFlames(origin, duration, increment)
	coroutine.wrap(function() 
		for i = 1,duration,increment do
		local fColors = {BrickColor.new('Institutional white'), PowerBrickColor}
		local p = Instance.new('Part', origin)
		p.BrickColor = (fColors[math.random(1,#fColors)])
		p.FormFactor = 'Custom'
		p.Material = 'Neon'
		p.Size = Vector3.new(1, 1, 1)
		p.CanCollide = false
		p.Anchored = true
		p.Locked = true
		p.CFrame = origin.CFrame * CFrame.new(0, 1, 0) * CFrame.Angles(math.random(0,3),math.random(0,3),math.random(0,3))
		Instance.new('BlockMesh', p)
		coroutine.wrap(function()
			for i = 1, 10 do
				p.Mesh.Scale = p.Mesh.Scale - Vector3.new(.1, .1, .1)
				p.CFrame = p.CFrame * CFrame.new(0, .35, 0)
				wait()
			end
		end)()
		game:service'Debris':AddItem(p, .55)
		end
	end)()
end

function SpawnBone(origin,lifetime,xpos,ypos,zpos)
	local B0ne = part(1,workspace,"SmoothPlastic",0,0,"Institutional white","bon",Vector3.new(1,2,1))
	B0ne.Position = origin.Position
	B0ne.Name = "bon"
	B0ne.CanCollide = false
	B0ne.BrickColor = BrickColor.new("Institutional white")
	B0ne.Material = "Neon"
	B0ne.Size = Vector3.new(1, 1, 1)
	B0ne.TopSurface = Enum.SurfaceType.Smooth
	B0ne.BottomSurface = Enum.SurfaceType.Smooth
	local B0nmesh = Instance.new("SpecialMesh",B0ne)
	B0nmesh.MeshId = "rbxassetid://465130937"
	B0nmesh.Scale = Vector3.new(0.01, 0.01, 0.01)
	local B0nvel = Instance.new("BodyAngularVelocity",B0ne)
	B0nvel.AngularVelocity = Vector3.new(15,0,0)	
	local bep = Instance.new("BodyPosition", B0ne)
	bep.Position = origin.Position
	bep.D = 600
	coroutine.resume(coroutine.create(function(bep) 
		for i = 0,1,0.05 do
			swait()
			bep.Position = Character.Head.CFrame:pointToWorldSpace(Vector3.new(xpos,ypos,zpos))
		end
	end),bep)
	coroutine.resume(coroutine.create(function()
	wait(lifetime)
	bep:Remove()
	local MainPos = B0ne.Position
    local MainPos2 = mouse.Hit.p
    local MouseLook = cf((MainPos + MainPos2) / 2, MainPos2)	
		hitcon=B0ne.Touched:connect(function(hit)
			if hit:findFirstChild("Humanoid") or hit.Parent:findFirstChild("Humanoid") then 	
			Damagefunc(B0ne, hit, 1, 5, math.random(2, 5), "Normal", RootPart, .1, "http://www.roblox.com/asset/?id=512862725", 1)
			so("http://www.roblox.com/asset/?id=512862725", hit, 0.5, 1)
			end		
	end)
	coroutine.resume(coroutine.create(function(Pos1, Pos2, Look)
    local num = 100
    repeat
      swait()
      local ohit, opos = rayCast(Pos1, Look.lookVector, 5, Character)
      B0ne.CFrame = CFrame.new((Pos1 + opos) / 2, opos)*angles(num,0,0)
      Pos1 = Pos1 + Look.lookVector * 3
      B0ne.CFrame = CFrame.new(B0ne.Position, mouse.Hit.p)*angles(num,0,0)
      if ohit ~= nil then
        num = 0
      end
      num = num - 1
    until num <= 0
	local ref = part(3,workspace,"SmoothPlastic",0,0,"Institutional white","Effect",vt())
	ref.Transparency = 1
    ref.Anchored = true
    ref.CFrame = cf(B0ne.Position)
    game:GetService("Debris"):AddItem(ref, 0.5)
    MagniDamage(ref,ref,4,10,25,0,"Normal","rbxassetid://512862725",1)
    B0ne.Parent = nil
  end), MainPos, MainPos2, MouseLook)	
		hitcon:disconnect() 
	end))
end

function Backhand()
	attack=true
	local tempbox = Instance.new("Part", Character["Right Arm"])
	tempbox.CanCollide = false
	tempbox.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	tempbox.Transparency = 1
	tempbox.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	tempbox.Material = Enum.Material.Fabric
	tempbox.Size = Vector3.new(1, 1, 2)
	tempbox.Name = "THitbox"
	tempbox.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	tempbox.CFrame = CFrame.new(24.826, 1.974, -28.95) * CFrame.Angles(1.5707978010178, 2.9405705390673e-006, -3.1415922641754)
	tempbox.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	tempbox.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	tempbox.Friction = 0.3
	tempbox.BottomSurface = Enum.SurfaceType.SmoothNoOutlines

	local tempweld = Instance.new("Weld", tempbox)
	tempweld.Part0 = Character["Right Arm"]
	tempweld.Part1 = tempbox
	tempweld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-90), math.rad(180), math.rad(0))	
	
	if Aggro == true then
	leyeemitter.Color = ColorSequence.new(Color3.new(1, 0, 0.0156863), Color3.new(1, 0, 0.0156863))	
	elseif Aggro ~= true then
	leyeemitter.Color = ColorSequence.new(Color3.new(0, 255, 255), Color3.new(0, 255, 255))		
	end
	leyeemitter.Enabled = true	
	
	hitcon=tempbox.Touched:connect(function(hit)
			if hit:findFirstChild("Humanoid") or hit.Parent:findFirstChild("Humanoid") then 	
			Damagefunc(tempbox, hit, 1, 5, math.random(20, 25), "Plat", RootPart, .1, "rbxassetid://511340819", 1)
			
			--so("rbxassetid://511471841",hit,1,1.15+(math.random(-1,1)*(math.random()*.1)))
			coroutine.resume(coroutine.create(function()
				--MagicBlock(BrickColor.new("Really red"), hit.CFrame,1,1,1,1.5,1.5,1.5,0.05)
				if Aggro == true then				
				wait(2)
				so("http://www.roblox.com/asset/?id=183763506",hit,5,.7)
				so("http://www.roblox.com/asset/?id=168413145",hit,0.4,.7)
				so("http://www.roblox.com/asset/?id=168413145",hit,0.4,.9)
				--MagniDamage(hit,hit,5,100,155,0,"Plat")
				Damagefunc(hit, hit, 111, 115, math.random(20, 25), "Plat", RootPart, .1, "rbxassetid://157878578", 1)
				MagicCircle(BrickColor.new("Really red"),hit.CFrame,3,3,3,5,5,5,0.05)
				MagicCircle(BrickColor.new("Institutional white"),hit.CFrame,2,2,2,4,4,4,0.05)
				BlastEffect(BrickColor.new("Really black"),hit.CFrame,1,1,1,.3,.3,.3)
				BlastEffect(BrickColor.new("Really red"),hit.CFrame,.2,.2,.2,-.1,-.1,-.1)
				end
			end))
			end
			hitcon:disconnect() 	
	end)
	for i=0,1,0.08 do
		swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(80)),.2)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-75)),.2)
		RW.C0=clerp(RW.C0,cf(1,0.5,-0.5)*angles(math.rad(0),math.rad(130),math.rad(90)),.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0)*angles(math.rad(-15),math.rad(10),math.rad(30)),0.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
	end
	for i=0,1,0.05 do
		swait()
		RootJoint.C0=clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-15)),.2)
		Torso.Neck.C0=clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(15)),.2)
		RW.C0=clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90)),.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0)*angles(math.rad(-15),math.rad(10),math.rad(10)),0.3)
		RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(15),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
		LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-15),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
	end
	leyeemitter.Enabled = false
	tempweld:Remove()
	tempbox:Remove()
	attack=false
end

function Telepoot()
	attack = true
	TPFX(1)
	leyeemitter.Lifetime = NumberRange.new(0.7)
	leyeemitter.Speed = NumberRange.new(3)
	leyeemitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.8), NumberSequenceKeypoint.new(1, 0.1)})
	leyeemitter.Enabled = true
	so("rbxassetid://509138786",Torso,0.6,1.5)
	local dest = CFrame.new(mouse.Hit.p.x,mouse.Hit.p.y,mouse.Hit.p.z)
	for i = 1,3 do wait()
		for x,v in pairs(m:GetChildren()) do
			if v:IsA("Part") and v.ClassName ~= "BasePart" and v.ClassName ~= "Weld" and v ~= Cheek then
				v.Transparency = v.Transparency + 0.33
			end
		end
	end
	for x,v in pairs(m:GetChildren()) do
		if v:IsA("Part") and v.ClassName ~= "BasePart" and v.ClassName ~= "Weld" and v ~= Cheek then
			v.Transparency = 1
		end
	end
	swait(5)
	local tRot = RootPart.CFrame - RootPart.Position
	RootPart.CFrame = tRot + Vector3.new(dest.x,dest.y+3,dest.z)
	TPFX(0)
	for i = 1,3 do wait()
		for x,v in pairs(m:GetChildren()) do
			if v:IsA("Part") and v.ClassName ~= "BasePart" and v.ClassName ~= "Weld" and v ~= Cheek then
				v.Transparency = v.Transparency - 0.33
			end
		end
	end	
	for x,v in pairs(m:GetChildren()) do
		if v:IsA("Part") and v.ClassName ~= "BasePart" and v.ClassName ~= "Weld" and v ~= Cheek then
			v.Transparency = 0
		end
	end
	leyeemitter.Lifetime = NumberRange.new(0.2)
	leyeemitter.Speed = NumberRange.new(1)
	leyeemitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.1), NumberSequenceKeypoint.new(1, 0.1)})
	leyeemitter.Enabled = false
	attack = false
end

function TPFX(dir)
	coroutine.resume(coroutine.create(function()
		local inc = 1
		if dir == 1 then
			inc = -2
		elseif dir == 0 then
			inc = 2
		else
		end
		for angle = 1, 720, 70 do
			local p = Instance.new('Part')
			p.Material = "Neon"
			p.CanCollide = false
			p.BrickColor = BrickColor.new("Cyan")
			p.Parent = workspace
			p.Size = Vector3.new(0.2,0.2,0.2)
			p.Anchored = true
			p.CFrame = Torso.CFrame         
		    	     * CFrame.Angles(0, math.rad(angle), 0) 
		        	 * CFrame.new(2, inc, 0)
		if dir == 1 then                 
			inc = inc + 0.6
		elseif dir == 0 then
			inc = inc - 0.6
		else
		end
			game:GetService("Debris"):AddItem(p,1)
			coroutine.resume(coroutine.create(function()
				for i = 0,1,0.05 do
					swait()
					p.Size = p.Size + Vector3.new(0.1,0.1,0.1)
					p.CFrame = p.CFrame*CFrame.Angles(math.random(1,360),math.random(1,360),math.random(1,360))
					p.Transparency = i
				end
				p.Transparency = 1
			end))
			wait()
		end
	end))
end

function TFMFX()
	attack = true
	coroutine.resume(coroutine.create(function()
		for angle = 1, 720, 70 do
			local aye = Instance.new('Part')
			aye.Material = "Neon"
			aye.CanCollide = false
			aye.BrickColor = PowerBrickColor
			aye.Parent = Character
			aye.Size = Vector3.new(0.2,0.2,0.2)
			aye.Anchored = false
			aye.CFrame = LEye.CFrame
			game:GetService("Debris"):AddItem(aye,0.1)
			coroutine.resume(coroutine.create(function()
				for i = 0,1,0.05 do
					swait()
					aye.Size = aye.Size + Vector3.new(0.01,0.01,0.01)
					aye.CFrame = LEye.CFrame*CFrame.Angles(math.random(1,360),math.random(1,360),math.random(1,360))
					aye.Transparency = i
				end
				aye.Transparency = 1
			end))
			wait()
		end
	end))
	attack = false
end

function attackone()
attack = true
SpawnBone(RightArm,0.5,3,3,0)
MagicFlames(RightArm,10,0.5)
leyeemitter.Enabled = true	
so("rbxassetid://512078241",Torso,1,1)
	for i=0,1,0.05 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(20)),.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(-20)),.2)
		RW.C0 = clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(95),math.rad(10),math.rad(30)),.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0)*angles(math.rad(-15),math.rad(10),math.rad(30)),0.3)
		RH.C0 = clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
		LH.C0 = clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
	end
	atktype(1,2)
attack = false
leyeemitter.Enabled = false
end

function attacktwo()
attack = true
leyeemitter.Enabled = true
SpawnBone(LeftArm,0.5,-3,3,0)
MagicFlames(LeftArm,10,0.5)
so("rbxassetid://512078241",Torso,1,1)
	for i=0,1,0.05 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(-20)),.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(20)),.2)
		RW.C0 = clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(5),math.rad(10),math.rad(30)),.2)
		LW.C0 = clerp(LW.C0,cf(-1.5,0.5,0)*angles(math.rad(95),math.rad(-10),math.rad(-30)),0.3)
		RH.C0 = clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
		LH.C0 = clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
	end
	atktype(2,3)
leyeemitter.Enabled = false
attack = false
end

function attackthree()
attack = true
leyeemitter.Enabled = true	
SpawnBone(RightArm,0.5,3,3,0)
SpawnBone(LeftArm,0.5,-3,3,0)
SpawnBone(Head,0.5,0,3.5,0)
MagicFlames(RightArm,10,0.5)
so("rbxassetid://512078241",Torso,1,0.9)
	for i=0,1,0.04 do
		swait()
		RootJoint.C0 = clerp(RootJoint.C0,RootCF*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
		Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
		RW.C0 = clerp(RW.C0,cf(1.5,0.5,0)*angles(math.rad(125),math.rad(10),math.rad(30)),.2)
		LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0)*angles(math.rad(-15),math.rad(10),math.rad(30)),0.3)
		RH.C0 = clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
		LH.C0 = clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.2)
	end
	atktype(1,1)
leyeemitter.Enabled = false
attack = false
end

function atktype(s, e)
        coroutine.resume(coroutine.create(function()
                attacktype = e
                swait(80)
                attacktype = s
        end))
end


mouse.Button1Down:connect(function()
if Aggro == false then
	if attack == false and Pocketed == true and attacktype == 1 then
		attackone()
	elseif attack == false and Pocketed == true and attacktype == 2 then
		attacktwo()
	elseif attack == false and Pocketed == true and attacktype == 3 then
		attackthree()
	end
elseif Aggro == true then
	--if attack == false and and Pocketed == true attacktype == 4 then
		--attackone()
	--elseif attack == false and Pocketed == true and attacktype == 5 then
		--attacktwo()
	--elseif attack == false and Pocketed == true and attacktype == 6 then
		--attackthree()
	--end
end
end)

mouse.KeyDown:connect(function(k)
k=k:lower()
if attack == false and k == 't' then
	if Pocketed==false then
		Pocketed=true
		RSH=ch.Torso["Right Shoulder"] 
		LSH=ch.Torso["Left Shoulder"] 
		-- 
		RSH.Parent=nil 
		LSH.Parent=nil 
		-- 
		RW.Name="Right Shoulder"
		RW.Part0=ch.Torso 
		RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
		RW.C1=cf(0, 0.5, 0) 
		RW.Part1=ch["Right Arm"] 
		RW.Parent=ch.Torso 
		-- 
		LW.Name="Left Shoulder"
		LW.Part0=ch.Torso 
		LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
		LW.C1=cf(0, 0.5, 0) 
		LW.Part1=ch["Left Arm"] 
		LW.Parent=ch.Torso 
		--
		equipped = true
	else
		if Pocketed == true then
			Pocketed = false
			wait() 
			RW.Parent=nil 
			LW.Parent=nil 
			RSH.Parent=player.Character.Torso 
			LSH.Parent=player.Character.Torso 
		end
	end
elseif attack == false and k == 'v' then
	if Aggro == false then
		Aggro = true
		print("Enabled aggro")
		leyeemitter.Color = ColorSequence.new(Color3.new(1, 0, 0.0156863), Color3.new(1, 0, 0.0156863))	
		PowerBrickColor =  BrickColor.new("Really red")
		LEye.BrickColor = BrickColor.new("Really red")
		Cheek.Transparency = 0
		TFMFX()
	elseif Aggro == true then
		Aggro = false
		print("Disabled aggro")		
		leyeemitter.Color = ColorSequence.new(Color3.new(0, 255, 255), Color3.new(0, 255, 255))		
		PowerBrickColor =  BrickColor.new("Cyan")
		LEye.BrickColor = BrickColor.new("Cyan")		
		Cheek.Transparency = 1
		TFMFX()
	end
	so("rbxassetid://513586643",Torso,0.6,1.15+(math.random(-1,1)*(math.random()*.1)))
elseif attack == false and Pocketed == true and k == 'c' then
	Backhand()
elseif attack == false and Pocketed == true and Aggro == false and k == 'f' then
	Telepoot()
end
end)


local sine = 0
local change = 1
local val = 0

while true do
wait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false and Pocketed == true then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(-5),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*angles(math.rad(-5),math.rad(0),math.rad(0)),0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0)*angles(math.rad(20),math.rad(20),math.rad(20)),0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0)*angles(math.rad(20),math.rad(-20),math.rad(-20)),0.3)
RH.C0=clerp(RH.C0,cf(1, -1, 0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1, -1, 0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false and Pocketed == true then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(2),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0)*angles(math.rad(20),math.rad(15),math.rad(10)),0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0)*angles(math.rad(20),math.rad(-15),math.rad(-10)),0.3)
RH.C0=clerp(RH.C0,cf(1, -1, 0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1, -1, 0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false and Pocketed == true then
change = 1
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0.05*math.cos(sine/10))*angles(math.rad(0 - 2.5*math.cos(sine/10)),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko*angles(math.rad(6 + math.cos(sine/10)),math.rad(0),math.rad(0)),0.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0)*angles(math.rad(-15),math.rad(-10 - math.cos(sine/10)),math.rad(-30)),0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0)*angles(math.rad(-15),math.rad(10 + math.cos(sine/10)),math.rad(30)),0.3)
RH.C0=clerp(RH.C0,cf(1, -1 + 0.05 * -math.cos(sine/10), 0)*angles(math.rad(0 - 3*math.cos(sine/10)),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1, -1 + 0.05 * -math.cos(sine/10), 0)*angles(math.rad(0 - 3*math.cos(sine/10)),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false and Pocketed == true then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(0,0,0),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(0,0,0),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0)*angles(math.rad(-15),math.rad(-10 - math.cos(sine/10)),math.rad(-30)),0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0)*angles(math.rad(-15),math.rad(10 + math.cos(sine/10)),math.rad(30)),0.3)
RH.C0=clerp(RH.C0,RHC0,.3)
LH.C0=clerp(LH.C0,LHC0,.3)
end
end
end
if #Effects>0 then
for e=1,#Effects do
if Effects[e]~=nil then
local Thing=Effects[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects,e)
end
end
end
end
end
end