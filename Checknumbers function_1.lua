function checkfornumbers(str) 
	a = string.find(str, "%a") 
	if a > 0 then
		return true
	else
		return false
	end 
end 

if checkfornumbers("Ololol") == true then 
print("True") 
else 
print("False") 
end 
