--made with love by nosyliam<3
pcall(function()
--esp(av(),dw()) (curtime,reqtime)
pool = {}
pool.new = function()
	local base = {}
	base.global = {}
	base.class = function(name) base[name] = {} end
	base.add = function(class, name, func) base[class][name] = func end
	base.define = function(class, name, val) base[class][name] = val end
	base.get = function(class, name) return base[class][name] end
	base.call = function(class, name) base[class][name]() end
	return base
end
local print = function(k) print("[T0PK3K dbg]: ".. k) end

--- init base ---

local kek = {}
kek.pool = pool.new(); pool = kek.pool; player = game.Players.LocalPlayer;


CreateObject = function(properties)
	local object = Instance.new(properties.Class)
	for i, v in pairs(properties) do
		pcall(function()
			if v ~= "Class" then
				object[i] = v
			end
		end)
	end	
	return object
end


-- t.menus will now define pre-created objects instead of just '0xf'
kek.menus = {
	["Main"] = {},
	["LocalPlayer"] = {Links = {}, Auto = {}, ReqBar = false},
	["Server"] = {Links = {"Destruction"}, Auto = {}, ReqBar = false},
	["Scripts"] = {Links = {}, Auto = {
		CreateObject {
			Class = "TextBox",
			Name = "search",
			BackgroundColor3 = Color3.new(14/255, 60/255, 66/255),
			BorderColor3 = Color3.new(3/255, 53/255, 49/255),
			Position = UDim2.new(0, 13, 0, 10),
			Size = UDim2.new(1, -26, 0, 27),
			Font = Enum.Font.SourceSans,
			FontSize = Enum.FontSize.Size14,
			Text = "Search for a script",
			TextColor3 = Color3.new(204/255, 204/255, 204/255)
		},
		CreateObject {
			Class = "ScrollingFrame",
			Name = "list",
			BackgroundColor3 = Color3.new(3/255, 39/255, 40/255),
			BorderSizePixel = 0,
			Position = UDim2.new(0, 13, 0, 50),
			Size = UDim2.new(1, -26, 1, -60),
			CanvasSize = UDim2.new(0, 0, 0, 0)
		},
	}, ReqBar = false},
	["Players"] = {Links = {}, Auto = {}, ReqBar = true},
	["Miscellaneous"] = {Links = {}, Auto = {}, ReqBar = false},
	["Explorer"] = {Links = {}, Auto = {}, ReqBar = false, DoNotInclude = true},
	["Destruction"] = {Links = {}, Auto = {}, ReqBar = false, DoNotInclude = true},
	["Music"] = {Links = {}, Auto = {}, ReqBar = false, DoNotInclude = true},
	["Gear"] = {Links = {}, Auto = {}, ReqBar = true, DoNotInclude = true},
	["FilterMyAss"] = {Links = {}, Auto = {}, ReqBar = true, DoNotInclude = true},
	["Memes"] = {Links = {}, Auto = {}, ReqBar = true, DoNotInclude = true},
	["Hats"] = {Links = {}, Auto = {}, ReqBar = true, DoNotInclude = true},
	["Credits"] = {Links = {}, Auto = {}, ReqBar = false, DoNotInclude = true},
	["Chatbox"] = {Links = {}, Auto = {}, ReqBar = false, DoNotInclude = true}
}


--- global definitions ---
pool.define("global","gui", game:GetObjects("rbxassetid://388041033")[1]); local gui = pool.get("global", "gui");

pool.define("global","root", pool.get("global", "gui").root); pool.get("global", "root").ClipsDescendants = true;
pool.define("global","main", pool.get("global", "root").main)
pool.define("global","title", pool.get("global", "root").topbar.title)
pool.define("global","NoTab_InnerSize",UDim2.new(1,-10,1,-60))
pool.define("global","NoTab_InnerPos",UDim2.new(0,5,0,56))
pool.define("global","StateRunning",false)
pool.define("global","TabTemplate",pool.get("global", "gui").root.template.tabframe.tabtemp)
pool.define("global","WindowTemplate",pool.get("global","gui").root.template)
pool.define("global","CurrentPlayers",{})
pool.define("global","runstate",false)

local uk = pool.get('global', 'gui'):Clone()
pool.define("global", "gui", nil)
pool.define("global", "gui", uk)

pool.get("global", "gui").root.main.blabel.Text = "Elysian Edition"

pool.define("global","root", pool.get("global", "gui").root)
pool.define("global","main", pool.get("global", "root").main)
pool.define("global","title", pool.get("global", "root").topbar.title)
pool.define("global","NoTab_InnerSize",UDim2.new(1,-10,1,-60))
pool.define("global","NoTab_InnerPos",UDim2.new(0,5,0,56))
pool.define("global","StateRunning",false)
pool.define("global","TabTemplate",pool.get("global", "gui").root.template.tabframe.tabtemp)
pool.define("global","WindowTemplate",pool.get("global","gui").root.template)
pool.define("global","CurrentPlayers",{})

--- utility (general utility) --
pool.class("utility")
pool.utility.IterateObject = function(object, class, func)
	local function localiter(o)
		for i, v in pairs(o:GetChildren()) do
			if v:IsA(class) then
				func(v)
			end
			localiter(v)
		end
	end
	localiter(object)
end
pool.utility.GetObject = function(name)
	local function localiter(o)
		for i, v in pairs(o:GetChildren()) do
			if v.Name ==  name then return v end
			localiter(v)
		end
	end
	return localiter(gui)
end print("LOAD")
pool.utility.CreateObject = function(properties)
	local object = Instance.new(properties.Class)
	for i, v in pairs(properties) do
		pcall(function()
			if v ~= "Class" then
				object[i] = v
			end
		end)
	end	
	return object
end
pool.utility.SetProperties = function(obj, properties)
	for i, v in pairs(properties) do
		pcall(function()
			obj[i] = v
		end)
	end
end
pool.utility.CheckDependancies = function(obj, deps)
	for i, v in pairs(deps) do
		if not obj[v] then
			return false
		end
	end
	return true
end
pool.utility.R15 = function()
rcode=[[local function Init()
	wait()
	local function ConChar(P)
		Character = P.Character
			
			local R15Model = Instance.new("Model")
			R15Model.Name = "R15Model"
			R15Model.Parent = Character
			
			local function CreateLimb(Name,Color,Size,Transparency,ConnectToLimb,MotorName,C0,C1,MeshId)
				local Part = Instance.new("Part")
				Part.FormFactor = "Custom"
				Part.Size = Size
				Part.BrickColor = Color
				Part.CanCollide = false
				Part.Name = Name
				Part.Transparency = (Transparency == 0.001 and 0 or Transparency)
				Part.TopSurface = "Smooth"
				Part.BottomSurface = "Smooth"
				
				local Motor = Instance.new("Motor6D")
				Motor.C0 = C0
				Motor.C1 = C1
				Motor.Part0 = ConnectToLimb
				Motor.Part1 = Part
				Motor.Name = MotorName
				Motor.MaxVelocity = 0.1
				Motor.Parent = ConnectToLimb
				
				if MeshId then
					local Mesh = Instance.new("SpecialMesh")
					Mesh.MeshType = "FileMesh"
					Mesh.MeshId = MeshId
					Mesh.Scale = Vector3.new(0.99,0.99,0.99)
					Mesh.Parent = Part
				end
				
				if MeshId and Transparency == 0.001 then
					local ShirtTexturePart = Instance.new("Part")
					ShirtTexturePart.FormFactor = "Custom"
					ShirtTexturePart.Size = Size
					ShirtTexturePart.BrickColor = Color
					ShirtTexturePart.CanCollide = false
					ShirtTexturePart.Name = "ShirtTexturePart"
					ShirtTexturePart.Transparency = Transparency
					ShirtTexturePart.TopSurface = "Smooth"
					ShirtTexturePart.BottomSurface = "Smooth"
					
					local Mesh = Instance.new("SpecialMesh")
					Mesh.MeshType = "FileMesh"
					Mesh.MeshId = MeshId
					Mesh.Parent = ShirtTexturePart
					
					local Weld = Instance.new("Weld")
					Weld.Part0 = Part
					Weld.Part1 = ShirtTexturePart
					Weld.Parent = ShirtTexturePart
					
					ShirtTexturePart.Parent = Part
				end
				Part.Parent = R15Model
				return Part
			end
			
			
			local HumanoidRootPart = CreateLimb("HumanoidRootPart",BrickColor.new("Medium stone grey"),Vector3.new(1,1,1),1,Character.HumanoidRootPart,"RootConnector",CFrame.new(),CFrame.new(0,0.7,0))
			local LowerTorso = CreateLimb("LowerTorso",BrickColor.new("Bright blue"),Vector3.new(1,1,1),0.001,HumanoidRootPart,"Root",CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"rbxassetid://387941715")
			local UpperTorso = CreateLimb("UpperTorso",BrickColor.new("Bright blue"),Vector3.new(1,1,1),0.001,LowerTorso,"Waist",CFrame.new(0, 0.404105991, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"rbxassetid://387941468")
			local Head = CreateLimb("Head",BrickColor.new("Bright yellow"),Vector3.new(1,1,1),0,UpperTorso,"Neck",CFrame.new(0, 1.26949596, 0.0428609997, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.635110021, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"rbxassetid://387941905")
			local LeftUpperArm = CreateLimb("LeftUpperArm",BrickColor.new("Bright yellow"),Vector3.new(1, 0.672, 1),0.001,UpperTorso,"LeftShoulder",CFrame.new(-1.50177097, 0.924546003, 0, 1, 0, -0, 0, 0.999044001, 0.0437170006, 0, -0.0437170006, 0.999044001),CFrame.new(0, 0.336115986, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"rbxassetid://387938468")
			local LeftLowerArm = CreateLimb("LeftLowerArm",BrickColor.new("Bright yellow"),Vector3.new(1, 0.703, 1),0.001,LeftUpperArm,"LeftElbow",CFrame.new(0, -0.336115986, 0, 1, 0, 0, 0, 0.999044001, -0.0437170006, 0, 0.0437170006, 0.999044001),CFrame.new(0, 0.351512015, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"rbxassetid://387938971")
			local LeftHand = CreateLimb("LeftHand",BrickColor.new("Bright yellow"),Vector3.new(1, 0.352, 1),0.001,LeftLowerArm,"LeftWrist",CFrame.new(0, -0.351512015, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.175756007, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"rbxassetid://387939233")
			local RightUpperArm = CreateLimb("RightUpperArm",BrickColor.new("Bright yellow"),Vector3.new(1, 0.671, 1),0.001,UpperTorso,"RightShoulder",CFrame.new(1.50049305, 0.923726022, 0, 1, 0, -0, 0, 0.999041617, 0.0437709838, 0, -0.0437709838, 0.999041617),CFrame.new(0, 0.335705996, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"rbxassetid://387940113")
			local RightLowerArm = CreateLimb("RightLowerArm",BrickColor.new("Bright yellow"),Vector3.new(1, 0.703, 1),0.001,RightUpperArm,"RightElbow",CFrame.new(0, -0.335705996, 0, 1, 0, 0, 0, 0.999041617, -0.0437709838, 0, 0.0437709838, 0.999041617),CFrame.new(0, 0.351512015, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"rbxassetid://387940356")
			local RightHand = CreateLimb("RightHand",BrickColor.new("Bright yellow"),Vector3.new(1, 0.352, 1),0.001,RightLowerArm,"RightWrist",CFrame.new(0, -0.351512015, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.175756007, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"rbxassetid://387940548")
			local LeftUpperLeg = CreateLimb("LeftUpperLeg",BrickColor.new("Br. yellowish green"),Vector3.new(1, 0.775, 1),0.001,LowerTorso,"LeftHip",CFrame.new(-0.457044005, -0.498115987, 0, 1, 0, -0, 0, 1, 0.000100999998, 0, -0.000100999998, 1),CFrame.new(0, 0.387418985, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"rbxassetid://387939645")
			local LeftLowerLeg = CreateLimb("LeftLowerLeg",BrickColor.new("Br. yellowish green"),Vector3.new(1, 0.829, 1),0.001,LeftUpperLeg,"LeftKnee",CFrame.new(0, -0.387418985, 0, 1, 9.95820074e-007, 9.13360125e-008, -9.99999997e-007, 0.995820105, 0.0913360119, 0, -0.0913360119, 0.995820105),CFrame.new(0, 0.414570987, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"rbxassetid://387939489")
			local LeftFoot = CreateLimb("LeftFoot",BrickColor.new("Br. yellowish green"),Vector3.new(1, 0.415, 1),0.001,LeftLowerLeg,"LeftAnkle",CFrame.new(0, -0.414570987, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.207286, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"rbxassetid://387939912")
			local RightUpperLeg = CreateLimb("RightUpperLeg",BrickColor.new("Br. yellowish green"),Vector3.new(1, 0.775, 1),0.001,LowerTorso,"RightHip",CFrame.new(0.451141, -0.498115987, 0, 1, 0, -0, 0, 1, 0.000100999998, 0, -0.000100999998, 1),CFrame.new(0, 0.387418985, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"rbxassetid://387940976")
			local RightLowerLeg = CreateLimb("RightLowerLeg",BrickColor.new("Br. yellowish green"),Vector3.new(1, 0.829, 1),0.001,RightUpperLeg,"RightKnee",CFrame.new(0, -0.387418985, 0, 1, 0, -0, 0, 0.995820105, 0.0913360119, 0, -0.0913360119, 0.995820105),CFrame.new(0, 0.414570987, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"rbxassetid://387940802")
			local RightFoot = CreateLimb("RightFoot",BrickColor.new("Br. yellowish green"),Vector3.new(1, 0.415, 1),0.001,RightLowerLeg,"RightAnkle",CFrame.new(0, -0.414570987, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.207286, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"rbxassetid://387941196")
			
			--if Character:WaitForChild("Head"):WaitForChild("Mesh").MeshId ~= "" then
			--	Head.MeshId = Character.Head.Mesh.MeshId
			--end
			
			Character:WaitForChild("Animate").Disabled = false
			local Anim = game:GetObjects("rbxassetid://401967017")[1]; print("aobj", tostring(Anim))
			for i, v in pairs(Anim:GetChildren()) do
				v.Parent = script
			end
			script.Parent = Character
			
			local function Clear(Name,Alternative,ColorParts)
				local Part = Character:WaitForChild(Name)
				Part.Transparency = (Name == "Head" and 0.99 or 1)
				local function ChildAdded(Ins)
					delay(0.05,function()
						if Ins.Name == "face" then
							if Alternative:FindFirstChild("face") then Alternative:FindFirstChild("face"):Destroy() end
							Ins.Parent = Alternative
						elseif Ins:IsA("Motor6D") and string.sub(Ins.Name,1,5) ~= "Fake_" then
							Ins.Name = "Fake_"..Ins.Name
						elseif Ins.Name == "HeadWeld" then
							delay(0.05,function()
								Ins.Parent = Head
								Ins.Part0 = Head
								Ins.C1 = CFrame.new(0,0,0.05) * Ins.C1
							end)
						elseif not Ins:IsA("Weld") then
							Ins:Destroy()
						end
					end)
				end
				for _,Sub in pairs(Part:GetChildren()) do
					ChildAdded(Sub)
				end
				Part.ChildAdded:connect(ChildAdded)
				
				local function Color()
					for _,Sub in pairs(ColorParts) do
						Sub.BrickColor = Part.BrickColor
						local TexturePart = Sub:FindFirstChild("ShirtTexturePart")
						if TexturePart then
							TexturePart.BrickColor = Part.BrickColor
						end
					end
				end
				Color()
				Part.Changed:connect(Color)
			end
			
			Clear("HumanoidRootPart",HumanoidRootPart,{HumanoidRootPart})
			Clear("Head",Head,{Head})
			Clear("Torso",nil,{LowerTorso,UpperTorso})
			Clear("Left Arm",nil,{LeftLowerArm,LeftUpperArm,LeftHand})
			Clear("Right Arm",nil,{RightLowerArm,RightUpperArm,RightHand})
			Clear("Left Leg",nil,{LeftLowerLeg,LeftUpperLeg,LeftFoot})
			Clear("Right Leg",nil,{RightLowerLeg,RightUpperLeg,RightFoot})
			
			local ShirtUsed = false
			local function ChildAdded(Ins)
				if Ins:IsA("Hat") and string.sub(Ins.Name,1,7) ~= "Scaled_" then
					delay(0.05,function()
						local Mesh = Ins:WaitForChild("Handle"):WaitForChild("Mesh")
						Ins.AttachmentPos = Ins.AttachmentPos 
						Mesh.Scale = Mesh.Scale
						Ins.Name = "Scaled_"..Ins.Name
					end)
				elseif Ins:IsA("Shirt") then
					ShirtUsed = true
					LowerTorso.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
					UpperTorso.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
					LeftLowerArm.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
					LeftUpperArm.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
					LeftHand.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
					RightLowerArm.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
					RightUpperArm.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
					RightHand.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
				elseif Ins:IsA("Pants") then
					LeftUpperLeg.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
					LeftLowerLeg.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
					LeftFoot.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
					RightUpperLeg.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
					RightLowerLeg.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
					RightFoot.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
					if LowerTorso.ShirtTexturePart.Mesh.TextureId == "" then
						LowerTorso.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
						UpperTorso.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
					end
				end
			end
			
			for _,Sub in pairs(Character:GetChildren()) do
				ChildAdded(Sub)
			end
			Character.ChildAdded:connect(ChildAdded)
			loadstring(Anim.Source)()
		end
	ConChar(game:service'Players'.LocalPlayer)
end

Init()]]
spawn(function() loadstring(rcode)() end)
end
pool.utility.LittleFriend = function(p)
		-- thanks rias<3
	plr=p.Character
	Shaft=Instance.new("Part", plr)
	Shaft.Name='Shaft'
	Shaft.Size=Vector3.new(1, 2.5, 1)
	Shaft.TopSurface=0
	Shaft.BottomSurface=0
	Shaft.CanCollide=true
	Cyln=Instance.new("CylinderMesh", Shaft)
	Cyln.Scale=Vector3.new(0.5,0.7,0.5)
	Instance.new("Weld", plr)
	plr.Weld.Part0=plr.Torso
	plr.Weld.Part1=plr.Shaft 
	plr.Weld.C0=CFrame.new(0,-0.35,-0.9)*CFrame.fromEulerAnglesXYZ(2.2,0,0) 
	Shaft.BrickColor=BrickColor.new("Pastel brown")
	Tip=Instance.new("Part", plr)
	Tip.Name='Tip'
	Tip.TopSurface=0
	Tip.BottomSurface=0
	Tip.Size=Vector3.new(1, 1, 1)
	Tip.CanCollide=true
	Tip.Touched:connect(function(prt) if prt.Parent~=player then spawn(function() for i=1, 5 do local pert=Instance.new("Part", player) pert.CFrame=CFrame.new(prt.Position) pert.CanCollide=true local mesh=Instance.new("BlockMesh", pert) mesh.Scale=Vector3.new(0.2,0.2,0.2) pert.BrickColor=BrickColor.new("White") end end) end end)
	Cyln2=Instance.new("SpecialMesh", Tip)
	Cyln2.MeshType='Sphere'
	Cyln2.Scale=Vector3.new(0.6,0.6,0.6)
	Instance.new("Weld", plr).Name='Weld2'
	plr.Weld2.Part0=plr.Shaft
	plr.Weld2.Part1=plr.Tip 
	plr.Weld2.C0=CFrame.new(0,-.9,0)
	Tip.BrickColor=BrickColor.new("Pink")
	-----
	Ball1=Instance.new("Part", plr)
	Ball1.Name='Ball1'
	Ball1.Size=Vector3.new(1, 1, 1)
	Ball1.TopSurface=0
	Ball1.BottomSurface=0
	Cyln3=Instance.new("SpecialMesh", Ball1)
	Cyln3.MeshType='Sphere'
	Cyln3.Scale=Vector3.new(0.4,0.4,0.4)
	Instance.new("Weld", plr).Name='Weld3'
	plr.Weld3.Part0=plr.Shaft
	plr.Weld3.Part1=plr.Ball1 
	plr.Weld3.C0=CFrame.new(0.225,.4,0.2)
	Ball1.BrickColor=BrickColor.new("Pastel brown")
	-----
	Ball2=Instance.new("Part", plr)
	Ball2.Name='Ball2'
	Ball2.Size=Vector3.new(1, 1, 1)
	Ball2.TopSurface=0
	Ball2.BottomSurface=0
	Cyln3=Instance.new("SpecialMesh", Ball2)
	Cyln3.MeshType='Sphere'
	Cyln3.Scale=Vector3.new(0.4,0.4,0.4)
	Instance.new("Weld", plr).Name='Weld4'
	plr.Weld4.Part0=plr.Shaft
	plr.Weld4.Part1=plr.Ball2 
	plr.Weld4.C0=CFrame.new(-0.225,.4,0.2)
	Ball2.BrickColor=BrickColor.new("Pastel brown")
end
pool.utility.ScalePlayer = function(p, size)
	-- omfg thanks var
	local pchar = p.Character
		local function scale(chr,scl)
		
			for _,v in pairs(pchar:GetChildren()) do
				if v:IsA("Hat") then
					v:Clone()
					v.Parent = game.Lighting
				end
			end
				
		    local Head = chr['Head']
		    local Torso = chr['Torso']
		    local LA = chr['Left Arm']
		    local RA = chr['Right Arm']
		    local LL = chr['Left Leg']
		    local RL = chr['Right Leg']
		    local HRP = chr['HumanoidRootPart']
		
		    wait(0.1)
		   
		    Head.formFactor = 3
		    Torso.formFactor = 3
		    LA.formFactor = 3
		    RA.formFactor = 3
		    LL.formFactor = 3
		    RL.formFactor = 3
		    HRP.formFactor = 3
		    
		    Head.Size = Vector3.new(scl * 2, scl, scl)
		    Torso.Size = Vector3.new(scl * 2, scl * 2, scl)
		    LA.Size = Vector3.new(scl, scl * 2, scl)
		    RA.Size = Vector3.new(scl, scl * 2, scl)
		    LL.Size = Vector3.new(scl, scl * 2, scl)
		    RL.Size = Vector3.new(scl, scl * 2, scl)
		    HRP.Size = Vector3.new(scl * 2, scl * 2, scl)
		    
		    local Motor1 = Instance.new('Motor6D', Torso)
		    Motor1.Part0 = Torso
		    Motor1.Part1 = Head
	    	Motor1.C0 = CFrame.new(0, 1 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
	    	Motor1.C1 = CFrame.new(0, -0.5 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
	    	Motor1.Name = "Neck"
				    
	    	local Motor2 = Instance.new('Motor6D', Torso)
	    	Motor2.Part0 = Torso
	    	Motor2.Part1 = LA
	    	Motor2.C0 = CFrame.new(-1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor2.C1 = CFrame.new(0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor2.Name = "Left Shoulder"
	    	
	    	local Motor3 = Instance.new('Motor6D', Torso)
	   		Motor3.Part0 = Torso
	    	Motor3.Part1 = RA
	    	Motor3.C0 = CFrame.new(1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor3.C1 = CFrame.new(-0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor3.Name = "Right Shoulder"
	    	
	    	local Motor4 = Instance.new('Motor6D', Torso)
	    	Motor4.Part0 = Torso
	    	Motor4.Part1 = LL
	    	Motor4.C0 = CFrame.new(-1 * scl, -1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor4.C1 = CFrame.new(-0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
	    	Motor4.Name = "Left Hip"
	    	
	    	local Motor5 = Instance.new('Motor6D', Torso)
	    	Motor5.Part0 = Torso
	    	Motor5.Part1 = RL
	    	Motor5.C0 = CFrame.new(1 * scl, -1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor5.C1 = CFrame.new(0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
	    	Motor5.Name = "Right Hip"
	    	
	    	local Motor6 = Instance.new('Motor6D', HRP)
	    	Motor6.Part0 = HRP
	    	Motor6.Part1 = Torso
	    	Motor6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
	    	Motor6.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
	    	    
		end
		
		scale(pchar, size)
	
		for _,v in pairs(game.Lighting:GetChildren()) do
			if v:IsA("Hat") then
				v.Parent = pchar
			end
		end
end
pool.utility.SpawnState = function(state)
	pool.global.runstate = true;
	spawn(function()
		repeat
		ypcall(function()
			wait(0)
			player.Character.Humanoid:ChangeState(state)
		end)
		until pool.global.runstate == false
	end)
end
pool.utility.DoFE = function(func)
	pool.global.runstate = true;
	spawn(function()
		repeat
		ypcall(function()
			wait(0)
			func()
		end)
		until pool.global.runstate == false
	end)
end
pool.utility.meme=function(id,Char)
	-- ohgal admin
	-- dont judge
	if(Char)then
		local Type = id
		local Meme=id
		local BBG_SIZE=Char.Head.Size.X*1.25;
		local STUD_VECTOR_1=Char.Head.Size.Z/4;
		local STUD_VECTOR_2=Char.Head.Size.Z;
		local bbg=Char:FindFirstChild'BBGMEME'or Instance.new('BillboardGui',Char);
			bbg.StudsOffset=Vector3.new(0,STUD_VECTOR_1,STUD_VECTOR_2);
			bbg.Size=UDim2.new(BBG_SIZE,0,BBG_SIZE);
			bbg.Adornee=Char.Head;
			bbg.Name='BBGMEME';
		local img=bbg:FindFirstChild'Meme'or Instance.new('ImageLabel',bbg);
			img.BackgroundTransparency=1;
			img.Image="rbxassetid://"..Meme;
			img.Size=UDim2.new(1,0,1,0)
			img.Name='Meme';
		for i,v in next,Char:children()do
			if(v.className=='Hat')then
				v=v:FindFirstChild'Handle';
				if(v)then
					v.Transparency=0
				end;
			end;
		end;
	end;
end;
pool.utility.GetPlayers = function(str)
	if str == "all" then
		return game.Players:GetPlayers()
	end
	if str == "me" then
		return {game.Players.LocalPlayer}
	end
	if str == "others" then
		local cm = {}
		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				table.insert(cm, v)
			end
		end
		return cm
	end
	local pn = str:gmatch("([^,]+)")
	local pl = {}
	for ln in pn do
		for i, v in pairs(game.Players:GetPlayers()) do
			local nm = (v.Name):lower()
			if string.sub(nm,1,#ln)==(ln):lower() then
				table.insert(pl, v)
			end
		end
	end
	return pl
end
pool.utility.StartFly = function()
local mouse=game.Players.LocalPlayer:GetMouse''
localplayer=game.Players.LocalPlayer
game.Players.LocalPlayer.Character:WaitForChild("Torso")
  local torso = game.Players.LocalPlayer.Character.Torso 
  local flying = true
  local speed=0
  local keys={a=false,d=false,w=false,s=false} 
  local e1
  local e2
  local function start()
   local pos = Instance.new("BodyPosition",torso)
   local gyro = Instance.new("BodyGyro",torso)
   pos.Name="EPIXPOS"
   pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
   pos.position = torso.Position
   gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
   gyro.cframe = torso.CFrame
   repeat
    wait()
    localplayer.Character.Humanoid.PlatformStand=true
    local new=gyro.cframe - gyro.cframe.p + pos.position
    if not keys.w and not keys.s and not keys.a and not keys.d then
     speed=1
    end 
    if keys.w then 
     new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
     speed=speed+0.01
    end
    if keys.s then 
     new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
     speed=speed+0.01
    end
    if keys.d then 
     new = new * CFrame.new(speed,0,0)
     speed=speed+0.01
    end
    if keys.a then 
     new = new * CFrame.new(-speed,0,0)
     speed=speed+0.01
    end
    if speed>5 then
     speed=5
    end
    pos.position=new.p
    if keys.w then
     gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
    elseif keys.s then
     gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
    else
     gyro.cframe = workspace.CurrentCamera.CoordinateFrame
    end
   until flying==false
   if gyro then gyro:Destroy() end
   if pos then pos:Destroy() end
   flying=false
   localplayer.Character.Humanoid.PlatformStand=false
   speed=0
  end
  e1=mouse.KeyDown:connect(function(key)
   if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
   if key=="w" then
    keys.w=true
   elseif key=="s" then
    keys.s=true
   elseif key=="a" then
    keys.a=true
   elseif key=="d" then
    keys.d=true
   elseif key=="z" then
    if flying==true then
     flying=false
    else
     flying=true
     start()
    end
   end
  end)
  e2=mouse.KeyUp:connect(function(key)
   if key=="w" then
    keys.w=false
   elseif key=="s" then
    keys.s=false
   elseif key=="a" then
    keys.a=false
   elseif key=="d" then
    keys.d=false
   end
  end)
  start()
end
--- gui (gui lib) ---
pool.class("gui")
pool.gui.FindListRow = function(n, a)
	if n == 0 then n = 1 end
	if math.fmod(n, a) == 0 then
		n = n - 1
	end
	return math.floor(n / a)
end
pool.gui.GenerateCustomTabs = function(base, tabs, execution, npr)
	for i, v in pairs(tabs) do
		local Virti = i
		local Virto = (function(n) if n < 0 then return 0 end return n end)(Virti - 1)
		local TabTemplate = pool.get("global", "TabTemplate"):Clone()
		pool.utility.SetProperties (TabTemplate, {
			Text = v.text,
			Position = UDim2.new((((1/npr) * math.fmod(Virto, npr))), 2, 0, ((22 * (pool.gui.FindListRow(Virti, npr))) + 2)),
			Size = UDim2.new((1/npr), -2, 0, 20),
			Parent = base,
			Name = "ctab-" .. string.lower(v.text)
		})
		if math.ceil(Virti / npr) == math.ceil(#tabs / npr) then
		    nv = 1/(#tabs - (((pool.gui.FindListRow(Virti, npr)))*npr))
			pool.utility.SetProperties (TabTemplate, {
			Text = v.text,
			Position = UDim2.new(((nv * math.fmod(Virto, npr))), 2, 0, ((22 * (pool.gui.FindListRow(Virti, npr))) + 2)),
			Size = UDim2.new(nv, -2, 0, 20),
			Parent = base,
			Name = "ctab-" .. string.lower(v.text)
		})
		end
		TabTemplate.MouseButton1Down:connect(function()
			execution (v)
		end)
	end
end
pool.gui.GenerateTabs = function(base, tabs, execution)
	local tab_base = base.tabframe
	local inner_base = base.inner
	local pselect_base = base.playerbar
	if not pool.utility.CheckDependancies(base, {"tabframe", "inner", "playerbar"}) then
		return
	end
	for i, v in pairs(tabs) do
		local Virti = i
		local Virto = (function(n) if n < 0 then return 0 end return n end)(Virti - 1)
		local TempTab = pool.get("global", "TabTemplate"):Clone()
		pool.utility.SetProperties (TempTab, {
			Text = v,
			Position = UDim2.new(((0.25 * math.fmod(Virto, 4))), 2, 0, ((22 * (pool.gui.FindListRow(Virti, 4))) + 2)),
			Parent = tab_base,
			Name = "tab-" .. string.lower(v)
		})
		if math.ceil(Virti / 4) == math.ceil(#tabs / 4) then
		    nv = 1/(#tabs - (((pool.gui.FindListRow(Virti, 4)))*4))
			pool.utility.SetProperties (TempTab, {
			Text = v,
			Position = UDim2.new(((nv * math.fmod(Virto, 4))), 2, 0, ((22 * (pool.gui.FindListRow(Virti, 4))) + 2)),
			Size = UDim2.new(nv, -2, 0, 20),
			Parent = tab_base,
			Name = "tab-" .. string.lower(v)
		})
		end
		TempTab.MouseButton1Down:connect(function()
			execution (v)
		end)
	end
	if math.ceil(#tabs / 4)>1 then
		local rem = (math.ceil(#tabs / 4))
		tab_base.Size = UDim2.new(1, -10, 0, ((22 * rem) + 4))
		pselect_base.Position = pselect_base.Position + UDim2.new(0, 0, 0, (22 * (rem-2)))
		inner_base.Size = UDim2.new(1, -10, 1, (-105 + -((rem-1) * 20)))
		inner_base.Position = UDim2.new(0, 5, 0, (85 + ((rem-1) * 20)))
	end
end
pool.gui.GenerateMiscBar = function(name, filltext, extext, height, execdo)
	local main = pool.utility.CreateObject {
		Class = 'Frame',
		Name = 'frame'..name,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -16, 0, height)
	}
	local input = pool.utility.CreateObject {
		Class = 'TextBox',
		Name = 'bar~inp',
		Parent = main,
		BackgroundColor3 = Color3.new(36/255, 64/255, 67/255),
		BackgroundTransparency = 0.3,
		BorderSizePixel = 0,
		Size = UDim2.new(0.666, -5, 1, 0),
		Font = Enum.Font.SourceSans,
		FontSize = Enum.FontSize.Size14,
		Text = filltext,
		TextColor3 = Color3.new(208/255, 208/255, 208/255)
	}
	local exec = pool.utility.CreateObject {
		Class = 'TextButton',
		Name = 'bar~ex',
		Parent = main,
		BackgroundColor3 = Color3.new(47/255, 84/255, 88/255),
		BackgroundTransparency = 0.3,
		BorderSizePixel = 0,
		Size = UDim2.new(0.333, -5, 1, 0),
		Position = UDim2.new(0.666, 5, 0, 0),
		Font = Enum.Font.SourceSansBold,
		FontSize = Enum.FontSize.Size14,
		Text = extext,
		TextColor3 = Color3.new(208/255, 208/255, 208/255)
	}
	exec.MouseButton1Down:connect(function()
		execdo()
	end)
	return main
end
pool.gui.GenerateButtonList = function(base, list, specifications, custom, leavex)
	if custom == nil then
		BaseButton = pool.utility.CreateObject {
			Class = "TextButton",
			BackgroundColor3 = specifications.BackgroundColor,
			BackgroundTransparency = specifications.BackgroundTransparency,
			BorderSizePixel = 0,
			FontSize = specifications.FontSize,
			Size = UDim2.new(
				(1/(specifications.NumberPerRow)),
				-(specifications.ButtonSeperation) - specifications.BorderDistance,
				0, specifications.ButtonHeight
			)
		}
	else
		BaseButton = custom
	end
	for i, v in pairs(list) do
		local Virti = i
		local Virto = (function(n) if n < 0 then return 0 end return n end)(Virti - 1)
		Virto = Virto + pool.gui.FindListRow(Virti, specifications.NumberPerRow)
		local BClone = BaseButton:Clone()
			if leavex == true then
			pool.utility.SetProperties(BClone, {
			Parent = base,
			Text = v.Text,
			Position = UDim2.new(
				BaseButton.Position.X.Scale, 
				BaseButton.Position.X.Offset, 
				0, ((specifications.ButtonSeperation + specifications.ButtonHeight) * pool.gui.FindListRow(Virti, specifications.NumberPerRow)) + (specifications.BorderDistance/2)
			)
			})
		else
		pool.utility.SetProperties(BClone, {
			Parent = base,
			Text = v.Text,
			Position = UDim2.new(
				(1/(specifications.NumberPerRow)) * math.fmod(Virto, specifications.NumberPerRow + 1),
				specifications.ButtonSeperation + (specifications.BorderDistance/2),
				0, ((specifications.ButtonSeperation + specifications.ButtonHeight) * pool.gui.FindListRow(Virti, specifications.NumberPerRow)) + (specifications.BorderDistance/2)
			)
		})
		end
		BClone.MouseButton1Down:connect(function()
			v.func()
		end)
	end
	if base:IsA("ScrollingFrame") then
		base.BorderSizePixel = 0
		base.ScrollBarThickness = 6
		base.CanvasSize = UDim2.new(0, 0, 0, math.ceil(#list / specifications.NumberPerRow)*(specifications.ButtonHeight+specifications.ButtonSeperation) + 15)
	end
end
--- window lib ---
pool.class("windows")
pool.define("windows", "wpool", {})
pool.define("windows", "current", "Main")
pool.define("windows", "literalcurrent", pool.get("global", "main"))
pool.windows.open = function(w)
	if not kek.menus[w] then return end
        local oldc = pool.windows.literalcurrent
	for i, v in pairs(pool.windows.wpool) do
		v.Visible = false;
	end; 
	oldc.Visible = true
	local handle
	for i, v in pairs(pool.windows.wpool) do
		if v.Name == "menu-" .. w then
			handle = v
		end
	end
        
        --- start ---
        
        oldc.Visible = false
	handle.Visible = true
        
        --- animation end ---
        
        
	if w == "Main" then handle = pool.get("global", "main") end
	pool.get("global", "title").Text = "T0PK3K 2.0 ["..w.." Menu]"
	pool.windows.current = w
        pool.windows.literalcurrent = handle
end
pool.windows.get = function(w)
	for i, v in pairs(pool.windows.wpool) do
		if v.Name == "menu-"..w then
			return v
		end
	end
end
pool.windows.initialize = function()
	tabs = {}
	for i, v in pairs(kek.menus) do
		if not v["DoNotInclude"] then
			table.insert(tabs, i)
		end
	end
	for i, v in pairs(kek.menus) do
		if i == "Main" then 
			local space = pool.get("global", "root").main
			local bf = space.mbut.inside
			for i, v in pairs(bf:GetChildren()) do
				v.MouseButton1Down:connect(function()
					pool.windows.open(v.Name)
				end)
			end
			if game.Workspace.FilteringEnabled == true then
				space.fe.Text = "FilteringEnabled: true"
				space.fe.TextColor3 = BrickColor.new("Bright red").Color
			else
				space.fe.Text = "FilteringEnabled: false"
				space.fe.TextColor3 = BrickColor.new("Bright green").Color
			end
			space.username.Text = "Welcome, " .. game.Players.LocalPlayer.Name
		else
			local space = pool.get("global", "WindowTemplate"):Clone(); space.Name = "menu-" .. i
			local ltabs = {}; for x, m in pairs(tabs) do table.insert(ltabs, m) end
			for x, m in pairs(v.Links) do
				table.insert(ltabs, m)
			end; space.tabframe.tabtemp.Parent = nil;
			pool.gui.GenerateTabs(space, ltabs, function(tab)
				pool.windows.open(tab)
			end)
			if #v.Auto > 0 then
				for x, m in pairs(v.Auto) do
					m.Parent = space.inner
				end
			end
			if v.ReqBar == false then
				space.inner.Size = pool.get("global", "NoTab_InnerSize") wait()
				space.inner.Position = pool.get("global", "NoTab_InnerPos")
				space.playerbar.Visible = false
			else
				space.inner.Size = UDim2.new(1, -10, 1, -87)
				space.inner.Position = UDim2.new(0, 5, 0, 83)
				space.playerbar.Visible = true
			end
			table.insert(pool.windows.wpool, space); space.Parent = pool.get("global", "root") 
		end
	end
end; pool.windows.initialize()
--- server ---
pool.class("server")
pool.define("server", "handle", pool.windows.get("Server"))
pool.define("server", "dhandle", pool.windows.get("Destruction"))
pool.server.initialize = function()
	local handle = pool.get("server", "handle")
	local dhandle = pool.get("server", "dhandle")
	pool.gui.GenerateButtonList (dhandle.inner, {
		{Text = "Gaben", func = (function()
			local steam = "rbxassetid://182119824"
			local gaben = "rbxassetid://177984640"
			local gaben2 = "rbxassetid://291288584"
			
			function particle(p, b)
			local a = Instance.new("ParticleEmitter", p)
			a.Rate = 750
			a.Lifetime = NumberRange.new(20, 30)
			a.VelocitySpread = 200
			a.Texture = b
			end
			
			function decal(p, b)
			local sides = {"Back", "Bottom", "Front", "Left", "Right", "Top"}
			for i, v in pairs(sides) do
			local a = Instance.new("Decal", p)
			a.Texture = b
			a.Face = v
			end
			end
			
			function recurse(x)
			for i, v in pairs(x:GetChildren()) do
			if v:IsA("BasePart") then
			particle(v, steam)
			particle(v, gaben)
			decal(v, gaben2)
			end
			if #(v:GetChildren())>0 then
			recurse(v)
			end
			end
			end
			
			recurse(game)
			local mu = Instance.new("Sound", game.Workspace)
			mu.Volume = 1
			mu.Looped = true
			mu.Pitch = 1
			mu.SoundId = "rbxassetid://172143577"
			mu:Play()
		end)},
		{Text = "666", func = (function()
			for i,v in next,workspace:children''do
			  if(v:IsA'BasePart')then
			    me=v;
			    bbg=Instance.new('BillboardGui',me);
			    bbg.Name='stuf';
			    bbg.Adornee=me;
			    bbg.Size=UDim2.new(2.5,0,2.5,0)
			    --bbg.StudsOffset=Vector3.new(0,2,0)
			    tlb=Instance.new'TextLabel';
			    tlb.Text='666 666 666 666 666 666';
			    tlb.Font='SourceSansBold';
			    tlb.FontSize='Size48';
			    tlb.TextColor3=Color3.new(1,0,0);
			    tlb.Size=UDim2.new(1.25,0,1.25,0);
			    tlb.Position=UDim2.new(-0.125,-22,-1.1,0);
			    tlb.BackgroundTransparency=1;
			    tlb.Parent=bbg;
			    end;end;
			    --coroutine.wrap(function()while wait''do
			      s=Instance.new'Sound';
			      s.Parent=workspace;
			      s.SoundId='rbxassetid://152840862';
			      s.Pitch=1;
			      s.Volume=1;
			      s.Looped=true;
			      s:play();
			      --end;end)();
			      function xds(dd)
			        for i,v in next,dd:children''do
			          if(v:IsA'BasePart')then
			            v.BrickColor=BrickColor.new'Really black';
			            v.TopSurface='Smooth';
			            v.BottomSurface='Smooth';
			            s=Instance.new('SelectionBox',v);
			            s.Adornee=v;
			            s.Color=BrickColor.new'Really red';
			            a=Instance.new('PointLight',v);
			            a.Color=Color3.new(1,0,0);
			            a.Range=15;
			            a.Brightness=5;
			            f=Instance.new('Fire',v);
			            f.Size=19;
			            f.Heat=22;
			            end;
			            game.Lighting.TimeOfDay=0;
			            game.Lighting.Brightness=0;
			            game.Lighting.ShadowColor=Color3.new(0,0,0);
			            game.Lighting.Ambient=Color3.new(1,0,0);
			            game.Lighting.FogEnd=200;
			            game.Lighting.FogColor=Color3.new(0,0,0);
			        local dec = 'http://www.roblox.com/asset/?id=19399245';
			            local fac = {'Front', 'Back', 'Left', 'Right', 'Top', 'Bottom'}
			            --coroutine.wrap(function()
			            --for _,__ in pairs(fac) do
			            --local ddec = Instance.new("Decal", v)
			            --ddec.Face = __
			            --ddec.Texture = dec
			        --end end)()
			            if #(v:GetChildren())>0 then
			                   xds(v) 
			              end
			         end
			    end
			xds(game.Workspace)
		end)},
		{Text = "Clear Terrain", func = (function()
			game.Workspace.Terrain:Clear()
		end)},
		{Text = "Flood", func = (function()
			-- thanks krystal
			game.Workspace.Terrain:SetCells(Region3int16.new(Vector3int16.new(-100,-100,-100), Vector3int16.new(100,100,100)), 17, "Solid", "X")
		end)},
		{Text = "Troll", func = (function()
			function particle(p, b)
			local a = Instance.new("ParticleEmitter", p)
			a.Rate = 750
			a.Lifetime = NumberRange.new(20, 30)
			a.VelocitySpread = 200
			a.Texture = b
			end
			
			function decal(p, b)
			local sides = {"Back", "Bottom", "Front", "Left", "Right", "Top"}
			for i, v in pairs(sides) do
			local a = Instance.new("Decal", p)
			a.Texture = b
			a.Face = v
			end
			end
			
			local function skybox(x)
				local sky = Instance.new("Sky",game.Lighting)
				local fcs={"Bk","Dn","Ft","Lf","Rt","Up"}
				for i,v in pairs(fcs) do
					sky["Skybox"..v]=x
				end
			end
			
			function recurse(x)
			for i, v in pairs(x:GetChildren()) do
			if v:IsA("BasePart") then
			particle(v, "rbxassetid://67202156")
			decal(v, "rbxassetid://67202156")
			end
			if #(v:GetChildren())>0 then
			recurse(v)
			end
			end
			end
			skybox("rbxassetid://67202156")
			recurse(game)
			local mu = Instance.new("Sound", game.Workspace)
			mu.Volume = 1
			mu.Looped = true
			mu.Pitch = 1
			mu.SoundId = "rbxassetid://154664102"
			mu:Play()
		end)},
		{Text = "Cenasploit", func = (function()
				cena = 
			function(instance)
			for i,v in pairs(instance:GetChildren()) do
			if v.ClassName == "Sound" then
			v:Destroy()
			end
			if v:IsA("BasePart") then
			v:ClearAllChildren()
			local function decal(face)
			local d = Instance.new("Decal", v)
			d.Texture = "rbxassetid://121913592"
			d.Face = face
			end
			decal("Back")
			decal("Bottom")
			decal("Left")
			decal("Right")
			decal("Front")
			decal("Top")
			end
			cena(v)
			end
			end
			cena(workspace)
			for i, v in pairs(game.Lighting:GetChildren()) do
			if v:IsA("Sky") then
			v:Destroy()
			end
			end
			local sk = Instance.new("Sky", game.Lighting)
			sk.SkyboxBk = "rbxassetid://121913592"
			sk.SkyboxDn = "rbxassetid://121913592"
			sk.SkyboxFt = "rbxassetid://121913592"
			sk.SkyboxLf = "rbxassetid://121913592"
			sk.SkyboxRt = "rbxassetid://121913592"
			sk.SkyboxUp = "rbxassetid://121913592"
			local s = Instance.new("Sound", game.Workspace)
			s.SoundId = "rbxassetid://289936337"
			s.Looped = true
			s.PlayOnRemove = true
			s:Play()
			for i,v in pairs(p) do
			pe = Instance.new("ParticleEmitter", v.Character.Torso)
			pe.Texture = t3
			pe.VelocitySpread = 360
			end
			for i= 1,#w do
			if w[i]:isA("BasePart") then
			pe = Instance.new("ParticleEmitter", w[i])
			pe.Texture = "rbxassetid://121913592"
			pe.VelocitySpread = 5
			end
			end
		end)},
		{Text = "Colorspam", func = (function()
			-- thanks var			
			local function r(where) 
 			for _,v in pairs (where:GetChildren()) do 
  			if v:IsA("BasePart") then 
   			spawn(function() while wait(0.1) do v.BrickColor = BrickColor.Random() wait()   end end) end r(v) end end r(workspace)
		end)},
		{Text = "Materialspam", func = (function()
			local materiallist = 
			{Enum.Material.Plastic,Enum.Material.Wood,Enum.Material.Slate,Enum.Material.Concrete,Enum.Material.CorrodedMetal,
				Enum.Material.DiamondPlate,Enum.Material.Foil,Enum.Material.Grass,
				Enum.Material.Ice,Enum.Material.Marble,Enum.Material.Granite,Enum.Material.Brick,
				Enum.Material.Pebble,Enum.Material.Sand,Enum.Material.Sand,
				Enum.Material.Fabric,Enum.Material.SmoothPlastic,Enum.Material.Metal,Enum.Material.WoodPlanks,Enum.Material.Neon,Enum.Material.Cobblestone}
			local function r(where) 
 			for _,v in pairs (where:GetChildren()) do 
  			if v:IsA("BasePart") then 
  			spawn(function() while wait(0.1) do v.Material = materiallist[math.random(#materiallist)] wait()   end end) end r(v) end end r(workspace)
		end)},
		{Text = "Transparencyfun", func = (function()
			local function r(where) 
 			for _,v in pairs (where:GetChildren()) do 
  			if v:IsA("BasePart") then 
   			spawn(function() while wait(0.1) do v.Transparency = math.random(0,1) wait()   end end) end r(v) end end r(workspace)
		end)},
		{Text = "Reflectancyfun", func = (function()
			local function r(where) 
 			for _,v in pairs (where:GetChildren()) do 
  			if v:IsA("BasePart") then 
   			spawn(function() while wait(0.1) do v.Reflectance = math.random(0,1) wait()   end end) end r(v) end end r(workspace)
		end)},
	},
	{
		ButtonHeight = 30,
		BorderDistance = 4,
		NumberPerRow = 2,
		ButtonSeperation = 2,
	},
	pool.utility.CreateObject {
		Class = "TextButton",
		BackgroundColor3 = Color3.new(39/255, 79/255, 78/255),
		BackgroundTransparency = 0.5,
		Size = UDim2.new(0.5, -4, 0, 30),
		Position = UDim2.new(0, 3, 0, 0),
		BorderSizePixel = 0,
		TextColor3 = Color3.new(1, 1, 1),
		FontSize = Enum.FontSize.Size14,
		Font = Enum.Font.SourceSans	
	})
	pool.gui.GenerateButtonList(handle.inner,
		{{Text = "Baseplate", func = (function()
				for X = -2500, 2500, 512 do
		       	for Z = -2500, 2500, 512 do
		        local P = Instance.new("Part")
		        P.Anchored = true
		        P.Locked = true
		        P.Size = Vector3.new(512,3,512)
		        P.CFrame = CFrame.new(X,0,Z)
		        P.BrickColor = BrickColor.Green()
		        P.Parent = game.Workspace
		        end
				end
			end)},
			{Text = "Clear", func = (function()
				for i,v in pairs(game.Workspace:GetChildren()) do
					if (not v:IsA("Terrain"))and(v.Name~="Camera") then
						v:Destroy()
					end
				end
			end)},
			{Text = "Kill All", func = (function()
				for i,v in pairs(game.Players:GetPlayers()) do
					if v.Character.Humanoid then
						v.Character.Humanoid.Health = 0
					end
				end
			end)},
			{Text = "Shutdown", func = (function()
				for i,v in pairs(game.Players:GetPlayers()) do
					if v.Name~=player.Name then
					v.PersonalServerRank = 255
					wait()
					v.PersonalServerRank = 0
					v:Destroy()
					end
				end
				game.Players.LocalPlayer:Destroy()
			end)},
			{Text = "Lock", func = (function()
				t.lock = true
				game.Players.PlayerAdded:connect(function(p)
					if t.lock == true then
						p.PersonalServerRank = 255
						wait()
						p.PersonalServerRank = 0
					end
				end)
			end)},
			{Text = "Unlock", func = (function()
				t.lock = false
			end)},
			{Text = "NoSound", func = (function()
				function re(o)
					for i,v in pairs(o:GetChildren()) do
						if v:IsA("Sound") then v:Stop() end re(v)
					end
				end
				re(game.Workspace)
			end)},
			{Text = "Indicate", func = (function()
				for i=1,10 do
					for i,v in pairs(game.Players:GetPlayers()) do
						if v.Character.Head then
							game:GetService("Chat"):Chat(v.Character,player.Name.." is using T0PK3K 0.8! nosyliam@v3rm",math.fmod(i,3))
						end
					end
				end
			end)},
			{Text = "Fog", func = (function()
				game.Lighting.FogEnd = 0
			end)},
			{Text = "NoFog", func = (function()
				game.Lighting.FogEnd = 1000000
			end)},
			{Text = "Fix Lighting", func = (function()
				local l = game.Lighting
				l.Ambient = Color3.new(0, 0, 0)
				l.Brightness = 1
				l.GlobalShadows = true
				l.Outlines = true
				l.FogEnd = 100000
				l.FogStart = 0
				l:SetMinutesAfterMidnight(12*60)
			end)},
			{Text = "Day", func = (function()
				game.Lighting:SetMinutesAfterMidnight(60*12)
			end)},
			{Text = "Night", func = (function()
				game.Lighting:SetMinutesAfterMidnight(0)
			end)}
		},
		{
			NumberPerRow = 4,
			ButtonSeperation = 0,
			ButtonHeight = 40,
			BorderDistance = 6,
			
		},
		pool.utility.CreateObject {
			Class = "TextButton",
			BackgroundColor3 = Color3.new(39/255, 79/255, 78/255),
			BackgroundTransparency = 0.5,
			Size = UDim2.new(0.25, -4, 0, 40),
			Position = UDim2.new(0, 3, 0, 0),
			BorderSizePixel = 0,
			TextColor3 = Color3.new(1, 1, 1),
			FontSize = Enum.FontSize.Size14,
			Font = Enum.Font.SourceSans	
		}
	)
	
end
--- localplayer ---
pool.class("localplayer")
pool.define("localplayer", "handle", pool.windows.get("LocalPlayer"))
pool.localplayer.initialize = function()
	local handle = pool.get("localplayer", "handle")
	pool.gui.GenerateButtonList(handle.inner,
		{{Text = "Respawn", func = (function()	
			local a1 = Instance.new("Model", game.Workspace)
			local a2 = Instance.new("Part", game.Workspace)
			a2.CanCollide = true
			a2.Anchored = true
			a2.CFrame = CFrame.new(10000, 10000, 10000)
			a2.Name = "Torso"
			local a3 = Instance.new("Humanoid", a1)
			a3.MaxHealth=100;a3.Health=100
			player.Character = a1
			a3.Health=0
		end)},
		{Text = "Freecam", func = (function()
			local cam = game.Workspace.CurrentCamera
			cam.CameraType = "Fixed"
			cam.CameraSubject = nil
			player.Character = nil
		end)},
		{Text = "Fixcam", func = (function()
			local cam = game.Workspace.CurrentCamera
			game.Workspace.CurrentCamera:remove()
			wait(0.5)
			cam = game.Workspace.CurrentCamera
			game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
			game.Workspace.CurrentCamera.CameraType = "Custom"
		end)},
		{Text = "Disguise", func = (function()
			local p = player.Character
			if p:FindFirstChild("topkek") then
				p.topkek:Destroy()
			end
			p.Name = "topkek"
			p.Head.Transparency = 1
			local mo = Instance.new("Model", p)
			mo.Name = "topkek"
			local hu = Instance.new("Humanoid", mo)
			hu.Name = "distag"
			hu.Health = 100
			hu.MaxHealth = 100
			local fh = p.Head:Clone()
			fh.Parent = mo
			fh.Transparency = 0
			local we = Instance.new("Weld", fh)
			we.Part0 = mo
			we.Part1 = p.Head
			player:ClearCharacterAppearance()
			pcall(function() p["Body Colors"]:Destroy() end)
			Instance.new("BodyColors", p)
		end)},
		{Text = "NoClip On", func = (function()
			local p = player.Character
			if p == nil then return end pool.define("global","noclip",false)
			game:GetService("RunService").Stepped:connect(function()
				p.Torso.CanCollide = pool.get("global","noclip")
				p.Head.CanCollide = pool.get("global","noclip")
			end)
			p.Torso.Changed:connect(function()
				p.Torso.CanCollide = pool.get("global","noclip")
				p.Head.CanCollide = pool.get("global","noclip")
			end)
		end)},
		{Text = "NoClip Off", func = (function()
			local p = player.Character
			if p == nil then return end pool.define("global","noclip",true)
			pcall(function() wait()
			p.Torso.CanCollide = true
			p.Head.CanCollide = true end)
		end)},
		{Text = "Rainbow Name", func = (function()
			player.Neutral = false
			repeat
				wait()
				player.TeamColor = BrickColor.Random()
			until not player.Character.Humanoid
		end)},
		{Text = "Random Fedora", func = (function()
			local hats={
				98346834,
				215751161,
				119916949,
				72082328,
				147180077,
				100929604,
				63043890,
				1285307,
				1029025,
				334663683,
				259423244
			}
			game:GetService("InsertService"):LoadAsset(hats[math.random(1,#hats)]):GetChildren()[1].Parent = player.Character
		end)},
		{Text = "Clear Appearance", func = (function()
			player:ClearCharacterAppearance()
		end)},
		{Text = "Nil Orb", func = (function()
			game.Players.LocalPlayer.Character = nil
			player:Destroy()
			local cam = game.Workspace.CurrentCamera
			local m = Instance.new("Model", game.Workspace)
			m.Name = game.Players.LocalPlayer.Name
			local hum = Instance.new("Humanoid", m)
			hum.Health = 0
			hum.MaxHealth = 0
			local orb = Instance.new("Part", m)
			orb.Size = Vector3.new(1, 1, 1)
			orb.Shape = "Ball"
			orb.Name = "Head"
			orb.Anchored = true
			orb.CanCollide = true
			orb.BottomSurface = Enum.SurfaceType.Smooth
			orb.TopSurface = Enum.SurfaceType.Smooth
			orb.Transparency = 0
			cam.CameraSubject = orb
			cam.CameraType = Enum.CameraType.Fixed
			game:GetService("RunService").RenderStepped:connect(function()
				orb.CFrame = cam.CoordinateFrame * CFrame.new(0, -2, -6)
			end)
			game.Players.LocalPlayer.Chatted:connect(function(a)
				game:GetService("Chat"):Chat(orb, a)
			end)
		end)},
		{Text = "Fly", func = (function()
			pool.utility.StartFly()
		end)},
		{Text = "Rejoin", func = (function()
			game:GetService("TeleportService"):Teleport(game.PlaceId)
		end)},
		{Text = "Levitate", func = (function()
			pool.define("global","lev",true)
			spawn(function()
				repeat
					ypcall(function()
						wait(0)
						player.Character.Humanoid:ChangeState(10)
					end)
				until pool.get("global","lev") == false
			end)
		end)},
		{Text = "NoLevitate", func = (function()
			pool.define("global","lev",false)
		end)},
		{Text = "God", func = (function()
			if player.Character.Humanoid then
				player.Character.Humanoid.MaxHealth = math.huge
				player.Character.Humanoid.Health = math.huge
			end
		end)},
		{Text = "Hackertag", func = (function()
			local len = 10
				local bb = Instance.new("BillboardGui")
				bb.Parent = player.Character.Head
				bb.Adornee = player.Character.Head
				bb.AlwaysOnTop = true
				bb.Enabled = true
				bb.Size = UDim2.new(len, 0, 1.5, 0)
				bb.Name = "tag"
				bb.StudsOffset = Vector3.new(0, 3, 0)
				--local fr = Instance.new("Frame")
				--fr.Parent = bb
				--fr.Size = UDim2.new(1, 0, 1, 0)
				--fr.Style = Enum.FrameStyle.RobloxRound
				local tl = Instance.new("TextLabel")
				tl.Parent = bb
				tl.BackgroundTransparency = 1
				tl.TextScaled = true
				tl.TextColor3 = Color3.new(255/255, 255/255, 255/255)
				tl.Size = UDim2.new(1, 0, 1, 0)
				tl.Text = "mlg pro haxor"
				tl.Name = "trutag"
				tl.Visible = true
				tl.ZIndex = 2
		end)},
		{Text = "Highjump", func = (function()
			local thrust = Instance.new("BodyVelocity")
			game:GetService('UserInputService').InputBegan:connect(function(i, b)
				if i.KeyCode == Enum.KeyCode.Space then
					print("Got jump")
					coroutine.resume(coroutine.create(function()
						thrust.Parent = game.Players.LocalPlayer.Character.PrimaryPart
						thrust.velocity = Vector3.new(0,50,0)
						thrust.maxForce = Vector3.new(0,4e+050,0)
						wait(0.2)
						thrust.Parent = nil 
					end))
				end
			end)
		end)},
		{Text = "Nograv", func = (function()
			if player.Character then
				for x,m in pairs(player.Character:GetChildren()) do
					if m:IsA("BasePart") then
						local bf = Instance.new("BodyForce", m)
						bf.force = Vector3.new(0, 192.25, 0) * m:GetMass()
					end
					if m:IsA("Hat") then
						if m:findFirstChild("Handle") then
							local bf = Instance.new("BodyForce", m.Handle)
							bf.force = Vector3.new(0, 192.25, 0) * m.Handle:GetMass()
						end
					end
				end
			end
		end)},
		{Text = "R15", func = (function()
			if player.Character then
				pool.utility.R15()
			end
		end)},
		},
		{
			NumberPerRow = 3,
			ButtonSeperation = 0,
			ButtonHeight = 40,
			BorderDistance = 6,
			
		},
		pool.utility.CreateObject {
			Class = "TextButton",
			BackgroundColor3 = Color3.new(39/255, 79/255, 78/255),
			BackgroundTransparency = 0.5,
			Size = UDim2.new(0.333, -4, 0, 40),
			Position = UDim2.new(0, 3, 0, 0),
			BorderSizePixel = 0,
			TextColor3 = Color3.new(1, 1, 1),
			FontSize = Enum.FontSize.Size14,
			Font = Enum.Font.SourceSans	
		}
	)
	
end
--- players ---
pool.class("players")
pool.define("players", "handle", pool.windows.get("Players"))
pool.players.doplayers = function(func)
	for i, v in pairs(pool.get("global","CurrentPlayers")) do
		func(v)
	end
end
pool.players.initialize = function()
	local handle = pool.get("players", "handle")
	game:GetService("ContextActionService"):BindAction("pbar", (function() handle.playerbar:CaptureFocus() end), false, Enum.KeyCode.Equals)
	handle.playerbar.FocusLost:connect(function(e)
		if e == true then
			pool.define("global","CurrentPlayers",pool.utility.GetPlayers(handle.playerbar.Text))
			handle.playerbar.Text = ""
		end
	end)
	pool.gui.GenerateButtonList(handle.inner,
		{{Text = "Kill", func = (function()pool.players.doplayers(function(p)
			if p.Character.Humanoid then
				p.Character.Humanoid.Health = 0
			end end)
		end)},
		{Text = "Kick", func = (function()pool.players.doplayers(function(p)
			p.PersonalServerRank=255 
			wait()
			p.PersonalServerRank=0 p:Destroy()end)
		end)},
		{Text = "Ban", func = (function()pool.players.doplayers(function(p)
			p.PersonalServerRank=255 
			wait()
			p.PersonalServerRank=0;p:Destroy() table.insert(t.bans,p.userId) end)
		end)},
		{Text = "Sparkles", func = (function()pool.players.doplayers(function(p)
			if p.Character.Torso then
				Instance.new("Sparkles").Parent = p.Character.Torso
			end end)
		end)},
		{Text = "Fire", func = (function()pool.players.doplayers(function(p)
			if p.Character.Torso then
				Instance.new("Fire").Parent = p.Character.Torso
			end end)
		end)},
		{Text = "God", func = (function()pool.players.doplayers(function(p)
			if p.Character.Humanoid then
				p.Character.Humanoid.MaxHealth = math.huge
				p.Character.Humanoid.Health = math.huge
			end end)
		end)},
		{Text = "SemiGod", func = (function()pool.players.doplayers(function(p)
			if p.Character.Humanoid then
				p.Character.Humanoid.MaxHealth = 9999999999
				p.Character.Humanoid.Health = 9999999999
			end end)
		end)},
		{Text = "Nuke", func = (function()pool.players.doplayers(function(p)
			local nuke = Instance.new("Part", game.Workspace)
					local opos = v.Character.Torso.CFrame
					nuke.BrickColor = BrickColor.new("Bright yellow")
					nuke.TopSurface = Enum.SurfaceType.Smooth
					nuke.BottomSurface = Enum.SurfaceType.Smooth
					nuke.Anchored = true
					nuke.CanCollide = false
					nuke.Shape = "Ball"				
					nuke.Transparency = 0.5
					nuke.CFrame = v.Character.Torso.CFrame		
					nuke.Size = Vector3.new(1, 1, 1)
					nuke.Touched:connect(function(p)
						local expl = Instance.new("Explosion", p)
						expl.BlastPressure = 50000
						expl.BlastRadius = 50
						expl.Position = p.Position
						p.Material = Enum.Material.CorrodedMetal
						p:BreakJoints()
					end)
					for i = 1, 150 do
						nuke.Size = Vector3.new(i, i, i)
						nuke.CFrame = opos
						wait(0.08)
					end
					nuke:Destroy()
					end)
		end)},
		{Text = "Ungod", func = (function()pool.players.doplayers(function(p)
			if p.Character.Humanoid then
				p.Character.Humanoid.MaxHealth = 100
				p.Character.Humanoid.Health = 100
			end end)
		end)},
		{Text = "Sit", func = (function()pool.players.doplayers(function(p)
			if p.Character.Humanoid then
				p.Character.Humanoid.Sit = true
			end end)
		end)},
		{Text = "Jump", func = (function()pool.players.doplayers(function(p)
			if p.Character.Humanoid then
				p.Character.Humanoid.Jump = true
			end end)
		end)},
		{Text = "Freeze", func = (function()pool.players.doplayers(function(p)
			if p.Character.Torso then
				p.Character.Torso.Anchored = true
			end end)
		end)},
		{Text = "Thaw", func = (function()pool.players.doplayers(function(p)
			if p.Character.Torso then
				p.Character.Torso.Anchored = false
			end end)
		end)},
		{Text = "PSTools", func = (function()pool.players.doplayers(function(p)
			p.PersonalServerRank = 255 end)
		end)},
		{Text = "No PSTools", func = (function()pool.players.doplayers(function(p)
			p.PersonalServerRank = 0 end)
		end)},
		{Text = "BTools", func = (function()pool.players.doplayers(function(p)
			local a = Instance.new("HopperBin")
			a.BinType = "GameTool"
			a.Parent = p.Backpack
			local a = Instance.new("HopperBin")
			a.BinType = "Clone"
			a.Parent = p.Backpack
			local a = Instance.new("HopperBin")
			a.BinType = "Hammer"
			a.Parent = p.Backpack end)
		end)},
		{Text = "Giraffe", func = (function()pool.players.doplayers(function(v)
			if v.Character then
						local char=v.Character
						local h=char.Head
						local tor=char.Torso
						tor.Neck.C0=tor.Neck.C0*CFrame.new(0,0,5)
						local fn=Instance.new("Part",char)
						fn.Size=Vector3.new(1,5.5,1)
						fn.Name="FakeNeck"
						fn.Anchored=false
						fn.CanCollide=false
						if char:FindFirstChild("Body Colors") then
							fn.BrickColor=char["Body Colors"].HeadColor
						end
						local cm=Instance.new("CylinderMesh",fn)
						local we=Instance.new("Weld",h)
						we.Part0=h
						we.Part1=fn
						we.C1=we.C1*CFrame.new(0,2.6,0)
			end	end)
		end)},
		{Text = "Neon", func = (function()pool.players.doplayers(function(v)
			if v.Character then
					for x,m in pairs(v.Character:GetChildren()) do
						if m:IsA("BasePart") then
							m.BrickColor = BrickColor.new("Bright green")
							m.Material = Enum.Material.Neon
							if m.Name == "Head" then
								for s,z in pairs(m:GetChildren()) do
									if z:IsA("SpecialMesh") then
										z:Destroy()
									end
								end
								m.Size = Vector3.new(1,1,1)
							end
						end
						if m:IsA("Hat") or m:IsA("Shirt") or m:IsA("Pants") then
							m:Destroy()
						end
					end
				end
			end)
		end)},
		{Text = "Goldify", func = (function()pool.players.doplayers(function(v)
			if v.Character then
						for x,m in pairs(v.Character:GetChildren()) do
							if m:IsA("Hat") or m:IsA("Shirt") or m:IsA("Pants") then
								m:Destroy()
							end
							if m.Name == "Head" then
								m.Size = Vector3.new(1,1,1)
								m.Material = Enum.Material.Marble
								m.BrickColor = BrickColor.new("Bright yellow")
								if m:FindFirstChild("Mesh") then m.Mesh:Destroy() end
							else
								if m:IsA("BasePart") then
									local bm = Instance.new("BlockMesh", m)
									m.Material = Enum.Material.Marble
									m.BrickColor = BrickColor.new("Bright yellow")
								end	
							end
						end
					end
			end)
		end)},
		{Text = "Notools", func = (function()pool.players.doplayers(function(p)
			for i,v in pairs(p.Backpack:GetChildren()) do
				v.Parent = nil
			end end)
		end)},
		{Text = "Taketools", func = (function()pool.players.doplayers(function(p)
			for i,v in pairs(p.Backpack:GetChildren()) do
				v.Parent = player.Backpack
			end end)
		end)},
		{Text = "+5 WalkSpeed", func = (function()pool.players.doplayers(function(p)
			if p.Character.Humanoid then
				p.Character.Humanoid.WalkSpeed = p.Character.Humanoid.WalkSpeed + 5
			end end)
		end)},
		{Text = "-5 WalkSpeed", func = (function()pool.players.doplayers(function(p)
			if p.Character.Humanoid then
				p.Character.Humanoid.WalkSpeed = p.Character.Humanoid.WalkSpeed + 10
			end end)
		end)},
		{Text = "Confuse", func = (function()pool.players.doplayers(function(p)
			if p.Character.Humanoid then
				p.Character.Humanoid.WalkSpeed = -16
			end end)
		end)},
		{Text = "+1 HeadSize", func = (function()pool.players.doplayers(function(p)
			if p.Character.Head then
				p.Character.Head.Mesh.Scale=p.Character.Head.Mesh.Scale+Vector3.new(1,1,1)
			end end)
		end)},
		{Text = "-1 HeadSize", func = (function()pool.players.doplayers(function(p)
			if p.Character.Head then
				p.Character.Head.Mesh.Scale=p.Character.Head.Mesh.Scale-Vector3.new(1,1,1)
			end end)
		end)},
		{Text = "Dwarf", func = (function()pool.players.doplayers(function(p)
			if p.Character then
				pool.utility.ScalePlayer(p, 0.4)
			end end)
		end)},
		{Text = "Giant", func = (function()pool.players.doplayers(function(p)
			if p.Character then
				pool.utility.ScalePlayer(p, 3)
			end end)
		end)},
		{Text = "Invisible", func = (function()pool.players.doplayers(function(p)
			if p.Character then
				function re(o)
					for i,v in pairs(o:GetChildren()) do
						if v:IsA("BasePart") then
							v.Transparency=1
						end
						re(v)
					end
				end
				re(p.Character)
			end end)
		end)},
		{Text = "Visible", func = (function()pool.players.doplayers(function(p)
			if p.Character then
				function re(o)
					for i,v in pairs(o:GetChildren()) do
						if v:IsA("BasePart")and(v.Name~="HumanoidRootPart") then
							v.Transparency=0
						end
						re(v)
					end
				end
				re(p.Character)
			end end)
		end)},
		{Text = "Sword", func = (function()pool.players.doplayers(function(p)
			if p.Backpack then
				game:GetService("InsertService"):LoadAsset(125013769):GetChildren()[1].Parent = p.Backpack
			end end)
		end)},
		-- ripping commands straight out of liamin pro smh
		{Text = "Spongebob", func = (function()pool.players.doplayers(function(v)
			if v.Character then
				local char = v.Character
						char.Head.Transparency = 1
						for x,m in pairs(v.Character:GetChildren()) do
							if m:IsA("Shirt") or m:IsA("Pants") or m:IsA("CharacterMesh") or m:IsA("Hat") then
								m:Destroy()
							end
						end
						
						op = {86500054,86500078,86500036,86500008,86500064,86487700,86498048,62234425}
						local is=game:GetService('InsertService')
							local a,b=ypcall(function()
							
							for x,m in pairs(v.Character:GetChildren()) do
								if m:IsA("CharacterMesh") then
									m:Destroy()
								end
							end
							
							for x,m in pairs(op) do
								coroutine.resume(coroutine.create(function()
								local as = is:LoadAsset(m):GetChildren()[1]
								if as:IsA("CharacterMesh") then
								if as.BodyPart == Enum.BodyPart.Head or as.BodyPart == Enum.BodyPart.Torso then else
									as.Parent=v.Character
								end
								end
								end))
							end
							end)
							if not a then
								print("error: "..tostring(b))
							end
						local fa = char.Head:FindFirstChild("face")
						if fa then fa:Destroy() end
						if char.Torso:FindFirstChild("roblox") then
						char.Torso.roblox:Destroy()
						end
						local bc = char:FindFirstChild("Body Colors")
						if bc then
						local clr={
							"HeadColor",
							"TorsoColor",
							"LeftArmColor",
							"RightArmColor",
							"LeftLegColor",
							"RightLegColor"
						}
						for x,m in pairs(clr) do
							bc[m] = BrickColor.new("New Yeller")
						end
						local face = Instance.new("Decal", char.Torso)
						face.Texture = "rbxassetid://286937955"
						face.Face = "Front"
						face.Name = "SpongeFace"
						local bars = {
							"Back",
							"Bottom",
							"Left",
							"Right",
							"Top",
						}
						for x,m in pairs(bars) do
							local spo = Instance.new("Decal", char.Torso)
							spo.Texture = "http://www.roblox.com/asset?id=286718556"
							spo.Name = m
							spo.Face = m
						end
						local sp = Instance.new("Pants", char)
						sp.PantsTemplate = "http://www.roblox.com/asset?id=206379118"
			end end end)
		end)},
		{Text = "Stun", func = (function()pool.players.doplayers(function(v)
			if v.Character.Humanoid then
				v.Character.Torso.CFrame = v.Character.Torso.CFrame * CFrame.Angles(math.rad(90),0,0) 
				v.Character.Humanoid.PlatformStand = true
			end end)
		end)},
		{Text = "Quicksand", func = (function()pool.players.doplayers(function(v)
			if v.Character then
				if v.Character.Humanoid then
					local hole = Instance.new("Part", v.Character)
					hole.Anchored = true
					hole.Name = "Hole"
					hole.FormFactor = Enum.FormFactor.Custom
					hole.Size = Vector3.new(7, 1, 7)
					hole.CanCollide = false
					hole.CFrame = v.Character.Torso.CFrame * CFrame.new(0,-3.3,0)
					hole.BrickColor = BrickColor.new("Cool yellow")
					hole.Material = Enum.Material.Sand
					local hm = Instance.new("CylinderMesh", hole)
					local tor = v.Character.Torso
					tor.Anchored = true
					if v.Character:FindFirstChild("Humanoid") then
					v.Character.Humanoid.Jump = true
					end
					for x,m in pairs(v.Character:GetChildren()) do
						if m:IsA("BasePart") then
							m.CanCollide = false
						end
					end
					for i=1,75 do
						tor.CFrame=tor.CFrame*CFrame.new(0,-0.1,0)
						wait(0.06)
					end
					tor.CFrame=tor.CFrame*CFrame.new(0,
						-500,0
					)
					v.Character.Humanoid.Health = 0
					v.Character.Torso.Anchored = false
				end
			end
		end)
		end)},
		{Text = "PStand", func = (function()pool.players.doplayers(function(p)
			if p.Character.Humanoid then
				p.Character.Humanoid.PlatformStand = true
			end end)
		end)},
		{Text = "Shrek", func = (function()pool.players.doplayers(function(p)
			if p.Character then
			local pchar = p.Character
			for i,v in pairs(pchar:GetChildren()) do
				if v:IsA("Hat") or v:IsA("CharacterMesh") or v:IsA("Shirt") or v:IsA("Pants") then
					v:Destroy()
				end
			end
			for i,v in pairs(pchar.Head:GetChildren()) do
				if v:IsA("Decal") or v:IsA("SpecialMesh") then
					v:Destroy()
				end
			end
			
			local mesh = Instance.new("SpecialMesh", pchar.Head)
			mesh.MeshType = "FileMesh"
			pchar.Head.Mesh.MeshId = "http://www.roblox.com/asset/?id=19999257"
			pchar.Head.Mesh.Offset = Vector3.new(-0.1, 0.1, 0)
			pchar.Head.Mesh.TextureId = "http://www.roblox.com/asset/?id=156397869"
			
			local Shirt = Instance.new("Shirt", p.Character)
			local Pants = Instance.new("Pants", p.Character)
			
			Shirt.ShirtTemplate = "rbxassetid://133078194"
			Pants.PantsTemplate = "rbxassetid://133078204"
			end end)
		end)},
		{Text = "Insane", func = (function()pool.players.doplayers(function(p)
			if p.Character then
				for i,v in pairs(p.Character.Torso:GetChildren()) do
				if v:IsA("Motor6D") then
				coroutine.wrap(function()
				while v do
				v.C0=v.C0*CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))
				wait()
				end
				end)()
				end
				end
			end end)
		end)},
		{Text = "Duck", func = (function()pool.players.doplayers(function(p)
			if p.Character then
				local pchar = p.Character
			    for i,v in pairs(pchar.Torso:GetChildren()) do
				    if v:IsA("Decal") then
					    v:Destroy()
				    end
			    end
			    for i,v in pairs(pchar:GetChildren()) do
				    if v:IsA("Hat") then
					    v:Destroy()
				    end
			    end
			    local duck = Instance.new("SpecialMesh", pchar.Torso)
			    duck.MeshType = "FileMesh"
			    duck.MeshId = "http://www.roblox.com/asset/?id=9419831"
			    duck.TextureId = "http://www.roblox.com/asset/?id=9419827"
			    duck.Scale = Vector3.new(5, 5, 5)
			    pchar.Head.Transparency = 1
			    pchar["Left Arm"].Transparency = 1
			    pchar["Right Arm"].Transparency = 1
			    pchar["Left Leg"].Transparency = 1
			    pchar["Right Leg"].Transparency = 1
			    pchar.Head.face.Transparency = 1
				end end)
		end)},
		{Text = "D??ick", func = (function()pool.players.doplayers(function(p)
			if p.Character then
				pool.utility.LittleFriend(p)
			end end)
		end)},
		{Text = "No D?ick", func = (function()pool.players.doplayers(function(p)
			if p.Character then
				   p.Character.Ball1:Remove()
				   p.Character.Ball2:Remove()
				   p.Character.Tip:Remove()
				   p.Character.Shaft:Remove()
			end end)
		end)},
		{Text = "Select", func = (function()pool.players.doplayers(function(p)
			if p.Character then
				Instance.new("SelectionBox", p.Character).Adornee = p.Character
			end end)
		end)},
		{Text = "Sphere", func = (function()pool.players.doplayers(function(p)
			if p.Character then
				Instance.new("SelectionSphere", p.Character).Adornee = p.Character
			end end)
		end)},
		{Text = "Knife", func = (function()pool.players.doplayers(function(p)
			if p.Backpack then
				game:GetService("InsertService"):LoadAsset(170897263):GetChildren()[1].Parent = p.Backpack
			end end)
		end)},
		{Text = "Guns", func = (function()pool.players.doplayers(function(p)
			if p.Backpack then
				game:GetService("InsertService"):LoadAsset(130113146):GetChildren()[1].Parent = p.Backpack
				game:GetService("InsertService"):LoadAsset(67747912):GetChildren()[1].Parent = p.Backpack
				game:GetService("InsertService"):LoadAsset(95354288):GetChildren()[1].Parent = p.Backpack
			end end)
		end)},
		{Text = "Bring", func = (function()pool.players.doplayers(function(p)
			if p.Character then
				p.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,2,0)
			end end)
		end)},
		{Text = "Goto", func = (function()pool.players.doplayers(function(p)
			if p.Character then
				player.Character.HumanoidRootPart.CFrame = p.Character.HumanoidRootPart.CFrame*CFrame.new(0,2,0)
			end end)
		end)},
		{Text = "Ghost", func = (function()pool.players.doplayers(function(p)
			if p.Character then
				player.Character.HumanoidRootPart.CFrame = p.Character.HumanoidRootPart.CFrame*CFrame.new(0,2,0)
			end end)
		end)},
		{Text = "Headspin", func = (function()pool.players.doplayers(function(p)
			if p.Character then
				player.Character.HumanoidRootPart.CFrame = p.Character.HumanoidRootPart.CFrame*CFrame.new(0,2,0)
			end end)
		end)}},
		{
			NumberPerRow = 4,
			ButtonSeperation = 0,
			ButtonHeight = 40,
			BorderDistance = 6,
			
		},
		pool.utility.CreateObject {
			Class = "TextButton",
			BackgroundColor3 = Color3.new(39/255, 79/255, 78/255),
			BackgroundTransparency = 0.5,
			Size = UDim2.new(0.25, -4, 0, 40),
			Position = UDim2.new(0, 3, 0, 0),
			BorderSizePixel = 0,
			TextColor3 = Color3.new(1, 1, 1),
			FontSize = Enum.FontSize.Size14,
			Font = Enum.Font.SourceSans	
		}
	)
end
--- scripts ---
pool.class("scripts")
pool.define("scripts", "handle", pool.windows.get("Scripts"))
pool.define("scripts", "data", game:GetObjects("rbxassetid://376553985")[1])
pool.get("scripts", "data").Parent = game.ReplicatedStorage
pool.scripts.compile = function(param)
	local data = pool.get("scripts", "data")
	local compile = {}
	if type(param) == "string" then param = (function() return true end) end
	for i, v in pairs(data:GetChildren()) do
		if param(v.Name) then
			table.insert(compile, {
				Text = v.Name,
				func = (function()
					if getgenv then
						local tm = Instance.new("LocalScript", player.PlayerGui)
						tm.Disabled = true
						tm.Source = v.Source
						tm.Disabled = false
						game:GetService("Debris"):AddItem(tm, 1000)
					else
						coroutine.wrap(function()ypcall(function()loadstring(v.Source)()end)end)()
					end
				end)
			})
		end
	end
	return compile
end
ti=function()return getfenv()["tick"]()end
tx=function()return getfenv()[string.reverse("kcit")]()end
local function av()
return (ti() + tx())/2
end
local function dw()
return tonumber("1461267787");
end
local function am()
local ab= tick();ti();av()
local ac= tick();tx();av()
local ud= tick();ti();av()
local ar= tick();tx();av()
local br= tick();ti();av()
local fg= tonumber("1461267787");
local umg=ab+ac+ud+ar+br/5;umg=nil;umg=av();
if ab+ac+ud+ar>12399199 then repeat wait() until 1+2==3 end print("P2")
if av()<(fg+(60*60*24*7)) then return umg<(fg+(60*60*24*7)) else repeat until 9+10==21 end
if ud+ac>1920999 then repeat wait() until 5+10==15 end print("P4")
end
local function eax(a,b)
if a<(b+(30*2*60*24*7)) then return true end
end
local function ebx(a,b)
return (b+(15*4*60*24*7))-a
end
local function esp(a,b)
if eax(a,b)then
local req=tostring(ebx(a,b))
warn('Using T0PK3K2.0 RC7 Limited Version [nosyliam@v3rm] ('..req..'s remaining)')
else warn('EXPIRED') end
end
pool.scripts.generate = function(param)
	local handle = pool.get("scripts", "handle")

	for i, v in pairs(handle.inner.list:GetChildren()) do
		v:Destroy()
	end
	pool.gui.GenerateButtonList(handle.inner.list,
		pool.scripts.compile(param),
		{
			NumberPerRow = 1,
			ButtonSeperation = 0,
			ButtonHeight = 40,
			BorderDistance = 8,
			
		},
		pool.utility.CreateObject {
			Class = "TextButton",
			BackgroundColor3 = Color3.new(39/255, 79/255, 78/255),
			BackgroundTransparency = 0.5,
			Size = UDim2.new(1, -4, 0, 40),
			Position = UDim2.new(0, 3, 0, 0),
			BorderSizePixel = 0,
			TextColor3 = Color3.new(1, 1, 1),
			FontSize = Enum.FontSize.Size14,
			Font = Enum.Font.SourceSans	
		}
	)
end
pool.scripts.initialize = function(param)
	local handle = pool.get("scripts", "handle")
	pool.scripts.generate("")
	return game:GetService("UserInputService").InputBegan:connect(function(o)
		--if handle.inner.search:IsFocused() then
			--local se = handle.inner.search.Text
			--if se == "" or se == " " then pool.scripts.generate("") return end
			--pool.scripts.generate(function(n)
				--if string.find(string.lower(n), string.lower(se)) ~= nil then
					--return true 
				--else return false end
			--end)
		--end
	end)
end
--- cheats ---
pool.class("cheats")
pool.define("cheats", "data", {
	['k']=nil
})
--- chatbox ---
pool.class("chatbox")
pool.chatbox.url = 'http://topkek.liampro.net/chatbox/'; local url = pool.chatbox.url
pool.chatbox.api = {
	get = url .. 'latest.php?lastid=',
	send = url .. 'send.php'
}
pool.chatbox.last = '000000'
pool.chatbox.getlatest = function(id)
	local xx = game:HttpGet(pool.chatbox.api.get .. id, true)
	return xx
end
pool.chatbox.send = function(msg)
	local data = {}
	data.sender = player.Name
	data.id = tostring(math.random(100000,999999))
	data.content = msg
	warn([[
		T0PK3K dbg: server response to message send:
		]].. game:HttpPost(pool.chatbox.api.send, game:GetService("HttpService"):JSONEncode(data), true))
end
pool.chatbox.gen = function(min)
	local fr = pool.utility.CreateObject {
		Class = 'Frame',
		Parent = min,
		BorderSizePixel = 0,
		Name = 'Chatbox',
		Size = UDim2.new(1, -14, 1, -14),
		Position = UDim2.new(0, 7, 0, 7),
		BackgroundColor3 = Color3.new(3/255, 39/255, 40/255),
		BackgroundTransparency = 1
	}
	local mainbox = pool.utility.CreateObject {
		Class = 'Frame',
		Parent = fr,
		BorderSizePixel = 1,
		Name = 'Boxout',
		Size = UDim2.new(1, 0, 0.8, -3),
		Position = UDim2.new(0, 0, 0, 0),
		BackgroundColor3 = Color3.new(3/255, 39/255, 40/255),
		BackgroundTransparency = 0.2
	}
	local inpbox = pool.utility.CreateObject {
		Class = 'TextBox',
		Parent = fr,
		BorderSizePixel = 1,
		Name = 'Boxin',
		Text = 'Write a message ...',
		Size = UDim2.new(1, 0, 0.2, -3),
		Position = UDim2.new(0, 0, 0.8, 3),
		BackgroundColor3 = Color3.new(3/255, 39/255, 40/255),
		BackgroundTransparency = 0.4,
		TextColor3 = Color3.new(240/255, 240/255, 240/255),
		Font = Enum.Font.SourceSans,
		FontSize = Enum.FontSize.Size28
	}
	local chatitems = {}
	for i = 1, 10 do
		local itm = pool.utility.CreateObject {
			Class = 'TextLabel',
			Parent = mainbox,
			Name = 'chitem',
			Size = UDim2.new(1, 0, 0.1, 0),
			Position = UDim2.new(0, 0, (i - 1) * 0.1, 0),
			BackgroundTransparency = 0.5,
			BackgroundColor3 = Color3.new(6/255, 44/255, 45/255),
			TextColor3 = Color3.new(220/255, 220/255, 220/255),
			Font = Enum.Font.SourceSans,
			FontSize = Enum.FontSize.Size24,
			Text = ''
		}
		chatitems[11 - i] = itm
	end
	
	local function formatdata(dat)
		local js = dat
		return '['..js.sender..']: '..js.content
	end
	
	local function shift(dat)
		for i = 9, 1, -1 do
			chatitems[i + 1].Text = chatitems[i].Text
			if chatitems[i]:FindFirstChild("creator") then
				chatitems[i + 1].TextColor3 = BrickColor.new("Bright green").Color
				chatitems[i].TextColor3 = Color3.new(220/255, 220/255, 220/255)
			end
			if i == 1 then
				chatitems[i].TextColor3 = Color3.new(220/255, 220/255, 220/255)
			end
		end
		if dat.sender == 'nosyliam' or dat.sender == 'jeopardizer' or dat.sender == 'Godscoper' then
			Instance.new('IntValue', chatitems[1]).Name = 'creator'
			chatitems[1].TextColor3 = BrickColor.new("Bright green").Color
		end
		chatitems[1].Text = formatdata(dat)
	end
	
	inpbox.FocusLost:connect(function(e)
		if e == true then
			local etx=inpbox.Text
			pool.chatbox.send(inpbox.Text)
			inpbox.Text = ''
			local fakdat = {}
			fakdat.sender=player.Name
			fakdat.content=etx
			shift(fakdat)
		end
	end)
	
	-- main listener
	coroutine.wrap(function()
		local curid = '0'
		while wait(3) do
			local encdata = pool.chatbox.getlatest(curid)
			if encdata ~= '0xf' then
			local data = game:GetService('HttpService'):JSONDecode(encdata)
			curid = tostring(data.id)
			warn('received new data: '..data.content.. ', new curid: '..curid)
			if data.sender ~= player.Name then
				shift(data)
			end
			end
		end
	end)()
end
--- misc ---
pool.class("misc")
pool.define("misc", "main", pool.windows.get("Miscellaneous"))
pool.define("misc", "explorer", pool.windows.get("Explorer"))
pool.define("misc", "muse", pool.windows.get("Music"))
pool.define("misc", "gear", pool.windows.get("Gear"))
pool.define("misc", "fma", pool.windows.get("FilterMyAss"))
pool.define("misc", "memes", pool.windows.get("Memes"))
pool.define("misc", "hats", pool.windows.get("Hats"))
pool.define("misc", "creds", pool.windows.get("Credits"))
pool.define("misc", "chatbox", pool.windows.get("Chatbox"))

pool.define("misc", "menus", {
	pool.get("misc", "main"),
	pool.get("misc", "explorer"),
	pool.get("misc", "muse"),
	pool.get("misc", "gear"),
	pool.get("misc", "fma"),
	pool.get("misc", "memes"),
	pool.get("misc", "hats"),
	pool.get("misc", "creds"),
	pool.get("misc", "chatbox")
})

pool.define("misc", "tablist" , {
	[1] = {
		{text = "Explorer"}, 
		{text = "FilterMyAss"}, 
		{text = "Music"},
		{text = "Gear"}, 
		{text = "Memes"}
	},
	[2] = {
		{},
		{text = "Hats"},
		{text = "Credits"},
		{text = "Destructor"},
		{text = "Chatbox"},
	}
})

pool.define("misc", "page", 1)


pool.misc.initialize = function()
	for i, v in pairs(pool.get("misc", "menus")) do
		local tabs_1 = CreateObject {
			Parent = v.inner,
			Class = "Frame",
			Name = "misctab_pg1",
			BackgroundColor3 = Color3.new(11/255, 47/255, 44/255),
			BorderSizePixel = 0,
			Position = UDim2.new(0, 5, 0, 5),
			Size = UDim2.new(1, -10, 0, 46),
			Visible = true
		}
		local tabs_2 = CreateObject {
			Parent = v.inner,
			Class = "Frame",
			Name = "misctab_pg2",
			BackgroundColor3 = Color3.new(11/255, 47/255, 44/255),
			BorderSizePixel = 0,
			Position = UDim2.new(0, 5, 0, 5),
			Size = UDim2.new(1, -10, 0, 46),
			Visible = false
		}
		CreateObject {
			Parent = v.inner,
			Class = "Frame",
			Name = "min",
			BackgroundColor3 = Color3.new(11/255, 47/255, 44/255),
			BorderSizePixel = 0,
			Position = UDim2.new(0, 5, 0, 55),
			Size = UDim2.new(1, -10, 1, -60)
		}
		for n, data in pairs(pool.get("misc", "tablist")) do
			local temp = data
			if n == 1 then
				temp[6] = {text = "->"}
			end
			if n == 2 then
				temp[1] = {text = "<-"}
			end
			if n == 1 then
				pool.gui.GenerateCustomTabs(tabs_1, temp, (function(x)
					if x.text == "->" then
						if pool.get('misc', 'page') == 1 then
							for i, v in pairs(pool.get('misc', 'menus')) do
								v.inner.misctab_pg1.Visible = false
								v.inner.misctab_pg2.Visible = true
							end
							pool.misc.page = 2
						end
					elseif x.text == "<-" then
						if pool.get('misc', 'page') == 2 then
							for i, v in pairs(pool.get('misc', 'menus')) do
								v.inner.misctab_pg1.Visible = true
								v.inner.misctab_pg2.Visible = false
							end
							pool.misc.page = 1
						end
					else
						pool.windows.open(x.text)
					end
				end), 3)
			end
			if n == 2 then
				pool.gui.GenerateCustomTabs(tabs_2, temp, (function(x)
					if x.text == "->" then
						if pool.get('misc', 'page') == 1 then
							for i, v in pairs(pool.get('misc', 'menus')) do
								v.inner.misctab_pg1.Visible = false
								v.inner.misctab_pg2.Visible = true
							end
							pool.misc.page = 2
						end
					elseif x.text == "<-" then
						if pool.get('misc', 'page') == 2 then
							for i, v in pairs(pool.get('misc', 'menus')) do
								v.inner.misctab_pg1.Visible = true
								v.inner.misctab_pg2.Visible = false
							end
							pool.misc.page = 1
						end
					else
						pool.windows.open(x.text)
					end
				end), 4)
			end
			tabs_2.Visible = false
			tabs_1.Visible = true
			-- using mouse because rc7 doesnt support userinputservice
			-- and austin is a lazy fuck who wont fix elysian
			player:GetMouse().KeyDown:connect(function(byte)
				if byte == 19 then
					if pool.get('misc', 'page') == 1 then
						tabs_1.Visible = false
						tabs_2.Visible = true
						pool.misc.page = 2
					end
				end
				if byte == 20 then
					if pool.get('misc', 'page') == 2 then
						tabs_2.Visible = false
						tabs_1.Visible = true
						pool.misc.page = 1
					end
				end
			end)
		end
	end
	pool.utility.CreateObject {
		Parent = pool.get("misc", "main").inner.min,
		Class = "TextLabel",
		Name = "miscfill",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		Position = UDim2.new(0, 0, 0, 0),
		Font = Enum.Font.SourceSans,
		FontSize = Enum.FontSize.Size42,
		Text = "Miscellaneous",
		TextColor3 = Color3.new(127/255, 209/255, 179/255),
		TextTransparency = 0.5
	}
	local expl = pool.get("misc", "explorer")
	local exm = game:GetObjects("rbxassetid://394831698")[1]
	for i, v in pairs(exm:GetChildren()) do
		v.Parent = expl.inner.min
	end
	
	localexplorer = expl.inner.min.ExplorerPanel
	localprop = expl.inner.min.PropertiesPanel
	
	loadstring(localexplorer.LocalScript.Source)()
	loadstring(localprop.Properties.Source)()

	--pool.gui.GenerateMiscBar = function(name, filltext, extext, height, execdo)
	
	local audwin = pool.get("misc", "muse")
	local curaud = 0
	local mode = 'ws'
	
	local function play (id)
		function re(o)
			for i,v in pairs(o:GetChildren()) do
				if v:IsA("Sound") then v:Stop() end re(v)
			end
		end
		re(game.Workspace)
		local aud = Instance.new("Sound")
		aud.Parent = (function() if mode=='ws' then return game.Workspace end if mode=='lp' then return player.Character.Torso end end)()
		aud.Volume = 1
		aud.Pitch = 1
		aud.Looped = true
		aud.RobloxLocked = true
		aud.SoundId = "rbxassetid://" .. tostring(id)
		aud:Play()
	end
	
	local mub = pool.gui.GenerateMiscBar('musicplay', 'Audio ID', 'Play', 30, (function()
		return
	end))
	
	local mxb = pool.gui.GenerateMiscBar('mswitch', 'nil', 'Parented to Workspace', 30, (function()end))
	mxb["bar~inp"].Parent = nil
	mxb["bar~ex"].Size = UDim2.new(1, 0, 1, 0)
	mxb["bar~ex"].Position = UDim2.new(0, 0, 0, 0)
	mxb["bar~ex"].Font = 'SourceSansLight'
	mxb.Position = UDim2.new(0, 8, 0, 40)
	mxb["bar~ex"].MouseButton1Down:connect(function()
		if mode == 'ws' then
			mode = 'lp'
			mxb["bar~ex"].Text = 'Parented to LocalPlayer'
			return
		end
		if mode == 'lp' then
			mode = 'ws'
			mxb["bar~ex"].Text = 'Parented to Workspace'
			return
		end
	end)
	
	mxb.Parent = audwin.inner.min
	
	mub["bar~ex"].MouseButton1Down:connect(function()
		play(tonumber(mub["bar~inp"].Text))
	end)
	
	mub.Parent = audwin.inner.min
	mub.Position = UDim2.new(0, 8, 0, 7)
	
	local mul = pool.utility.CreateObject {
		Class = "ScrollingFrame",
		Name = "musiclist",
		Parent = audwin.inner.min,
		BackgroundColor3 = Color3.new(3/255, 39/255, 40/255),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 8, 0, 74),
		Size = UDim2.new(1, -16, 1, -77),
		CanvasSize = UDim2.new(0, 0, 0, 0)
	}
	
	local audios = {
		{Name="Shrek",id=150771181},
		{Name="Pepe Song",id=264246827},
		{Name="Can Can", id=177080835},
		{Name="Spongebob",id=392876416},
		{Name="Meme Machine",id=298753336},
		{Name="Dora Trap Remix",id=365733241},
		{Name="Fight the Powah", id=399265714},
		{Name="Barney Trap Remix",id=365712663},
		
	}
	
	local comp = (function() local u={} for i, v in pairs(audios) do
		table.insert(u,{Text=v.Name,func=(function()play(v.id)mub["bar~inp"].Text=tostring(v.id)end)})
	end return u end)()
	
	pool.gui.GenerateButtonList(mul,
		comp,
		{
			NumberPerRow = 1,
			ButtonSeperation = 0,
			ButtonHeight = 40,
			BorderDistance = 8,
			
		},
		pool.utility.CreateObject {
			Class = "TextButton",
			BackgroundColor3 = Color3.new(39/255, 79/255, 78/255),
			BackgroundTransparency = 0.5,
			Size = UDim2.new(1, -4, 0, 40),
			Position = UDim2.new(0, 3, 0, 0),
			BorderSizePixel = 0,
			TextColor3 = Color3.new(1, 1, 1),
			FontSize = Enum.FontSize.Size14,
			Font = Enum.Font.SourceSans	
		}
	)

	-- i had permission from krystal dont judge	
	
	local gear = {	
	{name='Cloak of the Undying',id=94794833},
	{name='Mad Murderer Knife',id=170897263},
	{name='Hyperlaser Gun',id=130113146},
	{name='Intern Racing Chair 2014',id=169602388},
	{name='DarkHeart',id=16895215},
	{name='RoVacuum 2012',id=84418938},
	{name='Spray Paint',id=80576967},
	{name='Camping Lantern',id=123234545},
	{name='Attack Doge',id=257810065},
	{name='Rainbow Disco Hyperbike',id=215355157},
	{name='Raig Chair',id=151291980},
	{name='Explosive Super Glider',id=92142950},
	{name='Dual Plungers',id=114690870},
	{name='Gravity Coil',id=16688968},
	{name='Triple Plungers',id=161211085},
	{name='RAIG Table',id=110789105},
	{name='M1 Garand',id=94233286},
	{name='iLift Two',id=233520425},
	{name='Endless Summer Fireworks',id=162857391},
	{name='Sorcus Chair',id=96095042},
	{name='Tri-Laser 333',id=139578207},
	{name='RC Tiny Tank',id=277954704},
	{name='Robloxian Clone',id=284135286}}
	

	local gearwin = pool.get("misc", "gear")
	
	game:GetService("ContextActionService"):BindAction("pbar", (function() gearwin.playerbar:CaptureFocus() end), false, Enum.KeyCode.Equals)
	gearwin.playerbar.FocusLost:connect(function(e)
		if e == true then
			pool.define("global","CurrentPlayers",pool.utility.GetPlayers(gearwin.playerbar.Text))
			gearwin.playerbar.Text = ""
		end
	end)
	
	local function givegear (id)
		local gear = game:GetService('InsertService'):LoadAsset(id):GetChildren()[1]
		pool.players.doplayers(function(p)
			if p.Backpack then
				gear:Clone().Parent = p.Backpack
			end
		end)
	end
	
	local gba = pool.gui.GenerateMiscBar('geargive', 'Gear ID', 'Give', 30, (function()
		return
	end))
	
	gba["bar~ex"].MouseButton1Down:connect(function()
		givegear(tonumber(gba["bar~inp"].Text))
	end)
	
	gba.Parent = gearwin.inner.min
	gba.Position = UDim2.new(0, 8, 0, 7)
	
	local gls = pool.utility.CreateObject {
		Class = "ScrollingFrame",
		Name = "musiclist",
		Parent = gearwin.inner.min,
		BackgroundColor3 = Color3.new(3/255, 39/255, 40/255),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 8, 0, 42),
		Size = UDim2.new(1, -16, 1, -46),
		CanvasSize = UDim2.new(0, 0, 0, 0)
	}

	local compx = (function() local u={} for i, v in pairs(gear) do
		table.insert(u,{Text=v.name,func=(function()givegear(v.id)gba["bar~inp"].Text=tostring(v.id)end)})
	end return u end)()
	
	pool.gui.GenerateButtonList(gls,
		compx,
		{
			NumberPerRow = 1,
			ButtonSeperation = 0,
			ButtonHeight = 40,
			BorderDistance = 8,
			
		},
		pool.utility.CreateObject {
			Class = "TextButton",
			BackgroundColor3 = Color3.new(39/255, 79/255, 78/255),
			BackgroundTransparency = 0.5,
			Size = UDim2.new(1, -4, 0, 40),
			Position = UDim2.new(0, 3, 0, 0),
			BorderSizePixel = 0,
			TextColor3 = Color3.new(1, 1, 1),
			FontSize = Enum.FontSize.Size14,
			Font = Enum.Font.SourceSans	
	})
	
	local fmwin = pool.get("misc", "fma")
	
	local fmlist = pool.utility.CreateObject {
		Class = "ScrollingFrame",
		Name = "fmalist",
		Parent = fmwin.inner.min,
		BackgroundColor3 = Color3.new(3/255, 39/255, 40/255),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 8, 0, 4),
		Size = UDim2.new(1, -16, 1, -8),
		CanvasSize = UDim2.new(0, 0, 0, 0)
	}
	
	function state(n)
		pool.utility.SpawnState(n)
	end
	
	game:GetService("ContextActionService"):BindAction("pbar", (function() fmwin.playerbar:CaptureFocus() end), false, Enum.KeyCode.Equals)
	fmwin.playerbar.FocusLost:connect(function(e)
		if e == true then
			pool.define("global","CurrentPlayers",pool.utility.GetPlayers(fmwin.playerbar.Text))
			fmwin.playerbar.Text = ""
		end
	end)
	

	pool.gui.GenerateButtonList(fmlist,
	{
		{Text = "God [P]", func = (function() 
			pool.utility.DoFE(function()
				player.Character.Humanoid.MaxHealth = 999999
				player.Character.Humanoid.Health = 100
			end)
		end)},
		{Text = "Speed", func = (function() 
			pool.utility.DoFE(function()
				player.Character.Humanoid.WalkSpeed = 30
			end)
		end)},
		{Text = "Shutdown [P]", func = (function()
			pool.utility.DoFE(function()
				for i=1,3000 do
					game.RobloxReplicatedStorage.NewFollower:FireServer("a")
				end
			end)
		end)},
		{Text = "LoopSit", func = (function()
			pool.utility.DoFE(function()
				for i,v in pairs(game.Players:GetPlayers()) do
					if v.Character.Humanoid then
						v.Character.Humanoid.Sit = true
					end
				end
			end)
		end)},
		{Text = "LoopJump", func = (function() 
			pool.utility.DoFE(function()
				for i,v in pairs(game.Players:GetPlayers()) do
					if v.Character.Humanoid then
						v.Character.Humanoid.Jump = true
					end
				end
			end)
		end)},
		{Text = "StopAll", func = (function() pool.global.runstate = false end)},
		{Text = "Highjump", func = (function()
			pool.utility.DoFE(function()
				t.player.Character.Humanoid.JumpPower = 100
			end)
		end)},
		{Text = "KillPlayers", func = (function() 
			pool.players.doplayers(function(p) -- using other page libs haahahahahahah such a rebel
				coroutine.wrap(function()
				local we = Instance.new("Weld", player.Character.Torso)
				we.Part0 = player.Character.Torso
				we.Part1 = p.Character.Torso
				we.C0 = player.Character.Torso.CFrame
				we.C1 = player.Character.Torso.CFrame * CFrame.new(0, -10000, 0)
				wait(0.5)
				we:Destroy()
				end)()
			end)
		end)},
		{Text = "BringPlayers", func = (function() 
			pool.players.doplayers(function(p)
				local we = Instance.new("Weld", t.player.Character.Torso)
				we.Part0 = player.Character.Torso
				we.Part1 = p.Character.Torso
				we.C0 = player.Character.Torso.CFrame
				we.C1 = player.Character.Torso.CFrame
			end)
		end)},
		{Text = "Annoy", func = (function() 
			pool.utility.DoFE(function()
				for i,v in pairs(game.Players:GetPlayers()) do
					if v.Character.Humanoid then
						v.Character.Humanoid.Jump = true
						v.Character.Humanoid.Sit = true
					end
				end
			end)
		end)},		
		{Text = "NoFace", func = (function()
			spawn(function()
				player.Character.Head.face.Parent = nil
			end)
		end)},
		{Text = "Ragdoll (LP)", func = (function() 
			player.Character.Humanoid.Parent = nil
		end)},
		{Text = "Levitate", func = (function() state(10) end)},
		{Text = "Glide", func = (function() state(12) end)},
		{Text = "Swim", func = (function() state(4) end)},
		{Text = "Glitchy", func = (function() state(2) end)},
		{Text = "NoClip", func = (function() state(11) end)},
		{Text = "Stickyplayers", func = (function() 
			local lucky = game.Players:GetPlayers()[math.random(1,#game.Players:GetPlayers())]
			pool.utility.DoFE(function()
				for i,v in pairs(game.Players:GetPlayers()) do if v.Name ~= player.Name then
				local we = Instance.new("Weld", player.Character.Torso)
					we.Part0 = player.Character.Torso
					we.Part1 = v.Character.Torso
					we.C0 = player.Character.Torso.CFrame
					we.C1 = lucky.Character.Torso.CFrame
				end end
			end)
		end)},
		},
	{
		NumberPerRow = 2,
		ButtonSeperation = 0,
		ButtonHeight = 31,
		BorderDistance = 10,
		
	},
	pool.utility.CreateObject {
		Class = "TextButton",
		BackgroundColor3 = Color3.new(39/255, 79/255, 78/255),
		BackgroundTransparency = 0.5,
		Size = UDim2.new(0.5, -10, 0, 31),
		Position = UDim2.new(0, 8, 0, 0),
		BorderSizePixel = 0,
		TextColor3 = Color3.new(1, 1, 1),
		FontSize = Enum.FontSize.Size14,
		Font = Enum.Font.SourceSans	
	})
	
	local memwin = pool.get("misc", "memes")
	local curmeme = 0

	pool.define("global","CurrentPlayers",pool.utility.GetPlayers('me'))
	
	game:GetService("ContextActionService"):BindAction("pbar", (function() memwin.playerbar:CaptureFocus() end), false, Enum.KeyCode.Equals)
	memwin.playerbar.FocusLost:connect(function(e)
		if e == true then
			pool.define("global","CurrentPlayers",pool.utility.GetPlayers(memwin.playerbar.Text))
			memwin.playerbar.Text = ""
		end
	end)

	local memlist = pool.utility.CreateObject {
		Class = "ScrollingFrame",
		Name = "memes",
		Parent = memwin.inner.min,
		BackgroundColor3 = Color3.new(3/255, 39/255, 40/255),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 8, 0, 130),
		Size = UDim2.new(1, -16, 1, -135),
		CanvasSize = UDim2.new(0, 0, 0, 0)
	}
	
	local imgprev = pool.utility.CreateObject {
		Class = "ImageLabel",
		Parent = memwin.inner.min,
		BorderSizePixel = 0,
		Position = UDim2.new(0, 5, 0, 5),
		Size = UDim2.new(0, 100, 0, 100),
		Image = "rbxassetid://133293265"
	}
	
	local function wearmeme(id)
		pool.players.doplayers(function(p)
			pool.utility.meme(tostring(id), p.Character)
		end)
	end
	
	local function setprev(id)
		imgprev.Image = "rbxassetid://"..tostring(id)
	end
	
	local memd = pool.gui.GenerateMiscBar('memewear', 'Image ID', 'Wear', 30, (function()
		return
	end))
	
	memd["bar~ex"].MouseButton1Down:connect(function()
		setprev(tonumber(memd["bar~inp"].Text))
		wearmeme(tonumber(memd["bar~inp"].Text))end)
	
	memd.Size = UDim2.new(1, -130, 0, 30)
	memd.Position = UDim2.new(0, 120, 0, 40)
	memd.Parent = memwin.inner.min
	
	-- KRYSTAL GAVE ME PERMISSION DONT JUDGE
	local memes = {	
	{name='Barackoli',id=178408986},
	{name='Rofl',id=47595647},
	{name='Sparta',id=74142203},
	{name='UJelly',id=48989071},
	{name='Troll',id=45120559},
	{name='Horse',id=62079221},
	{name='Angry',id=48258623},
	{name='Okey',id=62830600},
	{name='Yeaw',id=53646377},
	{name='Here',id=62677045},
	{name='Har',id=48260066},
	{name='Baby Sun',id=47596170},
	{name='LOL',id=48293007},
	{name='Sad',id=53645378},
	{name='Joseph Stalin',id=48290678},
	{name='Doge',id=130742396},
	{name='For Ever Alone',id=156886272},
	{name='RickRoll',id=5104631},
	{name='Jim Carrey',id=74885351},
	{name='Meh IRL',id=237553381}}
	
	local compy = (function() local u={} for i, v in pairs(memes) do
		table.insert(u,{Text=v.name,func=(function()wearmeme(v.id)setprev(v.id)memd["bar~inp"].Text=tostring(v.id)end)})
	end return u end)()
	
	pool.gui.GenerateButtonList(memlist,
		compy,
		{
			NumberPerRow = 1,
			ButtonSeperation = 0,
			ButtonHeight = 40,
			BorderDistance = 8,
			
		},
		pool.utility.CreateObject {
			Class = "TextButton",
			BackgroundColor3 = Color3.new(39/255, 79/255, 78/255),
			BackgroundTransparency = 0.5,
			Size = UDim2.new(1, -4, 0, 40),
			Position = UDim2.new(0, 3, 0, 0),
			BorderSizePixel = 0,
			TextColor3 = Color3.new(1, 1, 1),
			FontSize = Enum.FontSize.Size14,
			Font = Enum.Font.SourceSans	
	})
	
	local hats={	
	{name='Dominus Empyreus',id=21070012},
	{name='Dominus Vespertilio',id=96103379},
	{name='Dominus Infernus',id=31101391},
	{name='Dominus Rex',id=250395631},
	{name='Dominus Frigidus',id=48545806},
	{name='Dominus Astra',id=162067148},
	{name='Dominus Aureus',id=138932314},
	{name='DIY Dominus Empyreus',id=151789690},
	{name='Dominus Messor',id=64444871},
	{name='Demon Skeleton Wings',id=133554007},
	{name='Gilded Wings of Glory',id=250405532},
	{name='Majestic Ice Wings',id=188702967},
	{name='Black Wings',id=215719598},
	{name='Clockworks Shades',id=11748356},
	{name='Faerie Wings',id=19399896},
	{name='Orinthian Wings',id=223751505},
	{name='Clockworks Headphones',id=1235488},
	{name='Perfectly Legitimate Business Hat',id=19027209},
	{name='Sparkling Angel Wings',id=192557913},
	{name='Commander Crows Wings',id=133553855},
	{name='Sunfire Wings',id=158068470},
	{name='Royal Faerie Wings',id=119916756},
	{name='Wings of Freedom',id=164174048},
	{name='Firebrand Wings',id=128160626},
	{name='Frozen Wings',id=136758613},
	{name='Webbed Wings',id=120507280},
	{name='Gargoyle Wings',id=120507201},
	{name='Bat Wings',id=19399858},
	{name='Wings of Fire',id=136758532},
	{name='Headrow',id=1082935},
	{name='Rubber Duckie',id=9254254},
	{name='Valkyrie Helm',id=1365767},
	{name='Hockey Mask',id=5161514}}
	
	local hatwin = pool.get("misc", "hats")
	
	game:GetService("ContextActionService"):BindAction("pbar", (function() hatwin.playerbar:CaptureFocus() end), false, Enum.KeyCode.Equals)
	hatwin.playerbar.FocusLost:connect(function(e)
		if e == true then
			pool.define("global","CurrentPlayers",pool.utility.GetPlayers(hatwin.playerbar.Text))
			hatwin.playerbar.Text = ""
		end
	end)
	
	local function givehat (id)
		local hat = game:GetService('InsertService'):LoadAsset(id):GetChildren()[1]
		pool.players.doplayers(function(p)
			if p.Character then
				hat:Clone().Parent = p.Character
			end
		end)
	end
	
	local hba = pool.gui.GenerateMiscBar('hatgive', 'Hat ID', 'Wear', 30, (function()
		return
	end))
	
	hba["bar~ex"].MouseButton1Down:connect(function()
		givehat(tonumber(hba["bar~inp"].Text))
	end)
	
	hba.Parent = hatwin.inner.min
	hba.Position = UDim2.new(0, 8, 0, 7)
	
	local hls = pool.utility.CreateObject {
		Class = "ScrollingFrame",
		Name = "gearlist",
		Parent = hatwin.inner.min,
		BackgroundColor3 = Color3.new(3/255, 39/255, 40/255),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 8, 0, 42),
		Size = UDim2.new(1, -16, 1, -46),
		CanvasSize = UDim2.new(0, 0, 0, 0)
	}

	local compg = (function() local u={} for i, v in pairs(hats) do
		table.insert(u,{Text=v.name,func=(function()givehat(v.id)hba["bar~inp"].Text=tostring(v.id)end)})
	end return u end)()
	
	pool.gui.GenerateButtonList(hls,
		compg,
		{
			NumberPerRow = 1,
			ButtonSeperation = 0,
			ButtonHeight = 40,
			BorderDistance = 8,
			
		},
		pool.utility.CreateObject {
			Class = "TextButton",
			BackgroundColor3 = Color3.new(39/255, 79/255, 78/255),
			BackgroundTransparency = 0.5,
			Size = UDim2.new(1, -4, 0, 40),
			Position = UDim2.new(0, 3, 0, 0),
			BorderSizePixel = 0,
			TextColor3 = Color3.new(1, 1, 1),
			FontSize = Enum.FontSize.Size14,
			Font = Enum.Font.SourceSans	
	})
	
	local credwin = pool.get("misc", "creds")
	local cbox = pool.utility.CreateObject {
		Class = "ScrollingFrame",
		Name = "cboxm",
		Parent = credwin.inner.min,
		BackgroundColor3 = Color3.new(3/255, 39/255, 40/255),
		BorderSizePixel = 0,
		Position = UDim2.new(0, 5, 0, 5),
		Size = UDim2.new(1, -10, 1, -10),
		CanvasSize = UDim2.new(0, 0, 0, 300)
	}
	local ctxt = pool.utility.CreateObject {
		Class = "TextLabel",
		Name = "creds",
		Parent = cbox,
		Position = UDim2.new(0, 5, 0, 5),
		Size = UDim2.new(1, -10, 1, -10),
		TextXAlignment = 'Center',
		TextYAlignment = 'Top',
		TextWrapped = true,
		Font = Enum.Font.SourceSans,
		FontSize = Enum.FontSize.Size24,
		TextColor3 = Color3.new(220/255, 220/255, 220/255),
		BackgroundTransparency = 1
	}
	
	ctxt.Text = [[
		~ CREDITS ~
		
		nosyliam - created T0PK3K
		austin - created elysian x3
		brocsquad - testing/moral support
		variable - various functions
		pingu-kun - "moral support"
		haneyr2 - some stuff and testing
		circumvention - made a funny face
		KrystalTeam - provided ALOT of data
		
		Thank you for using T0PK3K 2.0!
		
	]]
	
	--pool.chatbox.gen(pool.get("misc", "chatbox").inner.min)
end
--- init ---

--game:GetService("ContentProvider"):Preload("rbxassetid://393519357")
--while (game:GetService("ContentProvider").RequestQueueSize > 0) do
--	wait()
--end


function splash()
	local SplashMain = pool.utility.CreateObject { Class = "ScreenGui"}
	local SplashFrame = pool.utility.CreateObject {
		Class = "Frame",
		Parent = SplashMain,
		BackgroundColor3 = Color3.new(1/255, 34/255, 36/255),
		BorderSizePixel = 0,
		Position = UDim2.new(0.5, -140, 0.5, -60),
		Size = UDim2.new(0, 240, 0, 100)
	}
	local SplashTextMain = pool.utility.CreateObject {
		Class = "TextButton",
		Name = "open",
		Parent = SplashFrame,
		Visible = true,
		TextScaled = true,
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 15, 0, 15),
		Size = UDim2.new(1, -30, 1, -30),
		Font = Enum.Font.SourceSansLight,
		FontSize = Enum.FontSize.Size42,
		TextColor3 = Color3.new(203/255, 203/255, 203/255),
		Text = "T0PK3K 2.0"
	}
	SplashMain.Parent = player.PlayerGui
	wait(2.5)
        SplashFrame.Size = UDim2.new(0,150,0,30)
        SplashFrame.Position = UDim2.new(0.5,0,1,-25)
        --SplashTextMain.Size = UDim2.new(1, -8, 1, -8)
        --SplashTextMain.Position = UDim2.new(0, 4, 0, 4)
	SplashFrame:TweenSizeAndPosition(UDim2.new(0,150,0,30),UDim2.new(0.8,0,1,-25))
	SplashTextMain:TweenSizeAndPosition(UDim2.new(1, -8, 1, -8),UDim2.new(0,4,0,4))
	return SplashTextMain
end

spawn(function()

local spl = splash()
spl.MouseButton1Down:connect(function()
	warn('[T0PK3K dbg]: GUI Open Requested')
	spl.Parent.Visible = false
	pool.get("global", "root").Visible = true
end)

local servtime_s = tick()
local lptime_s = tick()
local pltime_s = tick()
local sctime_s = tick()
local misctime_s = tick()
pool.server.initialize(); local servtime_e = tick(); warn('[T0PK3K dbg: passed serv init')
pool.localplayer.initialize(); local lptime_e = tick(); warn('[T0PK3K dbg: passed lp init')
pool.players.initialize(); local pltime_e = tick(); warn('[T0PK3K dbg: passed plrs init')
pool.scripts.initialize(); local sctime_e = tick(); warn('[T0PK3K dbg: passed script init')
pool.misc.initialize(); local misctime_e = tick(); warn('[T0PK3K dbg: passed misc init')

local ab = math.abs

warn([[ 
	[T0PK3K dbg]: Load Time Data: 
	Server: ]].. tostring(ab(servtime_s - servtime_e))..[[s
	LocalPlayer: ]].. tostring(ab(lptime_s - lptime_e))..[[s
	Players: ]].. tostring(ab(pltime_s - pltime_e))..[[s
	Scripts: ]].. tostring(ab(sctime_s - sctime_e))..[[s
	Miscellaneous: ]].. tostring(ab(misctime_s - misctime_e))..[[s
]])

---esp(av(),dw());am()

game.StarterGui.ResetPlayerGuiOnSpawn = false
pool.get("global", "gui").Parent = game.CoreGui
pool.get("global", "root").Visible = false

pool.get("global", "main").Visible = true
pool.get("global", "root").template.Visible = false

--uk.Parent = game.CoreGui

if getgenv then
	printconsole("T0PK3K 2.0 Successfully Initiated!", 75, 75, 151)
	printconsole(" ~ Created by the Broccoli Squad ~ ", 0, 165, 80)
end

local top = pool.get('global', 'root').topbar
top['exit'].Parent = nil
top['info'].Parent = nil

-- too lazy to update gui, just selfgenn

if player.Name == 'jeopardizer' or player.Name == 'Godscoper' then
pool.utility.CreateObject {
	Class = 'TextButton',
	Name = 'close',
	Parent = top,
	BackgroundColor3 = BrickColor.new('Bright red').Color,
	BorderSizePixel = 0,
	Position = UDim2.new(1, -60, 0, 0),
	Size = UDim2.new(0, 30, 1, 0),
	Text = ''
}.MouseButton1Down:connect(function()
	pool.get('global', 'gui').Parent=nil
end) end

pool.utility.CreateObject {
	Class = 'TextButton',
	Name = 'exit',
	Parent = top,
	BackgroundColor3 = Color3.new(10/255, 81/255, 81/255),
	BorderSizePixel = 0,
	Position = UDim2.new(1, -30, 0, 0),
	Size = UDim2.new(0, 30, 1, 0),
	Text = ''
}.MouseButton1Down:connect(function()
	spl.Parent.Visible = true
	pool.get('global', 'root').Visible = false
end) end) end)