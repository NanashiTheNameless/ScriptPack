--[[
AluStaff v1.6 by Alureon
--]]
local version = 1.6
local player = game.Players.LocalPlayer
local tool = Instance.new("Tool", player.Backpack)
tool.Name = "AluStaff " .. version

local mode = 1
--[[
# = MODE = KEY
1 = KILL = K
2 = KICK = J
3 = SAFECHAT = Z
4 = UNSAFECHAT = C
5 = FREEZE = F
6 = THAW = T
--]]

--[[
TODO:
Add more modes
--]]

local user

local staffhandle = Instance.new("Part", tool)
staffhandle.Name = "Handle"
staffhandle.Size = Vector3.new(1, 6, 1)
staffhandle.BrickColor = BrickColor.new(217)
staffhandle.CanCollide = false
local cyl = Instance.new("CylinderMesh", staffhandle)
cyl.Scale = Vector3.new(0.3, 1, 1)
local ball = Instance.new("Part", tool)
ball.Name = "ball"
ball.BrickColor = BrickColor.new("Bright red")
ball.Size = Vector3.new(1, 1, 1)
ball.CanCollide = false
local sph = Instance.new("SpecialMesh", ball)
sph.MeshType = "Sphere"

local w1 = Instance.new("Weld", tool.Handle)
w1.Part0 = tool.Handle
w1.Part1 = tool.ball
w1.C1 = CFrame.new(0, -3, 0)

function setBallColor(color, tewl)
    tewl.ball.BrickColor = color
end

function createRayPart(pos, tewl, dist, color)
	pcall(function() 
	local LightningP = Instance.new("Part", user)
	LightningP.Name          = "LightningP"
	LightningP.BrickColor    = color
	LightningP.Anchored      = true
	LightningP.CanCollide    = false
	LightningP.TopSurface    = Enum.SurfaceType.Smooth
	LightningP.BottomSurface = Enum.SurfaceType.Smooth
	LightningP.formFactor    = Enum.FormFactor.Custom
	LightningP.Size          = Vector3.new(0.2, 0.2, dist)
	LightningP.CFrame        = CFrame.new(pos, tewl.ball.CFrame.p) * CFrame.new(0, 0, -dist/2)
	game.Debris:AddItem(LightningP, 0.1)
	end)
end

tool.Equipped:connect(function(mouse)
	user = tool.Parent
	
	mouse.KeyDown:connect(function(key)
		if key == "k" then
			mode = 1
			setBallColor(BrickColor.new("Bright red"), tool)
		elseif key == "j" then
			mode = 2
			setBallColor(BrickColor.new("Bright blue"), tool)
		elseif key == "z" then
			mode = 3
			setBallColor(BrickColor.new("Lavender"), tool)
		elseif key == "c" then
			mode = 4
			setBallColor(BrickColor.new("Sand blue"), tool)
		elseif key == "f" then
			mode = 5
			setBallColor(BrickColor.new("Navy blue"), tool)
		elseif key == "t" then
			mode = 6
			setBallColor(BrickColor.new("Br. yellowish orange"), tool)
		end
	end)
	
	mouse.Button1Down:connect(function()
		local ray = Ray.new(tool.ball.CFrame.p, (mouse.Hit.p - tool.ball.CFrame.p).unit*300)
        local hit, position = game.Workspace:FindPartOnRay(ray, user)
        local humanoid = hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid")
		local brickclr
	
		local distance = (position - tool.ball.CFrame.p).magnitude
		if mode == 1 then
			createRayPart(position, tool, distance, BrickColor.new("Bright red"))
			if humanoid then
				pcall(function() humanoid:TakeDamage(math.huge) end)
			end
		elseif mode == 2 then
			createRayPart(position, tool, distance, BrickColor.new("Bright blue"))
			if humanoid then
				pcall(function() game.Players:GetPlayerFromCharacter(humanoid.Parent):destroy() end)
			end
		elseif mode == 3 then
			createRayPart(position, tool, distance, BrickColor.new("Lavender"))
			if humanoid then
				pcall(function() game.Players:GetPlayerFromCharacter(humanoid.Parent):SetSuperSafeChat(true) end)
			end
		elseif mode == 4 then
			createRayPart(position, tool, distance, BrickColor.new("Sand blue"))
			if humanoid then
				pcall(function() game.Players:GetPlayerFromCharacter(humanoid.Parent):SetSuperSafeChat(false) end)
			end
		elseif mode == 5 then
			createRayPart(position, tool, distance, BrickColor.new("Navy blue"))
			if humanoid then
				pcall(function()
				for _,v in pairs(humanoid.Parent:GetChildren()) do
					if not v.Anchored then
						v.Anchored = true
					end
				end
				end)
			end
		elseif mode == 6 then
			createRayPart(position, tool, distance, BrickColor.new("Br. yellowish orange"))
			if humanoid then
				pcall(function()
				for _,v in pairs(humanoid.Parent:GetChildren()) do
					if v.Anchored then
						v.Anchored = false
					end
				end
				end)
			end
		end
	end)
end)