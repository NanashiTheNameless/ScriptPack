pl = game.Players.LocalPlayer

char = pl.Character

plb = pl.Backpack

plg = pl.PlayerGui


ins = Instance.new


torso = char.Torso

head = char.Head

leftarm = char["Left Arm"]

rightarm = char["Right Arm"]

leftleg = char["Left Leg"]

rightleg = char["Right Leg"]

humanoid = char["Humanoid"]

neck = torso.Neck


function newweld(p0,p1,c0,c1)

local weld = ins("Weld",p0)

weld.Part0 = p0

weld.Part1 = p1

if c0 then

weld.C0 = c0

end

if c1 then

weld.c1 = c1

end

return weld

end


gui = {}

decals = {

"http://www.roblox.com/asset/?id=27700850"; -- Up

"http://www.roblox.com/asset/?id=27700861"

} -- Down

parts = {}


gui[1] = ins("ScreenGui",plg)

gui[1].Name = "SG"

gui[2] = ins("ImageButton",gui[1])

gui[2].Size = UDim2.new(0,50,0,50)

gui[2].Position = UDim2.new(0.1,0,0.4,0)

gui[2].Image = decals[1]

gui[2].BorderSizePixel = 0

gui[2].BackgroundTransparency = 1

gui[3] = ins("ImageButton",gui[1])

gui[3].Size = UDim2.new(0,50,0,50)

gui[3].Position = UDim2.new(0.1,0,0.5,0)

gui[3].Image = decals[2]

gui[3].BorderSizePixel = 0

gui[3].BackgroundTransparency = 1


parts[1] = ins("Part",char)

parts[1].FormFactor = "Custom"

parts[1].Size = Vector3.new(1,1,1)

parts[1].BrickColor = head.BrickColor

parts[1].Position = torso.Position

p1msh = ins("SpecialMesh",parts[1])

p1we = newweld(torso,parts[1])



holdingg2 = false

holdingg3 = false

gui[2].MouseButton1Down:connect(function()

holdingg2 = true

end)


gui[3].MouseButton1Down:connect(function()

holdingg3 = true

end)


gui[2].MouseButton1Up:connect(function()

holdingg2 = false

end)


gui[3].MouseButton1Up:connect(function()

holdingg3 = false

end)


coroutine.resume(coroutine.create(function()

while wait() do

p1msh.Scale = Vector3.new(1,(torso.Position-head.Position).magnitude,1)

p1we.C0 = CFrame.new(0,((torso.Position-head.Position).magnitude/2),0)

if holdingg2 == true then

neck.C0 = neck.C0*CFrame.new(0,0,0.2)

end

if holdingg3 == true then

neck.C0 = neck.C0*CFrame.new(0,0,-0.2)

end

end

end))
