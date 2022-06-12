Items = {}
Start = tick()
Tiem = 0
Hint = Instance.new("Hint",script)
Hint.Text = "Items added in game per minute average: 0"
workspace.DescendantAdded:connect(function(p)
	table.insert(Items, p)
end)
function givetime(sec)
	local s = math.floor(sec%60)
	local m = math.floor((sec/60)%60)
	local h = math.floor(((sec/60)/60)%24)
	if #tostring(s) < 2 then s = "0"..s end
	if #tostring(m) < 2 then m = "0"..m end
	if #tostring(h) < 2 then h = "0"..h end
	return h..":"..m..":"..s
end
coroutine.resume(coroutine.create(function()
	while true do
		wait()
		Tiem = (tick()-Start)/60
		Hint.Text = "Items added in game per minute: "..math.ceil(#Items/Tiem-0.5)..", time taken: "..givetime(Tiem*60-0.5)
	end
end))
