local Metatables = {
	ProtectedRead = {
		__metatable = "Attempt to index locked metatable.",
		__index = function(source, index, value)
			error("Attempt to index " ..tostring(index).. ", a " ..type(rawget(source, index)).. " value.")
			return nil
		end
	},
	ProtectedWriteLight = {
		__metatable = "Attempt to index locked metatable.",
		__newindex = function(source, index, value)
			if rawget(source, index) ~= nil then
				rawset(source, index, value)
			else
				error(tostring(index).. " is not a valid member of " ..tostring(source))
			end
			return nil
		end
	},
	ProtectedWrite = {
		__metatable = "Attempt to index locked metatable.",
		__newindex = function(source, index, value)
			error("s " ..tostring(index))
			return nil
		end
	},
	ProtectedReadWrite = {
		__metatable = "Attempt to index locked metatable.",
		__index = function(source, index)
			error("Attempt to index " ..tostring(index).. ", a " ..type(rawget(source, index)).. " value.")
			return nil
		end,
		__newindex = function(source, index, value)
			error("s " ..tostring(index))
			return nil
		end
	},
	ChildAdded = {
		__newindex = function(source, index, value)
			rawset(source, index, value)
			for i = 1, #source.ChildAdded.Connections do
				if source.ChildAdded.Connections[i].Connected == true then
					pcall(function() source.ChildAdded.Connections[i].Do(index, value) end)
				end
			end
		end
	}
}


local Functions = {
	connect = function(Source, Connector)
		table.insert(Source.Connections, {
			Connected = true,
			Do = Connector,
			Disconnect = function(Source2) rawset(Source2, "Connected", false) end
		})
		setmetatable(Source.Connections[#Source.Connections], Metatables.ProtectedWrite)
		return Source.Connections[#source.Connections]
	end
}


if Instance == nil then Instance = {} end
Instance.newtable = function(...)
	local Source = {...}
	local Result = {}
	for i = 1, #Source do
		if type(Source[i]) == "table" then
			for x = 1, #Source[i] do
				pcall(function() table.insert(Result, Source[i][x]) end)
			end
		elseif Source[i] == "ChildAdded" then
			pcall(function()
				Result.ChildAdded = {}
				Result.ChildAdded.Connections = {}
				Result.ChildAdded.connect = Functions.connect
				setmetatable(Result.ChildAdded, Metatables.ProtectedReadWrite)
				setmetatable(Result, Metatables.ChildAdded)
			end)
		elseif Source[i] == "ProtectedRead" then
			pcall(function() setmetatable(Result, Metatables.ProtectedRead) end)
		elseif Source[i] == "ProtectedWrite" then
			pcall(function() setmetatable(Result, Metatables.ProtectedWrite) end)
		elseif Source[i] == "ProtectedReadWrite" then
			pcall(function() setmetatable(Result, Metatables.ProtectedReadWrite) end)
		end
	end
	return Result
end


print("START TEST")
local tb = Instance.newtable({"1", "2", "3", "trollol"}, "ChildAdded")
print("CONTENTS OF tb")
for i, x in pairs(tb) do
	print(i, x)
end
print("CONNECTING CHILDADDED")
local connect = tb.ChildAdded:connect(function(index, value) print("CHILD ADDED:", tostring(index), tostring(value)) end)
print("CONNECTED CHILDADDED")
print("TEST 1: expecting return, setting new variable")
tb.HERPDERP = "lolwhut"
print("TEST 2: expecting return, setting new variable")
tb.HERPDERP2 = "lolwhut 2"
print("TEST 3: expecting no return, setting existing variable")
tb.HERPDERP = "lolwhut 3"
print("DISCONNECTING CHILDADDED")
connect:disconnect()
print("DISCONNECTED CHILDADDED")
print("TEST 4: expecting no return, event disconnected")
tb.HERPDERP4 = "lolwhut 4"
print("TEST 5: expecting no return, even if still connected")
tb.HERPDERP2 = "lolwhut 5"
print("CONTENTS OF tb")
for i, x in pairs(tb) do
	print(i, x)
end
print("ProtectedReadWrite TEST OF ChildAdded")
print(pcall(function() tb.ChildAdded.derp = "lol" end))
print(pcall(function() local _ = tb.ChildAdded.whut end))
print("END TEST")