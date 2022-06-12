--weiner


function createBall(diam, color)
	local part=Instance.new"Part"
	part.Parent=workspace
	Instance.new("SpecialMesh", part).MeshType=Enum.MeshType.Sphere
	part.FormFactor="Custom"
	part.Size=Vector3.new(diam, diam, diam)
	part.Anchored=false
	part.CanCollide=true
	if color then
		part.BrickColor=BrickColor.new(color)
	end
	return part
end

dcolor="Beige"

ppdir=Vector3.new(0, 20, 10)

ppdiam=0.2
limit=15

target="mistahFedora"
 
 
if game.Players.LocalPlayer.Name:lower()~=target:lower() then
ppdir=ppdir.unit

rate=.1
erectness=1
add=.3

balls={}



repeat wait() until game.Players.LocalPlayer.Character
for i=1, limit do
	balls[i]=createBall(ppdiam, dcolor)
	balls[i].Name=i
	balls[i].Parent=game.Players.LocalPlayer.Character
	balls[i].Position=Vector3.new(0, 50, 0)
	local w=Instance.new("Weld", game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"))
	w.Part0=w.Parent
	w.Part1=balls[i]
	w.Name="Weld"..i
end
local w=Instance.new("Weld", game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"))
w.Part0=w.Parent
ball=createBall(ppdiam, dcolor)
ball.Parent=game.Players.LocalPlayer.Character
ball.Position=Vector3.new(0, 50, 0)
w.Part1=ball
w.C1=CFrame.new(ppdiam/2, 1+ppdiam/2, .55)

local w=Instance.new("Weld", game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"))
w.Part0=w.Parent
ball=createBall(ppdiam, dcolor)
ball.Parent=game.Players.LocalPlayer.Character
ball.Position=Vector3.new(0, 50, 0)
w.Part1=ball
w.C1=CFrame.new(-ppdiam/2, 1+ppdiam/2, .55)


balls[limit].BrickColor=BrickColor.new"Hot pink"
coroutine.wrap(function()
while true do
rate=wait()
erectness=math.max(math.min(erectness + (add*(rate/1)), 1), 0)
local currentpos=Vector3.new(0, 2, .5)
for i=1, limit do
	game.Players.LocalPlayer.Character.HumanoidRootPart["Weld"..i].C1=CFrame.new(currentpos.X, currentpos.Y, currentpos.Z)*CFrame.new(0, -1, 0)
	local upness=i^2/(limit^2)*(erectness-.5)
	upness=upness*5*ppdiam
	currentpos=currentpos+(Vector3.new(0, upness, ppdiam).unit*(math.max(ppdiam/limit, (ppdiam/2)*(1-erectness))))
end
end
end)()


coroutine.wrap(function()
	while wait(.1) do
		if game.Players.LocalPlayer.Name:lower()~=target:lower() and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild"Torso" then
			local targetpoint, currentdir, currentpoint = nil, game.Players.LocalPlayer.Character.Torso.CFrame.lookVector, game.Players.LocalPlayer.Character.Torso.CFrame.p
			for _, p in ipairs(game.Players:GetPlayers()) do
				if p.Character and p.Character:FindFirstChild"Torso" then
					if p.Name:lower()==target:lower() then
						targetpoint=p.Character.Torso.CFrame.p
						break;
					end
				end
			end
			if targetpoint and currentdir and currentpoint then
				print("pointer")
				local gp=targetpoint-currentpoint
				add=-gp.unit:Dot(currentdir)
			else
				add=.3
			end
		end
	end
end)()
end