print'wasteoftime :('
plr=game.Players.LocalPlayer
meme=Instance.new('Tool',plr.Backpack)
meme.GripForward=Vector3.new(-0.216,0,-0.976)
meme.GripPos=Vector3.new(0,-0.3,-0.2)
meme.GripRight=Vector3.new(0.976,0,-0.216)
meme.GripUp=Vector3.new(0,1,0)
meme.Name='M4'
meme.CanBeDropped=false
hd=Instance.new('Part',meme)
hd.Name='Handle'
hd.Position=Vector3.new(2.9,2.619,-11.019)
hd.Rotation=Vector3.new(-180,-0,180)
hd.Size=Vector3.new(0.257,0.2,0.321)
hd.BrickColor=BrickColor.new('Black')
mz=Instance.new('Part',meme)
mz.Name='Muzzle'
mz.BrickColor=BrickColor.new('Black')
mz.Position=Vector3.new(2.9,2.948,-7.731)
mz.Rotation=Vector3.new(90,0,0)
mz.Size=Vector3.new(0.2,0.2,0.2)
mg=Instance.new('Part',meme)
mg.Name='Magazine'
mg.BrickColor=BrickColor.new('Medium stone grey')
mg.Position=Vector3.new(2.9,2.265,-10.377)
mg.Rotation=Vector3.new(-180,-0,180)
mg.Size=Vector3.new(0.2,0.53,0.289)
st=Instance.new('Part',meme)
st.BrickColor=BrickColor.new('Black')
st.Reflectance=0.2
st.Transparency=1
st.Name='Sights'
st.Position=Vector3.new(2.9,3.358,-10,345)
st.Rotation=Vector3.new(-180,0,0)
st.Size=Vector3.new(0.2,0.2,0.2)
port=Instance.new('Part',meme)
port.Name='Port'
port.BrickColor=BrickColor.new('Dark stone grey')
port.Transparency=1
port.CanCollide=false
port.Size=Vector3.new(0.2,0.2,0.354)
port.Position=Vector3.new(2.555, 4.507, -10.409)
msh1=Instance.new('BlockMesh',st)
msh1.Scale=Vector3.new(0.08,0.016,0.08)
bg=Instance.new('BillboardGui',st)
bg.Active=false
bg.Enabled=true
bg.Size=UDim2.new{0.02,0},{0.02,0}
il=Instance.new('ImageLabel',bg)
il.BackgroundColor3=Color3.new(163,162,165)
il.BackgroundTransparency=1
il.BorderColor3=Color3.new(27,42,53)
il.Visible=true
il.ZIndex=1
il.Image='rbxassetid://131394739'
il.ImageColor3=Color3.new(255,255,255)
nac=Instance.new('Sound',hd)
nac.SoundId='rbxasset://sounds/switch.wav'
nac.Name='NoAmmoClick'
nac.Pitch=2
nac.Volume=1
mo=Instance.new('Sound',hd)
mo.Name='MagazineOut'
mo.SoundId='rbxassetid://131045401'
mo.Volume=1
mo.Pitch=0.85
ss=Instance.new('Sound',hd)
ss.Name='ShootSound'
ss.Pitch=0.75
ss.Volume=1
ss.SoundId='rbxassetid://130767489'
fmc=Instance.new('Sound',hd)
fmc.Name='FireModeClick'
fmc.Volume=1
fmc.Pitch=1.5
fmc.SoundId='rbxasset://sounds/switch.wav'
mi=Instance.new('Sound',hd)
mi.Name='MagazineIn'
mi.Volume=1
mi.Pitch=0.9
mi.SoundId='rbxassetid://131045429'
hg=Instance.new('ScreenGui',script)
hg.Name='HudGui'
fr=Instance.new('Frame',hg)
fr.Active=false
fr.BackgroundColor3=Color3.new(163,162,165)
fr.BackgroundTransparency=0
fr.Position=UDim2.new{1,-30},{1,-125}
fr.Size=UDim2.new{0,-215},{0,-90}
fr.Style='RobloxRound'
ilab=Instance.new('ImageLabel',hg)
ilab.Name='ClipPic'
ilab.Position=UDim2.new{1,-105},{1,-140}
ilab.Size=UDim2.new{0,-8},{0,-15}
all=Instance.new('TextLabel',hg)
all.Name='AmmoLoadedLabel'
all.Position=UDim2.new{1,-185},{1,-135}
all.Size=UDim2.new{0,0},{0,-30}
all.TextXAlignment='Right'
all.TextYAlignment='Bottom'
all.Text='20'
all.FontSize='Size36'
all.TextColor3=Color3.new(255,255,255)
aml=Instance.new('TextLabel',hg)
aml.Name='AmmoMaxLabel'
aml.BackgroundColor3=Color3.new(253,251,255)
aml.Position=UDim2.new{1,-165},{1,-130}
aml.Size=UDim2.new{0,0},{0,-30}
aml.FontSize='Size24'
aml.Text='20'
aml.TextColor3=Color3.new(255,255,255)
aml.TextWrapped=true
aml.TextXAlignment='Left'
aml.TextYAlignment='Bottom'
mgl=Instance.new('TextLabel',hg)
mgl.Name='MagazinesCarriedLabel'
mgl.Position=UDim2.new{1,-100},{1,-140}
mgl.Size=UDim2.new{0,0},{0,-15}
mgl.FontSize='Size10'
mgl.Text='x 6'
mgl.TextColor3=Color3.new(255,255,255)
mgl.TextXAlignment='Left'
ml=Instance.new('TextLabel',hg)
ml.Name='ModeLabel'
ml.Position=UDim2.new{1,-40},{1,-165}
ml.Size=UDim2.new{0,0},{0,-30}
ml.FontSize='Size8'
ml.Text='Auto'
ml.TextColor3=Color3.new(255,255,255)
ml.TextXAlignment='Right'
pol=Instance.new('PointLight',mz)
pol.Color=Color3.new(255,252,222)
pol.Range=30
pol.Enabled=false
pol.Shadows=true
bilgui=Instance.new('BillboardGui',mz)
bilgui.Size=UDim2.new{2,0},{2,0}
flash=Instance.new('ImageLabel',bilgui)
flash.Name='Flash'
flash.Size=UDim2.new{1,1},{1,1}
flash.Image='rbxassetid://131435802'
flash.ClipsDescendants=true










--1:21am what am i doing with my life















print'bored af'
NewInstance = function(class,parent,properties) pcall(function()
	local instance = Instance.new(class,parent)
	for i,v in next, properties do
		pcall(function()
			instance[i] = v
		end)
	end end)
end 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.9000001, 3.1732378, -11.0837774, 0.99999553, 4.9737978e-014, 2.98024254e-008, 1.27897692e-013, 0, -0.999994874, 5.68434189e-014, 0.999992728, 0),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.9000001, 3.1732378, -11.0837774),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(90, 1.70755322e-006, -2.84978898e-012),["Size"] = Vector3.new(0.200000003, 0.289285719, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.0764",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.89196634, 3.16519642, -11.2203846, 0.99999553, 4.9737978e-014, 2.98024254e-008, 1.27897692e-013, 0, -0.999994874, 5.68434189e-014, 0.999992728, -0),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.89196634, 3.16519642, -11.2203846),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(90, 1.70755322e-006, -2.84978898e-012),["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.0843",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.96428514, 3.16523004, -11.2203999, -0.99999553, -2.98028233e-008, -7.10542668e-014, -1.56319402e-013, 1.00000906, -2.98023206e-008, -4.26325641e-014, 0, -1.00000679),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.96428514, 3.16523004, -11.2203999),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(180, -4.07110977e-012, 180),["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.0913",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.81964374, 3.16519642, -11.2203846, -0.99999553, -2.9802429e-008, -4.97379813e-014, -1.27897692e-013, 0.999994934, 0, -5.68434189e-014, 0, -0.999992788),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.81964374, 3.16519642, -11.2203846),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(-180, -2.8497764e-012, 180),["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.0984",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.9000001, 2.20886159, -11.2389774, -0.99999553, -5.75346348e-009, -1.67245645e-007, -5.88036038e-008, 0.866033137, 0.50000447, 1.4196371e-007, 0.500003338, -0.86603117),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.9000001, 2.20886159, -11.2389774),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(-149.999939, -9.58246983e-006, 180),["Size"] = Vector3.new(0.257142872, 0.200000003, 0.372857153),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.106",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.89196634, 2.61074972, -12.1123514, -0.99999553, 7.10542736e-014, -2.98026137e-008, -1.56319402e-013, 0, 1.00000203, -4.26325641e-014, 0.999999821, -2.98023224e-008),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.89196634, 2.61074972, -12.1123514),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(-90, -1.70756402e-006, -180),["Size"] = Vector3.new(0.200000003, 0.200000003, 0.482142866),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.1135",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.89196634, 2.81969213, -11.7266521, -0.99999553, 7.10542736e-014, -2.98028269e-008, -1.56319402e-013, 2.98023224e-008, 1.00000918, -4.26325641e-014, 1.00000691, 0),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.89196634, 2.81969213, -11.7266521),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(-90, -1.70757619e-006, -180),["Size"] = Vector3.new(0.200000003, 0.70714283, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.1211",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.89999604, 2.94824791, -8.39021873, 1, 0, 0, 0, 0, -1, 0, 1, 0),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.89999604, 2.94824791, -8.39021873),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(90, 0, -0),["Size"] = Vector3.new(0.200000003, 0.819642842, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.1283",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.90000367, 3.26965809, -10.3525314, 0.999992251, 8.97060204e-014, 0, 2.98023224e-008, 5.18696197e-013, -0.999991953, 8.43769499e-014, 0.999988556, -4.68958206e-013),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.90000367, 3.26965809, -10.3525314),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(90, 0, -5.13981652e-012),["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.1354",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.9000001, 3.17323875, -10.6578856, 0.99999553, 4.97379915e-014, 2.98024432e-008, 1.27897692e-013, 3.5655444e-013, -0.999995232, 5.68434189e-014, 0.999993086, -2.99711021e-013),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.9000001, 3.17323875, -10.6578856),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(90, 1.70755425e-006, -2.84978985e-012),["Size"] = Vector3.new(0.200000003, 1.04464281, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.1424",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Sand green"),["CFrame"] = CFrame.new(2.89999604, 2.74735451, -10.1757507, 1, 0, 0, 0, -1, 0, 0, 0, -1),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.89999604, 2.74735451, -10.1757507),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(-180, 0, -0),["Size"] = Vector3.new(0.241071433, 0.200000003, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.1503",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Sand green"),["CFrame"] = CFrame.new(2.89999604, 2.90003395, -9.46700001, 1, 0, 0, 0, 0, -1, 0, 1, 0),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.89999604, 2.90003395, -9.46700001),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(90, 0, -0),["Size"] = Vector3.new(0.353571415, 1.20535719, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.1573",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.80679369, 3.41374969, -10.3444948, -0.499995828, 2.29307702e-007, -0.866018116, -0.866017878, 3.57156011e-007, 0.499995649, 4.23957289e-007, 0.999987423, 2.00085406e-008),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.80679369, 3.41374969, -10.3444948),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(-90, -59.9991608, -179.999985),["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.1641",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.80679226, 3.30234194, -10.3444958, 0.499996185, 8.31439095e-009, -0.866018713, -0.866018474, -4.13873025e-008, -0.499996066, -4.00002769e-008, 0.999988556, -1.34937821e-008),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.80679226, 3.30234194, -10.3444958),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(90, -59.9992294, -9.52766243e-007),["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.1713",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.9000001, 3.27769995, -10.5936003, -0.99999553, -2.98024432e-008, -4.97379915e-014, -1.27897692e-013, 0.999995232, -3.5655444e-013, -5.68434189e-014, 2.99711021e-013, -0.999993086),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.9000001, 3.27769995, -10.5936003),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(180, -2.84977705e-012, 180),["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.1791",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.89999604, 3.1732502, -9.46700001, 1, 0, 0, 0, 0, -1, 0, 1, 0),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.89999604, 3.1732502, -9.46700001),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(90, 0, -0),["Size"] = Vector3.new(0.200000003, 1.17321432, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.1867",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.89999604, 2.90003395, -9.46700001, 1, 0, 0, 0, 0, -1, 0, 1, 0),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.89999604, 2.90003395, -9.46700001),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(90, 0, -0),["Size"] = Vector3.new(0.241071433, 1.17321432, 0.482142866),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.1937",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.99321699, 3.30234647, -10.3444967, -0.499997258, -2.7864683e-008, -0.866020679, -0.866020441, -2.77575367e-008, 0.499997139, -3.79716809e-008, 0.999991953, -1.02524673e-008),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.99321699, 3.30234647, -10.3444967),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(-90, -59.9994545, 180),["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.2007",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.90000486, 3.16518545, -10.4650278, 1, -9.77005139e-014, 0, 0, 6.56372797e-013, -1, 9.77005139e-014, 1, 6.56372743e-013),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.90000486, 3.16518545, -10.4650278),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(90, 0, 5.59782732e-012),["Size"] = Vector3.new(0.200000003, 0.401785702, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.2081",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.99321818, 3.41375446, -10.3444958, 0.499996662, 2.10877545e-007, -0.866019607, -0.866019428, 3.40827597e-007, -0.499996543, 1.89725256e-007, 0.999989688, 3.53037279e-007),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.99321818, 3.41375446, -10.3444958),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(89.9999619, -59.9993324, -2.41649486e-005),["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.2158",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Sand green"),["CFrame"] = CFrame.new(2.90000296, 2.61876988, -10.3766384, -0.999992728, 0, -8.52651283e-014, 0, 0.99999249, -5.25801624e-013, -8.52651283e-014, 4.54747351e-013, -0.999988556),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.90000296, 2.61876988, -10.3766384),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(180, -4.88533216e-012, -180),["Size"] = Vector3.new(0.241071433, 0.200000003, 0.321428567),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.2229",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.89999604, 2.94824791, -9.46700001, 1, 0, 0, 0, 0, -1, 0, 1, 0),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.89999604, 2.94824791, -9.46700001),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(90, 0, -0),["Size"] = Vector3.new(0.289285719, 1.33392859, 0.289285719),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.2299",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Sand green"),["CFrame"] = CFrame.new(2.89999604, 2.94824791, -9.46700001, 1, 0, 0, 0, 0, -1, 0, 1, 0),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.89999604, 2.94824791, -9.46700001),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(90, 0, -0),["Size"] = Vector3.new(0.353571415, 1.20535719, 0.353571415),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.2373",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Sand green"),["CFrame"] = CFrame.new(2.89999604, 2.85181999, -9.46700001, 1, 0, 0, 0, 0, -1, 0, 1, 0),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.89999604, 2.85181999, -9.46700001),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(90, 0, -0),["Size"] = Vector3.new(0.353571415, 1.20535719, 0.353571415),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.2453",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.90000486, 3.22947073, -10.5132418, 1, -9.77005139e-014, 0, 0, 6.56372797e-013, -1, 9.77005139e-014, 1, 6.56372743e-013),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.90000486, 3.22947073, -10.5132418),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(90, 0, 5.59782732e-012),["Size"] = Vector3.new(0.200000003, 0.498214275, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.2522",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.90000486, 3.26965427, -10.4891348, -1, 0, 9.77005071e-014, 0, 0.99999994, -6.56372743e-013, -9.77005139e-014, -6.56372688e-013, -0.99999994),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.90000486, 3.26965427, -10.4891348),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(180, 5.59782689e-012, -180),["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.2592",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.90000486, 3.43840027, -10.3444948, 0.99999094, 1.03028697e-013, -2.98023224e-008, 0, 6.56363852e-013, -0.999990702, 9.76996262e-014, 0.999986291, -5.89750471e-013),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.90000486, 3.43840027, -10.3444948),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(90, -1.70754731e-006, -5.90316294e-012),["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.2666",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(3.00767732, 3.35860062, -10.3444977, 5.96046235e-008, -4.30522995e-008, -0.999995351, -0.999995053, 1.18360141e-007, -2.98023082e-008, 1.18359246e-007, 0.999993086, -4.30523102e-008),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(3.00767732, 3.35860062, -10.3444977),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(145.307678, -89.8252869, 35.8405075),["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.2743",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.79232669, 3.35859346, -10.3444958, 2.98021039e-008, -4.30521396e-008, -0.999992549, -0.999992311, 1.18359985e-007, -2.98020986e-008, 1.1835855e-007, 0.999988556, -4.30521432e-008),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.79232669, 3.35859346, -10.3444958),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(145.307755, -89.7788315, 55.3077469),["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.2815",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.9000001, 3.27769995, -10.690032, 0.99999553, 4.97379915e-014, 2.98024432e-008, 1.27897692e-013, 3.5655444e-013, -0.999995232, 5.68434189e-014, 0.999993086, -2.99711021e-013),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.9000001, 3.27769995, -10.690032),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(90, 1.70755425e-006, -2.84978985e-012),["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.289",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.9000001, 3.11698747, -10.6980658, -0.99999553, -2.98024432e-008, -4.97379915e-014, -1.27897692e-013, 0.999995232, -3.5655444e-013, -5.68434189e-014, 2.99711021e-013, -0.999993086),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.9000001, 3.11698747, -10.6980658),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(180, -2.84977705e-012, 180),["Size"] = Vector3.new(0.241071433, 0.200000003, 1.125),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.2976",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Dark stone grey"),["CFrame"] = CFrame.new(2.9000001, 2.55448651, -10.6980648, -0.99999553, -2.98024432e-008, -4.97379915e-014, -1.27897692e-013, 0.999995232, -3.5655444e-013, -5.68434189e-014, 2.99711021e-013, -0.999993086),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.9000001, 2.55448651, -10.6980648),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(180, -2.84977705e-012, 180),["Size"] = Vector3.new(0.200000003, 0.200000003, 0.321428567),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.3069",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.9000001, 2.91610932, -11.8230677, -0.99999553, 7.10542736e-014, -2.98026137e-008, -1.56319402e-013, 0, 1.00000203, -4.26325641e-014, 0.999999821, -2.98023224e-008),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.9000001, 2.91610932, -11.8230677),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(-90, -1.70756402e-006, -180),["Size"] = Vector3.new(0.224999994, 0.899999976, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.3142",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Dark stone grey"),["CFrame"] = CFrame.new(2.9000001, 2.6750226, -10.786458, -0.99999553, -2.98024396e-008, -4.97379915e-014, -1.27897692e-013, 0.999995112, 0, -5.68434189e-014, 0, -0.999992967),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.9000001, 2.6750226, -10.786458),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(-180, -2.84977705e-012, 180),["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.3212",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Medium stone grey"),["CFrame"] = CFrame.new(2.9000001, 2.9804101, -11.3168287, -0.99999553, 7.105426e-014, -2.98028198e-008, -1.56319402e-013, 2.98023188e-008, 1.00000894, -4.26325641e-014, 1.00000668, 0),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.9000001, 2.9804101, -11.3168287),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(-90, -1.70757585e-006, -180),["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.3291",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.89196634, 2.6059413, -11.764677, -0.99999553, -1.49012944e-008, -2.58099515e-008, -1.56319402e-013, 0.500002682, 0.866030335, -4.26325641e-014, 0.866028428, -0.50000155),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.89196634, 2.6059413, -11.764677),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(-119.999939, -1.47880132e-006, 180),["Size"] = Vector3.new(0.200000003, 0.851785719, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.3368",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.9000001, 2.43262625, -11.1283426, -0.99999553, -5.75344927e-009, -1.67245645e-007, -5.88036144e-008, 0.866033137, 0.50000447, 1.41963696e-007, 0.500003338, -0.86603117),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.9000001, 2.43262625, -11.1283426),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(-149.999939, -9.58246983e-006, 180),["Size"] = Vector3.new(0.257142872, 0.433928579, 0.308571428),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.344",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Dark stone grey"),["CFrame"] = CFrame.new(2.9000001, 2.6215713, -10.7639093, -0.99999553, -2.10735429e-008, 2.10734736e-008, -1.27897692e-013, 0.707103312, -0.707103372, -5.68434189e-014, -0.707101882, -0.707101822),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.9000001, 2.6215713, -10.7639093),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(134.999939, 1.20742106e-006, 180),["Size"] = Vector3.new(0.200000003, 0.200000003, 0.200000003),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.351",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.9000001, 2.45003629, -12.2087793, -0.99999553, 7.10542736e-014, -2.98026137e-008, -1.56319402e-013, 0, 1.00000203, -4.26325641e-014, 0.999999821, -2.98023224e-008),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.9000001, 2.45003629, -12.2087793),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(-90, -1.70756402e-006, -180),["Size"] = Vector3.new(0.224999994, 0.200000003, 0.224999994),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.3583",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.9000001, 2.65093017, -12.2087793, -0.99999553, 7.10542736e-014, -2.98026137e-008, -1.56319402e-013, 0, 1.00000203, -4.26325641e-014, 0.999999821, -2.98023224e-008),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.9000001, 2.65093017, -12.2087793),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(-90, -1.70756402e-006, -180),["Size"] = Vector3.new(0.224999994, 0.200000003, 0.401785702),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.3661",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Sand green"),["CFrame"] = CFrame.new(2.9000001, 2.74734521, -10.7382441, -0.99999553, -2.98024396e-008, -4.97379915e-014, -1.27897692e-013, 0.999995112, 0, -5.68434189e-014, 0, -0.999992967),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.9000001, 2.74734521, -10.7382441),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(-180, -2.84977705e-012, 180),["Size"] = Vector3.new(0.241071433, 0.200000003, 1.04464281),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.3734",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Sand green"),["CFrame"] = CFrame.new(2.9000001, 2.94020009, -10.6980648, -0.99999553, -2.98024432e-008, -4.97379915e-014, -1.27897692e-013, 0.999995232, -3.5655444e-013, -5.68434189e-014, 2.99711021e-013, -0.999993086),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.9000001, 2.94020009, -10.6980648),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(180, -2.84977705e-012, 180),["Size"] = Vector3.new(0.273214281, 0.305357128, 1.125),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.3806",["archivable"] = true}) 
NewInstance("Part",meme,{["Shape"] = Enum.PartType.Block,["FormFactor"] = Enum.FormFactor.Custom,["formFactor"] = Enum.FormFactor.Custom,["Anchored"] = false,["BackParamA"] = -0.5,["BackParamB"] = 0.5,["BackSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BackSurfaceInput"] = Enum.InputType.NoInput,["BottomParamA"] = -0.5,["BottomParamB"] = 0.5,["BottomSurface"] = Enum.SurfaceType.SmoothNoOutlines,["BottomSurfaceInput"] = Enum.InputType.NoInput,["BrickColor"] = BrickColor.new("Black"),["CFrame"] = CFrame.new(2.9000001, 2.98039484, -11.8230677, -0.99999553, 7.10542736e-014, -2.98026137e-008, -1.56319402e-013, 0, 1.00000203, -4.26325641e-014, 0.999999821, -2.98023224e-008),["CanCollide"] = false,["Elasticity"] = 0.5,["Friction"] = 0.30000001192093,["FrontParamA"] = -0.5,["FrontParamB"] = 0.5,["FrontSurface"] = Enum.SurfaceType.SmoothNoOutlines,["FrontSurfaceInput"] = Enum.InputType.NoInput,["LeftParamA"] = -0.5,["LeftParamB"] = 0.5,["LeftSurface"] = Enum.SurfaceType.SmoothNoOutlines,["LeftSurfaceInput"] = Enum.InputType.NoInput,["Locked"] = false,["Material"] = Enum.Material.Plastic,["Position"] = Vector3.new(2.9000001, 2.98039484, -11.8230677),["Reflectance"] = 0,["RightParamA"] = -0.5,["RightParamB"] = 0.5,["RightSurface"] = Enum.SurfaceType.SmoothNoOutlines,["RightSurfaceInput"] = Enum.InputType.NoInput,["RotVelocity"] = Vector3.new(0, 0, 0),["Rotation"] = Vector3.new(-90, -1.70756402e-006, -180),["Size"] = Vector3.new(0.257142872, 0.899999976, 0.257142872),["TopParamA"] = -0.5,["TopParamB"] = 0.5,["TopSurface"] = Enum.SurfaceType.SmoothNoOutlines,["TopSurfaceInput"] = Enum.InputType.NoInput,["Transparency"] = 0,["Velocity"] = Vector3.new(0, 0, 0),["Archivable"] = true,["Name"] = "1461532982.3878",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.0764"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.321428597, 1, 0.241071433),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.3956",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.0843"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.723214269, 0.241071433, 0.160714298),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.396",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.0843"],{["C0"] = CFrame.new(0.983570099, 1.15393066, 2.36517644, 1, 0, -0, 0, 0, 1, 0, -1, 0),["C1"] = CFrame.new(0.975536346, 1.01732254, 2.37321782, 1, 0, -0, 0, 0, 1, 0, -1, 0),["Part0"] = "1461532982.0843",["Part1"] = "1461532982.0764",["Archivable"] = true,["Name"] = "1461532982.3964",["archivable"] = true}) 
NewInstance("CylinderMesh",meme["1461532982.0913"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.241071433, 0.160714298, 0.241071433),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.397",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.0913"],{["C0"] = CFrame.new(-0.911251068, -2.3651762, -1.15393054, -1, 0, 0, 0, 0.99999994, 0, 0, 0, -0.99999994),["C1"] = CFrame.new(-0.983570099, 1.66017914, -2.01964116, -1, 0, 0, 0, 0, 1, 0, 1, -0),["Part0"] = "1461532982.0913",["Part1"] = "1461532982.1211",["Archivable"] = true,["Name"] = "1461532982.3974",["archivable"] = true}) 
NewInstance("CylinderMesh",meme["1461532982.0984"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.241071433, 0.160714298, 0.241071433),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.3978",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.0984"],{["C0"] = CFrame.new(-1.05589294, -2.3651762, -1.15393054, -1, 0, 0, 0, 0.99999994, 0, 0, 0, -0.99999994),["C1"] = CFrame.new(0.983570099, 1.15393066, 2.36517644, 1, 0, -0, 0, 0, 1, 0, -1, 0),["Part0"] = "1461532982.0984",["Part1"] = "1461532982.0843",["Archivable"] = true,["Name"] = "1461532982.3983",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.106"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(1, 0.321428597, 1),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.3987",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.106"],{["C0"] = CFrame.new(-0.975536108, -0.633816838, -1.71983027, -1, -5.88029252e-008, 1.41962801e-007, 2.00565875e-008, 0.866025388, 0.5, -1.52344853e-007, 0.5, -0.866025388),["C1"] = CFrame.new(-0.975536346, 1.25035858, -2.18035817, -1, 0, 0, 0, 0, 1, 0, 1, -0),["Part0"] = "1461532982.106",["Part1"] = "1461532982.3291",["Archivable"] = true,["Name"] = "1461532982.3992",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.1135"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.5625, 0.321428597, 1),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.3997",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.1135"],{["C0"] = CFrame.new(-0.983570099, 2.04589081, -1.81071401, -1, 0, 0, 0, 0, 1, 0, 1, -0),["C1"] = CFrame.new(-0.975536346, 2.14231873, -1.65000081, -1, 0, 0, 0, 0, 1, 0, 1, -0),["Part0"] = "1461532982.1135",["Part1"] = "1461532982.3583",["Archivable"] = true,["Name"] = "1461532982.4002",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.1211"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.5625, 1, 0.321428597),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4008",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.1211"],{["C0"] = CFrame.new(-0.983570099, 1.66017914, -2.01964116, -1, 0, 0, 0, 0, 1, 0, 1, -0),["C1"] = CFrame.new(-0.983570099, 0.567744076, -2.41305923, -1, 0, 0, 0, 0.500001669, 0.866028607, 0, 0.866028607, -0.500001669),["Part0"] = "1461532982.1211",["Part1"] = "1461532982.3368",["Archivable"] = true,["Name"] = "1461532982.4016",["archivable"] = true}) 
NewInstance("CylinderMesh",meme["1461532982.1283"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.723214269, 1, 0.723214269),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.402",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.1354"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.883928537, 0.401785702, 0.160714298),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4024",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.1354"],{["C0"] = CFrame.new(0.975536346, 0.286071777, 2.46964574, 1, 0, -0, 0, 0, 1, 0, -1, 0),["C1"] = CFrame.new(2.70145535, 0.278036237, 0.325601757, 0.5, -0.866025329, -4.00003728e-008, 8.31436076e-009, -4.1388148e-008, 1, -0.866025329, -0.5, -1.34936258e-008),["Part0"] = "1461532982.1354",["Part1"] = "1461532982.1713",["Archivable"] = true,["Name"] = "1461532982.4028",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.1424"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.723214269, 1, 0.321428597),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4033",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.1424"],{["C0"] = CFrame.new(0.975536346, 0.591426849, 2.37321782, 1, 0, -0, 0, 0, 1, 0, -1, 0),["C1"] = CFrame.new(-0.975536346, -2.47767949, -0.527141571, -1, 0, 0, 0, 1, 0, 0, 0, -1),["Part0"] = "1461532982.1424",["Part1"] = "1461532982.1791",["Archivable"] = true,["Name"] = "1461532982.4036",["archivable"] = true}) 
NewInstance("SpecialMesh",meme["1461532982.1503"],{["MeshType"] = Enum.MeshType.Wedge,["MeshId"] = "",["TextureId"] = "",["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(1, 0.401785702, 0.401785702),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.404",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.1503"],{["C0"] = CFrame.new(0.975536346, 1.94732213, -0.109285831, 1, 0, 0, 0, -1, 0, 0, 0, -1),["C1"] = CFrame.new(0.975536346, -0.599464417, 2.14821553, 1, 0, -0, 0, 0, 1, 0, -1, 0),["Part0"] = "1461532982.1503",["Part1"] = "1461532982.2373",["Archivable"] = true,["Name"] = "1461532982.4047",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.1573"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(1, 1, 0.482142866),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4051",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.1573"],{["C0"] = CFrame.new(0.975536346, -0.599464417, 2.10000157, 1, 0, -0, 0, 0, 1, 0, -1, 0),["C1"] = CFrame.new(0.975536346, -0.599464417, 2.14821553, 1, 0, -0, 0, 0, 1, 0, -1, 0),["Part0"] = "1461532982.1573",["Part1"] = "1461532982.2299",["Archivable"] = true,["Name"] = "1461532982.4055",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.1641"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.321428597, 0.321428597, 0.0803571492),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4061",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.1641"],{["C0"] = CFrame.new(1.72919154, 0.278035104, -2.23243284, -0.499999702, -0.866024852, 4.23962575e-007, 2.29309393e-007, 3.5715837e-007, 0.999998868, -0.866024852, 0.499999702, 2.00086081e-008),["C1"] = CFrame.new(0.975536346, 0.286071777, 2.46964574, 1, 0, -0, 0, 0, 1, 0, -1, 0),["Part0"] = "1461532982.1641",["Part1"] = "1461532982.1354",["Archivable"] = true,["Name"] = "1461532982.4066",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.1713"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.321428597, 0.321428597, 0.0803571492),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4072",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.1713"],{["C0"] = CFrame.new(2.70145535, 0.278036237, 0.325601757, 0.5, -0.866025329, -4.00003728e-008, 8.31436076e-009, -4.1388148e-008, 1, -0.866025329, -0.5, -1.34936258e-008),["C1"] = CFrame.new(2.55858111, 0.27803576, -1.08321345, 2.98023206e-008, -0.999999821, 1.18360362e-007, -4.30525375e-008, 1.18360347e-007, 1, -0.999999821, -2.98023224e-008, -4.30525517e-008),["Part0"] = "1461532982.1713",["Part1"] = "1461532982.2815",["Archivable"] = true,["Name"] = "1461532982.4079",["archivable"] = true}) 
NewInstance("SpecialMesh",meme["1461532982.1791"],{["MeshType"] = Enum.MeshType.Wedge,["MeshId"] = "",["TextureId"] = "",["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.883928537, 0.241071433, 0.241071433),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4083",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.1791"],{["C0"] = CFrame.new(-0.975536346, -2.47767949, -0.527141571, -1, 0, 0, 0, 1, 0, 0, 0, -1),["C1"] = CFrame.new(-0.975536346, -2.14017797, -0.631607056, -1, 0, 0, 0, 1, 0, 0, 0, -1),["Part0"] = "1461532982.1791",["Part1"] = "1461532982.3806",["Archivable"] = true,["Name"] = "1461532982.4089",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.1867"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.723214269, 1, 0.321428597),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4093",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.1937"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(1, 1, 1),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4097",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.1937"],{["C0"] = CFrame.new(0.975536346, -0.599464417, 2.10000157, 1, 0, -0, 0, 0, 1, 0, -1, 0),["C1"] = CFrame.new(0.975536346, -0.599464417, 2.10000157, 1, 0, -0, 0, 0, 1, 0, -1, 0),["Part0"] = "1461532982.1937",["Part1"] = "1461532982.1573",["Archivable"] = true,["Name"] = "1461532982.41",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.2007"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.321428597, 0.321428597, 0.0803571492),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4105",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.2007"],{["C0"] = CFrame.new(1.7259202, 0.278035849, -2.01527572, -0.499999702, -0.866024911, -3.79716454e-008, -2.78648766e-008, -2.77580519e-008, 0.999998868, -0.866024911, 0.499999702, -1.02526272e-008),["C1"] = CFrame.new(2.55858111, 0.27803579, -0.867858648, 2.98023206e-008, -0.999999821, 1.18360362e-007, -4.30525375e-008, 1.18360347e-007, 1, -0.999999821, -2.98023224e-008, -4.30525517e-008),["Part0"] = "1461532982.2007",["Part1"] = "1461532982.2743",["Archivable"] = true,["Name"] = "1461532982.4108",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.2081"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.883928537, 1, 0.241071433),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4113",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.2081"],{["C0"] = CFrame.new(0.975536346, 0.398571014, 2.36517644, 1, 0, -0, 0, 0, 1, 0, -1, 0),["C1"] = CFrame.new(0.975536346, 0.446784973, 2.42946172, 1, 0, -0, 0, 0, 1, 0, -1, 0),["Part0"] = "1461532982.2081",["Part1"] = "1461532982.2522",["Archivable"] = true,["Name"] = "1461532982.4117",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.2158"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.321428597, 0.321428597, 0.0803571492),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4122",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.2158"],{["C0"] = CFrame.new(2.7047255, 0.278035074, 0.542758942, 0.499999702, -0.866024852, 1.89727274e-007, 2.10878767e-007, 3.40829303e-007, 0.999998868, -0.866024852, -0.499999702, 3.53040775e-007),["C1"] = CFrame.new(1.7259202, 0.278035849, -2.01527572, -0.499999702, -0.866024911, -3.79716454e-008, -2.78648766e-008, -2.77580519e-008, 0.999998868, -0.866024911, 0.499999702, -1.02526272e-008),["Part0"] = "1461532982.2158",["Part1"] = "1461532982.2007",["Archivable"] = true,["Name"] = "1461532982.4127",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.2229"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(1, 0.883928537, 1),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4135",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.2229"],{["C0"] = CFrame.new(-0.975536346, -1.81875157, -0.310178757, -1, 0, 0, 0, 1, 0, 0, 0, -1),["C1"] = CFrame.new(2.7047255, 0.278035074, 0.542758942, 0.499999702, -0.866024852, 1.89727274e-007, 2.10878767e-007, 3.40829303e-007, 0.999998868, -0.866024852, -0.499999702, 3.53040775e-007),["Part0"] = "1461532982.2229",["Part1"] = "1461532982.2158",["Archivable"] = true,["Name"] = "1461532982.4139",["archivable"] = true}) 
NewInstance("CylinderMesh",meme["1461532982.2299"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(1, 1, 1),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4142",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.2299"],{["C0"] = CFrame.new(0.975536346, -0.599464417, 2.14821553, 1, 0, -0, 0, 0, 1, 0, -1, 0),["C1"] = CFrame.new(0.975536346, -0.599464417, 2.37321782, 1, 0, -0, 0, 0, 1, 0, -1, 0),["Part0"] = "1461532982.2299",["Part1"] = "1461532982.1867",["Archivable"] = true,["Name"] = "1461532982.4146",["archivable"] = true}) 
NewInstance("CylinderMesh",meme["1461532982.2373"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(1, 1, 1),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.415",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.2373"],{["C0"] = CFrame.new(0.975536346, -0.599464417, 2.14821553, 1, 0, -0, 0, 0, 1, 0, -1, 0),["C1"] = CFrame.new(0.975536346, -0.599464417, 2.05178761, 1, 0, -0, 0, 0, 1, 0, -1, 0),["Part0"] = "1461532982.2373",["Part1"] = "1461532982.2453",["Archivable"] = true,["Name"] = "1461532982.4154",["archivable"] = true}) 
NewInstance("CylinderMesh",meme["1461532982.2453"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(1, 1, 1),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4158",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.2453"],{["C0"] = CFrame.new(0.975536346, -0.599464417, 2.05178761, 1, 0, -0, 0, 0, 1, 0, -1, 0),["C1"] = CFrame.new(0.975536346, -0.599464417, 2.10000157, 1, 0, -0, 0, 0, 1, 0, -1, 0),["Part0"] = "1461532982.2453",["Part1"] = "1461532982.1937",["Archivable"] = true,["Name"] = "1461532982.4162",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.2522"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.883928537, 1, 0.241071433),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4166",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.2522"],{["C0"] = CFrame.new(0.975536346, 0.446784973, 2.42946172, 1, 0, -0, 0, 0, 1, 0, -1, 0),["C1"] = CFrame.new(-0.975536346, -2.4696455, -0.422677964, -1, 0, 0, 0, 0.99999994, 0, 0, 0, -0.99999994),["Part0"] = "1461532982.2522",["Part1"] = "1461532982.2592",["Archivable"] = true,["Name"] = "1461532982.4171",["archivable"] = true}) 
NewInstance("CylinderMesh",meme["1461532982.2592"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.803571403, 0.160714298, 0.803571403),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4177",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.2666"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.835714281, 0.321428597, 0.0803571492),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4182",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.2666"],{["C0"] = CFrame.new(0.975536346, 0.278036118, 2.63839269, 1, 0, -0, 0, 0, 1, 0, -1, 0),["C1"] = CFrame.new(1.72919154, 0.278035104, -2.23243284, -0.499999702, -0.866024852, 4.23962575e-007, 2.29309393e-007, 3.5715837e-007, 0.999998868, -0.866024852, 0.499999702, 2.00086081e-008),["Part0"] = "1461532982.2666",["Part1"] = "1461532982.1641",["Archivable"] = true,["Name"] = "1461532982.4188",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.2743"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.321428597, 0.321428597, 0.0803571492),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4192",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.2743"],{["C0"] = CFrame.new(2.55858111, 0.27803579, -0.867858648, 2.98023206e-008, -0.999999821, 1.18360362e-007, -4.30525375e-008, 1.18360347e-007, 1, -0.999999821, -2.98023224e-008, -4.30525517e-008),["C1"] = CFrame.new(0.975536346, 0.623573303, 2.47767949, 1, 0, -0, 0, 0, 1, 0, -1, 0),["Part0"] = "1461532982.2743",["Part1"] = "1461532982.289",["Archivable"] = true,["Name"] = "1461532982.4196",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.2815"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.321428597, 0.321428597, 0.0803571492),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.42",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.2815"],{["C0"] = CFrame.new(2.55858111, 0.27803576, -1.08321345, 2.98023206e-008, -0.999999821, 1.18360362e-007, -4.30525375e-008, 1.18360347e-007, 1, -0.999999821, -2.98023224e-008, -4.30525517e-008),["C1"] = CFrame.new(-0.975536346, -1.81875157, -0.310178757, -1, 0, 0, 0, 1, 0, 0, 0, -1),["Part0"] = "1461532982.2815",["Part1"] = "1461532982.2229",["Archivable"] = true,["Name"] = "1461532982.4204",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.289"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.883928537, 0.723214269, 0.241071433),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4208",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.289"],{["C0"] = CFrame.new(0.975536346, 0.623573303, 2.47767949, 1, 0, -0, 0, 0, 1, 0, -1, 0),["C1"] = CFrame.new(-0.975536346, -2.3169663, -0.631607056, -1, 0, 0, 0, 1, 0, 0, 0, -1),["Part0"] = "1461532982.289",["Part1"] = "1461532982.2976",["Archivable"] = true,["Name"] = "1461532982.4212",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.2976"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(1, 0.241071433, 1),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4215",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.2976"],{["C0"] = CFrame.new(-0.975536346, -2.3169663, -0.631607056, -1, 0, 0, 0, 1, 0, 0, 0, -1),["C1"] = CFrame.new(0.975536346, 0.591426849, 2.37321782, 1, 0, -0, 0, 0, 1, 0, -1, 0),["Part0"] = "1461532982.2976",["Part1"] = "1461532982.1424",["Archivable"] = true,["Name"] = "1461532982.4222",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.3069"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.883928537, 0.0803571492, 1),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4228",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.3069"],{["C0"] = CFrame.new(-0.975536346, -1.75446248, -0.631607056, -1, 0, 0, 0, 1, 0, 0, 0, -1),["C1"] = CFrame.new(-0.975536346, -1.78120208, 0.794855356, -1, 0, 0, 0, 0.707106709, -0.707106769, 0, -0.707106769, -0.707106709),["Part0"] = "1461532982.3069",["Part1"] = "1461532982.351",["Archivable"] = true,["Name"] = "1461532982.4233",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.3142"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(1, 1, 0.642857194),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4241",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.3142"],{["C0"] = CFrame.new(-0.975536346, 1.75660706, -2.11607289, -1, 0, 0, 0, 0, 1, 0, 1, -0),["C1"] = CFrame.new(-0.983570099, 2.04589081, -1.81071401, -1, 0, 0, 0, 0, 1, 0, 1, -0),["Part0"] = "1461532982.3142",["Part1"] = "1461532982.1135",["Archivable"] = true,["Name"] = "1461532982.425",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.3212"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.5625, 0.321428597, 0.241071433),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4255",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.3212"],{["C0"] = CFrame.new(-0.975536346, -1.87499928, -0.720001221, -1, 0, 0, 0, 1, 0, 0, 0, -1),["C1"] = CFrame.new(-0.975536346, -1.94732213, -0.671787262, -1, 0, 0, 0, 1, 0, 0, 0, -1),["Part0"] = "1461532982.3212",["Part1"] = "1461532982.3734",["Archivable"] = true,["Name"] = "1461532982.426",["archivable"] = true}) 
NewInstance("CylinderMesh",meme["1461532982.3291"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.964285731, 0.5625, 0.964285731),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4265",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.3291"],{["C0"] = CFrame.new(-0.975536346, 1.25035858, -2.18035817, -1, 0, 0, 0, 0, 1, 0, 1, -0),["C1"] = CFrame.new(-0.911251068, -2.3651762, -1.15393054, -1, 0, 0, 0, 0.99999994, 0, 0, 0, -0.99999994),["Part0"] = "1461532982.3291",["Part1"] = "1461532982.0913",["Archivable"] = true,["Name"] = "1461532982.4272",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.3368"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.5625, 1, 0.321428597),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4276",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.3368"],{["C0"] = CFrame.new(-0.983570099, 0.567744076, -2.41305923, -1, 0, 0, 0, 0.500001669, 0.866028607, 0, 0.866028607, -0.500001669),["C1"] = CFrame.new(-0.975536346, 1.75660706, -2.18035817, -1, 0, 0, 0, 0, 1, 0, 1, -0),["Part0"] = "1461532982.3368",["Part1"] = "1461532982.3878",["Archivable"] = true,["Name"] = "1461532982.428",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.344"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(1, 1, 1),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4285",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.344"],{["C0"] = CFrame.new(-0.975536108, -0.882917762, -1.73589993, -1, -5.88029252e-008, 1.41962801e-007, 2.00565875e-008, 0.866025388, 0.5, -1.52344853e-007, 0.5, -0.866025388),["C1"] = CFrame.new(-0.975536108, -0.633816838, -1.71983027, -1, -5.88029252e-008, 1.41962801e-007, 2.00565875e-008, 0.866025388, 0.5, -1.52344853e-007, 0.5, -0.866025388),["Part0"] = "1461532982.344",["Part1"] = "1461532982.106",["Archivable"] = true,["Name"] = "1461532982.4292",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.351"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(0.5625, 0.482142866, 0.176785722),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4299",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.351"],{["C0"] = CFrame.new(-0.975536346, -1.78120208, 0.794855356, -1, 0, 0, 0, 0.707106709, -0.707106769, 0, -0.707106769, -0.707106709),["C1"] = CFrame.new(-0.975536346, -1.87499928, -0.720001221, -1, 0, 0, 0, 1, 0, 0, 0, -1),["Part0"] = "1461532982.351",["Part1"] = "1461532982.3212",["Archivable"] = true,["Name"] = "1461532982.4309",["archivable"] = true}) 
NewInstance("CylinderMesh",meme["1461532982.3583"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(1, 0.642857194, 1),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4315",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.3583"],{["C0"] = CFrame.new(-0.975536346, 2.14231873, -1.65000081, -1, 0, 0, 0, 0, 1, 0, 1, -0),["C1"] = CFrame.new(-0.975536346, 2.14231873, -1.85089421, -1, 0, 0, 0, 0, 1, 0, 1, -0),["Part0"] = "1461532982.3583",["Part1"] = "1461532982.3661",["Archivable"] = true,["Name"] = "1461532982.432",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.3661"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(1, 0.642857194, 1),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4324",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.3734"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(1, 0.401785702, 1),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.433",["archivable"] = true}) 
NewInstance("BlockMesh",meme["1461532982.3806"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(1, 1, 1),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4335",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.3806"],{["C0"] = CFrame.new(-0.975536346, -2.14017797, -0.631607056, -1, 0, 0, 0, 1, 0, 0, 0, -1),["C1"] = CFrame.new(-0.975536346, -1.75446248, -0.631607056, -1, 0, 0, 0, 1, 0, 0, 0, -1),["Part0"] = "1461532982.3806",["Part1"] = "1461532982.3069",["Archivable"] = true,["Name"] = "1461532982.434",["archivable"] = true}) 
NewInstance("CylinderMesh",meme["1461532982.3878"],{["Offset"] = Vector3.new(0, 0, 0),["Scale"] = Vector3.new(1, 1, 1),["VertexColor"] = Vector3.new(1, 1, 1),["Archivable"] = true,["Name"] = "1461532982.4345",["archivable"] = true}) 
NewInstance("Weld",meme["1461532982.3878"],{["C0"] = CFrame.new(-0.975536346, 1.75660706, -2.18035817, -1, 0, 0, 0, 0, 1, 0, 1, -0),["C1"] = CFrame.new(-0.975536346, 1.75660706, -2.11607289, -1, 0, 0, 0, 0, 1, 0, 1, -0),["Part0"] = "1461532982.3878",["Part1"] = "1461532982.3142",["Archivable"] = true,["Name"] = "1461532982.435",["archivable"] = true})
script.Parent=meme















local prev 
local parts = script.Parent:GetChildren() 
for i = 1,#parts do 
if (parts[i].className == "Part") then 
if (prev ~= nil)then 
local weld = Instance.new("Weld") 
weld.Part0 = prev 
weld.Part1 = parts[i] 
weld.C0 = prev.CFrame:inverse() 
weld.C1 = parts[i].CFrame:inverse() 
weld.Parent = prev 
end 
prev = parts[i] 
end 
end 





























-- DECLARATION OF VARIABLES
local tool = script.Parent
local Cam = game.Workspace.CurrentCamera
local canReload = true
local isFiring = false
local canZoom = true
local canCycleModes = true
local isZoomed = false
local arms = nil
local torso = nil
local welds = {}
local cancelStatus = true
local cooldownInterrupted = false
local reloading = false
local recoilMultiplier = 1
local toolIsEquipped = true

wait(0.03)

local NoAmmoClick = tool.Handle.NoAmmoClick
local MagazineOut = tool.Handle.MagazineOut
local MagazineIn= tool.Handle.MagazineIn
local FireModeClick = tool.Handle.FireModeClick

local playerPlayer
local playerCharacter
local playerHumanoid
local playerSpeed
local wasAmmoLoaded

--local moveDetect
--local isBobbing = false

local flashListBig = { -- List of image IDs for Muzzleflash -- big
	"131435802",
	"131435817",
	"131435825",
}

local fireStreakLimiter = Instance.new("DoubleConstrainedValue") -- Constrains the recoil
	fireStreakLimiter.MaxValue = 10
	fireStreakLimiter.MinValue = 0
	fireStreakLimiter.Value = 0
	
local aimLimiterY = Instance.new("DoubleConstrainedValue") -- Constrains the aim in the Y axis
	aimLimiterY.MaxValue = math.rad(70)
	aimLimiterY.MinValue = math.rad(-45)
	aimLimiterY.Value = 0

local fireStreak = fireStreakLimiter.Value

-- DECLARATION OF VARIABLES: You can modify the ones below this. Names are intuitive.
--AMMUNITION MECHANICS
local usesMagazines = true -- Uses Magazines: bullets still loaded into magazine after reloading are wasted. Turn of for infinite ammo.
local MagazinesCarried = 6 -- Clips you begin with.
local AmmoLoaded = 30 -- Ammo the gun starts with. Reccommended to be equal to AmmoMax
local AmmoMax = 30 -- Magazine size
--ZOOM
local zoomMin = 70 -- FOV default
local zoomMax = 40 -- FOV zoom in
local zoomFrames = 10 -- Larger number = slower zoom speed
local zoomWalkSpeedMultiplier = 0.5 -- Slows character down by this factor upon zooming
--GUN DAMAGE
local gunDamage = 30 -- duh
local damageIsMultiplied = true -- When true, damage is multiplies depending on where the player is hit. When false, damage dealt is fixed.
local headDamageMultiplier = 2.5 -- gunDamage * headDamageMultiplier 
local torsoDamageMultiplier = 1 -- gunDamage * torsoDamageMultiplier
local limbDamageMultiplier = 0.7 -- gunDamage * limbDamageMultiplier
--RECOIL
local recoilX = 3 -- Horizontal recoil
local recoily = 3 -- Vertical recoil
local defaultRecoilMultiplier = 1
local zoomRecoilMultiplier = 0.6 -- Zooming multiplies recoil by this amount
--RAYCASTING
local range = 350 -- [range - (spreadX OR spreadY)] should be less than 1000
local spreadX = 3 -- Horizontal spread
local spreadY = 3 -- Vertical spread
--FIRE MODES
local fireMode = 1 -- Fire mode gun starts with. Look at the list below for a guide.
local burstLength = 3 -- Length of a burst.
local rateOfFireScale = 0 -- the minimum is 0. Each additional unit increases the firing delay by ~0.03 seconds.
--END. Anything below here. Feel free to modify yourself, if you know what you're doing.

local fireModeValues = { -- Modes
	[1] = "Automatic",
	[2] = "Semi-Automatic",
	[3] = tostring(burstLength).."-Round Burst"
}

print[[Made by XAXA!]] -- Please don't remove me :c -- This only prints in the output window. 

-- Change how you want the shell casing to look here.
local Shell = Instance.new("Part")
Shell.BrickColor = BrickColor.new(24)
Shell.Name = "Shell"
Shell.Locked = true
Shell.formFactor = 3
Shell.CanCollide = true
Shell.Size = Vector3.new(.2,.2,.2)
Shell.CanCollide = false
--Shell.Parent = game.Workspace
local ShellMesh = Instance.new("CylinderMesh")
ShellMesh.Scale = Vector3.new(0.30, 1, 0.30)

--[[INDEXLIST: Here's an index for all the important bits here and a brief description. 
	CTRL + F is the search function.
	-------------------------------------------------------------------------------------------------------
	INDEX ..... Description
	-------------------------------------------------------------------------------------------------------
	INDEXLIST ... Brings you right here!
	F-LOADV ..... Gets the player, character, and humanoid.
	F-CNGST ..... Called to disable the gun while performing actions.
	F-CONV3 ..... Converts an user-friendly RGB value into a Color3 Value.
	F-CONVD ..... Shortens converting degree angles to radians.
	F-UPDAM ..... Updates the ammo counter whenever the gun is fired.
	F-UPDTH ..... Updates the HUD whenever the gun is reloaded or equipped.
	F-RECCD ..... Whenever the gun is fired, this function is called. Cools down the recoil of the gun.
	F-WELDR ..... Welds the arms.
	F-AIMMO ..... Makes the gun aim up and down, makes the torso move side to side. 
	F-UPDAI ..... Updates the arms/torso whenever the weapon is shot.
	F-STPFI ..... Lets the gun know that the player isn't firing anymore.
	F-CRTSH ..... Creates shell casing.
	F-RYCSH ..... Fires a bullet. As the name implies, it's a raycasting weapon.
	CR-TAGHU .... Damages and tags the hit player.
	CR-RAYMV .... Animates the ray so that it seems to travel. 
	CR-RCLAN .... Animates recoil and camera.
	F-MAUTO ..... Automatic mode
	F-MSEMI ..... Semi-automatic mode
	F-MBRST ..... Burst fire mode
	F-ACTVT ..... Whenever the tool is used
	F-CHRGN ..... Pulls the charging handle of some guns whenever the gun is reloaded empty.
	F-RELOD ..... Reloading
	F-RMVWD ..... Removes the arm weld and restores previous values.
	F-ONDIE ..... Restores values when the player dies.
	F-ZOMIN ..... Zooms in the gun.
	F-ZMOUT ..... Zooms out the gun.
	F-MDCHG ..... Changes the firemodes.
	F-FMANI ..... Animation for changing fire modes.
	F-CMDKS ..... List of key bindings.
]]
	
function loadValues() -- INDEX: F-LOADV ... Gets the player, character, and humanoid.
	wait(0.03)
	cancelStatus = true -- Unequipping the gun will stop the gun from reloading any bullets
	tool.Enabled = true
	
	playerPlayer = game.Players.LocalPlayer
	playerCharacter = playerPlayer.Character
	playerHumanoid = playerCharacter.Humanoid
	
	if playerHumanoid then
		playerSpeed = playerHumanoid.WalkSpeed
	else
		print [[Humanoid not found]]
	end
	
	recoilMultiplier = 1 -- Restores the recoil multiplier, in case the player unequips the weapon while zoomed
end

function changeGunStatus(status) -- INDEX: F-CNGST ... Called to disable the gun while performing actions.
	if status == "disable" then
		canCycleModes = false
		canReload = false
		canZoom = false
		reloading = true
	elseif status == "enable" then
		canCycleModes = true
		canReload = true
		canZoom = true
		reloading = false
	else
		print[[Invalid Input]] -- Debugging
	end
end

function convertColor3(r, g, b) -- INDEX: F-CONV3 ... Converts an user-friendly RGB value into a Color3 Value.
	return Color3.new(r/255,g/255,b/255)
end

function convertToCFrameDegrees(xa, ya, za) -- INDEX: F-CONVD ... Shortens converting degree angles to radians. CFrame.Anges(math.rad(10), math.rad(20) math.rad(30)) = convertToCFrameDegrees(10,20,30). Much shorter.
	return CFrame.Angles(math.rad(xa), math.rad(ya), math.rad(za))
end

function updateAmmo() -- INDEX: F-UPDAM ... Updates the ammo counter whenever the gun is fired.
	Hud.AmmoLoadedLabel.Text = tostring(AmmoLoaded)
	if AmmoLoaded <= AmmoMax/2 then
		Hud.AmmoLoadedLabel.TextColor3 = convertColor3(255,255,0) -- Changes text color to yellow when remaining ammo is <= 1/2 of max.
		if AmmoLoaded <= AmmoMax/4 then
			Hud.AmmoLoadedLabel.TextColor3 = convertColor3(255,0,0) -- Changes text color to yellow when remaining ammo is <= 1/4 of max.
		end
	else
		Hud.AmmoLoadedLabel.TextColor3 = convertColor3(255,255,255) -- Text color is white, otherwise.
	end
end

function updateHUD() -- INDEX: F-UPDTH ... Updates the HUD whenever the gun is reloaded or equipped. Uses F-UPDTA to update ammo.
	Hud.ModeLabel.Text = (fireModeValues[fireMode])
	if usesClips then
		Hud.MagazinesCarriedLabel.Text = "x "..MagazinesCarried
	else
		Hud.MagazinesCarriedLabel.Visible = false
		Hud.ClipPic.Visible = false
	end
	Hud.AmmoMaxLabel.Text = tostring(AmmoMax)
	updateAmmo()
end

function recoilCooldown() -- INDEX: F-RECCD ... Whenever the gun is fired, this function is called. Cools down the recoil of the gun.
coroutine.resume(coroutine.create(function ()
wait(0.2)
	while fireStreakLimiter.Value > 0 and not cooldownInterrupted do
		wait(.10 - fireStreakLimiter.Value/100)
		fireStreakLimiter.Value = fireStreakLimiter.Value - 1
		fireStreak = fireStreakLimiter.Value
	end
end))
end

function WeldArms(mouse) -- INDEX: F-WELDR ... Welds the arms. Credit to ipod. Modified by XAXA. Arms now match the color and mesh that the player is wearing.
	toolIsEquipped = true
	print[[Made by XAXA!]]
	loadValues()
	Hud = script.HudGui:Clone()
	Hud.Parent = playerPlayer.PlayerGui
	updateHUD()
	mouse.KeyDown:connect(commandKeys)
	mouse.Button1Up:connect(stopFiring)
	
	mouse.Icon = "http://www.roblox.com/asset/?id=131424826" -- Crosshair.
	--mouse.Icon = "http://www.roblox.com/asset/?id=133339236" -- Invisible mouse.
	
	arms = {tool.Parent:FindFirstChild("Left Arm"), tool.Parent:FindFirstChild("Right Arm")}
	torso = tool.Parent:FindFirstChild("Torso")

	if arms ~= nil and torso ~= nil then
		local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}

		if sh ~= nil then
			local yes = true

			if yes then
				yes = false
				sh[1].Part1 = nil
				sh[2].Part1 = nil

				local falseArmLeft = arms[1]:clone()
				falseArmLeftG = falseArmLeft
				falseArmLeft.Parent = tool
				falseArmLeft.BrickColor = arms[1].BrickColor
				local meshCheck1 = tool.Parent:FindFirstChild("leftarm")
				if meshCheck1 then
					meshBody1 = Instance.new("SpecialMesh")
					meshBody1.Parent = falseArmLeft
					meshBody1.MeshId = "http://www.roblox.com/asset/?id="..tostring(meshCheck1.MeshId)
					meshBody1.Scale = Vector3.new(.90,.90,.90)
				else
	
					meshDefault1 = Instance.new("BlockMesh")
					meshDefault1.Parent = falseArmLeft
					meshDefault1.Scale = Vector3.new(.80,.95,.80)
					meshDefault1.Parent = falseArmLeft
				end

				local falseArmWeldLeft = Instance.new("Weld")
				falseArmWeldLeft.Parent = falseArmLeft
				falseArmWeldLeft.Part0 = falseArmLeft
				falseArmWeldLeft.Part1 = arms[1]

				local falseArmRight = arms[2]:clone()
				falseArmRightG = falseArmRight
				falseArmRight.Parent = tool
				falseArmRight.BrickColor = arms[2].BrickColor
				
				local meshCheck2 = tool.Parent:FindFirstChild("rightarm")
				if meshCheck2 then
					meshBody2 = Instance.new("SpecialMesh")
					meshBody2.Parent = falseArmRight
					meshBody2.MeshId = "http://www.roblox.com/asset/?id="..tostring(meshCheck2.MeshId)
					meshBody2.Scale = Vector3.new(.90,.90,.90)
				else
	
					meshDefault2 = Instance.new("BlockMesh")
					meshDefault2.Parent = falseArmRight
					meshDefault2.Scale = Vector3.new(.80,.95,.80)
					meshDefault2.Parent = falseArmRight
				end

				local falseArmWeldRight = Instance.new("Weld")
				falseArmWeldRight.Parent = falseArmRight
				falseArmWeldRight.Part0 = falseArmRight
				falseArmWeldRight.Part1 = arms[2]

				local weldLeft = Instance.new("Weld") -- left arm
				weldLeftG = weldLeft
				weldLeft.Part0 = torso
				weldLeft.Parent = torso
				weldLeft.Part1 = arms[1]
				weldLeft.C1 = CFrame.new(-0.35, 0.9, 0.7) * convertToCFrameDegrees(305, 5, -90)
				
				--X position value moves arm DOWNWARDS... X angle value rotates arm IN (C)
				--Y position value moves arm FORWARD... Y angle value tilts arm UPWARDS (C)
				--Z position value moves arm AWAY... Z angle value tilts arm INWARDS (C)
				
				welds[1] = weldLeft
				
				local weldRight = Instance.new("Weld") -- right arm
				weldRightG = weldRight
				weldRight.Part0 = torso
				weldRight.Parent = torso
				weldRight.Part1 = arms[2]
				weldRight.C1 = CFrame.new(-0.95, -0.4, 0.3) * convertToCFrameDegrees(-90, -15, 0)
				welds[2] = weldRight
				
				--X position value moves arm INSIDE... X angle value tilts arm DOWNWARDS (C)
				--Y position value moves arm FORWARD... Y angle value rotates arm AWAY (C)
				--Z position value moves arm UPWARDS... Z angle value tilts arm OUTWARDS (C)
				--X GripPos value move tool INSIDE. Y GripPos value move tool DOWNWARDS. Z GripPos value move tool FORWARDS.
			
				--NOTE: Use these when you're modifying the gun positions. These happen if the values are increased. Hopefully you understand my wording. I may be wrong on some of these...
				
				aimLimiterY.Value = -math.atan((playerHumanoid.TargetPoint.y-playerCharacter.Head.Position.y)/math.sqrt((playerHumanoid.TargetPoint.x-playerCharacter.Head.Position.x)^2+(playerHumanoid.TargetPoint.z-playerCharacter.Head.Position.z)^2))

				weldLeftG.C1 = weldLeftG.C1 * CFrame.Angles(aimLimiterY.Value, 0, 0)
				weldRightG.C1 = weldRightG.C1 * CFrame.Angles(aimLimiterY.Value, 0, 0)
	
				local hit = playerHumanoid.TargetPoint
				local newHit = Vector3.new(hit.X,tool.Sights.Position.Y,hit.Z) 
				local dir = (newHit - tool.Sights.Position).unit	
				local spawnPos = playerCharacter.Torso.Position
				local pos = spawnPos + (dir * 0)
				playerCharacter.Torso.CFrame = CFrame.new(pos,  pos + dir)
				--Adapted from the bodygyro script that makes your character move around. Thanks!
				
	function aim() -- INDEX: F-AIMMO ... Fired whenever the mouse is moved. This is the one that makes the gun aim up and down, makes the torso move side to side. 
		local aimLastY = aimLimiterY.Value
		aimLimiterY.Value = -math.atan((playerHumanoid.TargetPoint.y-playerCharacter.Head.Position.y)/math.sqrt((playerHumanoid.TargetPoint.x-playerCharacter.Head.Position.x)^2+(playerHumanoid.TargetPoint.z-playerCharacter.Head.Position.z)^2))

		weldLeftG.C1 = weldLeftG.C1 * CFrame.Angles(aimLimiterY.Value-aimLastY, 0, 0)
		weldRightG.C1 = weldRightG.C1 * CFrame.Angles(aimLimiterY.Value-aimLastY, 0, 0)
		
		local hit = playerHumanoid.TargetPoint
		local newHit = Vector3.new(hit.X,tool.Sights.Position.Y,hit.Z) 
		local dir = (newHit - tool.Sights.Position).unit	
		local spawnPos = playerCharacter.Torso.Position
		local pos = spawnPos + (dir * 0)
		playerCharacter.Torso.CFrame = CFrame.new(pos,  pos + dir)
	end
	mouse.Move:connect(aim)		

			end
		end
	end
end

function updateAim() -- INDEX: F-UPDAI ... Updates the arms/torso whenever the weapon is shot.
	
	local aimLastY = aimLimiterY.Value
	aimLimiterY.Value = -math.atan((playerHumanoid.TargetPoint.y-playerCharacter.Head.Position.y)/math.sqrt((playerHumanoid.TargetPoint.x-playerCharacter.Head.Position.x)^2+(playerHumanoid.TargetPoint.z-playerCharacter.Head.Position.z)^2))
	
	weldLeftG.C1 = weldLeftG.C1 * CFrame.Angles(aimLimiterY.Value-aimLastY, 0, 0)
	weldRightG.C1 = weldRightG.C1 * CFrame.Angles(aimLimiterY.Value-aimLastY, 0, 0)
	
	local hit = playerHumanoid.TargetPoint
	local newHit = Vector3.new(hit.X,tool.Sights.Position.Y,hit.Z) 
	local dir = (newHit - tool.Sights.Position).unit	
	local spawnPos = playerCharacter.Torso.Position
	local pos = spawnPos + (dir * 0)
	playerCharacter.Torso.CFrame = CFrame.new(pos,  pos + dir)
	
end

function stopFiring(mouse) -- INDEX: F-STPFI ... Lets the gun know that the player isn't firing anymore.
	isFiring = false
end

function createShellCasing() -- INDEX: F-CRTSH ... Creates shell casing from a Part named "Port". Hooray for a bullet casing! ~~XAXA
	local ShellClone = Shell:Clone()
	ShellClone.Parent = playerCharacter
	ShellClone.CFrame = tool.Port.CFrame * convertToCFrameDegrees(90,0,0)
	ShellClone.Velocity = Vector3.new(0,math.random(10,40),0) + (tool.Port.CFrame * convertToCFrameDegrees(0,math.random(-140,-90),0)).lookVector * (math.random(5,25))
	ShellClone.RotVelocity = Vector3.new(0,0,(math.random(200,400) / 10))
	local ShellMeshClone = ShellMesh:Clone()
	ShellMeshClone.Parent = ShellClone
	game.Debris:AddItem(ShellClone, 0.4) --Add it to the debris. No script can match this one's reliability.
end



function raycastShoot() -- INDEX: F-RYCSH ... Fires a bullet. As the name implies, it's a raycasting weapon.
	local ray = Ray.new(tool.Handle.CFrame.p, ((playerHumanoid.TargetPoint - tool.Handle.CFrame.p).unit * (range) + Vector3.new(math.random(-100,100)/100 * spreadX,math.random(-100,100)/100 * spreadY,math.random(0,0)))) 
	local hit, position = game.Workspace:FindPartOnRay(ray, tool.Parent)-- ignoreList)
 
	local ShootSound = tool.Handle.ShootSound
	ShootSound.Pitch = math.random(100,105)/100
	ShootSound:Play()	
	
	updateAmmo()
	
    local humanoid = hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid")

coroutine.resume(coroutine.create( -- INDES: CR-TAGHU ... Damages and tags the hit player.
	function () 
		if humanoid and humanoid.Parent.Name ~= tool.Parent.Name then --and hit:IsDescendantOf(humanoid.Parent) then			
			while humanoid:FindFirstChild("creator") do -- removes any previous tags on the humanoid
				humanoid:FindFirstChild("creator"):Destroy()
			end
			local KillRecord = Instance.new("ObjectValue")
			KillRecord.Value = playerPlayer
			KillRecord.Name = "creator"
			KillRecord.Parent = humanoid
			if damageIsMultiplied then -- if damage is multiplied depending on where the player is hit...
				if hit.Name == "Head" then 
					humanoid:TakeDamage(gunDamage * headDamageMultiplier)
				elseif hit.Name == "Torso" then
					humanoid:TakeDamage(gunDamage * torsoDamageMultiplier)
				else -- If you didn't hit the torso or the head, you probably hit a limb... Right?
					humanoid:TakeDamage(gunDamage * limbDamageMultiplier)
				end
			else -- otherwise
					humanoid:TakeDamage(gunDamage) -- It does base damage
			end
			wait(1)
			if humanoid then
				local tagCheck = humanoid:findFirstChild("creator")
				if tagCheck then
					tagCheck:Destroy()
				end
			end
		end
	end))
	
	local distance = (position - tool.Muzzle.CFrame.p).magnitude
	local rayPart = Instance.new("Part", tool)
		rayPart.Name          = "RayPart"
		rayPart.BrickColor    = BrickColor.new(24)
		rayPart.Transparency  = 0.5
		rayPart.Anchored      = true
		rayPart.CanCollide    = false
		rayPart.TopSurface    = Enum.SurfaceType.Smooth
		rayPart.BottomSurface = Enum.SurfaceType.Smooth
		rayPart.formFactor    = Enum.FormFactor.Custom
		rayPart.Size          = Vector3.new(.2, 1, .2)
		rayPart.CFrame        = CFrame.new(position, tool.Muzzle.CFrame.p) * CFrame.new(0, 0, 1) * convertToCFrameDegrees(90, 0, 0)
		local rayMesh = Instance.new("CylinderMesh",rayPart)
		rayMesh.Scale = Vector3.new(1,10,1)
		rayMesh.Offset = Vector3.new(0, -distance + rayMesh.Scale.y/2, 0)

	coroutine.resume(coroutine.create( -- INDEX: CR-RAYMV ... Animates the ray so that it seems to travel. 
		function () 
			for i = 0, distance - rayMesh.Scale.y, 30 do
				rayMesh.Offset = rayMesh.Offset + Vector3.new(0, 30, 0)
				wait(0.03)		
			end
			rayPart:Destroy()
		end
	))

	game.Debris:AddItem(rayPart, 2) -- Adding something to debris is more reliable than using a script.

	local recoilXTemp = math.random(-100,100)/100*recoilX
	local recoilyTemp = math.random(80,100)/100*recoily
	local recoilFrames = 2
		
	fireStreakLimiter.Value = fireStreakLimiter.Value + 1
	fireStreak = fireStreakLimiter.Value
	
	coroutine.resume(coroutine.create( -- INDES: CR-RCLAN ... Animates recoil and camera. Camera recoil was based off of a script somewhere.
		function () 
			local recoilFormula = fireStreak^1.4/30 * recoilMultiplier
			for i = 1, recoilFrames do
				local camRotation = Cam.CoordinateFrame - Cam.CoordinateFrame.p
				local camScroll = (Cam.CoordinateFrame.p - Cam.Focus.p).magnitude
				local ncf = CFrame.new(Cam.Focus.p)*camRotation*convertToCFrameDegrees(recoilyTemp/recoilFrames * recoilFormula, recoilXTemp/recoilFrames * recoilFormula, 0)
				weldLeftG.C1 = (weldLeftG.C1 + Vector3.new(0, -0.1/recoilFrames, -0.1/recoilFrames))
				weldRightG.C1 = (weldRightG.C1 + Vector3.new(0, -0.1/recoilFrames, 0))
				Cam.CoordinateFrame = ncf*CFrame.new(0, 0, camScroll)
				Cam.CoordinateFrame = Cam.CoordinateFrame  * CFrame.new(0,0,-0.1/recoilFrames)
				wait(0.03)
			end
		end
	))
	
	updateAim()
		
		wait(0.03)
		
		weldLeftG.C1 = (weldLeftG.C1 + Vector3.new(0, 0.1, 0.1))
		weldRightG.C1 = (weldRightG.C1 + Vector3.new(0, 0.1, 0))
		
		Cam.CoordinateFrame = Cam.CoordinateFrame  * CFrame.new(0,0,0.1)

		tool.Muzzle.PointLight.Enabled = true
		tool.Muzzle.BillboardGui.Flash.Image = "http://www.roblox.com/asset/?id="..flashListBig[math.random(1,#flashListBig)] -- Muzzle flash!
		tool.Muzzle.BillboardGui.Enabled = true
		
		createShellCasing() -- Shell casing!
		
		wait(0.03)
		
		tool.Muzzle.PointLight.Enabled = false
		tool.Muzzle.BillboardGui.Enabled = false
		
		if rateOfFireScale > 0 then -- How the rate of fire is controled.
			wait(0.03 * rateOfFireScale)
		end
end

function modeAutomatic() -- INDEX: F-MAUTO ... Automatic mode
	isFiring = true
	while isFiring == true do
		if not isReloading and playerHumanoid.Health > 0 then
			if AmmoLoaded > 0 then
				AmmoLoaded = AmmoLoaded - 1
				raycastShoot()
			else
				NoAmmoClick:Play()
				canReload = true
				Reload()
				break
			end
		elseif playerHumanoid.Health <= 0 then
			tool:Destroy()
			break
		end
	end
end

function modeSingle() -- INDEX: F-MSEMI ... Semi-automatic mode
	if playerHumanoid.Health > 0 then
		if AmmoLoaded > 0 then
			AmmoLoaded = AmmoLoaded - 1
			raycastShoot()
		else
			NoAmmoClick:Play()
			canReload = true
			Reload()
		end
	elseif playerHumanoid.Health <= 0 then
		tool:Destroy()
	end
end

function modeBurst() -- INDEX: F-MBRST ... Burst fire mode
	if playerHumanoid.Health > 0 then
		for i = 1, burstLength do
			if AmmoLoaded > 0 then
				AmmoLoaded = AmmoLoaded - 1
				raycastShoot()
			else
				NoAmmoClick:Play()
				canReload = true
				Reload()
				break
			end
		end
	elseif playerHumanoid.Health <= 0 then
		tool:Destroy()
	end
end
		
function onActivated() -- INDEX: F-ACTVT ... Whenever the tool is used
	if not tool.Enabled then
		return
	end

	tool.Enabled = false
	changeGunStatus("disable")
	cooldownInterrupted = true
	if fireMode == 1 then
		modeAutomatic()
	
	elseif fireMode == 2 then
		modeSingle()
		
	elseif fireMode == 3 then
		modeBurst()
	end
tool.Enabled = true
cooldownInterrupted = false
changeGunStatus("enable")
recoilCooldown()
end
		
function chargingHandle() -- F-CHRGN ... Pulls the charging handle of some guns whenever the gun is reloaded empty. Hooray for realism!
	local reloadTween = 10
	for i = 1, reloadTween do
		weldLeftG.C1 = CFrame.new(-0.05 -0.30/reloadTween*i , 0.7 + 0.4/reloadTween*i, 0.7 + 0/reloadTween*i) * convertToCFrameDegrees(325 - 20/reloadTween*i, 0 + 35/reloadTween*i, -90 - 0/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)		
		weldRightG.C1 = CFrame.new(-0.95 + 0.5/reloadTween*i, -0.4 + 0.5/reloadTween*i, 0.3 - 1.5/reloadTween*i) *convertToCFrameDegrees(-95 + 5/reloadTween*i, -15 + 30/reloadTween*i, 0 + -80/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		wait(0.03)		
	end
	wait(0.1)
	local reloadTween = 4
	for i = 1, reloadTween do
		weldLeftG.C1 = CFrame.new(-0.35 + 0/reloadTween*i , 1.1 + -0.4/reloadTween*i, 0.7 + 0/reloadTween*i) * convertToCFrameDegrees(305 + 20/reloadTween*i, 35 + 0/reloadTween*i, -90 - 0/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)		
		weldRightG.C1 = CFrame.new(-0.45 + 0/reloadTween*i, 0.1 + -0.2/reloadTween*i, -1.2 + 0/reloadTween*i) *convertToCFrameDegrees(-90 + 0/reloadTween*i, 15 + 0/reloadTween*i, -80 + 0/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		wait(0.03)		
	end
	ChargingHandleBack:Play()
	wait(0.2)
	local reloadTween = 3
	for i = 1, reloadTween do
		weldLeftG.C1 = CFrame.new(-0.35 + 0/reloadTween*i , 0.7 + 0/reloadTween*i, 0.7 + 0/reloadTween*i) * convertToCFrameDegrees(325 + 0/reloadTween*i, 35 + 5/reloadTween*i, -90 - 0/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)		
		weldRightG.C1 = CFrame.new(-0.45 + 0/reloadTween*i, -0.1 + 0/reloadTween*i, -1.2 + 0/reloadTween*i) *convertToCFrameDegrees(-90 + 0/reloadTween*i, 15 + 0/reloadTween*i, -80 + 0/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		wait(0.03)		
	end
	ChargingHandleForward:Play()
	wait(0.2)
	local reloadTween = 8
	for i = 1, reloadTween do	
		weldLeftG.C1 = CFrame.new(-0.35 + 0/reloadTween*i , 0.7 + 0.2/reloadTween*i, 0.7 + 0/reloadTween*i) * convertToCFrameDegrees(325 + -20/reloadTween*i, 40 + -35/reloadTween*i, -90 - 0/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)		
		weldRightG.C1 = CFrame.new(-0.45 + -0.5/reloadTween*i, -0.1 + -0.3/reloadTween*i, -1.2 + 1.5/reloadTween*i) *convertToCFrameDegrees(-90 + 0/reloadTween*i, 15 + -30/reloadTween*i, -80 + 80/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		wait(0.03)		
	end
	
	weldLeftG.C1 = CFrame.new(-0.35, 0.9, 0.7) * convertToCFrameDegrees(305, 5, -90) * CFrame.Angles(aimLimiterY.Value, 0, 0)
	weldRightG.C1 = CFrame.new(-0.95, -0.4, 0.3) * convertToCFrameDegrees(-90, -15, 0) * CFrame.Angles(aimLimiterY.Value, 0, 0)
end

function Reload() -- F-RELOD ... Reloading
	if canReload then
		cooldownInterrupted = false
		cancelStatus = false
		recoilCooldown()
		if usesClips then
			if MagazinesCarried <= 0 then 
				return
			end
		MagazinesCarried = MagazinesCarried - 1
		end
		wasAmmoLoaded = AmmoLoaded
		AmmoLoaded = 0
		updateHUD()
		changeGunStatus("disable")
		tool.Enabled = false
		if isZoomed then
			zoomOut()
		end
		wait(.1)
		local reloadTween = 12
		for i = 1, reloadTween do
			weldLeftG.C1 = CFrame.new(-0.35 + 1.5/reloadTween*i , 0.9 - 1/reloadTween*i, 0.7 - 1/reloadTween*i) * convertToCFrameDegrees(305 + 30/reloadTween*i, 5 + 30/reloadTween*i, -90 + 90/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
			weldRightG.C1 = CFrame.new(-0.95 + 0/reloadTween*i, -0.4 + 0.3/reloadTween*i, 0.3 + 0.8/reloadTween*i) * convertToCFrameDegrees(-90, -15, 0 + 15/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
			wait(0.03)
		end
		

		MagazineOut:Play()
		
		local magazineUsedProp = tool.Magazine:Clone()
		magazineUsedProp.CFrame = tool.Magazine.CFrame
		magazineUsedProp.CanCollide = true
		magazineUsedProp.Parent = Workspace
		game.Debris:AddItem(magazineUsedProp, 3)
		tool.Magazine.Transparency = 1
		
		wait(.3)
		local magazineNewProp = tool.Magazine:Clone()
		magazineNewProp.Transparency = 0
		magazineNewProp.Name = "MagazineProp"
		magazineNewProp.Parent = tool
		
		local magazineNewPropWeld = Instance.new("Weld")
		leftarm = tool.Parent["Left Arm"]
		magazineNewPropWeldG = magazineNewPropWeld
		magazineNewPropWeld.Parent =  magazineNewProp
		magazineNewPropWeld.Part0 =  magazineNewProp
		magazineNewPropWeld.Part1 = leftarm
		magazineNewPropWeld.C0 = CFrame.new(-0,-.6,0.8) * convertToCFrameDegrees(0, 90, 90)
		
		local reloadTween = 12
		for i = 1, reloadTween do
			weldLeftG.C1 = CFrame.new(1.15 - 1.2/reloadTween*i , -0.1 + 0.8/reloadTween*i, -0.3 + 1/reloadTween*i) * convertToCFrameDegrees(335 - 10/reloadTween*i, 35 - 35/reloadTween*i, -0 - 90/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)		
			weldRightG.C1 = CFrame.new(-0.95 - 0/reloadTween*i, -0.1 - 0.3/reloadTween*i, 1.1 - 0.8/reloadTween*i) * convertToCFrameDegrees(-90 - 5/reloadTween*i, -15, 15 - 15/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
			wait(0.03)
		end
		while tool:FindFirstChild("MagazineProp") do
			tool:FindFirstChild("MagazineProp"):Destroy()
		end
		tool.Magazine.Transparency = 0

		MagazineIn:Play()
		
		wait(.2)
			
		local reloadTween = 6
			for i = 1, reloadTween do
				weldLeftG.C1 = CFrame.new(-0.05 -0.30/reloadTween*i , 0.7 + 0.2/reloadTween*i, 0.7 + 0/reloadTween*i) * convertToCFrameDegrees(325 - 20/reloadTween*i, 0 + 5/reloadTween*i, -90 - 0/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)		
				weldRightG.C1 = CFrame.new(-0.95 - 0/reloadTween*i, -0.4 - 0.0/reloadTween*i, 0.3 - 0.0/reloadTween*i) *convertToCFrameDegrees(-95 + 5/reloadTween*i, -15, 0 + 0/reloadTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
			wait(0.03)		
			end
		end
		
		weldLeftG.C1 = CFrame.new(-0.35, 0.9, 0.7) * convertToCFrameDegrees(305, 5, -90) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		weldRightG.C1 = CFrame.new(-0.95, -0.4, 0.3) * convertToCFrameDegrees(-90, -15, 0) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		wait(0.2)


	if not cancelStatus then
			AmmoLoaded = AmmoMax
	end
	changeGunStatus("enable")
	tool.Enabled = true
	updateHUD()
end

function removeWeldArms(mouse) -- INDEX: F-RMVWD ... Removes the arm weld and restores previous values.
	toolIsEquipped = false
	changeGunStatus("enable")
	cancelStatus = true
	recoilMultiplier = defaultRecoilMultiplier
		Cam.CameraSubject = playerHumanoid
		Cam.CameraType = "Custom"
		Cam.FieldOfView = zoomMin
		tool.Muzzle.PointLight.Enabled = false
		tool.Muzzle.BillboardGui.Enabled = false
		playerHumanoid.WalkSpeed = playerSpeed
		
	while playerPlayer.PlayerGui:FindFirstChild("HudGui") do
		playerPlayer.PlayerGui:FindFirstChild("HudGui"):Destroy()
		wait(0.03)
	end
	
	if arms ~= nil and torso ~= nil then
		local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
	
		if sh ~= nil then
			local yes = true
			if yes then
				yes = false
				sh[1].Part1 = arms[1]
				sh[2].Part1 = arms[2]
				welds[1].Parent = nil
				welds[2].Parent = nil
				falseArmLeftG:Destroy()
				falseArmRightG:Destroy()
			end
		end
	end
end

function onDied() -- INDEX: F-ONDIE ... Restores values when the player dies.
	toolIsEquipped = false
	changeGunStatus("enable")
	recoilMultiplier = defaultRecoilMultiplier
	if Cam then
		Cam.CameraSubject = playerHumanoid
		Cam.CameraType = "Custom"
		Cam.FieldOfView = zoomMin
	end
	if tool then
		tool.Muzzle.PointLight.Enabled = false
		tool.Muzzle.BillboardGui.Enabled = false
	end
	if playerHumanoid then
		playerHumanoid.WalkSpeed = playerSpeed
	end
	if playerPlayer then
		playerPlayer.CameraMode = "Classic"
	end
	while playerPlayer.PlayerGui:FindFirstChild("HudGui") do
		playerPlayer.PlayerGui:FindFirstChild("HudGui"):Destroy()
		wait(0.03)
	end
end

function zoomIn() -- INDEX: F-ZOMIN ... Zooms in the gun.
	recoilMultiplier = zoomRecoilMultiplier
	playerHumanoid.WalkSpeed = playerSpeed * zoomWalkSpeedMultiplier
	for i = 1, zoomFrames do
		Cam.FieldOfView = Cam.FieldOfView + (zoomMax - Cam.FieldOfView)/3
		wait(0.03)
	end
	Cam.FieldOfView = zoomMax
	isZoomed = true
end

function zoomOut() -- INDEX: F-ZMOUT ... Zooms out the gun.
	recoilMultiplier = defaultRecoilMultiplier
	playerHumanoid.WalkSpeed = playerSpeed
	for i = 1, zoomFrames do
		Cam.FieldOfView = Cam.FieldOfView + (zoomMin - Cam.FieldOfView)/3
		wait(0.03)
	end
	Cam.FieldOfView = zoomMin
	isZoomed = false
end

function fireModeChange() -- INDEX: F-MDCHG ... Changes the firemodes.
	FireModeClick:Play()
	if fireMode == 1 then
		fireMode = 2
		updateHUD()
	elseif fireMode == 2 then
		fireMode = 3
		updateHUD()
	elseif fireMode == 3 then
		fireMode = 1
		updateHUD()
	end
end

function fireModeAnimate() -- INDEX: F-FMANI ... Animation for changing fire modes.

	local fireModeAnimateTween = 8
	for i = 1, fireModeAnimateTween do
		weldLeftG.C1 = CFrame.new(-0.35, 0.9 - 0.8/fireModeAnimateTween*i, 0.7) * convertToCFrameDegrees(305 + 30/fireModeAnimateTween*i, 5, -90) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		weldRightG.C1 = CFrame.new(-0.95, -0.4 + 0.1/fireModeAnimateTween*i, 0.3) * convertToCFrameDegrees(-90, -15, 0 + 5/fireModeAnimateTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		tool.GripPos = Vector3.new(0, -0.3, -0.2 - .1/fireModeAnimateTween*i)
		wait(0.03)
	end
	
	wait(.1)
	fireModeAnimateTween = 3
	for i = 1, fireModeAnimateTween do
		weldLeftG.C1 = CFrame.new(-0.35, 0.1 - 0/fireModeAnimateTween*i, 0.7) * convertToCFrameDegrees(335 + 0/fireModeAnimateTween*i, 5 - 10/fireModeAnimateTween*i, -90) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		weldRightG.C1 = CFrame.new(-0.95, -0.3 + 0/fireModeAnimateTween*i, 0.3) * convertToCFrameDegrees(-90, -15, 5 + 0/fireModeAnimateTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		tool.GripPos = Vector3.new(0, -0.3, -0.3 - 0/fireModeAnimateTween*i)
		wait(0.03)
	end
	fireModeChange()
	
	wait(0.2)
	fireModeAnimateTween = 8
	for i = 1, fireModeAnimateTween do
		weldLeftG.C1 = CFrame.new(-0.35, 0.1 + 0.8/fireModeAnimateTween*i, 0.7) * convertToCFrameDegrees(335 - 30/fireModeAnimateTween*i, -5 + 10/fireModeAnimateTween*i, -90) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		weldRightG.C1 = CFrame.new(-0.95, -0.3 - 0.1/fireModeAnimateTween*i, 0.3) * convertToCFrameDegrees(-90, -15, 5 - 5/fireModeAnimateTween*i) * CFrame.Angles(aimLimiterY.Value, 0, 0)
		tool.GripPos = Vector3.new(0, -0.3, -0.3 + 0.1/fireModeAnimateTween*i)
		wait(0.03)
	end
	weldLeftG.C1 = CFrame.new(-0.35, 0.9, 0.7) * convertToCFrameDegrees(305, 5, -90) * CFrame.Angles(aimLimiterY.Value, 0, 0)
	weldRightG.C1 = CFrame.new(-0.95, -0.4, 0.3) * convertToCFrameDegrees(-90, -15, 0) * CFrame.Angles(aimLimiterY.Value, 0, 0)
	tool.GripPos = Vector3.new(0, -0.3, -0.2)
end

function commandKeys(key) -- INDEX: F-CMDKS ... List of key bindings.
	if key == "v" and canCycleModes then
		changeGunStatus("disable")
		fireModeAnimate()
		wait(.5)
		changeGunStatus("enable")
	elseif key == "z" and canZoom then
		changeGunStatus("disable")
		if not isZoomed then
			zoomIn()
		elseif isZoomed then
			zoomOut()
		end
		wait(.5)
		changeGunStatus("enable")
	elseif key == "r" and canReload and not reloading and AmmoLoaded < AmmoMax then
		changeGunStatus("disable")
		reloading = true
		canReload = true
		Reload()
		reloading = false
		wait(.5)
		changeGunStatus("enable")
	end
end

tool.Equipped:connect(WeldArms)
tool.Unequipped:connect(removeWeldArms)
tool.Activated:connect(onActivated)
game.Players.LocalPlayer.Character.Humanoid.Died:connect(onDied)