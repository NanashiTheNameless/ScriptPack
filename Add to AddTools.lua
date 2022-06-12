Item = "M1 Garand"
_G.Weapons = _G.Weapons or {}
_G.Weapons[Item] = game:GetService("Players").DarkShadow6.Backpack[Item].Main:Clone()
_G.Weapons[Item].Disabled = true
if _G.Weapons[Item]:FindFirstChild("Player") == nil then Instance.new("ObjectValue", _G.Weapons[Item]).Name = "Player" end