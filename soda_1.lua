vip = "yfc" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 
char = plyr.Character 

hop = Instance.new("HopperBin") 
hop.Parent = plyr.Backpack 
hop.Name = "Soda" 
arm = hop.Parent.Parent.Character["Right Arm"]
script.Parent = char 

han = Instance.new("Part") 
han.Name = "Handle" 
han.Parent = arm.Parent 
han.Size = Vector3.new(1, 1, 1) 
han:BreakJoints() 
han.CanCollide = false 
hanm = Instance.new("CylinderMesh") 
hanm.Parent = han 
hanm.Scale = Vector3.new(1, 0.9, 1)
dec = Instance.new("Decal")
dec.Parent = han
dec.Texture = "http://www.roblox.com/asset/?id=10712136" 
dec.Face = "Front" 
dec = Instance.new("Decal")
dec.Parent = han
dec.Texture = "http://www.roblox.com/asset/?id=10712136" 
dec.Face = "Left" 
dec = Instance.new("Decal")
dec.Parent = han
dec.Texture = "http://www.roblox.com/asset/?id=10712136" 
dec.Face = "Right" 
dec = Instance.new("Decal")
dec.Parent = han
dec.Texture = "http://www.roblox.com/asset/?id=10712136" 
dec.Face = "Back" 
dec = Instance.new("Decal")
dec.Parent = han
dec.Texture = "http://www.roblox.com/asset/?id=6552300" 
dec.Face = "Top" 
dec = Instance.new("Decal")
dec.Parent = han
dec.Texture = "http://www.roblox.com/asset/?id=6552300" 
dec.Face = "Bottom" 
w = Instance.new("Weld")
w.Parent = arm.Parent 
w.Part0 = han 
w.Part1 = arm 
w.C0 = CFrame.fromEulerAnglesXYZ(1.6, 0, 0) + Vector3.new(0, 0, 1)

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 125)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Drink" 
tx.Visible = false 

function select(mouse) 
a = Instance.new("Weld")
a.Parent = arm.Parent 
a.Part0 = arm
a.Part1 = arm.Parent.Torso
a.C0 = CFrame.fromEulerAnglesXYZ(-1.6, 0, 0) + Vector3.new(-1.5, 0.5, 0.5)
tx.Visible = true 
tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
a.C0 = CFrame.fromEulerAnglesXYZ(-1.7, -0.1, -0.1) + Vector3.new(-1.5, 0.5, 0.5)
wait(0.1) 
a.C0 = CFrame.fromEulerAnglesXYZ(-1.8, -0.2, -0.2) + Vector3.new(-1.5, 0.5, 0.5)
wait(0.1) 
a.C0 = CFrame.fromEulerAnglesXYZ(-1.9, -0.3, -0.3) + Vector3.new(-1.5, 0.5, 0.5)
wait(0.1) 
a.C0 = CFrame.fromEulerAnglesXYZ(-2, -0.4, -0.4) + Vector3.new(-1.5, 0.5, 0.5)
wait(0.1) 
a.C0 = CFrame.fromEulerAnglesXYZ(-2, -0.5, -0.5) + Vector3.new(-1.5, 0.5, 0.5)
wait(0.1) 
a.C0 = CFrame.fromEulerAnglesXYZ(-2, -0.4, -0.4) + Vector3.new(-1.5, 0.5, 0.5)
wait(0.1) 
a.C0 = CFrame.fromEulerAnglesXYZ(-1.9, -0.3, -0.3) + Vector3.new(-1.5, 0.5, 0.5)
wait(0.1) 
a.C0 = CFrame.fromEulerAnglesXYZ(-1.8, -0.2, -0.2) + Vector3.new(-1.5, 0.5, 0.5)
wait(0.1) 
a.C0 = CFrame.fromEulerAnglesXYZ(-1.7, -0.1, -0.1) + Vector3.new(-1.5, 0.5, 0.5)
wait(0.1) 
a.C0 = CFrame.fromEulerAnglesXYZ(-1.6, 0, 0) + Vector3.new(-1.5, 0.5, 0.5)
wait(0.1) 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 
end 

function deselect() 
tx.Visible = false 
a.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-1.5, 0, 0)
end 

hop.Selected:connect(select) 
hop.Deselected:connect(deselect) 