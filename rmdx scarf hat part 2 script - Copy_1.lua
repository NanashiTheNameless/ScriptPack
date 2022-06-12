Player = game:GetService("Players").luxulux

Character = Player.Character 

PlayerGui = Player.PlayerGui 

Backpack = Player.Backpack 

Torso = Character.Torso 

Head = Character.Head 

LeftArm = Character["Left Arm"] 

LeftLeg = Character["Left Leg"] 

RightArm = Character["Right Arm"] 

RightLeg = Character["Right Leg"] 

walking=false

script.Parent=Character

if Character:findFirstChild("Armor",true) ~= nil then 

Character:findFirstChild("Armor",true).Parent = nil 

end 

Humanoid = Character.Humanoid

v3 = Vector3.new cf = CFrame.new ca = CFrame.Angles it = Instance.new

 

function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)

local fp = it("Part")

fp.formFactor = formfactor 

fp.Parent = parent

fp.Reflectance = reflectance

fp.Transparency = transparency

fp.CanCollide = false 

fp.BrickColor = brickcolor

fp.Name = name

fp.Size = size

fp.Position = Torso.Position 

fp.BottomSurface="Smooth"

fp.TopSurface="Smooth"

fp:BreakJoints()

return fp 

end 

function mesh(Mesh,part,meshtype,meshid,offset,scale)

local mesh = it(Mesh) 

mesh.Parent = part

if Mesh=="SpecialMesh" then

mesh.MeshType = meshtype

mesh.MeshId = meshid

end

mesh.Offset=offset

mesh.Scale=scale

return mesh

end

--EfPart = part(1,modelzorz,0,1,BrickColor.new("Derp"),"EffectPart",v3(1,1,1))

local modelzorz = it("Model") 

modelzorz.Name = "Armor" --ButtSexwashere/irmdx

modelzorz.Parent = Character 

scarfp1=part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"ScarfPart1",v3(1,1,1))

scarfp2=part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"ScarfPart2",v3(1,1,1))

scarfm1=mesh("SpecialMesh",scarfp1,"Head","",v3(0,0,0),v3(1.5,0.6,1.5))

scarfm2=mesh("CylinderMesh",scarfp2,"","",v3(0,0,0),v3(0.5,2,0.5))

local weld1 = it("Weld") 

weld1.Parent = scarfp1

weld1.Part0 = scarfp1

weld1.Part1 = Torso

weld1.C0 = ca(0,0,0) * cf(0,-1,0) 

local weld2 = it("Weld") 

weld2.Parent = scarfp2

weld2.Part0 = scarfp2

weld2.Part1 = scarfp1

weld2.C0 = cf(0,1,-0.5) * ca(0,0,0)

coroutine.resume(coroutine.create(function()

while true do

wait()

if 1+1 == 2 then --if Torso.Velocity.magnitude > 1 then 

print()

walking=true

if walking==true then local herpderp = Torso.Velocity.magnitude*3 if herpderp > 90 and not Humanoid.Jump  then herpderp = 90 end 

weld2.C0 = cf(0,1,-0.5) * ca(math.rad(herpderp),0,0) 

weld2.C1 = ca(0,math.rad(Torso.Velocity.Z/2),0)

end

end

end

end))

-- Iego 