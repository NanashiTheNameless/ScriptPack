--[[
:: DCode Parser V4

:: Usage
_G.DCode.Parse("Code" [, Depth, Data])

:: Return codes
-2:  Unknown error
-1:  OK
 0:  Init code error or init parse open
 1:  Unknown variable
 2:  Unknown instruction
 3:  Argument length incorrect
 4:  Non-matching data types
 5:  Unrecognized data type
 6:  Loop not int or float
 7:  Open variable
 8:  Unknown cmp type
 9:  Loop error
--]]


Explode = function(Divider, Text)
	if Text == "" or type(Text) ~= "string" then return {""} end
	if Divider == "" or type(Divider) ~= "string" then return {Text} end
	local Position, Words = 0, {}
	for Start, Stop in function() return Text:find(Divider, Position, true) end do
		table.insert(Words, Text:sub(Position, Start - 1))
		Position = Stop + 1
	end
	table.insert(Words, Text:sub(Position))
	return Words
end


RemoveFormatting = function(Word)
	Word = Word:gsub(" ", "")
	Word = Word:gsub("\n", "")
	Word = Word:gsub("\r", "")
	Word = Word:gsub("\t", "")
	return Word
end


_G.DCode = {}
_G.DCode.Temp = {}
_G.DCode.Global = {}
_G.DCode.GetVar = function(Variable, Source)
	if Variable:sub(0, 7) == "global." then
		Variable = Variable:sub(8)
		Source = _G.DCode.Global
	end
	local Words = Explode(".", Variable)
	for i, Word in pairs(Words) do
		if Source.Type == nil then
			if Source[Word] ~= nil then
				if Source[Word].Type == "table" then
					Source = Source[Word].Value
				else
					Source = Source[Word]
					break
				end
			else
				return
			end
		elseif Source.Type == "table" then
			if Source.Value[Word] ~= nil then
				if Source.Value[Word].Type == "table" then
					Source = Source.Value[Word].Value
				else
					Source = Source.Value[Word]
					break
				end
			else
				return
			end
		else
			return
		end
	end
	return Source
end
_G.DCode.SetVar = function(Variable, Value, Type, Source)
	if Variable:sub(0, 7) == "global." then
		Variable = Variable:sub(8)
		Source = _G.DCode.Global
	end
	if string.match(Variable, "%.") then
		local Words = Explode(".", Variable)
		Variable = Words[#Words]
		table.remove(Words, #Words)
		local Variable2 = table.concat(Words, ".")
		Source = _G.DCode.GetVar(Variable2, Source)
		if Source == nil then
			return false
		end
	end
	Source[Variable] = {
		Value = Value,
		Type = Type
	}
	return true
end
_G.DCode.Parse = function(Code, IsChunk, Data)
	if Code == nil then return -2, -1 end
	if IsChunk == nil then IsChunk = false end
	if Data == nil then Data = {} end
	if Code:match(";") == nil or ((Code:match("@") == nil or Code:match("@init") == nil or Code:match("@end") == nil) and IsChunk == false) then
		return 0, -1
	end
	local Debug = false
	local Depth = 1
	if Data.Loop == nil then
		_G.DCode.SetVar("Loop", -1, "int", Data)
	end
	if IsChunk == false then
		local _, InitEnd = Code:find("@end")
		local InitCode = Explode("@", Code:sub(0, InitEnd))
		table.remove(InitCode, 1)
		for Line, InstructionOrig in pairs(InitCode) do
			local Instruction = InstructionOrig:gsub("\n", "")
			if Line == 1 then
				if Instruction ~= "init" then
					return 0, Line
				end
			elseif Line == #InitCode then
				if Instruction ~= "end" then
					return 0, Line
				else
					break
				end
			else
				local Word = Explode(" ", Instruction)
				if Word[1] == "loop" then
					if #Word ~= 2 then
						return 0
					elseif tostring(tonumber(Word[2])) ~= Word[2] then
						return 0, Line
					else
						Data.Loop.Value = tonumber(Word[2])
					end
				elseif Word[1] == "debug" then
					if #Word ~= 1 then
						return 0
					else
						Debug = true
					end
				else
					return 0, Line
				end
			end
		end
	end
	_G.DCode.SetVar("LastWait", -1, "float", Data)
	while true do
		local Instructions = Explode(";", Code)
		for Line, Instruction in pairs(Instructions) do
			if not ((Instruction:sub(0, 1) == "#" and Line ~= 1) or (Instruction:sub(0, 1) == "@" and Line == 1 and IsChunk == false)) then
				if Instruction == "\n" or Instruction == "" then
					break
				else
					while Instruction:match("%%eval ") ~= nil do
						local RealStart, Start = Instruction:find("%%eval ")
						local End, RealEnd = Instruction:find(" end%%")
						if RealStart ~= nil and Start ~= nil and End ~= nil and RealEnd ~= nil then
							RealStart = RealStart - 1
							Start = Start + 1
							RealEnd = RealEnd + 1
							End = End - 1
							local Source = Instruction:sub(Start, End)
							local _, Error = loadstring(Source)
							if Error ~= nil then
								Instruction = Instruction:sub(0, RealStart) .. "[eval, " ..Error:sub(9) .. Instruction:sub(RealEnd)
							else
								local Result = {pcall(function() return loadstring(Source)() end)}
								table.remove(Result, 1)
								if #Result == 0 then
									Instruction = Instruction:sub(0, RealStart).. "nil" ..Instruction:sub(RealEnd)
								elseif #Result == 1 then
									Instruction = Instruction:sub(0, RealStart).. tostring(Result[1]) ..Instruction:sub(RealEnd)
								else
									for y = #Result, 1, -1 do
										Instruction = Instruction:sub(0, RealStart) .. Result[y] .. (y ~= 1 and ":" or "")
									end
								end
							end
						end
					end
					while Instruction:match("%%") ~= nil do
						local RealStart = Instruction:find("%%")
						local End = nil
						EndFound, End = pcall(function() return string.find(Instruction:sub(RealStart + 1), "%%") end)
						if RealStart ~= nil and End ~= nil and EndFound == true then
							End = RealStart + End
							local Start = RealStart
							local RealEnd = End
							RealStart = RealStart - 1
							Start = Start + 1
							RealEnd = RealEnd + 1
							End = End - 1
							local Variable = _G.DCode.GetVar(Instruction:sub(Start, End), Data)
							if Variable ~= nil then
								Instruction = Instruction:sub(0, RealStart) .. tostring(Variable.Type == "table" and Variable or Variable.Value) .. Instruction:sub(RealEnd)
							else
								return 1, Line
							end
						else
							return 1, Line
						end
					end
					local Words = Explode(":", Instruction)
					if #Words < 1 then
						return 3, Line
					else
						Words[1] = RemoveFormatting(Words[1])
						if Words[1] == "end" then
							Depth = Depth - 1
							if Depth <= 0 then
								return 9, Line
							end
						elseif Depth == 1 then
							if Words[1] == "print" then
								local Words2 = Words
								table.remove(Words2, 1)
								print(unpack(Words2))
							elseif Words[1] == "cmp" then
								if #Words < 4 then
									return 3, Line
								else
									Depth = Depth + 1
									local Left = {}
									local Right = {}
									local Type = nil
									for i = 2, #Words do
										if Words[i] == "==" then
											Type = "equal"
										elseif Words[i] == "~=" then
											Type = "not"
										elseif Words[i] == "<" then
											Type = "less"
										elseif Words[i] == ">" then
											Type = "greater"
										elseif Words[i] == "<=" then
											Type = "less or equal"
										elseif Words[i] == ">=" then
											Type = "greater or equal"
										else
											if Type == nil then
												table.insert(Left, Words[i])
											else
												table.insert(Right, Words[i])
											end
										end
									end
									if Type == nil then
										return -2, Line
									end
									if #Left <= 0 or #Right <= 0 then
										return -2, Line
									end
									local Match = false
									for i = 1, #Left do
										for x = 1, #Right do
											local A, B = tostring(Left[i]), tostring(Right[i])
											if (A == B and Type == "equal") or
												(A ~= B and Type == "not") or
												(A < B and Type == "less") or
												(A > B and Type == "greater") or
												(A <= B and Type == "less or equal") or
												(A >= B and Type == "greater or equal") then
												Match = true
											end
										end
									end
									if Match == true then
										local CmpCode = ""
										for i = Line + 1, #Instructions do
											if RemoveFormatting(Instructions[i]) ~= "end" then
												CmpCode = CmpCode .. Instructions[i] ..";"
											else
												break
											end
										end
										_G.DCode.Parse(CmpCode, true, Data)
										print(CmpCode)
									end
								end
							elseif Words[1] == "set" then
								if Words[2] == "int" then
									if #Words < 4 then
										return 3, Line
									else
										if tostring(tonumber(Words[#Words])) ~= Words[#Words] then
											return 4, Line
										else
											if math.floor(tonumber(Words[#Words])) ~= tonumber(Words[#Words]) then
												return 4, Line
											else
												for x = 3, #Words - 1 do
													if _G.DCode.SetVar(Words[x], tonumber(Words[#Words]), "int", Data) == false then
														return 1, Line
													end
												end
											end
										end
									end
								elseif Words[2] == "float" then
									if #Words < 4 then
										return 3, Line
									else
										if tostring(tonumber(Words[#Words])) ~= Words[#Words] then
											return 4, Line
										else
											for x = 3, #Words - 1 do
												if _G.DCode.SetVar(Words[x], tonumber(Words[#Words]), "float", Data) == false then
														return 1, Line
													end
											end
										end
									end
								elseif Words[2] == "string" then
									if #Words < 4 then
										return 3, Line
									else
										for x = 3, #Words - 1 do
											if _G.DCode.SetVar(Words[x], Words[#Words], "string", Data) == false then
												return 1, Line
											end
										end
									end
								elseif Words[2] == "table" then
									if #Words ~= 3 then
										return 3, Line
									else
										if _G.DCode.SetVar(Words[3], {}, "table", Data) == false then
											return 1, Line
										end
									end
								else
									return 5, Line
								end
							else
								return 2, Line
							end
						end
					end
				end
			end
		end
		if Depth ~= 1 then
			return 9, -1
		end
		if IsChunk == false then
			if Data.Loop.Value == -1 then
				break
			else
				if Data.Loop.Type ~= "float" and Data.Loop.Type ~= "int" then
					return 6
				else
					_G.DCode.SetVar("LastWait", wait(Data.Loop.Value), "float", Data)
				end
			end
		end
	end
	return -1, (Data == {} and nil or Data)
end

print(_G.DCode.Parse([[@init
@end;
print: ~ DCode Test Code ~;
print:1. Setting "test" to 2.;
set:int:asd:2;
print:2. Printing "test".;
print:Test is %test%;
print:Cmp "test" to two.;
cmp:%test%:==:2;
	print:Two equals two!;
end;
print:Test complete!;
]]))