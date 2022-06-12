me = game.Players.yfc

char = me.Character

hold = false

jets = false

raise = true

ec = {"Institutional white", "Bright green", "Really red", "Bright blue"}



name = "Jet"



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

part.Locked = true

part:BreakJoints()

end



function weld(w, p, p1, a, b, c, x, y, z)

w.Parent = p

w.Part0 = p

w.Part1 = p1

w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)

end



local lol = char:findFirstChild(name)

if lol ~= nil then

	lol:remove()

end



local jet = Instance.new("Model")

jet.Name = name



rarm = char:findFirstChild("Right Arm")

larm = char:findFirstChild("Left Arm")

torso = char:findFirstChild("Torso")

hum = char:findFirstChild("Humanoid")



main = Instance.new("Part")

prop(main,jet,false,0,0.1,2.3,1.4,0.4,"Institutional white",false,"Custom")

torsoweld = Instance.new("Weld")

weld(torsoweld,torso,main,0,0,0,0,0,-0.7)



for i=0.7,1.9,0.4 do

	local glow = Instance.new("Part")

	prop(glow,jet,false,0,0,1+(i/2),0.1,0.1,"Really black",false,"Custom")

	Instance.new("BlockMesh",glow)

	local w = Instance.new("Weld")

	weld(w,main,glow,0,0,0,0,-i+1.4,-0.11)

end



lols1 = Instance.new("Part")

prop(lols1,jet,false,0,0.1,0.6,2.6,0.6,"Institutional white",false,"Custom")

w = Instance.new("Weld")

weld(w,main,lols1,0,0,-0.45,1.3,-0.8,-0.1)



lolss1 = Instance.new("Part")

prop(lolss1,jet,false,0,0.1,0.5,2,0.5,"Institutional white",false,"Custom")

w = Instance.new("Weld")

weld(w,lols1,lolss1,0,0,0.7,0.6,-0.4,0)



leftboom = nil

rightboom = nil



for i=-0.8,1,1.8 do

local heh = Instance.new("Part")

prop(heh,jet,false,0,0,0.5,0.1,0.5,"Really black",false,"Custom")

Instance.new("BlockMesh",heh).Scale = Vector3.new(1.01,1,1.01)

w = Instance.new("Weld")

weld(w,lolss1,heh,0,0,0,0,i,0)

leftboom = heh

end



lols2 = Instance.new("Part")

prop(lols2,jet,false,0,0.1,0.6,2.6,0.6,"Institutional white",false,"Custom")

w = Instance.new("Weld")

weld(w,main,lols2,0,0,0.45,-1.3,-0.8,-0.1)



lolss2 = Instance.new("Part")

prop(lolss2,jet,false,0,0.1,0.5,2,0.5,"Institutional white",false,"Custom")

w = Instance.new("Weld")

weld(w,lols2,lolss2,0,0,-0.7,-0.6,-0.4,0)



for i=-0.8,1,1.8 do

local heh = Instance.new("Part")

prop(heh,jet,false,0,0,0.5,0.1,0.5,"Really black",false,"Custom")

Instance.new("BlockMesh",heh).Scale = Vector3.new(1.01,1,1.01)

w = Instance.new("Weld")

weld(w,lolss2,heh,0,0,0,0,i,0)

rightboom = heh

end



jet.Parent = char



function effect(part1,part2)

	for i=1,math.random(1,3) do

		local scal = math.random(20,90)/100

		local p = Instance.new("Part")

		prop(p,jet,false,0.1,0.2,1,1,1,ec[math.random(1,#ec)],true,"Custom")

		Instance.new("BlockMesh",p).Scale = Vector3.new(scal/1.7,scal,scal/1.8)

		local cf = part1.CFrame * CFrame.Angles(math.random(-50,50)/100,math.random(-50,50)/100,math.random(-50,50)/100)

		p.CFrame = cf

		coroutine.resume(coroutine.create(function()

			for o=0,math.random(40,70)/10, math.random(4,13)/10 do

				wait()

				p.CFrame = cf * CFrame.new(0,-o,0)

				p.Transparency = p.Transparency + 0.07

			end

			p:remove()

		end))

	end

	for i=1,math.random(1,3) do

		local scal = math.random(20,90)/100

		local p = Instance.new("Part")

		prop(p,jet,false,0.1,0.2,1,1,1,ec[math.random(1,#ec)],true,"Custom")

		Instance.new("BlockMesh",p).Scale = Vector3.new(scal/1.7,scal,scal/1.8)

		local cf = part2.CFrame * CFrame.Angles(math.random(-50,50)/100,math.random(-50,50)/100,math.random(-50,50)/100)

		p.CFrame = cf

		coroutine.resume(coroutine.create(function()

			for o=0,math.random(40,70)/10, math.random(4,13)/10 do

				wait()

				p.CFrame = cf * CFrame.new(0,-o,0)

				p.Transparency = p.Transparency + 0.05

			end

			p:remove()

		end))

	end

end



if script.Parent.className ~= "HopperBin" then

h = Instance.new("HopperBin",me.Backpack)

h.Name = "Jet"

script.Parent = h

end

bin = script.Parent

bin.Selected:connect(function(mouse)

	mouse.KeyDown:connect(function(key)

		local kay = key:lower()

		if kay == "q" then

			if jets == false then

				hold = true

				jets = true

				while hold do

					effect(rightboom,leftboom)

					wait()

				end

			else

				jets = false

				hold = false

			end

		end

	end)

end)

