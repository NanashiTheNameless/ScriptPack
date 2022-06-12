--[[                                              
Script shared by eletronix                                              ]]

me = game.Players.LocalPlayer

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = "Portal"
script.Parent = h
end

bin = script.Parent
mode = true
hold = false

function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.formFactor = form
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

out = false
inn = false

function sel(mouse)
	local mk = nil
	local km = nil
	mouse.Button1Down:connect(function()
		if mode then
			if inn == false then
			inn = true
			mode = false
			hold = true
			local holdpos = mouse.Hit.p + Vector3.new(0,4,0)
			local portal = Instance.new("Model",workspace)
			portal.Name = "InPortal"
			local main = Instance.new("Part")
			prop(main, portal, false, 0.1, 0.1, 2.4, 2.4, 0.6, "Medium blue", true, "Custom")
			main.CFrame = CFrame.new(holdpos,mouse.Hit.p) * CFrame.new(0,3,0)
			local mes = Instance.new("SpecialMesh")
			mesh(mes,main,7,7,4,"FileMesh")
			mes.MeshId = "http://www.roblox.com/asset/?id=3270017"
			local f = Instance.new("Fire",main)
			f.Size = 7
			f.Heat = 0
			f.Color = Color3.new(0.1,0.2,1)
			f.SecondaryColor = Color3.new(0.4,0.4,0.6)
			while hold do
				wait()
				main.CFrame = CFrame.new(holdpos,mouse.Hit.p)
			end
			mk = main
			end
		else
			if inn == true and out == false then
			out = true
			mode = true
			hold = true
			local holdpos = mouse.Hit.p + Vector3.new(0,4,0)
			local portal = Instance.new("Model",workspace)
			portal.Name = "OutPortal"
			local main = Instance.new("Part")
			prop(main, portal, false, 0.1, 0.1, 2.4, 2.4, 0.6, "Neon orange", true, "Custom")
			main.CFrame = CFrame.new(holdpos,mouse.Hit.p) * CFrame.new(0,3,0)
			local mes = Instance.new("SpecialMesh")
			mesh(mes,main,7,7,4,"FileMesh")
			mes.MeshId = "http://www.roblox.com/asset/?id=3270017"
			local f = Instance.new("Fire",main)
			f.Size = 7
			f.Heat = 0
			f.Color = Color3.new(1,0.2,0.1)
			f.SecondaryColor = Color3.new(0.8,0.1,0.08)
			km = main
			hold = true
			while hold do
				wait()
				main.CFrame = CFrame.new(holdpos,mouse.Hit.p)
			end
			local tuch = true
			mk.Touched:connect(function(hit)
				local pla = game.Players:findFirstChild(hit.Parent.Name)
				if pla then
					if tuch then
						tuch = false
						local ff = Instance.new("Part")
						prop(ff,me.Character,false,1,0.2,2.3,2.3,1,"Medium blue",true,"Custom")
						local mag = (mk.Position - main.Position).magnitude
						ff.Size = Vector3.new(2.3,2.3,1)
						ff.CFrame = CFrame.new(mk.Position, main.Position) * CFrame.new(0,0,-mag/2)
						local mee = Instance.new("SpecialMesh",ff)
						mee.MeshType = "Brick"
						mee.Scale = Vector3.new(0.65,0.65,mag)
						for i=0.1, 1.1, 0.05 do
							mk.Transparency = i
							ff.Transparency = ff.Transparency - 0.04
							mee.Scale = Vector3.new(math.random(5,130)/100,math.random(5,130)/100,mag)
							wait()
						end
						pla.Character.Torso.CFrame = main.CFrame * CFrame.new(0,0,-3)
						for i=0.1,1.1,0.05 do
							main.Transparency = i
							ff.Transparency = ff.Transparency + 0.08
							mee.Scale = Vector3.new(math.random(30,120)/100,math.random(30,120)/100,mag)
							wait()
						end
						ff:remove()
						main:remove()
						mk:remove()
						mk = nil
						inn = false
						out = false
					end
				end
			end)
			end
		end
	end)
	mouse.Button1Up:connect(function()
		hold = false
	end)
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if (key == "q") then
			mode = true
			if mk ~= nil then
				mk:remove()
				mk = nil
				inn = false
			end
			if km ~= nil then
				km:remove()
				km = nil
				out = false
			end
		end
	end)
end

bin.Selected:connect(sel)

--mediafire