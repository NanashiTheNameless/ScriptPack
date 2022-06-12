--[[
	Made by Kiriot22
	lel
--]]
local plr = game:GetService("Players").LocalPlayer
local char = plr.Character

function FindInTable(t, n)
	for i,v in pairs(t) do
		if v == n then
			return true
		end
	end
	return false
end
--Transformaaaaation--
char["Left Arm"].BrickColor = BrickColor.new("Medium stone")
char["Right Arm"].BrickColor = BrickColor.new("Medium stone")
char.Head.BrickColor = BrickColor.new("Medium stone")
char["Left Leg"].BrickColor = BrickColor.new("Medium stone")
char["Right Leg"].BrickColor = BrickColor.new("Medium stone")

for i,v in pairs(char:children'') do
	local toremove = {"CharacterMesh", "Shirt", "Pants", "ShirtGraphic", "Accessory"}
	if FindInTable(toremove, v.ClassName) then v:Destroy() end
	if v.ClassName == "BodyColors" then
		v.HeadColor = BrickColor.new("Medium stone")
		v.LeftArmColor = BrickColor.new("Medium stone")
		v.LeftLegColor = BrickColor.new("Medium stone")
		v.RightArmColor = BrickColor.new("Medium stone")
		v.RightLegColor = BrickColor.new("Medium stone")
		v.TorsoColor = BrickColor.new("Medium stone")
	end
end

local face = char.Head:FindFirstChild'face' if face then face.Texture = "http://www.roblox.com/asset/?id=13038247" end
Instance.new("Shirt", char).ShirtTemplate = "http://www.roblox.com/asset/?id=120599107"
Instance.new("Pants", char).PantsTemplate = "http://www.roblox.com/asset/?id=281982286"
local function CreateHat(name, meshid, textureid)
	local h = Instance.new("Accessory")
	h.Name = name
	local han = Instance.new("Part", h)
	han.Name = "Handle"
	local mesh = Instance.new("SpecialMesh", han)
	mesh.Name = "Mesh"
	mesh.MeshId = meshid
	mesh.TextureId = textureid
	return h,han,mesh
end
hum = char:FindFirstChildOfClass'Humanoid'
local h,han,mesh = CreateHat("2LEGITOwl", "http://www.roblox.com/asset/?id=329798434", "http://www.roblox.com/asset/?id=329790966")
han.Size = Vector3.new(1, 1, 1)
mesh.Scale = Vector3.new(0.3, 0.3, 0.3)
h.AttachmentPos = Vector3.new(1.1, 0.38, 0)
hum:AddAccessory(h)
h,han,mesh = CreateHat("RobloxScarf", "http://www.roblox.com/asset/?id=138054351", "http://www.roblox.com/asset/?id=138052904")
mesh.Scale = Vector3.new(3, 3, 3)
han.Size = Vector3.new(1.9, 2, 2)
h.AttachmentPos = Vector3.new(0, 1.54, 0.1)
hum:AddAccessory(h)
h,han,mesh = CreateHat("Ultra-Fabulous Hair", "http://www.roblox.com/asset/?id=16627529", "http://www.roblox.com/asset/?id=16627494")
mesh.Scale = Vector3.new(1.05, 1.05, 1.05)
han.Size = Vector3.new(2, 2, 2)
hum:AddAccessory(h)
--a function--
function Say(text)
	local head = char.Head
	local fh = head:Clone()
	fh:ClearAllChildren()
	fh.Transparency = 1
	local bg = Instance.new("BillboardGui", fh)
	bg.Size = UDim2.new(6, 0, 6, 0)
	bg.StudsOffset = Vector3.new(0, 3, 0)
	local f = Instance.new("Frame", bg)
	f.Size = UDim2.new(1, 0, 1, 0)
	f.BackgroundTransparency = 1
	local tl = Instance.new("TextLabel", f)
	tl.BackgroundTransparency = 1
	tl.Size = UDim2.new(5, 0, 1, 0)
	tl.Position = UDim2.new(-2, 0, 0)
	tl.TextColor3 = Color3.new(1, 1, 1)
	tl.TextScaled = true
	tl.Text = ""
	tl.TextColor3 = BrickColor.new("Really black").Color	
	tl.Font = Enum.Font.Fantasy
	tl.TextSize = 120
	fh.Parent = Instance.new("Model", plr.Character)
	local Joint = Instance.new("Weld", game.JointsService)
	Joint.Part0 = head
	Joint.Part1 = fh
	
	local letters = {}
	text:gsub(".",function(c) table.insert(letters,c) end)
	for i,v in pairs(letters) do
		tl.Text = tl.Text .. tostring(v)
		wait(1/20)
	end
	wait(1)
	fh.Parent:Destroy()
end

function ReloadChat() --hax
	local chat = plr:FindFirstChildOfClass'PlayerGui':FindFirstChild'SB_Chat'
	if chat then
		chat:Destroy()
	end
	plr.PlayerScripts.ChatScript:Destroy()
	game:GetService("Chat").ChatScript:Clone().Parent = plr.PlayerScripts
	plr:FindFirstChildOfClass'PlayerGui':WaitForChild'Chat'.Name = "SB_Chat"
end

function RunFromUrl(url)
	require(game:GetService'Players'.LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("ChatScript"):WaitForChild("ChatMain")).MessagePosted:fire("hl/" .. url)
end

ReloadChat()

local ScriptsNames = {
	{
		Name = "Bloxwatch hacker",
		Url = "https://pastebin.com/raw/BTLbGeEg"
	},
	{
		Name = "Hover Bike",
		Url = "http://pastebin.com/raw/EBaLUy81"
	},
	{
		Name = "Gold Radio",
		Url = "https://pastebin.com/raw/SJcQD3zX"
	},
	{
		Name = "Gomu Powers",
		Url = "https://pastebin.com/raw/dp4BrV03"
	},
	{
		Name = "Flying plane",
		Url = "https://pastebin.com/raw/9pKtz6sK"
	},
	{
		Name = "Lenny",
		Url = "https://paste.ee/r/ddsm4"
	},
	{
		Name = "Angel wings",
		Url = "https://pastebin.com/raw/2NPdCp7d"
	},
	{
		Name = "Hackerman",
		Url = "https://pastebin.com/raw/FWbG0NwV"
	}
}
local Fat = {"op", "dank", "cool", "fun"}

local rnd = math.random(1, #ScriptsNames)

local randomscript = ScriptsNames[rnd]

Say("Hello youtube")
Say("And today I'm showcasing " .. randomscript.Name .. " script")
Say("It is a very " .. Fat[math.random(1, #Fat)] .. " script")
Say("Let me show you what it does")
RunFromUrl(randomscript.Url)
Say("Remember to leave a like and subscribe")