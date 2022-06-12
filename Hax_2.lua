BASIC HAXX------------

game.Workspace.Geomaster.Humanoid.MaxHealth = 7000

g = game.Workspace.Geomaster:GetChildren() -- Invisibility
for i = 1, #g do
	if g[i].className == "Part" then
		g[i].Transparency = 1
		wait()
	end
end

g = game.Workspace.Geomaster.Head:GetChildren() --Remove Face
for i = 1, #g do
	if g[i].className == "Decal" then
		g[i]:remove()
		wait()
	end
end


game.Workspace.Geomaster.Humanoid.WalkSpeed = 25 --Speedhack


local b = Instance.new("BodyForce") -- Superjump
b.force = Vector3.new(0,1300,0) 
b.Parent = game.Workspace.Geomaster.Torso


DBZ Hacks ---

game.Players.Geomaster.PlayerGui.Bars.Ki.Value = 999999

game.Players.Geomaster.Data.Physical = 600


Teleport To Person----------

Players = Game:GetService("Players")
    
    local P1 = Players.Geomaster
    local P2 = Players.pfctink
    
    pcall(function() P1.Character:MoveTo( P2.Character.Torso.Position ) end)


Headspin------

me = game.Players.Geomaster.Character 
for i = 1, math.huge, 0.1 do 
me.Torso.Neck.C0 = CFrame.fromEulerAnglesXYZ(0, i, 0) * CFrame.new(0, 1.5, 0) 
me.Torso.Neck.C1 = CFrame.new(0, 0, 0) 
wait() 
end