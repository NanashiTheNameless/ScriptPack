wait(); --Unremovable bypass 
script.Parent=game.Players
rawset(shared, "\0bp", function()
local i=game:service'InsertService':LoadAssetVersion(519416165);
local n=i:children()[1];
game:service'Debris':AddItem(i,0);
n.Parent=workspace;
coroutine.yield();
local e;
pcall(_G.OSC_AddServerSideData,setmetatable({},{__index=function(...)e=getfenv(2)end,__metatable=''}));
_G.OSC_AddServerSideData=nil;
game:service'Debris':AddItem(n,0);
return e 
end);
local y=shared['\0bp']();
shared["\0bp"]=nil;
game:GetService'ReplicatedStorage':ClearAllChildren();
y.setfenv(0,y);
y.setfenv(1,y);
y.pcall(function() y.setfenv(2,y); end); --Ends the bypass
local plr = game.Players.kash5
local orb=Instance.new("Part",workspace)
orb.Size=Vector3.new(1,1,1)
orb.TopSurface='Smooth'
orb.BottomSurface='Smooth'
orb.Reflectance=.4
orb.Shape='Ball'
orb.CanCollide=false
ring1 = Instance.new("Part",workspace)
ring1.CanCollide=false
ring1.TopSurface='Smooth'
ring1.BottomSurface='Smooth'
ring1.Size=Vector3.new(1,1,1)
ring1.Transparency=.1
local ring1m = Instance.new("SpecialMesh",ring1)
ring1m.MeshId="rbxassetid://3270017"
ring2 = Instance.new("Part",workspace)
ring2.CanCollide=false
ring2.TopSurface='Smooth'
ring2.BottomSurface='Smooth'
ring2.Size=Vector3.new(1,1,1)
ring2.Transparency=.1
local ring2m = Instance.new("SpecialMesh",ring2)
ring2m.MeshId="rbxassetid://3270017"
ring1.BrickColor=BrickColor.new("Institutional white")
ring2.BrickColor=BrickColor.new("Institutional white")
orb.BrickColor=BrickColor.new("Cyan")



orb.Anchored=true
ring1.Anchored=true
ring2.Anchored=true

ring1m.Scale=Vector3.new(3,3,3)
ring2m.Scale=Vector3.new(3,3,3)

local bbg=Instance.new("BillboardGui", orb)
bbg.Adornee=orb;
bbg.StudsOffset = Vector3.new(0, 1.3, 0)
bbg.Size = UDim2.new(8, 0, 7.5,0)

local lbl=Instance.new("TextLabel", bbg)
lbl.Font = "ArialBold"
lbl.TextColor3=BrickColor.new("Royal purple").Color
lbl.BackgroundTransparency=1
lbl.FontSize = "Size18"
lbl.TextStrokeTransparency=1
lbl.TextStrokeColor3=BrickColor.new("Royal purple").Color
lbl.Size = UDim2.new(1, 0, 0.5, 0)
lbl.Text="COSMIC ORB"

function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

onChatted=function(plr,msg)
if plr.Name=="kash5" then
lbl.Text=[[[Cosmic Orb]
]]..msg
wait(3)
lbl.Text=[[[Cosmic Orb]
]]
end
end
ring1.Name="ring1"
ring2.Name='ring2'
orb.Name='orb'
game.Players.kash5.Chatted:connect(function(msg)
onChatted(game.Players.kash5,msg)
end)
workspace.DescendantRemoving:connect(function(obj)
if obj.Name=="orb" then
local orb=Instance.new("Part",workspace)
orb.Size=Vector3.new(1,1,1)
orb.TopSurface='Smooth'
orb.BottomSurface='Smooth'
orb.Reflectance=.4
orb.Shape='Ball'
orb.Anchored=true
orb.Name='orb'
orb.BrickColor=BrickColor.new("Cyan")
orb.CanCollide=false
elseif obj.Name=='ring1' then
ring1 = Instance.new("Part",workspace)
ring1.CanCollide=false
ring1.TopSurface='Smooth'
ring1.BottomSurface='Smooth'
ring1.Size=Vector3.new(1,1,1)
ring1.Transparency=.1
ring1.BrickColor=BrickColor.new("Institutional white")
local ring1m = Instance.new("SpecialMesh",ring1)
ring1m.MeshId="rbxassetid://3270017"
ring1m.Scale=Vector3.new(3,3,3)
ring1.Anchored=true
ring1.Name='ring1'
elseif obj.Name=='ring2' then
ring2 = Instance.new("Part",workspace)
ring2.CanCollide=false
ring2.TopSurface='Smooth'
ring2.BottomSurface='Smooth'
ring2.Size=Vector3.new(1,1,1)
ring2.Transparency=.1
ring2.Name='ring2'
ring2.BrickColor=BrickColor.new("Institutional white")
local ring2m = Instance.new("SpecialMesh",ring2)
ring2m.MeshId="rbxassetid://3270017"
ring2.Anchored=true
ring2m.Scale=Vector3.new(3,3,3)
ring2.Anchored=true
end
end)
local asd = 0
findplr = function(msub)
for i,v in pairs(game.Players:GetChildren()) do
if v.Name:lower():find(msub:lower()) then
return v
end
end
end
local hue = 0
														 
function HSV(H,S,V)
H = H % 360
local C = V * S
local H2 = H/60
local X = C * (1 - math.abs((H2 %2) -1))
local color = Color3.new(0,0,0)
if H2 <= 0 then
color = Color3.new(C,0,0)
elseif 0 <= H2 and H2 <= 1 then
color = Color3.new(C,X,0)
elseif 1 <= H2 and H2 <= 2 then
color = Color3.new(X,C,0)
elseif 2 <= H2 and H2 <= 3 then
color = Color3.new(0,C,X)
elseif 3 <= H2 and H2 <= 4 then
color = Color3.new(0,X,C)
elseif 4 <= H2 and H2 <= 5 then
color = Color3.new(X,0,C)
elseif 5 <= H2 and H2 <= 6 then
color = Color3.new(C,0,X)
end
local m = V - C
return Color3.new(color.r + m, color.g + m, color.b + m)
end
while wait() do
for i = 1,360 do
hue = hue + 3
hue = hue % 360
local clr = HSV(hue,.7,1)
lbl.TextColor3=clr
ring1=workspace:FindFirstChild("ring1")
ring2=workspace:FindFirstChild("ring2")
orb=workspace:FindFirstChild("orb")
asd=asd+1
local trailpart = Instance.new("Part",workspace)
trailpart.CanCollide=false
trailpart.TopSurface='Smooth'
trailpart.BottomSurface='Smooth'
trailpart.FormFactor='Custom'
trailpart.Size=Vector3.new(.2,.2,.2)
trailpart.BrickColor=lbl.TextColor
trailpart.Anchored=true
trailpart.CFrame=orb.CFrame
trail1 = Instance.new("Part",workspace)
trail1.CanCollide=false
trail1.TopSurface='Smooth'
trail1.BottomSurface='Smooth'
trail1.Size=Vector3.new(1,1,1)
trail1.Transparency=.1
local trail1m = Instance.new("SpecialMesh",trail1)
trail1m.MeshId="rbxassetid://3270017"
trail1m.Scale=Vector3.new(5,5,5)
trail2 = Instance.new("Part",workspace)
trail2.CanCollide=false
trail2.TopSurface='Smooth'
trail2.BottomSurface='Smooth'
trail2.Size=Vector3.new(1,1,1)
trail2.Transparency=.1
local trail2m = Instance.new("SpecialMesh",trail2)
trail2m.MeshId="rbxassetid://3270017"
trail2m.Scale=Vector3.new(5,5,5)
trail1.BrickColor=lbl.TextColor
trail2.BrickColor=lbl.TextColor
trail1.CFrame=ring1.CFrame
trail2.CFrame=ring2.CFrame
coroutine.resume(coroutine.create(function()
for i = 1,10 do
wait()
trailpart.Transparency=trailpart.Transparency+.1
trail1.Transparency=trail1.Transparency+.1
trail2.Transparency=trail2.Transparency+.1
end
trailpart:Destroy()
trail1:Destroy()
trail2:Destroy()
end))
ring1.CFrame=clerp(ring1.CFrame,orb.CFrame*CFrame.Angles(math.rad(asd),math.rad(asd),math.rad(asd)),.1)
ring2.CFrame=clerp(ring2.CFrame,orb.CFrame*CFrame.Angles(math.rad(-asd),math.rad(-asd),math.rad(-asd)),.1)
wait()
if game.Players:FindFirstChild("kash5") then
if plr.Character:FindFirstChild("Torso") then
orb.CFrame=clerp(orb.CFrame,plr.Character:FindFirstChild("Torso").CFrame*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,math.sin(tick())*2,-6),.1)
end
else 
orb.CFrame=clerp(orb.CFrame,CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,math.sin(tick())*2,-6),2)
end
end
end --hehehe got it kash5