local h = Instance.new("HopperBin") 
h.Name = "Snake" 
local s = Instance.new("Script") 
s.Parent = h 
s.Name = "Script" 
s.Source = [[ 
local bin = script.Parent 
mode = "stay" 
length = 3 
away = 2 
gap = 0 
local part1 = Instance.new("Seat") 
part1.BrickColor = BrickColor.new("Bright bluish green") 
part1.Transparency = .5 
part1.Reflectance = .5 
part1.TopSurface = 0 
part1.BottomSurface = 0 
part1.Locked = true 
part1.Size = Vector3.new(3,1,length) 
part1.Anchored = true 
part1.Shape = 1 
part1.CanCollide = true 
part1.Parent = nil 
part1.Name = "Part1" 

local part2 = part1:Clone() 
part2.Parent = nil 
part2.Name = "Part2" 
part2.CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 

local part3 = part2:Clone() 
part3.Parent = nil 
part3.Name = "Part3" 
part3.CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 

local part4 = part3:Clone() 
part4.Parent = nil 
part4.Name = "Part4" 
part4.CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 

local part5 = part4:Clone() 
part5.Parent = nil 
part5.Name = "Part5" 
part5.CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 

local part6 = part5:Clone() 
part6.Parent = nil 
part6.Name = "Part6" 
part6.CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 

local part7 = part6:Clone() 
part7.Parent = nil 
part7.Name = "Part7" 
part7.CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 

local part8 = part7:Clone() 
part8.Parent = nil 
part8.Name = "Part8" 
part8.CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 

local part9 = part8:Clone() 
part9.Parent = nil 
part9.Name = "Part9" 
part9.CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 

local part10 = part9:Clone() 
part10.Parent = nil 
part10.Name = "Part10" 
part10.CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 

local part11 = part10:Clone() 
part11.Parent = nil 
part11.Name = "Part11" 
part11.CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 

local part12 = part11:Clone() 
part12.Parent = nil 
part12.Name = "Part12" 
part12.CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 

local part13 = part12:Clone() 
part13.Parent = nil 
part13.Name = "Part13" 
part13.CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 

local part14 = part13:Clone() 
part14.Parent = nil 
part14.Name = "Part14" 
part14.CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 

local part15 = part14:Clone() 
part15.Parent = nil 
part15.Name = "Part15" 
part15.CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 

local part16 = part15:Clone() 
part16.Parent = nil 
part16.Name = "Part16" 
part16.CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 

local part17 = part16:Clone() 
part17.Parent = nil 
part17.Name = "Part17" 
part17.CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 

local part18 = part17:Clone() 
part18.Parent = nil 
part18.Name = "Part18" 
part18CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 

local part19 = part18:Clone() 
part19.Parent = nil 
part19.Name = "Part19" 
part19.CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 

local part20 = part19:Clone() 
part20.Parent = nil 
part20.Name = "Part20" 
part20.CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)) 

function resize(x, y, z) 
length = z 
part1.Size = Vector3.new(x, y, z) 
part2.Size = Vector3.new(x, y, z) 
part3.Size = Vector3.new(x, y, z) 
part4.Size = Vector3.new(x, y, z) 
part5.Size = Vector3.new(x, y, z) 
part6.Size = Vector3.new(x, y, z) 
part7.Size = Vector3.new(x, y, z) 
part8.Size = Vector3.new(x, y, z) 
part9.Size = Vector3.new(x, y, z) 
part10.Size = Vector3.new(x, y, z) 
part11.Size = Vector3.new(x, y, z) 
part12.Size = Vector3.new(x, y, z) 
part13.Size = Vector3.new(x, y, z) 
part14.Size = Vector3.new(x, y, z) 
part15.Size = Vector3.new(x, y, z) 
part16.Size = Vector3.new(x, y, z) 
part17.Size = Vector3.new(x, y, z) 
part18.Size = Vector3.new(x, y, z) 
part19.Size = Vector3.new(x, y, z) 
part20.Size = Vector3.new(x, y, z) 
end 

function color(col) 
part1.BrickColor = col 
part2.BrickColor = col 
part3.BrickColor = col 
part4.BrickColor = col 
part5.BrickColor = col 
part6.BrickColor = col 
part7.BrickColor = col 
part8.BrickColor = col 
part9.BrickColor = col 
part10.BrickColor = col 
part11.BrickColor = col 
part12.BrickColor = col 
part13.BrickColor = col 
part14.BrickColor = col 
part15.BrickColor = col 
part16.BrickColor = col 
part17.BrickColor = col 
part18.BrickColor = col 
part19.BrickColor = col 
part20.BrickColor = col 
end 

function reflectance(refle) 
part1.Reflectance = refle 
part2.Reflectance = refle 
part3.Reflectance = refle 
part4.Reflectance = refle 
part5.Reflectance = refle 
part6.Reflectance = refle 
part7.Reflectance = refle 
part8.Reflectance = refle 
part9.Reflectance = refle 
part10.Reflectance = refle 
part11.Reflectance = refle 
part12.Reflectance = refle 
part13.Reflectance = refle 
part14.Reflectance = refle 
part15.Reflectance = refle 
part16.Reflectance = refle 
part17.Reflectance = refle 
part18.Reflectance = refle 
part19.Reflectance = refle 
part20.Reflectance = refle 
end 

function transparency(trans) 
part1.Transparency = trans 
part2.Transparency = trans 
part3.Transparency = trans 
part4.Transparency = trans 
part5.Transparency = trans 
part6.Transparency = trans 
part7.Transparency = trans 
part8.Transparency = trans 
part9.Transparency = trans 
part10.Transparency = trans 
part11.Transparency = trans 
part12.Transparency = trans 
part13.Transparency = trans 
part14.Transparency = trans 
part15.Transparency = trans 
part16.Transparency = trans 
part17.Transparency = trans 
part18.Transparency = trans 
part19.Transparency = trans 
part20.Transparency = trans 
end 
function shape(sha) 
part1.Shape = sha 
part2.Shape = sha 
part3.Shape = sha 
part4.Shape = sha 
part5.Shape = sha 
part6.Shape = sha 
part7.Shape = sha 
part8.Shape = sha 
part9.Shape = sha 
part10.Shape = sha 
part11.Shape = sha 
part12.Shape = sha 
part13.Shape = sha 
part14.Shape = sha 
part15.Shape = sha 
part16.Shape = sha 
part17.Shape = sha 
part18.Shape = sha 
part19.Shape = sha 
part20.Shape = sha 
end 

distance = length/2 
speed = 5 
local main = part20:Clone() 
main.Shape = 0 
main.Size = Vector3.new(5, 5, 5) 
main.Transparency = 0.5 
main.Anchored = true 
main.BrickColor = BrickColor.Red() 
main.TopSurface = 0 
main.BottomSurface = 0 
function onButton1Down(mouse) 
local player = game.Players.LocalPlayer 
if player == nil then return end 
main.Parent = me 
part1.Parent = me 
part2.Parent = me 
part3.Parent = me 
part4.Parent = me 
part5.Parent = me 
part6.Parent = me 
part7.Parent = me 
part8.Parent = me 
part9.Parent = me 
part10.Parent = me 
part11.Parent = me 
part12.Parent = me 
part13.Parent = me 
part14.Parent = me 
part15.Parent = me 
part16.Parent = me 
part17.Parent = me 
part18.Parent = me 
part19.Parent = me 
part20.Parent = me 

me1 = bin.Parent.Parent 
me = bin.Parent.Parent.Character 

follow = true 
while follow do 
distance = length/2 
mousehit = mouse.Hit.p 
if (main.Position - mousehit).magnitude >speed then 
main_mousehit = (main.Position - mousehit).unit*speed 
else 
main_mousehit = (main.Position - mousehit).unit*1 
end 
start1 = main.Position-main_mousehit 
main.CFrame = CFrame.new(start1.x, start1.y, start1.z) 
p1pos = part1.Position 
start1_p1pos = (start1 - p1pos).unit 
spreadp1 = start1_p1pos*(distance+away) 
part1.CFrame = CFrame.new(start1-spreadp1, start1) 

p1c = part1.CFrame 
start2 = part1.Position-(p1c.lookVector*distance) 
p2pos = part2.Position 
start2_p2pos = (start2 - p2pos).unit 
spreadp2 = start2_p2pos*(distance+gap) 
part2.CFrame = CFrame.new(start2-spreadp2, start2) 

p2c = part2.CFrame 
start3 = part2.Position-(p2c.lookVector*distance) 
p3pos = part3.Position 
start3_p3pos = (start3 - p3pos).unit 
spreadp3 = start3_p3pos*(distance+gap) 
part3.CFrame = CFrame.new(start3-spreadp3, start3) 

p3c = part3.CFrame 
start4 = part3.Position-(p3c.lookVector*distance) 
p4pos = part4.Position 
start4_p4pos = (start4 - p4pos).unit 
spreadp4 = start4_p4pos*(distance+gap) 
part4.CFrame = CFrame.new(start4-spreadp4, start4) 

p4c = part4.CFrame 
start5 = part4.Position-(p4c.lookVector*distance) 
p5pos = part5.Position 
start5_p5pos = (start5 - p5pos).unit 
spreadp5 = start5_p5pos*(distance+gap) 
part5.CFrame = CFrame.new(start5-spreadp5, start5) 

p5c = part5.CFrame 
start6 = part5.Position-(p5c.lookVector*distance) 
p6pos = part6.Position 
start6_p6pos = (start6 - p6pos).unit 
spreadp6 = start6_p6pos*(distance+gap) 
part6.CFrame = CFrame.new(start6-spreadp6, start6) 

p6c = part6.CFrame 
start7 = part6.Position-(p6c.lookVector*distance) 
p7pos = part7.Position 
start7_p7pos = (start7 - p7pos).unit 
spreadp7 = start7_p7pos*(distance+gap) 
part7.CFrame = CFrame.new(start7-spreadp7, start7) 

p7c = part7.CFrame 
start8 = part7.Position-(p7c.lookVector*distance) 
p8pos = part8.Position 
start8_p8pos = (start8 - p8pos).unit 
spreadp8 = start8_p8pos*(distance+gap) 
part8.CFrame = CFrame.new(start8-spreadp8, start8) 

p8c = part8.CFrame 
start9 = part8.Position-(p8c.lookVector*distance) 
p9pos = part9.Position 
start9_p9pos = (start9 - p9pos).unit 
spreadp9 = start9_p9pos*(distance+gap) 
part9.CFrame = CFrame.new(start9-spreadp9, start9) 

p9c = part9.CFrame 
start10 = part9.Position-(p9c.lookVector*distance) 
p10pos = part10.Position 
start10_p10pos = (start10 - p10pos).unit 
spreadp10 = start10_p10pos*(distance+gap) 
part10.CFrame = CFrame.new(start10-spreadp10, start10) 

p10c = part10.CFrame 
start11 = part10.Position-(p10c.lookVector*distance) 
p11pos = part11.Position 
start11_p11pos = (start11 - p11pos).unit 
spreadp11 = start11_p11pos*(distance+gap) 
part11.CFrame = CFrame.new(start11-spreadp11, start11) 

p11c = part11.CFrame 
start12 = part11.Position-(p11c.lookVector*distance) 
p12pos = part12.Position 
start12_p12pos = (start12 - p12pos).unit 
spreadp12 = start12_p12pos*(distance+gap) 
part12.CFrame = CFrame.new(start12-spreadp12, start12) 

p12c = part12.CFrame 
start13 = part12.Position-(p12c.lookVector*distance) 
p13pos = part13.Position 
start13_p13pos = (start13 - p13pos).unit 
spreadp13 = start13_p13pos*(distance+gap) 
part13.CFrame = CFrame.new(start13-spreadp13, start13) 

p13c = part13.CFrame 
start14 = part13.Position-(p13c.lookVector*distance) 
p14pos = part14.Position 
start14_p14pos = (start14 - p14pos).unit 
spreadp14 = start14_p14pos*(distance+gap) 
part14.CFrame = CFrame.new(start14-spreadp14, start14) 

p14c = part14.CFrame 
start15 = part14.Position-(p14c.lookVector*distance) 
p15pos = part15.Position 
start15_p15pos = (start15 - p15pos).unit 
spreadp15 = start15_p15pos*(distance+gap) 
part15.CFrame = CFrame.new(start15-spreadp15, start15) 

p15c = part15.CFrame 
start16 = part15.Position-(p15c.lookVector*distance) 
p16pos = part16.Position 
start16_p16pos = (start16 - p16pos).unit 
spreadp16 = start16_p16pos*(distance+gap) 
part16.CFrame = CFrame.new(start16-spreadp16, start16) 

p16c = part16.CFrame 
start17 = part16.Position-(p16c.lookVector*distance) 
p17pos = part17.Position 
start17_p17pos = (start17 - p17pos).unit 
spreadp17 = start17_p17pos*(distance+gap) 
part17.CFrame = CFrame.new(start17-spreadp17, start17) 

p17c = part17.CFrame 
start18 = part17.Position-(p17c.lookVector*distance) 
p18pos = part18.Position 
start18_p18pos = (start18 - p18pos).unit 
spreadp18 = start18_p18pos*(distance+gap) 
part18.CFrame = CFrame.new(start18-spreadp18, start18) 

p18c = part18.CFrame 
start19 = part18.Position-(p18c.lookVector*distance) 
p19pos = part19.Position 
start19_p19pos = (start19 - p19pos).unit 
spreadp19 = start19_p19pos*(distance+gap) 
part19.CFrame = CFrame.new(start19-spreadp19, start19) 

p19c = part19.CFrame 
start20 = part19.Position-(p19c.lookVector*distance) 
p20pos = part20.Position 
start20_p20pos = (start20 - p20pos).unit 
spreadp20 = start20_p20pos*(distance+gap) 
part20.CFrame = CFrame.new(start20-spreadp20, start20) 

wait() 

end 
end 
function onButton1Up(mouse) 
follow = false 
if mode == "hide" then 
main.Parent = nil 
part1.Parent = nil 
part2.Parent = nil 
part3.Parent = nil 
part4.Parent = nil 
part5.Parent = nil 
part6.Parent = nil 
part7.Parent = nil 
part8.Parent = nil 
part9.Parent = nil 
part10.Parent = nil 
part11.Parent = nil 
part12.Parent = nil 
part13.Parent = nil 
part14.Parent = nil 
part15.Parent = nil 
part16.Parent = nil 
part17.Parent = nil 
part18.Parent = nil 
part19.Parent = nil 
part20.Parent = nil 
else 
return 
end 
end 
x = 3 
y = 1 
z = 3 
trans = .5 
refle = .5 
sha = 1 

local msg = Instance.new("Hint") 
function say(tehmessage) 
msg.Parent = me1 
msg.Text = tehmessage 
wait(2) 
msg.Parent = nil 
end 

function onKeyDown(key) 
if (key~=nil) then 

----------------------modes---------------------- 
if (key=="m") then 
mode = "stay" 
say("mode: "..mode) 
end 
if (key=="n") then 
mode = "hide" 
say("mode: "..mode) 
end 

------------------ball/cyl size------------------ 
if (key=="c") then 
if x == 1 or y == 1 or z == 1 then return end 
x = x - 1 
y = y - 1 
z = z - 1 
resize(x, y, z) 
say("size:"..x..", "..y..", "..z) 
end 

if (key=="p") then 
x = 1 
y = 1 
z = 1 
resize(x, y, z) 
say("size:"..x..", "..y..", "..z) 
end 

if (key=="v") then 
if x == 10 or y == 10 or z == 10 then return end 
x = x + 1 
y = y + 1 
z = z + 1 
resize(x, y, z) 
say("size:"..x..", "..y..", "..z) 
end 
----------------------refle---------------------- 
if (key=="r") then 
if refle >= 1 then return end 
refle = refle + .1 
reflectance(refle) 
say("refle: "..refle) 
end 

if (key=="e") then 
if refle <= 0 then return end 
refle = refle - .1 
reflectance(refle) 
say("refle: "..refle) 
end 

----------------------trans---------------------- 
if (key=="z") then 
if trans >= 1 then return end 
trans = trans + .1 
transparency(trans) 
say("trans: "..trans) 
end 

if (key=="x") then 
if trans <= 0 then return end 
trans = trans - .1 
transparency(trans) 
say("trans: "..trans) 
end 

----------------------shape---------------------- 
if (key=="q") then 
if sha == 2 then 
sha = 0 
shape(sha) 
say("shape: "..sha) 
else 
sha = sha + 1 
shape(sha) 
say("shape: "..sha) 
end 
end 

------------------------gap----------------------- 
if (key=="f") then 
if gap == 5 then 
gap = 0 
say("gap: "..gap) 
else 
gap = gap + 1 
say("gap: "..gap) 
end 
end 
----------------------size----------------------- 
if (key=="t") then 
if x == 10 then return end 
x = x+1 
resize(x, y, z) 
say("size:"..x..", "..y..", "..z) 
end 
if (key=="g") then 
if x == 1 then return end 
x = x-1 
resize(x, y, z) 
say("size:"..x..", "..y..", "..z) 
end 
if (key=="y") then 
if y == 10 then return end 
y = y+1 
resize(x, y, z) 
say("size:"..x..", "..y..", "..z) 
end 
if (key=="h") then 
if y == 1 then return end 
y = y-1 
resize(x, y, z) 
say("size:"..x..", "..y..", "..z) 
end 
if (key=="u") then 
if z == 10 then return end 
z = z+1 
resize(x, y, z) 
say("size:"..x..", "..y..", "..z) 
end 
if (key=="j") then 
if z == 1 then return end 
z = z-1 
resize(x, y, z) 
say("size:"..x..", "..y..", "..z) 
end 

----------------------colour---------------------- 
if (key=="b") then 
color(BrickColor.Red()) 
say("color changed") 
end 

----------------------speed---------------------- 
if (key=="k") then 
if speed == 5 then return end 
speed = speed+1 
say("speed: "..speed) 
end 
if (key=="l") then 
if speed == 0 then return end 
speed = speed-1 
say("speed: "..speed) 
end 
end 
end 

function onSelected(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(onKeyDown) 
end 

bin.Selected:connect(onSelected) 
]] 
h:clone().Parent = game.Players.yfc.Backpack 
h:remove() 
