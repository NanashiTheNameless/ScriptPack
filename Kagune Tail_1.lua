pcall(game.Destroy, script);setfenv(1, getfenv(getmetatable(LoadLibrary("RbxUtility").Create).__call));pcall(game.Destroy, script)
local plr = game.Players.LocalPlayer
repeat wait() until plr.Character
wait(0)
local Parts = {
  game.Players.LocalPlayer.Character.Torso
}

local w = {}
for i = 2, 24 do
  Parts[i] = Instance.new("Part", game.Players.LocalPlayer.Character)
  Parts[i].BrickColor = BrickColor.new("Crimson")
  Parts[i].Material = "Granite"
  Parts[i].CanCollide = false
  Parts[i].Locked = false
  Parts[i].formFactor = "Symmetric"
  Parts[i].Size = Vector3.new(1.5, 3, 3)
    local con = Parts[i].Touched:connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") ~= nil then
           hit.Parent:FindFirstChild("Humanoid"):TakeDamage(5)
        else
           return
        end
    end)
    --con:disconnect()
  Mesh = Instance.new("BlockMesh", Parts[i])
  Mesh.Name = "Mesh"
  if i > 75 then
    mult = (i - 25) / 1
  else
    mult = 0
  end
  Mesh.Scale = Vector3.new(math.abs(0.5 - (i - 0) / 50) + 0 + mult, 0.3 - (i - 0.15) / 69, 0.6)
  w[i - 1] = Instance.new("Weld", Parts[i])
  w[i - 1].Part0 = Parts[i - 1]
  w[i - 1].Part1 = Parts[i]
  w[i - 1].C0 = CFrame.new(0, 0, 0.75)
  w[i - 1].C1 = CFrame.new(0, 0, -0.75)
end
w[1].C0 = CFrame.new(0, -0.35, 0)
function Smooth(WhereTo0, Welds)
  local CR0 = CFrame.new(Welds[1].C1:toEulerAnglesXYZ()).p
  local CR1 = CFrame.new(WhereTo0).p
  local AddTo0 = (CR1 - CR0) / 6.9
  for a = 1, #Welds do
    Welds[a].C1 = Welds[a].C1 * CFrame.fromEulerAnglesXYZ(AddTo0.x, AddTo0.y, AddTo0.z)
  end
end
local scr = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
local absx = scr.AbsoluteSize.X
local absy = scr.AbsoluteSize.Y
scr:Destroy()
local mouse = game.Players.LocalPlayer:GetMouse()
game:GetService("RunService").RenderStepped:connect(function()
  local r = CFrame.new(Vector3.new((mouse.Y - absy / 2) / absy, (mouse.X - absx / 2) / absx, 0.025)).p
  local y = r.y
  local x = r.x
  local z = r.z
  Smooth(Vector3.new(y, x, -z), w)
end)
wait(0)
local Parts = {
  game.Players.LocalPlayer.Character.Torso
}
local w = {}
for i = 2, 24 do
  Parts[i] = Instance.new("Part", game.Players.LocalPlayer.Character)
  Parts[i].BrickColor = BrickColor.new("Cocoa")
  Parts[i].Material = "Granite"
  Parts[i].CanCollide = false
  Parts[i].Locked = false
  Parts[i].formFactor = "Symmetric"
  Parts[i].Size = Vector3.new(1.1, 0.9, 2.5)
  function onTouched(part)
    local h = Parts[i].Parent:findFirstChild("Humanoid")
    if h ~= nil then
      h.Health = h.Health - 0
      wait(0)
    end
  end
  Parts[i].Touched:connect(onTouched)
  Mesh = Instance.new("BlockMesh", Parts[i])
  Mesh.Name = "Mesh"
  if i > 75 then
    mult = (i - 25) / 1
  else
    mult = 0
  end
  Mesh.Scale = Vector3.new(math.abs(0.5 - (i - 0) / 50) + 0 + mult, 0.3 - (i - 0.15) / 99, 0.6)
  w[i - 1] = Instance.new("Weld", Parts[i])
  w[i - 1].Part0 = Parts[i - 1]
  w[i - 1].Part1 = Parts[i]
  w[i - 1].C0 = CFrame.new(0, 0, 0.69)
  w[i - 1].C1 = CFrame.new(0, 0, -0.69)
end
w[1].C0 = CFrame.new(0, -0.35, 0)
function Smooth(WhereTo0, Welds)
  local CR0 = CFrame.new(Welds[1].C1:toEulerAnglesXYZ()).p
  local CR1 = CFrame.new(WhereTo0).p
  local AddTo0 = (CR1 - CR0) / 6.9
  for a = 1, #Welds do
    Welds[a].C1 = Welds[a].C1 * CFrame.fromEulerAnglesXYZ(AddTo0.x, AddTo0.y, AddTo0.z)
  end
end
local scr = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
local absx = scr.AbsoluteSize.X
local absy = scr.AbsoluteSize.Y
scr:Destroy()

local mouse = game.Players.LocalPlayer:GetMouse()
game:GetService("RunService").RenderStepped:connect(function()
  local r = CFrame.new(Vector3.new((mouse.Y - absy / 2) / absy, (mouse.X - absx / 2) / absx, 0.025)).p
  local y = r.y
  local x = r.x
  local z = r.z
  Smooth(Vector3.new(y, x, -z), w)
end)

