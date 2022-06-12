--Jailbreak Services Bypass
--By 3dsboy08 @ v3rmillion.net. Give credit, thanks!

local mt = getrawmetatable(game)
local oldindex = mt.__index
local services_renamed =
{
   ["Workspace"] = game:GetService("Workspace"),
   ["workspace"] = game:GetService("Workspace"),
   ["Lighting"] = game:GetService("Lighting"),
   ["lighting"] = game:GetService("Lighting"),
   ["Players"] = game:GetService("Players"),
   ["ReplicatedStorage"] = game:GetService("ReplicatedStorage"),
}

if make_writeable then
   make_writeable(mt)
elseif changereadonly then
   changereadonly(mt, false)
end

local check
if is_protosmasher_caller then
   check = is_protosmasher_caller
elseif checkcaller then
   check = checkcaller
else
   error'failed to find suitable checkcaller implementation'
end

mt.__index = function(t, k)
   if not check() then return oldindex(t, k) end
   if t == game and services_renamed[k] ~= nil then
       return services_renamed[k]
   end
   return oldindex(t, k)
end