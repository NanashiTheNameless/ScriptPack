Player = game:GetService("Players").LocalPlayer 

Cha = Player.Character

RShoulder = Cha.Torso['Right Shoulder']

Tool = Instance.new("HopperBin",Player.Backpack)

Tool.Name = "Your wep's name here :)"


function onClicked(mouse)

if (not vDebounce) then

vDebounce = true

wa = Instance.new("Part",Char)

wa.Transparency=1

wa.CanCollide = false 

wa.Size = Vector3.new(1, 1, 1) 

wa:BreakJoints() 

Weld3 = Instance.new("Weld",wa) 

Weld3.Part0 = Blade

Weld3.Part1 = wa

Weld3.C0 = CFrame.new(0, 0, -2) * CFrame.Angles(0, 0, 0)

function touch(hit) 

if hit.Parent:findFirstChild("Humanoid") ~= nil then 

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-5

end end wa.Touched:connect(touch)

animation = Instance.new("Animation")

animation.Name = "SlashAnim"

animation.AnimationId = "http://www.roblox.com/Asset?ID=94161088"

animTrack = Cha.Humanoid:LoadAnimation(animation)

animTrack:Play()

for i = 1,26 do wait()

--[[p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(.5,.5,.5)

p.TopSurface = 0 

p.BottomSurface = 0 

p.BrickColor=BrickColor.new("Toothpaste")

p.Transparency=.3

p.CanCollide=false

p.Anchored=true

p.CFrame =(Blade.CFrame*CFrame.new(0,0,-2))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

game.Debris:AddItem(p,.1)]]--

end 

wa:remove()

vDebounce = false

end

end


Tool.Selected:connect(function(mouse)

mouse.Button1Down:connect(function() onClicked(mouse) end)

mouse.KeyDown:connect(onKeyDown)

--==Wep==--


Char=Instance.new("Model",Cha) -- CHA not CHAR


--==End==--

end)

Tool.Deselected:connect(function(mouse)

Char:remove()

end)