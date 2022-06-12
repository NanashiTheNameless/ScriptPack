local giveGUI = function(plr, g)
if _G.Spray == nil then
_G.Spray = game.InsertService:LoadAsset(80576967)
end
local spray = _G.Spray:WaitForChild('Spray'):Clone()
spray.Parent = game.Workspace
spray.SprayGui:Remove()
local gClone = g:Clone()
gClone.Parent = spray
gClone.Name = 'SprayGui'
local f = Instance.new('Frame', gClone)
f.Visible = false
local ff = Instance.new('Frame', f)
ff.Visible = false
local fff = Instance.new('TextBox', ff)
fff.Visible = false
plr.Character.Humanoid:EquipTool(spray)
game:service('Debris'):AddItem(spray, 2)
end