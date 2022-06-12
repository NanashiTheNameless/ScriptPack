local strand = string.dump([[function() 

SCRIPTSOURCE 

end]]) 

local s = "loadstring('" 

for i = 1, strand:len() do 
s = s .. "\\" .. strand:sub(i,i):byte() 
end 

s = s .. "')()" 
print(s) 