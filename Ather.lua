local plr = game.Players.LocalPlayer
local chr = plr.Character
local maus = plr:GetMouse()
local PGui=plr.PlayerGui
local lleg = chr["Left Leg"]
local rleg = chr["Right Leg"]
local larm = chr["Left Arm"]
local rarm = chr["Right Arm"]
local hed = chr.Head
local rutprt = chr.HumanoidRootPart
local torso = chr.Torso
local otheranims=false
local armmovement=false
local equipped=false
chr.Animate.Disabled=true
local MaxSpeed=52
local runnin=false
local homingEnabled=true
local tik=0
local fldb={['w']=false,['a']=false,['s']=false,['d']=false,['q']=false,['e']=false}
local armanim=""
local animset="NotEquipped"
local rotvaluex=0
local rotvaluey=0
local rotvaluez=0
local ayyy=0
local firing=false
local distances={}
local torsos={}
local currenthealth=100
local shield=false

local decals={"339302475","339302317","339303213","339302608","339302827","339303066","339303401","150037981","167241003","235558077","265452635","260161937","242814125","230417107","252230874","231949998","229222676","181607551","231953209","123431503","184905165","172755711","161494218","292791711","205912841","68953525","180163702","123385234","138847283","159127645","172511645","210175195","206539362","192486406","96613287","131764585","168427244","128595009","96687581","171590601","172329151","72116648","221557708","214883980"}

coroutine.wrap(function()
for i,x in pairs(hed:GetChildren()) do if x:IsA('Sound') then x:Destroy() end end end)()
function Lerp(a, b, i)
local com1 = {a.X, a.Y, a.Z, a:toEulerAnglesXYZ()}
local com2 = {b.X, b.Y, b.Z, b:toEulerAnglesXYZ()}
local calx = com1[1] + (com2[1] - com1[1]) * i
local caly = com1[2] + (com2[2] - com1[2]) * i
local calz = com1[3] + (com2[3] - com1[3]) * i
local cala = com1[4] + (com2[4] - com1[4]) * i
local calb = com1[5] + (com2[5] - com1[5]) * i
local calc = com1[6] + (com2[6] - com1[6]) * i
return CFrame.new(calx, caly, calz) * CFrame.Angles(cala, calb, calc)
end
function TwnSingleNumber(s,f,m)
local wot=s+(f-s)*m
return wot
end
function TwnVector3(q,w,e)
local begin={q.x,q.y,q.z}
local ending={w.x,w.y,w.z}
local bgx=begin[1]+(ending[1]-begin[1])*e
local bgy=begin[2]+(ending[2]-begin[2])*e
local bgz=begin[3]+(ending[3]-begin[3])*e
return Vector3.new(bgx,bgy,bgz)
end
newWeld = function(wld, wp0, wp1, wc0x, wc0y, wc0z)
wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
function Avg(a, b)
return CFrame.new((a.X+b.X)/2,(a.Y+b.Y)/2,(a.Z+b.Z)/2)
end

newWeld(law, torso, larm, -1.5, 0.5, 0)
newWeld(raw, torso, rarm, 1.5, 0.5, 0)
newWeld(llw, torso, lleg, -.5, -2, 0)
newWeld(rlw, torso, rleg, .5, -2, 0)
newWeld(hw, torso, hed, 0, 1.5, 0)
local rutwald=Instance.new('Weld',rutprt)
rutwald.Part0=rutprt
rutwald.Part1=torso
rutwald.C1=CFrame.new(0,-1,0)*CFrame.Angles(math.rad(0),math.rad(0),0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
rleg.Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0)
lleg.Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0)


local anim = "Idling"
local lastanim = "Idling"
local val = 0
local syne = 0
local num = 0
local runtime = 0






--[[			Aether Ring			]]--

props = {
{"Part", "DiskAttachment", BrickColor.new("Really red"), Enum.Material.SmoothPlastic, 0.10000000149012, 0, false, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.969999969, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-29.3161812, 6.49001837, 29.67593, -4.22219593e-008, -0.965925813, 0.258819044, 1, -4.37113883e-008, 0, 1.13133396e-008, 0.258819044, 0.965925813), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Brick, Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-27.3326092, 8.41117668, 29.5519638, 0.906307817, -0.42261824, 0, 0.42261824, 0.906307817, 0, 0, 0, 1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-26.5939579, 8.88666916, 29.5519638, 0.766044497, -0.642787576, 0, 0.642787576, 0.766044497, 0, 0, 0, 1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-26.0140114, 9.51252556, 29.5519638, 0.57357651, -0.819151998, 0, 0.819151998, 0.57357651, 0, 0, 0, 1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-25.6176491, 10.2599125, 29.5519638, 0.342020035, -0.939692676, 0, 0.939692676, 0.342020035, 0, 0, 0, 1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-25.4192696, 11.0903616, 29.5519638, 0.0871555656, -0.99619472, 0, 0.99619472, 0.0871555656, 0, 0, 0, 1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-25.5706329, 13.1256046, 29.5519638, -0.325568229, -0.945518553, 0, 0.945518553, -0.325568229, 0, 0, 0, 1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-25.9569626, 13.912467, 29.5519638, -0.559193015, -0.829037488, 0, 0.829037488, -0.559193015, 0, 0, 0, 1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-26.525877, 14.5524969, 29.5519638, -0.754709661, -0.656058967, 0, 0.656058967, -0.754709661, 0, 0, 0, 1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-27.2573853, 15.0453348, 29.5519638, -0.898794055, -0.438371122, 0, 0.438371122, -0.898794055, 0, 0, 0, 1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.0627232, 15.3194313, 29.5519638, -0.981627166, -0.190809011, 0, 0.190809011, -0.981627166, 0, 0, 0, 1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.1147537, 8.17209911, 29.5519638, 0.98480773, -0.173648223, 0, 0.173648223, 0.98480773, 0, 0, 0, 1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-32.1622734, 13.2227211, 29.5519657, 0.358368099, 0.933580399, 9.51921777e-008, 0.933580399, -0.358368099, 1.50995803e-007, 1.75080558e-007, 3.47574698e-008, -1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-29.5951366, 15.3282394, 29.5519638, 0.987688303, 0.156434566, 9.51921777e-008, 0.156434566, -0.987688303, 1.50995803e-007, 1.17641164e-007, -1.3424544e-007, -1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-32.2152939, 10.3571339, 29.5519638, -0.309016943, 0.95105654, 9.51921777e-008, 0.95105654, 0.309016943, 1.50995803e-007, 1.14189554e-007, 1.3719341e-007, -1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-31.7487202, 13.9956226, 29.5519638, 0.587785304, 0.809016943, 9.51921777e-008, 0.809016943, -0.587785304, 1.50995803e-007, 1.78110724e-007, -1.17410295e-008, -1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-31.1578159, 14.615406, 29.5519638, 0.777145982, 0.629320383, 9.51921777e-008, 0.629320383, -0.777145982, 1.50995803e-007, 1.69002959e-007, -5.74394079e-008, -1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-30.5659008, 8.44967079, 29.5519638, -0.891006589, 0.45399037, 9.51921777e-008, 0.45399037, 0.891006589, 1.50995803e-007, -1.62662204e-008, 1.77754586e-007, -1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-32.3845711, 11.1939983, 29.5519657, -0.0523358211, 0.99862957, 9.51921777e-008, 0.99862957, 0.0523358211, 1.50995803e-007, 1.45806922e-007, 1.02964208e-007, -1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-31.8452587, 9.59636784, 29.5519638, -0.54463923, 0.838670433, 9.51921777e-008, 0.838670433, 0.54463923, 1.50995803e-007, 7.47903215e-008, 1.62073093e-007, -1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-30.4095478, 15.0824127, 29.5519638, 0.91354543, 0.406736642, 9.51921777e-008, 0.406736642, -0.91354543, 1.50995803e-007, 1.48377907e-007, -9.92233851e-008, -1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-31.2875061, 8.9506588, 29.5519638, -0.743144929, 0.669130445, 9.51921777e-008, 0.669130445, 0.743144929, 1.50995803e-007, 3.02943022e-008, 1.75907758e-007, -1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-29.7925758, 8.18344498, 29.5519638, -0.978147626, 0.207911611, 9.51921777e-008, 0.207911611, 0.978147626, 1.50995803e-007, -6.17182181e-008, 1.67487741e-007, -1)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.550000012, 0.300000012, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.4747543, 8.33209896, 29.5519638, -4.37113883e-008, 0, -1, 2.68220901e-007, 1, -1.17243082e-014, 1, -2.68220901e-007, -4.37113883e-008), {"SpecialMesh", "Mesh", "", Enum.MeshType.Wedge, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.550000012, 0.300000012, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-29.4300003, 8.33209896, 29.5519638, -4.37113883e-008, 0, 1, 2.68220901e-007, 1, 1.17243082e-014, -1, 2.68220901e-007, -4.37113883e-008), {"SpecialMesh", "Mesh", "", Enum.MeshType.Wedge, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.550000012, 0.300000012, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.4247551, 15.1720982, 29.5519638, -4.37113883e-008, 0, -1, -3.89414367e-007, -1, 1.7021842e-014, -1, 3.89414367e-007, 4.37113883e-008), {"SpecialMesh", "Mesh", "", Enum.MeshType.Wedge, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.550000012, 0.300000012, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-29.2347546, 15.1720982, 29.5519638, -4.37113883e-008, 0, 1, -3.89414367e-007, -1, -1.7021842e-014, 1, -3.89414367e-007, 4.37113883e-008), {"SpecialMesh", "Mesh", "", Enum.MeshType.Wedge, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-32.1622734, 12.2120905, 28.571331, 0.358368099, 0.933580399, 9.51921777e-008, 1.86213398e-007, 3.04839709e-008, -1, -0.933580399, 0.358368099, -1.62920685e-007)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-31.7487202, 12.2120886, 27.7984276, 0.587785304, 0.809016943, 9.51921777e-008, 1.87758161e-007, -1.87502991e-008, -1, -0.809016943, 0.587785304, -1.62920685e-007)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-31.1578159, 12.2120867, 27.178648, 0.777145982, 0.629320383, 9.51921777e-008, 1.76507527e-007, -6.67067823e-008, -1, -0.629320383, 0.777145982, -1.62920685e-007)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-30.4095497, 12.2120867, 26.7116413, 0.91354543, 0.406736642, 9.51921777e-008, 1.532282e-007, -1.10117313e-007, -1, -0.406736642, 0.91354543, -1.62920685e-007)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.449999988, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-32.352272, 12.2120905, 29.1813316, 0.104528777, 0.994521856, 4.97816437e-008, 1.67231804e-007, 3.24790363e-008, -1, -0.994521856, 0.104528777, -1.62920685e-007)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.449999988, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-32.3822708, 12.2120905, 29.5813332, -4.37113883e-008, 1, 5.91839822e-009, 1.62920685e-007, 5.91840532e-009, -1, -1, -4.37113883e-008, -1.62920685e-007)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.449999988, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-32.352272, 12.2120905, 29.9713306, -0.156433985, 0.987688422, 5.9184373e-009, 1.59989028e-007, 3.13319042e-008, -1, -0.987688422, -0.156433985, -1.62920685e-007)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-32.1269798, 12.2120867, 30.560957, -0.406736702, 0.91354543, -1.82006843e-007, 1.139612e-007, -1.48492489e-007, -1, -0.91354543, -0.406736702, -4.37113883e-008)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-30.2823849, 12.2120886, 32.2962532, -0.933580339, 0.358368158, -1.82006843e-007, 1.85582778e-007, -2.44173641e-008, -1, -0.358368158, -0.933580339, -4.37113883e-008)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-31.6787395, 12.2120867, 31.2839928, -0.629320323, 0.777146041, -1.82006843e-007, 1.48510736e-007, -1.13937432e-007, -1, -0.777146041, -0.629320323, -4.37113883e-008)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-31.0339813, 12.2120867, 31.8858891, -0.809016883, 0.587785363, -1.82006843e-007, 1.72939522e-007, -7.16177055e-008, -1, -0.587785363, -0.809016883, -4.37113883e-008)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-27.3320808, 12.2120886, 32.2013245, -0.913545489, -0.406736583, -9.51921777e-008, 1.66156923e-007, -1.3915573e-007, -1, 0.406736583, -0.913545489, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-25.6146488, 12.2120867, 28.3520069, 0.406736612, -0.913545489, 1.82006843e-007, 1.42999625e-007, -1.35563766e-007, -1, 0.913545489, 0.406736612, 7.54979013e-008)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-27.4592438, 12.2120895, 26.6167107, 0.933580339, -0.358368248, 1.82006843e-007, 1.96974057e-007, 5.25788835e-009, -1, 0.358368248, 0.933580339, 7.54979013e-008)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-26.0628891, 12.2120867, 27.6289711, 0.629320204, -0.777146101, 1.82006843e-007, 1.73213479e-007, -9.39335507e-008, -1, 0.777146101, 0.629320204, 7.54979013e-008)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.449999988, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-25.3893566, 12.2120905, 28.9416351, 0.156433895, -0.987688422, -5.91844795e-009, 1.91384174e-007, 3.63043853e-008, -1, 0.987688422, 0.156433895, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-26.5838127, 12.2120867, 31.7343159, -0.777146041, -0.629320264, -9.51921777e-008, 1.96511394e-007, -9.14095466e-008, -1, 0.629320264, -0.777146041, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-25.9929085, 12.2120886, 31.1145344, -0.587785423, -0.809016883, -9.51921777e-008, 2.13473982e-007, -3.74339635e-008, -1, 0.809016883, -0.587785423, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.449999988, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-25.3593597, 12.2120905, 29.3316307, -4.37113883e-008, -1, -5.91840887e-009, 1.94707184e-007, 5.91840044e-009, -1, 1, -4.37113883e-008, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-25.5793552, 12.2120905, 30.3416328, -0.358368158, -0.933580339, -9.51921777e-008, 2.15888633e-007, 1.90926954e-008, -1, 0.933580339, -0.358368158, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.449999988, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-25.3893585, 12.2120895, 29.7316322, -0.104528867, -0.994521856, -4.97816579e-008, 1.98844162e-007, 2.91564266e-008, -1, 0.994521856, -0.104528867, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.899999976, 0.200000003, 0.75000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-26.7076511, 12.2120867, 27.0270767, 0.809016824, -0.587785482, 1.82006843e-007, 1.91623172e-007, -4.59019063e-008, -1, 0.587785482, 0.809016824, 7.54979013e-008)}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.540000021, 0.540000021), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-30.0095482, 12.2120867, 26.5416412, -0.258819073, -0.683012724, 0.683012664, -4.47034836e-008, 0.707106769, 0.707106769, -0.965925813, 0.183012694, -0.183012739), {"SpecialMesh", "Mesh", "", Enum.MeshType.Wedge, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.540000021, 0.540000021), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-27.8695488, 12.2120867, 26.4716415, -0.258819014, 0.683012724, -0.683012664, -1.49011612e-008, 0.707106709, 0.707106829, 0.965925813, 0.183012709, -0.183012649), {"SpecialMesh", "Mesh", "", Enum.MeshType.Wedge, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.540000021, 0.540000021), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-29.869545, 12.2120867, 32.4616432, 0.258818954, -0.683012784, 0.683012664, -4.47034836e-008, 0.707106709, 0.707106829, -0.965925872, -0.183012664, 0.18301259), {"SpecialMesh", "Mesh", "", Enum.MeshType.Wedge, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.540000021, 0.540000021), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-27.7395496, 12.2120876, 32.3716431, 0.258819193, 0.683012664, -0.683012664, 4.47034836e-008, 0.707106769, 0.707106769, 0.965925813, -0.183012843, 0.183012754), {"SpecialMesh", "Mesh", "", Enum.MeshType.Wedge, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Bright red"), Enum.Material.Neon, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.400000006, 0.400000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-29.869545, 12.2120867, 32.4716415, 0.258818954, -0.683012784, 0.683012664, -4.47034836e-008, 0.707106709, 0.707106829, -0.965925872, -0.183012664, 0.18301259)}, 
{"Part", "Part", BrickColor.new("Bright red"), Enum.Material.Neon, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.219999969, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-29.9743042, 12.2120886, 32.4345169, -0.933580339, 0.358368158, -1.82006843e-007, 1.85582778e-007, -2.44173641e-008, -1, -0.358368158, -0.933580339, -4.37113883e-008), {"SpecialMesh", "Mesh", "", Enum.MeshType.Brick, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Bright red"), Enum.Material.Neon, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.550000012, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-30.0670528, 12.21, 32.3844604, -0.358368158, -0.933580339, -4.37113918e-008, 1.97439562e-007, -2.89687563e-008, -1, 0.933580339, -0.358368158, 1.94707184e-007), {"SpecialMesh", "Mesh", "", Enum.MeshType.Cylinder, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Bright red"), Enum.Material.Neon, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.400000006, 0.400000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-27.7205391, 12.2120876, 32.3816414, -0.258818984, 0.683012664, -0.683012724, 1.1920929e-007, -0.707106709, -0.707106769, -0.965925813, -0.183012754, 0.183012575)}, 
{"Part", "Part", BrickColor.new("Bright red"), Enum.Material.Neon, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.550000012, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-27.5230312, 12.2141733, 32.3744583, 0.358368188, 0.933580339, 1.31134172e-007, -2.2876911e-007, -5.26474224e-008, 1, 0.933580339, -0.358368188, 1.94707184e-007), {"SpecialMesh", "Mesh", "", Enum.MeshType.Cylinder, Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Bright red"), Enum.Material.Neon, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.219999969, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-27.6157799, 12.2120848, 32.3445168, 0.933580339, -0.358368158, 2.6942962e-007, -2.67198971e-007, 5.57469058e-008, 1, -0.358368158, -0.933580339, -4.37113883e-008), {"SpecialMesh", "Mesh", "", Enum.MeshType.Brick, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Bright red"), Enum.Material.Neon, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.219999969, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-27.7563972, 12.2120905, 26.4891529, 0.920504987, -0.390731007, 2.65971522e-007, 2.8166653e-007, -1.71374523e-008, -1, 0.390731007, 0.920504987, 9.42807219e-008), {"SpecialMesh", "Mesh", "", Enum.MeshType.Brick, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Bright red"), Enum.Material.Neon, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.550000012, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-27.6619587, 12.2100019, 26.4459457, 0.325568259, 0.945518553, 1.2536843e-007, 1.94860505e-007, 6.54963728e-008, -1, -0.945518553, 0.325568259, -1.62920685e-007), {"SpecialMesh", "Mesh", "", Enum.MeshType.Cylinder, Vector3.new(0, 0, 0), Vector3.new(0.200000003, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Bright red"), Enum.Material.Neon, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.400000006, 0.400000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-27.8623886, 12.2120857, 26.4557018, -0.224950925, 0.688983679, -0.688983738, -1.34110451e-007, 0.707106829, 0.707106769, 0.974370062, 0.159064397, -0.159064248)}, 
{"Part", "Part", BrickColor.new("Bright red"), Enum.Material.Neon, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.219999969, 0.200000003, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-30.1134644, 12.212081, 26.5491524, -0.945518494, 0.325568318, -1.84477543e-007, -1.99006649e-007, -1.13246159e-008, 1, 0.325568318, 0.945518494, 7.54979013e-008), {"SpecialMesh", "Mesh", "", Enum.MeshType.Brick, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Bright red"), Enum.Material.Neon, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.550000012, 0.550000012), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-30.207901, 12.2141695, 26.5959492, -0.325568229, -0.945518553, -3.79456537e-008, -1.66398422e-007, 1.71634795e-008, 1, -0.945518553, 0.325568229, -1.62920685e-007), {"SpecialMesh", "Mesh", "", Enum.MeshType.Cylinder, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Bright red"), Enum.Material.Neon, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.400000006, 0.400000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-30.0074711, 12.2120857, 26.5156994, 0.224950895, -0.688983738, 0.688983679, 5.96046448e-008, -0.707106709, -0.707106829, 0.974370122, 0.159064353, -0.159064263)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.75999999, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-26.8282127, 11.4820862, 31.318367, -0.777146041, -0.629320264, -9.51921777e-008, 1.96511394e-007, -9.14095466e-008, -1, 0.629320264, -0.777146041, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.310000002, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-25.8193588, 11.48209, 29.4016285, -4.37113883e-008, -1, -5.91840887e-009, 1.94707184e-007, 5.91840044e-009, -1, 1, -4.37113883e-008, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.75999999, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-27.5838928, 11.48209, 27.1317959, 0.933580339, -0.358368248, 1.82006843e-007, 1.96974057e-007, 5.25788835e-009, -1, 0.358368248, 0.933580339, 7.54979013e-008)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.75999999, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-27.4360275, 11.4820881, 31.6897964, -0.913545489, -0.406736583, -9.51921777e-008, 1.66156923e-007, -1.3915573e-007, -1, 0.406736583, -0.913545489, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.75999999, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-26.0161743, 11.4820862, 28.6359539, 0.406736612, -0.913545489, 1.82006843e-007, 1.42999625e-007, -1.35563766e-007, -1, 0.913545489, 0.406736612, 7.54979013e-008)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.75999999, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-25.9844398, 11.48209, 30.1669827, -0.358368158, -0.933580339, -9.51921777e-008, 2.15888633e-007, 1.90926954e-008, -1, 0.933580339, -0.358368158, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.75999999, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-26.9410172, 11.4820862, 27.4982204, 0.809016824, -0.587785482, 1.82006843e-007, 1.91623172e-007, -4.59019063e-008, -1, 0.587785482, 0.809016824, 7.54979013e-008)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.310000002, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-25.8484039, 11.48209, 29.100771, 0.156433895, -0.987688422, -5.91844795e-009, 1.91384174e-007, 3.63043853e-008, -1, 0.987688422, 0.156433895, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.310000002, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-25.8366756, 11.48209, 29.6912479, -0.104528867, -0.994521856, -4.97816579e-008, 1.98844162e-007, 2.91564266e-008, -1, 0.994521856, -0.104528867, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.75999999, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-26.398838, 11.4820862, 28.0133705, 0.629320204, -0.777146101, 1.82006843e-007, 1.73213479e-007, -9.39335507e-008, -1, 0.777146101, 0.629320204, 7.54979013e-008)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.75999999, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-26.3440552, 11.4820881, 30.8111649, -0.587785423, -0.809016883, -9.51921777e-008, 2.13473982e-007, -3.74339635e-008, -1, 0.809016883, -0.587785423, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.75999999, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-30.153862, 11.4820862, 31.8013783, 0.945518613, 0.32556808, 1.98889907e-007, -2.51444561e-007, 1.1934705e-007, 1, 0.32556808, -0.945518613, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.75999999, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-31.7326527, 11.4820862, 30.4108696, 0.43837136, 0.898793936, 1.98889907e-007, -2.62189275e-007, -9.34069888e-008, 1, 0.898793936, -0.43837136, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.75999999, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-31.8344727, 11.48209, 28.8829002, -0.32556811, 0.945518613, -8.76440751e-008, -9.99187861e-008, 5.82893982e-008, 1, 0.945518613, 0.32556811, 7.54979013e-008)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.75999999, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-30.4038181, 11.4820862, 27.2478352, -0.898793936, 0.43837133, -8.76440751e-008, -1.11870079e-007, -2.94364071e-008, 1, 0.43837133, 0.898793936, 7.54979013e-008)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.75999999, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-31.5075245, 11.48209, 28.2293396, -0.559192836, 0.829037607, -8.76440751e-008, -1.11600542e-007, 3.04423509e-008, 1, 0.829037607, 0.559192836, 7.54979013e-008)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.75999999, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-31.3182602, 11.4820881, 31.0212612, 0.656059206, 0.754709482, 1.98889907e-007, -2.774309e-007, -2.23646595e-008, 1, 0.754709482, -0.656059206, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.310000002, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-31.9610958, 11.4820862, 29.3605728, -0.069755882, 0.997564077, 1.09955892e-007, -1.86562829e-007, -1.23270013e-007, 1, 0.997564077, 0.069755882, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.75999999, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-30.7917366, 11.48209, 31.484333, 0.829037666, 0.559192777, 1.98889907e-007, -2.73766091e-007, 5.02017912e-008, 1, 0.559192777, -0.829037666, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.310000002, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-31.9638062, 11.4820862, 29.662817, 0.087155804, 0.99619472, 1.09955849e-007, -2.03549561e-007, -9.25675749e-008, 1, 0.99619472, -0.087155804, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.310000002, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-31.9213123, 11.4820852, 29.9498253, 0.190809399, 0.981627107, 1.53652181e-007, -2.20448129e-007, -1.13677189e-007, 1, 0.981627107, -0.190809399, 1.94707184e-007)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.75999999, 0.200000003, 0.390000045), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-31.0123081, 11.48209, 27.6688938, -0.754709482, 0.656059146, -8.76440751e-008, -1.15676904e-007, 5.20714138e-010, 1, 0.656059146, 0.754709482, 7.54979013e-008)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.300000012, 0.389999986), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-29.6702042, 11.4799986, 31.9620018, 0.275637269, 0.96126169, 6.81620875e-008, -5.37852323e-008, 8.63316387e-008, -1, -0.96126169, 0.275637269, 7.54979013e-008), {"SpecialMesh", "Mesh", "", Enum.MeshType.Wedge, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.300000012, 0.389999986), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-29.9296589, 11.4799995, 27.045908, -0.241922215, 0.970295668, 9.75169812e-008, -9.68468115e-008, 7.63556827e-008, -1, -0.970295668, -0.241922215, 7.54979013e-008)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.300000012, 0.389999986), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-29.9296589, 11.1099997, 27.045908, -0.241921872, -0.970295727, 4.08539549e-008, 8.31387581e-008, 2.13758256e-008, 1, -0.970295727, 0.241921872, 7.54979013e-008), {"SpecialMesh", "Mesh", "", Enum.MeshType.Wedge, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.300000012, 0.389999986), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-29.9296589, 11.1099997, 27.045908, -0.241921872, -0.970295727, 4.08539549e-008, 8.31387581e-008, 2.13758256e-008, 1, -0.970295727, 0.241921872, 7.54979013e-008), {"SpecialMesh", "Mesh", "", Enum.MeshType.Wedge, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.300000012, 0.389999986), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-27.8899994, 11.4799995, 31.9019642, 0.406736612, -0.913545489, -9.70964678e-008, -7.94250354e-008, 7.0923015e-008, -1, 0.913545489, 0.406736612, -4.37113883e-008), {"SpecialMesh", "Mesh", "", Enum.MeshType.Wedge, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.300000012, 0.389999986), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.0000019, 11.4799995, 26.9919662, 0.190808937, 0.981627166, 5.26321102e-008, -6.40681179e-008, 6.60707826e-008, -1, -0.981627166, 0.190808937, 7.54979013e-008)}, 
{"Part", "Part", BrickColor.new("Deep orange"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.300000012, 0.389999986), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.0000019, 11.1099997, 26.9919662, -0.190809265, 0.981627166, -5.23256327e-009, 7.31123748e-008, 1.95421244e-008, 1, 0.981627166, 0.190809265, -7.54979013e-008), {"SpecialMesh", "Mesh", "", Enum.MeshType.Wedge, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("New Yeller"), Enum.Material.Neon, 0.40000000596046, 0.80000001192093, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 1.25999999, 0.209999979), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-27.5950432, 12.7748528, 32.3113251, 0.204031363, 0.928593755, -0.309975594, 0.0879020914, 0.297979712, 0.950516343, 0.975010037, -0.221182659, -0.0208281223), {"SpecialMesh", "Mesh", "", Enum.MeshType.Wedge, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("New Yeller"), Enum.Material.Neon, 0.40000000596046, 0.80000001192093, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.75, 0.209999979), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-27.881834, 13.1288681, 32.3677254, 0.185667589, 0.862742722, -0.470321774, 0.121996321, 0.454701334, 0.882249177, 0.975010037, -0.221182615, -0.020828126), {"SpecialMesh", "Mesh", "", Enum.MeshType.Wedge, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("New Yeller"), Enum.Material.Neon, 0.40000000596046, 0.80000001192093, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 1.25999999, 0.209999979), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-29.9734535, 12.7748547, 32.3024979, 0.227141768, -0.935067594, 0.272130996, 0.0879020244, 0.297979712, 0.950516343, -0.969886482, -0.191981107, 0.14987798), {"SpecialMesh", "Mesh", "", Enum.MeshType.Wedge, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("New Yeller"), Enum.Material.Neon, 0.40000000596046, 0.80000001192093, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.75, 0.209999979), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-29.6896896, 13.128871, 32.3725929, 0.243784964, -0.875386298, 0.417453974, 0.121996284, 0.454701304, 0.882249236, -0.962125778, -0.164151251, 0.217643216), {"SpecialMesh", "Mesh", "", Enum.MeshType.Wedge, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.8099899, 12.2200012, 32.5749893, 1, 0, 0, 0, 1, 0, 0, 0, 1), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.FileMesh, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Bright yellow"), Enum.Material.Plastic, 0.40000000596046, 0, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.8099899, 12.2200012, 32.5749893, 1, 0, 0, 0, 1.19248806e-008, -1, 0, 1, 1.19248806e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.FileMesh, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Really red"), Enum.Material.Neon, 0, 0.20000000298023, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-29.0699902, 12.2200012, 32.3549881, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Sphere, Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Really red"), Enum.Material.Neon, 0, 0.20000000298023, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.7599907, 12.4000015, 32.3549881, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Sphere, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Really red"), Enum.Material.Neon, 0, 0.20000000298023, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.6299915, 12.2600012, 32.7149887, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Sphere, Vector3.new(0, 0, 0), Vector3.new(0.731999993, 0.730000019, 0.730000019), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Really red"), Enum.Material.Neon, 0, 0.20000000298023, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.9199924, 12.0000019, 32.7149887, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Sphere, Vector3.new(0, 0, 0), Vector3.new(1.10000002, 1.10000002, 1.10000002), "", Vector3.new(1, 1, 1)}}, 
{"Part", "FiringPart1", BrickColor.new("Really red"), Enum.Material.Neon, 0, 0.20000000298023, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.5, 0.5, 0.5), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.9099941, 12.2200022, 32.5249901, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Sphere, Vector3.new(0, 0, 0), Vector3.new(0.699999988, 0.699999988, 0.699999988), "", Vector3.new(1, 1, 1)}}, 
{"Part", "FiringPart2", BrickColor.new("Institutional white"), Enum.Material.Neon, 0, 0.20000000298023, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.400000006, 0.400000006, 0.400000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.9099941, 12.2200022, 32.5249901, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Sphere, Vector3.new(0, 0, 0), Vector3.new(0.699999988, 0.699999988, 0.699999988), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Institutional white"), Enum.Material.Neon, 0, 0.20000000298023, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.6299915, 12.2600012, 32.7149887, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Sphere, Vector3.new(0, 0, 0), Vector3.new(0.600000024, 0.600000024, 0.600000024), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Institutional white"), Enum.Material.Neon, 0, 0.20000000298023, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.9199924, 12.0000019, 32.7149887, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Sphere, Vector3.new(0, 0, 0), Vector3.new(1, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Institutional white"), Enum.Material.Neon, 0, 0.20000000298023, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.7599907, 12.4000015, 32.3549881, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Sphere, Vector3.new(0, 0, 0), Vector3.new(0.850000024, 0.850000024, 0.850000024), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Institutional white"), Enum.Material.Neon, 0, 0.20000000298023, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-29.0699902, 12.2200012, 32.3549881, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Sphere, Vector3.new(0, 0, 0), Vector3.new(0.300000012, 0.300000012, 0.300000012), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("New Yeller"), Enum.Material.Neon, 0, 0.20000000298023, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.6299915, 12.1000013, 32.4549904, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Sphere, Vector3.new(0, 0, 0), Vector3.new(0.600000024, 0.600000024, 0.600000024), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Institutional white"), Enum.Material.Neon, 0, 0.34999999403954, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.6299915, 12.1000013, 32.4549904, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Sphere, Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Institutional white"), Enum.Material.Neon, 0, 0.34999999403954, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.9599915, 12.4800014, 32.3649902, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Sphere, Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("New Yeller"), Enum.Material.Neon, 0, 0.20000000298023, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.9599915, 12.4800014, 32.3649902, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Sphere, Vector3.new(0, 0, 0), Vector3.new(0.600000024, 0.600000024, 0.600000024), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Institutional white"), Enum.Material.Neon, 0, 0.34999999403954, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.7699909, 12.4800014, 32.8349915, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Sphere, Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("New Yeller"), Enum.Material.Neon, 0, 0.20000000298023, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.7699909, 12.4800014, 32.8349915, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Sphere, Vector3.new(0, 0, 0), Vector3.new(0.600000024, 0.600000024, 0.600000024), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("New Yeller"), Enum.Material.Neon, 0, 0.20000000298023, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.6399899, 12.0400009, 32.7549896, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Sphere, Vector3.new(0, 0, 0), Vector3.new(0.600000024, 0.600000024, 0.600000024), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Institutional white"), Enum.Material.Neon, 0, 0.34999999403954, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.6399899, 12.0400009, 32.7549896, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Sphere, Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("Institutional white"), Enum.Material.Neon, 0, 0.34999999403954, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-29.1199894, 12.0400009, 32.5749893, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Sphere, Vector3.new(0, 0, 0), Vector3.new(0.5, 0.5, 0.5), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Part", BrickColor.new("New Yeller"), Enum.Material.Neon, 0, 0.20000000298023, true, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-29.1199894, 12.0400009, 32.5749893, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Sphere, Vector3.new(0, 0, 0), Vector3.new(0.600000024, 0.600000024, 0.600000024), "", Vector3.new(1, 1, 1)}}, 
{"Part", "DiskAttachment", BrickColor.new("Really red"), Enum.Material.Neon, 0.10000000149012, 0, false, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.8099899, 6.49001837, 29.6249886, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.FileMesh, Vector3.new(0, 0, 0), Vector3.new(3, 3, 0.00999999978), "", Vector3.new(1, 1, 1)}}, 
{"Part", "DiskAttachment", BrickColor.new("Really red"), Enum.Material.Neon, 0.10000000149012, 0, false, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.8099899, 6.49001837, 29.6249886, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.FileMesh, Vector3.new(0, 0, 0), Vector3.new(2, 2, 0.00999999978), "", Vector3.new(1, 1, 1)}}, 
{"Part", "Disc", BrickColor.new("Really red"), Enum.Material.SmoothPlastic, 0.10000000149012, 0, false, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.400000006, 0.400000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.8099899, 6.49001837, 29.6249886, -4.37113883e-008, -4.37113883e-008, -1, -1, 1.91068547e-015, 4.37113883e-008, 0, 1, -4.37113883e-008), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Cylinder, Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "DiskAttachment", BrickColor.new("Really red"), Enum.Material.SmoothPlastic, 0.10000000149012, 0, false, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.969999969, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.3261814, 6.49001837, 29.6059303, -4.22219593e-008, -0.965925813, 0.258819044, 1, -4.37113883e-008, 0, 1.13133396e-008, 0.258819044, 0.965925813), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Brick, Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "DiskAttachment", BrickColor.new("Really red"), Enum.Material.SmoothPlastic, 0.10000000149012, 0, false, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.400000006, 0.400000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-27.1699886, 6.49001837, 29.2149887, -4.37113883e-008, 0, -1, -1, -4.37113883e-008, 4.37113883e-008, -4.37113883e-008, 1, 1.91068547e-015), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Cylinder, Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "DiskAttachment", BrickColor.new("Really red"), Enum.Material.SmoothPlastic, 0.10000000149012, 0, false, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.400000006, 0.400000006), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-30.4999905, 6.49001837, 29.9649868, -4.37113883e-008, 0, -1, -1, -4.37113883e-008, 4.37113883e-008, -4.37113883e-008, 1, 1.91068547e-015), {"SpecialMesh", "Mesh", "rbxassetid://3270017", Enum.MeshType.Cylinder, Vector3.new(0, 0, 0), Vector3.new(0.00999999978, 1, 1), "", Vector3.new(1, 1, 1)}}, 
{"Part", "MainBrick", BrickColor.new("Institutional white"), Enum.Material.Neon, 0, 1, false, Enum.FormFactor.Brick, Enum.PartType.Block, Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, Enum.SurfaceType.SmoothNoOutlines, CFrame.new(-28.9399891, 11.9700184, 29.6549892, -4.37113883e-008, 0, -1, -1, -4.37113883e-008, 4.37113883e-008, -4.37113883e-008, 1, 1.91068547e-015)}
}

AetherRing = Instance.new("Model")

for p = 1, #props do
	part = Instance.new(props[p][1], AetherRing)
	part.Anchored = true
	part.Locked = true
	if props[p][1] == "Part" then
		brick = {"Part", "Name", "BrickColor", "Material", "Reflectance", "Transparency", "CanCollide", "FormFactor", "Shape", "Size", "BackSurface", "BottomSurface", "FrontSurface", "LeftSurface", "RightSurface", "TopSurface", "CFrame"}
	elseif props[p][1] == "WedgePart" then
		brick = {"WedgePart", "Name", "BrickColor", "Material", "Reflectance", "Transparency", "CanCollide", "FormFactor", "Size", "BackSurface", "BottomSurface", "FrontSurface", "LeftSurface", "RightSurface", "TopSurface", "CFrame"}
	elseif props[p][1] == "CornerWedgePart" then
		brick = {"CornerWedgePart", "Name", "BrickColor", "Material", "Reflectance", "Transparency", "CanCollide", "Size", "BackSurface", "BottomSurface", "FrontSurface", "LeftSurface", "RightSurface", "TopSurface", "CFrame"}
	elseif props[p][1] == "TrussPart" then
		brick = {"TrussPart", "Name", "BrickColor", "Material", "Reflectance", "Transparency", "CanCollide", "Size", "Style", "BackSurface", "BottomSurface", "FrontSurface", "LeftSurface", "RightSurface", "TopSurface", "CFrame"}
	elseif props[p][1] == "Seat" then
		brick = {"Seat", "Name", "BrickColor", "Material", "Reflectance", "Transparency", "CanCollide", "Disabled", "FormFactor", "Shape", "Size", "BackSurface", "BottomSurface", "FrontSurface", "LeftSurface", "RightSurface", "TopSurface", "CFrame"}
	elseif props[p][1] == "VehicleSeat" then
		brick = {"VehicleSeat", "Name", "BrickColor", "Material", "Reflectance", "Transparency", "CanCollide", "Disabled", "HeadsUpDisplay", "MaxSpeed", "Torque", "TurnSpeed", "Size", "BackSurface", "BottomSurface", "FrontSurface", "LeftSurface", "RightSurface", "TopSurface", "CFrame"}
	elseif props[p][1] == "SkatboardPlatform" then
		brick = {"SkateboardPatform", "Name", "BrickColor", "Material", "Reflectance", "Transparency", "CanCollide", "StickyWheels", "FormFactor", "Shape", "Size", "BackSurface", "BottomSurface", "FrontSurface", "LeftSurface", "RightSurface", "TopSurface", "CFrame"}
	elseif props[p][1] == "SpawnLocation" then
		brick = {"SpawnLocation", "Name", "BrickColor", "Material", "Reflectance", "Transparency", "CanCollide", "AllowTeamChangeOnTouch", "Neutral", "TeamColor", "Duration", "FormFactor", "Shape", "Size", "BackSurface", "BottomSurface", "FrontSurface", "LeftSurface", "RightSurface", "TopSurface", "CFrame"}
	elseif props[p][1] == "FlagStand" then
		brick = {"FlagStand", "Name", "BrickColor", "Material", "Reflectance", "Transparency", "CanCollide", "TeamColor", "FormFactor", "Shape", "Size", "BackSurface", "BottomSurface", "FrontSurface", "LeftSurface", "RightSurface", "TopSurface", "CFrame"}
	end
	for b = 2, #props[p] do
		prop = props[p][b]
		proptype = type(prop)
		if proptype ~= "table" then
			part[brick[b]] = prop
		else
			equip = Instance.new(props[p][b][1], part)
			if props[p][b][1] == "Decal" then
				brickequip = {"Decal", "Name", "Shiny", "Specular", "Texture", "Transparency", "Face"}
			elseif props[p][b][1] == "Texture" then
				brickequip = {"Texture", "Name", "Shiny", "Specular", "StudsPerTileU", "StudsPerTileV", "Texture", "Transparency", "Face"}
			elseif props[p][b][1]=="PointLight" then
				brickequip={"PointLight","Name","Color","Enabled","Brightness","Range","Shadows"}
			elseif props[p][b][1]=="SpotLight" then
				brickequip={"SpotLight","Name","Color","Enabled","Brightness","Range","Shadows","Angle","Face"}
			elseif props[p][b][1]=="SurfaceLight" then
				brickequip={"SurfaceLight","Name","Color","Enabled","Brightness","Range","Shadows","Angle","Face"}
			elseif props[p][b][1] == "Fire" then
				brickequip = {"Fire", "Name", "Color", "Enabled", "Heat", "SecondaryColor", "Size"}
			elseif props[p][b][1] == "Smoke" then
				brickequip = {"Smoke", "Name", "Color", "Enabled", "Opacity", "RiseVelocity", "Size"}
			elseif props[p][b][1] == "Sparkles" then
				brickequip = {"Sparkles", "Name", "Enabled", "SparkleColor"}
			elseif props[p][b][1] == "BlockMesh" then
				brickequip = {"BlockMesh", "Name", "Offset", "Scale", "VertexColor"}
			elseif props[p][b][1] == "CylinderMesh" then
				brickequip = {"CylinderMesh", "Name", "Offset", "Scale", "VertexColor"}
			elseif props[p][b][1] == "SpecialMesh" then
				brickequip = {"SpecialMesh", "Name", "MeshId", "MeshType", "Offset", "Scale", "TextureId", "VertexColor"}
			elseif props[p][b][1] == "Sound" then
				brickequip = {"Sound", "Name", "Pitch", "SoundId", "Volume", "Looped", "PlayOnRemove"}
			end
			for e = 2, #brickequip do
				equip[brickequip[e]] = props[p][b][e]
			end
		end
	end
end

wait''

AetherRing.Parent=chr
AetherRing.Name="Aether Ring"



wait''
local discweld=nil
for i,x in pairs(AetherRing:GetChildren'') do
if x.ClassName:match'Part' then
x.Anchored=false
local aw=Instance.new('Weld',x)
aw.C0=CFrame.new()
aw.Part0=x
aw.C1=AetherRing['MainBrick'].CFrame:inverse()*x.CFrame
aw.Part1=AetherRing['MainBrick']
end
end
local asd=Instance.new('Weld',torso)
asd.Name="AetherRingMainWeld"
asd.Part0=torso
asd.Part1=AetherRing['MainBrick']
asd.C1=CFrame.new(.2,.3,0)*CFrame.Angles(math.rad(90),0,math.rad(90))
local veloc=Instance.new('BodyVelocity',rutprt)
veloc.maxForce=Vector3.new(1/0,1/0,1/0)
veloc.velocity=Vector3.new(0,-.1,0)

local ShieldActive=function(time)
if not shield and not otheranims and not armmovement and not firing then
shield=true
local shi=Instance.new('Part',AetherRing)
shi.Shape="Ball"
shi.TopSurface=10
shi.BottomSurface=10
shi.Name="AetherRingShield"
shi.Size=Vector3.new(1,1,1)
shi.BrickColor=BrickColor.new('Dark grey')
shi.Transparency=.2
shi.Material='Neon'
local shim=Instance.new('SpecialMesh',shi)
shim.Scale=Vector3.new(13,13,13)
shim.MeshType="Sphere"
shim.MeshId="http://www.roblox.com/asset/?id=1185246"
shim.TextureId="http://www.roblox.com/asset?id=25701026"
coroutine.wrap(function() repeat for i=1,.5,-.025 do shim.VertexColor=Vector3.new(.2,.2,i) wait'' end for i=.5,1,.025 do shim.VertexColor=Vector3.new(.2,.2,i) wait'' end until not shi end)()
local shw=Instance.new('Weld',shi)
shw.Part0=shi
shw.Part1=AetherRing['MainBrick']
local w=Instance.new('ForceField',chr)
wait(time)
for a=.2,1.2,.05 do shi.Transparency=a wait'' end
w:destroy''
shi:destroy''
shield=false
end
end

local scrg=Instance.new('ScreenGui',plr.PlayerGui)
local shhom=Instance.new('ImageButton',scrg)
shhom.Size=UDim2.new(.1,0,.14,0)
shhom.Position=UDim2.new(.9,0,.86,0)
shhom.Name="Shot Homing Toggle"
shhom.Image="http://www.roblox.com/asset?id=297127798"
shhom.BorderSizePixel=0
shhom.AutoButtonColor=false
shhom.BackgroundTransparency=1
shhom.BackgroundColor3=Color3.new(.5,1,1)
local tb=Instance.new('TextLabel',shhom)
tb.Size=UDim2.new(1,0,.4,0)
tb.Position=UDim2.new(0,0,.6,0)
tb.BackgroundTransparency=1
tb.TextStrokeTransparency=0
tb.TextStrokeColor3=Color3.new(0,0,0)
tb.TextColor3=Color3.new(1,1,1)
tb.BorderSizePixel=0
tb.Text="Shot homing ON"
tb.Font="SourceSansBold"
tb.FontSize="Size18"
shhom.MouseButton1Click:connect(function()
if homingEnabled then homingEnabled=false tb.Text="Shot homing OFF"
elseif not homingEnabled then homingEnabled=true tb.Text="Shot homing ON"
end
end)

local shieldb=Instance.new('ImageButton',scrg)
shieldb.Size=UDim2.new(.0625,0,.1,0)
shieldb.Position=UDim2.new(0,0,.9,0)
shieldb.Name="Aether Ring Shield"
shieldb.Image="http://www.roblox.com/asset?id=297130675"
shieldb.BorderSizePixel=0
shieldb.AutoButtonColor=false
shieldb.BackgroundTransparency=1
shieldb.BackgroundColor3=Color3.new(.5,1,1)
shieldb.MouseButton1Click:connect(function()
ShieldActive(6)
end)

maus.KeyDown:connect(function(kei)
if kei=='w' then fldb.w=true end
if kei=='a' then fldb.a=true end
if kei=='s' then fldb.s=true end
if kei=='d' then fldb.d=true end
if kei=="q" then fldb.q=true end
if kei=="e" then fldb.e=true end
if kei=="z" then if homingEnabled then homingEnabled=false tb.Text="Shot homing OFF"
elseif not homingEnabled then homingEnabled=true tb.Text="Shot homing ON" end end
if kei=="x" then
ShieldActive(6)
end
if kei=="f" then chr.Humanoid.Health=chr.Humanoid.Health-(99*(chr.Humanoid.MaxHealth/chr.Humanoid.Health)) end
if kei=="c" then chr.Humanoid.Health=100 end
end)
maus.KeyUp:connect(function(kei)
if kei=='w' then fldb.w=false end
if kei=='a' then fldb.a=false end
if kei=='s' then fldb.s=false end
if kei=='d' then fldb.d=false end
if kei=="q" then fldb.q=false end
if kei=="e" then fldb.e=false end
end)

maus.Button1Down:connect(function()
if not firing and not otheranims and not armmovement and equipped then
firing=true
end
end)

maus.Button1Up:connect(function()
if firing then
firing=false
end
end)



local currenthealth=chr.Humanoid.Health
chr.Humanoid.HealthChanged:connect(function(change)
if change<currenthealth then
if shield then
chr.Humanoid.Health=currenthealth
end
end
currenthealth=chr.Humanoid.Health
end)
chr.Humanoid.Changed:connect(function(chng)
if chng=='Jump' then
chr.Humanoid.Jump=false
end
end)










local velorate=.025

game:service'RunService'.Stepped:connect(function()
rutprt.CFrame=CFrame.new(rutprt.CFrame.p,rutprt.CFrame.p+Vector3.new(workspace.CurrentCamera.CoordinateFrame.lookVector.x,0,workspace.CurrentCamera.CoordinateFrame.lookVector.z))
syne=syne+1
if fldb.a and not fldb.d and not fldb.w and not fldb.s then
veloc.velocity=TwnVector3(veloc.velocity,((rutprt.CFrame*CFrame.new(-1,0,0)).p-rutprt.CFrame.p).unit*MaxSpeed,velorate)
rotvaluez=12
rotvaluex=0
elseif fldb.d and not fldb.a and not fldb.w and not fldb.s then
veloc.velocity=TwnVector3(veloc.velocity,((rutprt.CFrame*CFrame.new(1,0,0)).p-rutprt.CFrame.p).unit*MaxSpeed,velorate)
rotvaluez=-12
rotvaluex=0
elseif fldb.a and not fldb.d and fldb.w and not fldb.s then
veloc.velocity=TwnVector3(veloc.velocity,((rutprt.CFrame*CFrame.new(-1,0,-1)).p-rutprt.CFrame.p).unit*MaxSpeed,velorate)
rotvaluex=-12
rotvaluez=12
elseif fldb.d and not fldb.a and fldb.w and not fldb.s then
veloc.velocity=TwnVector3(veloc.velocity,((rutprt.CFrame*CFrame.new(1,0,-1)).p-rutprt.CFrame.p).unit*MaxSpeed,velorate)
rotvaluex=-12
rotvaluez=-12
elseif fldb.a and not fldb.d and not fldb.w and fldb.s then
veloc.velocity=TwnVector3(veloc.velocity,((rutprt.CFrame*CFrame.new(-1,0,1)).p-rutprt.CFrame.p).unit*MaxSpeed,velorate)
rotvaluex=12
rotvaluez=12
elseif fldb.d and not fldb.a and not fldb.w and fldb.s then
veloc.velocity=TwnVector3(veloc.velocity,((rutprt.CFrame*CFrame.new(1,0,1)).p-rutprt.CFrame.p).unit*MaxSpeed,velorate)
rotvaluex=12
rotvaluez=-12
elseif fldb.s and not fldb.w and not fldb.d and not fldb.a then
veloc.velocity=TwnVector3(veloc.velocity,((rutprt.CFrame*CFrame.new(0,0,1)).p-rutprt.CFrame.p).unit*MaxSpeed,velorate)
rotvaluex=12
rotvaluez=0
elseif fldb.w and not fldb.s and not fldb.d and not fldb.a then
veloc.velocity=TwnVector3(veloc.velocity,((rutprt.CFrame*CFrame.new(0,0,-1)).p-rutprt.CFrame.p).unit*MaxSpeed,velorate)
rotvaluex=-12
rotvaluez=0
else
veloc.velocity=TwnVector3(veloc.velocity,Vector3.new(0,0,0),velorate) 
rotvaluex=0
rotvaluez=0
end
if fldb.q and not fldb.e then ayyy=54 elseif fldb.e and not fldb.q then ayyy=-54 else ayyy=-.001 end
veloc.velocity=TwnVector3(veloc.velocity,Vector3.new(veloc.velocity.x,-ayyy,veloc.velocity.z),.01)
if not otheranims and not swimming then
if (veloc.velocity*Vector3.new(1, 0, 1)).magnitude < 1 and not dnc and not chr.Humanoid.Jump then-- and veloc.velocity.y<5 and veloc.velocity.y>-5
anim="Idling"

elseif (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude > 1 and not chr.Humanoid.Jump then-- and veloc.velocity.y<5 and veloc.velocity.y>-5
anim="Walking"
end
end

if anim~=lastanim then runtime=0 end
lastanim=anim
if anim=="Idling" then
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.575+math.cos(syne/35)/16,0)*CFrame.Angles(math.rad(10),0,math.rad(60)-math.cos(syne/35)/12),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.575+math.cos(syne/35)/16,0)*CFrame.Angles(math.rad(10),0,math.rad(-60)+math.cos(syne/35)/12),.1)
end
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.8,0)*CFrame.Angles(math.rad(-5),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.5,-.1)*CFrame.Angles(math.rad(-17.5),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(.1,1.5+math.cos(syne/35)/50,-.1)*CFrame.Angles(math.rad(-5)+math.cos(syne/35)/20,math.rad(-25),math.cos(syne/35)/25),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.1+math.cos(syne/35)/10,0)*CFrame.Angles(math.rad(rotvaluex),math.rad(25),math.rad(rotvaluez)),.0325)
asd.C0=Lerp(asd.C0,CFrame.new(0,-math.cos(syne/35)/10,0)*CFrame.Angles(math.rad(0),math.rad(-25),math.rad(0)),.1)
end

if anim=="Walking" then
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.575+math.cos(syne/35)/16,0)*CFrame.Angles(math.rad(10),0,math.rad(60)-math.cos(syne/35)/12),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.575+math.cos(syne/35)/16,0)*CFrame.Angles(math.rad(10),0,math.rad(-60)+math.cos(syne/35)/12),.1)
end
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.8,0)*CFrame.Angles(math.rad(-5),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.5,-.1)*CFrame.Angles(math.rad(-17.5),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(.1,1.5+math.cos(syne/35)/50,-.1)*CFrame.Angles(math.rad(-5)+math.cos(syne/35)/20,math.rad(-25),math.cos(syne/35)/25),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.1+math.cos(syne/35)/10,0)*CFrame.Angles(math.rad(rotvaluex),math.rad(25),math.rad(rotvaluez)),.0325)
asd.C0=Lerp(asd.C0,CFrame.new(0,-math.cos(syne/35)/10,0)*CFrame.Angles(math.rad(0),math.rad(-25),math.rad(0)),.1)
end
chr.Humanoid.WalkSpeed=0


if armmovement then
if armanim=="Charging" and equipped then
end
end
chr.Humanoid.CameraOffset=(rutprt.CFrame:toObjectSpace(hed.CFrame)).p+Vector3.new(0,-1.25,0)


end)

local hp=Instance.new("HopperBin",plr.Backpack)
hp.Name="Aether Ring"
hp.Selected:connect(function()
equipped=true
end)
hp.Deselected:connect(function()
equipped=false
end)
local aelt=Instance.new('PointLight',AetherRing['MainBrick'])
aelt.Range=12
aelt.Brightness=5
aelt.Shadows=true
aelt.Color=BrickColor.new('Bright yellow').Color

coroutine.wrap(function()
while true do
if homingEnabled then wait'.6'
else wait'0'
end
if firing and not otheranims and not armmovement and not shield then
local as1=AetherRing['FiringPart1']:Clone()
local as2=AetherRing['FiringPart2']:Clone()
local partweld=Instance.new('Weld',as1)
partweld.Part0=as1
partweld.Part1=as2
as1.Mesh.MeshId="http://www.roblox.com/asset/?id=1185246"
as1.Mesh.TextureId="http://www.roblox.com/asset?id=25701026"
as1.Mesh.VertexColor=Vector3.new(1,0,0)
as1:breakJoints''
local nskn = NumberSequenceKeypoint.new
local emitter=Instance.new("ParticleEmitter",as1)
emitter.Rate=111
emitter.Speed=NumberRange.new(10)
--emitter.LightEmission=1
emitter.Lifetime=NumberRange.new(3,4)
emitter.EmissionDirection="Back"

emitter.VelocitySpread=55
emitter.Enabled=true
emitter.Rotation=NumberRange.new(-15,15)
emitter.RotSpeed=NumberRange.new(-25,25)
emitter.Texture="http://www.roblox.com/asset?id="..decals[math.random(1,#decals)]
emitter.Size = NumberSequence.new({
        nskn(0    , 1 , 0);
        nskn(0.123, .85  , 0);
        nskn(0.154, .7 , 0);
        nskn(0.208, .55 , 0);
        nskn(0.357, .4 , 0);
        nskn(0.555, .25 , 0);
        nskn(0.725, .1, 0);
        nskn(0.905, 0, 0);
        nskn(1    , 0, 0);
})
emitter.Transparency=NumberSequence.new({nskn(0,0,0),nskn(1,0,0)})
game:service'Debris':AddItem(as1,1.5)
game:service'Debris':AddItem(as1.Mesh,1.5)
local as4=Instance.new('PointLight',as1)
as4.Color=Color3.new(1,0,0)
as4.Range=10
as4.Shadows=true
local tmp=Instance.new('Sound',AetherRing['FiringPart1'])
tmp.SoundId="http://www.roblox.com/asset?id=79236960"
tmp.Volume=.075
tmp.Pitch=.8
as1.CanCollide=false
as2.CanCollide=false
local blvl=Instance.new('BodyVelocity',as1)
blvl.maxForce=Vector3.new(1/0,1/0,1/0)
blvl.velocity=(maus.Hit.p-AetherRing['FiringPart1'].CFrame.p).unit*80
coroutine.wrap(function()
repeat if as1:findFirstChild'Mesh' then 
if #game:service'Players':GetPlayers''>1 and homingEnabled then
for a,x in pairs(game:service'Players':GetChildren()) do if x:IsA'Player' and x.Character and x.Character:findFirstChild'Torso' and x~=plr then
local mag=(x.Character.Torso.Position-as1.Position).magnitude
if mag<100 then
table.insert(distances,mag)
table.insert(torsos,x.Character.Torso)
end
end
end
if #torsos>0 then
local nearestdist=math.min(unpack(distances))
for i,x in pairs(torsos) do
local mag=(x.Position-as1.Position).magnitude
if mag==nearestdist and mag then
nearesttorso=x
end
end
for m,v in pairs(distances) do table.remove(distances,m) end
for m,v in pairs(torsos) do table.remove(torsos,m) end
emitter.Acceleration=(as1.CFrame.p-nearesttorso.CFrame.p).unit*-22
blvl.velocity=blvl.velocity+(as1.CFrame.p-nearesttorso.CFrame.p).unit*-22
end
end


wait''
else wait'' break end
until not as1
end)()
as1.Transparency=0
as1.BrickColor=BrickColor.new('Bright red')
as1.Material='Neon'
as1.Parent=workspace
for i,x in pairs(as1:GetChildren'') do if x:IsA'Weld' then x:Destroy'' end end
tmp:play''
as1.Touched:connect(function(hit)
if hit and hit.Parent and hit.CanCollide and hit.Parent~=chr and hit.Parent.Parent~=chr and not hit.Name:find'FiringPart1' then
as1:destroy''
as1:clearAllChildren''
for i,x in pairs(hit.Parent:GetChildren()) do if x:IsA('Humanoid') and x.Parent~=chr then hyoom=x end end
local hawm=hit.Parent and hyoom and hit.Parent.Parent
if hawm and hit.Parent.ClassName=='Model' and hit.Parent~=chr then
hyoom.Health=hyoom.Health-(math.random(5,10)*(hyoom.MaxHealth/100))
end
end
end)
end
end
end)()

while true do
if (veloc.velocity*Vector3.new(1,0,1)).magnitude>1 then
local pos1=AetherRing['MainBrick'].CFrame
wait(0)
--[[local ring=Instance.new('Part',chr)
ring.Name='ringpls'
ring.formFactor='Custom'
ring.Size=Vector3.new(.5,.5,.5)
ring.BrickColor=BrickColor.new('Pink')
ring.Anchored=false
ring.Transparency=.3
ring.Reflectance=0
ring.CanCollide=false
ring.Material="Neon"
ring.TopSurface=10
ring.BottomSurface=10
ring.LeftSurface=10
ring.RightSurface=10
ring.FrontSurface=10
ring.BackSurface=10
ring.Locked=true
ring:breakJoints()
local ringm=Instance.new('SpecialMesh',ring)
ringm.MeshId="http://www.roblox.com/asset/?id=3270017"
ringm.TextureId="http://www.roblox.com/asset?id=25701026"
ringm.VertexColor=Vector3.new(.8,.5,.5)
game:service'Debris':AddItem(ring,.7)
local ringw=Instance.new('Weld',ring)
ringw.Part0=ring
ringw.Part1=AetherRing['MainBrick']
ringw.C0=CFrame.new(0,0,-4)*CFrame.Angles(math.rad(90),0,0)
coroutine.wrap(function()
repeat
if ring then wait'0'
ring.Transparency=ring.Transparency+.075 
ringm.Scale=ringm.Scale+Vector3.new(1,1,0) 
ringw.C0=Lerp(ringw.C0,CFrame.new(ringw.C0.x,ringw.C0.y,ringw.C0.z+.5)*CFrame.Angles(math.rad(90),0,0),.1) 
ringm.VertexColor=ringm.VertexColor-Vector3.new(-.01,.05,.05) 
end
until not ring
end)()]]
local pos2=AetherRing['MainBrick'].CFrame
local dees=(pos1.p-pos2.p).magnitude
local treel=Instance.new('Part',workspace)
treel.Name='trailpls'
treel.formFactor='Custom'
treel.Size=Vector3.new(.5,dees,.5)
treel.BrickColor=BrickColor.new('Bright yellow')
treel.Anchored=true
treel.Transparency=0
treel.CanCollide=false
treel.Material="Neon"
treel.TopSurface=10
treel.BottomSurface=10
treel.LeftSurface=10
treel.RightSurface=10
treel.FrontSurface=10
treel.BackSurface=10
treel.Locked=true
treel:breakJoints()
treel.CFrame=CFrame.new(Avg(pos1,pos2).p,pos2.p)*CFrame.Angles(math.pi/2,0,0)
local treelm=Instance.new('CylinderMesh',treel)
game:service'Debris':AddItem(treel,1)
coroutine.resume(coroutine.create(function()
for asdd=1,-.05,-.05 do treelm.Scale=Vector3.new(asdd,1,asdd) wait(0)
end
end))
else wait''
end
end
