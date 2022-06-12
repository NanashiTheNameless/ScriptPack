me = game.Players.xSoulStealerx 
tag1 = game.Players.acb227 
 
local tagger = Instance.new("BoolValue") 
tagger.Name = "Tag" 
tagger.Parent = me.Character 
tagger.Value = true 
local tagger2 = Instance.new("BoolValue") 
tagger2.Parent = tag1.Character 
tagger2.Value = true 
tagger2.Name = "Tag" 
 
local spark1 = Instance.new("Sparkles")
spark1.Parent = tag1.Character
spark1.Color = Color3.new(0,1,1)
local spark2 = Instance.new("Sparkles")
spark2.Parent = me.Character
spark2.Color = Color3.new(0,1,1)

local ices = Instance.new("Model") 
ices.Parent = game.Workspace 
 
players = game.Players:GetChildren() 
for i=1, #players do 
	local val = Instance.new("NumberValue") 
	val.Parent = players[i].Character 
	val.Value = 0 
	val.Name = "Froze" 
end 
 
function freeze(hit) 
	local ple = game.Players:findFirstChild(hit.Parent.Name) 
	if ple ~= nil then 
		if ple.Character.Tag == nil then return end 
			if ple.Character.Froze == nil then 
			local vald = Instance.new("NumberValue") 
			vald.Name = "Froze" 
			vald.Value = 0 
			vald.Parent = ple.Character 
		end 
		if ple.Character.Froze.Value == 1 then return end 
		ple.Character.Froze.Value = 1 
		local part = Instance.new("Part") 
		part.Name = "Ice"
		part.BrickColor = BrickColor.new("Light blue") 
		part.Reflectance = 0.2 
		part.Transparency = 0.2 
		part.formFactor = "Symmetric" 
		part.Size = Vector3.new(5,9,5) 
		part.TopSurface = "Smooth" 
		part.BottomSurface = "Smooth" 
		part.CanCollide = false 
		part.CFrame = ple.Character.Torso.CFrame 
		part.Anchored = true 
		part.Parent = ices 
		local playa = Instance.new("StringValue")
		playa.Parent = part
		playa.Value = ple.Name
		playa.Name = "tagged"
		ple.Character.Torso.Anchored = true 
		ple.Character.Humanoid.WalkSpeed = 0 
	end 
end 

 
me.Character.Torso.Touched:connect(freeze) 
tag1.Character.Torso.Touched:connect(freeze) 
 
 