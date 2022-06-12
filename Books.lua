local Player = script.Parent.Parent.Parent

while Player.Character == nil do wait() end

local ID
local Place 
local Clicked = false
local Teleing = false

local Gui = script.Parent

local Go = Gui.GoButton
local IDBox = Gui.IDSelection.Box
local PlaceBox = Gui.PlaceSelection.Box

Go.MouseButton1Up:connect(function()
	-- Go to Place
	if Clicked == true then return end
	ID = IDBox.Text
	Place = PlaceBox.Text
	pcall(function()	
		game:GetService("TeleportService"):Teleport(ID,Place)
		print("Teleporting Player")
		Teleing = true
	end)
	if (Teleing == false) then
		Clicked = true
		Go.FontSize = "Size24"
		Go.Text = "Error!"
		wait(0.5)
		Clicked = false
		Go.FontSize = "Size36"
		Go.Text = "Go!"
	else
		Clicked = true
		Go.FontSize = "Size24"
		Go.Text = "Teleing.."
		wait(0.5)
		Clicked = false
		Go.FontSize = "Size36"
		Go.Text = "Go!"
		Teleing = false
	end
end)
