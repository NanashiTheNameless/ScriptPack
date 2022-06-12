me = "acb227" 
plyr = Game.Players[me] 
char = plyr.Character 

local maincolor = "Bright red" 
local S = 2

local pet = Instance.new("Model") 
pet.Parent = char 
pet.Name = me.. "'s pet" 
local hum = Instance.new("Humanoid") 
hum.Parent = pet 
hum.Health = 0 
hum.MaxHealth = 0 
local orb = Instance.new("Part") 
orb.Size = Vector3.new(S, S, S) 
orb.Parent = pet 
orb.Name = "Head" 
orb.Transparency = 0.35 
orb.BrickColor = BrickColor.new(maincolor) 
orb.Anchored = true 
orb.Shape = "Ball" 
orb.TopSurface = "Smooth" 
orb.BottomSurface = "Smooth" 
local de = Instance.new("Decal") 
de.Parent = orb 
de.Texture = char.Head.face.Texture 
de.Face = "Front" 

function SPL(Color, Target, Part, Time)
	coroutine.resume(coroutine.create(function()
		local SPL = Instance.new("SelectionPartLasso", Workspace)
		SPL.Color = BrickColor.new(Color)
		SPL.Humanoid = Target
		SPL.Part = Part
		wait(Time)
		pcall(function() SPL:Remove() end)
	end))
end

function color(colo1, time)
	coroutine.resume(coroutine.create(function()
	fire.Color = Color3.new(colo1, colo1, colo1) 
	fire.SecondaryColor = Color3.new(colo1, colo1, colo1) 
		wait(time)
		pcall(function() fire.Color = Color3.new(153, 153, 153) fire.SecondaryColor = Color3.new(153, 153, 153)  end)
	end))
end

function commands(msg) 
	if string.sub(msg, 1, 5) == "kill " then 
	said = string.lower(string.sub(msg, 6)) 
	look = game.Players:GetChildren() 
		for i = 1, #look do 
		if string.find(string.lower(look[i].Name), said) == 1 then 
		Name = look[i].Character.Name
		t = look[i].Character.Torso 
		SPL("Really red", look[i].Character.Humanoid, orb, 2)
	t.Parent:BreakJoints() 
		end 
		end 
	end 
	if string.sub(msg, 1, 4) == "fix " then 
	said = string.lower(string.sub(msg, 5)) 
	look = game.Players:GetChildren() 
		for i = 1, #look do 
		if string.find(string.lower(look[i].Name), said) == 1 then 
		Name = look[i].Character.Name
		t = look[i].Character.Torso 
		SPL("Really red", look[i].Character.Humanoid, orb, 2)
	t.Parent:MakeJoints() 
		end 
		end 
	end 
	if string.sub(msg, 1, 5) == "heal " then 
	said = string.lower(string.sub(msg, 6)) 
	look = game.Players:GetChildren() 
		for i = 1, #look do 
		if string.find(string.lower(look[i].Name), said) == 1 then 
		Name = look[i].Character.Name
		t = look[i].Character.Torso 
		SPL("Bright blue", look[i].Character.Humanoid, orb, 2)
	t.Parent.Humanoid.Health = t.Parent.Humanoid.Health + 50
		end 
		end 
	end 
	if string.sub(msg, 1, 5) == "hurt " then 
	said = string.lower(string.sub(msg, 6)) 
	look = game.Players:GetChildren() 
		for i = 1, #look do 
		if string.find(string.lower(look[i].Name), said) == 1 then 
		Name = look[i].Character.Name
		t = look[i].Character.Torso 
		SPL("Bright red", look[i].Character.Humanoid, orb, 2)
	t.Parent.Humanoid.Health = t.Parent.Humanoid.Health - 50
		end 
		end 
	end 
	if string.sub(msg, 1, 5) == "reset" then 
	said = string.lower(string.sub(msg, 6)) 
	char:BreakJoints() 
	end 
	if string.sub(msg, 1, 5) == "name " then 
	said = string.lower(string.sub(msg, 6)) 
	pet.Name = me.. "'s " ..said 
	end 
	if string.sub(msg, 1, 5) == "lego " then 
	said = string.lower(string.sub(msg, 6)) 
	pet.Name = "" ..said.. "" 
	wait(5) 
	pet.Name = me.. "'s pet" 
	end 
	if string.sub(msg, 1, 7) == "exitall" then 
	said = string.lower(string.sub(msg, 8)) 
	pet:remove() 
	script:remove() 
	end 
	end 

plyr.Chatted:connect(commands) 

while true do 
		orb.CFrame = char.Head.CFrame + Vector3.new(2, 2, 3) 
		orb.Size = Vector3.new(S, S, S)
	wait(0.001) 
end 