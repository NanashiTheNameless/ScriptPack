
local function lerp(weld,beglerp,endlerp,speed)
	weld.C0 = beglerp:lerp(endlerp,speed)
	return weld.C0
end

local speed = 0.2
local angle = 0
local anglespeed = 2
local armspeed = 0.2
local armangle = 0
local armanglespeed = 2
local legspeed = 0.2
local legangle = 0
local leganglespeed = 2
local on = false
local damen = false
local enabled = true
local zenabled = 0
local xenabled = 0
local cenabled = 0
local venabled = 0
local eenabled = 0
local z2enabled = 0
local x2enabled = 0
local c2enabled = 0
local e2enabled = 0
local aiming = false
local twohanded = false
local imbued = false
local Debounce = {}
local TakeDamage = false
local combo = 1
local Player = game.Players.LocalPlayer
local mouse = Player:GetMouse()
local Char = Player.Character
local Character = Char
local Human = Char.Humanoid
local Sounds = {"rbxassetid://234365549","rbxassetid://200632211","rbxassetid://136007472","rbxassetid://136523485","rbxassetid://131205975","rbxassetid://163619849"}
local Head = Char.Head
local LA = Char:findFirstChild("Left Arm")
local RA = Char:findFirstChild("Right Arm")
local LL = Char:findFirstChild("Left Leg")
local RL = Char:findFirstChild("Right Leg")
local T = Char:findFirstChild("Torso")
local LS = T:findFirstChild("Left Shoulder")
local RS = T:findFirstChild("Right Shoulder")
local LH = T:findFirstChild("Left Hip")
local RH = T:findFirstChild("Right Hip")
local Neck = T:findFirstChild("Neck")
local HM = Char:findFirstChild("HumanoidRootPart")
local RJ = Char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
local WLS = Instance.new("Motor", T)
WLS.C0 = CFrame.new(-1.5, 0.5, 0)
WLS.C1 = CFrame.new(0, 0.5, 0)
WLS.Part0 = T
WLS.Part1 = LA
local WRS = Instance.new("Motor", T)
WRS.Part0 = T
WRS.Part1 = RA
WRS.C0 = CFrame.new(1.5, 0.5, 0)
WRS.C1 = CFrame.new(0, 0.5, 0)
local WLH = LH
local WRH = RH
local LSC0 = WLS.C0
local RSC0 = WRS.C0
local LHC0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
local LHC1 = CFrame.new(-0.5, 1 ,0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
local RHC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
local RHC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
local WRJ = RJ
local RJC0 = WRJ.C0
local RJC1 = WRJ.C1
local NC0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local Run = game:GetService("RunService")
local noweightprop = PhysicalProperties.new(0,0.3,0.5,0,0)
RJC = RJ:Clone()
LSH = LS:Clone()
RSH = RS:Clone()
LHH = LH:Clone()
RHH = RH:Clone()
Anim = Char:FindFirstChild("Animate")
if Anim ~= nil then
	Anim.Parent = nil
end
Animate = Human:FindFirstChild("Animator")
if Animate ~= nil then
	Animate.Parent = nil
end
WLS.Parent = T
WRS.Parent = T
WLH.Parent = T
WRH.Parent = T
WRJ.Parent = T

local gui = Instance.new("ScreenGui",Player.PlayerGui)
local skill1 = Instance.new("TextLabel",gui)
skill1.Size = UDim2.new(0,150,0,50)
skill1.Position = UDim2.new(0.75,0,0.75,0)
skill1.Text = ""
skill1.TextWrapped = true
skill1.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
local skill1text = Instance.new("TextLabel",gui)
skill1text.Size = UDim2.new(0,150,0,50)
skill1text.Position = UDim2.new(0.75,0,0.75,0)
skill1text.BackgroundTransparency = 1
skill1text.Text = "[Z] \n Constant Slashes"
skill1text.TextWrapped = true
skill1text.TextScaled = true
skill1text.Font = "Antique"
skill1text.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
skill1img = Instance.new("ImageLabel",skill1)
skill1img.Size = UDim2.new(0,0,1,0)
skill1img.Image = "rbxassetid://48965808"
skill1img.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
local skill2 = Instance.new("TextLabel",gui)
skill2.Size = UDim2.new(0,150,0,50)
skill2.Position = UDim2.new(0.875,0,0.75,0)
skill2.Text = ""
skill2.TextWrapped = true
skill2.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
local skill2text = Instance.new("TextLabel",gui)
skill2text.Size = UDim2.new(0,150,0,50)
skill2text.Position = UDim2.new(0.875,0,0.75,0)
skill2text.BackgroundTransparency = 1
skill2text.Text = "[X] \n Lucerne Slam"
skill2text.TextWrapped = true
skill2text.TextScaled = true
skill2text.Font = "Antique"
skill2text.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
skill2img = Instance.new("ImageLabel",skill2)
skill2img.Size = UDim2.new(0,0,1,0)
skill2img.Image = "rbxassetid://48965808"
skill2img.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
local skill3 = Instance.new("TextLabel",gui)
skill3.Size = UDim2.new(0,150,0,50)
skill3.Position = UDim2.new(0.75,0,0.85,0)
skill3.Text = ""
skill3.TextWrapped = true
skill3.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
local skill3text = Instance.new("TextLabel",gui)
skill3text.Size = UDim2.new(0,150,0,50)
skill3text.Position = UDim2.new(0.75,0,0.85,0)
skill3text.BackgroundTransparency = 1
skill3text.Text = "[C] \n Lucerne Spins"
skill3text.TextWrapped = true
skill3text.TextScaled = true
skill3text.Font = "Antique"
skill3text.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
skill3img = Instance.new("ImageLabel",skill3)
skill3img.Size = UDim2.new(0,0,1,0)
skill3img.Image = "rbxassetid://48965808"
skill3img.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
local skill4 = Instance.new("TextLabel",gui)
skill4.Size = UDim2.new(0,150,0,50)
skill4.Position = UDim2.new(0.875,0,0.85,0)
skill4.Text = ""
skill4.TextWrapped = true
skill4.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
local skill4text = Instance.new("TextLabel",gui)
skill4text.Size = UDim2.new(0,150,0,50)
skill4text.Position = UDim2.new(0.875,0,0.85,0)
skill4text.BackgroundTransparency = 1
skill4text.Text = "[V] \n [Toggle] \n Two-Handed mode"
skill4text.TextWrapped = true
skill4text.TextScaled = true
skill4text.Font = "Antique"
skill4text.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
skill4img = Instance.new("ImageLabel",skill4)
skill4img.Size = UDim2.new(0,0,1,0)
skill4img.Image = "rbxassetid://48965808"
skill4img.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
local skill5 = Instance.new("TextLabel",gui)
skill5.Size = UDim2.new(0,150,0,50)
skill5.Position = UDim2.new(0.8125,0,0.65,0)
skill5.Text = ""
skill5.TextWrapped = true
skill5.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
local skill5text = Instance.new("TextLabel",gui)
skill5text.Size = UDim2.new(0,150,0,50)
skill5text.Position = UDim2.new(0.8125,0,0.65,0)
skill5text.BackgroundTransparency = 1
skill5text.Text = "[E] \n Smack with Gun"
skill5text.TextWrapped = true
skill5text.TextScaled = true
skill5text.Font = "Antique"
skill5text.BackgroundColor3 = BrickColor.new("Medium stone grey").Color
skill5img = Instance.new("ImageLabel",skill5)
skill5img.Size = UDim2.new(0,0,1,0)
skill5img.Image = "rbxassetid://48965808"
skill5img.BackgroundColor3 = BrickColor.new("Medium stone grey").Color

m=Instance.new('Model',Character)
it=Instance.new
function nooutline(part)
	part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end
function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
	local fp=it("Part")
	fp.formFactor=formfactor
	fp.Parent=parent
	fp.Reflectance=reflectance
	fp.Transparency=transparency
	fp.CanCollide=false
	fp.Locked=true
	fp.BrickColor=BrickColor.new(tostring(brickcolor))
	fp.Name=name
	fp.Size=size
	fp.Position=Character.Torso.Position
	nooutline(fp)
	fp.Material=material
	fp:BreakJoints()
	return fp
end
function mesh(Mesh,part,meshtype,meshid,offset,scale)
	local mesh=it(Mesh)
	mesh.Parent=part
	if Mesh=="SpecialMesh" then
		mesh.MeshType=meshtype
		mesh.MeshId=meshid
	end
	mesh.Offset=offset
	mesh.Scale=scale
	return mesh
end
function weld(parent,part0,part1,c0,c1)
	local weld=it("Weld")
	weld.Parent=parent
	weld.Part0=part0
	weld.Part1=part1
	weld.C0=c0
	weld.C1=c1
	return weld
end

LucerneHammer=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,1,"Really black","Handle",Vector3.new(0.214707062, 3.49665689, 0.245379567))
LucerneHammerweld=weld(m,Character["Left Arm"],LucerneHammer,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.28746033e-005, 1.90734863e-006, -3.81469727e-005, 0, -0.999999881, 0, 0, 0, -1, 1, -0, -0))
mesh("BlockMesh",LucerneHammer,"","",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.245379508, 0.200000003, 0.460086673))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -0.0491452217, 5.08771801, 0, 0, -1, 1, 0, 0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.537227631, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Daisy orange","Part",Vector3.new(0.214707062, 0.200000003, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0048699379, -1.36101913, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.30672431, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.214707062, 0.200000003, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0048699379, 2.30434036, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.153362155, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.214707062, 0.200000003, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00485801697, -4.84234142, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.153362155, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.276051879, 0.200000003))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.761945248, -4.19821739, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.460086673))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.276051879, 0.200000003))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -0.761946201, 4.59695816, 0, 0, -1, 1, 0, 0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.766811132))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.200000003, 0.460086673))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -0.0588359833, 2.7032032, 0, 0, -1, -1, 0, -0, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.537227631, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.200000003, 0.460086673))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -0.0491390228, 2.70320702, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.537227631, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.214707062, 0.200000003, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0048699379, 2.45769882, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.153362155, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Daisy orange","Part",Vector3.new(0.214707062, 0.200000003, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00485801697, -2.31186867, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.30672431, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.214707062, 0.200000003, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00485801697, -4.75032139, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.153362155, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.214707062, 1.01219022, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0048699379, -2.94064808, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.276051879, 0.200000003))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.761946201, -4.47426796, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.460086673))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.276051879, 0.200000003))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.761945248, -4.75032139, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.460086673))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Daisy orange","Part",Vector3.new(0.214707062, 0.200000003, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00485801697, -1.26899719, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.30672431, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Daisy orange","Part",Vector3.new(0.214707062, 0.200000003, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0048699379, -2.40388298, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.30672431, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.429414034, 0.200000003))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, 0.326914787, -4.18288612, 0, 0, 1, 1, 0, 0, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.306724459))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.214707062, 0.200000003, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0048699379, -2.35787773, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.153362155, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.245379508, 0.200000003, 0.200000003))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -0.117823124, 3.66145325, 0, 0, -1, 1, 0, 0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.153362155, 0.613448918))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Daisy orange","Part",Vector3.new(0.214707062, 0.200000003, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00485801697, -3.47741413, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.30672431, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.276051879, 0.200000003))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -0.761948109, 4.32091141, 0, 0, -1, 1, 0, 0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.766811132))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Daisy orange","Part",Vector3.new(0.214707062, 0.200000003, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0048699379, 2.27366829, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.153362155, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.200000003, 0.200000003, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00485801697, -4.79633141, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.766811013, 0.30672431, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.214707062, 3.49665689, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0048699379, 0.510004044, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1.01999998, 1, 1.01999998))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.245379508, 0.200000003, 0.200000003))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -0.127548695, 3.66145802, 0, 0, 1, -1, 0, -0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.153362155, 0.613448918))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.200000003, 0.200000003))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, 0.577907085, -4.18288326, 0, 0, -1, -1, 0, -0, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.460086435, 0.306724459))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.214707062, 0.200000003, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00485801697, -3.52342415, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.153362155, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Daisy orange","Part",Vector3.new(0.214707062, 0.200000003, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0048699379, 2.33501244, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.153362155, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.30672431, 0.200000003))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, 0.326930046, 4.75032139, 0, 0, -1, 1, 0, 0, 0, -1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.153362229))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.200000003, 0.33739692))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, 2.97468185, -3.46336269, 0, 0, -1, -0.642788053, -0.76604414, -0, -0.76604414, 0.642788053, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.766810775, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.200000003, 0.200000003))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, 0.531907082, 4.88834953, 0, 0, 1, -1, 0, -0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.92017287, 0.613448918))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.30672431, 0.200000003))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, 0.470560074, 4.78099537, 0, 0, 1, -1, 0, -0, 0, -1, 0))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.460086673))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.214707017, 0.200000003))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, 0.209841013, 4.78099537, 0, 0, 1, -1, 0, -0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.460086673))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.214707062, 0.889500499, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0048699379, -1.83643913, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.200000003, 0.33739692))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, -0.618305683, -4.53562164, 0, 0, -1, -1, 0, -0, 0, 1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.766810775, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0048699379, 2.41169739, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.766811013, 0.30672431, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.200000003, 0.200000003))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -0.510951996, 4.78099728, 0, 0, 1, -1, 0, -0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.30672431, 0.460086673))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.214707062, 0.200000003, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00485801697, 2.36568642, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.153362155, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.30672431, 0.200000003))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, 0.326930046, 4.79633141, 0, 0, -1, 1, 0, 0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.306724459))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.276051879, 0.200000003))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -0.761945248, 4.87300968, 0, 0, -1, 1, 0, 0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.766811132))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.200000003, 0.33739692))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, 0.912603378, -4.49454212, 0, 0, -1, -0.939693093, -0.342019022, -0, -0.342018992, 0.939693093, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.766810775, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.245379448, 0.398741782))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(7.62939453e-006, 4.20141411, -1.53203797, 0, 0, -1, -0.173647985, -0.984807849, -0, -0.984807849, 0.173647985, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.214707062, 0.61344862, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00485801697, -3.90683556, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Part",Vector3.new(0.245379508, 0.214707017, 0.200000003))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, 0.0662059784, 4.75031948, 0, 0, -1, 1, 0, 0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.153362229))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Medium stone grey","Part",Vector3.new(0.214707062, 0.200000003, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0048699379, -1.31500435, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.153362155, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Daisy orange","Part",Vector3.new(0.214707062, 0.200000003, 0.245379567))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00485801697, -3.5694313, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.30672431, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Black","Part",Vector3.new(0.245379508, 0.200000003, 0.460086673))
Partweld=weld(m,LucerneHammer,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-006, -0.0588359833, 5.08771801, 0, 0, 1, -1, 0, -0, 0, -1, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(1, 0.537227631, 1))
Hitbox=part(Enum.FormFactor.Brick,m,Enum.Material.Plastic,0,0,"Dark stone grey","Hitbox",Vector3.new(1.16555262, 0.521431327, 0.245379567))
Hitboxweld=weld(m,LucerneHammer,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0411419868, -4.47425556, -7.62939453e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1))

HW = LucerneHammerweld
hc0 = HW.C0 *CFrame.new(0,-1,0)

for i,v in pairs(m:GetChildren()) do
	if v.ClassName == "Part" then
		v.CustomPhysicalProperties = noweightprop
		for i,x in pairs(v:GetChildren()) do
			v.CustomPhysicalProperties = noweightprop
		end
	end
end

m=Instance.new('Model',Character)
DesertEagle=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(0.320401609, 0.357577533, 0.844171464))
DesertEagleweld=weld(m,Character["Right Arm"],DesertEagle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.09672546e-005, 3.81469727e-005, -1.14440918e-005, 0, -0.999999881, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",DesertEagle,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.850476325, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.214724794, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0171203613, -0.273499966, -0.448505402, 0, 1, 0, -1, 0, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.239877939, 0.584903777))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.214724794, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0171203613, -0.317555904, -1.01522064, 0, 1, 0, -1, 0, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.686923146, 0.784019947))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Lily white","Part",Vector3.new(0.345947772, 0.214724794, 0.224943906))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0171203613, -0.220024109, 0.282455444, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.752344489, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Lily white","Part",Vector3.new(0.345947772, 0.214724794, 0.277132124))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0171203613, -0.54997015, -0.316656113, 0, -1, 0, 1, 0, 0, 0, -0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.261685014, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.3069655, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0171203613, 0.449447155, -0.625013351, 0, 1, 0, -1, 0, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 1, 0.659572303))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Lily white","Part",Vector3.new(0.345947772, 0.214724794, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0171203613, 0.510194063, 0.214584351, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.141746059, 0.323563784))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Lily white","Part",Vector3.new(0.345947772, 0.246626288, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0171203613, -0.277784348, 0.0781760216, 0, 1, 0, 0, 0, -1, -1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 1, 0.286229521))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.236467302, 0.206538484))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0171203613, 0.838531494, 0.374898911, 0, -1, 0, 0, 0, -1, 1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 1, 0.179497823))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.214724794, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0171203613, -0.409752846, -0.977048874, 0, 1, 0, -1, 0, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.250781476, 0.417465687))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.320401609, 0.357577533, 0.844171464))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0726430416, -0.0171203613, -0.195167542, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.850476325, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.214724794, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0171203613, 0.552801132, 0.340353012, 0, 1, 0, 0, 0, -1, -1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.239877939, 0.360898048))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.203094453, 0.214724794, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0885467529, -0.678832054, -0.623931885, 0, -1, 0, 1, 0, 0, 0, -0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.741440952, 0.672017157))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Lily white","Part",Vector3.new(0.345947772, 0.405298442, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0171203613, 0.322643042, -0.1639328, 0, 1, 0, -1, 0, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 1, 0.261339962))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.435995162, 0.210570604))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0171203613, -0.585407019, 1.24582291, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 1, 0.294889331))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.214724794, 0.304901451))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0171203613, -1.57520008, 1.10923004, 0, 1, 0, 1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.305299193, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.27392751, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0171203613, -0.375589848, -0.605869293, 0, 1, 0, -1, 0, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 1, 0.584903777))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.203094453, 0.214724794, 0.844171464))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0885467529, -0.238007069, -0.195407867, 0, 1, 0, -1, 0, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.11993897, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.348107219, 0.224134862, 0.763251007))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.020942688, -0.309159994, 0.228199005, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.850472212, 0.686923087, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.214724794, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0171203613, -0.591866016, -0.541015625, 0, -1, 0, 1, 0, 0, 0, -0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.163553149, 0.31111902))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.292657614, 0.203094304))
SomeGunPartIdk = Part
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0171203613, -0.0787889957, 1.14859009, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 1, 0.759130478))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.214724794, 0.341207087))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0171203613, -0.302592993, -0.801900864, 0, 1, 0, -1, 0, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.534273565, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.214724794, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0171203613, -0.428277969, 0.703178406, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.741440952, 0.379848778))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.214724794, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0171203613, -0.303629875, -0.504562378, 0, 1, 0, -1, 0, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.545177162, 0.584903777))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Lily white","Part",Vector3.new(0.36205852, 0.224724501, 0.212552354))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0171203613, -0.0444450378, 0.409223557, 0, -1, 0, 1, 0, 0, 0, -0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.0981318727, 0.112002842))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.214724794, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0171203613, 0.484405994, -0.516225815, 0, 1, 0, -1, 0, 0, 0, 0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.403431088, 0.672017157))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Lily white","Part",Vector3.new(0.345947772, 0.781981111, 0.211726338))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0171203613, 0.195163727, 0.141741037, 0, 1, 0, 0, 0, -1, -1, 0, 0))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 1, 0.551314771))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Lily white","Part",Vector3.new(0.420150816, 0.357577533, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.175469875, -0.0171203613, 0.409200668, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.850476325, 0.112002842))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.4339284, 0.357577533, 0.253037423))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.168637037, -0.0171203613, 0.270807266, 1, 0, 0, 0, 1, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 0.850476325, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.214724794, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0171203613, -0.525002956, 0.605812073, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.239877939, 0.584903777))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.224133104, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0171203613, -0.426529884, -0.0778989792, 0, -1, 0, 0.866025984, 0, 0.499998987, -0.499998987, 0, 0.866025984))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.239877939, 0.821045339))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.214724794, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0171203613, 0.54887104, -0.518390656, 0, 1, 0, -1, 0, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.272588581, 0.647127569))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.203093588, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0171203613, -0.256955147, 1.17275238, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.336568952, 0.57280165))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.203093588, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0171203613, 0.0101461411, 1.23910332, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.317103535, 0.286229521))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 1.1123594, 0.470107436))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0171203613, 0.274301052, -0.882453918, 0, 1, 0, -1, 0, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.325435251, 0.212306604))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0171203613, 0.204941988, 1.17337036, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.203093588, 0.301908463))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0171203613, -1.58662403, -0.807571411, 0, -1, 0, 1, 0, 0, 0, -0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.187415272, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.8288064, 0.62428242))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0171203613, 1.1646781, 0.948221207, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 1, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.611069083, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0171203613, 0.0306558609, -0.61879921, 0, 1, 0, -1, 0, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 1, 0.73424083))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.212036714, 0.209226578))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0171203613, -0.408432007, -1.05606079, 0, 1, 0, -1, 0, 0, 0, 0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.250781476, 0.358995646))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.203094453, 0.214724794, 0.250218481))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0885467529, -0.223236084, -0.450492859, 0, -1, 0, 1, 0, 0, 0, -0, 1))
mesh("SpecialMesh",Part,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.588791311, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.214724794, 0.237581223))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0171203613, -0.288565159, -0.456094742, 0, -1, 0, 1, 0, 0, 0, -0, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 0.228974432, 1))
Part=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,0,"Medium stone grey","Part",Vector3.new(0.345947772, 0.468252212, 0.203094304))
Partweld=weld(m,DesertEagle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0171203613, 0.569268942, 1.14859009, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 1, 0.759130478))
Shooter=part(Enum.FormFactor.Brick,m,Enum.Material.SmoothPlastic,0,1,"Medium stone grey","Shooter",Vector3.new(0.345947772, 0.203093588, 0.62428242))
Shooterweld=weld(m,DesertEagle,Shooter,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0171203613, 1.66419601, 0.948217392, 0, -1, 0, -1, 0, 0, 0, 0, -1))
mesh("BlockMesh",Shooter,"","",Vector3.new(0, 0, 0),Vector3.new(0.827498257, 1, 1))

m2 = m

SomePartIdk = Shooter

GHW = DesertEagleweld
ghc0 = GHW.C0 *CFrame.new(0,-1,0)

for i,v in pairs(m:GetChildren()) do
	if v.ClassName == "Part" then
		v.CustomPhysicalProperties = noweightprop
		for i,x in pairs(v:GetChildren()) do
			v.CustomPhysicalProperties = noweightprop
		end
	end
end

local Meshes={
	Blast="20329976",
	Crown="1323306",
	Ring="3270017",
	Claw="10681506",
	Crystal="9756362",
	Coil="9753878",
	Cloud="1095708",
	Skull="4770583",
	SpinyShell="1080954",
}

local function nooutlines(part)
	part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
end

local function getmesh(mesh)
	return "rbxassetid://"..mesh
end

local function effect(part,brickcolor,size,cframe,trans,transincrement,scaleby,loopwait,meshid,meshtype)
	local p = Instance.new("Part", part or workspace)
	p.Anchored = true
	p.CanCollide = false
	p.FormFactor = Enum.FormFactor.Custom
	p.Material = "SmoothPlastic"
	p.CFrame = cframe
	p.BrickColor = brickcolor
	p.Size = Vector3.new(1,1,1)
	p.Transparency = trans
	nooutlines(p)
	local m = Instance.new("SpecialMesh",p)
	if meshtype ~= nil and meshid == nil then
		m.MeshType = meshtype
	end
	if meshtype == nil and meshid ~= nil then
		m.MeshId = getmesh(meshid)
	end
	m.Scale = size
	coroutine.wrap(function()
		for i = 0,loopwait,0.1 do
			p.CFrame = p.CFrame
			p.Transparency = p.Transparency +transincrement
			m.Scale = m.Scale + scaleby
			wait(1/60)
		end
		p:Destroy()
	end)()
	return p
end

function Rwait(long)
	if long == 0 or long == nil then
		Run.RenderStepped:wait()
	else
		for i = 0,long do
			Run.RenderStepped:wait()
		end
	end
end

local PlaySound = function(part,volume,pitch,id,looped)
	local Sound = Instance.new("Sound", part)
	Sound.SoundId = id
	Sound.Pitch = pitch
	Sound.Volume = volume
	coroutine.wrap(function()
		wait()
		Sound:Play()
		if looped == nil then
			game.Debris:AddItem(Sound,10)
		end
	end)()
	if looped == true then
		Sound.Looped = true
		ThisSound = Sound
	end
end

local ShowDmg = function(totake)
	local modl = Instance.new("Model", workspace)
	modl.Name = tostring(totake)
	local prt = Instance.new("Part", modl)
	prt.CanCollide = false
	prt.BrickColor = BrickColor.Red()
	prt.Name = "Head"
	prt.CFrame = HM.CFrame *CFrame.new(0, 1.5, 0)
	prt.TopSurface = 0
	prt.BottomSurface = 0
	prt.FormFactor = 3
	prt.Size = Vector3.new(1, 0.2, 1)
	local bm = Instance.new("BlockMesh", prt)
	local hum = Instance.new("Humanoid", modl)
	hum.Health = 0
	hum.MaxHealth = 0
	hum.WalkSpeed = 0
	bodypos = Instance.new("BodyPosition", prt)
	bodypos.position = Head.Position +Vector3.new(0, 1, 0)
	bodypos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	game.Debris:AddItem(modl, 1)
	coroutine.resume(coroutine.create(function()
		for i = 1, 3 do
			bodypos.position = bodypos.position +Vector3.new(0, 0.5, 0)
			Rwait()
		end
	end))
end

local function ChargeAt(Strength)
	local BV = Instance.new("BodyVelocity",HM)
	BV.maxForce = Vector3.new(1e5,0,1e5)
	BV.velocity = HM.CFrame.lookVector *Strength
	game.Debris:AddItem(BV,0.1)
end

local function Rwait(long)
	if long == 0 or long == nil then
		Run.RenderStepped:wait()
	else
		for i = 0,long do
			Run.RenderStepped:wait()
		end
	end
end

local function Damage(hit,mm,knockback)
	if hit ~= nil and damen == true and hit.Parent ~= Char then
		local hum = GetHumanoid(hit.Parent)
		if hum ~= nil then
		    if TakeDamage == true then
		    	if imbued == true then
		    		hum:TakeDamage(mm*2)
		        	spawn(function()
		        		print("POW",mm*2)
		                ShowDmg(mm*2)
		            end)
		    	elseif imbued == false then
		        	hum:TakeDamage(mm)
		        	spawn(function()
		                ShowDmg(mm)
		            end)
		        end
	        elseif TakeDamage == false then
		    	if imbued == true then
		    		hum.Health = hum.Health -mm*2
		        	spawn(function()
		        		print("POW",mm*2)
		                ShowDmg(mm*2)
		            end)
		    	elseif imbued == false then
	            	hum.Health = hum.Health - mm
		        	spawn(function()
		                ShowDmg(mm)
		            end)
	            end
            end
			if knockback ~= nil and knockback ~= 0 then
				local v = Instance.new("BodyVelocity",hum.Torso)
				v.maxForce = Vector3.new(1e5,0,1e5)
				v.P = 1e20
				v.velocity = HM.CFrame.lookVector *knockback
				game.Debris:AddItem(v,0.5)			
			end
		end
		damen = false
	end
end

function GetDistance(Obj,Mag)
    local Bodies = {}
    for _,v in pairs(workspace:GetChildren()) do
        if v ~= Char then
			hum = findhum(v)
			print(hum)
			if hum ~= nil and hum.Torso ~= nil then
				local Mag2 = (hum.Torso.Position - Obj.Position).magnitude
				if Mag2 < Mag then
					Bodies[#Bodies + 1] = v
				end
			end
		end
    end
    return Bodies,hum
end

--darkus stuff

function GetHumanoid(Character)
	print(Character.ClassName,Character.Parent.ClassName)
    
    assert(Character, 'bad argument #1 to Character (Model expected, got nil)')
    
    local hum
    
    if Character == Char then return end
    
    if Character.ClassName == "Hat" or Character.ClassName == "Accessory" then
    	for q,e in next, Character.Parent:children() do
	        if e:isA'Humanoid' then
	            hum = e
	        end
	        if e:isA'ForceField' then
	            return
	        end
    	end
    else
	    for q,e in next, Character:children() do
	        if e:isA'Humanoid' then
	            hum = e
	        end
	        if e:isA'ForceField' then
	            return
	        end
	    end
    end
return hum
end

function GetNear(Object, Distance)
    
    assert(Object, 'bad argument #1 to Object (Model expected, got nil)')
    
    local Distance = (Distance and Distance or 25)
    local rtn = {}
    
    for q,e in next, workspace:children() do
        local Tor = e:findFirstChild'HumanoidRootPart'
        if Tor then
            local dist = (Object.Position-Tor.Position).magnitude
            if dist <= Distance then
                rtn[#rtn+1] = e
            end
        end
    end
return rtn
end
    
function DamageNear(Distance, Part, Damage, Knockback, DebounceTime)
    if damen == false then return end
    assert(Part, 'bad argument #2 to Part (Part expected, got nil)')
    assert(Part:isA'BasePart', ('bad argument #2 to Part (Part expected, got %s)'):format(Part.ClassName))
        
    local Distance = (Distance and Distance or 25)
    local Noobs = GetNear(Part, Distance)
    
    for nild, Character in next, Noobs do
        
        local Human = GetHumanoid(Character)
        if Human and not Debounce[Character] then
            -- no clue why they were using spawn but ok...
            
            Debounce[Character] = true
            
            if TakeDamage then
		    	if imbued == true then
		    		Human:TakeDamage(Damage*2)
		        	spawn(function()
		        		print("POW",Damage*2)
		                ShowDmg(Damage*2)
		            end)
		    	else
                	Human:TakeDamage(Damage)
		        	spawn(function()
		                ShowDmg(Damage)
		            end)
                end
            else
		    	if imbued == true then
		    		Human.Health = Human.Health - Damage*2
		        	spawn(function()
		        		print("POW",Damage*2)
		                ShowDmg(Damage*2)
		            end)
		    	else
	                Human.Health = Human.Health - Damage
			        spawn(function()
			        	ShowDmg(Damage)
					end)
				end
            end
            if Knockback then
                local v = Instance.new("BodyVelocity", Human.Parent:findFirstChild'HumanoidRootPart')
                v.maxForce = Vector3.new(1/0,0,1/0)
                v.P = 1e15
                v.velocity = HM.CFrame.lookVector * Knockback
                
                spawn(function()
                    game:service'Debris':AddItem(v,0.3)
                end)
            end
            
            coroutine.wrap(function()--spawn(function()
                wait(DebounceTime)
                Debounce[Character] = nil
            end)()--end)
            
        end
    end
    
return
end
--

local function Slash1()
	for i = 1,12 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,-math.pi/1.2,-math.pi/2),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/7,0,math.pi/4),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(GHW,GHW.C0,ghc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	damen = true
	PlaySound(Hitbox,1,0.6,Sounds[1])
	for i = 1,15 do
		DamageNear(2,Hitbox,math.random(7,14),5,0.5)
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(0,0,-0.5) *CFrame.Angles(0,-math.pi/10,-math.pi/2),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/6,0,math.pi/4),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(GHW,GHW.C0,ghc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	damen = false
end

local function Slash2()
	for i = 1,12 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/1.8,-math.pi/3.5,math.pi/3.5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,0,math.pi/8),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(HW,HW.C0,hc0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(GHW,GHW.C0,ghc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	damen = true
	PlaySound(Hitbox,1,0.8,Sounds[1])
	for i = 1,15 do
		DamageNear(2,Hitbox,math.random(7,14),5,0.5)
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/7,0,-math.pi/4),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/8,0,math.pi/5),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(GHW,GHW.C0,ghc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	damen = false
end

local function Kick3()
	damen = true
	local dmgbx = RL.Touched:connect(function(hit) Damage(hit,math.random(6,10),10) end)
	PlaySound(RL,1,1.2,Sounds[2])
	ChargeAt(50)
	for i = 1,18 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/5,0,0),armspeed)
		lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.pi/7),legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.pi/2.5),legspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(-math.pi/7,0,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.pi/4,0,0),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(GHW,GHW.C0,ghc0,speed)
		Rwait()
	end
	damen = false
	dmgbx:disconnect()
end

local function Slash4()
	for i = 0,1.2,0.08 do
		if i % 0.16 == 0 then
			PlaySound(Hitbox,1,math.random(1400,1900)/1000,Sounds[2])
		end
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/1.02,0,0),armspeed*2)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,0,math.pi/8),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(HW,HW.C0,hc0 *CFrame.Angles(-math.pi*i*2,0,0),speed)
		lerp(GHW,GHW.C0,ghc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	damen = true
	PlaySound(Hitbox,1,0.7,Sounds[1])
	for i = 1,17 do
		DamageNear(2,Hitbox,math.random(7,14),5,0.5)
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,0,-math.pi/5),armspeed)
		lerp(WRS,WRS.C0,RSC0,armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(HW,HW.C0,hc0 *CFrame.Angles(-math.pi/5,0,0),speed)
		lerp(GHW,GHW.C0,ghc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	damen = false
end

local function TwoHandedSlash1()
	Human.WalkSpeed = 16*4
	for i = 1,15 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(1,-0.2,0) *CFrame.Angles(0,math.pi/1.3,math.pi/2),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-1.5,-0.2,-0.6) *CFrame.Angles(0,math.pi/1.3,math.pi/2),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/2.01) *CFrame.Angles(math.pi/10,0,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/2.01) *CFrame.Angles(math.pi/10,0,0),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(GHW,GHW.C0,CFrame.new(1,-1,0),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,-math.pi/10),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.pi/10),legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(-1,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,-0.5) *CFrame.Angles(0,-math.pi/2.01,math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))) *CFrame.Angles(-math.pi/10,0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,-0.5) *CFrame.Angles(0,-math.pi/2.01,math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))) *CFrame.Angles(math.pi/10,0,0),legspeed)
		end
		Rwait()
	end
	damen = true
	PlaySound(Hitbox,1,0.55,Sounds[1])
	Human.WalkSpeed = 16
	for i = 1,20 do
		DamageNear(2,Hitbox,math.random(7,14),5,0.5)
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(1.5,-0.2,-0.8) *CFrame.Angles(0,math.pi/5,math.pi/2),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.5,-0.2,0.2) *CFrame.Angles(0,math.pi/5,math.pi/2),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/2.01),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/2.01),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(GHW,GHW.C0,CFrame.new(1,-1,0),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.pi/8,0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(-math.pi/8,0,0),legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,-0.5) *CFrame.Angles(0,math.pi/2.01,math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(1,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,-0.5) *CFrame.Angles(0,math.pi/2.01,math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	damen = false
end

local function TwoHandedSlash2()
	Human.WalkSpeed = 16*4
	for i = 1,15 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(2,-0.2,-0.8) *CFrame.Angles(0,-math.pi/1.3,-math.pi/2),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(0,-0.2,0.2) *CFrame.Angles(0,-math.pi/1.3,-math.pi/2),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/2.01) *CFrame.Angles(math.pi/10,0,0),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/2.01) *CFrame.Angles(math.pi/10,0,0),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(GHW,GHW.C0,CFrame.new(1,-1,0),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,-math.pi/10),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.pi/10),legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,-0.5) *CFrame.Angles(0,math.pi/2,math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))) *CFrame.Angles(math.pi/10,0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(1,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,-0.5) *CFrame.Angles(0,math.pi/2,math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))) *CFrame.Angles(-math.pi/10,0,0),legspeed)
		end
		Rwait()
	end
	damen = true
	PlaySound(Hitbox,1,0.7,Sounds[1])
	Human.WalkSpeed = 16
	for i = 1,15 do
		DamageNear(2,Hitbox,math.random(7,14),5,0.5)
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(1,-0.2,-0.1) *CFrame.Angles(0,-math.pi/3,-math.pi/2),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-1,-0.2,-0.5) *CFrame.Angles(0,-math.pi/3,-math.pi/2),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/2.01),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/2.01),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(GHW,GHW.C0,CFrame.new(1,-1,0),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.pi/8,0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(-math.pi/8,0,0),legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(-1,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,-0.5) *CFrame.Angles(0,-math.pi/2,math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,-0.5) *CFrame.Angles(0,-math.pi/2,math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	damen = false
end

local function TwoHandedSlash3()
	for i = 1,20 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(0.5,0,-0.5) *CFrame.Angles(math.pi/1.05,0,math.pi/5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.5,0,-0.5) *CFrame.Angles(math.pi/1.05,0,-math.pi/5),armspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/4,0,0),speed)
		lerp(HW,HW.C0,hc0 *CFrame.new(0.1,0,0) *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(GHW,GHW.C0,CFrame.new(1,-1,0),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	damen = true
	PlaySound(Hitbox,1,0.57,Sounds[1])
	for i = 1,20 do
		DamageNear(2,Hitbox,math.random(7,14),5,0.5)
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(0.5,0,-0.5) *CFrame.Angles(0,0,math.pi/5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.5,0,-0.5) *CFrame.Angles(0,0,-math.pi/5),armspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.pi/4,0,0),speed)
		lerp(HW,HW.C0,hc0 *CFrame.new(0.1,0,0) *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(GHW,GHW.C0,CFrame.new(1,-1,0),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	damen = false
end

local function TwoHandedLucerneSlam()
	for i = 1,20 do
		if venabled < 0 then return end
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(0.5,0,-0.5) *CFrame.Angles(math.pi/1.05,0,math.pi/5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.5,0,-0.5) *CFrame.Angles(math.pi/1.05,0,-math.pi/5),armspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/4,0,0),speed)
		lerp(HW,HW.C0,hc0 *CFrame.new(0.1,0,0) *CFrame.Angles(0,0,-math.pi/5) *CFrame.Angles(math.pi/12,0,0),speed)
		lerp(GHW,GHW.C0,CFrame.new(1,-1,0),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	damen = true
	PlaySound(Hitbox,1,0.7,Sounds[1])
	local hitboxslammed = false
	for i = 1,70 do
		if venabled < 0 then return end
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(0.5,0,-0.5) *CFrame.Angles(0,0,math.pi/5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.5,0,-0.5) *CFrame.Angles(0,0,-math.pi/5),armspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.pi/4,0,0),speed)
		lerp(HW,HW.C0,hc0 *CFrame.new(0.1,0,0) *CFrame.Angles(0,0,-math.pi/5) *CFrame.Angles(-math.pi/7,0,0),speed)
		lerp(GHW,GHW.C0,CFrame.new(1,-1,0),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		local Ignore = {}
		for i,v in pairs(m:GetChildren()) do
			if v.ClassName == "Part" then
				table.insert(Ignore,v)
			end
		end
		for i,v in pairs(m2:GetChildren()) do
			if v.ClassName == "Part" then
				table.insert(Ignore,v)
			end
		end
		for I_shall,ignore_this in pairs(workspace:GetChildren()) do
			if ignore_this:IsA("Model") then
				if ignore_this:FindFirstChild("Humanoid") then
					for _,ignorepart in pairs(ignore_this:GetChildren()) do
						if ignorepart.ClassName == "Part" then
							table.insert(Ignore,ignorepart)
						end
					end
				end
			end
		end
		local RayC = Ray.new(Hitbox.Position + Vector3.new(0,-1,0),Vector3.new(0,-0.2,0))
		local Hit,pos = workspace:FindPartOnRayWithIgnoreList(RayC,Ignore)
		if Hit ~= nil and hitboxslammed == false then
			PlaySound(Head,1,0.8,Sounds[4])
			hitboxslammed = true
			spawn(function()
				effect(Hitbox,Hit.BrickColor,Vector3.new(0.2,0.2,0.2),CFrame.new(pos),0,0.1,Vector3.new(3,3,3),1,Meshes.Blast,nil)
			end)
			spawn(function()
				effect(Hitbox,Hit.BrickColor,Vector3.new(0.2,0.2,0.2),CFrame.new(pos),0,0.1,Vector3.new(1.5,1.5,1.5),1,nil,"Sphere")
			end)
			spawn(function()
				DamageNear(20,Hitbox,math.random(17,24),50,0.5)
			end)
		end
		Rwait()
	end
	damen = false
end

local function ConstantSlashes()
	for i = 1,3 do
		for i = 1,9 do
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,-math.pi,-math.pi/2),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/4,0,-math.pi/3),armspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/5),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
			lerp(HW,HW.C0,hc0,speed)
			lerp(GHW,GHW.C0,ghc0,speed)
			if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
				lerp(WLH,WLH.C0,LHC0,legspeed)
				lerp(WRH,WRH.C0,RHC0,legspeed)
			elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
				lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
				lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			end
			Rwait()
		end
		damen = true
		PlaySound(Hitbox,1,math.random(60,120)/100,Sounds[1])
		for i = 1,9 do
			DamageNear(2,Hitbox,math.random(7,14),10,0.3)
			lerp(WLS,WLS.C0,LSC0 *CFrame.new(0,0,-0.5) *CFrame.Angles(0,-math.pi/10,-math.pi/2),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/4,0,-math.pi/3),armspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/5),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/5),speed)
			lerp(HW,HW.C0,hc0,speed)
			lerp(GHW,GHW.C0,ghc0,speed)
			if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
				lerp(WLH,WLH.C0,LHC0,legspeed)
				lerp(WRH,WRH.C0,RHC0,legspeed)
			elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
				lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
				lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			end
			Rwait()
		end
		for i = 1,9 do
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,math.pi/1.3,math.pi/2),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/4,0,-math.pi/3),armspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/5),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/5),speed)
			lerp(HW,HW.C0,hc0,speed)
			lerp(GHW,GHW.C0,ghc0,speed)
			if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
				lerp(WLH,WLH.C0,LHC0,legspeed)
				lerp(WRH,WRH.C0,RHC0,legspeed)
			elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
				lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
				lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			end
			Rwait()
		end
		damen = true
		PlaySound(Hitbox,1,math.random(60,120)/100,Sounds[1])
		for i = 1,9 do
			DamageNear(2,Hitbox,math.random(7,14),10,0.3)
			lerp(WLS,WLS.C0,LSC0 *CFrame.new(0,0,-0.5) *CFrame.Angles(0,math.pi/10,math.pi/2),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/4,0,-math.pi/3),armspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/5),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
			lerp(HW,HW.C0,hc0,speed)
			lerp(GHW,GHW.C0,ghc0,speed)
			if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
				lerp(WLH,WLH.C0,LHC0,legspeed)
				lerp(WRH,WRH.C0,RHC0,legspeed)
			elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
				lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
				lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			end
			Rwait()
		end
		damen = false
	end
end

local function LucerneSlam()
	PlaySound(Head,1,1.25,Sounds[3])
	for i = 1,100 do
		effect(Hitbox,BrickColor.new("Really black"),Vector3.new(0.2,0.2,0.2),Hitbox.CFrame *CFrame.new(math.random(-300,300)/160,math.random(-300,300)/160,math.random(-300,300)/160),0,0.1*2,Vector3.new(0.1,0.1,0.1),1/2,nil,"Sphere")
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/1.3,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/8,0,0),armspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/5,0,0),speed)
		lerp(HW,HW.C0,hc0 *CFrame.new(0,-0.25,-0.25) *CFrame.Angles(-math.pi/3.5,0,0),speed)
		lerp(GHW,GHW.C0,ghc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	for i = 1,12 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/1.02,-math.pi/5,math.pi/5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/8,0,0),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(GHW,GHW.C0,ghc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	damen = true
	PlaySound(Hitbox,1,0.65,Sounds[1])
	local hitboxslammed = false
	for i = 1,18 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(0,0,-0.5) *CFrame.Angles(0,-math.pi/5,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/7,0,0),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/5),speed)
		lerp(HW,HW.C0,hc0 *CFrame.Angles(-math.pi/9,0,0),speed)
		lerp(GHW,GHW.C0,ghc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		local Ignore = {}
		for i,v in pairs(m:GetChildren()) do
			if v.ClassName == "Part" then
				table.insert(Ignore,v)
			end
		end
		for i,v in pairs(m2:GetChildren()) do
			if v.ClassName == "Part" then
				table.insert(Ignore,v)
			end
		end
		for I_shall,ignore_this in pairs(workspace:GetChildren()) do
			if ignore_this:IsA("Model") then
				if ignore_this:FindFirstChild("Humanoid") then
					for _,ignorepart in pairs(ignore_this:GetChildren()) do
						if ignorepart.ClassName == "Part" then
							table.insert(Ignore,ignorepart)
						end
					end
				end
			end
		end
		local RayC = Ray.new(Hitbox.Position + Vector3.new(0,-1,0),Vector3.new(0,-0.2,0))
		local Hit,pos = workspace:FindPartOnRayWithIgnoreList(RayC,Ignore)
		if Hit ~= nil and hitboxslammed == false then
			PlaySound(Head,1,1.9,Sounds[4])
			hitboxslammed = true
			spawn(function()
				effect(Hitbox,Hit.BrickColor,Vector3.new(0.2,0.2,0.2),CFrame.new(pos),0,0.1,Vector3.new(1.2,1.2,1.2),1,Meshes.Blast,nil)
			end)
			spawn(function()
				effect(Hitbox,Hit.BrickColor,Vector3.new(0.2,0.2,0.2),CFrame.new(pos),0,0.1,Vector3.new(0.8,0.8,0.8),1,nil,"Sphere")
			end)
			spawn(function()
				DamageNear(12,Hitbox,math.random(13,20),30,0.5)
			end)
		end
		Rwait()
	end
	damen = false
end

local function LucerneSpins()
	for i = 1,10 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(0,-math.pi/12,-math.pi/2),armspeed*2)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/4,0,0),armspeed*2)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/3*(i/4)),speed*2)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/3*(i/4)),speed*2)
		lerp(HW,HW.C0,hc0 *CFrame.Angles(math.pi/2.9,0,0),speed*2)
		lerp(GHW,GHW.C0,ghc0,speed*2)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	for i = 1,3 do
		damen = true
		PlaySound(Hitbox,1,math.random(60,120)/100,Sounds[1])
		for i = 0,1,0.05 do
			DamageNear(2,Hitbox,math.random(6,8),25,0.1)
			lerp(WLS,WLS.C0,LSC0 *CFrame.new(0,0,-0.5) *CFrame.Angles(0,-math.pi/10,-math.pi/2),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/4,0,0),armspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi*i*2),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/5),speed)
			lerp(HW,HW.C0,hc0,speed)
			lerp(GHW,GHW.C0,ghc0,speed)
			if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
				lerp(WLH,WLH.C0,LHC0,legspeed)
				lerp(WRH,WRH.C0,RHC0,legspeed)
			elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
				lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
				lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			end
			Rwait()
		end
	end
end

local function Shoot()
	damen = true
	PlaySound(Head,1,math.random(400,1200)/1000,Sounds[5])
	local ray = Ray.new(SomePartIdk.CFrame.p, (mouse.Hit.p - SomePartIdk.CFrame.p).unit * 300)
	local part, position = workspace:FindPartOnRay(ray, Char, false, true)
	local beam = Instance.new("Part", workspace)
	beam.BrickColor = BrickColor.new("New Yeller")
	beam.FormFactor = 3
	beam.Material = "Neon"
	beam.Transparency = 0.25
	beam.Anchored = true
	beam.Locked = true
	beam.CanCollide = false
 	local distance = (SomePartIdk.CFrame.p - position).magnitude
	beam.Size = Vector3.new(0.3, 0.3, distance)
	beam.CFrame = CFrame.new(SomePartIdk.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
 	game:GetService("Debris"):AddItem(beam,0.1)
 	local blmesh = Instance.new("BlockMesh",beam)
 	if part then
 		spawn(function()
			Damage(part,math.random(5,10),0,0)
		end)
	end
	local boom = effect(Shooter,BrickColor.new("New Yeller"),Vector3.new(0.2,1,0.2),Shooter.CFrame *CFrame.new(0,-0.3,0),0,0.5,Vector3.new(0.25,0.25,0.25),0.2,nil,"Sphere")
	boom.Material = "Neon"
	spawn(function()
		if part ~= nil then
			effect(Shooter,BrickColor.new("New Yeller"),Vector3.new(1,1,1),CFrame.new(SomePartIdk.CFrame.p, position) * CFrame.new(0, 0, -distance),0,0.5,Vector3.new(0.5,0.5,0.5),0.2,nil,"Sphere")
		end
	end)
	spawn(function()
		while beam ~= nil and enabled == false do
			local dir = mouse.Hit.p
			local getrot = HM.Position.Y-dir.Y
			local dist = (HM.Position-dir).magnitude
			local turnpoint = math.asin(getrot/dist)
			local grot = Vector3.new(mouse.Hit.p.X,HM.Position.Y,mouse.Hit.p.Z)
			local HMPos = WRJ.C0.p
			local offAng = CFrame.Angles(0,-math.pi/2,0)
			local cf = CFrame.new(HMPos, -HM.CFrame:pointToObjectSpace(Vector3.new(mouse.Hit.x, HM.CFrame.y, mouse.Hit.z))) * offAng
			if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
				lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,-math.pi/3),armspeed)
				lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/2,-turnpoint,math.pi/2),armspeed)
				lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.pi/8,0,0),legspeed)
				lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(-math.pi/8,0,0),legspeed)
				lerp(WRJ,WRJ.C0,cf*RJC0,speed)
				lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/2) *CFrame.Angles(turnpoint*0.4,0,0),speed)
			elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
				lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,-math.pi/3),armspeed)
				lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/2,-turnpoint,math.pi/2),armspeed)
				lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.2,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,-0.5) *CFrame.Angles(0,-math.pi/2,math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
				lerp(WRH,WRH.C0,RHC0 *CFrame.new(-0.2,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,-0.5) *CFrame.Angles(0,-math.pi/2,math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
				lerp(WRJ,WRJ.C0,cf*RJC0,speed)
				lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/2) *CFrame.Angles(turnpoint*0.4,0,0),speed)
				lerp(HW,HW.C0,hc0 *CFrame.new(0,-0.4,0) *CFrame.Angles(math.pi/3,0,0),speed)
				lerp(GHW,GHW.C0,ghc0,speed)
			end
			Rwait()
		end
	end)
 	for i = 0,0.2,0.1 do
 		boom.CFrame = boom.CFrame *CFrame.new(0,-0.025*3.5,0)
 		blmesh.Scale = Vector3.new(1-i*5,1-i*5,1)
 		beam.Transparency = i*5
 		Rwait()
 	end
 	Rwait(13)
 	damen = false
end

local function SmackGun()
	for i = 1,12 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/8,0,-math.pi/7),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,math.pi/1.3,math.pi/2),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/3.5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/3.5),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(GHW,GHW.C0,ghc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	damen = true
	PlaySound(SomeGunPartIdk,1,math.random(12,18)/10,Sounds[2])
	for i = 1,12 do
		DamageNear(2,SomeGunPartIdk,math.random(4,8),30,0.5)
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/5,0,-math.pi/7),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,math.pi/(1.3+i),math.pi/2),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,-1,0) *CFrame.Angles(0,0,-math.pi/3.5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/3.5),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(GHW,GHW.C0,ghc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	damen = false
end

local function TwoHandedDash()
	for i = 1,18 do
		if venabled < 0 then return end
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(1,-0.2,0.6) *CFrame.Angles(0,math.pi/1.05,math.pi/2),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-1.5,-0.2,-1) *CFrame.Angles(0,math.pi/1.09,math.pi/2),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,math.pi/2),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/2),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(GHW,GHW.C0,ghc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	effect(HM,BrickColor.White(),Vector3.new(0.2,0.2,0.2),HM.CFrame *CFrame.Angles(-math.pi/2,0,0),0,0.1,Vector3.new(0.2,0.2,0.2),1,Meshes.Blast,nil)
	ChargeAt(70)
	PlaySound(Hitbox,1,0.35,Sounds[1])
	damen = true
	for i = 1,28 do
		if venabled < 0 then return end
		DamageNear(2,Hitbox,math.random(13,20),30,10)
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(1,-0.2,-0.6) *CFrame.Angles(0,math.pi/3,math.pi/2),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.5,-0.2,-0.1) *CFrame.Angles(0,math.pi/3,math.pi/2),armspeed)
		lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/3.5),speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,math.pi/3.5),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(GHW,GHW.C0,ghc0,speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	damen = false
end

local function Imbue()
	PlaySound(Head,1,0.7,Sounds[6])
	for i = 0,1,0.01 do
		if venabled < 0 then return end
		if i % 0.06 then
			spawn(function()
				local chargeeff = effect(Hitbox,BrickColor.new(Color3.new(1,1-i,0)),Vector3.new(1+i*2,1+i*2,1+i*2),Hitbox.CFrame *CFrame.Angles(math.random(-3600,3600)/100,math.random(-3600,3600)/100,math.random(-3600,3600)/100),0,0.1*4,Vector3.new(-0.3,-0.3,-0.3),1/4,nil,"Brick")
				local sphereeff = effect(Hitbox,BrickColor.new(Color3.new(1,1-i,0)),Vector3.new(0.3,3,0.3),chargeeff.CFrame *CFrame.new(0,12,0),0,0.7,Vector3.new(),0.25,nil,"Sphere")
				for i = 1,30 do
					Rwait()
					chargeeff.CFrame = Hitbox.CFrame *CFrame.Angles(math.random(-3600,3600)/100,math.random(-3600,3600)/100,math.random(-3600,3600)/100)
					sphereeff.CFrame = sphereeff.CFrame *CFrame.new(0,-0.8,0)
				end
			end)
		end
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/1.02,0,0),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(-1.8,0,-0.8) *CFrame.Angles(math.pi/1.08,0,-math.pi/3),armspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/3.5) *CFrame.Angles(math.pi/8,0,0),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(GHW,GHW.C0,ghc0 *CFrame.new(-0.5,0,0),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
end

local function PrepareTwoHandedMode()
	for i = 0,2,0.05 do
		if i >= 0.49 and i <= 0.5 then
			PlaySound(Hitbox,1,2,Sounds[2])
		end
		if i >= 1.49 and i <= 1.55 then
			PlaySound(Hitbox,1,2,Sounds[2])
		end
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,-math.pi/3),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/2,0,math.pi/3),armspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/3.5),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(GHW,GHW.C0,ghc0 *CFrame.Angles(-math.pi*i*2,0,0),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	for i = 1,18 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,-math.pi/3),armspeed)
		lerp(WRS,WRS.C0,RSC0,armspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/3.5) *CFrame.Angles(math.pi/8,0,0),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(GHW,GHW.C0,ghc0 *CFrame.new(-0.5,0,0),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	DesertEagleweld.Part0 = T
	DesertEagleweld.C0 = CFrame.new(1,-1,0)
end

local function ExitTwoHandedMode()
	for i = 1,18 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,-math.pi/3),armspeed)
		lerp(WRS,WRS.C0,RSC0,armspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/3.5) *CFrame.Angles(math.pi/8,0,0),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(GHW,GHW.C0,ghc0 *CFrame.new(1,0,0),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
	DesertEagleweld.Part0 = RA
	DesertEagleweld.C0 = CFrame.new(0,-1,0)
	for i = 0,2,0.05 do
		if i >= 0.49 and i <= 0.5 then
			PlaySound(Hitbox,1,2,Sounds[2])
		end
		if i >= 1.49 and i <= 1.55 then
			PlaySound(Hitbox,1,2,Sounds[2])
		end
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,-math.pi/3),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/2,0,math.pi/3),armspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/3.5),speed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(GHW,GHW.C0,ghc0 *CFrame.Angles(-math.pi*i*2,0,0),speed)
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
			lerp(WLH,WLH.C0,LHC0,legspeed)
			lerp(WRH,WRH.C0,RHC0,legspeed)
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
		end
		Rwait()
	end
end

local function ExtremeStomp()
	Human.WalkSpeed = 0
	for i = 1,20 do
		lerp(WLS,WLS.C0,LSC0 *CFrame.new(0,0.7,0) *CFrame.Angles(math.pi/1.1,0,math.pi/3),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.new(0,0.7,0) *CFrame.Angles(math.pi/1.1,0,-math.pi/3),armspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/5,0,0),speed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.4,1,0),legspeed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(GHW,GHW.C0,ghc0,speed)
		Rwait()
	end
	for i = 1,80 do
		if i == 14 then
			local Ignore = {}
			for I_shall,ignore_this in pairs(workspace:GetChildren()) do
				if ignore_this:IsA("Model") then
					if ignore_this:FindFirstChild("Humanoid") then
						Ignore[#Ignore +1] = ignore_this
					end
				end
			end
			local Ray = Ray.new(RL.Position,Vector3.new(0,-3,0))
			local Hit,pos = workspace:FindPartOnRayWithIgnoreList(Ray, Ignore)
			if Hit ~= nil then
				damen = true
				PlaySound(RL,1,0.4,Sounds[4])
				DamageNear(35,RL,math.random(26,38),75,0.1)
				for i = 1,10 do
					effect(RL,Hit.BrickColor,Vector3.new(0.2,0.2,0.2),CFrame.new(pos) *CFrame.Angles(math.pi/2,0,0),0,0.1,Vector3.new(6,6,6),1,Meshes.Ring,nil)
					Rwait(2)
				end
			end
		end
		lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/9,0,-math.pi/5),armspeed)
		lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/9,0,math.pi/5),armspeed)
		lerp(WRJ,WRJ.C0,RJC0,speed)
		lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.pi/3,0,0),speed)
		lerp(WLH,WLH.C0,LHC0,legspeed)
		lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.4,0,0),legspeed)
		lerp(HW,HW.C0,hc0,speed)
		lerp(GHW,GHW.C0,ghc0,speed)
		Rwait()
	end
	damen = false
	Human.WalkSpeed = 16
end

local click = mouse.Button1Down:connect(function()
	if on == false then return end
	if aiming == false and twohanded == false then
		if enabled == false then return end
		if twohanded == true then return end
		if combo == 1 and enabled == true then
			enabled = false
			Slash1()
			enabled = true
			combo = 2
			coroutine.wrap(function()
				Rwait(400)
				if combo ~= 1 and enabled == true then
					combo = 1
				end
			end)()
		elseif combo == 2 and enabled == true then
			enabled = false
			Slash2()
			enabled = true
			combo = 3
			coroutine.wrap(function()
				Rwait(400)
				if combo ~= 1 and enabled == true then
					combo = 1
				end
			end)()
		elseif combo == 3 and enabled == true then
			enabled = false
			Kick3()
			enabled = true
			combo = 4
			coroutine.wrap(function()
				Rwait(400)
				if combo ~= 1 and enabled == true then
					combo = 1
				end
			end)()
		elseif combo == 4 and enabled == true then
			enabled = false
			Slash4()
			enabled = true
			combo = 1
		end
	elseif aiming == true and twohanded == false then
		if enabled == false then return end
		if aiming == false then return end
		if action == "Idle" or action == "Walk" then
			enabled = false
			Shoot()
			enabled = true
		end
	elseif aiming == false and twohanded == true then
		if enabled == false then return end
		if combo == 1 then
			enabled = false
			TwoHandedSlash1()
			combo = 2
			coroutine.wrap(function()
				Rwait(400)
				if combo ~= 1 and enabled == true then
					combo = 1
				end
			end)
			enabled = true
		elseif combo == 2 then
			enabled = false
			TwoHandedSlash2()
			combo = 3
			coroutine.wrap(function()
				Rwait(400)
				if combo ~= 1 and enabled == true then
					combo = 1
				end
			end)
			enabled = true
		elseif combo == 3 then
			enabled = false
			TwoHandedSlash3()
			combo = 1
			enabled = true
		end
	end
end)

local keys = mouse.KeyDown:connect(function(key)
	key = key:lower()
	if enabled == false then return end
	if key == "z" and on == true and enabled == true and aiming == false and twohanded == false and zenabled == 1 then
		zenabled = 0
		enabled = false
		ConstantSlashes()
		enabled = true
	elseif key == "z" and on == true and enabled == true and aiming == false and twohanded == true and z2enabled == 1 then
		z2enabled = 0
		enabled = false
		TwoHandedLucerneSlam()
		enabled = true
	elseif key == "x" and on == true and enabled == true and aiming == false and twohanded == false and xenabled == 1 then
		xenabled = 0
		enabled = false
		LucerneSlam()
		enabled = true
	elseif key == "x" and on == true and enabled == true and aiming == false and twohanded == true and x2enabled == 1 then
		x2enabled = 0
		enabled = false
		TwoHandedDash()
		enabled = true
	elseif key == "c" and on == true and enabled == true and aiming == false and twohanded == false and cenabled == 1 then
		cenabled = 0
		enabled = false
		LucerneSpins()
		enabled = true
	elseif key == "c" and on == true and enabled == true and aiming == false and twohanded == true and c2enabled == 1 then
		c2enabled = 0
		enabled = false
		ExtremeStomp()
		enabled = true
	elseif key == "v" and on == true and enabled == true and aiming == false and twohanded == false and venabled == 1 then
		enabled = false
		PrepareTwoHandedMode()
		twohanded = true
		enabled = true
	elseif key == "v" and on == true and enabled == true and aiming == false and twohanded == true and venabled > 0 then
		if venabled < 0.15 then return end
		enabled = false
		ExitTwoHandedMode()
		twohanded = false
		enabled = true
	elseif key == "e" and on == true and enabled == true and aiming == false and twohanded == false and eenabled == 1 then
		eenabled = 0
		enabled = false
		SmackGun()
		enabled = true
	elseif key == "e" and on == true and enabled == true and aiming == false and twohanded == true and e2enabled == 1 then
		if imbued == true then return end
		enabled = false
		Imbue()
		imbued = true
		enabled = true
	elseif key == "q" and on == true and twohanded == false then
		aiming = not aiming
	end
end)

local function Cast(Pos,Dir,Amp,IgnoreList)
	return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit*Amp), IgnoreList) 
end 

Human.WalkSpeed = 0

game:GetService("Chat"):Chat(Head,"Lucerne, I Need You.",2)

PlaySound(Head,0.5,0.2,Sounds[3])

Songs = {"rbxassetid://171230598","rbxassetid://530060106","rbxassetid://241560895","rbxassetid://486598641","rbxassetid://337009788","rbxassetid://571839980","rbxassetid://413782450"}

local S = Instance.new("Sound",Head)
S.SoundId = Songs[math.random(1,#Songs)]
print(S.SoundId)
S.TimePosition = math.random(1,12000)/100
S.Volume = 0
S:Play()

for i = 1,500 do
	S.Volume = S.Volume +0.001
	if i % 10 == 0 then
		spawn(function()
			effect(LucerneHammer,BrickColor.new("Bright yellow"),Vector3.new(0.2,0.2,0.2),Hitbox.CFrame *CFrame.new(0,0.8,0) *CFrame.Angles(-math.pi/2,0,0),0,0.1,Vector3.new(0.3,0.3,0.3),1,Meshes.SpinyShell,nil)
			effect(LucerneHammer,BrickColor.new("Bright yellow"),Vector3.new(0.2,0.2,0.2),Hitbox.CFrame *CFrame.new(0,-0.8,0) *CFrame.Angles(math.pi/2,0,0),0,0.1,Vector3.new(0.3,0.3,0.3),1,Meshes.SpinyShell,nil)
			effect(LucerneHammer,BrickColor.new("Really red"),Vector3.new(0.2,0.2,0.2),Hitbox.CFrame *CFrame.new(0,0.8,0) *CFrame.Angles(-math.pi/2,0,0),0,0.2,Vector3.new(0.35,0.35,0.35),1,Meshes.SpinyShell,nil)
			effect(LucerneHammer,BrickColor.new("Really red"),Vector3.new(0.2,0.2,0.2),Hitbox.CFrame *CFrame.new(0,-0.8,0) *CFrame.Angles(math.pi/2,0,0),0,0.2,Vector3.new(0.35,0.35,0.35),1,Meshes.SpinyShell,nil)
		end)
    end
	lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/1.03,0,-math.pi/5),armspeed)
	lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(0,0,math.pi/10),armspeed)
	lerp(WLH,WLH.C0,LHC0,legspeed)
	lerp(WRH,WRH.C0,RHC0,legspeed)
	lerp(WRJ,WRJ.C0,RJC0,speed)
	lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/5,0,0),speed)
	lerp(HW,HW.C0,hc0,1)
	lerp(GHW,GHW.C0,ghc0,1)
	Rwait()
end


S:Destroy()
Human.WalkSpeed = 16

on = true

--Credits to penguin0616 and AmbientOcclusion (formerly known as madiik) for helping me with rotating the rootjoint correctly.
while true do
	local dir = mouse.Hit.p
	local getrot = HM.Position.Y-dir.Y
	local dist = (HM.Position-dir).magnitude
	local turnpoint = math.asin(getrot/dist)
    --local camToMouseDir = (mouse.Hit.p - workspace.CurrentCamera.CFrame.p).unit
    --local newPos = workspace.CurrentCamera.CFrame.p + camToMouseDir * 100
    --local newPos = workspace.CurrentCamera.CFrame.p + mouse.Hit.lookVector*100 -- this 1 maybi
    --local grot = Vector3.new(newPos.X,HM.Position.Y,newPos.Z)
    --local cf = CFrame.new(grot)
	local HMPos = WRJ.C0.p
	local offAng = CFrame.Angles(0,-math.pi/2,0)
	local cf = CFrame.new(HMPos, -HM.CFrame:pointToObjectSpace(Vector3.new(mouse.Hit.x, HM.CFrame.y, mouse.Hit.z))) * offAng
	local surface = Cast(HM.Position,(CFrame.new(HM.Position,HM.Position - Vector3.new(0,1,0))).lookVector,4,Char)
	if zenabled < 1 then
		zenabled = zenabled +0.01 *0.25
	else
		zenabled = 1
	end
	if xenabled < 1 then
		xenabled = xenabled +0.01 *0.175
	else
		xenabled = 1
	end
	if cenabled < 1 then
		cenabled = cenabled +0.01 *0.15
	else
		cenabled = 1
	end
	if eenabled < 1 then
		eenabled = eenabled +0.01
	else
		eenabled = 1
	end
	if e2enabled < 1 and imbued == false then
		e2enabled = e2enabled +0.01 *0.5
	elseif e2enabled > 1 and imbued == false then
		e2enabled = 1
	elseif e2enabled < 0 and imbued == false then
		e2enabled = 0
	elseif e2enabled < 0 and imbued == true then
		e2enabled = 0
		imbued = false
	elseif e2enabled <= 1 and imbued == true then
		e2enabled = e2enabled -0.01 *0.1
	end
	if venabled < 1 and twohanded == false then
		venabled = venabled +0.01 *0.2
	elseif venabled > 1 and twohanded == false then
		venabled = 1
	elseif venabled > 0 and twohanded == true then
		venabled = venabled -0.01 *0.3
	elseif venabled < 0 and twohanded == true then
		repeat Rwait() until enabled == true
		venabled = 0
		enabled = false
		spawn(function()
			while twohanded == true do
				Rwait()
				if twohanded == false then return end
				legangle = (legangle % 100) +leganglespeed/10
				if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude < 2 then
					lerp(WLH,WLH.C0,LHC0,legspeed)
					lerp(WRH,WRH.C0,RHC0,legspeed)
				elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
					lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
					lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
				end
			end
		end)
		ExitTwoHandedMode()
		Human.WalkSpeed = 16
		twohanded = false
		enabled = true
	end
	if z2enabled < 1 then
		z2enabled = z2enabled +0.01 *0.105
	else
		z2enabled = 1
	end
	if x2enabled < 1 then
		x2enabled = x2enabled +0.01 *0.1
	else
		x2enabled = 1
	end
	if c2enabled < 1 then
		c2enabled = c2enabled +0.01 *0.075
	else
		c2enabled = 1
	end
	if twohanded == false then
		skill1text.Text = "[Z] \n Constant Slashes"
		skill2text.Text = "[X] \n Lucerne Slam"
		skill3text.Text = "[C] \n Lucerne Spins"
		skill4text.Text = "[V] \n [Toggle] \n Two-Handed mode"
		skill5text.Text = "[E] \n Smack with Gun"
		skill1img.Size = UDim2.new(zenabled,0,1,0)
		skill2img.Size = UDim2.new(xenabled,0,1,0)
		skill3img.Size = UDim2.new(cenabled,0,1,0)
		skill4img.Size = UDim2.new(venabled,0,1,0)
		skill5img.Size = UDim2.new(eenabled,0,1,0)
	elseif twohanded == true then
		skill1text.Text = "[Z] \n Extreme Slam"
		skill2text.Text = "[X] \n Dash"
		skill3text.Text = "[C] \n Extreme Stomp"
		skill4text.Text = "[V] \n [Toggle] \n Two-Handed mode"
		skill5text.Text = "[E] \n Imbue"
		skill1img.Size = UDim2.new(z2enabled,0,1,0)
		skill2img.Size = UDim2.new(x2enabled,0,1,0)
		skill3img.Size = UDim2.new(c2enabled,0,1,0)
		skill4img.Size = UDim2.new(venabled,0,1,0)
		skill5img.Size = UDim2.new(e2enabled,0,1,0)
	end
	if on == true then
		angle = (angle % 100) +anglespeed/10
		armangle = (armangle % 100) +armanglespeed/10
		legangle = (legangle % 100) +leganglespeed/10
		if action == "Idle" and enabled == true and surface ~= nil and aiming == false and twohanded == false then
			lerp(WLS,WLS.C0,LSC0 *CFrame.new(0,math.sin(angle*0.25)*0.05,0) *CFrame.Angles(math.pi/2,math.cos(armangle*0.25)*0.05,-math.pi/3),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.new(0,math.sin(angle*0.25)*0.05,0) *CFrame.Angles(math.pi/10+math.sin(armangle*0.25)*0.05,0,math.pi/10),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0,0.2) *CFrame.Angles(-math.pi/10,0,math.pi/10),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0,0.1) *CFrame.Angles(0,-math.pi/8,0),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(0,0,-math.pi/8),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.sin(angle*0.25)*0.05,0,math.pi/8),speed)
			lerp(HW,HW.C0,hc0 *CFrame.new(0,-0.4,0) *CFrame.Angles(math.pi/3,0,0),speed)
			lerp(GHW,GHW.C0,ghc0,speed)
		elseif action == "Idle" and enabled == true and surface ~= nil and aiming == true and twohanded == false then
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,-math.pi/3),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/2,-turnpoint,math.pi/2),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.pi/8,0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(-math.pi/8,0,0),legspeed)
			lerp(WRJ,WRJ.C0,cf*RJC0,speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/2) *CFrame.Angles(turnpoint*0.4,0,0),speed)
			lerp(HW,HW.C0,hc0 *CFrame.new(0,-0.4,0) *CFrame.Angles(math.pi/3,0,0),speed)
			lerp(GHW,GHW.C0,ghc0,speed)
		elseif action == "Idle" and enabled == true and surface ~= nil and aiming == false and twohanded == true then
			lerp(WLS,WLS.C0,LSC0 *CFrame.new(0.5,-0.5-math.sin(armangle*0.25)*0.1,-0.5) *CFrame.Angles(math.pi/2,math.pi/3,math.pi/4),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.5,0.1-math.sin(armangle*0.25)*0.1,-0.3) *CFrame.Angles(math.pi/2,math.pi/3,-math.pi/8),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(-math.pi/8,0,0),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(-math.pi/8,0,0),legspeed)
			lerp(WRJ,WRJ.C0,RJC0,speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.sin(angle*0.25)*0.1,0,0),speed)
			lerp(HW,HW.C0,hc0,speed)
			lerp(GHW,GHW.C0,CFrame.new(1,-1,0),speed)
		end
		if action == "Walk" and enabled == true and surface ~= nil and aiming == false and twohanded == false then
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/8.3+math.cos(armangle*Human.WalkSpeed/16*0.75),math.cos(armangle*Human.WalkSpeed/16*0.75)*0.5*Human.WalkSpeed/16,math.cos(armangle*Human.WalkSpeed/16*0.75)*0.5*Human.WalkSpeed/16),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/9-math.cos(armangle*Human.WalkSpeed/16*0.75)*1.7,math.pi/6,math.cos(armangle*Human.WalkSpeed/16*0.75)*0.5*Human.WalkSpeed/16),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(0,0.1+math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0,0.1-math.sin(legangle*Human.WalkSpeed/16*0.75)*0.3,0) *CFrame.Angles(0,0,-math.pi/12+math.asin(math.cos(legangle*Human.WalkSpeed/16*0.75))),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(math.pi/16,0,0),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0+math.sin(angle*Human.WalkSpeed/16)*0.1,0,0),speed)
			lerp(HW,HW.C0,hc0,speed)
			lerp(GHW,GHW.C0,ghc0,speed)
		elseif action == "Walk" and enabled == true and surface ~= nil and aiming == true and twohanded == false then
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,-math.pi/3),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(math.pi/2,-turnpoint,math.pi/2),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.2,0.1+math.sin(legangle*Human.WalkSpeed/16)*0.3*Human.WalkSpeed/16,-0.5) *CFrame.Angles(0,-math.pi/2,math.asin(math.cos(legangle*Human.WalkSpeed/16)*Human.WalkSpeed/16)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(-0.2,0.1-math.sin(legangle*Human.WalkSpeed/16)*0.3*Human.WalkSpeed/16,-0.5) *CFrame.Angles(0,-math.pi/2,math.asin(math.cos(legangle*Human.WalkSpeed/16)*Human.WalkSpeed/16)),legspeed)
			lerp(WRJ,WRJ.C0,cf*RJC0,speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/2) *CFrame.Angles(turnpoint*0.4,0,0),speed)
			lerp(HW,HW.C0,hc0 *CFrame.new(0,-0.4,0) *CFrame.Angles(math.pi/3,0,0),speed)
			lerp(GHW,GHW.C0,ghc0,speed)
		elseif action == "Walk" and enabled == true and surface ~= nil and aiming == false and twohanded == true then
			lerp(WLS,WLS.C0,LSC0 *CFrame.new(0.5,-0.5-math.cos(armangle*Human.WalkSpeed/12)*0.2*Human.WalkSpeed/16,-0.5) *CFrame.Angles(math.pi/2,math.pi/3,math.pi/4),armspeed)
			lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.5,0.1-math.cos(armangle*Human.WalkSpeed/12)*0.2*Human.WalkSpeed/16,-0.3) *CFrame.Angles(math.pi/2,math.pi/3,-math.pi/8),armspeed)
			lerp(WLH,WLH.C0,LHC0 *CFrame.new(-0.2,0.1+math.sin(legangle*Human.WalkSpeed/16)*0.3*Human.WalkSpeed/16,-0.5) *CFrame.Angles(0,-math.pi/2,math.asin(math.cos(legangle*Human.WalkSpeed/16)*Human.WalkSpeed/16)),legspeed)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(-0.2,0.1-math.sin(legangle*Human.WalkSpeed/16)*0.3*Human.WalkSpeed/16,-0.5) *CFrame.Angles(0,-math.pi/2,math.asin(math.cos(legangle*Human.WalkSpeed/16)*Human.WalkSpeed/16)),legspeed)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.new(0,0,math.cos(angle*Human.WalkSpeed/12)*0.3) *CFrame.Angles(0,0,math.pi/2),speed)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(0,0,-math.pi/2) *CFrame.Angles(math.pi/10,0,0),speed)
			lerp(HW,HW.C0,hc0,speed)
			lerp(GHW,GHW.C0,CFrame.new(1,-1,0),speed)
		end
		if HM.Velocity.Y >= 5 and enabled == true and surface == nil and twohanded == false then
			action = "Jump"
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(math.pi/2,0,-math.pi/3),armspeed*1.5)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/5,0,0),armspeed*1.5)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,-math.pi/10),legspeed*1.5)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.5,0.5,0) *CFrame.Angles(0,0,-math.pi/8),legspeed*1.5)
			lerp(WRJ,WRJ.C0,RJC0,speed*1.5)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/8,0,0),speed*1.5)
			lerp(HW,HW.C0,hc0 *CFrame.new(0,-1,0) *CFrame.Angles(math.pi/2.5,0,0),speed*1.5)
			lerp(GHW,GHW.C0,ghc0,speed*1.5)
			Rwait()
		elseif HM.Velocity.Y >= 5 and enabled == true and surface == nil and twohanded == true then
			action = "Jump"
			lerp(WLS,WLS.C0,LSC0 *CFrame.new(0.5,-0.5-math.sin(armangle*0.25)*0.1,-0.5) *CFrame.Angles(math.pi/2,math.pi/3,math.pi/4),armspeed*1.5)
			lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.5,0.1-math.sin(armangle*0.25)*0.1,-0.3) *CFrame.Angles(math.pi/2,math.pi/3,-math.pi/8),armspeed*1.5)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,-math.pi/10),legspeed*1.5)
			lerp(WRH,WRH.C0,RHC0 *CFrame.new(0.5,0.5,0) *CFrame.Angles(0,0,-math.pi/8),legspeed*1.5)
			lerp(WRJ,WRJ.C0,RJC0,speed*1.5)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/8,0,0),speed*1.5)
			lerp(HW,HW.C0,hc0,speed*1.5)
			lerp(GHW,GHW.C0,ghc0 *CFrame.new(1,0,0),speed*1.5)
			Rwait()
		end
		if HM.Velocity.Y <= -5 and enabled == true and surface == nil and twohanded == false then
			action = "Fall"
			lerp(WLS,WLS.C0,LSC0 *CFrame.Angles(-math.pi/3,0,0),armspeed*1.5)
			lerp(WRS,WRS.C0,RSC0 *CFrame.Angles(-math.pi/5,0,0),armspeed*1.5)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.pi/10),legspeed*1.5)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.pi/4),legspeed*1.5)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(math.pi/8,0,0),speed*1.5)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(-math.pi/12,0,0),speed*1.5)
			lerp(HW,HW.C0,hc0 *CFrame.new(0,-1,0) *CFrame.Angles(math.pi/2.5,0,0),speed*1.5)
			lerp(GHW,GHW.C0,ghc0,speed*1.5)
			Rwait()
		elseif HM.Velocity.Y <= -5 and enabled == true and surface == nil and twohanded == true then
			action = "Fall"
			lerp(WLS,WLS.C0,LSC0 *CFrame.new(0.5,-0.5-math.sin(armangle*0.25)*0.1,-0.5) *CFrame.Angles(math.pi/1.8,math.pi/3,math.pi/4),armspeed*1.5)
			lerp(WRS,WRS.C0,RSC0 *CFrame.new(-0.5,0.1-math.sin(armangle*0.25)*0.1,-0.15) *CFrame.Angles(math.pi/1.8,math.pi/3,-math.pi/8),armspeed*1.5)
			lerp(WLH,WLH.C0,LHC0 *CFrame.Angles(0,0,math.pi/5),legspeed*1.5)
			lerp(WRH,WRH.C0,RHC0 *CFrame.Angles(0,0,math.pi/5),legspeed*1.5)
			lerp(WRJ,WRJ.C0,RJC0 *CFrame.Angles(math.pi/8,0,0),speed*1.5)
			lerp(Neck,Neck.C0,NC0 *CFrame.Angles(math.pi/8,0,0),speed*1.5)
			lerp(HW,HW.C0,hc0,speed*1.5)
			lerp(GHW,GHW.C0,ghc0 *CFrame.new(1,0,0),speed*1.5)
			Rwait()
		end
		if Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude <= 2 then
			action = "Idle"
		elseif Vector3.new(HM.Velocity.X,0,HM.Velocity.Z).magnitude >= 2 then
			action = "Walk"
		end
	end
	Rwait()
end