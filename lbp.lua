local bypass=getfenv(getmetatable(LoadLibrary("RbxUtility").Create).__call)
local oxbox=getfenv()
setfenv(1, setmetatable({}, {__index = bypass}))
bypass.coroutine.yield()
oxbox.script:Destroy()
--uses JSON to transport commands


local ENV={
Players=game:GetService"Players";
Workspace=game:GetService"Workspace";
Lighting=game:GetService"Lighting";
ReplicatedFirst=game:GetService"ReplicatedFirst";
ReplicatedStorage=game:GetService"ReplicatedStorage";
ReplicatedStorage=game:GetService"ReplicatedStorage";
ServerStorage=game:GetService"ServerStorage";
StarterGui=game:GetService"StarterGui";
StarterPack=game:GetService"StarterPack";
StarterPlayer=game:GetService"StarterPlayer";
HttpService=game:GetService"HttpService";
Debris=game:GetService"Debris";
Teams=game:GetService"Teams";
TimerService=game:GetService"TimerService";

DataStoreService=game:GetService"DataStoreService";
InsertService=game:GetService"InsertService";
AssetService=game:GetService"AssetService";
Chat=game:GetService"Chat";
TestService=game:GetService"TestService";

AssetPrefix="http://www.roblox.com/asset/?id=";

------------------------------
coroutine=coroutine;
math=math;
os=os;
string=string;
table=table;
------------------------------
assert=assert;
collectgarbage=collectgarbage;
dofile=dofile;
error=error;
_G=_G;
gcinfo=gcinfo;
getfenv=getfenv;
getmetatable=getmetatable;
ipairs=ipairs;
load=load;
loadfile=loadfile;
loadstring=loadstring;
newproxy=newproxy;
next=next;
pairs=pairs;
pcall=pcall;
print=print;
rawequal=rawequal;
rawget=rawget;
rawset=rawset;
select=select;
setfenv=setfenv;
setmetatable=setmetatable;
tonumber=tonumber;
tostring=tostring;
type=type;
unpack=unpack;
_VERSION=_VERSION;
xpcall=xpcall;
------------------------------
Delay=Delay;
delay=delay;
ElapsedTime=ElapsedTime;
elapsedTime=elapsedTime;
LoadLibrary=LoadLibrary;
printidentity=printidentity;
require=require;
Spawn=Spawn;
spawn=spawn;
tick=tick;
time=time;
Version=Version;
version=version;
Wait=Wait;
wait=wait;
warn=warn;
ypcall=ypcall;
------------------------------
shared=shared;
game=game;
------------------------------
-----assistance functions-----
add=function(a,b) return a+b end;
sub=function(a,b) return a-b end;
mul=function(a,b) return a*b end;
div=function(a,b) return a/b end;
mod=function(a,b) return a%b end;
pow=function(a, b) return a^b end;

len=function(a) return #a end;

boolnot=function(a) return not a end;
booland=function(a,b) return a and b end;
boolor=function(a,b) return a or b end;

compequ=function(a,b) return a == b end;
compnequ=function(a,b) return a ~= b end;
complt=function(a,b) return a < b end;
compgt=function(a,b) return a > b end;
complte=function(a,b) return a <= b end;
compgte=function(a,b) return a >= b end;

arg=function(...) local args={...}; return args[args[#args]] end;
tindex=function(t,i) return t[i] end; 
set=function(t, i, v) t[i]=v end
}

--[[ how stuff is represented
	
	indexed object
	{"type":"index", "data":["game","Workspace","Baseplate"]}
	
	function call
	{"type","fcall", "index":<indexed object>, "arguments":[{"type":"string", "value":"Hello World!"},{"type":"number", "value":"3.00"}]}
--]]

function createIndex(index)
	return {type="index", data=index}
end

function parseIndex(obj)
	assert(obj.type=="index")
	local value=setmetatable({}, {__index=ENV})
	for _, index in ipairs(obj.data) do
		value=value[index]
	end
	return value
end

function createLiteral(value)
	assert(({number=true, table=true, string=true, ["nil"]=true, boolean=true})[type(value)], "Only the types number, string, boolean, nil, and table are supported")
	local obj={type="literal", value_type=type(value)}
	obj.value=value
	if type(value)=="table" then
		obj.value=game:GetService"HttpService":JSONEncode(value)
	elseif type(value)=="nil" then
		obj.value="type_nil"
	end
	return obj
end

function parseLiteral(obj)
	assert(({number=true, table=true, string=true, ["nil"]=true, boolean=true})[obj.value_type], "Unknown type \""..obj.type.."\"")
	if obj.value_type=="number" then
		return tonumber(obj.value)
	elseif obj.value_type=="string" then
		return obj.value
	elseif obj.value_type=="table" then
		return game:GetService"HttpService":JSONDecode(obj.value)
	elseif obj.value_type=="type_nil" then
		return nil
	elseif obj.value_type=="boolean" then
		return obj.value
	end
	error"Unable to parse literal"
end
--{"type","fcall", "index":<indexed object>, "arguments":[{"type":"string", "value":"Hello World!"},{"type":"number", "value":"3.00"}]}
function createFCall(findex, ...)
	return {type="fcall", index=createIndex(findex), arguments={...}}
end
--predefine it
function recursePrint(tbl, tabs)
	tabs=tabs or 0
	for k, v in pairs(tbl) do
		print(("\t"):rep(tabs), k, "=", v, "<"..type(v)..">")
		if type(v)=="table" then
			recursePrint(v, tabs+1)
		end
	end
end
function parseFCall(obj)
	return function()
	local idex=parseIndex(obj.index)
	local args={}
	--recursePrint(obj)
	for _, v in pairs(obj.arguments) do
		table.insert(args, parseObj(v))
	end
	return createIndex(({idex(unpack(args))})[1])
	end
end
function parseObj(obj)
	if obj.type=="literal" then
		return parseLiteral(obj)
	elseif obj.type=="index" then
		return parseIndex(obj)
	elseif obj.type=="fcall" then
		return parseFCall(obj)	
	else
		print("unknown type:", obj.type)
		return "!UNKNOWN!"
	end
end
JSONEncode=function(t)return game:GetService"HttpService":JSONEncode(t)end
JSONDecode=function(t)return game:GetService"HttpService":JSONDecode(t)end

game:GetService"Players".LocalPlayer.ChildAdded:connect(function(obj)
if obj.ClassName=="StringValue" and obj.Name=="Execute" then
parseFCall(JSONDecode(obj.Value))()
end
obj:Destroy()
end)