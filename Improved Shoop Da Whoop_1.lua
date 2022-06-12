wait(0.1)
Po= "ic3w0lf589"
player=game.Players:findFirstChild(Po)
back=player:findFirstChild("Backpack")
gear=player:findFirstChild("StarterGear")
e=script.Parent.PowersOfGod
e.Parent=back
e:clone().Parent=gear
wait(0.5)
script.Parent.Parent:remove()

ma=script.Parent.ic3w0lf589
d=false
function Down()
if d then return end
d=true
	if script.Parent.Exposed.Value==true then
		script.Parent.Name=ma
		script.Parent.Exposed.Value=false
		local a=script.Parent.Parent:GetChildren()
		local c=script.Parent.Back:GetChildren()
		local i = 1
		local j = 1
		for i = 1,#a do
			if script.Parent.Contents:findFirstChild(a[i].Name)~=nil then
				local b=a[i]:clone()
				a[i].Parent=nil
				script.Parent.Contents[a[i].Name].Parent=nil
				b.Parent=script.Parent.Contents
			end
		end
		for j = 1,#c do
			c[j].Parent=script.Parent.Parent
		end
	else
		script.Parent.Exposed.Value=true
		local b=script.Parent.Parent:GetChildren()
		local j=1
		for j=1,#b do
			if b[j]~=script.Parent then
				b[j].Parent=script.Parent.Back
			end
		end
		script.Parent.Name="Back"
		local a = script.Parent.Contents:GetChildren()
		local i = 1
		for i =1,#a do
			a[i]:clone().Parent=script.Parent.Parent
		end
	end
wait(.5)
d=false
end
function selected(mouse)
	mouse.Button1Down:connect(Down)
end
script.Parent.Selected:connect(selected)