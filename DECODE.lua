local Source = [==[
   SCRIPT GOES IN HERE  ]==]
Source = string.dump(loadstring("return function() " .. Source .. " end")())
Source = Source:gsub(".", function(character) return "\\" .. character:byte() end)
print("loadstring('" .. Source .. "')()")