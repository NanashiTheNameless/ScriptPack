
function Search(Object)
	wait()
	print(Object)
	coroutine.resume(coroutine.create(Paint), Object)
	local Children = Object:GetChildren()
	for X = 1, # Children do
		Search(Children[X])
	end
end

Search(game.Workspace)
