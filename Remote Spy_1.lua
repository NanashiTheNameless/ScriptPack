-- RemoteSpy for Intriga
-- Written by Autumn on V3rmillion

local enabled = {
   -- Set any of these objects to false to stop logging them
   BindableEvent = true;
   BindableFunction = true;
   RemoteEvent = true;
   RemoteFunction = true;
}

local ignore = {
   -- Any remotes matching the names listed below will be ignored
   SomeExampleRemote = true;
   UselessSpamRemote = true;
   ThisRemoteWillBeIgnored = true;
   BlahBlahBlahRemote = true;
}

local meta,oldmeta = getrawmetatable(game),{}
for i,v in next,meta do oldmeta[i] = v end
function formatargs(args,showkeys)
   if #args == 0 then return "N/A" end
   local strargs = {}
   for k,v in next,args do
       local argstr = ""
       if type(v) == "string" then
           argstr = "\"" .. v .. "\""
       elseif type(v) == "table" then
           argstr = "{" .. formatargs(v,true) .. "}"
       else
           argstr = tostring(v)
       end
       if showkeys and type(k) ~= "number" then
           table.insert(strargs,k.."="..argstr)
       else
           table.insert(strargs,argstr)
       end
   end
   return table.concat(strargs, ", ")
end
local realmethods = {}
realmethods.Fire = Instance.new("BindableEvent").Fire
realmethods.Invoke = Instance.new("BindableFunction").Invoke
realmethods.FireServer = Instance.new("RemoteEvent").FireServer
realmethods.InvokeServer = Instance.new("RemoteFunction").InvokeServer
meta.__index = function(t,k)
   if (k == "Fire" or k == "Invoke" or k == "FireServer" or k == "InvokeServer") and (enabled[t.ClassName] and not ignore[t.Name]) then
       return function(self,...)
           local args = {...}
           local ret = {realmethods[k](self,...)}
           warn(t.ClassName.." called!\nPath: "..t:GetFullName().."\n".."Args: "..formatargs(args).."\nReturn: "..formatargs(ret))
           return unpack(ret)
       end
   else
       return oldmeta.__index(t,k)
   end
end