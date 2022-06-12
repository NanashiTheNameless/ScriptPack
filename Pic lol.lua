Asset = "http://www.roblox.com/Thumbs/Asset.ashx?x=420&y=230&assetId=" 

me = game.Players.xSoulStealerx
char = me.Character
torso = char.Torso

local brick = Instance.new("Part",workspace)
brick.Anchored = true
brick.formFactor = "Custom"
brick.Size = Vector3.new(30, 20, 1)
brick.CFrame = torso.CFrame * CFrame.new(0, 0, -40) * CFrame.Angles(0, math.pi, 0)

brick.Changed:connect(function()
brick.Parent = workspace
brick.CFrame = torso.CFrame * CFrame.new(0, 0, -40) * CFrame.Angles(0, math.pi, 0)
end)

function AddDecal(id)
	local base = brick
	for _,v in pairs(base:children()) do if v:IsA("Decal") or v:IsA("Texture") then v:remove() end end 
	local dec = Instance.new("Decal", base)
	dec.Texture = id
	dec.Face = "Front"
end

function Chat(msg, plr) 
	if string.sub(msg, 1, 8) == "picture/" then 
		local num = tonumber(msg:sub(9))
		if num then
			AddDecal(Asset..num)
		end
	elseif string.sub(msg, 1, 4) == "hat/" then
		local char = plr.Character
		if char then
			local hat = {}
			for _,v in pairs(char:children()) do
				if v:IsA("Hat") then table.insert(hat, v) end
			end
			if #hat > 0 then
				hat = hat[math.random(1,#hat)]
				local handle = hat:findFirstChild("Handle")
				if handle then
					local mesh = nil
					for i,v in pairs(handle:children()) do
						if v:IsA("SpecialMesh") then mesh = v break end
					end
					if mesh then
						AddDecal(mesh.TextureId)
					end
				end
			end
		end
	elseif msg == "remolol" then
		script.Disabled = true
	end
end 
 
for _,v in pairs(game.Players:GetPlayers()) do v.Chatted:connect(function(msg) Chat(msg, v) end) end 
game.Players.PlayerAdded:connect(function(p) p.Chatted:connect(function(msg) Chat(msg, p) end) end)
