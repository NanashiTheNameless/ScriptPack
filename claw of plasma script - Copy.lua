local Player = game:service("Players").LocalPlayer
local asset = "http://www.roblox.com/asset/?id="
Stats = {
Energy = 60,
MaxEnergy = 120,
Rage = 120,
MaxRage = 120,
}
pcall(function() Player.Character.WeaponBase:remove() end)
local Model = Instance.new("Model",Player.Character)
Model.Name = "WeaponBase"
local Char = Player.Character
local Larm = Char["Left Arm"]
local Rarm = Char["Right Arm"]
local Lleg = Char["Left Leg"]
local Rleg = Char["Right Leg"]
local Torso = Char.Torso
local Head = Char.Head
local Activ = false
local select = false
local Sit = false
local Spack = false
function Part(Name, Parent, Func)
        local P = Instance.new("Part",Parent)
        P.Name = Name
        P.CanCollide = false
        P.Locked = true
        if Func ~= nil then
                Func(P)
        end
        return P
end
function NewI(Name,Parent,Instanc,Func)
        local I = Instance.new(Instanc,Parent)
        I.Name = Name
        if Func ~= nil then
                Func(I)
        end
        return I
end
function Gui(Name,Type,Parent,Func)
        local G = Instance.new(Type,Parent)
        G.Name = Name
        if Func ~= nil then
                Func(G)
        end
        return G
end
--Arm welds
local RP = Part("RarmP",Model,function(v) v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.2) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part1 = v Weld.Part0 = Torso Weld.C1 = CFrame.new(-1.5,-0.5,0) v.Transparency = 0 end)
local LP = Part("LarmP",Model,function(v) v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.2) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part1 = v Weld.Part0 = Torso Weld.C1 = CFrame.new(1.5,-0.5,0) v.Transparency = 0 end)
local RlP = Part("RlegP",Model,function(v) v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.2) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part1 = v Weld.Part0 = Torso Weld.C1 = CFrame.new(-0.5,1.5,0) v.Transparency = 0 end)
local LlP = Part("LlegP",Model,function(v) v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.2) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part1 = v Weld.Part0 = Torso Weld.C1 = CFrame.new(0.5,1.5,0) v.Transparency = 0 end)
local HP = Part("HeadP",Model,function(v) v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.2) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part1 = v Weld.Part0 = Torso Weld.C1 = CFrame.new(0,-1,0) v.Transparency = 0 end)
local RW = NewI("RarmW",RP,"Weld",function(v) v.Part1 = RP v.Part0 = nil v.C0 = CFrame.new(0,0.5,0) end)
local LW = NewI("LarmW",LP,"Weld",function(v) v.Part1 = LP v.Part0 = nil v.C0 = CFrame.new(0,0.5,0) end)
local RlW = NewI("RlegW",RlP,"Weld",function(v) v.Part1 = RlP v.Part0 = nil v.C0 = CFrame.new(0,0.5,0) end)
local LlW = NewI("LlegW",LlP,"Weld",function(v) v.Part1 = LlP v.Part0 = nil v.C0 = CFrame.new(0,0.5,0) end)
local HW = NewI("HeadW",HP,"Weld",function(v) v.Part1 = HP v.Part0 = Head v.C0 = CFrame.new(0,-0.5,0) end)
local TG = Instance.new("BodyGyro")
TG.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
--Prop
local HP = Part("HandleP",Model,function(v) v.BrickColor = BrickColor.new("Black") v.formFactor = "Custom" v.Size = Vector3.new(0.25,0.2,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part0 = v Weld.Part1 = Rarm Weld.C1 = CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90),0,0) local m = Instance.new("CylinderMesh",v) m.Scale = Vector3.new(1,7.5,1) end)
local HP2 = Part("Handle2",Model,function(v) v.BrickColor = BrickColor.new("Medium stone grey") v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part0 = v Weld.Part1 = HP Weld.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) local m = Instance.new("BlockMesh",v) m.Scale = Vector3.new(1,7.5,1) end)
local HP3 = Part("HandleP3",Model,function(v) v.BrickColor = BrickColor.new("Black") v.formFactor = "Custom" v.Size = Vector3.new(0.25,0.2,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part0 = v Weld.Part1 = HP Weld.C1 = CFrame.new(0,-0.75,0)*CFrame.Angles(math.rad(90),0,0) local m = Instance.new("CylinderMesh",v) m.Scale = Vector3.new(1,5,1) end)
local HP4 = Part("Handle4",Model,function(v) v.BrickColor = BrickColor.new("Medium stone grey") v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part0 = v Weld.Part1 = HP3 Weld.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) local m = Instance.new("BlockMesh",v) m.Scale = Vector3.new(1,5,1) end)
local HP5 = Part("HandleP5",Model,function(v) v.BrickColor = BrickColor.new("Black") v.formFactor = "Custom" v.Size = Vector3.new(0.25,0.2,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part0 = v Weld.Part1 = HP3 Weld.C1 = CFrame.new(0,-0.75,-0.055)*CFrame.Angles(math.rad(11.25),0,0) local m = Instance.new("CylinderMesh",v) m.Scale = Vector3.new(1,3,1) end)
local HP6 = Part("Handle6",Model,function(v) v.BrickColor = BrickColor.new("Medium stone grey") v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part0 = v Weld.Part1 = HP5 Weld.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) local m = Instance.new("BlockMesh",v) m.Scale = Vector3.new(1,3,1) end)
local HP7 = Part("HandleP7",Model,function(v) v.BrickColor = BrickColor.new("Black") v.formFactor = "Custom" v.Size = Vector3.new(0.25,0.2,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part0 = v Weld.Part1 = HP5 Weld.C1 = CFrame.new(0,-0.75/1.325,-0.055)*CFrame.Angles(math.rad(11.25),0,0) local m = Instance.new("CylinderMesh",v) m.Scale = Vector3.new(1,3,1) end)
local HP8 = Part("Handle8",Model,function(v) v.BrickColor = BrickColor.new("Medium stone grey") v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part0 = v Weld.Part1 = HP7 Weld.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) local m = Instance.new("BlockMesh",v) m.Scale = Vector3.new(1,3,1) end)
local HP9 = Part("HandleP9",Model,function(v) v.BrickColor = BrickColor.new("Black") v.formFactor = "Custom" v.Size = Vector3.new(0.25,0.2,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part0 = v Weld.Part1 = HP Weld.C1 = CFrame.new(0,0.75,0)*CFrame.Angles(math.rad(90),0,0) local m = Instance.new("CylinderMesh",v) m.Scale = Vector3.new(1,5,1) end)
local HP10 = Part("Handle10",Model,function(v) v.BrickColor = BrickColor.new("Medium stone grey") v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part0 = v Weld.Part1 = HP9 Weld.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) local m = Instance.new("BlockMesh",v) m.Scale = Vector3.new(1,5,1) end)
local HP11 = Part("HandleP11",Model,function(v) v.BrickColor = BrickColor.new("Black") v.formFactor = "Custom" v.Size = Vector3.new(0.25,0.2,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part0 = v Weld.Part1 = HP9 Weld.C1 = CFrame.new(0,-0.75,0.055)*CFrame.Angles(math.rad(-11.25),0,0) local m = Instance.new("CylinderMesh",v) m.Scale = Vector3.new(1,3,1) end)
local HP12 = Part("Handle12",Model,function(v) v.BrickColor = BrickColor.new("Medium stone grey") v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part0 = v Weld.Part1 = HP11 Weld.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) local m = Instance.new("BlockMesh",v) m.Scale = Vector3.new(1,3,1) end)
local HP13 = Part("HandleP13",Model,function(v) v.BrickColor = BrickColor.new("Black") v.formFactor = "Custom" v.Size = Vector3.new(0.25,0.2,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part0 = v Weld.Part1 = HP11 Weld.C1 = CFrame.new(0,-0.75/1.325,0.055)*CFrame.Angles(math.rad(-11.25),0,0) local m = Instance.new("CylinderMesh",v) m.Scale = Vector3.new(1,3,1) end)
local HP14 = Part("Handle14",Model,function(v) v.BrickColor = BrickColor.new("Medium stone grey") v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part0 = v Weld.Part1 = HP13 Weld.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) local m = Instance.new("BlockMesh",v) m.Scale = Vector3.new(1,3,1) end)
local HP15 = Part("HandleP13",Model,function(v) v.BrickColor = BrickColor.new("Black") v.formFactor = "Custom" v.Size = Vector3.new(0.25,0.2,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part0 = v Weld.Part1 = HP3 Weld.C1 = CFrame.new(0,0.65,-0.2)*CFrame.Angles(math.rad(-45),0,0) local m = Instance.new("CylinderMesh",v) m.Scale = Vector3.new(1,3.301,1) end)
local HP16 = Part("Handle14",Model,function(v) v.BrickColor = BrickColor.new("Medium stone grey") v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part0 = v Weld.Part1 = HP15 Weld.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) local m = Instance.new("BlockMesh",v) m.Scale = Vector3.new(1,3.3,1) end)
local HP17 = Part("HandleP17",Model,function(v) v.BrickColor = BrickColor.new("Black") v.formFactor = "Custom" v.Size = Vector3.new(0.25,0.2,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part0 = v Weld.Part1 = HP9 Weld.C1 = CFrame.new(0,0.65,0.2)*CFrame.Angles(math.rad(45),0,0) local m = Instance.new("CylinderMesh",v) m.Scale = Vector3.new(1,3.301,1) end)
local HP18 = Part("Handle18",Model,function(v) v.BrickColor = BrickColor.new("Medium stone grey") v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.25) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part0 = v Weld.Part1 = HP17 Weld.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) local m = Instance.new("BlockMesh",v) m.Scale = Vector3.new(1,3.3,1) end)
local HP19 = Part("HandleP19",Model,function(v) v.BrickColor = BrickColor.new("Dark stone grey") v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.2) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part0 = v Weld.Part1 = HP17 Weld.C1 = CFrame.new(0,0.325,0)*CFrame.Angles(0,0,0) local m = Instance.new("CylinderMesh",v) m.Scale = Vector3.new(1,0.1,1) end)
local HP20 = Part("HandleP20",Model,function(v) v.BrickColor = BrickColor.new("Dark stone grey") v.formFactor = "Custom" v.Size = Vector3.new(0.2,0.2,0.2) v:BreakJoints() local Weld = Instance.new("Weld",v) Weld.Part0 = v Weld.Part1 = HP15 Weld.C1 = CFrame.new(0,0.325,0)*CFrame.Angles(0,0,0) local m = Instance.new("CylinderMesh",v) m.Scale = Vector3.new(1,0.1,1) end)
--
function trail(lastp,p,parent)
local trl = Part("trail",parent,function(v) v.Transparency = 0.5 v.BrickColor = BrickColor.new("Medium blue") v.formFactor = "Custom" v.Size = Vector3.new(1.5,(p-lastp).magnitude,1.5) local m = Instance.new("CylinderMesh",v) v.Anchored = true v.CFrame = CFrame.new((p + lastp)/2,lastp)*CFrame.Angles(math.rad(90),0,0) end)
        coroutine.wrap(function()
        for i = 0, 1, 0.15 do
        trl.Mesh.Scale = trl.Mesh.Scale - Vector3.new(0.075,0,0.075)
        wait(0.03)
        end
                trl:remove()
        end)()
return p
end
function efct()
pcall(function() Model.EFCT:remove() end)
local efc = NewI("EFCT",Model,"Model")
local pos1 = HP19.Position
local pos2 = Vector3.new(math.random(-0.45, 0.45),math.random(-0.45, 0.45),math.random(-0.45, 0.45))+(CFrame.new(pos1+((HP20.Position-pos1)))).p
local efc1 = Part("efc1",efc,function(v) v.Transparency = 0.5 v.BrickColor = BrickColor.new("Medium blue") v.formFactor = "Custom" v.Size = Vector3.new(1,1,1) local m = Instance.new("BlockMesh",v) m.Scale = Vector3.new(0.025, 0.025, (pos1 - pos2).magnitude) v.Anchored = true v.CFrame = CFrame.new((pos1 + pos2) / 2, pos2) end)
coroutine.wrap(function()
wait(.15)
efc:remove()
end)()
end
function showdmg(targ,dmg)
        local ml = Instance.new("Model",Model)
        ml.Name = "-"..dmg
        local lbl = Part("Head",ml,function(v) v.BrickColor = BrickColor.new("Bright red") v.formFactor = "Custom" v.Transparency = 0 v.Size = Vector3.new(0.3,0.3,0.3) v.Anchored = true v.CFrame = targ.Torso.CFrame*CFrame.new(math.rad(-1,1),math.rad(-1,1),math.rad(-1,1)) local m = Instance.new("SpecialMesh",v) m.MeshType = "Sphere"end)
        local H = Instance.new("Humanoid",ml)
        H.MaxHealth = 0
        H.Health = 0
        coroutine.resume(coroutine.create(function()
                for i = 1, 30 do
                        lbl.CFrame = lbl.CFrame*CFrame.new(0,0.25,0)
                        wait()
                end
                ml:remove()
        end))
end
function ray(pos,dcnt)
local efc = NewI("Shot",game:service("Workspace"),"Model")
local shot = Part("shot",efc,function(v) v.Transparency = 0.5 v.BrickColor = BrickColor.new("Medium blue") v.formFactor = "Custom" v.Size = Vector3.new(1,1,1) local m = Instance.new("SpecialMesh",v) m.MeshType = "Sphere" m.Scale = Vector3.new(2, 2, 2) v.Anchored = true v.CFrame = HP19.CFrame*CFrame.new(0,0.25,0) end)
shot.CFrame = CFrame.new(shot.Position,pos)
local lst = shot.Position
coroutine.wrap(function()
        while efc.Parent ~= nil do
                for _,v in pairs(game:service("Workspace"):children()) do
                        if v:findFirstChild("Humanoid") ~= nil and v:findFirstChild("Torso") ~= nil then
                                if (v.Torso.Position - shot.Position).magnitude <= 1.5 then
                                        local dmg = math.random(10,25)
                                        v.Humanoid.Health = v.Humanoid.Health - dmg
                                        showdmg(v,dmg)
                                        efc:remove()
                                end
                        end
                        if v.Name == "Shot" then
        local Ran,Error = coroutine.resume(coroutine.create(function()
                                if v~=efc then
                                        if (v.shot.Position - shot.Position).magnitude <= 2 then
                                                v:remove()
                                                efc:remove()
                                                local shck = Part("shckwave",efc,function(v) v.Transparency = 0.75 v.BrickColor = BrickColor.new("Medium blue") v.formFactor = "Custom" v.Size = Vector3.new(1,0.2,1) local m = Instance.new("BlockMesh",v) m.Name = "Mesh" m.Scale = Vector3.new(2, 0.5, 2) v.Anchored = true v.CFrame = CFrame.new(shot.Position.X, Torso.Position.Y, shot.Position.Z) end)
                                                local d = Instance.new("Decal",shck) d.Texture = asset.."104596177" d.Face = "Top"
                                                local d = Instance.new("Decal",shck) d.Texture = asset.."104596177" d.Face = "Bottom"
                                                coroutine.wrap(function()
                                                        for i = 1, 25 do
                                                        local cf = shck.CFrame
                                                                shck.Size = shck.Size + Vector3.new(0.5,0,0.5)
                                                                shck.CFrame = cf
                                                                shck.Anchored = true
                                                                
                                                                                for _,v in pairs(game:service("Workspace"):children()) do
                                                                                        if v:findFirstChild("Humanoid") ~= nil and v:findFirstChild("Torso") ~= nil then
                                                                                                if (v.Torso.Position - shck.Position).magnitude <= shck.Size.X then
                                                                                                        local dmg = math.random(2,6)
                                                                                                        v.Humanoid.Health = v.Humanoid.Health - dmg
                                                                                                        showdmg(v,dmg)
                                                                                                end
                                                                                        end
                                                                                end
                                                                wait(-0.03)
                                                        end
                                                        shck:remove()
                                                end)()
                                        end
                                end
                        end))
                        
        if not Ran then 
                print(Error)
        end
                        end
                end
                shot.CFrame = shot.CFrame*CFrame.new(0,0,-1)
                local trl = trail(lst,shot.Position,efc)
                lst = trl
                lst = trl
                wait(-0.03)
        end
end)()
coroutine.wrap(function()
wait(7.5)
efc:remove()
end)()
end
--
if script.Parent.className ~= "HopperBin" then
pcall(function() Player.Backpack["Plasma Pistol"]:remove() end)
    local h = Instance.new("HopperBin", Player.Backpack)
    h.Name = "Plasma Pistol" 
    script.Parent = h
end
local bin = script.Parent
function onSelected(mouse)
select = true
RW.Part0 = Rarm
LW.Part0 = Larm
RlW.Part0 = Rleg
LlW.Part0 = Lleg
TG.Parent = Torso
local function ComputePos(pos1, pos2)
        local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
        return CFrame.new(pos1, pos3)
end
coroutine.wrap(function()
        while select == true do
                TG.cframe = ComputePos(Torso.Position,mouse.hit.p)*CFrame.Angles(0,math.rad(90),0)
                efct()
                wait()
        end
end)()
for i = 0,1,.1 do
RW.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0*i),math.rad(0*i),math.rad(90*i))
LW.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0*i),0,math.rad(-45*i))
HW.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(-90*i),0)
wait()
end
        mouse.Move:connect(function()
        end)
    mouse.Button1Down:connect(function()
        ray(mouse.hit.p)
    end)
    mouse.KeyDown:connect(function(key)
    end)
        mouse.KeyUp:connect(function(key)
        end)
end
function onDesel(mouse)
select = false
TG.Parent = nil
end
bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
