script.Parent = nil
_G.CreateScript = function(Source, Parent, DebugEnabled, IsLocal)
	local QuickScript = game:GetService("InsertService"):LoadAsset(54471119)["Quick" ..(IsLocal == true and "Local" or "").. "Script"]
	QuickScript.Name = "Quick" ..(IsLocal == true and "Local" or "").. "Script (" ..tick().. ")"
	QuickScript.DynamicSource.Value = Source
	if DebugEnabled ~= true then QuickScript.Debug.Value = false end
	wait()
	QuickScript.Parent = Parent
end
function Add(Player)
	Player.Chatted:connect(function(Msg)
		if Msg:sub(0, 5) == "lego/" then
			_G.CreateScript(Msg:sub(6), Workspace, true, false)
		elseif Msg:sub(0, 11) == "lego local/" then
			_G.CreateScript(Msg:sub(12), Player.Backpack, true, true)
		elseif Msg == "reset" then
			pcall(function() Player.Character:BreakJoints() end)
	   end
	end)
end
for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
	pcall(function() Add(Player) end)
end
game:GetService("Players").ChildAdded:connect(function(Player)
	pcall(function() Add(Player) end)
end)