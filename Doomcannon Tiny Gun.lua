--CREDITS TO XXJOJETXX
-- DONT EDIT THIS SCRIPT UNLESS U KNOW WHAT YOU ARE DOING!
-- VERSION 1
-- DONT ABUSE ON VOIDACITY OR GET BANNNED 

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

local tool = Instance.new("Tool", player.Backpack)
tool.Name = "Doom Cannon"
tool.GripUp = Vector3.new(0, 0, 1)

local handle = Instance.new("Part", tool)
handle.Name = "Handle"
handle.Anchored = false

local gunmesh = Instance.new("SpecialMesh", handle)
gunmesh.MeshId = "http://www.roblox.com/asset/?id=78002401"
gunmesh.TextureId = "rbxassetid://78002441"


tool.Equipped:connect(function(mouse)
	
	mouse.Button1Down:connect(function()
		local ray = Ray.new(handle.CFrame.p, (mouse.Hit.p - handle.CFrame.p).unit * 300)
	    local human, position = workspace:FindPartOnRay(ray, player.Character, false, true)
	   
	local bullet = Instance.new("Part", workspace)
		bullet.BrickColor = BrickColor.new("Black")
		bullet.Material = "Neon"
		bullet.TopSurface = "Smooth"
		bullet.BottomSurface = "Smooth"
		bullet.Locked = true
		bullet.Anchored = true
		bullet.CanCollide = false
		
		local distance = (handle.CFrame.p - position).magnitude
		bullet.Size = Vector3.new(0.5, 0.5, distance)
		bullet.CFrame = CFrame.new(handle.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
 
		game:GetService("Debris"):AddItem(bullet, 0.1)
	
	if human then
			
			if human then
				local human = human.Parent:FindFirstChild("Humanoid")
			
			if not human then
				human = human.Parent.Parent:FindFirstChild("Humanoid")
				print("Not Mob")
			end
			
			if human then
				human:TakeDamage(10 * 2)
				human.Parent.Torso.BrickColor = BrickColor.new("Black")
				human.Parent.Head.BrickColor = BrickColor.new("Black")
				human.Parent:FindFirstChild("Left Arm").BrickColor = BrickColor.new("Black")
				human.Parent:FindFirstChild("Right Arm").BrickColor = BrickColor.new("Black")
				human.Parent:FindFirstChild("Left Leg").BrickColor = BrickColor.new("Black")
				human.Parent:FindFirstChild("Right Leg").BrickColor = BrickColor.new("Black")
				while true do
					
					for i = 1,10 do
						wait(0.1)
					
					human.Parent.Torso.Size = human.Torso.Size - Vector3.new(1,1,1)
					human.Parent.Head.Size = human.Torso.Size - Vector3.new(1,1,1)
					human.Parent:FindFirstChild("Left Arm").Size = human.Torso.Size - Vector3.new(1,1,1)
					human.Parent:FindFirstChild("Right Arm").Size = human.Torso.Size - Vector3.new(1,1,1)
					human.Parent:FindFirstChild("Left Leg").Size = human.Torso.Size - Vector3.new(1,1,1)
					human.Parent:FindFirstChild("Right Leg").Size = human.Torso.Size - Vector3.new(1,1,1)
				end
				end
				
				
			end
			
			end
		end
	
	
	
	end)	
end)