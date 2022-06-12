repeat wait() until game.Players.LocalPlayer.Character
local t=Instance.new("Tool", game.Players.LocalPlayer.Character)
t.Name="Sten"
t.GripPos=Vector3.new(0.5, -0.475, -0.1)
local h=Instance.new"Part"
h.FormFactor="Custom"
h.Size=Vector3.new(0.4, 0.8, 3.4)
h.Name="Handle"
h.Parent=t

local mesh=Instance.new("SpecialMesh", t)
mesh.MeshId="http://www.roblox.com/asset/?id=95388062"
mesh.TextureId="http://www.roblox.com/asset/?id=95391833"
mesh.Scale=Vector3.new(.5,.5,.5)
mesh.Parent=h

local fire=Instance.new"Sound"
fire.Parent=t
fire.SoundId="http://www.roblox.com/asset/?id=2691586"
fire.Volume=1

bdown=false
t.Equipped:connect(function(mouse)
	bdown=false
	mouse.Button1Down:connect(function()
		bdown=true
		coroutine.wrap(function()
			while bdown do
				fire:Play()
				wait(.1)
			end
		end)()
	end)
	mouse.Button1Up:connect(function()
		bdown=false
	end)
end)

t.Unequipped:connect(function()
	bdown=false
	fire:Stop()
end)