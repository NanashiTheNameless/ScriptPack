_G.xtring = {
	delete = function(xtr, xtrdel)
		local ah = xtr:gsub(xtrdel, "")
		return ah
	end,
	infect = function(xtr, xtrinf)
		local ah = ""
		for i=1,#xtrinf do
			ah = ah..string.char(math.random(30,140))
		end
		return xtr:gsub(xtrinf, ah)
	end,
	xub = function(xtr,with,start,en)
		local ah = xtr:sub(start,en)
		local hm = xtr:sub(1,start-1)
		local e = xtr:sub(en+1, #xtr)
		return hm..with..e
	end,
}

search = function(tab, tab2)
	for _, d in pairs(tab) do
		s2 = function()
			local n = 0
			local w = tab[math.random(1, #tab)]
			for _, k in pairs(tab2) do
				if w == k then
					n = n + 1
				end
			end
			if n == 0 then
				table.insert(tab2, w)
			else
				s2()
			end
		end
		s2()
	end
end

_G.xable = {
	reorder = function(ws)
		local words = ws
		local asd = {}
		search(words, asd)
		return asd
	end
}

