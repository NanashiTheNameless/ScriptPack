function _G.tohex(Number)
	if type(Number) ~= "number" then
		Number = tonumber(Number)
	end
	if Number == nil then return "0x0" end
	return "0x" ..tostring(string.format("%X", Number))
end
function _G.ToHex(Number)
	return _G.tohex(Number)
end
function _G.dectohex(Number)
	return _G.tohex(Number)
end
function _G.DecToHex(Number)
	return _G.tohex(Number)
end
function _G.hextodec(Number)
	return tonumber(Number)
end
function _G.HexToDec(Number)
	return _G.hextodec(Number)
end
script.Parent = nil