localname=game:GetService("Players").LocalPlayer.Name
 for i,v in pairs(workspace[localname]:GetChildren()) do
 if v:IsA("Part") then
 Instance.new("SelectionBox", v).Adornee=v
 Instance.new("Fire", workspace.Lua_Env.Torso)
 Instance.new("Sparkles", workspace.Lua_Env.Torso)
 end
 end