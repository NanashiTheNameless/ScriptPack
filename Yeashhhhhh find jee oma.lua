function FindAny(str, what, which)
	local where = 0
	local a, b = nil, nil
	for i=1,#str do
		if str:sub(i,i + #what - 1) == what then
			where = where + 1
			if where == which then
				a, b = i, i+ #what-1
				break
			end
		end
	end
	return a, b
end


str = "Gold:90#Lvl:10#"
str2 = "Lvl: lv, Gold: gold"

a, b = FindAny(str, "Gold:", 1)
c, d = FindAny(str, "#", 1)

str2 = str2:gsub("gold", str:sub(b+1, d-1))

a, b = FindAny(str, "Lvl:", 1)
c, d = FindAny(str, "#", 2)

str2 = str2:gsub("lv", str:sub(b+1, d-1))

print(str2)
