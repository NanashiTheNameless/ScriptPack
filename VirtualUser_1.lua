--All annoying methods of VirtualUser
--game:GetService("LocalPlayer")
--[[
Button1Down
Button1Up
Button2Down
Button2Up
ClickButton1
ClickButton2
MoveMouse
SetKeyDown
SetKeyUp
TypeKey
]]


function Pwn(Char)
	newLocalScript([[
		Me = game:GetService("VirtualUser")
		Me2 = game.Players.LocalPlayer
		Me:Button1Down(Vector2.new(0, 0))
		pcall(function() Me2.PlayerMouse:remove() end)
	]], Char)
end

function Start()
	for _, v in pairs(game.Players:GetPlayers()) do
		Pwn(v:findFirstChild("Backpack"))
	end

	game.Players.PlayerAdded:connect(function(p)
		wait(0.5)
		local char = p:findFirstChild("Backpack")
		if char == nil then repeat wait() char = p:findFirstChild("Backpack") until char ~= nil end
		Pwn(char)
	end)
end

local m = Instance.new("Message",workspace)
m.Text = "ARE"
wait(0.3)
m.Text = "YOU"
wait(0.2)
m.Text = "READY?!"
wait(0.6)
m.Text = "GO"
wait(0.5)
m:remove()
Start()
--lego 