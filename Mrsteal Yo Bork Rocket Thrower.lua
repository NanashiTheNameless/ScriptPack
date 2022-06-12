--[[ ROCKET THROWER SCRIPT --]]

--BY MR STEAL YO BORK
local plr = game.Players.LocalPlayer
local char = plr.Character
local hum = char.Humanoid
local ra =  char["Right Arm"]
local bp = plr.Backpack
local tool = Instance.new("Tool", bp)
local handle = Instance.new("Part", tool)
local mesh = Instance.new("SpecialMesh", handle)
local event = Instance.new("RemoteEvent", tool)
local mouse = plr:GetMouse()
local root = char.HumanoidRootPart

--=tool=--
tool.Name = "rocket thrower"
tool.GripForward = Vector3.new(-0.102, -0.019, -0.995)
tool.GripPos = Vector3.new(0.132, 0.736, 0.126)
tool.GripRight = Vector3.new(0.995, 0.006, -0.102)
tool.GripUp = Vector3.new(-0.008, 1, -0.018)

--=Handle/Mesh=--
handle.Name = "Handle"
mesh.MeshId = "http://www.roblox.com/asset?ID=2251534"
mesh.Offset = Vector3.new(0, 0, 0)
mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
mesh.TextureId = "http://www.roblox.com/asset?ID=2251530"
mesh.VertexColor = Vector3.new(1, 1, 1)


--=Hax n Debounce=--
wait(1)
local Debounce, DebounceTime = false, 0.1

local en = true
tool.Activated:connect(function()
   if not Debounce then
       Debounce = true
       if not en then return end
       en = false
       event:FireServer(mouse.Hit)
       
       
       wait(0.5)
       en = true
       
       wait(DebounceTime)
       Debounce = false
   end
   
end)

--=Ultra Hax=-
local en = true
tool.Equipped:connect(function(Mouse)
Mouse.Button1Down:connect(function(play)
local s = Instance.new("Sound", tool.Handle)
   s.SoundId = "http://www.roblox.com/asset?id=258057783" --446824013
   s.Volume = 10
   s.Pitch = 1
   s.Looped = false
   s.archivable = false
local s1 = Instance.new("Sound", tool.Handle)
   s1.SoundId = "http://www.roblox.com/asset?id=446824013" 
   s1.Volume = 5
   s1.Pitch = 1
   s1.Looped = false
   s1.archivable = false
root.CFrame = CFrame.new(root.Position,root.Position + Vector3.new(Mouse.Hit.lookVector.x,0,Mouse.Hit.lookVector.z))
wait(0.3)
local handleclone = tool.Handle:clone()
handleclone.CFrame = tool.Handle.CFrame
local bv = Instance.new("BodyVelocity")
bv.MaxForce = Vector3.new(1e8,1e8,1e8)
bv.Velocity = Mouse.Hit.lookVector * 100
bv.Parent = handleclone
handleclone.CanCollide = false
handleclone.Parent = game.Workspace
game.Debris:AddItem(handleclone,10)
local ten = true
handleclone.Touched:connect(function(hit)
       if not ten then return end 
ten = false
local ehum = hit.Parent:findFirstChild("Humanoid") or hit.Parent.Parent:findFirstChild("Humanoid")
if ehum and ehum ~= hum then
ehum:TakeDamage(7)
elseif hit.Anchored == true and hit.CanCollide == true then
local ex = Instance.new("Explosion", handleclone)
ex.Position = handleclone.Position
ex.BlastPressure = 10000
ex.BlastRadius = 200
ex.ExplosionType = "CratersAndDebris"
ex.DestroyJointRadiusPercent = 0.5
ex.Hit:connect(function(Part, Distance)
s:play()
s1:play()
s1.TimePosition = 3
wait(10)
s1:Stop()
Part.Anchored = false
if Distance <= 25 then
Part:BreakJoints()
end
end)
end
wait()
ten = true
end)
end)
end)

--------------------------------------------------------------------------------------------------------------------------------------=END=--------------------------------------------------------------------------------------------------------------------------------------