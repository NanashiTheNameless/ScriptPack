-- RemoteSpy for Synapse
-- Written by Autumn (fixed by 3dsboy08) on V3rmillion

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

local console = Synapse:GetConsole()
console:CreateConsole("Synapse RemoteSpy")

local realmethods = {}
realmethods.Fire = Instance.new("BindableEvent").Fire
realmethods.Invoke = Instance.new("BindableFunction").Invoke
realmethods.FireServer = Instance.new("RemoteEvent").FireServer
realmethods.InvokeServer = Instance.new("RemoteFunction").InvokeServer

function hook(methodname, self, ...)
    local args = {...}
    local ret = {realmethods[methodname](self,...)}
    console:Write(self.ClassName.." called!\nPath: ")
    console:SetColor(console.White)
    console:Write(self:GetFullName())
    console:SetColor(console.LightGray)
    console:Write("\n".."Args: ")
    console:SetColor(console.White)
    console:Write(formatargs(args))
    console:SetColor(console.LightGray)
    console:Write("\nReturn: ")
    console:SetColor(console.White)
    console:Write(formatargs(ret))
    console:SetColor(console.LightGray)
    console:WriteLine("\n")
    return unpack(ret)
end

console:SetColor(console.White)
console:WriteLine("Synapse RemoteSpy v1.0.0 // by 3dsboy08\n")
console:SetColor(console.LightGray)
Synapse:SetNamecallHook("FireServer", function(self, ...)
    if self:IsA("RemoteEvent") then
        hook("FireServer", self, ...)
    end
end)
Synapse:SetNamecallHook("InvokeServer", function(self, ...)
    if self:IsA("RemoteFunction") then
        hook("InvokeServer", self, ...)
    end
end)