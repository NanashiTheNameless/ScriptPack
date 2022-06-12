-- RemoteSpoof for Intriga/Elysian
-- Written by Autumn on V3rmillion
-- WARNING: This script might interfere with RemoteSpy, only use one or the other

-- Use this script to spoof the return values of all remotes called by your client
-- Simply modify the "returns" table in the SpoofReturns function below to your liking
-- It will trigger every time a remote is called, and provide the calling script with its values

-- The SpoofReturns function's arguments are as follows:
-- name     - The Name of the remote being called
-- class    - The ClassName of the remote being called
-- returns  - A table of all the remote's return values

local SpoofReturns = function(name,class,returns)
    
    -- Edit above this comment
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