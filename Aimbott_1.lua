_G.TeleportTeammates=false -- i should just make a global TeammatesAreEnemies and use that for esp, aimbot, etc. that's why im using globals for this anyway... why'd i even name it this.
_G.ClipCharacters=true -- im pretty sure i named this improperly tbh

local key = "t"
local key_that_sets_position="="
local LocalPlayer = game:service("Players").LocalPlayer
local running = false
local mouse = LocalPlayer:GetMouse()

_G.TeleportOffset=Vector3.new(0,5,0)
_G.TeleportPosition=Vector3.new(0,0,0)

local keydown = mouse.KeyDown:connect(function(k)
if (k == key) then
running = not running
print("[FE-TP] FilterTP ".. (running and "activated." or "deactivated."))
end
end)

local setposition = mouse.KeyDown:connect(function(pressed_key)
if (pressed_key==key_that_sets_position) then
_G.TeleportPosition=mouse.Hit.p+_G.TeleportOffset
print("[FE-TP] Coordinates updated to: " ..tostring(_G.TeleportPosition))
end
end)

game:GetService("RunService"):BindToRenderStep("Camera", Enum.RenderPriority.Camera.Value, function()
if running==false then return end
for i,v in pairs(game:service("Players"):GetChildren()) do
if(v ~= LocalPlayer and v.Character and (v.TeamColor ~= LocalPlayer.TeamColor or _G.TeleportTeammates)) then
if _G.ClipCharacters == false then
v.Character:MoveTo(_G.TeleportPosition)
else
v.Character.HumanoidRootPart.CFrame=CFrame.new(_G.TeleportPosition)
end
end
end
end)

_G.FETP_disconnect = function()
running = false;
keydown:disconnect()
_G.FETP_disconnect = nil
warn"[FE-TP] globally deactivated."
end

print"[FE-TP] loaded."