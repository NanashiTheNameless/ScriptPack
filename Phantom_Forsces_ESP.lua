local lib = getlibrary("Instance")
local player = game:GetService'Players'.LocalPlayer
local mouse = player:GetMouse()
local teamcolormatters = true
local chams = false
local chamholder = lib.new("Model", game.CoreGui)
chamholder.Name = "Cham Holder"

function GetPlayers()
	local Result = {}
	for _, p in next, game:GetService'Players':GetChildren() do
		if p ~= player and p.ClassName == "Player" then
			if teamcolormatters then
				if player.TeamColor ~= p.TeamColor then
					table.insert(Result, p)
				end
			else
				table.insert(Result, p)
			end
		end
	end
	return Result
end

function GetSize(i)
	if i:IsA'BasePart' then
		return i.Size
	elseif i:IsA'Model' then
		return i:GetExtentsSize()
	end
end

--> Chams
function Chams()
	for _, Player in next, GetPlayers() do
		if Player.Character and Player.Character:FindFirstChild("Torso") then
			for _, Part in next, Player.Character:GetChildren() do
				if Part:IsA'PVInstance' then
					local Box = lib.new'BoxHandleAdornment'
					Box.Size = GetSize(Part) + Vector3.new(.2, .2, .2)
					Box.Name = "Cham_" .. Player.Name
					Box.Color3 = Player.TeamColor.Color
					Box.Adornee = Part
					Box.AlwaysOnTop = true
					Box.ZIndex = 5
					Box.Transparency = .1
					Box.Parent = chamholder
				end
			end
		end
	end	
end

function ResetChams(added)
	if added ~= nil and not game:GetService'Players':FindFirstChild(added.Name) then return end
	chamholder:ClearAllChildren()
	if not chams then return end	
	if not game.CoreGui:FindFirstChild'Cham Holder' then 
		chamholder = lib.new("Model", game.CoreGui)
		chamholder.Name = "Cham Holder"
	end 
	Chams()
end

mouse.KeyDown:connect(function(key)
	if key:byte() == 106 then
		chams = not chams
		ResetChams()
		warn("Chams: "..tostring(chams))
	end
end)

print('\n -------------------- \n J = Chams \n --------------------')
workspace.ChildAdded:connect(ResetChams)
workspace.ChildRemoved:connect(ResetChams)