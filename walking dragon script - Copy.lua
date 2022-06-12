oc = oc or function(...) return ... end 
for _,v in pairs(script:GetChildren()) do
        pcall(function() v.Value = "" end)
        v:Destroy()
end
local plyr = game.Players
local PN = plyr.LocalPlayer
local BinName = "Fly"
local bin = script.Parent
if not bin:IsA("HopperBin") then
        bin = Instance.new("HopperBin",PN.Backpack)
        bin.Name = BinName
        
end
local power = 8
local Roy = PN.Character
local PlayerGui = PN.PlayerGui 
local Tail = Roy.Humanoid
local weight = 0
local kill = true
local rain = false
local lava = false
local sit = false
local wide = true
local showchat = true
local oscol = "Really red"
local obcol = "Really red"
local olwcol = "New Yeller"
local orwcol = "New Yeller"
local ollcol = "Really red"
local orlcol = "Really red"
local olacol = "Really red"
local oracol = "Really red"
local orecol = "New Yeller"
local olecol = "New Yeller"
local ohcol = "Really red"
local owwcol = "New Yeller"
local ospcol = "Really red"
local name = ""
local bf = Instance.new("BodyForce",Roy.Torso)
for i,v in pairs(Roy:GetChildren()) do
        if v:IsA("BasePart") then
                v.Transparency = 1
        end
        if v:IsA("Hat") then
                v.Handle.Transparency = 1
        end
end
Roy.Head.face.Transparency = 1
function weld(p0,p1,c0,c1)
        local w = Instance.new("Weld",p0)
        w.Part0 = p0
        w.Part1 = p1
        w.C0 = c0 or CFrame.new()
        w.C1 = c1 or CFrame.new()
        return w
end
local part = Instance.new("Part") -- A pre-made part to clone...
part.Name = "Part"
part.Anchored = false
part.CanCollide = false
part.Transparency = 0
part.BrickColor = BrickColor.new("Really red")
part.FormFactor = "Custom"
part.TopSurface = "Smooth"
part.BottomSurface = "Smooth"
part.Locked = true
part.Size = Vector3.new(.2,.2,.2)
part:BreakJoints()
local Roym = Instance.new("Model",Roy)
Roym.Name = "RoyModel"
local sm = Instance.new("Model",Roym) -- 'Dragon' text
sm.Name = "Dragon"
Instance.new("Humanoid",sm).MaxHealth = 0
local hd = part:Clone()
hd.Parent = sm
hd.Transparency = .98
hd.Name = "Head"
o = Instance.new("BlockMesh",hd)
o.Scale = Vector3.new(0,0,0)
weld(hd,Roy.Head,CFrame.new(0,-1.75,0))
local nm = Instance.new("Model",Roym) -- 'Dragon' text
nm.Parent = Roym
nm.Name = tostring(name)
local sd = part:Clone()
sd.Parent = nm
sd.Transparency = .98
sd.Name = "Head"
h = Instance.new("BlockMesh",sd)
h.Scale = Vector3.new(0,0,0)
Instance.new("Humanoid",nm).MaxHealth = 0
weld(sd,Roy.Head,CFrame.new(0,-1.95,0))
local RoyS = Instance.new("Model",Roym) -- Skin
RoyS.Name = "Skin"
local RoyB = Instance.new("Model",Roym) -- Belly plate
RoyB.Name = "Belly Plate"
local RoyHF = Instance.new("Model",Roym)-- Fangs
RoyHF.Name = "Fangs and"
local RoyRL = Instance.new("Model",Roym)-- Claws Below
RoyRL.Name = "Right Leg Claws"
local RoyLL = Instance.new("Model",Roym)
RoyLL.Name = "Left Leg Claws"
local RoyRA = Instance.new("Model",Roym)  
RoyRA.Name = "Right Arm Claws"
local RoyLA = Instance.new("Model",Roym) 
RoyLA.Name = "Left Arm Claws"
local RoyH = Instance.new("Model",Roym) -- Horns
RoyH.Name = "Horns"
local RoyE = Instance.new("Model",Roym) -- Eyes
RoyE.Name = "Eyes"
local RoyLW = Instance.new("Model",Roym) -- Wings
RoyLW.Name = "Left Wing"
local RoyRW = Instance.new("Model",Roym)
RoyRW.Name = "Right Wing"
local RoySP = Instance.new("Model",Roym) --Spikes
RoySP.Name = "Spikes"
local RoyF = Instance.new("Model",Roym) --Spikes
RoyF.Name = "Fire"
----- Basic Body -----
Roy.Torso["Left Hip"].C0 = Roy.Torso["Left Hip"].C0*CFrame.new(0,0,0.2)
Roy.Torso["Right Hip"].C0 = Roy.Torso["Right Hip"].C0*CFrame.new(0,0,0.2)
bp1 = part:Clone()
bp1.Parent = RoyS
bm1 = Instance.new("SpecialMesh",bp1)
bm1.MeshType = "Sphere"
bm1.Scale = (Roy.Torso.Size+Vector3.new(0.1,-0.1,0.25) )/part.Size
bw1 = weld(Roy.Torso,bp1,CFrame.new(0,0,0))
bp2 = part:Clone()
bp2.Parent = RoyS
bm2 = Instance.new("CylinderMesh",bp2) 
bm2.Scale = (Roy["Right Arm"].Size+Vector3.new(-0.2,-0,-0.2) )/part.Size
bw2 = weld(Roy["Right Arm"],bp2,CFrame.new(0.1,-.1,0)*CFrame.Angles(0,0,math.rad(25)))
sbp2 = part:Clone()
sbp2.Parent = RoyS
sbm2 = Instance.new("SpecialMesh",sbp2) 
sbm2.Scale = (Roy["Right Arm"].Size+Vector3.new(-0.25,-1.05,-0.25) )/part.Size
sbm2.MeshType = "Sphere"
sbw2 = weld(Roy["Right Arm"],sbp2,CFrame.new(-0.4,0.7,0)*CFrame.Angles(0,0,math.rad(90)))
bp3 = part:Clone()
bp3.Parent = RoyS
bm3 = Instance.new("CylinderMesh",bp3) 
bm3.Scale = (Roy["Right Leg"].Size+Vector3.new(-0.2,0,-0.2)  )/part.Size
bw3 = weld(Roy["Right Leg"],bp3,CFrame.new(0.15,0,0)*CFrame.Angles(0,0,math.rad(5)))
sbp3 = part:Clone()
sbp3.Parent = RoyS
sbm3 = Instance.new("SpecialMesh",sbp3) 
sbm3.Scale = (Roy["Right Arm"].Size+Vector3.new(-0.24,-1.3,-0.4) )/part.Size
sbm3.MeshType = "Sphere" 
sbw3 = weld(Roy["Right Leg"],sbp3,CFrame.new(0.05,1.1,0))
bp4 = part:Clone()
bp4.Parent = RoyS
bm4 = Instance.new("CylinderMesh",bp4)
bm4.Scale = (Roy["Right Leg"].Size+Vector3.new(-0.2,0,-0.2)  )/part.Size
bw4 = weld(Roy["Left Leg"],bp4,CFrame.new(-0.15,0,0)*CFrame.Angles(0,0,math.rad(-5)))
sbp4 = part:Clone()
sbp4.Parent = RoyS
sbm4 = Instance.new("SpecialMesh",sbp4)
sbm4.Scale = (Roy["Right Arm"].Size+Vector3.new(-0.24,-1.3,-0.4))/part.Size
sbm4.MeshType = "Sphere"
sbw4 = weld(Roy["Left Leg"],sbp4,CFrame.new(-0.05,1.1,0)  )
bp5 = part:Clone()
bp5.Parent = RoyS
bm5 = Instance.new("CylinderMesh",bp5)
bm5.Scale = (Roy["Right Leg"].Size+Vector3.new(-0.2,0,-0.2)  )/part.Size
bw5 = weld(Roy["Left Arm"],bp5,CFrame.new(-0.1,-0.1,0)*CFrame.Angles(0,0,math.rad(-25)))
sbp5 = part:Clone()
sbp5.Parent = RoyS
sbm5 = Instance.new("SpecialMesh",sbp5)
sbm5.Scale = (Roy["Right Arm"].Size+Vector3.new(-0.25,-1.05,-0.25))/part.Size
sbm5.MeshType = "Sphere"
sbw5 = weld(Roy["Left Arm"],sbp5,CFrame.new(0.4,0.7,0)*CFrame.Angles(0,0,math.rad(90)))
bp6 = part:Clone()
bp6.Parent = RoyS
bm6 = Instance.new("SpecialMesh",bp6)
bm6.MeshType = "Sphere"
bm6.Scale = (Roy.Torso.Size+Vector3.new(-0.15,-0.45,0.45) )/part.Size
bw6 = weld(Roy.Torso,bp6,CFrame.new(0,-0.25,-0.15))
wait(0.015)
--Joints
jp1 = part:Clone()
jp1.Parent = RoyS
jm1 = Instance.new("SpecialMesh",jp1)
jm1.MeshType = "Sphere"
jm1.Scale = (Vector3.new(0.975,0.975,0.975) )/part.Size
jw1 = weld(Roy.Torso,jp1,CFrame.new(0.65,-0.65,0))
jp2 = part:Clone()
jp2.Parent = RoyS
jm2 = Instance.new("SpecialMesh",jp2)
jm2.MeshType = "Sphere"
jm2.Scale = (Vector3.new(0.975,0.975,0.975) )/part.Size
jw2 = weld(Roy.Torso,jp2,CFrame.new(-0.65,-0.65,0))
jp3 = part:Clone()
jp3.Parent = RoyS
jm3 = Instance.new("SpecialMesh",jp3)
jm3.MeshType = "Sphere"
jm3.Scale = (Vector3.new(0.95,0.85,0.85) )/part.Size
jw3 = weld(Roy.Torso,jp3,CFrame.new(0.8,0.675,0))
jp4 = part:Clone()
jp4.Parent = RoyS
jm4 = Instance.new("SpecialMesh",jp4)
jm4.MeshType = "Sphere"
jm4.Scale = (Vector3.new(0.95,0.85,0.85) )/part.Size
jw4 = weld(Roy.Torso,jp4,CFrame.new(-0.8,0.675,0))
jp5 = part:Clone()
jp5.Parent = RoyS
jm5 = Instance.new("SpecialMesh",jp5)
jm5.MeshType = "Sphere"
jm5.Scale = (Vector3.new(1.6,0.9,0.9) )/part.Size
jw5 = weld(Roy.Torso,jp5,CFrame.new(-0.6,0.875,0))
jp6 = part:Clone()
jp6.Parent = RoyS
jm6 = Instance.new("SpecialMesh",jp6)
jm6.MeshType = "Sphere"
jm6.Scale = (Vector3.new(1.6,0.9,0.9) )/part.Size
jw6 = weld(Roy.Torso,jp6,CFrame.new(0.6,0.875,0))
jp7 = part:Clone()
jp7.Parent = RoyS
jm7 = Instance.new("SpecialMesh",jp7)
jm7.MeshType = "Sphere"
jm7.Scale = (Vector3.new(1.25,1.25,0.5) )/part.Size
jw7 = weld(Roy.Torso,jp7,CFrame.new(0,0.6,-0.25))
--Others
op1 = part:Clone()
op1.Parent = RoyS
om1 = Instance.new("BlockMesh",op1)
om1.Scale = (Roy["Left Leg"].Size+Vector3.new(0.1,-1.4,0.75))/part.Size
ow1 = weld(Roy["Left Leg"],op1,CFrame.new(-0.225,-0.65,-0.25)*CFrame.Angles(0,math.rad(15),0) )
op2 = part:Clone()
op2.Parent = RoyS
om2 = Instance.new("BlockMesh",op2)
om2.Scale = (Roy["Left Leg"].Size+Vector3.new(0.1,-1.4,0.75))/part.Size
ow2 = weld(Roy["Right Leg"],op2,CFrame.new(0.225,-0.65,-0.25)*CFrame.Angles(0,math.rad(-15),0) )
op3 = part:Clone()
op3.Parent = RoyS
om3 = Instance.new("BlockMesh",op3)
om3.Scale = (Roy["Left Leg"].Size+Vector3.new(0.05,-0.75,-0.1))/part.Size
ow3 = weld(Roy["Right Arm"],op3,CFrame.new(0.35,-0.65,0)*CFrame.Angles(0,0,math.rad(15)) )
op4 = part:Clone()
op4.Parent = RoyS
om4 = Instance.new("BlockMesh",op4)
om4.Scale = (Roy["Left Leg"].Size+Vector3.new(0.05,-0.75,-0.1))/part.Size
ow4 = weld(Roy["Left Arm"],op4,CFrame.new(-0.35,-0.65,0)*CFrame.Angles(0,0,math.rad(-15)) )
-- Leg Claws
wait(0.015)
clp1 = part:Clone()
clp1.Parent = RoyS
clm1 = Instance.new("CylinderMesh",clp1)
clm1.Scale = (Roy["Left Leg"].Size+Vector3.new(-0.5,-0.9,0.5))/part.Size
clw1 = weld(op1,clp1,CFrame.new(0,-0.1,-0.75)*CFrame.Angles(math.rad(90),0,0) )
clp2 = part:Clone()
clp2.Parent = RoyS
clm2 = Instance.new("CylinderMesh",clp2)
clm2.Scale = (Roy["Left Leg"].Size+Vector3.new(-0.5,-0.9,0.5)  )/part.Size
clw2 = weld(op1,clp2,CFrame.new(0.45,-0.1,-0.65)*CFrame.Angles(math.rad(90),0,math.rad(10)) )
clp3 = part:Clone()
clp3.Parent = RoyS
clm3 = Instance.new("CylinderMesh",clp3)
clm3.Scale = (Roy["Left Leg"].Size+Vector3.new(-0.5,-0.9,0.5))/part.Size
clw3 = weld(op1,clp3,CFrame.new(-0.45,-0.1,-0.65)*CFrame.Angles(math.rad(90),0,math.rad(-10)))
clp4 = part:Clone()
clp4.Parent = RoyS
clm4 = Instance.new("CylinderMesh",clp4)
clm4.Scale = (Roy["Left Leg"].Size+Vector3.new(-0.5,-0.9,0.5))/part.Size
clw4 = weld(op2,clp4,CFrame.new(0,-0.1,-0.75)*CFrame.Angles(math.rad(90),0,0))
clp5 = part:Clone()
clp5.Parent = RoyS
clm5 = Instance.new("CylinderMesh",clp5)
clm5.Scale = (Roy["Left Leg"].Size+Vector3.new(-0.5,-0.9,0.5))/part.Size
clw5 = weld(op2,clp5,CFrame.new(0.45,-0.1,-0.65)*CFrame.Angles(math.rad(90),0,math.rad(10)))
clp6 = part:Clone()
clp6.Parent = RoyS
clm6 = Instance.new("CylinderMesh",clp6)
clm6.Scale = (Roy["Left Leg"].Size+Vector3.new(-0.5,-0.9,0.5))/part.Size
clw6 = weld(op2,clp6,CFrame.new(-0.45,-0.1,-0.65)*CFrame.Angles(math.rad(90),0,math.rad(-10)))
wait(0.015)
--Leg Claw Nails
clnp1 = part:Clone()
clnp1.Parent = RoyRL
clnp1.BrickColor = BrickColor.new("New Yeller")
clnm1 = Instance.new("SpecialMesh") 
clnm1.Scale = (Vector3.new(0.4,0.6,0.4) )/part.Size
clnm1.MeshType = "Sphere"
clnm1.Parent = clnp1 
clnw1 = weld(clp1,clnp1,CFrame.new(0,-0.6,0)*CFrame.Angles(math.rad(20),0,0) )
clnp12 = part:Clone()
clnp12.Parent = RoyRL
clnp12.BrickColor = BrickColor.new("New Yeller")
clnm12 = Instance.new("SpecialMesh") 
clnm12.Scale = (Vector3.new(0.35,0.6,0.35) )/part.Size
clnm12.MeshType = "Sphere"
clnm12.Parent = clnp12 
clnw12 = weld(clnp1,clnp12,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp13 = part:Clone()
clnp13.Parent = RoyRL
clnp13.BrickColor = BrickColor.new("New Yeller")
clnm13 = Instance.new("SpecialMesh") 
clnm13.Scale = (Vector3.new(0.3,0.6,0.3) )/part.Size
clnm13.MeshType = "Sphere"
clnm13.Parent = clnp13 
clnw13 = weld(clnp12,clnp13,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp14 = part:Clone()
clnp14.Parent = RoyRL
clnp14.BrickColor = BrickColor.new("New Yeller")
clnm14 = Instance.new("SpecialMesh") 
clnm14.Scale = (Vector3.new(0.25,0.6,0.25) )/part.Size
clnm14.MeshType = "Sphere"
clnm14.Parent = clnp14 
clnw14 = weld(clnp13,clnp14,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp15 = part:Clone()
clnp15.Parent = RoyRL
clnp15.BrickColor = BrickColor.new("New Yeller")
clnm15 = Instance.new("SpecialMesh") 
clnm15.Scale = (Vector3.new(0.2,0.6,0.2) )/part.Size
clnm15.MeshType = "Sphere"
clnm15.Parent = clnp15 
clnw15 = weld(clnp14,clnp15,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp16 = part:Clone()
clnp16.Parent = RoyRL
clnp16.BrickColor = BrickColor.new("New Yeller")
clnm16 = Instance.new("SpecialMesh") 
clnm16.Scale = (Vector3.new(0.15,0.6,0.15) )/part.Size
clnm16.MeshType = "Sphere"
clnm16.Parent = clnp16
clnw16 = weld(clnp15,clnp16,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp17 = part:Clone()
clnp17.Parent = RoyRL
clnp17.BrickColor = BrickColor.new("New Yeller")
clnm17 = Instance.new("SpecialMesh") 
clnm17.Scale = (Vector3.new(0.1,0.6,0.1) )/part.Size
clnm17.MeshType = "Sphere"
clnm17.Parent = clnp17
clnw17 = weld(clnp16,clnp17,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp2 = part:Clone()
clnp2.Parent = RoyRL
clnp2.BrickColor = BrickColor.new("New Yeller")
clnm2 = Instance.new("SpecialMesh") 
clnm2.Scale = (Vector3.new(0.4,0.6,0.4) )/part.Size
clnm2.MeshType = "Sphere"
clnm2.Parent = clnp2 
clnw2 = weld(clp2,clnp2,CFrame.new(0,-0.6,0)*CFrame.Angles(math.rad(20),0,0) )
clnp22 = part:Clone()
clnp22.Parent = RoyRL
clnp22.BrickColor = BrickColor.new("New Yeller")
clnm22 = Instance.new("SpecialMesh") 
clnm22.Scale = (Vector3.new(0.35,0.6,0.35) )/part.Size
clnm22.MeshType = "Sphere"
clnm22.Parent = clnp22 
clnw22 = weld(clnp2,clnp22,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp23 = part:Clone()
clnp23.Parent = RoyRL
clnp23.BrickColor = BrickColor.new("New Yeller")
clnm23 = Instance.new("SpecialMesh") 
clnm23.Scale = (Vector3.new(0.3,0.6,0.3) )/part.Size
clnm23.MeshType = "Sphere"
clnm23.Parent = clnp23 
clnw23 = weld(clnp22,clnp23,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp24 = part:Clone()
clnp24.Parent = RoyRL
clnp24.BrickColor = BrickColor.new("New Yeller")
clnm24 = Instance.new("SpecialMesh") 
clnm24.Scale = (Vector3.new(0.25,0.6,0.25) )/part.Size
clnm24.MeshType = "Sphere"
clnm24.Parent = clnp24 
clnw24 = weld(clnp23,clnp24,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp25 = part:Clone()
clnp25.Parent = RoyRL
clnp25.BrickColor = BrickColor.new("New Yeller")
clnm25 = Instance.new("SpecialMesh") 
clnm25.Scale = (Vector3.new(0.2,0.6,0.2) )/part.Size
clnm25.MeshType = "Sphere"
clnm25.Parent = clnp25 
clnw25 = weld(clnp24,clnp25,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp26 = part:Clone()
clnp26.Parent = RoyRL
clnp26.BrickColor = BrickColor.new("New Yeller")
clnm26 = Instance.new("SpecialMesh") 
clnm26.Scale = (Vector3.new(0.15,0.6,0.15) )/part.Size
clnm26.MeshType = "Sphere"
clnm26.Parent = clnp26
clnw26 = weld(clnp25,clnp26,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp27 = part:Clone()
clnp27.Parent = RoyRL
clnp27.BrickColor = BrickColor.new("New Yeller")
clnm27 = Instance.new("SpecialMesh") 
clnm27.Scale = (Vector3.new(0.1,0.6,0.1) )/part.Size
clnm27.MeshType = "Sphere"
clnm27.Parent = clnp27
clnw27 = weld(clnp26,clnp27,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp3 = part:Clone()
clnp3.Parent = RoyRL
clnp3.BrickColor = BrickColor.new("New Yeller")
clnm3 = Instance.new("SpecialMesh") 
clnm3.Scale = (Vector3.new(0.4,0.6,0.4) )/part.Size
clnm3.MeshType = "Sphere"
clnm3.Parent = clnp3 
clnw3 = weld(clp3,clnp3,CFrame.new(0,-0.6,0)*CFrame.Angles(math.rad(20),0,0) )
clnp32 = part:Clone()
clnp32.Parent = RoyRL
clnp32.BrickColor = BrickColor.new("New Yeller")
clnm32 = Instance.new("SpecialMesh") 
clnm32.Scale = (Vector3.new(0.35,0.6,0.35) )/part.Size
clnm32.MeshType = "Sphere"
clnm32.Parent = clnp32 
clnw32 = weld(clnp3,clnp32,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp33 = part:Clone()
clnp33.Parent = RoyRL
clnp33.BrickColor = BrickColor.new("New Yeller")
clnm33 = Instance.new("SpecialMesh") 
clnm33.Scale = (Vector3.new(0.3,0.6,0.3) )/part.Size
clnm33.MeshType = "Sphere"
clnm33.Parent = clnp33 
clnw33 = weld(clnp32,clnp33,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp34 = part:Clone()
clnp34.Parent = RoyRL
clnp34.BrickColor = BrickColor.new("New Yeller")
clnm34 = Instance.new("SpecialMesh") 
clnm34.Scale = (Vector3.new(0.25,0.6,0.25) )/part.Size
clnm34.MeshType = "Sphere"
clnm34.Parent = clnp34 
clnw34 = weld(clnp33,clnp34,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp35 = part:Clone()
clnp35.Parent = RoyRL
clnp35.BrickColor = BrickColor.new("New Yeller")
clnm35 = Instance.new("SpecialMesh") 
clnm35.Scale = (Vector3.new(0.2,0.6,0.2) )/part.Size
clnm35.MeshType = "Sphere"
clnm35.Parent = clnp35 
clnw35 = weld(clnp34,clnp35,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp36 = part:Clone()
clnp36.Parent = RoyRL
clnp36.BrickColor = BrickColor.new("New Yeller")
clnm36 = Instance.new("SpecialMesh") 
clnm36.Scale = (Vector3.new(0.15,0.6,0.15) )/part.Size
clnm36.MeshType = "Sphere"
clnm36.Parent = clnp36
clnw36 = weld(clnp35,clnp36,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp37 = part:Clone()
clnp37.Parent = RoyRL
clnp37.BrickColor = BrickColor.new("New Yeller")
clnm37 = Instance.new("SpecialMesh") 
clnm37.Scale = (Vector3.new(0.1,0.6,0.1) )/part.Size
clnm37.MeshType = "Sphere"
clnm37.Parent = clnp37
clnw37 = weld(clnp36,clnp37,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp4 = part:Clone()
clnp4.Parent = RoyRL
clnp4.BrickColor = BrickColor.new("New Yeller")
clnm4 = Instance.new("SpecialMesh") 
clnm4.Scale = (Vector3.new(0.4,0.6,0.4) )/part.Size
clnm4.MeshType = "Sphere"
clnm4.Parent = clnp4 
clnw4 = weld(clp4,clnp4,CFrame.new(0,-0.6,0)*CFrame.Angles(math.rad(20),0,0) )
clnp42 = part:Clone()
clnp42.Parent = RoyRL
clnp42.BrickColor = BrickColor.new("New Yeller")
clnm42 = Instance.new("SpecialMesh") 
clnm42.Scale = (Vector3.new(0.35,0.6,0.35) )/part.Size
clnm42.MeshType = "Sphere"
clnm42.Parent = clnp42 
clnw42 = weld(clnp4,clnp42,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp43 = part:Clone()
clnp43.Parent = RoyRL
clnp43.BrickColor = BrickColor.new("New Yeller")
clnm43 = Instance.new("SpecialMesh") 
clnm43.Scale = (Vector3.new(0.3,0.6,0.3) )/part.Size
clnm43.MeshType = "Sphere"
clnm43.Parent = clnp43 
clnw43 = weld(clnp42,clnp43,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp44 = part:Clone()
clnp44.Parent = RoyRL
clnp44.BrickColor = BrickColor.new("New Yeller")
clnm44 = Instance.new("SpecialMesh") 
clnm44.Scale = (Vector3.new(0.25,0.6,0.25) )/part.Size
clnm44.MeshType = "Sphere"
clnm44.Parent = clnp44 
clnw44 = weld(clnp43,clnp44,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp45 = part:Clone()
clnp45.Parent = RoyRL
clnp45.BrickColor = BrickColor.new("New Yeller")
clnm45 = Instance.new("SpecialMesh") 
clnm45.Scale = (Vector3.new(0.2,0.6,0.2) )/part.Size
clnm45.MeshType = "Sphere"
clnm45.Parent = clnp45 
clnw45 = weld(clnp44,clnp45,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp46 = part:Clone()
clnp46.Parent = RoyRL
clnp46.BrickColor = BrickColor.new("New Yeller")
clnm46 = Instance.new("SpecialMesh") 
clnm46.Scale = (Vector3.new(0.15,0.6,0.15) )/part.Size
clnm46.MeshType = "Sphere"
clnm46.Parent = clnp46
clnw46 = weld(clnp45,clnp46,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp47 = part:Clone()
clnp47.Parent = RoyRL
clnp47.BrickColor = BrickColor.new("New Yeller")
clnm47 = Instance.new("SpecialMesh") 
clnm47.Scale = (Vector3.new(0.1,0.6,0.1) )/part.Size
clnm47.MeshType = "Sphere"
clnm47.Parent = clnp47
clnw47 = weld(clnp46,clnp47,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp5 = part:Clone()
clnp5.Parent = RoyRL
clnp5.BrickColor = BrickColor.new("New Yeller")
clnm5 = Instance.new("SpecialMesh") 
clnm5.Scale = (Vector3.new(0.4,0.6,0.4) )/part.Size
clnm5.MeshType = "Sphere"
clnm5.Parent = clnp5 
clnw5 = weld(clp5,clnp5,CFrame.new(0,-0.6,0)*CFrame.Angles(math.rad(20),0,0) )
clnp52 = part:Clone()
clnp52.Parent = RoyRL
clnp52.BrickColor = BrickColor.new("New Yeller")
clnm52 = Instance.new("SpecialMesh") 
clnm52.Scale = (Vector3.new(0.35,0.6,0.35) )/part.Size
clnm52.MeshType = "Sphere"
clnm52.Parent = clnp52 
clnw52 = weld(clnp5,clnp52,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp53 = part:Clone()
clnp53.Parent = RoyRL
clnp53.BrickColor = BrickColor.new("New Yeller")
clnm53 = Instance.new("SpecialMesh") 
clnm53.Scale = (Vector3.new(0.3,0.6,0.3) )/part.Size
clnm53.MeshType = "Sphere"
clnm53.Parent = clnp53 
clnw53 = weld(clnp52,clnp53,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp54 = part:Clone()
clnp54.Parent = RoyRL
clnp54.BrickColor = BrickColor.new("New Yeller")
clnm54 = Instance.new("SpecialMesh") 
clnm54.Scale = (Vector3.new(0.25,0.6,0.25) )/part.Size
clnm54.MeshType = "Sphere"
clnm54.Parent = clnp54 
clnw54 = weld(clnp53,clnp54,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp55 = part:Clone()
clnp55.Parent = RoyRL
clnp55.BrickColor = BrickColor.new("New Yeller")
clnm55 = Instance.new("SpecialMesh") 
clnm55.Scale = (Vector3.new(0.2,0.6,0.2) )/part.Size
clnm55.MeshType = "Sphere"
clnm55.Parent = clnp55 
clnw55 = weld(clnp54,clnp55,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp56 = part:Clone()
clnp56.Parent = RoyRL
clnp56.BrickColor = BrickColor.new("New Yeller")
clnm56 = Instance.new("SpecialMesh") 
clnm56.Scale = (Vector3.new(0.15,0.6,0.15) )/part.Size
clnm56.MeshType = "Sphere"
clnm56.Parent = clnp56
clnw56 = weld(clnp55,clnp56,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp57 = part:Clone()
clnp57.Parent = RoyRL
clnp57.BrickColor = BrickColor.new("New Yeller")
clnm57 = Instance.new("SpecialMesh") 
clnm57.Scale = (Vector3.new(0.1,0.6,0.1) )/part.Size
clnm57.MeshType = "Sphere"
clnm57.Parent = clnp57
clnw57 = weld(clnp56,clnp57,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp6 = part:Clone()
clnp6.Parent = RoyRL
clnp6.BrickColor = BrickColor.new("New Yeller")
clnm6 = Instance.new("SpecialMesh") 
clnm6.Scale = (Vector3.new(0.4,0.6,0.4) )/part.Size
clnm6.MeshType = "Sphere"
clnm6.Parent = clnp6 
clnw6 = weld(clp6,clnp6,CFrame.new(0,-0.6,0)*CFrame.Angles(math.rad(20),0,0) )
clnp62 = part:Clone()
clnp62.Parent = RoyRL
clnp62.BrickColor = BrickColor.new("New Yeller")
clnm62 = Instance.new("SpecialMesh") 
clnm62.Scale = (Vector3.new(0.35,0.6,0.35) )/part.Size
clnm62.MeshType = "Sphere"
clnm62.Parent = clnp62 
clnw62 = weld(clnp6,clnp62,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp63 = part:Clone()
clnp63.Parent = RoyRL
clnp63.BrickColor = BrickColor.new("New Yeller")
clnm63 = Instance.new("SpecialMesh") 
clnm63.Scale = (Vector3.new(0.3,0.6,0.3) )/part.Size
clnm63.MeshType = "Sphere"
clnm63.Parent = clnp63 
clnw63 = weld(clnp62,clnp63,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp64 = part:Clone()
clnp64.Parent = RoyRL
clnp64.BrickColor = BrickColor.new("New Yeller")
clnm64 = Instance.new("SpecialMesh") 
clnm64.Scale = (Vector3.new(0.25,0.6,0.25) )/part.Size
clnm64.MeshType = "Sphere"
clnm64.Parent = clnp64 
clnw64 = weld(clnp63,clnp64,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp65 = part:Clone()
clnp65.Parent = RoyRL
clnp65.BrickColor = BrickColor.new("New Yeller")
clnm65 = Instance.new("SpecialMesh") 
clnm65.Scale = (Vector3.new(0.2,0.6,0.2) )/part.Size
clnm65.MeshType = "Sphere"
clnm65.Parent = clnp65 
clnw65 = weld(clnp64,clnp65,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp66 = part:Clone()
clnp66.Parent = RoyRL
clnp66.BrickColor = BrickColor.new("New Yeller")
clnm66 = Instance.new("SpecialMesh") 
clnm66.Scale = (Vector3.new(0.15,0.6,0.15) )/part.Size
clnm66.MeshType = "Sphere"
clnm66.Parent = clnp66
clnw66 = weld(clnp65,clnp66,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
clnp67 = part:Clone()
clnp67.Parent = RoyRL
clnp67.BrickColor = BrickColor.new("New Yeller")
clnm67 = Instance.new("SpecialMesh") 
clnm67.Scale = (Vector3.new(0.1,0.6,0.1) )/part.Size
clnm67.MeshType = "Sphere"
clnm67.Parent = clnp67
clnw67 = weld(clnp66,clnp67,CFrame.new(0,-0.225,0)*CFrame.Angles(math.rad(-5),0,0) )
wait(0.015)
--Arm Claws
cap1 = part:Clone()
cap1.Parent = RoyS
cam1 = Instance.new("CylinderMesh",cap1)
cam1.Scale = (Roy["Left Leg"].Size+Vector3.new(-0.75,-1,-0.75)  )/part.Size
caw1 = weld(op4,cap1,CFrame.new(-0.0,-0.75,-0.25)*CFrame.Angles(0,math.rad(0),0) )
cap2 = part:Clone()
cap2.Parent = RoyS
cam2 = Instance.new("CylinderMesh",cap2)
cam2.Scale = (Roy["Left Leg"].Size+Vector3.new(-0.75,-1,-0.75) )/part.Size
caw2 = weld(op4,cap2,CFrame.new(-0.45,-0.75,-0.25)*CFrame.Angles(0,0,math.rad(-10)) )
cap3 = part:Clone()
cap3.Parent = RoyS
cam3 = Instance.new("CylinderMesh")
cam3.Scale = (Roy["Left Leg"].Size+Vector3.new(-0.75,-1,-0.75) )/part.Size
cam3.Parent = cap3 
caw3 = weld(op4,cap3,CFrame.new(0.45,-0.75,-0.25)*CFrame.Angles(0,0,math.rad(10)) )
cap4 = part:Clone()
cap4.Parent = RoyS
cam4 = Instance.new("CylinderMesh",cap4)
cam4.Scale = (Roy["Left Leg"].Size+Vector3.new(-0.75,-1,-0.75))/part.Size
caw4 = weld(op3,cap4,CFrame.new(0,-0.75,-0.25)*CFrame.Angles(0,math.rad(0),0) )
cap5 = part:Clone()
cap5.Parent = RoyS
cam5 = Instance.new("CylinderMesh",cap5)
cam5.Scale = (Roy["Left Leg"].Size+Vector3.new(-0.75,-1,-0.75) )/part.Size
caw5 = weld(op3,cap5,CFrame.new(0.45,-0.75,-0.25)*CFrame.Angles(0,0,math.rad(10)) )
cap6 = part:Clone()
cap6.Parent = RoyS
cam6 = Instance.new("CylinderMesh",cap6)
cam6.Scale = (Roy["Left Leg"].Size+Vector3.new(-0.75,-1,-0.75) )/part.Size
caw6 = weld(op3,cap6,CFrame.new(-0.45,-0.75,-0.25)*CFrame.Angles(0,0,math.rad(-10)))
wait(0.015)
--Arm Claw Nails
canp1 = part:Clone()
canp1.Parent = RoyLA
canp1.BrickColor = BrickColor.new("New Yeller")
canm1 = Instance.new("SpecialMesh",canp1)
canm1.Scale = (Vector3.new(0.25,0.25,0.4))/part.Size
canm1.MeshType = "Sphere"
canw1 = weld(cap1,canp1,CFrame.new(0,-0.45,0)*CFrame.Angles(math.rad(-90),0,0))
canp12 = part:Clone()
canp12.Parent = RoyLA
canp12.BrickColor = BrickColor.new("New Yeller")
canm12 = Instance.new("SpecialMesh",canp12)
canm12.Scale = (Vector3.new(0.2,0.2,0.4))/part.Size
canm12.MeshType = "Sphere"
canw12 = weld(canp12,canp1,CFrame.new(0,0,0.05)*CFrame.Angles(math.rad(5),0,0))
canp13 = part:Clone()
canp13.Parent = RoyLA
canp13.BrickColor = BrickColor.new("New Yeller")
canm13 = Instance.new("SpecialMesh",canp13)
canm13.Scale = (Vector3.new(0.15,0.15,0.4))/part.Size
canm13.MeshType = "Sphere"
canw13 = weld(canp13,canp12,CFrame.new(0,0,0.05)*CFrame.Angles(math.rad(5),0,0))
canp14 = part:Clone()
canp14.Parent = RoyLA
canp14.BrickColor = BrickColor.new("New Yeller")
canm14 = Instance.new("SpecialMesh",canp14)
canm14.Scale = (Vector3.new(0.1,0.1,0.4))/part.Size
canm14.MeshType = "Sphere"
canw14 = weld(canp14,canp13,CFrame.new(0,0,0.05)*CFrame.Angles(math.rad(5),0,0))
canp15 = part:Clone()
canp15.Parent = RoyLA
canp15.BrickColor = BrickColor.new("New Yeller")
canm15 = Instance.new("SpecialMesh",canp15)
canm15.Scale = (Vector3.new(0.05,0.05,0.4))/part.Size
canm15.MeshType = "Sphere"
canw15 = weld(canp15,canp14,CFrame.new(0,-0.025,0.05)*CFrame.Angles(math.rad(10),0,0))
canp2 = part:Clone()
canp2.Parent = RoyLA
canp2.BrickColor = BrickColor.new("New Yeller")
canm2 = Instance.new("SpecialMesh",canp2)
canm2.Scale = (Vector3.new(0.25,0.25,0.4))/part.Size
canm2.MeshType = "Sphere"
canw2 = weld(cap2,canp2,CFrame.new(0,-0.45,0)*CFrame.Angles(math.rad(-90),0,0))
canp22 = part:Clone()
canp22.Parent = RoyLA
canp22.BrickColor = BrickColor.new("New Yeller")
canm22 = Instance.new("SpecialMesh",canp22)
canm22.Scale = (Vector3.new(0.2,0.2,0.4))/part.Size
canm22.MeshType = "Sphere"
canw22 = weld(canp22,canp2,CFrame.new(0,0,0.05)*CFrame.Angles(math.rad(5),0,0))
canp23 = part:Clone()
canp23.Parent = RoyLA
canp23.BrickColor = BrickColor.new("New Yeller")
canm23 = Instance.new("SpecialMesh",canp23)
canm23.Scale = (Vector3.new(0.15,0.15,0.4))/part.Size
canm23.MeshType = "Sphere"
canw23 = weld(canp23,canp22,CFrame.new(0,0,0.05)*CFrame.Angles(math.rad(5),0,0))
canp24 = part:Clone()
canp24.Parent = RoyLA
canp24.BrickColor = BrickColor.new("New Yeller")
canm24 = Instance.new("SpecialMesh",canp24)
canm24.Scale = (Vector3.new(0.1,0.1,0.4))/part.Size
canm24.MeshType = "Sphere"
canw24 = weld(canp24,canp23,CFrame.new(0,0,0.05)*CFrame.Angles(math.rad(5),0,0))
canp25 = part:Clone()
canp25.Parent = RoyLA
canp25.BrickColor = BrickColor.new("New Yeller")
canm25 = Instance.new("SpecialMesh",canp25)
canm25.Scale = (Vector3.new(0.05,0.05,0.4))/part.Size
canm25.MeshType = "Sphere"
canw25 = weld(canp25,canp24,CFrame.new(0,-0.025,0.05)*CFrame.Angles(math.rad(10),0,0))
canp3 = part:Clone()
canp3.Parent = RoyLA
canp3.BrickColor = BrickColor.new("New Yeller")
canm3 = Instance.new("SpecialMesh",canp3)
canm3.Scale = (Vector3.new(0.25,0.25,0.4))/part.Size
canm3.MeshType = "Sphere"
canw3 = weld(cap3,canp3,CFrame.new(0,-0.45,0)*CFrame.Angles(math.rad(-90),0,0))
canp32 = part:Clone()
canp32.Parent = RoyLA
canp32.BrickColor = BrickColor.new("New Yeller")
canm32 = Instance.new("SpecialMesh",canp32)
canm32.Scale = (Vector3.new(0.2,0.2,0.4))/part.Size
canm32.MeshType = "Sphere"
canw32 = weld(canp32,canp3,CFrame.new(0,0,0.05)*CFrame.Angles(math.rad(5),0,0))
canp33 = part:Clone()
canp33.Parent = RoyLA
canp33.BrickColor = BrickColor.new("New Yeller")
canm33 = Instance.new("SpecialMesh",canp33)
canm33.Scale = (Vector3.new(0.15,0.15,0.4))/part.Size
canm33.MeshType = "Sphere"
canw33 = weld(canp33,canp32,CFrame.new(0,0,0.05)*CFrame.Angles(math.rad(5),0,0))
canp34 = part:Clone()
canp34.Parent = RoyLA
canp34.BrickColor = BrickColor.new("New Yeller")
canm34 = Instance.new("SpecialMesh",canp34)
canm34.Scale = (Vector3.new(0.1,0.1,0.4))/part.Size
canm34.MeshType = "Sphere"
canw34 = weld(canp34,canp33,CFrame.new(0,0,0.05)*CFrame.Angles(math.rad(5),0,0))
canp35 = part:Clone()
canp35.Parent = RoyLA
canp35.BrickColor = BrickColor.new("New Yeller")
canm35 = Instance.new("SpecialMesh",canp35)
canm35.Scale = (Vector3.new(0.05,0.05,0.4))/part.Size
canm35.MeshType = "Sphere"
canw35 = weld(canp35,canp34,CFrame.new(0,-0.025,0.05)*CFrame.Angles(math.rad(10),0,0))
canp4 = part:Clone()
canp4.Parent = RoyRA
canp4.BrickColor = BrickColor.new("New Yeller")
canm4 = Instance.new("SpecialMesh",canp4)
canm4.Scale = (Vector3.new(0.25,0.25,0.4))/part.Size
canm4.MeshType = "Sphere"
canw4 = weld(cap4,canp4,CFrame.new(0,-0.45,0)*CFrame.Angles(math.rad(-90),0,0))
canp42 = part:Clone()
canp42.Parent = RoyRA
canp42.BrickColor = BrickColor.new("New Yeller")
canm42 = Instance.new("SpecialMesh",canp42)
canm42.Scale = (Vector3.new(0.2,0.2,0.4))/part.Size
canm42.MeshType = "Sphere"
canw42 = weld(canp42,canp4,CFrame.new(0,0,0.05)*CFrame.Angles(math.rad(5),0,0))
canp43 = part:Clone()
canp43.Parent = RoyRA
canp43.BrickColor = BrickColor.new("New Yeller")
canm43 = Instance.new("SpecialMesh",canp43)
canm43.Scale = (Vector3.new(0.15,0.15,0.4))/part.Size
canm43.MeshType = "Sphere"
canw43 = weld(canp43,canp42,CFrame.new(0,0,0.05)*CFrame.Angles(math.rad(5),0,0))
canp44 = part:Clone()
canp44.Parent = RoyRA
canp44.BrickColor = BrickColor.new("New Yeller")
canm44 = Instance.new("SpecialMesh",canp44)
canm44.Scale = (Vector3.new(0.1,0.1,0.4))/part.Size
canm44.MeshType = "Sphere"
canw44 = weld(canp44,canp43,CFrame.new(0,0,0.05)*CFrame.Angles(math.rad(5),0,0))
canp45 = part:Clone()
canp45.Parent = RoyRA
canp45.BrickColor = BrickColor.new("New Yeller")
canm45 = Instance.new("SpecialMesh",canp45)
canm45.Scale = (Vector3.new(0.05,0.05,0.4))/part.Size
canm45.MeshType = "Sphere"
canw45 = weld(canp45,canp44,CFrame.new(0,-0.025,0.05)*CFrame.Angles(math.rad(10),0,0))
canp5 = part:Clone()
canp5.Parent = RoyRA
canp5.BrickColor = BrickColor.new("New Yeller")
canm5 = Instance.new("SpecialMesh",canp5)
canm5.Scale = (Vector3.new(0.25,0.25,0.4))/part.Size
canm5.MeshType = "Sphere"
canw5 = weld(cap5,canp5,CFrame.new(0,-0.45,0)*CFrame.Angles(math.rad(-90),0,0))
canp52 = part:Clone()
canp52.Parent = RoyRA
canp52.BrickColor = BrickColor.new("New Yeller")
canm52 = Instance.new("SpecialMesh",canp52)
canm52.Scale = (Vector3.new(0.2,0.2,0.4))/part.Size
canm52.MeshType = "Sphere"
canw52 = weld(canp52,canp5,CFrame.new(0,0,0.05)*CFrame.Angles(math.rad(5),0,0))
canp53 = part:Clone()
canp53.Parent = RoyRA
canp53.BrickColor = BrickColor.new("New Yeller")
canm53 = Instance.new("SpecialMesh",canp53)
canm53.Scale = (Vector3.new(0.15,0.15,0.4))/part.Size
canm53.MeshType = "Sphere"
canw53 = weld(canp53,canp52,CFrame.new(0,0,0.05)*CFrame.Angles(math.rad(5),0,0))
canp54 = part:Clone()
canp54.Parent = RoyRA
canp54.BrickColor = BrickColor.new("New Yeller")
canm54 = Instance.new("SpecialMesh",canp54)
canm54.Scale = (Vector3.new(0.1,0.1,0.4))/part.Size
canm54.MeshType = "Sphere"
canw54 = weld(canp54,canp53,CFrame.new(0,0,0.05)*CFrame.Angles(math.rad(5),0,0))
canp55 = part:Clone()
canp55.Parent = RoyRA
canp55.BrickColor = BrickColor.new("New Yeller")
canm55 = Instance.new("SpecialMesh",canp55)
canm55.Scale = (Vector3.new(0.05,0.05,0.4))/part.Size
canm55.MeshType = "Sphere"
canw55 = weld(canp55,canp54,CFrame.new(0,-0.025,0.05)*CFrame.Angles(math.rad(10),0,0))
canp6 = part:Clone()
canp6.Parent = RoyRA
canp6.BrickColor = BrickColor.new("New Yeller")
canm6 = Instance.new("SpecialMesh",canp6)
canm6.Scale = (Vector3.new(0.25,0.25,0.4))/part.Size
canm6.MeshType = "Sphere"
canw6 = weld(cap6,canp6,CFrame.new(0,-0.45,0)*CFrame.Angles(math.rad(-90),0,0))
canp62 = part:Clone()
canp62.Parent = RoyRA
canp62.BrickColor = BrickColor.new("New Yeller")
canm62 = Instance.new("SpecialMesh",canp62)
canm62.Scale = (Vector3.new(0.2,0.2,0.4))/part.Size
canm62.MeshType = "Sphere"
canw62 = weld(canp62,canp6,CFrame.new(0,0,0.05)*CFrame.Angles(math.rad(5),0,0))
canp63 = part:Clone()
canp63.Parent = RoyRA
canp63.BrickColor = BrickColor.new("New Yeller")
canm63 = Instance.new("SpecialMesh",canp63)
canm63.Scale = (Vector3.new(0.15,0.15,0.4))/part.Size
canm63.MeshType = "Sphere"
canw63 = weld(canp63,canp62,CFrame.new(0,0,0.05)*CFrame.Angles(math.rad(5),0,0))
canp64 = part:Clone()
canp64.Parent = RoyRA
canp64.BrickColor = BrickColor.new("New Yeller")
canm64 = Instance.new("SpecialMesh",canp64)
canm64.Scale = (Vector3.new(0.1,0.1,0.4))/part.Size
canm64.MeshType = "Sphere"
canw64 = weld(canp64,canp63,CFrame.new(0,0,0.05)*CFrame.Angles(math.rad(5),0,0))
canp65 = part:Clone()
canp65.Parent = RoyRA
canp65.BrickColor = BrickColor.new("New Yeller")
canm65 = Instance.new("SpecialMesh",canp65)
canm65.Scale = (Vector3.new(0.05,0.05,0.4))/part.Size
canm65.MeshType = "Sphere"
canw65 = weld(canp65,canp64,CFrame.new(0,-0.025,0.05)*CFrame.Angles(math.rad(10),0,0))
--neck
wait(0.015)
np1 = part:Clone()
np1.Parent = RoyS
nm1 = Instance.new("BlockMesh",np1)
nm1.Scale = (Roy.Head.Size+Vector3.new(-1,1,-.3))/part.Size
nw1 = weld(Roy.Torso,np1,CFrame.new(0,1.75,0))--Head
hp1 = part:Clone()
hp1.Parent = RoyS
hm1 = Instance.new("BlockMesh",hp1)
hm1.Scale = (Roy.Head.Size+Vector3.new(0,1,1))/part.Size
hw1 = weld(Roy.Head,hp1,CFrame.new(0,1.25,-0.35))
hp2 = part:Clone()
hp2.Parent = RoyE
hp2.BrickColor = BrickColor.new("White")
hm2 = Instance.new("BlockMesh",hp2)
hm2.Scale = (Roy.Head.Size+Vector3.new(-1.5,-0.5,-0.9))/part.Size
hw2 = weld(hp1,hp2,CFrame.new(-0.45,0.2,-1))
hp3 = part:Clone()
hp3.Parent = RoyE
hp3.BrickColor = BrickColor.new("White")
hm3 = Instance.new("BlockMesh",hp3)
hm3.Scale = (Roy.Head.Size+Vector3.new(-1.5,-0.5,-0.9))/part.Size
hw3 = Instance.new("Weld") 
hw3.Part0 = hp1
hw3.Part1 = hp3
hw3.Parent = Roy.Torso 
hw3.C0 = CFrame.new(0.45,0.2,-1)
hp4 = part:Clone()
hp4.Parent = RoyE
hp4.BrickColor = BrickColor.new("New Yeller")
hm4 = Instance.new("BlockMesh",hp4)
hm4.Scale = (Roy.Head.Size+Vector3.new(-1.7,-0.7,-0.9))/part.Size
hw4 = Instance.new("Weld") 
hw4.Part0 = hp2
hw4.Part1 = hp4
hw4.Parent = Roy.Torso 
hw4.C0 = CFrame.new(0,0,-0.01)
hp5 = part:Clone()
hp5.Parent = RoyE
hp5.BrickColor = BrickColor.new("New Yeller")
hm5 = Instance.new("BlockMesh",hp5)
hm5.Scale = (Roy.Head.Size+Vector3.new(-1.7,-0.7,-0.9))/part.Size
hw5 = Instance.new("Weld") 
hw5.Part0 = hp3
hw5.Part1 = hp5
hw5.Parent = Roy.Torso 
hw5.C0 = CFrame.new(0,0,-0.01)
hp6 = part:Clone()
hp6.Parent = RoyE
hp6.BrickColor = BrickColor.new("Really black")
hm6 = Instance.new("BlockMesh",hp6)
hm6.Scale = (Roy.Head.Size+Vector3.new(-1.8,-0.8,-0.9))/part.Size
hw6 = Instance.new("Weld") 
hw6.Part0 = hp4
hw6.Part1 = hp6
hw6.Parent = Roy.Torso 
hw6.C0 = CFrame.new(0,0,-0.01)
hp7 = part:Clone()
hp7.Parent = RoyE
hp7.BrickColor = BrickColor.new("Really black")
hm7 = Instance.new("BlockMesh",hp7)
hm7.Scale = (Roy.Head.Size+Vector3.new(-1.8,-0.8,-0.9))/part.Size
hw7 = Instance.new("Weld") 
hw7.Part0 = hp5
hw7.Part1 = hp7
hw7.Parent = Roy.Torso 
hw7.C0 = CFrame.new(0,0,-0.01)
hp8 = part:Clone()
hp8.Parent = RoyS
hm8 = Instance.new("BlockMesh",hp8)
hm8.Scale = (Roy.Head.Size+Vector3.new(-.45,-0.5,0.5))/part.Size
hw8 = Instance.new("Weld") 
hw8.Part0 = hp1
hw8.Part1 = hp8
hw8.Parent = Roy.Torso 
hw8.C0 = CFrame.new(0,-0.5,-1.4)
hp9 = part:Clone()
hp9.Parent = RoyS
hm9 = Instance.new("BlockMesh",hp9)
hm9.Scale = (Roy.Head.Size+Vector3.new(-.55,-0.8,0.4))/part.Size
hw9 = Instance.new("Weld") 
hw9.Part0 = hp1
hw9.Part1 = hp9
hw9.Parent = Roy.Torso 
hw9.C0 = CFrame.new(0,-0.85,-1.25)
--Snout
sp1 = part:Clone()
sp1.Parent = RoyS
sm1 = Instance.new("CylinderMesh",sp1)
sm1.Scale = (Roy.Head.Size+Vector3.new(-1.6,-0.825,-0.6) )/part.Size
sw1 = weld(hp8,sp1,CFrame.new(-0.325,0.35,-.6)*CFrame.Angles(math.rad(90),0,0))
sp2 = part:Clone()
sp2.Parent = RoyS
sm2 = Instance.new("CylinderMesh",sp2)
sm2.Scale = (Roy.Head.Size+Vector3.new(-1.6,-0.825,-0.6) )/part.Size
sw2 = weld(hp8,sp2,CFrame.new(0.325,0.35,-.6)*CFrame.Angles(math.rad(90),0,0))
--temples
tep1 = part:Clone()
tep1.Parent = Roym
tep1.BrickColor = BrickColor.new("Really black")
tem1 = Instance.new("CylinderMesh",tep1)
tem1.Scale = (Roy.Head.Size+Vector3.new(-1.7,-0.825,-0.7)  )/part.Size
tew1 = weld(sp1,tep1,CFrame.new(0,-0.01,0))
tep2 = part:Clone()
tep2.Parent = Roym
tep2.BrickColor = BrickColor.new("Really black")
tem2 = Instance.new("CylinderMesh",tep2)
tem2.Scale = (Roy.Head.Size+Vector3.new(-1.7,-0.825,-0.7) )/part.Size
tew2 = weld(sp2,tep2,CFrame.new(-0,-0.01,0))
--Fangs
fp1 = part:Clone()
fp1.Parent = RoyHF
fp1.BrickColor = BrickColor.new("White")
fm1 = Instance.new("SpecialMesh",fp1)
fm1.Scale = (Roy.Head.Size+Vector3.new(-1.85,-0.8,-0.4))/part.Size
fm1.MeshType = "Wedge"
fw1 = weld(hp8,fp1,CFrame.new(-0.3,-.5,-.65)*CFrame.Angles(math.rad(-90),0,0))
fp2 = part:Clone()
fp2.Parent = RoyHF
fp2.BrickColor = BrickColor.new("White")
fm2 = Instance.new("SpecialMesh",fp2)
fm2.Scale = (Roy.Head.Size+Vector3.new(-1.85,-0.8,-0.4))/part.Size
fm2.MeshType = "Wedge"
fw2 = weld(hp8,fp2,CFrame.new(0.3,-.5,-.65)*CFrame.Angles(math.rad(-90),0,0))
wait(0.015)
--Tail
tp0 = part:Clone()
tp0.Parent = RoyS
tp0.Transparency = 0
tp0.BrickColor = BrickColor.new("Really red")
tm0 = Instance.new("SpecialMesh",tp0)
tm0.Scale = (Vector3.new(0.9,0.9,0.9))/part.Size
tm0.MeshType = "Sphere"
tw0 = weld(Roy.Torso,tp0,CFrame.new(0,-0.35,0.3) )
tp1 = part:Clone()
tp1.Parent = RoyS
tp1.BrickColor = BrickColor.new("Really red")
tm1 = Instance.new("SpecialMesh",tp1)
tm1.Scale = (Vector3.new(0.8,1.2,0.8))/part.Size
tm1.MeshType = "Sphere"
tw1 = weld(tp0,tp1,CFrame.new(0,0,0)*CFrame.Angles(math.rad(315),0,0) )
tp2 = part:Clone()
tp2.Parent = RoyS
tp2.BrickColor = BrickColor.new("Really red")
tm2 = Instance.new("SpecialMesh",tp2)
tm2.Scale = (Vector3.new(0.775,1,0.775))/part.Size
tm2.MeshType = "Sphere"
tw2 = Instance.new("Weld") 
tw2.Part0 = tp1
tw2.Part1 = tp2
tw2.Parent = Roy.Torso 
tw2.C0 = CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0)
tp3 = part:Clone()
tp3.Parent = RoyS
tp3.BrickColor = BrickColor.new("Really red")
tm3 = Instance.new("SpecialMesh",tp3)
tm3.Scale = (Vector3.new(0.75,1,0.75))/part.Size
tm3.MeshType = "Sphere"
tw3 = weld(tp2,tp3,CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0))
tp4 = part:Clone()
tp4.Parent = RoyS
tp4.BrickColor = BrickColor.new("Really red")
tm4 = Instance.new("SpecialMesh") 
tm4.Scale = (Vector3.new(0.725,1,0.725) )/part.Size
tm4.Parent = tp4
tm4.MeshType = "Sphere"
tw4 = weld(tp3,tp4,CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0))
tp5 = part:Clone()
tp5.Parent = RoyS
tp5.BrickColor = BrickColor.new("Really red")
tm5 = Instance.new("SpecialMesh") 
tm5.Scale = (Vector3.new(0.7,1,0.7) )/part.Size
tm5.MeshType = "Sphere"
tm5.Parent = tp5 
tw5 = weld(tp4,tp5,CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0))
tp6 = part:Clone()
tp6.Parent = RoyS
tp6.BrickColor = BrickColor.new("Really red")
tm6 = Instance.new("SpecialMesh",tp6)
tm6.Scale = (Vector3.new(0.675,1,0.675))/part.Size
tm6.MeshType = "Sphere"
tw6 = weld(tp5,tp6,CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0))
tp7 = part:Clone()
tp7.Parent = RoyS
tp7.BrickColor = BrickColor.new("Really red")
tm7 = Instance.new("SpecialMesh",tp7)
tm7.Scale = (Vector3.new(0.65,1,0.65))/part.Size
tm7.MeshType = "Sphere"
tw7 = weld(tp6,tp7,CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0))
tp8 = part:Clone()
tp8.Parent = RoyS
tp8.BrickColor = BrickColor.new("Really red")
tm8 = Instance.new("SpecialMesh") 
tm8.Scale = (Vector3.new(0.625,1,0.625) )/part.Size
tm8.Parent = tp8
tm8.MeshType = "Sphere"
tw8 = weld(tp7,tp8,CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0))
tp9 = part:Clone()
tp9.Parent = RoyS
tp9.BrickColor = BrickColor.new("Really red")
tm9 = Instance.new("SpecialMesh",tp9)
tm9.Scale = (Vector3.new(0.6,1,0.6))/part.Size
tm9.MeshType = "Sphere"
tw9 = weld(tp8,tp9,CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0))
tp10 = part:Clone()
tp10.Parent = RoyS
tp10.BrickColor = BrickColor.new("Really red")
tm10 = Instance.new("SpecialMesh",tp10)
tm10.Scale = (Vector3.new(0.575,1,0.575))/part.Size
tm10.MeshType = "Sphere"
tw10 = weld(tp9,tp10,CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0))
tp11 = part:Clone()
tp11.Parent = RoyS
tp11.BrickColor = BrickColor.new("Really red")
tm11 = Instance.new("SpecialMesh",tp11)
tm11.Scale = (Vector3.new(0.55,1,0.55))/part.Size
tm11.MeshType = "Sphere"
tw11 = weld(tp10,tp11,CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0))
tp12 = part:Clone()
tp12.Parent = RoyS
tp12.BrickColor = BrickColor.new("Really red")
tm12 = Instance.new("SpecialMesh",tp12)
tm12.Scale = (Vector3.new(0.525,1,0.525))/part.Size
tm12.MeshType = "Sphere"
tw12 = weld(tp11,tp12,CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0))
tp13 = part:Clone()
tp13.Parent = RoyS
tp13.BrickColor = BrickColor.new("Really red")
tm13 = Instance.new("SpecialMesh",tp13)
tm13.Scale = (Vector3.new(0.5,1,0.5))/part.Size
tm13.MeshType = "Sphere"
tw13 = weld(tp12,tp13,CFrame.new(0,-0.25,-0)*CFrame.Angles(math.rad(-2.5),0,0))
tp14 = part:Clone()
tp14.Parent = RoyS
tp14.BrickColor = BrickColor.new("Really red")
tm14 = Instance.new("SpecialMesh") 
tm14.Scale = (Vector3.new(0.475,1,0.475) )/part.Size
tm14.Parent = tp14
tm14.MeshType = "Sphere"
tw14 = weld(tp13,tp14,CFrame.new(0,-0.25,-0)*CFrame.Angles(math.rad(-2.5),0,0))
tp15 = part:Clone()
tp15.Parent = RoyS
tp15.BrickColor = BrickColor.new("Really red")
tm15 = Instance.new("SpecialMesh",tp15)
tm15.Scale = (Vector3.new(0.45,1,0.45))/part.Size
tm15.MeshType = "Sphere"
tw15 = weld(tp14,tp15,CFrame.new(0,-0.25,-0)*CFrame.Angles(math.rad(-2.5),0,0))
tp16 = part:Clone()
tp16.Parent = RoyS
tp16.BrickColor = BrickColor.new("Really red")
tm16 = Instance.new("SpecialMesh",tp16)
tm16.Scale = (Vector3.new(0.425,1,0.425))/part.Size
tm16.MeshType = "Sphere"
tw16 = weld(tp15,tp16,CFrame.new(0,-0.25,-0)*CFrame.Angles(math.rad(-2.5),0,0))
tp17 = part:Clone()
tp17.Parent = RoyS
tp17.BrickColor = BrickColor.new("Really red")
tm17 = Instance.new("SpecialMesh",tp17)
tm17.Scale = (Vector3.new(0.4,1,0.4))/part.Size
tm17.MeshType = "Sphere"
tw17 = weld(tp16,tp17,CFrame.new(0,-0.25,-0)*CFrame.Angles(math.rad(-2.5),0,0))
tp18 = part:Clone()
tp18.Parent = RoyS
tp18.BrickColor = BrickColor.new("Really red")
tm18 = Instance.new("SpecialMesh",tp18)
tm18.Scale = (Vector3.new(0.375,1,0.375))/part.Size
tm18.MeshType = "Sphere"
tw18 = weld(tp17,tp18,CFrame.new(0,-0.25,-0)*CFrame.Angles(math.rad(-2.5),0,0))
tp19 = part:Clone()
tp19.Parent = RoyS
tp19.BrickColor = BrickColor.new("Really red")
tm19 = Instance.new("SpecialMesh",tp19)
tm19.Scale = (Vector3.new(0.35,1,0.35))/part.Size
tm19.MeshType = "Sphere"
tw19 = weld(tp18,tp19,CFrame.new(0,-0.25,-0)*CFrame.Angles(math.rad(-2.5),0,0))
tp20 = part:Clone()
tp20.Parent = RoyS
tp20.BrickColor = BrickColor.new("Really red")
tm20 = Instance.new("SpecialMesh",tp20)
tm20.Scale = (Vector3.new(0.325,1,0.325))/part.Size
tm20.MeshType = "Sphere"
tw20 = weld(tp19,tp20,CFrame.new(0,-0.25,-0))
tp21 = part:Clone()
tp21.Parent = RoyS
tp21.BrickColor = BrickColor.new("Really red")
tm21 = Instance.new("SpecialMesh",tp21)
tm21.Scale = (Vector3.new(0.3,1,0.3))/part.Size
tm21.MeshType = "Sphere"
tw21 = weld(tp20,tp21,CFrame.new(0,-0.25,-0))
tp22 = part:Clone()
tp22.Parent = RoyS
tp22.BrickColor = BrickColor.new("Really red")
tm22 = Instance.new("SpecialMesh",tp22)
tm22.Scale = (Vector3.new(0.275,1,0.275))/part.Size
tm22.MeshType = "Sphere"
tw22 = weld(tp21,tp22,CFrame.new(0,-0.25,-0))
tp23 = part:Clone()
tp23.Parent = RoyS
tp23.BrickColor = BrickColor.new("Really red")
tm23 = Instance.new("SpecialMesh",tp23)
tm23.Scale = (Vector3.new(0.25,1,0.25))/part.Size
tm23.MeshType = "Sphere"
tw23 = weld(tp22,tp23,CFrame.new(0,-0.25,-0))
tp24 = part:Clone()
tp24.Parent = RoyS
tp24.BrickColor = BrickColor.new("Really red")
tm24 = Instance.new("SpecialMesh",tp24)
tm24.Scale = (Vector3.new(0.225,1,0.225))/part.Size
tm24.MeshType = "Sphere"
tw24 = weld(tp23,tp24,CFrame.new(0,-0.25,-0))
tp25 = part:Clone()
tp25.Parent = RoyS
tp25.BrickColor = BrickColor.new("Really red")
tm25 = Instance.new("SpecialMesh",tp25)
tm25.Scale = (Vector3.new(0.2,1,0.2))/part.Size
tm25.MeshType = "Sphere"
tw25 = weld(tp24,tp25,CFrame.new(0,-0.25,-0))
tp26 = part:Clone()
tp26.Parent = RoyS
tp26.BrickColor = BrickColor.new("Really red")
tm26 = Instance.new("SpecialMesh",tp26)
tm26.Scale = (Vector3.new(0.175,1,0.175))/part.Size
tm26.MeshType = "Sphere"
tw26 = weld(tp25,tp26,CFrame.new(0,-0.25,-0))
tp27 = part:Clone()
tp27.Parent = RoyS
tp27.BrickColor = BrickColor.new("Really red")
tm27 = Instance.new("SpecialMesh",tp27)
tm27.Scale = (Vector3.new(0.15,1,0.15))/part.Size
tm27.MeshType = "Sphere"
tw27 = weld(tp26,tp27,CFrame.new(0,-0.25,-0))
tp28 = part:Clone()
tp28.Parent = RoyS
tp28.BrickColor = BrickColor.new("Really red")
tm28 = Instance.new("SpecialMesh",tp28)
tm28.Scale = (Vector3.new(0.1,1,0.1))/part.Size
tm28.MeshType = "Sphere"
tw28 = weld(tp27,tp28,CFrame.new(0,-0.25,-0))
--Belly Plate
wait(0.015)
bpp0 = part:Clone()
bpp0.Parent = RoyB
bpp0.BrickColor = BrickColor.new("Olive")
bpm0 = Instance.new("SpecialMesh") 
bpm0.Scale = (Vector3.new(0.75,0.55,0.35) )/part.Size
bpm0.Parent = bpp0
bpm0.MeshType = "Sphere"
bpw0 = weld(Roy.Torso,bpp0,CFrame.new(0,0.75,-0.35))
bpp1 = part:Clone()
bpp1.Parent = RoyB
bpp1.BrickColor = BrickColor.new("Olive")
bpm1 = Instance.new("SpecialMesh") 
bpm1.Scale = (Vector3.new(0.9,0.55,0.5) )/part.Size
bpm1.Parent = bpp1
bpm1.MeshType = "Sphere"
bpw1 = weld(Roy.Torso,bpp1,CFrame.new(0,0.6,-0.35))
bpp2 = part:Clone()
bpp2.Parent = RoyB
bpp2.BrickColor = BrickColor.new("Olive")
bpm2 = Instance.new("SpecialMesh") 
bpm2.Scale = (Vector3.new(1.2,0.55,0.575))/part.Size
bpm2.Parent = bpp2
bpm2.MeshType = "Sphere" 
bpw2 = weld(Roy.Torso,bpp2,CFrame.new(0,0.45,-0.4))
bpp3 = part:Clone()
bpp3.Parent = RoyB
bpp3.BrickColor = BrickColor.new("Olive")
bpm3 = Instance.new("SpecialMesh",bpp3)
bpm3.Scale = (Vector3.new(1.4,0.55,0.65))/part.Size
bpm3.MeshType = "Sphere"
bpw3 = weld(Roy.Torso,bpp3,CFrame.new(0,0.25,-0.425))
bpp4 = part:Clone()
bpp4.Parent = RoyB
bpp4.BrickColor = BrickColor.new("Olive")
bpm4 = Instance.new("SpecialMesh",bpp4)
bpm4.Scale = (Vector3.new(1.5,0.55,0.725))/part.Size
bpm4.MeshType = "Sphere"
bpw4 = weld(Roy.Torso,bpp4,CFrame.new(0,0.05,-0.5))
bpp5 = part:Clone()
bpp5.Parent = RoyB
bpp5.BrickColor = BrickColor.new("Olive")
bpm5 = Instance.new("SpecialMesh",bpp5)
bpm5.Scale = (Vector3.new(1.6,0.55,0.8))/part.Size
bpm5.MeshType = "Sphere"
bpw5 = weld(Roy.Torso,bpp5,CFrame.new(0,-0.15,-0.55))
bpp6 = part:Clone()
bpp6.Parent = RoyB
bpp6.BrickColor = BrickColor.new("Olive")
bpm6 = Instance.new("SpecialMesh",bpp6)
bpm6.Scale = (Vector3.new(1.6,0.55,0.725))/part.Size
bpm6.MeshType = "Sphere"
bpw6 = weld(Roy.Torso,bpp6,CFrame.new(0,-0.35,-0.575))
bpp7 = part:Clone()
bpp7.Parent = RoyB
bpp7.BrickColor = BrickColor.new("Olive")
bpm7 = Instance.new("SpecialMesh",bpp7)
bpm7.Scale = (Vector3.new(1.5,0.55,0.65))/part.Size
bpm7.MeshType = "Sphere"
bpw7 = weld(Roy.Torso,bpp7,CFrame.new(0,-0.55,-0.575))
bpp8 = part:Clone()
bpp8.Parent = RoyB
bpp8.BrickColor = BrickColor.new("Olive")
bpm8 = Instance.new("SpecialMesh",bpp8)
bpm8.Scale = (Vector3.new(1.4,0.55,0.575))/part.Size
bpm8.MeshType = "Sphere"
bpw8 = weld(Roy.Torso,bpp8,CFrame.new(0,-0.75,-0.525))
bpp9 = part:Clone()
bpp9.Parent = RoyB
bpp9.BrickColor = BrickColor.new("Olive")
bpm9 = Instance.new("SpecialMesh",bpp9)
bpm9.Scale = (Vector3.new(1.1,0.55,0.575))/part.Size
bpm9.MeshType = "Sphere"
bpw9 = weld(Roy.Torso,bpp9,CFrame.new(0,-0.9,-0.35))
bpp10 = part:Clone()
bpp10.Parent = RoyB
bpp10.BrickColor = BrickColor.new("Olive")
bpm10 = Instance.new("SpecialMesh",bpp10)
bpm10.Scale = (Vector3.new(0.9,0.55,0.575))/part.Size
bpm10.MeshType = "Sphere"
bpw10 = weld(Roy.Torso,bpp10,CFrame.new(0,-0.95,-0.15))
bpp11 = part:Clone()
bpp11.Parent = RoyB
bpp11.BrickColor = BrickColor.new("Olive")
bpm11 = Instance.new("SpecialMesh",bpp11)
bpm11.Scale = (Vector3.new(0.757,0.55,0.575))/part.Size
bpm11.MeshType = "Sphere"
bpw11 = weld(Roy.Torso,bpp11,CFrame.new(0,-0.9,0.15))
bpp12 = part:Clone()
bpp12.Parent = RoyB
bpp12.BrickColor = BrickColor.new("Olive")
bpm12 = Instance.new("SpecialMesh",bpp12)
bpm12.Scale = (Vector3.new(0.25,0.55,0.575))/part.Size
bpm12.MeshType = "Sphere"
bpw12 = weld(Roy.Torso,bpp12,CFrame.new(0,-0.8,0.45))
bpp13 = part:Clone()
bpp13.Parent = RoyB
bpp13.BrickColor = BrickColor.new("Olive")
bpm13 = Instance.new("SpecialMesh",bpp13)
bpm13.Scale = tm1.Scale+Vector3.new(-0.1,0,0)
bpm13.MeshType = "Sphere"
bpw13 = weld(tp1,bpp13,CFrame.new(0,0,-0.125))
bpp14 = part:Clone()
bpp14.Parent = RoyB
bpp14.BrickColor = BrickColor.new("Olive")
bpm14 = Instance.new("SpecialMesh",bpp14)
bpm14.Scale = tm2.Scale+Vector3.new(-0.1,0,0)
bpm14.MeshType = "Sphere"
bpw14 = weld(tp2,bpp14,CFrame.new(0,0,-0.125))
bpp15 = part:Clone()
bpp15.Parent = RoyB
bpp15.BrickColor = BrickColor.new("Olive")
bpm15 = Instance.new("SpecialMesh",bpp15)
bpm15.Scale = tm3.Scale+Vector3.new(-0.1,0,0)
bpm15.MeshType = "Sphere"
bpw15 = weld(tp3,bpp15,CFrame.new(0,0,-0.125))
bpp16 = part:Clone()
bpp16.Parent = RoyB
bpp16.BrickColor = BrickColor.new("Olive")
bpm16 = Instance.new("SpecialMesh",bpp16)
bpm16.Scale = tm4.Scale+Vector3.new(-0.1,0,0)
bpm16.MeshType = "Sphere"
bpw16 = Instance.new("Weld") 
bpw16.Part0 = tp4
bpw16.Part1 = bpp16
bpw16.Parent = Roy.Torso 
bpw16.C0 = CFrame.new(0,0,-0.125)
bpp17 = part:Clone()
bpp17.Parent = RoyB
bpp17.BrickColor = BrickColor.new("Olive")
bpm17 = Instance.new("SpecialMesh",bpp17)
bpm17.Scale = tm5.Scale+Vector3.new(-0.1,0,0)
bpm17.MeshType = "Sphere"
bpw17 = Instance.new("Weld") 
bpw17.Part0 = tp5
bpw17.Part1 = bpp17
bpw17.Parent = Roy.Torso 
bpw17.C0 = CFrame.new(0,0,-0.125)
bpp18 = part:Clone()
bpp18.Parent = RoyB
bpp18.BrickColor = BrickColor.new("Olive")
bpm18 = Instance.new("SpecialMesh",bpp18)
bpm18.Scale = tm6.Scale+Vector3.new(-0.1,0,0)
bpm18.MeshType = "Sphere"
bpw18 = Instance.new("Weld") 
bpw18.Part0 = tp6
bpw18.Part1 = bpp18
bpw18.Parent = Roy.Torso 
bpw18.C0 = CFrame.new(0,0,-0.125)
bpp19 = part:Clone()
bpp19.Parent = RoyB
bpp19.BrickColor = BrickColor.new("Olive")
bpm19 = Instance.new("SpecialMesh",bpp19)
bpm19.Scale = tm7.Scale+Vector3.new(-0.1,0,0)
bpm19.MeshType = "Sphere"
bpw19 = Instance.new("Weld") 
bpw19.Part0 = tp7
bpw19.Part1 = bpp19
bpw19.Parent = Roy.Torso 
bpw19.C0 = CFrame.new(0,0,-0.125)
bpp20 = part:Clone()
bpp20.Parent = RoyB
bpp20.BrickColor = BrickColor.new("Olive")
bpm20 = Instance.new("SpecialMesh",bpp20)
bpm20.Scale = tm8.Scale+Vector3.new(-0.1,0,0)
bpm20.MeshType = "Sphere"
bpw20 = Instance.new("Weld") 
bpw20.Part0 = tp8
bpw20.Part1 = bpp20
bpw20.Parent = Roy.Torso 
bpw20.C0 = CFrame.new(0,0,-0.125)
bpp21 = part:Clone()
bpp21.Parent = RoyB
bpp21.BrickColor = BrickColor.new("Olive")
bpm21 = Instance.new("SpecialMesh",bpp21)
bpm21.Scale = tm9.Scale+Vector3.new(-0.1,0,0)
bpm21.MeshType = "Sphere"
bpw21 = Instance.new("Weld") 
bpw21.Part0 = tp9
bpw21.Part1 = bpp21
bpw21.Parent = Roy.Torso 
bpw21.C0 = CFrame.new(0,0,-0.125)
bpp22 = part:Clone()
bpp22.Parent = RoyB
bpp22.BrickColor = BrickColor.new("Olive")
bpm22 = Instance.new("SpecialMesh",bpp22)
bpm22.Scale = tm10.Scale+Vector3.new(-0.1,0,0)
bpm22.MeshType = "Sphere"
bpw22 = Instance.new("Weld") 
bpw22.Part0 = tp10
bpw22.Part1 = bpp22
bpw22.Parent = Roy.Torso 
bpw22.C0 = CFrame.new(0,0,-0.125)
bpp23 = part:Clone()
bpp23.Parent = RoyB
bpp23.BrickColor = BrickColor.new("Olive")
bpm23 = Instance.new("SpecialMesh",bpp23)
bpm23.Scale = tm11.Scale+Vector3.new(-0.1,0,0)
bpm23.MeshType = "Sphere"
bpw23 = Instance.new("Weld") 
bpw23.Part0 = tp11
bpw23.Part1 = bpp23
bpw23.Parent = Roy.Torso 
bpw23.C0 = CFrame.new(0,0,-0.125)
bpp24 = part:Clone()
bpp24.Parent = RoyB
bpp24.BrickColor = BrickColor.new("Olive")
bpm24 = Instance.new("SpecialMesh",bpp24)
bpm24.Scale = tm12.Scale+Vector3.new(-0.1,0,0)
bpm24.MeshType = "Sphere"
bpw24 = Instance.new("Weld") 
bpw24.Part0 = tp12
bpw24.Part1 = bpp24
bpw24.Parent = Roy.Torso 
bpw24.C0 = CFrame.new(0,0,-0.125)
bpp25 = part:Clone()
bpp25.Parent = RoyB
bpp25.BrickColor = BrickColor.new("Olive")
bpm25 = Instance.new("SpecialMesh",bpp25)
bpm25.Scale = tm13.Scale+Vector3.new(-0.1,0,0)
bpm25.MeshType = "Sphere"
bpw25 = Instance.new("Weld") 
bpw25.Part0 = tp13
bpw25.Part1 = bpp25
bpw25.Parent = Roy.Torso 
bpw25.C0 = CFrame.new(0,0,-0.125)
bpp26 = part:Clone()
bpp26.Parent = RoyB
bpp26.BrickColor = BrickColor.new("Olive")
bpm26 = Instance.new("SpecialMesh",bpp26)
bpm26.Scale = tm14.Scale+Vector3.new(-0.1,0,0)
bpm26.MeshType = "Sphere"
bpw26 = Instance.new("Weld") 
bpw26.Part0 = tp14
bpw26.Part1 = bpp26
bpw26.Parent = Roy.Torso 
bpw26.C0 = CFrame.new(0,0,-0.125)
bpp27 = part:Clone()
bpp27.Parent = RoyB
bpp27.BrickColor = BrickColor.new("Olive")
bpm27 = Instance.new("SpecialMesh",bpp27)
bpm27.Scale = tm15.Scale+Vector3.new(-0.1,0,0)
bpm27.MeshType = "Sphere"
bpw27 = Instance.new("Weld") 
bpw27.Part0 = tp15
bpw27.Part1 = bpp27
bpw27.Parent = Roy.Torso 
bpw27.C0 = CFrame.new(0,0,-0.125)
bpp28 = part:Clone()
bpp28.Parent = RoyB
bpp28.BrickColor = BrickColor.new("Olive")
bpm28 = Instance.new("SpecialMesh",bpp28)
bpm28.Scale = tm16.Scale+Vector3.new(-0.1,0,0)
bpm28.MeshType = "Sphere"
bpw28 = Instance.new("Weld") 
bpw28.Part0 = tp16
bpw28.Part1 = bpp28
bpw28.Parent = Roy.Torso 
bpw28.C0 = CFrame.new(0,0,-0.125)
bpp29 = part:Clone()
bpp29.Parent = RoyB
bpp29.BrickColor = BrickColor.new("Olive")
bpm29 = Instance.new("SpecialMesh",bpp29)
bpm29.Scale = tm17.Scale+Vector3.new(-0.1,0,0)
bpm29.MeshType = "Sphere"
bpw29 = Instance.new("Weld") 
bpw29.Part0 = tp17
bpw29.Part1 = bpp29
bpw29.Parent = Roy.Torso 
bpw29.C0 = CFrame.new(0,0.1,-0.12)
bpp30 = part:Clone()
bpp30.Parent = RoyB
bpp30.BrickColor = BrickColor.new("Olive")
bpm30 = Instance.new("SpecialMesh",bpp30)
bpm30.Scale = tm18.Scale+Vector3.new(-0.1,0,0)
bpm30.MeshType = "Sphere"
bpw30 = Instance.new("Weld") 
bpw30.Part0 = tp18
bpw30.Part1 = bpp30
bpw30.Parent = Roy.Torso 
bpw30.C0 = CFrame.new(0,0.1,-0.12)
bpp31 = part:Clone()
bpp31.Parent = RoyB
bpp31.BrickColor = BrickColor.new("Olive")
bpm31 = Instance.new("SpecialMesh",bpp31)
bpm31.Scale = tm19.Scale+Vector3.new(-0.1,0,0)
bpm31.MeshType = "Sphere"
bpw31 = Instance.new("Weld") 
bpw31.Part0 = tp19
bpw31.Part1 = bpp31
bpw31.Parent = Roy.Torso 
bpw31.C0 = CFrame.new(0,0.1,-0.1)
bpp32 = part:Clone()
bpp32.Parent = RoyB
bpp32.BrickColor = BrickColor.new("Olive")
bpm32 = Instance.new("SpecialMesh",bpp32)
bpm32.Scale = tm20.Scale+Vector3.new(-0.1,0,0)
bpm32.MeshType = "Sphere"
bpw32 = Instance.new("Weld") 
bpw32.Part0 = tp20
bpw32.Part1 = bpp32
bpw32.Parent = Roy.Torso 
bpw32.C0 = CFrame.new(0,0.1,-0.1)
bpp33 = part:Clone()
bpp33.Parent = RoyB
bpp33.BrickColor = BrickColor.new("Olive")
bpm33 = Instance.new("SpecialMesh",bpp33)
bpm33.Scale = tm21.Scale+Vector3.new(-0.1,0,0)
bpm33.MeshType = "Sphere"
bpw33 = Instance.new("Weld") 
bpw33.Part0 = tp21
bpw33.Part1 = bpp33
bpw33.Parent = Roy.Torso 
bpw33.C0 = CFrame.new(0,0.1,-0.1)
bpp34 = part:Clone()
bpp34.Parent = RoyB
bpp34.BrickColor = BrickColor.new("Olive")
bpm34 = Instance.new("SpecialMesh",bpp34)
bpm34.Scale = tm22.Scale+Vector3.new(-0.1,0,0)
bpm34.MeshType = "Sphere"
bpw34 = Instance.new("Weld") 
bpw34.Part0 = tp22
bpw34.Part1 = bpp34
bpw34.Parent = Roy.Torso 
bpw34.C0 = CFrame.new(0,0.1,-0.075)
bpp35 = part:Clone()
bpp35.Parent = RoyB
bpp35.BrickColor = BrickColor.new("Olive")
bpm35 = Instance.new("SpecialMesh",bpp35)
bpm35.Scale = tm23.Scale+Vector3.new(-0.1,0,0)
bpm35.MeshType = "Sphere"
bpw35 = Instance.new("Weld") 
bpw35.Part0 = tp23
bpw35.Part1 = bpp35
bpw35.Parent = Roy.Torso 
bpw35.C0 = CFrame.new(0,0.1,-0.075)
bpp36 = part:Clone()
bpp36.Parent = RoyB
bpp36.BrickColor = BrickColor.new("Olive")
bpm36 = Instance.new("SpecialMesh",bpp36)
bpm36.Scale = tm24.Scale+Vector3.new(-0.1,0,0)
bpm36.MeshType = "Sphere"
bpw36 = Instance.new("Weld") 
bpw36.Part0 = tp24
bpw36.Part1 = bpp36
bpw36.Parent = Roy.Torso 
bpw36.C0 = CFrame.new(0,0.1,-0.075)
wait(0.015)
--Spikes
sp1 = part:Clone()
sp1.Parent = RoySP
sp1.BrickColor = BrickColor.new("Really red")
sm1 = Instance.new("SpecialMesh",sp1)
sm1.Scale = (Vector3.new(0.1,1.5,0.5))/part.Size
sm1.MeshType = "Wedge"
sw1 = weld(hp1,sp1,CFrame.new(0,1.75,-0.5))
sp2 = part:Clone()
sp2.Parent = RoySP
sp2.BrickColor = BrickColor.new("Really red")
sm2 = Instance.new("SpecialMesh",sp2)
sm2.Scale = (Vector3.new(0.1,1.25,0.5))/part.Size
sm2.MeshType = "Wedge"
sw2 = weld(hp1,sp2,CFrame.new(0,1.5,0.25))
sp3 = part:Clone()
sp3.Parent = RoySP
sp3.BrickColor = BrickColor.new("Really red")
sm3 = Instance.new("SpecialMesh",sp3)
sm3.Scale = (Vector3.new(0.1,1,0.5))/part.Size
sm3.MeshType = "Wedge"
sw3 = weld(hp1,sp3,CFrame.new(0,0.5,1.5)*CFrame.Angles(math.rad(90),0,0))
sp4 = part:Clone()
sp4.Parent = RoySP
sp4.BrickColor = BrickColor.new("Really red")
sm4 = Instance.new("SpecialMesh",sp4)
sm4.Scale = (Vector3.new(0.1,0.9,0.5))/part.Size
sm4.MeshType = "Wedge"
sw4 = weld(hp1,sp4,CFrame.new(0,-0.7,1.45)*CFrame.Angles(math.rad(90),0,0))
sp5 = part:Clone()
sp5.Parent = RoySP
sp5.BrickColor = BrickColor.new("Really red")
sm5 = Instance.new("SpecialMesh",sp5)
sm5.Scale = (Vector3.new(0.1,0.85,0.5))/part.Size
sm5.MeshType = "Wedge"
sw5 = weld(Roy.Torso,sp5,CFrame.new(0,1.25,0.75)*CFrame.Angles(math.rad(90),0,0))
sp6 = part:Clone()
sp6.Parent = RoySP
sp6.BrickColor = BrickColor.new("Really red")
sm6 = Instance.new("SpecialMesh",sp6)
sm6.Scale = (Vector3.new(0.1,0.7,0.5))/part.Size
sm6.MeshType = "Wedge"
sw6 = weld(Roy.Torso,sp6,CFrame.new(0,0.4,0.75)*CFrame.Angles(math.rad(90),0,0))
sp7 = part:Clone()
sp7.Parent = RoySP
sp7.BrickColor = BrickColor.new("Really red")
sm7 = Instance.new("SpecialMesh",sp7)
sm7.Scale = (Vector3.new(0.1,0.675,0.5))/part.Size
sm7.MeshType = "Wedge"
sw7 = weld(tp1,sp7,CFrame.new(0,0,.65)*CFrame.Angles(math.rad(90),0,0))
sp8 = part:Clone()
sp8.Parent = RoySP
sp8.BrickColor = BrickColor.new("Really red")
sm8 = Instance.new("SpecialMesh",sp8)
sm8.Scale = (Vector3.new(0.1,0.65,0.25))/part.Size
sm8.MeshType = "Wedge"
sw8 = weld(tp3,sp8,CFrame.new(0,0,.625)*CFrame.Angles(math.rad(90),0,0))
sp9 = part:Clone()
sp9.Parent = RoySP
sp9.BrickColor = BrickColor.new("Really red")
sm9 = Instance.new("SpecialMesh",sp9)
sm9.Scale = (Vector3.new(0.1,0.57,0.25))/part.Size
sm9.MeshType = "Wedge"
sw9 = Instance.new("Weld") 
sw9.Part0 = tp5
sw9.Part1 = sp9
sw9.Parent = Roy.Torso 
sw9.C0 = CFrame.new(0,0,.6)*CFrame.Angles(math.rad(90),0,0)
sp10 = part:Clone()
sp10.Parent = RoySP
sp10.BrickColor = BrickColor.new("Really red")
sm10 = Instance.new("SpecialMesh",sp10)
sm10.Scale = (Vector3.new(0.1,0.57,0.25))/part.Size
sm10.MeshType = "Wedge"
sw10 = Instance.new("Weld") 
sw10.Part0 = tp7
sw10.Part1 = sp10
sw10.Parent = Roy.Torso 
sw10.C0 = CFrame.new(0,0,.56)*CFrame.Angles(math.rad(90),0,0)
sp11 = part:Clone()
sp11.Parent = RoySP
sp11.BrickColor = BrickColor.new("Really red")
sm11 = Instance.new("SpecialMesh",sp11)
sm11.Scale = (Vector3.new(0.1,0.54,0.25))/part.Size
sm11.MeshType = "Wedge"
sw11 = Instance.new("Weld") 
sw11.Part0 = tp9
sw11.Part1 = sp11
sw11.Parent = Roy.Torso 
sw11.C0 = CFrame.new(0,0,.52)*CFrame.Angles(math.rad(90),0,0)
sp12 = part:Clone()
sp12.Parent = RoySP
sp12.BrickColor = BrickColor.new("Really red")
sm12 = Instance.new("SpecialMesh",sp12)
sm12.Scale = (Vector3.new(0.1,0.46,0.25))/part.Size
sm12.MeshType = "Wedge"
sw12 = Instance.new("Weld") 
sw12.Part0 = tp11
sw12.Part1 = sp12
sw12.Parent = Roy.Torso 
sw12.C0 = CFrame.new(0,0,.44)*CFrame.Angles(math.rad(90),0,0)
sp13 = part:Clone()
sp13.Parent = RoySP
sp13.BrickColor = BrickColor.new("Really red")
sm13 = Instance.new("SpecialMesh",sp13)
sm13.Scale = (Vector3.new(0.1,0.46,0.25))/part.Size
sm13.MeshType = "Wedge"
sw13 = Instance.new("Weld") 
sw13.Part0 = tp13
sw13.Part1 = sp13
sw13.Parent = Roy.Torso 
sw13.C0 = CFrame.new(0,0,.44)*CFrame.Angles(math.rad(90),0,0)
sp14 = part:Clone()
sp14.Parent = RoySP
sp14.BrickColor = BrickColor.new("Really red")
sm14 = Instance.new("SpecialMesh",sp14)
sm14.Scale = (Vector3.new(0.1,0.42,0.25))/part.Size
sm14.MeshType = "Wedge"
sw14 = Instance.new("Weld") 
sw14.Part0 = tp15
sw14.Part1 = sp14
sw14.Parent = Roy.Torso 
sw14.C0 = CFrame.new(0,0,.4)*CFrame.Angles(math.rad(90),0,0)
sp15 = part:Clone()
sp15.Parent = RoySP
sp15.BrickColor = BrickColor.new("Really red")
sm15 = Instance.new("SpecialMesh",sp15)
sm15.Scale = (Vector3.new(0.1,0.35,0.25))/part.Size
sm15.MeshType = "Wedge"
sw15 = Instance.new("Weld") 
sw15.Part0 = tp17
sw15.Part1 = sp15
sw15.Parent = Roy.Torso 
sw15.C0 = CFrame.new(0,0,.33)*CFrame.Angles(math.rad(90),0,0)
sp16 = part:Clone()
sp16.Parent = RoySP
sp16.BrickColor = BrickColor.new("Really red")
sm16 = Instance.new("SpecialMesh",sp16)
sm16.Scale = (Vector3.new(0.1,0.28,0.25))/part.Size
sm16.MeshType = "Wedge"
sw16 = Instance.new("Weld") 
sw16.Part0 = tp19
sw16.Part1 = sp16
sw16.Parent = Roy.Torso 
sw16.C0 = CFrame.new(0,0,.26)*CFrame.Angles(math.rad(90),0,0)
sp17 = part:Clone()
sp17.Parent = RoySP
sp17.BrickColor = BrickColor.new("Really red")
sm17 = Instance.new("SpecialMesh",sp17)
sm17.Scale = (Vector3.new(0.1,0.28,0.25))/part.Size
sm17.MeshType = "Wedge"
sw17 = Instance.new("Weld") 
sw17.Part0 = tp21
sw17.Part1 = sp17
sw17.Parent = Roy.Torso 
sw17.C0 = CFrame.new(0,0,.26)*CFrame.Angles(math.rad(90),0,0)
sp18 = part:Clone()
sp18.Parent = RoySP
sp18.BrickColor = BrickColor.new("Really red")
sm18 = Instance.new("SpecialMesh",sp18)
sm18.Scale = (Vector3.new(0.1,0.22,0.25))/part.Size
sm18.MeshType = "Wedge"
sw18 = Instance.new("Weld") 
sw18.Part0 = tp23
sw18.Part1 = sp18
sw18.Parent = Roy.Torso 
sw18.C0 = CFrame.new(0,0,.2)*CFrame.Angles(math.rad(90),0,0)
sp19 = part:Clone()
sp19.Parent = RoySP
sp19.BrickColor = BrickColor.new("Really red")
sm19 = Instance.new("SpecialMesh",sp19)
sm19.Scale = (Vector3.new(0.1,0.21,0.25))/part.Size
sm19.MeshType = "Wedge"
sw19 = Instance.new("Weld") 
sw19.Part0 = tp25
sw19.Part1 = sp19
sw19.Parent = Roy.Torso 
sw19.C0 = CFrame.new(0,0,.19)*CFrame.Angles(math.rad(90),0,0)
wait(0.015)
--Facial Horns
jlhp1 = part:Clone()
jlhp1.Parent = RoyS
jlhp1.BrickColor = BrickColor.new("Really red")
jlhm1 = Instance.new("SpecialMesh",jlhp1)
jlhm1.Scale = (Vector3.new(1,0.75,1))/part.Size
jlhm1.MeshType = "Sphere"
jlhw1 = weld(hp1,jlhp1,CFrame.new(-0.55,0.65,0.75)*CFrame.Angles(math.rad(245),0,math.rad(-1)))
lhp1 = part:Clone()
lhp1.Parent = RoyH
lhp1.BrickColor = BrickColor.new("New Yeller")
lhm1 = Instance.new("SpecialMesh") 
lhm1.Scale = (Vector3.new(0.9,0.9,0.9) )/part.Size
lhm1.Parent = lhp1
lhm1.MeshType = "Sphere"
lhw1 = Instance.new("Weld") 
lhw1.Part0 = jlhp1
lhw1.Part1 = lhp1
lhw1.Parent = Roy.Torso 
lhw1.C0 = CFrame.new(0,-0.275,0)*CFrame.Angles(math.rad(0),0,0)
lhp2 = part:Clone()
lhp2.Parent = RoyH
lhp2.BrickColor = BrickColor.new("New Yeller")
lhm2 = Instance.new("SpecialMesh") 
lhm2.Scale = (Vector3.new(0.8,0.9,0.8) )/part.Size
lhm2.Parent = lhp2
lhm2.MeshType = "Sphere"
lhw2 = weld(lhp1,lhp2,CFrame.new(0,-0.275,0)*CFrame.Angles(math.rad(2.5),0,0))
lhp3 = part:Clone()
lhp3.Parent = RoyH
lhp3.BrickColor = BrickColor.new("New Yeller")
lhm3 = Instance.new("SpecialMesh") 
lhm3.Scale = (Vector3.new(0.7,0.9,0.7) )/part.Size
lhm3.Parent = lhp3
lhm3.MeshType = "Sphere"
lhw3 = weld(lhp2,lhp3,CFrame.new(0,-0.275,0)*CFrame.Angles(math.rad(2.5),0,0))
lhp4 = part:Clone()
lhp4.Parent = RoyH
lhp4.BrickColor = BrickColor.new("New Yeller")
lhm4 = Instance.new("SpecialMesh") 
lhm4.Scale = (Vector3.new(0.6,0.9,0.6) )/part.Size
lhm4.Parent = lhp4
lhm4.MeshType = "Sphere"
lhw4 = weld(lhp3,lhp4,CFrame.new(0,-0.275,0)*CFrame.Angles(math.rad(2.5),0,0))
lhp5 = part:Clone()
lhp5.Parent = RoyH
lhp5.BrickColor = BrickColor.new("New Yeller")
lhm5 = Instance.new("SpecialMesh") 
lhm5.Scale = (Vector3.new(0.5,0.9,0.5) )/part.Size
lhm5.Parent = lhp5
lhm5.MeshType = "Sphere"
lhw5 = weld(lhp4,lhp5,CFrame.new(0,-0.275,0)*CFrame.Angles(math.rad(2.5),0,0))
lhp6 = part:Clone()
lhp6.Parent = RoyH
lhp6.BrickColor = BrickColor.new("New Yeller")
lhm6 = Instance.new("SpecialMesh") 
lhm6.Scale = (Vector3.new(0.4,0.9,0.4) )/part.Size
lhm6.Parent = lhp6
lhm6.MeshType = "Sphere"
lhw6 = weld(lhp5,lhp6,CFrame.new(0,-0.275,0)*CFrame.Angles(math.rad(2.5),0,0))
lhp7 = part:Clone()
lhp7.Parent = RoyH
lhp7.BrickColor = BrickColor.new("New Yeller")
lhm7 = Instance.new("SpecialMesh") 
lhm7.Scale = (Vector3.new(0.3,0.9,0.3) )/part.Size
lhm7.Parent = lhp7
lhm7.MeshType = "Sphere"
lhw7 = weld(lhp6,lhp7,CFrame.new(0,-0.3,0)*CFrame.Angles(math.rad(2.5),0,0))
lhp8 = part:Clone()
lhp8.Parent = RoyH
lhp8.BrickColor = BrickColor.new("New Yeller")
lhm8 = Instance.new("SpecialMesh") 
lhm8.Scale = (Vector3.new(0.2,0.9,0.2) )/part.Size
lhm8.Parent = lhp8
lhm8.MeshType = "Sphere"
lhw8 = weld(lhp7,lhp8,CFrame.new(0,-0.275,0)*CFrame.Angles(math.rad(2.5),0,0))
lhp9 = part:Clone()
lhp9.Parent = RoyH
lhp9.BrickColor = BrickColor.new("New Yeller")
lhm9 = Instance.new("SpecialMesh") 
lhm9.Scale = (Vector3.new(0.1,0.9,0.1) )/part.Size
lhm9.Parent = lhp9
lhm9.MeshType = "Sphere"
lhw9 = weld(lhp8,lhp9,CFrame.new(0,-0.275,0)*CFrame.Angles(math.rad(2.5),0,0))
jrhp1 = part:Clone()
jrhp1.Parent = RoyS
jrhp1.BrickColor = BrickColor.new("Really red")
jrhm1 = Instance.new("SpecialMesh",jrhp1)
jrhm1.Scale = (Vector3.new(1,0.8,1))/part.Size
jrhm1.MeshType = "Sphere"
jrhw1 = weld(hp1,jrhp1,CFrame.new(0.55,0.65,0.75)*CFrame.Angles(math.rad(245),0,math.rad(1)))
rhp1 = part:Clone()
rhp1.Parent = RoyH
rhp1.BrickColor = BrickColor.new("New Yeller")
rhm1 = Instance.new("SpecialMesh",rhp1)
rhm1.Scale = (Vector3.new(0.9,0.9,0.9))/part.Size
rhm1.MeshType = "Sphere"
rhw1 = weld(jrhp1,rhp1,CFrame.new(0,-0.275,0))
rhp2 = part:Clone()
rhp2.Parent = RoyH
rhp2.BrickColor = BrickColor.new("New Yeller")
rhm2 = Instance.new("SpecialMesh",rhp2)
rhm2.Scale = (Vector3.new(0.8,0.9,0.8))/part.Size
rhm2.MeshType = "Sphere"
rhw2 = weld(rhp1,rhp2,CFrame.new(0,-0.275,0)*CFrame.Angles(math.rad(2.5),0,0))
rhp3 = part:Clone()
rhp3.Parent = RoyH
rhp3.BrickColor = BrickColor.new("New Yeller")
rhm3 = Instance.new("SpecialMesh") 
rhm3.Scale = (Vector3.new(0.7,0.9,0.7) )/part.Size
rhm3.Parent = rhp3
rhm3.MeshType = "Sphere"
rhw3 = weld(rhp2,rhp3,CFrame.new(0,-0.275,0)*CFrame.Angles(math.rad(2.5),0,0))
rhp4 = part:Clone()
rhp4.Parent = RoyH
rhp4.BrickColor = BrickColor.new("New Yeller")
rhm4 = Instance.new("SpecialMesh",rhp4)
rhm4.Scale = (Vector3.new(0.6,0.9,0.6))/part.Size
rhm4.MeshType = "Sphere"
rhw4 = weld(rhp3,rhp4,CFrame.new(0,-0.275,0)*CFrame.Angles(math.rad(2.5),0,0))
rhp5 = part:Clone()
rhp5.Parent = RoyH
rhp5.BrickColor = BrickColor.new("New Yeller")
rhm5 = Instance.new("SpecialMesh") 
rhm5.Scale = (Vector3.new(0.5,0.9,0.5) )/part.Size
rhm5.Parent = rhp5
rhm5.MeshType = "Sphere"
rhw5 = weld(rhp4,rhp5,CFrame.new(0,-0.275,0)*CFrame.Angles(math.rad(2.5),0,0))
rhp6 = part:Clone()
rhp6.Parent = RoyH
rhp6.BrickColor = BrickColor.new("New Yeller")
rhm6 = Instance.new("SpecialMesh") 
rhm6.Scale = (Vector3.new(0.4,0.9,0.4) )/part.Size
rhm6.Parent = rhp6
rhm6.MeshType = "Sphere"
rhw6 = weld(rhp5,rhp6,CFrame.new(0,-0.275,0)*CFrame.Angles(math.rad(2.5),0,0))
rhp7 = part:Clone()
rhp7.Parent = RoyH
rhp7.BrickColor = BrickColor.new("New Yeller")
rhm7 = Instance.new("SpecialMesh",rhp7)
rhm7.Scale = (Vector3.new(0.3,0.9,0.3))/part.Size
rhm7.MeshType = "Sphere"
rhw7 = weld(rhp6,rhp7,CFrame.new(0,-0.275,0)*CFrame.Angles(math.rad(2.5),0,0))
rhp8 = part:Clone()
rhp8.Parent = RoyH
rhp8.BrickColor = BrickColor.new("New Yeller")
rhm8 = Instance.new("SpecialMesh",rhp8)
rhm8.Scale = (Vector3.new(0.2,0.9,0.2))/part.Size
rhm8.MeshType = "Sphere"
rhw8 = weld(rhp7,rhp8,CFrame.new(0,-0.275,0)*CFrame.Angles(math.rad(2.5),0,0))
rhp9 = part:Clone()
rhp9.Parent = RoyH
rhp9.BrickColor = BrickColor.new("New Yeller")
rhm9 = Instance.new("SpecialMesh") 
rhm9.Scale = (Vector3.new(0.1,0.9,0.1) )/part.Size
rhm9.Parent = rhp9
rhm9.MeshType = "Sphere"
rhw9 = weld(rhp8,rhp9,CFrame.new(0,-0.275,0)*CFrame.Angles(math.rad(2.5),0,0))
wait(0.015)
--Wing Base Joints!
wbp1 = part:Clone()
wbp1.Parent = RoyLW
wbm1 = Instance.new("SpecialMesh",wbp1)
wbm1.Scale = (Vector3.new(0.75,0.75,0.75))/part.Size
wbm1.MeshType = "Sphere"
wbw1 = weld(Roy.Torso,wbp1,CFrame.new(-0.3,0.5,0.225)*CFrame.Angles(math.rad(35),0,0))
wbp2 = part:Clone()
wbp2.Parent = RoyRW
wbm2 = Instance.new("SpecialMesh") 
wbm2.Scale = (Vector3.new(0.75,0.75,0.75) )/part.Size
wbm2.Parent = wbp2
wbm2.MeshType = "Sphere"
wbw2 = weld(Roy.Torso,wbp2,CFrame.new(0.3,0.5,0.225)*CFrame.Angles(math.rad(35),0,0))
-- Left
lwp1 = part:Clone()
lwp1.Parent = RoyLW
lwm1 = Instance.new("CylinderMesh",lwp1)
lwm1.Scale = (Vector3.new(0.5,1,0.5) )/part.Size
lww1 = weld(wbp1,lwp1,CFrame.new(0,0.3,0.3)*CFrame.Angles(math.rad(35),0,0))
lwp2 = part:Clone()
lwp2.Parent = RoyLW
lwm2 = Instance.new("CylinderMesh",lwp2)
lwm2.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
lww2 = weld(lwp1,lwp2,CFrame.new(0,0.7,-0.1)*CFrame.Angles(math.rad(-15),0,0))
lwp3 = part:Clone()
lwp3.Parent = RoyLW
lwm3 = Instance.new("CylinderMesh",lwp3)
lwm3.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
lww3 = weld(lwp2,lwp3,CFrame.new(0,0.7,-0.05)*CFrame.Angles(math.rad(-5),0,0))
lwp4 = part:Clone()
lwp4.Parent = RoyLW
lwm4 = Instance.new("CylinderMesh",lwp4)
lwm4.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
lww4 = weld(lwp3,lwp4,CFrame.new(0,0.7,-0.05)*CFrame.Angles(math.rad(-5),0,0))
lwp5 = part:Clone()
lwp5.Parent = RoyLW
lwm5 = Instance.new("CylinderMesh",lwp5)
lwm5.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
lww5 = weld(lwp4,lwp5,CFrame.new(0,0.7,-0.05)*CFrame.Angles(math.rad(-5),0,0))
lwp6 = part:Clone()
lwp6.Parent = RoyLW
lwm6 = Instance.new("CylinderMesh",lwp6)
lwm6.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
lww6 = weld(lwp5,lwp6,CFrame.new(0,0.7,-0.05)*CFrame.Angles(math.rad(-5),0,0))
lwp7 = part:Clone()
lwp7.Parent = RoyLW
lwm7 = Instance.new("CylinderMesh",lwp7)
lwm7.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
lww7 = weld(lwp6,lwp7,CFrame.new(0,0.25,0.3)*CFrame.Angles(math.rad(90),0,0))
lwp8 = part:Clone()
lwp8.Parent = RoyLW
lwm8 = Instance.new("CylinderMesh",lwp8)
lwm8.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
lww8 = weld(lwp7,lwp8,CFrame.new(0,0.7,0.05)*CFrame.Angles(math.rad(5),0,0))
lwp9 = part:Clone()
lwp9.Parent = RoyLW
lwm9 = Instance.new("CylinderMesh",lwp9)
lwm9.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
lww9 = weld(lwp8,lwp9,CFrame.new(0,0.7,0.075)*CFrame.Angles(math.rad(10),0,0))
lwp10 = part:Clone()
lwp10.Parent = RoyLW
lwm10 = Instance.new("CylinderMesh",lwp10)
lwm10.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
lww10 = weld(lwp9,lwp10,CFrame.new(0,0.7,0.075)*CFrame.Angles(math.rad(10),0,0))
lwp11 = part:Clone()
lwp11.Parent = RoyLW
lwm11 = Instance.new("CylinderMesh",lwp11)
lwm11.Scale = (Vector3.new(0.3,1,0.3) )/part.Size
lww11 = weld(lwp10,lwp11,CFrame.new(0,0.7,0.075)*CFrame.Angles(math.rad(10),0,0))
lwp12 = part:Clone()
lwp12.Parent = RoyLW
lwm12 = Instance.new("CylinderMesh",lwp12)
lwm12.Scale = (Vector3.new(0.2,1,0.2) )/part.Size
lww12 = Instance.new("Weld") 
lww12.Part0 = lwp11
lww12.Part1 = lwp12
lww12.Parent = Roy.Torso 
lww12.C0 = CFrame.new(0,0.7,0.075)*CFrame.Angles(math.rad(10),0,0)
lwp13 = part:Clone()
lwp13.Parent = RoyLW
lwm13 = Instance.new("CylinderMesh",lwp13)
lwm13.Scale = (Vector3.new(0.1,1,0.1) )/part.Size
lww13 = Instance.new("Weld") 
lww13.Part0 = lwp12
lww13.Part1 = lwp13
lww13.Parent = Roy.Torso 
lww13.C0 = CFrame.new(0,0.7,0.075)*CFrame.Angles(math.rad(10),0,0)
lwp14 = part:Clone()
lwp14.Parent = RoyLW
lwm14 = Instance.new("SpecialMesh",lwp14)
lwm14.Scale = (Vector3.new(0.5,1,1))/part.Size
lwm14.MeshType = "Sphere"
lww14 = Instance.new("Weld") 
lww14.Part0 = lwp7
lww14.Part1 = lwp14
lww14.Parent = Roy.Torso 
lww14.C0 = CFrame.new(0,0,0.3)
lwp15 = part:Clone()
lwp15.Parent = RoyLW
lwm15 = Instance.new("CylinderMesh",lwp15)
lwm15.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
lww15 = Instance.new("Weld") 
lww15.Part0 = lwp14
lww15.Part1 = lwp15
lww15.Parent = Roy.Torso 
lww15.C0 = CFrame.new(0,0.6,0.3)*CFrame.Angles(math.rad(30),0,0)
lwp16 = part:Clone()
lwp16.Parent = RoyLW
lwm16 = Instance.new("CylinderMesh",lwp16)
lwm16.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
lww16 = Instance.new("Weld") 
lww16.Part0 = lwp15
lww16.Part1 = lwp16
lww16.Parent = Roy.Torso 
lww16.C0 = CFrame.new(0,0.7,0.075)*CFrame.Angles(math.rad(10),0,0)
lwp17 = part:Clone()
lwp17.Parent = RoyLW
lwm17 = Instance.new("CylinderMesh",lwp17)
lwm17.Scale = (Vector3.new(0.3,1,0.3) )/part.Size
lww17 = Instance.new("Weld") 
lww17.Part0 = lwp16
lww17.Part1 = lwp17
lww17.Parent = Roy.Torso 
lww17.C0 = CFrame.new(0,0.7,0.075)*CFrame.Angles(math.rad(10),0,0)
lwp18 = part:Clone()
lwp18.Parent = RoyLW
lwm18 = Instance.new("CylinderMesh",lwp18)
lwm18.Scale = (Vector3.new(0.2,1,0.2) )/part.Size
lww18 = Instance.new("Weld") 
lww18.Part0 = lwp17
lww18.Part1 = lwp18
lww18.Parent = Roy.Torso 
lww18.C0 = CFrame.new(0,0.7,0.075)*CFrame.Angles(math.rad(10),0,0)
lwp19 = part:Clone()
lwp19.Parent = RoyLW
lwm19 = Instance.new("CylinderMesh",lwp19)
lwm19.Scale = (Vector3.new(0.1,1,0.1) )/part.Size
lww19 = Instance.new("Weld") 
lww19.Part0 = lwp18
lww19.Part1 = lwp19
lww19.Parent = Roy.Torso 
lww19.C0 = CFrame.new(0,0.7,0.075)*CFrame.Angles(math.rad(10),0,0)
lwp20 = part:Clone()
lwp20.Parent = RoyLW
lwm20 = Instance.new("CylinderMesh",lwp20)
lwm20.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
lww20 = Instance.new("Weld") 
lww20.Part0 = lwp14
lww20.Part1 = lwp20
lww20.Parent = Roy.Torso 
lww20.C0 = CFrame.new(0,0.225,0.6)*CFrame.Angles(math.rad(60),0,0)
lwp21 = part:Clone()
lwp21.Parent = RoyLW
lwm21 = Instance.new("CylinderMesh",lwp21)
lwm21.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
lww21 = Instance.new("Weld") 
lww21.Part0 = lwp20
lww21.Part1 = lwp21
lww21.Parent = Roy.Torso 
lww21.C0 = CFrame.new(0,0.7,0.05)*CFrame.Angles(math.rad(10),0,0)
lwp22 = part:Clone()
lwp22.Parent = RoyLW
lwm22 = Instance.new("CylinderMesh",lwp22)
lwm22.Scale = (Vector3.new(0.3,1,0.3) )/part.Size
lww22 = Instance.new("Weld") 
lww22.Part0 = lwp21
lww22.Part1 = lwp22
lww22.Parent = Roy.Torso 
lww22.C0 = CFrame.new(0,0.7,0.05)*CFrame.Angles(math.rad(10),0,0)
lwp23 = part:Clone()
lwp23.Parent = RoyLW
lwm23 = Instance.new("CylinderMesh",lwp23)
lwm23.Scale = (Vector3.new(0.2,1,0.2) )/part.Size
lww23 = Instance.new("Weld") 
lww23.Part0 = lwp22
lww23.Part1 = lwp23
lww23.Parent = Roy.Torso 
lww23.C0 = CFrame.new(0,0.7,0.05)*CFrame.Angles(math.rad(10),0,0)
lwp24 = part:Clone()
lwp24.Parent = RoyLW
lwm24 = Instance.new("CylinderMesh",lwp24)
lwm24.Scale = (Vector3.new(0.1,1,0.1) )/part.Size
lww24 = Instance.new("Weld") 
lww24.Part0 = lwp23
lww24.Part1 = lwp24
lww24.Parent = Roy.Torso 
lww24.C0 = CFrame.new(0,0.7,0.05)*CFrame.Angles(math.rad(10),0,0)
-- Right Wing
rwp1 = part:Clone()
rwp1.Parent = RoyRW
rwm1 = Instance.new("CylinderMesh",rwp1)
rwm1.Scale = (Vector3.new(0.5,1,0.5) )/part.Size
rww1 = weld(wbp2,rwp1,CFrame.new(0,0.3,0.3)*CFrame.Angles(math.rad(35),0,0))
rwp2 = part:Clone()
rwp2.Parent = RoyRW
rwm2 = Instance.new("CylinderMesh",rwp2)
rwm2.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
rww2 = weld(rwp1,rwp2,CFrame.new(0,0.7,-0.1)*CFrame.Angles(math.rad(-15),0,0))
rwp3 = part:Clone()
rwp3.Parent = RoyRW
rwm3 = Instance.new("CylinderMesh",rwp3)
rwm3.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
rww3 = weld(rwp2,rwp3,CFrame.new(0,0.7,-0.05)*CFrame.Angles(math.rad(-5),0,0))
rwp4 = part:Clone()
rwp4.Parent = RoyRW
rwm4 = Instance.new("CylinderMesh",rwp4)
rwm4.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
rww4 = weld(rwp3,rwp4,CFrame.new(0,0.7,-0.05)*CFrame.Angles(math.rad(-5),0,0))
rwp5 = part:Clone()
rwp5.Parent = RoyRW
rwm5 = Instance.new("CylinderMesh",rwp5)
rwm5.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
rww5 = weld(rwp4,rwp5,CFrame.new(0,0.7,-0.05)*CFrame.Angles(math.rad(-5),0,0))
rwp6 = part:Clone()
rwp6.Parent = RoyRW
rwm6 = Instance.new("CylinderMesh",rwp6)
rwm6.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
rww6 = weld(rwp5,rwp6,CFrame.new(0,0.7,-0.05)*CFrame.Angles(math.rad(-5),0,0))
rwp7 = part:Clone()
rwp7.Parent = RoyRW
rwm7 = Instance.new("CylinderMesh",rwp7)
rwm7.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
rww7 = weld(rwp6,rwp7,CFrame.new(0,0.25,0.3)*CFrame.Angles(math.rad(90),0,0))
rwp8 = part:Clone()
rwp8.Parent = RoyRW
rwm8 = Instance.new("CylinderMesh",rwp8)
rwm8.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
rww8 = weld(rwp7,rwp8,CFrame.new(0,0.7,0.05)*CFrame.Angles(math.rad(5),0,0))
rwp9 = part:Clone()
rwp9.Parent = RoyRW
rwm9 = Instance.new("CylinderMesh",rwp9)
rwm9.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
rww9 = weld(rwp8,rwp9,CFrame.new(0,0.7,0.075)*CFrame.Angles(math.rad(10),0,0))
rwp10 = part:Clone()
rwp10.Parent = RoyRW
rwm10 = Instance.new("CylinderMesh",rwp10)
rwm10.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
rww10 = weld(rwp9,rwp10,CFrame.new(0,0.7,0.075)*CFrame.Angles(math.rad(10),0,0))
rwp11 = part:Clone()
rwp11.Parent = RoyRW
rwm11 = Instance.new("CylinderMesh",rwp11)
rwm11.Scale = (Vector3.new(0.3,1,0.3) )/part.Size
rww11 = weld(rwp10,rwp11,CFrame.new(0,0.7,0.075)*CFrame.Angles(math.rad(10),0,0))
rwp12 = part:Clone()
rwp12.Parent = RoyRW
rwm12 = Instance.new("CylinderMesh",rwp12)
rwm12.Scale = (Vector3.new(0.2,1,0.2) )/part.Size
rww12 = Instance.new("Weld") 
rww12.Part0 = rwp11
rww12.Part1 = rwp12
rww12.Parent = Roy.Torso 
rww12.C0 = CFrame.new(0,0.7,0.075)*CFrame.Angles(math.rad(10),0,0)
rwp13 = part:Clone()
rwp13.Parent = RoyRW
rwm13 = Instance.new("CylinderMesh",rwp13)
rwm13.Scale = (Vector3.new(0.1,1,0.1) )/part.Size
rww13 = Instance.new("Weld") 
rww13.Part0 = rwp12
rww13.Part1 = rwp13
rww13.Parent = Roy.Torso 
rww13.C0 = CFrame.new(0,0.7,0.075)*CFrame.Angles(math.rad(10),0,0)
rwp14 = part:Clone()
rwp14.Parent = RoyRW
rwm14 = Instance.new("SpecialMesh",rwp14)
rwm14.Scale = (Vector3.new(0.5,1,1))/part.Size
rwm14.MeshType = "Sphere"
rww14 = Instance.new("Weld") 
rww14.Part0 = rwp7
rww14.Part1 = rwp14
rww14.Parent = Roy.Torso 
rww14.C0 = CFrame.new(0,0,0.3)
rwp15 = part:Clone()
rwp15.Parent = RoyRW
rwm15 = Instance.new("CylinderMesh",rwp15)
rwm15.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
rww15 = Instance.new("Weld") 
rww15.Part0 = rwp14
rww15.Part1 = rwp15
rww15.Parent = Roy.Torso 
rww15.C0 = CFrame.new(0,0.6,0.3)*CFrame.Angles(math.rad(30),0,0)
rwp16 = part:Clone()
rwp16.Parent = RoyRW
rwm16 = Instance.new("CylinderMesh",rwp16)
rwm16.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
rww16 = Instance.new("Weld") 
rww16.Part0 = rwp15
rww16.Part1 = rwp16
rww16.Parent = Roy.Torso 
rww16.C0 = CFrame.new(0,0.7,0.075)*CFrame.Angles(math.rad(10),0,0)
rwp17 = part:Clone()
rwp17.Parent = RoyRW
rwm17 = Instance.new("CylinderMesh",rwp17)
rwm17.Scale = (Vector3.new(0.3,1,0.3) )/part.Size
rww17 = Instance.new("Weld") 
rww17.Part0 = rwp16
rww17.Part1 = rwp17
rww17.Parent = Roy.Torso 
rww17.C0 = CFrame.new(0,0.7,0.075)*CFrame.Angles(math.rad(10),0,0)
rwp18 = part:Clone()
rwp18.Parent = RoyRW
rwm18 = Instance.new("CylinderMesh",rwp18)
rwm18.Scale = (Vector3.new(0.2,1,0.2) )/part.Size
rww18 = Instance.new("Weld") 
rww18.Part0 = rwp17
rww18.Part1 = rwp18
rww18.Parent = Roy.Torso 
rww18.C0 = CFrame.new(0,0.7,0.075)*CFrame.Angles(math.rad(10),0,0)
rwp19 = part:Clone()
rwp19.Parent = RoyRW
rwm19 = Instance.new("CylinderMesh",rwp19)
rwm19.Scale = (Vector3.new(0.1,1,0.1) )/part.Size
rww19 = Instance.new("Weld") 
rww19.Part0 = rwp18
rww19.Part1 = rwp19
rww19.Parent = Roy.Torso 
rww19.C0 = CFrame.new(0,0.7,0.075)*CFrame.Angles(math.rad(10),0,0)
rwp20 = part:Clone()
rwp20.Parent = RoyRW
rwm20 = Instance.new("CylinderMesh",rwp20)
rwm20.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
rww20 = Instance.new("Weld") 
rww20.Part0 = rwp14
rww20.Part1 = rwp20
rww20.Parent = Roy.Torso 
rww20.C0 = CFrame.new(0,0.225,0.6)*CFrame.Angles(math.rad(60),0,0)
rwp21 = part:Clone()
rwp21.Parent = RoyRW
rwm21 = Instance.new("CylinderMesh",rwp21)
rwm21.Scale = (Vector3.new(0.4,1,0.4) )/part.Size
rww21 = Instance.new("Weld") 
rww21.Part0 = rwp20
rww21.Part1 = rwp21
rww21.Parent = Roy.Torso 
rww21.C0 = CFrame.new(0,0.7,0.05)*CFrame.Angles(math.rad(10),0,0)
rwp22 = part:Clone()
rwp22.Parent = RoyRW
rwm22 = Instance.new("CylinderMesh",rwp22)
rwm22.Scale = (Vector3.new(0.3,1,0.3) )/part.Size
rww22 = Instance.new("Weld") 
rww22.Part0 = rwp21
rww22.Part1 = rwp22
rww22.Parent = Roy.Torso 
rww22.C0 = CFrame.new(0,0.7,0.05)*CFrame.Angles(math.rad(10),0,0)
rwp23 = part:Clone()
rwp23.Parent = RoyRW
rwm23 = Instance.new("CylinderMesh",rwp23)
rwm23.Scale = (Vector3.new(0.2,1,0.2) )/part.Size
rww23 = Instance.new("Weld") 
rww23.Part0 = rwp22
rww23.Part1 = rwp23
rww23.Parent = Roy.Torso 
rww23.C0 = CFrame.new(0,0.7,0.05)*CFrame.Angles(math.rad(10),0,0)
rwp24 = part:Clone()
rwp24.Parent = RoyRW
rwm24 = Instance.new("CylinderMesh",rwp24)
rwm24.Scale = (Vector3.new(0.1,1,0.1) )/part.Size
rww24 = Instance.new("Weld") 
rww24.Part0 = rwp23
rww24.Part1 = rwp24
rww24.Parent = Roy.Torso 
rww24.C0 = CFrame.new(0,0.7,0.05)*CFrame.Angles(math.rad(10),0,0)
--Wing Webbing (Right)
ww = Instance.new("Model",Roym)
rwwp1 = part:Clone()
rwwp1.Parent = ww
rwwp1.BrickColor = BrickColor.new("Toothpaste")
rwwm1 = Instance.new("BlockMesh",rwwp1)
rwwm1.Scale = (Vector3.new(0.1,1,0.7))/part.Size
rwww1 = weld(rwp1,rwwp1,CFrame.new(0,0,0.3))
rwwp2 = part:Clone()
rwwp2.Parent = ww
rwwp2.BrickColor = BrickColor.new("Toothpaste")
rwwm2 = Instance.new("BlockMesh",rwwp2)
rwwm2.Scale = (Vector3.new(0.1,1,0.7))/part.Size
rwww2 = weld(rwp2,rwwp2,CFrame.new(0,0,0.3))
rwwp3 = part:Clone()
rwwp3.Parent = ww
rwwp3.BrickColor = BrickColor.new("Toothpaste")
rwwm3 = Instance.new("BlockMesh",rwwp3)
rwwm3.Scale = (Vector3.new(0.1,1,0.7))/part.Size
rwww3 = weld(rwp3,rwwp3,CFrame.new(0,0,0.3))
rwwp4 = part:Clone()
rwwp4.Parent = ww
rwwp4.BrickColor = BrickColor.new("Toothpaste")
rwwm4 = Instance.new("BlockMesh",rwwp4)
rwwm4.Scale = (Vector3.new(0.1,1,0.7))/part.Size
rwww4 = weld(rwp4,rwwp4,CFrame.new(0,0,0.3))
rwwp5 = part:Clone()
rwwp5.Parent = ww
rwwp5.BrickColor = BrickColor.new("Toothpaste")
rwwm5 = Instance.new("BlockMesh",rwwp5)
rwwm5.Scale = (Vector3.new(0.1,1,0.7))/part.Size
rwww5 = weld(rwp5,rwwp5,CFrame.new(0,0,0.3))
rwwp6 = part:Clone()
rwwp6.Parent = ww
rwwp6.BrickColor = BrickColor.new("Toothpaste")
rwwm6 = Instance.new("BlockMesh",rwwp6)
rwwm6.Scale = (Vector3.new(0.1,0.3,0.7))/part.Size
rwww6 = weld(rwp6,rwwp6,CFrame.new(0,0,0.3))
rwwp7 = part:Clone()
rwwp7.Parent = ww
rwwp7.BrickColor = BrickColor.new("Toothpaste")
rwwm7 = Instance.new("BlockMesh",rwwp7)
rwwm7.Scale = (Vector3.new(0.1,0.3,0.7))/part.Size
rwww7 = weld(rwp7,rwwp7,CFrame.new(0,0,0.3))
rwwp8 = part:Clone()
rwwp8.Parent = ww
rwwp8.BrickColor = BrickColor.new("Toothpaste")
rwwm8 = Instance.new("BlockMesh",rwwp8)
rwwm8.Scale = (Vector3.new(0.1,1,0.7))/part.Size
rwww8 = weld(rwp8,rwwp8,CFrame.new(0,0,0.3))
rwwp9 = part:Clone()
rwwp9.Parent = ww
rwwp9.BrickColor = BrickColor.new("Toothpaste")
rwwm9 = Instance.new("BlockMesh",rwwp9)
rwwm9.Scale = (Vector3.new(0.1,1,0.7))/part.Size
rwww9 = weld(rwp9,rwwp9,CFrame.new(0,0,0.3))
rwwp10 = part:Clone()
rwwp10.Parent = ww
rwwp10.BrickColor = BrickColor.new("Toothpaste")
rwwm10 = Instance.new("BlockMesh",rwwp10)
rwwm10.Scale = (Vector3.new(0.1,1,0.7))/part.Size
rwww10 = weld(rwp10,rwwp10,CFrame.new(0,0,0.3))
rwwp11 = part:Clone()
rwwp11.Parent = ww
rwwp11.BrickColor = BrickColor.new("Toothpaste")
rwwm11 = Instance.new("BlockMesh",rwwp11)
rwwm11.Scale = (Vector3.new(0.1,1,0.7))/part.Size
rwww11 = weld(rwp11,rwwp11,CFrame.new(0,0,0.3))
rwwp12 = part:Clone()
rwwp12.Parent = ww
rwwp12.BrickColor = BrickColor.new("Toothpaste")
rwwm12 = Instance.new("BlockMesh",rwwp12)
rwwm12.Scale = (Vector3.new(0.1,1,0.7))/part.Size
rwww12 = weld(rwp12,rwwp12,CFrame.new(0,0,0.3))
rwwp13 = part:Clone()
rwwp13.Parent = ww
rwwp13.BrickColor = BrickColor.new("Toothpaste")
rwwm13 = Instance.new("BlockMesh",rwwp13)
rwwm13.Scale = (Vector3.new(0.1,1,0.7))/part.Size
rwww13 = weld(rwp15,rwwp13,CFrame.new(0,0,0.3))
rwwp14 = part:Clone()
rwwp14.Parent = ww
rwwp14.BrickColor = BrickColor.new("Toothpaste")
rwwm14 = Instance.new("BlockMesh",rwwp14)
rwwm14.Scale = (Vector3.new(0.1,1,0.7))/part.Size
rwww14 = Instance.new("Weld") 
rwww14.Part0 = rwp15
rwww14.Part1 = rwwp14
rwww14.Parent = Roy.Torso 
rwww14.C0 = CFrame.new(0,0,0.3)
rwwp15 = part:Clone()
rwwp15.Parent = ww
rwwp15.BrickColor = BrickColor.new("Toothpaste")
rwwm15 = Instance.new("BlockMesh",rwwp15)
rwwm15.Scale = (Vector3.new(0.1,1,0.7))/part.Size
rwww15 = weld(rwp16,rwwp15,CFrame.new(0,0,0.3))
rwwp16 = part:Clone()
rwwp16.Parent = ww
rwwp16.BrickColor = BrickColor.new("Toothpaste")
rwwm16 = Instance.new("BlockMesh",rwwp16)
rwwm16.Scale = (Vector3.new(0.1,1,0.7))/part.Size
rwww16 = weld(rwp17,rwwp16,CFrame.new(0,0,0.3))
rwwp17 = part:Clone()
rwwp17.Parent = ww
rwwp17.BrickColor = BrickColor.new("Toothpaste")
rwwm17 = Instance.new("BlockMesh",rwwp17)
rwwm17.Scale = (Vector3.new(0.1,1,0.7))/part.Size
rwww17 = weld(rwp18,rwwp17,CFrame.new(0,0,0.3))
rwwp18 = part:Clone()
rwwp18.Parent = ww
rwwp18.BrickColor = BrickColor.new("Toothpaste")
rwwm18 = Instance.new("BlockMesh",rwwp18)
rwwm18.Scale = (Vector3.new(0.1,1,0.4))/part.Size
rwww18 = Instance.new("Weld") 
rwww18.Part0 = rwp20
rwww18.Part1 = rwwp18
rwww18.Parent = Roy.Torso 
rwww18.C0 = CFrame.new(0,0,0.3)
rwwp19 = part:Clone()
rwwp19.Parent = ww
rwwp19.BrickColor = BrickColor.new("Toothpaste")
rwwm19 = Instance.new("BlockMesh") 
rwwm19.Scale = (Vector3.new(0.1,1,0.7) )/part.Size
rwwm19.Parent = rwwp19
rwww19 = Instance.new("Weld") 
rwww19.Part0 = rwp21
rwww19.Part1 = rwwp19
rwww19.Parent = Roy.Torso 
rwww19.C0 = CFrame.new(0,0,0.3)
rwwp20 = part:Clone()
rwwp20.Parent = ww
rwwp20.BrickColor = BrickColor.new("Toothpaste")
rwwm20 = Instance.new("BlockMesh",rwwp20)
rwwm20.Scale = (Vector3.new(0.1,1,0.7))/part.Size
rwww20 = weld(rwp22,rwwp20,CFrame.new(0,0,0.3))
rwwp21 = part:Clone()
rwwp21.Parent = ww
rwwp21.BrickColor = BrickColor.new("Toothpaste")
rwwm21 = Instance.new("BlockMesh",rwwp21)
rwwm21.Scale = (Vector3.new(0.1,1,0.7))/part.Size
rwww21 = weld(rwp23,rwwp21,CFrame.new(0,0,0.3))
rwwp22 = part:Clone()
rwwp22.Parent = ww
rwwp22.BrickColor = BrickColor.new("Toothpaste")
rwwm22 = Instance.new("BlockMesh") 
rwwm22.Scale = (Vector3.new(0.1,1,0.7) )/part.Size
rwwm22.Parent = rwwp22
rwww22 = weld(rwwp2,rwwp22,CFrame.new(0,0,0.3)*CFrame.Angles(math.rad(35),0,0))
rwwp23 = part:Clone()
rwwp23.Parent = ww
rwwp23.BrickColor = BrickColor.new("Toothpaste")
rwwm23 = Instance.new("BlockMesh") 
rwwm23.Scale = (Vector3.new(0.1,1,0.7) )/part.Size
rwwm23.Parent = rwwp23
rwww23 = weld(rwwp22,rwwp23,CFrame.new(0,0,-.2)*CFrame.Angles(math.rad(80),0,0))
rwwp24 = part:Clone()
rwwp24.Parent = ww
rwwp24.BrickColor = BrickColor.new("Toothpaste")
rwwm24 = Instance.new("BlockMesh") 
rwwm24.Scale = (Vector3.new(0.1,1,0.7) )/part.Size
rwwm24.Parent = rwwp24
rwww24 = weld(rwwp23,rwwp24,CFrame.new(0,0,-.2)*CFrame.Angles(math.rad(0),0,0))
rwwp25 = part:Clone()
rwwp25.Parent = ww
rwwp25.BrickColor = BrickColor.new("Toothpaste")
rwwm25 = Instance.new("BlockMesh") 
rwwm25.Scale = (Vector3.new(0.1,1,0.7) )/part.Size
rwwm25.Parent = rwwp25
rwww25 = weld(rwwp3,rwwp25,CFrame.new(0,0,.2)*CFrame.Angles(math.rad(0),0,0))
rwwp26 = part:Clone()
rwwp26.Parent = ww
rwwp26.BrickColor = BrickColor.new("Toothpaste")
rwwm26 = Instance.new("BlockMesh") 
rwwm26.Scale = (Vector3.new(0.1,1,0.7) )/part.Size
rwwm26.Parent = rwwp26
rwww26 = weld(rwwp24,rwwp26,CFrame.new(0,0,.2)*CFrame.Angles(math.rad(-90),0,0))
rwwp27 = part:Clone()
rwwp27.Parent = ww
rwwp27.BrickColor = BrickColor.new("Toothpaste")
rwwm27 = Instance.new("BlockMesh") 
rwwm27.Scale = (Vector3.new(0.1,1,0.7) )/part.Size
rwwm27.Parent = rwwp27
rwww27 = weld(rwwp26,rwwp27,CFrame.new(0,0,.2)*CFrame.Angles(math.rad(45),0,0))
--Wing Webbing (Left)
lwwp1 = part:Clone()
lwwp1.Parent = ww
lwwp1.BrickColor = BrickColor.new("Toothpaste")
lwwm1 = Instance.new("BlockMesh",lwwp1)
lwwm1.Scale = (Vector3.new(0.1,1,0.7))/part.Size
lwww1 = weld(lwp1,lwwp1,CFrame.new(0,0,0.3))
lwwp2 = part:Clone()
lwwp2.Parent = ww
lwwp2.BrickColor = BrickColor.new("Toothpaste")
lwwm2 = Instance.new("BlockMesh",lwwp2)
lwwm2.Scale = (Vector3.new(0.1,1,0.7))/part.Size
lwww2 = weld(lwp2,lwwp2,CFrame.new(0,0,0.3))
lwwp3 = part:Clone()
lwwp3.Parent = ww
lwwp3.BrickColor = BrickColor.new("Toothpaste")
lwwm3 = Instance.new("BlockMesh",lwwp3)
lwwm3.Scale = (Vector3.new(0.1,1,0.7))/part.Size
lwww3 = weld(lwp3,lwwp3,CFrame.new(0,0,0.3))
lwwp4 = part:Clone()
lwwp4.Parent = ww
lwwp4.BrickColor = BrickColor.new("Toothpaste")
lwwm4 = Instance.new("BlockMesh",lwwp4)
lwwm4.Scale = (Vector3.new(0.1,1,0.7))/part.Size
lwww4 = weld(lwp4,lwwp4,CFrame.new(0,0,0.3))
lwwp5 = part:Clone()
lwwp5.Parent = ww
lwwp5.BrickColor = BrickColor.new("Toothpaste")
lwwm5 = Instance.new("BlockMesh",lwwp5)
lwwm5.Scale = (Vector3.new(0.1,1,0.7))/part.Size
lwww5 = weld(lwp5,lwwp5,CFrame.new(0,0,0.3))
lwwp6 = part:Clone()
lwwp6.Parent = ww
lwwp6.BrickColor = BrickColor.new("Toothpaste")
lwwm6 = Instance.new("BlockMesh",lwwp6)
lwwm6.Scale = (Vector3.new(0.1,0.3,0.7))/part.Size
lwww6 = weld(lwp6,lwwp6,CFrame.new(0,0,0.3))
lwwp7 = part:Clone()
lwwp7.Parent = ww
lwwp7.BrickColor = BrickColor.new("Toothpaste")
lwwm7 = Instance.new("BlockMesh",lwwp7)
lwwm7.Scale = (Vector3.new(0.1,0.3,0.7))/part.Size
lwww7 = weld(lwp7,lwwp7,CFrame.new(0,0,0.3))
lwwp8 = part:Clone()
lwwp8.Parent = ww
lwwp8.BrickColor = BrickColor.new("Toothpaste")
lwwm8 = Instance.new("BlockMesh",lwwp8)
lwwm8.Scale = (Vector3.new(0.1,1,0.7))/part.Size
lwww8 = weld(lwp8,lwwp8,CFrame.new(0,0,0.3))
lwwp9 = part:Clone()
lwwp9.Parent = ww
lwwp9.BrickColor = BrickColor.new("Toothpaste")
lwwm9 = Instance.new("BlockMesh",lwwp9)
lwwm9.Scale = (Vector3.new(0.1,1,0.7))/part.Size
lwww9 = weld(lwp9,lwwp9,CFrame.new(0,0,0.3))
lwwp10 = part:Clone()
lwwp10.Parent = ww
lwwp10.BrickColor = BrickColor.new("Toothpaste")
lwwm10 = Instance.new("BlockMesh",lwwp10)
lwwm10.Scale = (Vector3.new(0.1,1,0.7))/part.Size
lwww10 = weld(lwp10,lwwp10,CFrame.new(0,0,0.3))
lwwp11 = part:Clone()
lwwp11.Parent = ww
lwwp11.BrickColor = BrickColor.new("Toothpaste")
lwwm11 = Instance.new("BlockMesh",lwwp11)
lwwm11.Scale = (Vector3.new(0.1,1,0.7))/part.Size
lwww11 = weld(lwp11,lwwp11,CFrame.new(0,0,0.3))
lwwp12 = part:Clone()
lwwp12.Parent = ww
lwwp12.BrickColor = BrickColor.new("Toothpaste")
lwwm12 = Instance.new("BlockMesh",lwwp12)
lwwm12.Scale = (Vector3.new(0.1,1,0.7))/part.Size
lwww12 = weld(lwp12,lwwp12,CFrame.new(0,0,0.3))
lwwp13 = part:Clone()
lwwp13.Parent = ww
lwwp13.BrickColor = BrickColor.new("Toothpaste")
lwwm13 = Instance.new("BlockMesh",lwwp13)
lwwm13.Scale = (Vector3.new(0.1,1,0.7))/part.Size
lwww13 = weld(lwp15,lwwp13,CFrame.new(0,0,0.3))
lwwp14 = part:Clone()
lwwp14.Parent = ww
lwwp14.BrickColor = BrickColor.new("Toothpaste")
lwwm14 = Instance.new("BlockMesh",lwwp14)
lwwm14.Scale = (Vector3.new(0.1,1,0.7))/part.Size
lwww14 = Instance.new("Weld") 
lwww14.Part0 = lwp15
lwww14.Part1 = lwwp14
lwww14.Parent = Roy.Torso 
lwww14.C0 = CFrame.new(0,0,0.3)
lwwp15 = part:Clone()
lwwp15.Parent = ww
lwwp15.BrickColor = BrickColor.new("Toothpaste")
lwwm15 = Instance.new("BlockMesh",lwwp15)
lwwm15.Scale = (Vector3.new(0.1,1,0.7))/part.Size
lwww15 = weld(lwp16,lwwp15,CFrame.new(0,0,0.3))
lwwp16 = part:Clone()
lwwp16.Parent = ww
lwwp16.BrickColor = BrickColor.new("Toothpaste")
lwwm16 = Instance.new("BlockMesh",lwwp16)
lwwm16.Scale = (Vector3.new(0.1,1,0.7))/part.Size
lwww16 = weld(lwp17,lwwp16,CFrame.new(0,0,0.3))
lwwp17 = part:Clone()
lwwp17.Parent = ww
lwwp17.BrickColor = BrickColor.new("Toothpaste")
lwwm17 = Instance.new("BlockMesh",lwwp17)
lwwm17.Scale = (Vector3.new(0.1,1,0.7))/part.Size
lwww17 = weld(lwp18,lwwp17,CFrame.new(0,0,0.3))
lwwp18 = part:Clone()
lwwp18.Parent = ww
lwwp18.BrickColor = BrickColor.new("Toothpaste")
lwwm18 = Instance.new("BlockMesh",lwwp18)
lwwm18.Scale = (Vector3.new(0.1,1,0.4))/part.Size
lwww18 = Instance.new("Weld") 
lwww18.Part0 = lwp20
lwww18.Part1 = lwwp18
lwww18.Parent = Roy.Torso 
lwww18.C0 = CFrame.new(0,0,0.3)
lwwp19 = part:Clone()
lwwp19.Parent = ww
lwwp19.BrickColor = BrickColor.new("Toothpaste")
lwwm19 = Instance.new("BlockMesh") 
lwwm19.Scale = (Vector3.new(0.1,1,0.7) )/part.Size
lwwm19.Parent = lwwp19
lwww19 = Instance.new("Weld") 
lwww19.Part0 = lwp21
lwww19.Part1 = lwwp19
lwww19.Parent = Roy.Torso 
lwww19.C0 = CFrame.new(0,0,0.3)
lwwp20 = part:Clone()
lwwp20.Parent = ww
lwwp20.BrickColor = BrickColor.new("Toothpaste")
lwwm20 = Instance.new("BlockMesh",lwwp20)
lwwm20.Scale = (Vector3.new(0.1,1,0.7))/part.Size
lwww20 = weld(lwp22,lwwp20,CFrame.new(0,0,0.3))
lwwp21 = part:Clone()
lwwp21.Parent = ww
lwwp21.BrickColor = BrickColor.new("Toothpaste")
lwwm21 = Instance.new("BlockMesh",lwwp21)
lwwm21.Scale = (Vector3.new(0.1,1,0.7))/part.Size
lwww21 = weld(lwp23,lwwp21,CFrame.new(0,0,0.3))
exp1 = part:Clone()
exp1.Parent = RoyS
exp1.BrickColor = BrickColor.new("Really red")
exp1.Transparency = 0
exm1 = Instance.new("SpecialMesh") 
exm1.Scale = (Vector3.new(0.5,0.2,0.5) )/part.Size
exm1.Parent = exp1
exm1.MeshType = "Sphere"
exw1 = weld(hp1,exp1,CFrame.new(-0.55,0.75,-0.925)*CFrame.Angles(0,0,math.rad(15)))
exp2 = part:Clone()
exp2.Parent = RoyS
exp2.BrickColor = BrickColor.new("Really red")
exp2.Transparency = 0
exm2 = Instance.new("SpecialMesh",exp2)
exm2.Scale = (Vector3.new(0.5,0.2,0.5))/part.Size
exm2.MeshType = "Sphere"
exw2 = weld(hp1,exp2,CFrame.new(-0.275,0.75,-0.925)*CFrame.Angles(0,0,math.rad(-15)))
exp3 = part:Clone()
exp3.Parent = RoyS
exp3.BrickColor = BrickColor.new("Really red")
exp3.Transparency = 0
exm3 = Instance.new("SpecialMesh",exp3)
exm3.Scale = (Vector3.new(0.5,0.2,0.5))/part.Size
exm3.MeshType = "Sphere"
exw3 = Instance.new("Weld") 
exw3.Part0 = hp1
exw3.Part1 = exp3
exw3.Parent = Roy.Torso 
exw3.C0 = CFrame.new(0.55,0.75,-0.925)*CFrame.Angles(0,0,math.rad(-15))
exp4 = part:Clone()
exp4.Parent = RoyS
exp4.BrickColor = BrickColor.new("Really red")
exp4.Transparency = 0
exm4 = Instance.new("SpecialMesh",exp4)
exm4.Scale = (Vector3.new(0.5,0.2,0.5))/part.Size
exm4.MeshType = "Sphere"
exw4 = weld(hp1,exp4,CFrame.new(0.275,0.75,-0.925)*CFrame.Angles(0,0,math.rad(15)))
wait(0.015)
wait(0.3)
kill = true
BGGui = Instance.new("ScreenGui") 
BGGui.Parent = PlayerGui 
BGGui.Name = "BGGui" 
BGA = Instance.new("ImageLabel") 
BGA.Parent = BGGui
BGA.Size = UDim2.new(0, 170, 0, 60) 
BGA.Position = UDim2.new(0, 0, 0, 150) -- To get one right under this do (0, 0, 0, 200) 
BGA.BackgroundColor3 = Color3.new(math.rad(255),0,math.rad(155))
BGA.BackgroundTransparency = 0.5
BGS = Instance.new("ImageLabel") 
BGS.Parent = BGGui
BGS.Size = UDim2.new(0, 170, 0, 60) 
BGS.Position = UDim2.new(0, 0, 0, 215) -- To get one right under this do (0, 0, 0, 200) 
BGS.BackgroundColor3 = Color3.new(math.rad(255),0,math.rad(144))
BGS.BackgroundTransparency = 0.5
BGE = Instance.new("ImageLabel") 
BGE.Parent = BGGui
BGE.Size = UDim2.new(0, 170, 0, 115) 
BGE.Position = UDim2.new(0, 175, 0, 215) -- To get one right under this do (0, 0, 0, 200) 
BGE.BackgroundColor3 = Color3.new(math.rad(100),0,math.rad(100))
BGE.BackgroundTransparency = 0.5
BGW = Instance.new("ImageLabel") 
BGW.Parent = BGGui
BGW.Size = UDim2.new(0, 115, 0, 60) 
BGW.Position = UDim2.new(0, 175, 0, 150) -- To get one right under this do (0, 0, 0, 200) 
BGW.BackgroundColor3 = Color3.new(math.rad(100),0,math.rad(100))
BGW.BackgroundTransparency = 0.5
a1 = Instance.new("TextButton") 
a1.Parent = BGA
a1.Size = UDim2.new(0, 50, 0, 50) 
a1.Position = UDim2.new(0, 5, 0, 5) -- To get one right under this do (0, 0, 0, 200) 
a1.Text = "look" 
function looking1() 
if looking then return end
looking = true
for i = 1, 4 do
hw4.C0 = hw4.C0*CFrame.new(-0.0249,0,0)
hw5.C0 = hw5.C0*CFrame.new(-0.0249,0,0)
Roy.Torso.Neck.DesiredAngle = Roy.Torso.Neck.DesiredAngle +0.05
wait()
end
wait(1)
Roy.Torso.Neck.DesiredAngle = 0.0
wait(1)
for i = 1, 8 do
hw4.C0 = hw4.C0*CFrame.new(0.0249,0,0)
hw5.C0 = hw5.C0*CFrame.new(0.0249,0,0)
Roy.Torso.Neck.DesiredAngle = Roy.Torso.Neck.DesiredAngle -0.05
wait()
end
wait(1)
for i = 1, 4 do
hw4.C0 = hw4.C0*CFrame.new(-0.0249,0,0)
hw5.C0 = hw5.C0*CFrame.new(-0.0249,0,0)
wait()
end
Roy.Torso.Neck.DesiredAngle = 0
looking = false
end 
a1.MouseButton1Down:connect(looking1)  
a2 = Instance.new("TextButton") 
a2.Parent = BGA
a2.Size = UDim2.new(0, 50, 0, 50) 
a2.Position = UDim2.new(0, 115, 0, 5) -- To get one right under this do (0, 0, 0, 200) 
a2.Text = "R-Look"
function SSLook1() 
if looking then return end
looking = true
for i = 1, 4 do
hw4.C0 = hw4.C0*CFrame.new(0.0249,0,0)
hw5.C0 = hw5.C0*CFrame.new(0.0249,0,0)
Roy.Torso.Neck.DesiredAngle = -0.3
wait(0.015)
end
wait(4)
for i = 1, 4 do
hw4.C0 = hw4.C0*CFrame.new(-0.0249,0,0)
hw5.C0 = hw5.C0*CFrame.new(-0.0249,0,0)
Roy.Torso.Neck.DesiredAngle = 0
wait(0.015)
end
looking = false
end 
a2.MouseButton1Down:connect(SSLook1)
a3 = Instance.new("TextButton") 
a3.Parent = BGA
a3.Size = UDim2.new(0, 50, 0, 50) 
a3.Position = UDim2.new(0, 60, 0, 5) -- To get one right under this do (0, 0, 0, 200) 
a3.Text = "L-Look"
function SSLook2() 
if looking then return end
looking = true
for i = 1, 4 do
hw4.C0 = hw4.C0*CFrame.new(-0.0249,0,0)
hw5.C0 = hw5.C0*CFrame.new(-0.0249,0,0)
Roy.Torso.Neck.DesiredAngle = 0.3
wait(0.015)
end
wait(4)
for i = 1, 4 do
hw4.C0 = hw4.C0*CFrame.new(0.0249,0,0)
hw5.C0 = hw5.C0*CFrame.new(0.0249,0,0)
Roy.Torso.Neck.DesiredAngle = 0
wait(0.015)
end
looking = false
end 
a3.MouseButton1Down:connect(SSLook2)
S1 = Instance.new("TextButton",BGS)
S1.Text = " Skin Color Change"
S1.Size = UDim2.new(0,50,0,50)
S1.Position = UDim2.new(0,5,0,5)
S1.TextWrap = true
function SChange()
if CG then CG:Destroy() end
CG = Instance.new("ScreenGui",PlayerGui)
CG.Name = "Color Rims"
CBG = Instance.new("ImageLabel",CG)
CBG.Size = UDim2.new(0,150,0,100)
CBG.Position = UDim2.new(0,350,0,250)
CBG.BackgroundColor3 = Color3.new(math.rad(100),math.rad(50),0)
CTBo = Instance.new("TextBox",CBG)
CTBo.Size = CBG.Size+UDim2.new(0,-10,0,-65)
CTBo.Position = UDim2.new(0,5,0,60)
CTBu = Instance.new("TextButton",CBG)
CTBu.Text = "Confirm"
CTBu.Size = UDim2.new(0,50,0,50)
CTBu.Position = UDim2.new(0,5,0,5)
function ColorChooseS()
CG:Remove()
oscol = CTBo.Text
for i,v in pairs(RoyS:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = BrickColor.new(tostring(oscol))
end
end
end
CTBu.MouseButton1Down:connect(ColorChooseS)
end
S1.MouseButton1Down:connect(SChange)
S2 = Instance.new("TextButton",BGS)
S2.Text = "Belly Color Change"
S2.Size = UDim2.new(0,50,0,50)
S2.Position = UDim2.new(0,60,0,5)
S2.TextWrap = true
function BChange()
if CG then CG:Destroy() end
CG = Instance.new("ScreenGui",PlayerGui)
CG.Name = "Color Rims"
CBG = Instance.new("ImageLabel",CG)
CBG.Size = UDim2.new(0,150,0,100)
CBG.Position = UDim2.new(0,350,0,250)
CBG.BackgroundColor3 = Color3.new(math.rad(100),math.rad(50),0)
CTBo = Instance.new("TextBox",CBG)
CTBo.Size = CBG.Size+UDim2.new(0,-10,0,-65)
CTBo.Position = UDim2.new(0,5,0,60)
CTBu = Instance.new("TextButton",CBG)
CTBu.Text = "Confirm"
CTBu.Size = UDim2.new(0,50,0,50)
CTBu.Position = UDim2.new(0,5,0,5)
function ColorChooseS()
CG:Remove()
obcol = CTBo.Text
for i,v in pairs(RoyB:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = BrickColor.new(tostring(obcol))
end
end
end
CTBu.MouseButton1Down:connect(ColorChooseS)
end
S2.MouseButton1Down:connect(BChange)
S3 = Instance.new("TextButton") 
S3.Parent = BGS
S3.Size = UDim2.new(0, 50, 0, 50) 
S3.Position = UDim2.new(0, 115, 0, 5) -- To get one right under this do (0, 0, 0, 200) 
S3.Text = "Glasses"
function Glasses() 
if gm then gm:Destroy() ggui:Destroy() gm = nil ggui = nil return end
gm = Instance.new("Model",Roy)
gm.Name = "Glasses"
glap1 = Instance.new("Part")
glap1.Parent = gm
glap1.BrickColor = BrickColor.new("Bright yellow")
glap1.Reflectance = 0.2
glap1.Size = Vector3.new(1,1,1)
glap1.TopSurface = "Smooth"
glap1.BottomSurface = "Smooth"
glap1.CanCollide = false
glap1.Position = Roy.Torso.Position+Vector3.new(0,0,0)
glam1 = Instance.new("BlockMesh")
glam1.Parent = glap1
glam1.Scale = Vector3.new(0.1,0.1,2.15)
local glaw1 = weld(hp1,glap1,CFrame.new(1,0.3,-0.1))
glap2 = Instance.new("Part")
glap2.Parent = gm
glap2.BrickColor = BrickColor.new("Bright yellow")
glap2.Reflectance = 0.2
glap2.Size = Vector3.new(1,1,1)
glap2.TopSurface = "Smooth"
glap2.BottomSurface = "Smooth"
glap2.CanCollide = false
glap2.Position = Roy.Torso.Position+Vector3.new(0,0,0)
glam2 = Instance.new("BlockMesh")
glam2.Parent = glap2
glam2.Scale = Vector3.new(0.1,0.1,2.15)
local glaw2 = weld(hp1,glap2,CFrame.new(-1,0.3,-0.1))
glap3 = Instance.new("Part")
glap3.Parent = gm
glap3.BrickColor = BrickColor.new("Bright yellow")
glap3.Reflectance = 0.2
glap3.Size = Vector3.new(1,1,1)
glap3.TopSurface = "Smooth"
glap3.BottomSurface = "Smooth"
glap3.CanCollide = false
glap3.Position = Roy.Torso.Position+Vector3.new(0,0,0)
glam3 = Instance.new("BlockMesh")
glam3.Parent = glap3
glam3.Scale = Vector3.new(0.35,0.1,0.1)
local glaw3 = weld(hp1,glap3,CFrame.new(-0.85,0.3,-1.2))
glap4 = Instance.new("Part")
glap4.Parent = gm
glap4.BrickColor = BrickColor.new("Bright yellow")
glap4.Reflectance = 0.2
glap4.Size = Vector3.new(1,1,1)
glap4.TopSurface = "Smooth"
glap4.BottomSurface = "Smooth"
glap4.CanCollide = false
glap4.Position = Roy.Torso.Position+Vector3.new(0,0,0)
glam4 = Instance.new("BlockMesh")
glam4.Parent = glap4
glam4.Scale = Vector3.new(0.35,0.1,0.1)
local glaw4 = weld(hp1,glap4,CFrame.new(0.85,0.3,-1.2))
glap5 = Instance.new("Part")
glap5.Parent = gm
glap5.BrickColor = BrickColor.new("Really black")
glap5.Reflectance = 0.2
glap5.Transparency = 0.05
glap5.Size = Vector3.new(1,1,1)
glap5.TopSurface = "Smooth"
glap5.BottomSurface = "Smooth"
glap5.FormFactor = "Symmetric"
glap5.CanCollide = false
glap5.Position = Roy.Torso.Position+Vector3.new(0,0,0)
glam5 = Instance.new("BlockMesh")
glam5.Parent = glap5
glam5.Scale = Vector3.new(0.65,0.6,0.05)
local glaw5 = weld(hp1,glap5,CFrame.new(0.45,0.2,-1.2))
glap6 = Instance.new("Part")
glap6.Parent = gm
glap6.BrickColor = BrickColor.new("Really black")
glap6.Reflectance = 0.2
glap6.Transparency = 0.05
glap6.Size = Vector3.new(1,1,1)
glap6.TopSurface = "Smooth"
glap6.BottomSurface = "Smooth"
glap6.CanCollide = false
glap6.FormFactor = "Symmetric"
glap6.Position = Roy.Torso.Position+Vector3.new(0,0,0)
glam6 = Instance.new("BlockMesh")
glam6.Parent = glap6
glam6.Scale = Vector3.new(0.65,0.6,0.05)
local glaw6 = weld(hp1,glap6,CFrame.new(-0.45,0.2,-1.2))
glap7 = Instance.new("Part")
glap7.Parent = gm
glap7.BrickColor = BrickColor.new("Bright yellow")
glap7.Reflectance = 0.2
glap7.Size = Vector3.new(1,1,1)
glap7.TopSurface = "Smooth"
glap7.BottomSurface = "Smooth"
glap7.CanCollide = false
glap7.Position = Roy.Torso.Position+Vector3.new(0,0,0)
glam7 = Instance.new("BlockMesh")
glam7.Parent = glap7
glam7.Scale = Vector3.new(0.35,0.1,0.1)
local glaw7 = weld(hp1,glap7,CFrame.new(0,0.3,-1.185))
ggui = Instance.new("ScreenGui")
ggui.Parent = BGGui
gbg = Instance.new("ImageLabel",ggui)
gbg.Size = UDim2.new(0,285,0,100)
gbg.Position = UDim2.new(0,300,0,450)
wtb = Instance.new("TextButton",gbg)
wtb.Size = UDim2.new(0,90,0,45)
wtb.Position = UDim2.new(0,5,0,5)
wtb.Text = "Change Lenses"
function ChangeColor()
if CG then CG:Destroy() end
CG = Instance.new("ScreenGui",PlayerGui)
CG.Name = "Color Lenses"
CBG = Instance.new("ImageLabel",CG)
CBG.Size = UDim2.new(0,150,0,100)
CBG.Position = UDim2.new(0,350,0,250)
CBG.BackgroundColor3 = Color3.new(math.rad(100),math.rad(50),0)
CTBo = Instance.new("TextBox",CBG)
CTBo.Size = CBG.Size+UDim2.new(0,-10,0,-65)
CTBo.Position = UDim2.new(0,5,0,60)
CTBu = Instance.new("TextButton",CBG)
CTBu.Text = "Confirm"
CTBu.Size = UDim2.new(0,50,0,50)
CTBu.Position = UDim2.new(0,5,0,5)
function ColorChooseG()
CG:Remove()
glap5.BrickColor = BrickColor.new(tostring(CTBo.Text))
glap6.BrickColor = BrickColor.new(tostring(CTBo.Text))
end
CTBu.MouseButton1Down:connect(ColorChooseG)
end
wtb.MouseButton1Down:connect(ChangeColor)
rctb1 = Instance.new("TextButton",gbg)
rctb1.Size = UDim2.new(0,90,0,45)
rctb1.Position = UDim2.new(0,190,0,50)
rctb1.Text = "Recolor Rims"
function Recolor()
if CG then CG:Destroy() end
CG = Instance.new("ScreenGui",PlayerGui)
CG.Name = "Color Rims"
CBG = Instance.new("ImageLabel",CG)
CBG.Size = UDim2.new(0,150,0,100)
CBG.Position = UDim2.new(0,350,0,250)
CBG.BackgroundColor3 = Color3.new(math.rad(100),math.rad(50),0)
CTBo = Instance.new("TextBox",CBG)
CTBo.Size = CBG.Size+UDim2.new(0,-10,0,-65)
CTBo.Position = UDim2.new(0,5,0,60)
CTBu = Instance.new("TextButton",CBG)
CTBu.Text = "Confirm"
CTBu.Size = UDim2.new(0,50,0,50)
CTBu.Position = UDim2.new(0,5,0,5)
function ColorChooseR()
if CTBo.Text == "Gold" then
CG:Remove()
glap1.BrickColor = BrickColor.new("Bright yellow")
glap2.BrickColor = BrickColor.new("Bright yellow")
glap3.BrickColor = BrickColor.new("Bright yellow")
glap4.BrickColor = BrickColor.new("Bright yellow")
glap7.BrickColor = BrickColor.new("Bright yellow")
glap1.Reflectance = 0.2
glap2.Reflectance = 0.2
glap3.Reflectance = 0.2
glap4.Reflectance = 0.2
glap7.Reflectance = 0.2
elseif CTBo.Text == "Silver" then
CG:Remove()
glap1.BrickColor = BrickColor.new("Light grey")
glap2.BrickColor = BrickColor.new("Light grey")
glap3.BrickColor = BrickColor.new("Light grey")
glap4.BrickColor = BrickColor.new("Light grey")
glap7.BrickColor = BrickColor.new("Light grey")
glap1.Reflectance = 0.2
glap2.Reflectance = 0.2
glap3.Reflectance = 0.2
glap4.Reflectance = 0.2
glap7.Reflectance = 0.2
else
CG:Remove()
glap1.BrickColor = BrickColor.new(tostring(CTBo.Text))
glap2.BrickColor = BrickColor.new(tostring(CTBo.Text))
glap3.BrickColor = BrickColor.new(tostring(CTBo.Text))
glap4.BrickColor = BrickColor.new(tostring(CTBo.Text))
glap7.BrickColor = BrickColor.new(tostring(CTBo.Text))
end
end
CTBu.MouseButton1Down:connect(ColorChooseR)
end
rctb1.MouseButton1Down:connect(Recolor)
end 
S3.MouseButton1Down:connect(Glasses)
S4 = Instance.new("TextButton",BGS)
S4.Text = "Left Arm Claw Change"
S4.Size = UDim2.new(0,50,0,50)
S4.Position = UDim2.new(0,5,0,60)
S4.TextWrap = true
function LACChange()
if CG then CG:Destroy() end
CG = Instance.new("ScreenGui",PlayerGui)
CG.Name = "Color Rims"
CBG = Instance.new("ImageLabel",CG)
CBG.Size = UDim2.new(0,150,0,100)
CBG.Position = UDim2.new(0,350,0,250)
CBG.BackgroundColor3 = Color3.new(math.rad(100),math.rad(50),0)
CTBo = Instance.new("TextBox",CBG)
CTBo.Size = CBG.Size+UDim2.new(0,-10,0,-65)
CTBo.Position = UDim2.new(0,5,0,60)
CTBu = Instance.new("TextButton",CBG)
CTBu.Text = "Confirm"
CTBu.Size = UDim2.new(0,50,0,50)
CTBu.Position = UDim2.new(0,5,0,5)
function ColorChooseS()
CG:Remove()
olacol = CTBo.Text
for i,v in pairs(RoyLA:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = BrickColor.new(tostring(olacol))
end
end
end
CTBu.MouseButton1Down:connect(ColorChooseS)
end
S4.MouseButton1Down:connect(LACChange)
S5 = Instance.new("TextButton",BGS)
S5.Text = "Right Arm Claw Change"
S5.Size = UDim2.new(0,50,0,50)
S5.Position = UDim2.new(0,5,0,115)
S5.TextWrap = true
function RACChange()
if CG then CG:Destroy() end
CG = Instance.new("ScreenGui",PlayerGui)
CG.Name = "Color Rims"
CBG = Instance.new("ImageLabel",CG)
CBG.Size = UDim2.new(0,150,0,100)
CBG.Position = UDim2.new(0,350,0,250)
CBG.BackgroundColor3 = Color3.new(math.rad(100),math.rad(50),0)
CTBo = Instance.new("TextBox",CBG)
CTBo.Size = CBG.Size+UDim2.new(0,-10,0,-65)
CTBo.Position = UDim2.new(0,5,0,60)
CTBu = Instance.new("TextButton",CBG)
CTBu.Text = "Confirm"
CTBu.Size = UDim2.new(0,50,0,50)
CTBu.Position = UDim2.new(0,5,0,5)
function ColorChooseS()
CG:Remove()
oracol = CTBo.Text
for i,v in pairs(RoyRA:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = BrickColor.new(tostring(oracol))
end
end
end
CTBu.MouseButton1Down:connect(ColorChooseS)
end
S5.MouseButton1Down:connect(RACChange)
S6 = Instance.new("TextButton",BGS)
S6.Text = "Left Leg Claw Change"
S6.Size = UDim2.new(0,50,0,50)
S6.Position = UDim2.new(0,60,0,60)
S6.TextWrap = true
function LLCChange()
if CG then CG:Destroy() end
CG = Instance.new("ScreenGui",PlayerGui)
CG.Name = "Color Rims"
CBG = Instance.new("ImageLabel",CG)
CBG.Size = UDim2.new(0,150,0,100)
CBG.Position = UDim2.new(0,350,0,250)
CBG.BackgroundColor3 = Color3.new(math.rad(100),math.rad(50),0)
CTBo = Instance.new("TextBox",CBG)
CTBo.Size = CBG.Size+UDim2.new(0,-10,0,-65)
CTBo.Position = UDim2.new(0,5,0,60)
CTBu = Instance.new("TextButton",CBG)
CTBu.Text = "Confirm"
CTBu.Size = UDim2.new(0,50,0,50)
CTBu.Position = UDim2.new(0,5,0,5)
function ColorChooseS()
CG:Remove()
ollcol = CTBo.Text
for i,v in pairs(RoyLL:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = BrickColor.new(tostring(ollcol))
end
end
end
CTBu.MouseButton1Down:connect(ColorChooseS)
end
S6.MouseButton1Down:connect(LLCChange)
S7 = Instance.new("TextButton",BGS)
S7.Text = "Right Leg Claw Change"
S7.Size = UDim2.new(0,50,0,50)
S7.Position = UDim2.new(0,60,0,115)
S7.TextWrap = true
function RLCChange()
if CG then CG:Destroy() end
CG = Instance.new("ScreenGui",PlayerGui)
CG.Name = "Color Rims"
CBG = Instance.new("ImageLabel",CG)
CBG.Size = UDim2.new(0,150,0,100)
CBG.Position = UDim2.new(0,350,0,250)
CBG.BackgroundColor3 = Color3.new(math.rad(100),math.rad(50),0)
CTBo = Instance.new("TextBox",CBG)
CTBo.Size = CBG.Size+UDim2.new(0,-10,0,-65)
CTBo.Position = UDim2.new(0,5,0,60)
CTBu = Instance.new("TextButton",CBG)
CTBu.Text = "Confirm"
CTBu.Size = UDim2.new(0,50,0,50)
CTBu.Position = UDim2.new(0,5,0,5)
function ColorChooseS()
CG:Remove()
orlcol = CTBo.Text
for i,v in pairs(RoyRL:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = BrickColor.new(tostring(orlcol))
end
end
end
CTBu.MouseButton1Down:connect(ColorChooseS)
end
S7.MouseButton1Down:connect(RLCChange)
S8 = Instance.new("TextButton",BGS)
S8.Text = "Left Eye Change"
S8.Size = UDim2.new(0,50,0,50)
S8.Position = UDim2.new(0,115,0,60)
S8.TextWrap = true
function LEChange()
if CG then CG:Destroy() end
CG = Instance.new("ScreenGui",PlayerGui)
CG.Name = "Color Rims"
CBG = Instance.new("ImageLabel",CG)
CBG.Size = UDim2.new(0,150,0,100)
CBG.Position = UDim2.new(0,350,0,250)
CBG.BackgroundColor3 = Color3.new(math.rad(100),math.rad(50),0)
CTBo = Instance.new("TextBox",CBG)
CTBo.Size = CBG.Size+UDim2.new(0,-10,0,-65)
CTBo.Position = UDim2.new(0,5,0,60)
CTBu = Instance.new("TextButton",CBG)
CTBu.Text = "Confirm"
CTBu.Size = UDim2.new(0,50,0,50)
CTBu.Position = UDim2.new(0,5,0,5)
function ColorChooseS()
CG:Remove()
olecol = CTBo.Text
hp5.BrickColor = BrickColor.new(olecol)
end
CTBu.MouseButton1Down:connect(ColorChooseS)
end
S8.MouseButton1Down:connect(LEChange)
S9 = Instance.new("TextButton",BGS)
S9.Text = "Right Eye Change"
S9.Size = UDim2.new(0,50,0,50)
S9.Position = UDim2.new(0,115,0,115)
S9.TextWrap = true
function REChange()
if CG then CG:Destroy() end
CG = Instance.new("ScreenGui",PlayerGui)
CG.Name = "Color Rims"
CBG = Instance.new("ImageLabel",CG)
CBG.Size = UDim2.new(0,150,0,100)
CBG.Position = UDim2.new(0,350,0,250)
CBG.BackgroundColor3 = Color3.new(math.rad(100),math.rad(50),0)
CTBo = Instance.new("TextBox",CBG)
CTBo.Size = CBG.Size+UDim2.new(0,-10,0,-65)
CTBo.Position = UDim2.new(0,5,0,60)
CTBu = Instance.new("TextButton",CBG)
CTBu.Text = "Confirm"
CTBu.Size = UDim2.new(0,50,0,50)
CTBu.Position = UDim2.new(0,5,0,5)
function ColorChooseS()
CG:Remove()
orecol = CTBo.Text
hp4.BrickColor = BrickColor.new(orecol)
end
CTBu.MouseButton1Down:connect(ColorChooseS)
end
S9.MouseButton1Down:connect(REChange)
S10 = Instance.new("TextButton",BGS)
S10.Text = "Horn Change"
S10.Size = UDim2.new(0,50,0,50)
S10.Position = UDim2.new(0,5,0,170)
S10.TextWrap = true
function HChange()
if CG then CG:Destroy() end
CG = Instance.new("ScreenGui",PlayerGui)
CG.Name = "Color Rims"
CBG = Instance.new("ImageLabel",CG)
CBG.Size = UDim2.new(0,150,0,100)
CBG.Position = UDim2.new(0,350,0,250)
CBG.BackgroundColor3 = Color3.new(math.rad(100),math.rad(50),0)
CTBo = Instance.new("TextBox",CBG)
CTBo.Size = CBG.Size+UDim2.new(0,-10,0,-65)
CTBo.Position = UDim2.new(0,5,0,60)
CTBu = Instance.new("TextButton",CBG)
CTBu.Text = "Confirm"
CTBu.Size = UDim2.new(0,50,0,50)
CTBu.Position = UDim2.new(0,5,0,5)
function ColorChooseS()
CG:Remove()
ohcol = CTBo.Text
for i,v in pairs(RoyH:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = BrickColor.new(tostring(ohcol))
end
end
end
CTBu.MouseButton1Down:connect(ColorChooseS)
end
S10.MouseButton1Down:connect(HChange)
S11 = Instance.new("TextButton",BGS)
S11.Text = "Wing Webbing Change"
S11.Size = UDim2.new(0,50,0,50)
S11.Position = UDim2.new(0,60,0,170)
S11.TextWrap = true
function WWChange()
if CG then CG:Destroy() end
CG = Instance.new("ScreenGui",PlayerGui)
CG.Name = "Color Rims"
CBG = Instance.new("ImageLabel",CG)
CBG.Size = UDim2.new(0,150,0,100)
CBG.Position = UDim2.new(0,350,0,250)
CBG.BackgroundColor3 = Color3.new(math.rad(100),math.rad(50),0)
CTBo = Instance.new("TextBox",CBG)
CTBo.Size = CBG.Size+UDim2.new(0,-10,0,-65)
CTBo.Position = UDim2.new(0,5,0,60)
CTBu = Instance.new("TextButton",CBG)
CTBu.Text = "Confirm"
CTBu.Size = UDim2.new(0,50,0,50)
CTBu.Position = UDim2.new(0,5,0,5)
function ColorChooseS()
CG:Remove()
owwcol = CTBo.Text
for i,v in pairs(ww:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = BrickColor.new(tostring(owwcol))
end
end
end
CTBu.MouseButton1Down:connect(ColorChooseS)
end
S11.MouseButton1Down:connect(WWChange)
S12 = Instance.new("TextButton",BGS)
S12.Text = "Name Change"
S12.Size = UDim2.new(0,50,0,50)
S12.Position = UDim2.new(0,115,0,170)
S12.TextWrap = true
function NChange()
if CG then CG:Destroy() end
CG = Instance.new("ScreenGui",PlayerGui)
CG.Name = "Color Rims"
CBG = Instance.new("ImageLabel",CG)
CBG.Size = UDim2.new(0,150,0,100)
CBG.Position = UDim2.new(0,350,0,250)
CBG.BackgroundColor3 = Color3.new(math.rad(100),math.rad(50),0)
CTBo = Instance.new("TextBox",CBG)
CTBo.Size = CBG.Size+UDim2.new(0,-10,0,-65)
CTBo.Position = UDim2.new(0,5,0,60)
CTBu = Instance.new("TextButton",CBG)
CTBu.Text = "Confirm"
CTBu.Size = UDim2.new(0,50,0,50)
CTBu.Position = UDim2.new(0,5,0,5)
function ColorChooseS()
CG:Remove()
name = CTBo.Text
nm.Name = tostring(name)
end
CTBu.MouseButton1Down:connect(ColorChooseS)
end
S12.MouseButton1Down:connect(NChange)
S13 = Instance.new("TextButton",BGS)
S13.Text = "Wings Change"
S13.Size = UDim2.new(0,50,0,50)
S13.Position = UDim2.new(0,5,0,225)
S13.TextWrap = true
function WChange()
if CG then CG:Destroy() end
CG = Instance.new("ScreenGui",PlayerGui)
CG.Name = "Color Rims"
CBG = Instance.new("ImageLabel",CG)
CBG.Size = UDim2.new(0,150,0,100)
CBG.Position = UDim2.new(0,350,0,250)
CBG.BackgroundColor3 = Color3.new(math.rad(100),math.rad(50),0)
CTBo = Instance.new("TextBox",CBG)
CTBo.Size = CBG.Size+UDim2.new(0,-10,0,-65)
CTBo.Position = UDim2.new(0,5,0,60)
CTBu = Instance.new("TextButton",CBG)
CTBu.Text = "Confirm"
CTBu.Size = UDim2.new(0,50,0,50)
CTBu.Position = UDim2.new(0,5,0,5)
function ColorChooseS()
CG:Remove()
olwcol = CTBo.Text
orwcol = CTBo.Text
for i,v in pairs(RoyLW:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = BrickColor.new(tostring(olwcol))
end
end
for i,v in pairs(RoyRW:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = BrickColor.new(tostring(orwcol))
end
end
end
CTBu.MouseButton1Down:connect(ColorChooseS)
end
S13.MouseButton1Down:connect(WChange)
S14 = Instance.new("TextButton",BGS)
S14.Text = "Left Wing Change"
S14.Size = UDim2.new(0,50,0,50)
S14.Position = UDim2.new(0,60,0,225)
S14.TextWrap = true
function LWChange()
if CG then CG:Destroy() end
CG = Instance.new("ScreenGui",PlayerGui)
CG.Name = "Color Rims"
CBG = Instance.new("ImageLabel",CG)
CBG.Size = UDim2.new(0,150,0,100)
CBG.Position = UDim2.new(0,350,0,250)
CBG.BackgroundColor3 = Color3.new(math.rad(100),math.rad(50),0)
CTBo = Instance.new("TextBox",CBG)
CTBo.Size = CBG.Size+UDim2.new(0,-10,0,-65)
CTBo.Position = UDim2.new(0,5,0,60)
CTBu = Instance.new("TextButton",CBG)
CTBu.Text = "Confirm"
CTBu.Size = UDim2.new(0,50,0,50)
CTBu.Position = UDim2.new(0,5,0,5)
function ColorChooseS()
CG:Remove()
olwcol = CTBo.Text
for i,v in pairs(RoyLW:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = BrickColor.new(tostring(olwcol))
end
end
end
CTBu.MouseButton1Down:connect(ColorChooseS)
end
S14.MouseButton1Down:connect(LWChange)
S15 = Instance.new("TextButton",BGS)
S15.Text = "Right Wing Change"
S15.Size = UDim2.new(0,50,0,50)
S15.Position = UDim2.new(0,115,0,225)
S15.TextWrap = true
function RWChange()
if CG then CG:Destroy() end
CG = Instance.new("ScreenGui",PlayerGui)
CG.Name = "Color Rims"
CBG = Instance.new("ImageLabel",CG)
CBG.Size = UDim2.new(0,150,0,100)
CBG.Position = UDim2.new(0,350,0,250)
CBG.BackgroundColor3 = Color3.new(math.rad(100),math.rad(50),0)
CTBo = Instance.new("TextBox",CBG)
CTBo.Size = CBG.Size+UDim2.new(0,-10,0,-65)
CTBo.Position = UDim2.new(0,5,0,60)
CTBu = Instance.new("TextButton",CBG)
CTBu.Text = "Confirm"
CTBu.Size = UDim2.new(0,50,0,50)
CTBu.Position = UDim2.new(0,5,0,5)
function ColorChooseS()
CG:Remove()
orwcol = CTBo.Text
for i,v in pairs(RoyRW:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = BrickColor.new(tostring(orwcol))
end
end
end
CTBu.MouseButton1Down:connect(ColorChooseS)
end
S15.MouseButton1Down:connect(RWChange)
S16 = Instance.new("TextButton",BGS)
S16.Text = "Spikes Change"
S16.Size = UDim2.new(0,50,0,50)
S16.Position = UDim2.new(0,5,0,280)
S16.TextWrap = true
function SPChange()
if CG then CG:Destroy() end
CG = Instance.new("ScreenGui",PlayerGui)
CG.Name = "Color Rims"
CBG = Instance.new("ImageLabel",CG)
CBG.Size = UDim2.new(0,150,0,100)
CBG.Position = UDim2.new(0,350,0,250)
CBG.BackgroundColor3 = Color3.new(math.rad(100),math.rad(50),0)
CTBo = Instance.new("TextBox",CBG)
CTBo.Size = CBG.Size+UDim2.new(0,-10,0,-65)
CTBo.Position = UDim2.new(0,5,0,60)
CTBu = Instance.new("TextButton",CBG)
CTBu.Text = "Confirm"
CTBu.Size = UDim2.new(0,50,0,50)
CTBu.Position = UDim2.new(0,5,0,5)
function ColorChooseS()
CG:Remove()
ospcol = CTBo.Text
for i,v in pairs(RoySP:GetChildren()) do
if v:IsA("BasePart") then
v.BrickColor = BrickColor.new(tostring(ospcol))
end
end
end
CTBu.MouseButton1Down:connect(ColorChooseS)
end
S16.MouseButton1Down:connect(SPChange)
S17 = Instance.new("TextButton",BGS)
S17.Text = "Fangs"
S17.Size = UDim2.new(0,50,0,50)
S17.Position = UDim2.new(0,60,0,280)
S17.TextWrap = true
function Fangs()
for i,v in pairs(RoyHF:GetChildren()) do
if v.Transparency ~= 1 then 
v.Transparency = 1
else
v.Transparency = 0
end
end
end
S17.MouseButton1Down:connect(Fangs)
S18 = Instance.new("TextButton",BGS)
S18.Text = "Spikes"
S18.Size = UDim2.new(0,50,0,50)
S18.Position = UDim2.new(0,115,0,280)
S18.TextWrap = true
function Spikes()
for i,v in pairs(RoySP:GetChildren()) do
if v.Transparency ~= 1 then 
v.Transparency = 1
else
v.Transparency = 0
end
end
end
S18.MouseButton1Down:connect(Spikes)
S19 = Instance.new("TextButton",BGS)
S19.Text = "Horns"
S19.Size = UDim2.new(0,50,0,50)
S19.Position = UDim2.new(0,5,0,335)
S19.TextWrap = true
function Horns()
for i,v in pairs(RoyH:GetChildren()) do
if v.Transparency ~= 1 then 
v.Transparency = 1
jlhp1.Transparency = 1
jrhp1.Transparency = 1
else
v.Transparency = 0
jlhp1.Transparency = 0
jrhp1.Transparency = 0
end
end
end
S19.MouseButton1Down:connect(Horns)
S20 = Instance.new("TextButton",BGS)
S20.Text = "Wings"
S20.Size = UDim2.new(0,50,0,50)
S20.Position = UDim2.new(0,60,0,335)
S20.TextWrap = true
function Wings()
for i,v in pairs(RoyLW:GetChildren()) do
if v.Transparency ~= 1 then 
v.Transparency = 1
else
v.Transparency = 0
end
end
for i,v in pairs(RoyRW:GetChildren()) do
if v.Transparency ~= 1 then 
v.Transparency = 1
bin.Parent = game.Lighting
else
v.Transparency = 0
bin.Parent = PN.Backpack
end
end
for i,v in pairs(ww:GetChildren()) do
if v.Transparency ~= 1 then 
v.Transparency = 1
else
v.Transparency = 0
end
end
end
S20.MouseButton1Down:connect(Wings)
CT1 = Instance.new("TextButton",BGW)
CT1.Size = UDim2.new(0,50,0,50)
CT1.Position = UDim2.new(0,5,0,5)
CT1.Text = "2D Roy"
function R2D()
showchat = true
if gm then Glasses() end
for i,s in pairs (Roym:GetChildren()) do
if s:IsA("BasePart") then
s.Transparency = 1
elseif s:IsA("Model") then
for i,n in pairs (s:GetChildren()) do
if n:IsA("BasePart") then
n.Transparency = 1
end
end
wait()
end
end
for i,v in pairs(Roy:GetChildren()) do
        if v:IsA("BasePart") then
                v.Transparency = 1
        end
        if v:IsA("Hat") then
                v.Handle.Transparency = 1
        end
end
Roy.Head.face.Transparency = 1
BGA.Visible = false
BGS.Visible = false
BGE.Visible = false
bin.Parent = Lighting
r2D = Instance.new("Part")
r2D.Parent = Roy.Torso
r2D.BrickColor = BrickColor.new("Bright yellow")
r2D.Transparency = 1
r2D.Size = Vector3.new(1,1,1)
r2D.TopSurface = "Smooth"
r2D.BottomSurface = "Smooth"
r2D.CanCollide = false
r2D.Position = Roy.Torso.Position+Vector3.new(0,0,0)
r2Dm = Instance.new("BlockMesh")
r2Dm.Parent = r2D
r2Dm.Scale = Vector3.new(0.1,5,5)
r2Dw = Instance.new("Weld") 
r2Dw.Part0 = Roy.Torso
r2Dw.Part1 = r2D
r2Dw.Parent = Roy.Torso 
r2Dw.C0 = CFrame.new(0,-0.575,0)
r2DD1 = Instance.new("Decal", r2D)
r2DD1.Face = "Left"
r2DD1.Texture = "http://www.roblox.com/asset/?id=84306326"
r2DD2 = Instance.new("Decal", r2D)
r2DD2.Face = "Right"
r2DD2.Texture = "http://www.roblox.com/asset/?id=84306356"
CT1.Visible = false
CT2.Visible = true
CT3.Visible = true
CT4.Visible = true
end
CT1.MouseButton1Down:connect(R2D)
CT2 = Instance.new("TextButton",BGW)
CT2.Size = UDim2.new(0,50,0,50)
CT2.Position = UDim2.new(0,60,0,5)
CT2.Text = "3D Roy"
CT2.Visible = false
function R3D()
showchat = true
if wide ~= true then
for i = 1,weight do
Roy.Torso["Left Hip"].C0 = Roy.Torso["Left Hip"].C0*CFrame.new(0,0,0.005)
Roy.Torso["Right Hip"].C0 = Roy.Torso["Right Hip"].C0*CFrame.new(0,0,0.005)
end
Roy.Torso["Right Hip"].C0 = Roy.Torso["Right Hip"].C0*CFrame.new(0,0,0.2)
Roy.Torso["Left Hip"].C0 = Roy.Torso["Left Hip"].C0*CFrame.new(0,0,0.2)
end
wide = true
if r2D then
r2D:Remove()
end
for i,s in pairs (Roym:GetChildren()) do
if s:IsA("BasePart") then
s.Transparency = 0
elseif s:IsA("Model") then
for i,n in pairs (s:GetChildren()) do
if n:IsA("BasePart") then
n.Transparency = 0
sd.Transparency = 0.9
hd.Transparency = 0.9
end
end
end
end
for i,v in pairs(Roy:GetChildren()) do
        if v:IsA("BasePart") then
                v.Transparency = 1
        end
        if v:IsA("Hat") then
                v.Handle.Transparency = 1
        end
end
Roy.Head.face.Transparency = 1
BGA.Visible = true
BGS.Visible = true
BGE.Visible = true
CT1.Visible = true
CT2.Visible = false
CT3.Visible = true
CT4.Visible = true
end
CT2.MouseButton1Down:connect(R3D)
CT3 = Instance.new("TextButton",BGW)
CT3.Size = UDim2.new(0,50,0,50)
CT3.Position = UDim2.new(0,115,0,5)
CT3.Text = "Transparent Roy"
CT3.TextWrap = true
function RTP()
showchat = true
if wide ~= true then
for i = 1,weight do
Roy.Torso["Left Hip"].C0 = Roy.Torso["Left Hip"].C0*CFrame.new(0,0,0.005)
Roy.Torso["Right Hip"].C0 = Roy.Torso["Right Hip"].C0*CFrame.new(0,0,0.005)
end
Roy.Torso["Right Hip"].C0 = Roy.Torso["Right Hip"].C0*CFrame.new(0,0,0.2)
Roy.Torso["Left Hip"].C0 = Roy.Torso["Left Hip"].C0*CFrame.new(0,0,0.2)
end
wide = true
if r2D then
r2D:Remove()
end
for i,s in pairs (Roym:GetChildren()) do
if s:IsA("BasePart") then
s.Transparency = .25
elseif s:IsA("Model") then
for i,n in pairs (s:GetChildren()) do
if n:IsA("BasePart") then
n.Transparency = .25
sd.Transparency = 0.9
hd.Transparency = 0.9
end
end
wait()
end
end
for i,v in pairs(Roy:GetChildren()) do
        if v:IsA("BasePart") then
                v.Transparency = 1
        end
        if v:IsA("Hat") then
                v.Handle.Transparency = 1
        end
end
Roy.Head.face.Transparency = 1
BGA.Visible = true
BGS.Visible = true
BGE.Visible = true
CT1.Visible = true
CT2.Visible = true
CT3.Visible = false
CT4.Visible = true
end
CT3.MouseButton1Down:connect(RTP)
CT4 = Instance.new("TextButton",BGW)
CT4.Size = UDim2.new(0,50,0,50)
CT4.Position = UDim2.new(0,170,0,5)
CT4.Text = "Roy's Appearance"
CT4.TextWrap = true
function RAP()
showchat = false
if wide == true then
for i = 1,weight do
Roy.Torso["Left Hip"].C0 = Roy.Torso["Left Hip"].C0*CFrame.new(0,0,-0.005)
Roy.Torso["Right Hip"].C0 = Roy.Torso["Right Hip"].C0*CFrame.new(0,0,-0.005)
end
Roy.Torso["Right Hip"].C0 = Roy.Torso["Right Hip"].C0*CFrame.new(0,0,-0.2)
Roy.Torso["Left Hip"].C0 = Roy.Torso["Left Hip"].C0*CFrame.new(0,0,-0.2)
end
wide = false
if r2D then
r2D:Remove()
end
for i,s in pairs (Roym:GetChildren()) do
if s:IsA("BasePart") then
s.Transparency = 1
elseif s:IsA("Model") then
for i,n in pairs (s:GetChildren()) do
if n:IsA("BasePart") then
n.Transparency = 1
sd.Transparency = 1
hd.Transparency = 1
end
end
end
end
for i,v in pairs(Roy:GetChildren()) do
        if v:IsA("BasePart") then
                v.Transparency = 0
        end
        if v:IsA("Hat") then
                v.Handle.Transparency = 0
        end
end
Roy.Head.face.Transparency = 0
BGA.Visible = true
BGS.Visible = true
BGE.Visible = true
CT1.Visible = true
CT2.Visible = true
CT3.Visible = true
CT4.Visible = false
end
CT4.MouseButton1Down:connect(RAP)
w1 = Instance.new("TextButton") 
w1.Parent = BGE
w1.Size = UDim2.new(0, 50, 0, 50) 
w1.Position = UDim2.new(0, 5, 0, 5) -- To get one right under this do (0, 0, 0, 200) 
w1.Text = "Weight Shift up" 
w1.TextWrap = true
function Weight1()
if weight >= 40 then
return
else
weight = weight+1
bpm0.Scale = bpm0.Scale+Vector3.new(0.005,0.0025,0.005)
bpm1.Scale = bpm1.Scale+Vector3.new(0.005,0.01,0.035)
bpm2.Scale = bpm2.Scale+Vector3.new(0.005,0.01,0.0375)
bpm3.Scale = bpm3.Scale+Vector3.new(0.0075,0.01,0.0525)
bpm4.Scale = bpm4.Scale+Vector3.new(0.01,0.01,0.0575)
bpm5.Scale = bpm5.Scale+Vector3.new(0.0075,0.01,0.055)
bpm6.Scale = bpm6.Scale+Vector3.new(0.01,0.01,0.055)
bpm7.Scale = bpm7.Scale+Vector3.new(0.01,0.01,0.055)
bpm8.Scale = bpm8.Scale+Vector3.new(0.01,0.01,0.055)
bpm9.Scale = bpm9.Scale+Vector3.new(0.01,0.01,0.055)
bm1.Scale = bm1.Scale+Vector3.new(0.01,0,0.01)
bm6.Scale = bm6.Scale+Vector3.new(0,0.01,0.055)
bw1.C0 = bw1.C0*CFrame.new(0,0,-0.001)
bw6.C0 = bw6.C0*CFrame.new(0,-0.001,-0.0055)
bpw0.C0 = bpw0.C0*CFrame.new(0,-0.001,-0.00325)
bpw1.C0 = bpw1.C0*CFrame.new(0,-0.0025,-0.003)
bpw2.C0 = bpw2.C0*CFrame.new(0,-0.0025,-0.00375)
bpw3.C0 = bpw3.C0*CFrame.new(0,-0.0025,-0.00525)
bpw4.C0 = bpw4.C0*CFrame.new(0,-0.0025,-0.00575)
bpw5.C0 = bpw5.C0*CFrame.new(0,-0.0025,-0.0055)
bpw6.C0 = bpw6.C0*CFrame.new(0,-0.0025,-0.0055)
bpw7.C0 = bpw7.C0*CFrame.new(0,-0.0025,-0.0055)
bpw8.C0 = bpw8.C0*CFrame.new(0,-0.0025,-0.0055)
bpw9.C0 = bpw9.C0*CFrame.new(0,-0.0025,-0.0055)
jm1.Scale = jm1.Scale+Vector3.new(0.015,0.015,0.015)
jm2.Scale = jm2.Scale+Vector3.new(0.015,0.015,0.015)
jm3.Scale = jm3.Scale+Vector3.new(0.015,0.015,0.015)
jm4.Scale = jm4.Scale+Vector3.new(0.015,0.015,0.015)
jw1.C0 = jw1.C0*CFrame.new(0.0015,0,0)
jw2.C0 = jw2.C0*CFrame.new(-0.0015,0,0)
Roy.Humanoid.WalkSpeed = Roy.Humanoid.WalkSpeed-0.1
Roy.Torso["Left Hip"].C0 = Roy.Torso["Left Hip"].C0*CFrame.new(0,0,0.005)
Roy.Torso["Right Hip"].C0 = Roy.Torso["Right Hip"].C0*CFrame.new(0,0,0.005)
for s = 1,28 do
getfenv(1)["tm"..s].Scale = getfenv(1)["tm"..s].Scale+Vector3.new(0.01,0,0.01)
end
for b = 13,36 do
getfenv(1)["bpm"..b].Scale = getfenv(1)["bpm"..b].Scale+Vector3.new(0.0075,0,0.0075)
end
print(Roy.Humanoid.WalkSpeed)
end
end 
w1.MouseButton1Down:connect(Weight1)
w2 = Instance.new("TextButton") 
w2.Parent = BGE
w2.Size = UDim2.new(0, 50, 0, 50) 
w2.Position = UDim2.new(0, 60, 0, 5) -- To get one right under this do (0, 0, 0, 200) 
w2.Text = "Weight Shift down" 
w2.TextWrap = true
function Weight2()
if weight <= 0 then
return
else
weight = weight-1
bpm1.Scale = bpm1.Scale+Vector3.new(-0.005,0,-0.035)
bpm2.Scale = bpm2.Scale+Vector3.new(-0.005,0,-0.0375)
bpm3.Scale = bpm3.Scale+Vector3.new(-0.0075,0,-0.0525)
bpm4.Scale = bpm4.Scale+Vector3.new(-0.0075,0,-0.0575)
bpm5.Scale = bpm5.Scale+Vector3.new(-0.0075,0,-0.055)
bpm6.Scale = bpm6.Scale+Vector3.new(-0.01,0,-0.055)
bpm7.Scale = bpm7.Scale+Vector3.new(-0.01,0,-0.055)
bpm8.Scale = bpm8.Scale+Vector3.new(-0.01,0,-0.055)
bpm9.Scale = bpm9.Scale+Vector3.new(-0.01,0,-0.055)
bm1.Scale = bm1.Scale+Vector3.new(-0.01,0,-0.01)
bm6.Scale = bm6.Scale+Vector3.new(0,-0.005,-0.055)
bw1.C0 = bw1.C0*CFrame.new(0,0,0.001)
bw6.C0 = bw6.C0*CFrame.new(0,0.001,0.0055)
bpw0.C0 = bpw0.C0*CFrame.new(0,0.001,0.0035)
bpw1.C0 = bpw1.C0*CFrame.new(0,0.0025,0.003)
bpw2.C0 = bpw2.C0*CFrame.new(0,0.0025,0.00375)
bpw3.C0 = bpw3.C0*CFrame.new(0,0.0025,0.00525)
bpw4.C0 = bpw4.C0*CFrame.new(0,0.0025,0.00575)
bpw5.C0 = bpw5.C0*CFrame.new(0,0.0025,0.0055)
bpw6.C0 = bpw6.C0*CFrame.new(0,0.0025,0.0055)
bpw7.C0 = bpw7.C0*CFrame.new(0,0.0025,0.0055)
bpw8.C0 = bpw8.C0*CFrame.new(0,0.0025,0.0055)
bpw9.C0 = bpw9.C0*CFrame.new(0,0.0025,0.0055)
jm1.Scale = jm1.Scale+Vector3.new(-0.015,-0.015,-0.015)
jm2.Scale = jm2.Scale+Vector3.new(-0.015,-0.015,-0.015)
jm3.Scale = jm3.Scale+Vector3.new(-0.015,-0.015,-0.015)
jm4.Scale = jm4.Scale+Vector3.new(-0.015,-0.015,-0.015)
jw1.C0 = jw1.C0*CFrame.new(-0.0015,0,0)
jw2.C0 = jw2.C0*CFrame.new(0.0015,0,0)
Roy.Humanoid.WalkSpeed = Roy.Humanoid.WalkSpeed+0.1
Roy.Torso["Left Hip"].C0 = Roy.Torso["Left Hip"].C0*CFrame.new(0,0,-0.005)
Roy.Torso["Right Hip"].C0 = Roy.Torso["Right Hip"].C0*CFrame.new(0,0,-0.005)
for s = 1,28 do
getfenv(1)["tm"..s].Scale = getfenv(1)["tm"..s].Scale+Vector3.new(-0.01,0,-0.01)
end
for b = 13,36 do
getfenv(1)["bpm"..b].Scale = getfenv(1)["bpm"..b].Scale+Vector3.new(-0.005,0,-0.005)
end
print(Roy.Humanoid.WalkSpeed)
end
end 
w2.MouseButton1Down:connect(Weight2)
function onChatted(msg)
if showchat == true then
game:GetService("Chat"):Chat(Roy.Head, tostring(msg))
for i  = 1,2 do
for i = 0, 4 do
hw8.C0 = hw8.C0*CFrame.new(0,0.0149,0)
hw9.C0 = hw9.C0*CFrame.new(0,-0.0249,0)*CFrame.Angles(math.rad(-2.5),0,0)
wait(0.015)
end
for i = 0, 4 do
hw8.C0 = hw8.C0*CFrame.new(0,-0.0149,0)
hw9.C0 = hw9.C0*CFrame.new(0,0.0249,0)*CFrame.Angles(math.rad(2.5),0,0)
wait(0.015)
end
hw9.C0 = CFrame.new(0,-0.85,-1.25)
hw8.C0 = CFrame.new(0,-0.5,-1.4)
end
wait()
end
end
PN.Chatted:connect(onChatted)
for i,c in pairs (Roy:GetChildren()) do
if c:IsA("BasePart") then
c.Touched:connect(function(hit) 
if kill == true and not hit:IsDescendantOf(Roy) and game.Players:GetPlayerFromCharacter(hit.Parent) then 
hit.Parent:BreakJoints()
sm.Name = "Dragon"
nm.Name = name
end end)
end
end
--mediafire
Torso = Roy.Torso 
Head = Roy.Head 
LeftArm = Roy["Left Arm"] 
LeftLeg = Roy["Left Leg"] 
RightArm = Roy["Right Arm"] 
RightLeg = Roy["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
char = Torso
fly = false
land = false
airborne = false 
equipped = false
mode = "Nothing" 
winganim = false
anim = "Nothing"
wait() 
bpos = Instance.new("BodyPosition") 
gyro = Instance.new("BodyGyro") 
gyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bpos.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
fly = false 
char = Torso
airborne = false 
right = false
function click(mouse) 
equipped = true
if airborne == true then
fly = true 
RS.C0 = RS.C0*CFrame.new(0,.5,0)*CFrame.Angles(math.rad(180),math.rad(180),0)
LS.C0 = LS.C0*CFrame.new(0,.5,0)*CFrame.Angles(math.rad(180),math.rad(-180),0)
LH.C0 = LH.C0*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(-45))
RH.C0 = RH.C0*CFrame.new(0,0,-0)*CFrame.Angles(0,0,math.rad(45))
tw1.C0 = tw1.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(10),0,0)
for i = 2,28 do
getfenv(1)["tw"..i].C0 = getfenv(1)["tw"..i].C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(.5),0,0)
end
while fly and selected do 
pos = mouse.Hit.p
bpos.position = Torso.Position + (pos-Torso.Position).unit * power 
gyro.cframe = CFrame.new(Torso.Position,pos) * CFrame.Angles(-1.5,0,0) 
wait(0.1)
end 
RS.C0 = RS.C0*CFrame.new(0,.5,0)*CFrame.Angles(math.rad(180),math.rad(-180),0)
LS.C0 = LS.C0*CFrame.new(0,.5,0)*CFrame.Angles(math.rad(180),math.rad(180),0)
LH.C0 = LH.C0*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(45))
RH.C0 = RH.C0*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(-45))
tw1.C0 = tw1.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-10),0,0)
tw2.C0 = tw2.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw3.C0 = tw3.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw4.C0 = tw4.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw5.C0 = tw5.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw6.C0 = tw6.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw7.C0 = tw7.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw8.C0 = tw8.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw9.C0 = tw9.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw10.C0 = tw10.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw11.C0 = tw11.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw12.C0 = tw12.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw13.C0 = tw13.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw14.C0 = tw14.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw15.C0 = tw15.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw16.C0 = tw16.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw17.C0 = tw17.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw18.C0 = tw18.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw19.C0 = tw19.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw20.C0 = tw20.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw21.C0 = tw21.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw22.C0 = tw22.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw23.C0 = tw23.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw24.C0 = tw24.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw25.C0 = tw25.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw26.C0 = tw26.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw27.C0 = tw27.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
tw28.C0 = tw28.C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.5),0,0)
Torso.CFrame= Torso.CFrame+Vector3.new(0,-0.2,0)
end
end 
function clickrelease(mouse) 
if airborne == true then
fly = false 
end
end 
function keydown(key)
if key == "f" then
if equipped == false then
equipped = true
Roy.Humanoid.PlatformStand = true
Roy.Torso.Velocity = Vector3.new(0,100,0)
wait(0.5)
if Roy.Animate then
Roy.Animate.Disabled = true
end
RS.CurrentAngle = 0
LS.CurrentAngle = 0
LH.CurrentAngle = 0
RH.CurrentAngle = 0
wbw1.C0 = wbw1.C0*CFrame.new(-0,0,0)*CFrame.Angles(0,math.rad(-40),0)
wbw2.C0 = wbw2.C0*CFrame.new(-0,0,0)*CFrame.Angles(0,math.rad(40),0)
tw1.C0 = tw1.C0*CFrame.new(0,0,-0.05)*CFrame.Angles(math.rad(5),0,0)
tw2.C0 = tw2.C0*CFrame.new(0,0,-0.05)*CFrame.Angles(math.rad(5),0,0)
tw3.C0 = tw3.C0*CFrame.new(0,0,-0.05)*CFrame.Angles(math.rad(5),0,0)
tw4.C0 = tw4.C0*CFrame.new(0,0,-0.05)*CFrame.Angles(math.rad(5),0,0)
tw5.C0 = tw5.C0*CFrame.new(0,0,-0.05)*CFrame.Angles(math.rad(5),0,0)
tw6.C0 = tw6.C0*CFrame.new(0,0,-0.05)*CFrame.Angles(math.rad(5),0,0)
tw7.C0 = tw7.C0*CFrame.new(0,0,-0.05)*CFrame.Angles(math.rad(5),0,0)
tw8.C0 = tw8.C0*CFrame.new(0,0,-0.05)*CFrame.Angles(math.rad(5),0,0)
tw9.C0 = tw9.C0*CFrame.new(0,0,-0.05)*CFrame.Angles(math.rad(5),0,0)
tw10.C0 = tw10.C0*CFrame.new(0,0,-0.05)*CFrame.Angles(math.rad(5),0,0)
tw11.C0 = tw11.C0*CFrame.new(0,0,-0.025)*CFrame.Angles(math.rad(5),0,0)
tw12.C0 = tw12.C0*CFrame.new(0,0,-0.025)*CFrame.Angles(math.rad(5),0,0)
tw13.C0 = tw13.C0*CFrame.new(0,0,-0.025)*CFrame.Angles(math.rad(5),0,0)
tw14.C0 = tw14.C0*CFrame.new(0,0,-0.025)*CFrame.Angles(math.rad(5),0,0)
tw15.C0 = tw15.C0*CFrame.new(0,0,-0.025)*CFrame.Angles(math.rad(5),0,0)
tw16.C0 = tw16.C0*CFrame.new(0,0,-0.025)*CFrame.Angles(math.rad(4),0,0)
tw17.C0 = tw17.C0*CFrame.new(0,0,-0.025)*CFrame.Angles(math.rad(4),0,0)
tw18.C0 = tw18.C0*CFrame.new(0,0,-0.025)*CFrame.Angles(math.rad(4),0,0)
tw19.C0 = tw19.C0*CFrame.new(0,0,-0.025)*CFrame.Angles(math.rad(4),0,0)
tw20.C0 = tw20.C0*CFrame.new(0,0,-0.025)*CFrame.Angles(math.rad(3),0,0)
tw21.C0 = tw21.C0*CFrame.new(0,0,-0.025)*CFrame.Angles(math.rad(3),0,0)
tw22.C0 = tw22.C0*CFrame.new(0,0,-0.025)*CFrame.Angles(math.rad(3),0,0)
tw23.C0 = tw23.C0*CFrame.new(0,0,-0.025)*CFrame.Angles(math.rad(3),0,0)
tw24.C0 = tw24.C0*CFrame.new(0,0,-0.025)*CFrame.Angles(math.rad(2),0,0)
tw25.C0 = tw25.C0*CFrame.new(0,0,-0.025)*CFrame.Angles(math.rad(2),0,0)
tw26.C0 = tw26.C0*CFrame.new(0,0,-0.025)*CFrame.Angles(math.rad(2),0,0)
tw27.C0 = tw27.C0*CFrame.new(0,0,-0.025)*CFrame.Angles(math.rad(2),0,0)
tw28.C0 = tw28.C0*CFrame.new(0,0,-0.025)*CFrame.Angles(math.rad(1),0,0)
hw1.C0 = hw1.C0*CFrame.new(0,0.5,0.55)*CFrame.Angles(math.rad(35),0,0)
mode = "fly"
bpos = Instance.new("BodyPosition") 
gyro = Instance.new("BodyGyro") 
gyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bpos.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
airborne = true 
bpos.Parent = Torso
bpos.position = Torso.Position + Vector3.new(0,5,0)
gyro.Parent = Torso
winganim = true
while airborne do
if winganim then
for i = 1,5 do
wbw1.C0 = wbw1.C0*CFrame.new(-0,0,0)*CFrame.Angles(0,math.rad(-10),0)
wbw2.C0 = wbw2.C0*CFrame.new(-0,0,0)*CFrame.Angles(0,math.rad(10),0)
for k = 1,28 do
getfenv(1)["tw"..k].C0= getfenv(1)["tw"..k].C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(.2),0,0)
end
Torso.CFrame= Torso.CFrame+Vector3.new(0,0.2,0)
wait(0.05)
end
for i = 1,5 do
wbw1.C0 = wbw1.C0*CFrame.new(-0,0,0)*CFrame.Angles(0,math.rad(10),0)
wbw2.C0 = wbw2.C0*CFrame.new(-0,0,0)*CFrame.Angles(0,math.rad(-10),0)
for j = 1,28 do
getfenv(1)["tw"..j].C0= getfenv(1)["tw"..j].C0*CFrame.new(0,0,0)*CFrame.Angles(math.rad(-.2),0,0)
end
Torso.CFrame= Torso.CFrame+Vector3.new(0,-0.2,0)
wait(0.05)
end
end
wait()
end
winganim = false
fly = false
wait(.1)
mode = "land"
if Roy.Animate then
Roy.Animate.Disabled = false
end
gyro.Parent = nil
Roy.Humanoid.PlatformStand = false
for i = 1, 20 do 
bpos.position = Roy.Torso.Position+Vector3.new(0,-0.3,0) 
wait() 
end 
bpos.Parent = nil
wbw1.C0 = CFrame.new(-0.3,0.3,0.225)*CFrame.Angles(math.rad(35),0,0)
wbw2.C0 = CFrame.new(0.3,0.3,0.225)*CFrame.Angles(math.rad(35),0,0)
tw1.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(315),0,0)
tw2.C0 = CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0)
tw3.C0 = CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0)
tw4.C0 = CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0)--300 mark
tw5.C0 = CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0)
tw6.C0 = CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0)
tw7.C0 = CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0)
tw8.C0 = CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0)
tw9.C0 = CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0)
tw10.C0 = CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0)
tw11.C0 = CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0)
tw12.C0 = CFrame.new(0,-0.25,0)*CFrame.Angles(math.rad(-2.5),0,0)
tw13.C0 = CFrame.new(0,-0.25,-0)*CFrame.Angles(math.rad(-2.5),0,0)
tw14.C0 = CFrame.new(0,-0.25,-0)*CFrame.Angles(math.rad(-2.5),0,0)
tw15.C0 = CFrame.new(0,-0.25,-0)*CFrame.Angles(math.rad(-2.5),0,0)
tw16.C0 = CFrame.new(0,-0.25,-0)*CFrame.Angles(math.rad(-2.5),0,0)
tw17.C0 = CFrame.new(0,-0.25,-0)*CFrame.Angles(math.rad(-2.5),0,0)
tw18.C0 = CFrame.new(0,-0.25,-0)*CFrame.Angles(math.rad(-2.5),0,0)
tw19.C0 = CFrame.new(0,-0.25,-0)*CFrame.Angles(math.rad(-2.5),0,0)
tw20.C0 = CFrame.new(0,-0.25,-0)
tw21.C0 = CFrame.new(0,-0.25,-0)
tw22.C0 = CFrame.new(0,-0.25,-0)
tw23.C0 = CFrame.new(0,-0.25,-0)
tw24.C0 = CFrame.new(0,-0.25,-0)
tw25.C0 = CFrame.new(0,-0.25,-0)
tw26.C0 = CFrame.new(0,-0.25,-0)
tw27.C0 = CFrame.new(0,-0.25,-0)
tw28.C0 = CFrame.new(0,-0.25,-0)
hw1.C0 = CFrame.new(0,1.25,-0.35)
end
end
if key == "e" then
equipped = false
gyro.cframe = CFrame.new(0,0,0) 
wait(1)
airborne = false
end
end
function onSelected(mouse) 
selected = true
mouse.Button1Down:connect(oc(function() click(mouse) end)) 
mouse.Button1Up:connect(oc(function() clickrelease(mouse) end))
mouse.KeyDown:connect(oc(keydown))
end 
function onDeselected(mouse) 
selected = false
equipped = false
wait(1)
if not selected then
airborne = false 
end
end 
bin.Selected:connect(oc(onSelected)) 
bin.Deselected:connect(oc(onDeselected))
 