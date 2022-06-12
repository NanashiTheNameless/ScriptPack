local SpoofReturns = function(name,class,returns)
   if name == "AttemptPurchase" and returns[1] == false then
       returns[1] = true
   end
   return unpack(returns)
end

local meta,oldmeta = getrawmetatable(game),{}
for i,v in next,meta do oldmeta[i] = v end
local realmethods = {}
realmethods.Fire = Instance.new("BindableEvent").Fire
realmethods.Invoke = Instance.new("BindableFunction").Invoke
realmethods.FireServer = Instance.new("RemoteEvent").FireServer
realmethods.InvokeServer = Instance.new("RemoteFunction").InvokeServer
meta.__index = function(t,k)
   if k == "Fire" or k == "Invoke" or k == "FireServer" or k == "InvokeServer" then
       return function(self,...)
           return SpoofReturns(t.Name,t.ClassName,{realmethods[k](self,...)})
       end
   else
       return oldmeta.__index(t,k)
   end
end