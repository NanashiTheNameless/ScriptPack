local gene = {"yfc"} 

function newp(prt,parent,name,sizex,sizey,sizez,cx,cy,cz,color,anc,can,tran,ref,form) 
local part = prt 
part.Parent = parent 
part.Name = name 
part.formFactor = form 
part.Size = Vector3.new(sizex,sizey,sizez) 
part.BrickColor = BrickColor.new(color) 
part.Anchored = anc 
part.CFrame = CFrame.new(cx,cy,cz) 
part.CanCollide = can 
part.Transparency = tran 
part.Reflectance = ref 
part:BreakJoints() 
local msh = Instance.new("BlockMesh", part) 
msh.Bevel = 0.1
end 

function weldp(wel,parent,name,part,parta,c01) 
local weld = wel 
weld.Parent = parent
weld.Name = "name" 
weld.Part0 = part 
weld.Part1 = parta 
weld.C1 = c01 
end 

pcall(function() workspace.Base.PuddleJumper:remove() end) 

local model = Instance.new("Model", workspace.Base) 
model.Name = "PuddleJumper" 

local base = Instance.new("Part") 
newp(base,model,"base",15,1,7,5,10,5,"Dark stone grey",false,true,0,0,"Custom") 

local part = Instance.new("Part") 
newp(part,model,"side1",15,2,1,5,10+1,5,"Dark stone grey",false,true,0,0,"Custom") 
local weld = Instance.new("Weld") 
weldp(weld, part, "sidew", base, part, CFrame.new(0,-1.25,3.75) * CFrame.Angles(-25,0,0)) 

local part = Instance.new("Part") 
newp(part,model,"side1",15,2,1,5,10+1,5,"Dark stone grey",false,true,0,0,"Custom") 
local weld = Instance.new("Weld") 
weldp(weld, part, "sidew", base, part, CFrame.new(0,-2,4) * CFrame.Angles(0,0,0)) 

local part = Instance.new("Part") 
newp(part,model,"side1",15,2,1,5,10+1,5,"Dark stone grey",false,true,0,0,"Custom") 
local weld = Instance.new("Weld") 
weldp(weld, part, "sidew", base, part, CFrame.new(0,-4,4) * CFrame.Angles(0,0,0)) 

local part = Instance.new("Part") 
newp(part,model,"side1",15,2,1,5,10+1,5,"Dark stone grey",false,true,0,0,"Custom") 
local weld = Instance.new("Weld") 
weldp(weld, part, "sidew", base, part, CFrame.new(0,-5,4.6) * CFrame.Angles(25,0,0)) 

local part = Instance.new("Part") 
newp(part,model,"side1",15,2,1,5,10+1,5,"Dark stone grey",false,true,0,0,"Custom") 
local weld = Instance.new("Weld") 
weldp(weld, part, "sidew", base, part, CFrame.new(0,-1.25,-3.75) * CFrame.Angles(25,0,0)) 

local part = Instance.new("Part") 
newp(part,model,"side1",15,2,1,5,10+1,5,"Dark stone grey",false,true,0,0,"Custom") 
local weld = Instance.new("Weld") 
weldp(weld, part, "sidew", base, part, CFrame.new(0,-2,-4) * CFrame.Angles(0,0,0)) 

local part = Instance.new("Part") 
newp(part,model,"side1",15,2,1,5,10+1,5,"Dark stone grey",false,true,0,0,"Custom") 
local weld = Instance.new("Weld") 
weldp(weld, part, "sidew", base, part, CFrame.new(0,-4,-4) * CFrame.Angles(0,0,0)) 

local part = Instance.new("Part") 
newp(part,model,"side1",15,2,1,5,10+1,5,"Dark stone grey",false,true,0,0,"Custom") 
local weld = Instance.new("Weld") 
weldp(weld, part, "sidew", base, part, CFrame.new(0,-5,-4.6) * CFrame.Angles(-25,0,0)) 

local roof = Instance.new("Part") 
newp(roof,model,"roof",15,1,7,5,10,5,"Dark stone grey",false,true,0,0,"Custom") 
local weld = Instance.new("Weld") 
weldp(weld, roof, "sidew", base, roof, CFrame.new(0,-6.25,0) * CFrame.Angles(0,0,0)) 

local seat = Instance.new("VehicleSeat", model) 
seat.CanCollide = true 
seat.Name = "Seat" 
seat.Size = Vector3.new(2, 0.5, 2) 
seat:BreakJoints() 
local weld = Instance.new("Weld") 
weldp(weld, seat, "seatw", base, seat, CFrame.new(0,-0.4,4.5) * CFrame.Angles(0,1.55,0)) 
gyro = Instance.new("BodyGyro") 
gyro.Parent = seat 
gyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
velo = Instance.new("BodyVelocity") 
velo.Parent = seat 
velo.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
velo.velocity = Vector3.new(0,0,0) 

local Speed=0 

function opp(msg) 
if msg == "on" then 
Speed=40 
end 
if msg == "off" then 
Speed=0 
end 
end 

for _, v in pairs(gene) do 
for _, o in pairs(game.Players:GetChildren()) do 
if o.Character.Name == v then 
o.Chatted:connect(opp) 
end 
end 
end 

while true do wait() 
velo.velocity = seat.CFrame.lookVector * Speed 
if seat.Throttle>=1 then 
gyro.cframe=gyro.cframe*CFrame.Angles(math.rad(-3),0,0) 
end 

if seat.Throttle<=-1 then 
gyro.cframe=gyro.cframe*CFrame.Angles(math.rad(3),0,0) 
end 

if seat.Steer == 1 then 
gyro.cframe = gyro.cframe * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-5)) --seat.CFrame 
end 
if seat.Steer == 0 then 
end 
if seat.Steer == -1 then 
gyro.cframe = gyro.cframe * CFrame.fromEulerAnglesXYZ(0,0,math.rad(5)) --seat.CFrame 
end 
end 