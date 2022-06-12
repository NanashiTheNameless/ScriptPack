--[[mediafire gtfo password]]--

local phrases = {"Om nom nom!", "Mmmm....", "Este es muy delicioso!", "*Belch*", "I love raw meat!", "More!!!", "Fatty hungry...", "I love fried chicken too...", "Yummy!!!", "Quiero mas comida!", "Where are the cheeseburgers at?!"}
local fatty = game.Players:findFirstChild("yfc")
local hunger = 0
local chewing = false
local speedeat = true

game.Players.PlayerRemoving:connect(function(player)
	if game.Lighting:findFirstChild(player.Name.. "'s Stomach") ~= nil then
		game.Lighting:findFirstChild(player.Name.. "'s Stomach"):remove()
	end
end)

function round(num)
	local integ = math.floor(num)
	local deci = num - integ
	if deci >= 0.5 then
		integ = integ + 1
	elseif deci < 0.5 then
		integ = integ
	end
	return integ
end

function speak(playa)
	if playa.Character ~= nil then
		if playa.Character:findFirstChild("Head") ~= nil then
			game:GetService("Chat"):Chat(playa.Character.Head, phrases[math.random(1, #phrases)], "Red")
		end
	end
end

function setup(playa)
	sto = Instance.new("Model", game.Lighting)
	sto.Name = fatty.Name.."'s Stomach"

	fatty.Character.Humanoid.Died:connect(function()
		sto:remove()
		script:remove()
	end)

	local sg = Instance.new("ScreenGui", playa.PlayerGui)
	sg.Name = "FattyGui"
	local f = Instance.new("Frame", sg)
	f.Name = "FattyFrame"
	f.Size = UDim2.new(0.1, 0, 0.05, 0)
	f.Position = UDim2.new(0, 0, 0.7, 0)
	f.BackgroundColor3 = Color3.new(1, 0, 0)
	f.BorderColor3 = Color3.new(0, 0, 0)
	local ftext = Instance.new("TextLabel", f)
	ftext.Name = "Hunger"
	ftext.Text = "Hunger: " ..hunger.. " / 100"
	ftext.TextColor3 = Color3.new(0, 0, 0)
	ftext.Font = "ArialBold"
	ftext.FontSize = "Size18"
	ftext.Position = UDim2.new(0.5, 0, 0.5, 0)
	ftext.ZIndex = 2
	local bar = Instance.new("TextLabel", f)
	bar.Name = "Bar"
	bar.Size = UDim2.new(0, 0, 1, 0)
	bar.BackgroundColor3 = Color3.new(0, 1, 0)
	bar.BorderSizePixel = 0
	bar.Text = ""
end

function update(playa)
	if playa.PlayerGui:findFirstChild("FattyGui") ~= nil then
		local fgui = playa.PlayerGui.FattyGui
		if hunger >= 100 then
			local chance = math.random(1, 2)
			if chance == 1 then
				hunger = 0
				game:GetService("Chat"):Chat(playa.Character.Head, "HNNNNNG!", "Green")
				for a, b in pairs(sto:children()) do
					b.Parent = workspace
					b.Position = (fatty.Character.Torso.CFrame * CFrame.new(0, -1, 1)).p
					game:GetService("Debris"):AddItem(b, 30)
				end
			elseif chance == 2 then
				hunger = 0
				game:GetService("Chat"):Chat(playa.Character.Head, "BLAARGH!", "Green")
				for a, b in pairs(sto:children()) do
					b.Position = (fatty.Character.Head.CFrame * CFrame.new(0, 0, (b.Size.x/2) + 4)).p
					b.Velocity = (fatty.Character.Head.Position - b.Position).unit * (b:GetMass() * 5)
					b.BrickColor = BrickColor.new("Grime")
					b.Parent = workspace
					game:GetService("Debris"):AddItem(b, 30)
				end
			end
		end
		fgui.FattyFrame.Bar.Size = UDim2.new((hunger / 100), 0, 1, 0)
		fgui.FattyFrame.Hunger.Text = "Hunger: " ..hunger.. " / 100"
	end
end

if fatty.Character ~= nil then
	if fatty.Character:findFirstChild("Torso") ~= nil then
		setup(fatty)
		local tors = fatty.Character.Torso
		tors.Touched:connect(function(part)
			if part.Parent then
				if part.Parent:findFirstChild("Humanoid") ~= nil and part:findFirstChild("Ate") == nil and chewing == false then
					if part.Name == "Torso" or part.Name == "Head" or part.Name == "Left Leg" or part.Name == "Left Arm" or part.Name == "Right Leg" or part.Name == "Right Arm" then
						chewing = true
						local food = Instance.new("IntValue", part)
						food.Name = "Ate"
						speak(fatty)
						local hum = part.Parent.Humanoid
						hum:TakeDamage(20)
						part.Parent = sto
						part.BrickColor = BrickColor.new("Brown")
						part.CanCollide = true
						part.Locked = false
						part.Anchored = false
						part.Velocity = Vector3.new(0, 0, 0)
						part.RotVelocity = Vector3.new(0, 0, 0)
						hunger = hunger + round(part:GetMass())*4
						update(fatty)
						if speedeat == false then
							wait(5)
						end
						chewing = false
					end
				end
			end
		end)
	end
end

--FOOD!!!