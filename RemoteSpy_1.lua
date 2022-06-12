

Save New Duplicate & Edit Just Text Twitter 
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
-- RemoteSpy for Intriga
-- Written by Autumn on V3rmillion

local enabled = {
   -- Set any of these objects to false to stop logging them
   BindableEvent = false;
   BindableFunction = false;
   RemoteEvent = true;
   RemoteFunction = true;
}

local ignore = {
	GetSetting = true;
	GetSelection = true;
	SelectionChanged = true;
	GetAwaiting = true;
}

local meta,oldmeta = getrawmetatable(game),{}
make_writeable(meta)
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