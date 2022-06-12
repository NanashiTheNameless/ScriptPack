guests = {"SpleenYanks","Scriptax","SphericalSquare","Gullorks","Coderx","acb227","TheNewScripter","bob371","hyper900","Racken","xSoulStealerx","malachi11","Luc599345"} 

function part(part,sx,sy,sz,cx,cy,cz,color,form,parent,anchor,mat,trans,refelc,can) 
part.Parent = parent 
part.Transparency = trans 
part.CanCollide = can
part.Reflectance = reflec
part.BrickColor = BrickColor.new(color) 
part.formFactor = form 
part.Material = mat 
part.Size = Vector3.new(sx,sy,sz) 
part.Anchored = anchor 
part.CFrame = CFrame.new(cx,cy,cz) 
end 
par = workspace.Base 
--//parts\\--
fl = Instance.new("Part") 
part(fl,15,2,2,25,0,0,'Bright yellow','Custom',par,true,'Slate',0,0,true) 
fl = Instance.new("Part") 
part(fl,2,15,2,25+7.5,7.5,0,'Bright yellow','Custom',par,true,'Slate',0,0,true) 
fl = Instance.new("Part") 
part(fl,2,15,2,25-7.5,7.5,0,'Bright yellow','Custom',par,true,'Slate',0,0,true) 
fl = Instance.new("Part") 
part(fl,17,2,2,25,15.5,0,'Bright yellow','Custom',par,true,'Slate',0,0,true) 
flp = Instance.new("Part") 
part(flp,16,14.5,1,25,7.5,0,'Bright blue','Custom',par,true,'Plastic',0.5,0,false) 
flpm = Instance.new("BlockMesh") 
flpm.Bevel = 0.1 
flpm.Parent = flp 
flb = Instance.new("Part") 
part(flb,1,1,1,0,20000,0,'Bright yellow','Custom',par,true,'Slate',1,0.2,false) 
for i = 0, 600, 1 do 
local flc = Instance.new("Part") 
part(flc,2,2,2,math.rad(math.random(-2, 2)*i),20000+math.rad(2*i/2),math.rad(math.random(-2, 2)*i),'Bright yellow','Custom',par,true,'Slate',0,0.2,true) 
wait() 
end 
--tele--
while wait() do 
script.Parent = nil 
for _, v in pairs(game.Players:GetChildren()) do 
if (v.Character.Torso.Position - flp.Position).magnitude < 10 then 
for _, g in pairs(guests) do 
if v.Name == g then
v.Character.Torso.CFrame = flb.CFrame + Vector3.new(0, 25, 0) 
end 
end 
end 
end 
end