mainyy = workspace.Base.Position

for i=1, 10 do

mainplace = mainyy + Vector3.new(math.random(-120,120),0.3,math.random(-120,120))

function prop(part, parent, collide, tran, ref, x, y, z, color, anchor)
part.Parent = parent
part.formFactor = 0
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part:BreakJoints()
end

function weld(w, p, p0, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p0
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end

function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end

local turret = Instance.new("Model",workspace)
turret.Name = "Turret"

local main = Instance.new("Part")
prop(main, turret, true, 0, 0, 3, 1, 3, "Dark grey", true)
main.CFrame = CFrame.new(mainplace)
mainmesh = Instance.new("CylinderMesh",main)

local neck = Instance.new("Part")
prop(neck,turret,true,0,0,1,2,1,"Dark grey", true)
neck.CFrame = CFrame.new(mainplace) * CFrame.new(0,1.1,0)
neckmesh = Instance.new("CylinderMesh",neck)
neckmesh.Scale = Vector3.new(1,1.5,1)

local move = Instance.new("Part")
prop(move, turret, false, 0, 0, 1, 1, 5,"Dark grey", false)
move.CFrame = CFrame.new(mainplace) * CFrame.new(0,3,0)

local bg = Instance.new("BodyGyro")
bg.Parent = move
bg.maxTorque = Vector3.new(1e+008,1e+008,1e+008)

local bp = Instance.new("BodyPosition",move)
bp.maxForce = Vector3.new(1e+008,1e+008,1e+008)
bp.position = bp.Parent.Position

local gunner = Instance.new("Part")
gunner.FrontSurface = "Hinge"
prop(gunner,turret,true,0,0,1,1,1,"Dark grey",false)
gunner.CFrame = CFrame.new(mainplace) * CFrame.new(0,3,2.5)

local gunweld = Instance.new("Weld")
weld(gunweld,move,move,gunner,0,0,0,0,0,2.5)

local sound = Instance.new("Sound",gunner)
sound.Volume = 0.8
sound.Pitch = 4
sound.SoundId = "http://www.roblox.com/asset/?id=2760979"

function find(pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = 35
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2 ~= script.Parent) then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso
end

coroutine.resume(coroutine.create(function()
while true do
	wait(0.1)
	local target = find(gunner.Position)
	if target ~= nil then
		bg.cframe = CFrame.new(move.Position, target.Position)
		local meh = math.random(1,8)
		if meh == 1 then
			local bulls = {}
			local dis = (gunner.Position - target.Position).magnitude
			local bullet = Instance.new("Part")
			prop(bullet,workspace,false,0,0,1,1,1,"Bright yellow",true)
			bullet.CFrame = CFrame.new(gunner.Position, target.Position) * CFrame.new(0,0,-dis/2)
			local meu = Instance.new("SpecialMesh")
			mesh(meu,bullet,0.23,0.23,dis,"Brick")
			local huo = target.Parent:findFirstChild("Humanoid")
			huo:TakeDamage(math.random(huo.MaxHealth/50,huo.MaxHealth/13))
			local randompitch = math.random(500,1200)/1000
			sound.Pitch = randompitch
			sound:play()
			table.insert(bulls,bullet)
			for i=1, math.random(3,6) do
				local msi = math.random(8,23)/10
				local th = Instance.new("Part")
				prop(th,workspace,false,0,0,1,1,1,"Bright yellow",true)
				th.CFrame = CFrame.new(gunner.Position,target.Position) * CFrame.new(0,0,-dis)
				th.CFrame = th.CFrame * CFrame.Angles(math.random(-100,100),math.random(-100,100),math.random(-100,100))
				th.CFrame = th.CFrame * CFrame.new(0,0,-msi/2)
				thme = Instance.new("SpecialMesh")
				mesh(thme,th,0.13,0.13,msi, "Brick")
				table.insert(bulls,th)
				for duh=1, math.random(2,5) do
					local bag = math.random(5,18)/10
					local bah = Instance.new("Part")
					prop(bah,workspace,false,0,0,1,1,1,"Bright yellow",true)
					bah.CFrame = CFrame.new(th.Position) * CFrame.new(0,0,msi/2)
					bah.CFrame = bah.CFrame * CFrame.Angles(math.random(-100,100),math.random(-100,100),math.random(-100,100))
					bah.CFrame = bah.CFrame * CFrame.new(0,0,-bag/2)
					bahme = Instance.new("SpecialMesh")
					mesh(bahme,bah,0.02,0.02,bag, "Brick")
					table.insert(bulls,bah)
				end
			end
			coroutine.resume(coroutine.create(function()
				for i=1, #bulls do
					coroutine.resume(coroutine.create(function()
						wait(0.1)
						for k=0, 1, 0.25 do
							wait()
							bulls[i].Transparency = k
						end
						bulls[i]:remove()
					end))
				end
			end))
		end
	end
end
end))
end

me = game.Players.yfc

me.Chatted:connect(function(msg)
	if msg == "rem" then
		script:remove()
	end
end)
