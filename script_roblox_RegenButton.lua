local model = game.Workspace.--PutRegenButtonNameHere
local box = script.Parent


local debounce = false


local everything = {}
local names = {}

local children = game.Workspace:children()
for i=1,#children do
	if (children[i].Name == model) then
		table.insert(everything, children[i]:clone())
		table.insert(names, children[i].Name)
	end
end


function regen()
	for i=1,#everything do
		game.Workspace:findFirstChild(names[i]):remove()
		new_thing = everything[i]:clone()
		new_thing.Parent = game.Workspace
		new_thing:makeJoints()
	end
end

function onTouched(hit)
	local humanoid = hit.Parent:findFirstChild("Humanoid")
	if humanoid~=nil and debounce == false then
		debounce = true
		
		script.Parent.BrickColor = BrickColor.new(21) -- THIS CHANGES THE COLOR

		regen()
		wait(5)


		script.Parent.BrickColor = BrickColor.new(28) -- THIS CHANGE THE COLOR BACK


		debounce = false
	end
end


script.Parent.Touched:connect(onTouched)
