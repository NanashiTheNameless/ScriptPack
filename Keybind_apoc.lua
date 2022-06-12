----Varibles
local p = game.Players.LocalPlayer
local mouse = p:GetMouse()
local char = p.Character
----Changeable data
Gunname = "M4A1" -- Use for No recoil hack
carspeed = 200 -- Onroad speed
offroadspeed = 200 -- offroad speed
----Commands
--l = No recoil
--j = Killall
--h = 100000 health
--c = Car speed
--x = Nofog
--z = Gravity
----Credits
--Droopy (Creator)
--Reborn (Lua lord)
-----As always. Do not touch unless you wanna be fucked
mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "j" then
  for i, v in pairs(game.Players:GetPlayers()) do
  game.Lighting.Remote.AddHealth:FireServer(v.Character.Humanoid, -100)
  end
    end
end)

mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "h" then
  game.Lighting.Remote.AddHealth:FireServer(char.Humanoid +100000)
    end
end)

mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "l" then
       local plr = game.Players.LocalPlayer.Backpack(Gunname)
plr.Stats.Recoil.Value = 0
plr.Stats.Accuracy.Value = 0
plr.Stats.Offset.Value = 0
    end
end)
mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "c" then
local MaxSpeed = carspeed

for i,v in pairs(workspace.Vehicles:GetChildren()) do

if v.Name ~= 'VehicleWreck' then

v.Stats.MaxSpeed.Value = MaxSpeed

v.Stats.MaxSpeed.Offroad.Value = MaxSpeed

end
end
    end
end)

mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "x" then
  game.Lighting.FogEnd = 1000000
    end
end)

mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "z" then
  game.Workspace.Gravity = 50
    end
end)
