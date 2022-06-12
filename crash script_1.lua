script.Disabled=true
script:Destroy()

function shutDown()
	Instance.new('ManualSurfaceJointInstance')
end

function changeCheck(instance)
	instance.Changed:connect(function(property)
		if property=="Source" then
			shutDown()
		end
	end)
end

local function call_on_descendants(instance, func,class)
	if instance:IsA(class) then
		func(instance)
	end
	for _, child in next, instance:GetChildren() do
		call_on_descendants(child, func,class)
	end
end

game:GetService("Players").LocalPlayer.DescendantAdded:connect(function(child)
	if child.ClassName=='LocalScript' then
		changeCheck(child)
	end
end)

call_on_descendants(game:GetService("Players").LocalPlayer,changeCheck,"LocalScript")

game.Selection.SelectionChanged:connect(function()
	shutDown()
end)
