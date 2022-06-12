--[[
PacketLoader v8

Functions:
SendToClient (in packet)
--]]


if script ~= nil then script.Parent = nil end
if Workspace:FindFirstChild("PacketLoader") == nil then
	local PacketLoader = Instance.new("Configuration", Workspace)
	PacketLoader.Name = "PacketLoader"
	PacketLoader.ChildAdded:connect(function(Packet)
		if Packet.ClassName == "StringValue" then
			local Function, Error = loadstring(Packet.Value)
			if Function ~= nil then
				Spawn(function()
					coroutine.wrap(function()
						SendToClient = function(Code, Name, Args)
							if Args ~= nil then
								for i = 1, #Args, 2 do
									local Find = math.random()
									local ParentObject = Instance.new("ObjectValue", Workspace)
									ParentObject.Name = Find
									ParentObject.Value = Args[i + 1]
									Code = [[local Value = Workspace["]] ..Find.. [["] 
local ]] ..Args[i].. [[ = Value.Value 
Value:Remove() 
]] ..Code
								end
							end
							local ReturnPacket = Instance.new("StringValue")
							ReturnPacket.Name = Name or "ReturnPacket"
							ReturnPacket.Value = Code
							ReturnPacket.Parent = Packet
						end
						Function()
					end)()
				end)
				print(string.format("Loaded packet \"%s\"", Packet.Name))
			else
				print(string.format("Packet \"%s\" error: %s", Packet.Name, Error:sub(8):sub(0, Error:len() - 1)))
			end
		end
	end)
	PacketLoader.Changed:connect(function(Property)
		if Property == "Name" then
			PacketLoader.Name = "PacketLoader"
		elseif Property == "Parent" then
			PacketLoader.Parent = Workspace
		end
	end)
end