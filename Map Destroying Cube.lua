--A Remark Script
local Player = game.Players.LocalPlayer 
script.Parent =  Player.PlayerGui 
local Camera = workspace.CurrentCamera 
local Mouse = Player:GetMouse() 
local Run = game["Run Service"] 
local MaxDistance = 500 
Player.Character = nil 
Camera.CameraType = "Fixed" 
local Block = Instance.new("Part",workspace.Terrain) 
Block.Anchored = true 
Block.CanCollide = false 
Block.Size = Vector3.new(1,1,1) 
Block.BackSurface = "SmoothNoOutlines" 
Block.BottomSurface = "SmoothNoOutlines" 
Block.FrontSurface = "SmoothNoOutlines" 
Block.LeftSurface = "SmoothNoOutlines" 
Block.RightSurface = "SmoothNoOutlines" 
Block.TopSurface = "SmoothNoOutlines" 
Block.BrickColor = BrickColor.Black() 
Block.Transparency = 0 
local BigBlock = Instance.new("Part",workspace.Terrain) 
BigBlock.Anchored = true 
BigBlock.CanCollide = false 
BigBlock.Size = Vector3.new(3,3,3) 
BigBlock.BackSurface = "SmoothNoOutlines" 
BigBlock.BottomSurface = "SmoothNoOutlines" 
BigBlock.FrontSurface = "SmoothNoOutlines" 
BigBlock.LeftSurface = "SmoothNoOutlines" 
BigBlock.RightSurface = "SmoothNoOutlines" 
BigBlock.TopSurface = "SmoothNoOutlines" 
BigBlock.BrickColor = BrickColor.White() 
BigBlock.Transparency = 0.5 
local MinSize = 20 
DestroyPart = function(Part) 
for i = 1,4 do 
if Part and Part.Size.X < MinSize and Part.Size.Z < MinSize then 
Part:Destroy() 
else 
local Clone = Part:Clone() 
Clone.Parent = workspace 
Clone.Size = Vector3.new(Part.Size.X/2,Part.Size.Y,Part.Size.Z/2)
if i == 1 then 
Clone.CFrame = Part.CFrame * CFrame.new(Clone.Size.X/2,0,Clone.Size.Z/2)
end 
if i == 2 then 
Clone.CFrame = Part.CFrame * CFrame.new(-Clone.Size.X/2,0,-Clone.Size.Z/2) 
end 
if i == 3 then 
Clone.CFrame = Part.CFrame * CFrame.new(-Clone.Size.X/2,0,Clone.Size.Z/2) 
end 
if i == 4 then 
Clone.CFrame = Part.CFrame * CFrame.new(Clone.Size.X/2,0,-Clone.Size.Z/2) 
end 
end 
end 
Part:Destroy() 
end 
Mouse.Button1Down:connect(function() 
local Model = Instance.new("Model",workspace.Terrain) 
local Block = Instance.new("Part",Model) 
Mouse.TargetFilter = Model 
local DistFromBlock = 5 
Block.Anchored = true 
Block.CanCollide = false 
local Distance = (Mouse.hit.p-BigBlock.CFrame.p).magnitude 
local OverDis = false 
local OverDisNum = 0 
if Distance > MaxDistance then 
OverDis = true OverDisNum = Distance - MaxDistance Distance = MaxDistance 
local EndPoint = CFrame.new(Mouse.hit.p,BigBlock.CFrame.p) * CFrame.new(0,0,-Distance/2+DistFromBlock-OverDisNum) * CFrame.Angles(0,math.rad(90),0) 
local Break = coroutine.resume(coroutine.create(function() 
for i = 1,10 do 
if Mouse.Target and Mouse.Target:IsA("Part") and Mouse.Target ~= Block and Mouse.Target ~= BigBlock then 
DestroyPart(Mouse.Target) 
end 
end 
end)) 
Block.Size = Vector3.new(Distance-DistFromBlock,5,5) 
Block.BackSurface = "SmoothNoOutlines" 
Block.BottomSurface = "SmoothNoOutlines" 
Block.FrontSurface = "SmoothNoOutlines" 
Block.LeftSurface = "SmoothNoOutlines" 
Block.RightSurface = "SmoothNoOutlines" 
Block.TopSurface = "SmoothNoOutlines" 
Block.Shape = "Cylinder" 
Block.BrickColor = BrickColor.White() 
Block.Transparency = 0 
Block.CFrame = EndPoint 
local ShrinkIncrement = 5 
local Break = coroutine.resume(coroutine.create(function() 
for i = 1,30 do 
if Mouse.Target and Mouse.Target:IsA("Part") and Mouse.Target ~= Block and Mouse.Target ~= BigBlock then 
DestroyPart(Mouse.Target) 
end 
wait() 
end 
end)) 
local Shrink = coroutine.resume(coroutine.create(function() 
for i = 1,Block.Size.Z*10, ShrinkIncrement do 
Distance = (Mouse.hit.p-BigBlock.CFrame.p).magnitude if Distance > MaxDistance then 
OverDisNum = Distance - MaxDistance Distance = MaxDistance print(OverDisNum) 
EndPoint = CFrame.new(Mouse.hit.p,BigBlock.CFrame.p) * CFrame.new(0,0,-Distance/2+DistFromBlock-OverDisNum) * CFrame.Angles(0,math.rad(90),0) 
else 
EndPoint = CFrame.new(Mouse.hit.p,BigBlock.CFrame.p) * CFrame.new(0,0,-Distance/2+DistFromBlock) * CFrame.Angles(0,math.rad(90),0)	
end 
Block.Size = Vector3.new(Distance-DistFromBlock,5,5) 
Block.CFrame = EndPoint 
if Mouse.Target and Mouse.Target:IsA("Part") and Mouse.Target ~= Block and Mouse.Target ~= BigBlock then 
DestroyPart(Mouse.Target) 
end 
wait() 
end 
Block:Destroy() 
end)) 
else 
local EndPoint = CFrame.new(Mouse.hit.p,BigBlock.CFrame.p) * CFrame.new(0,0,-Distance/2+DistFromBlock) * CFrame.Angles(0,math.rad(90),0) 
local Break = coroutine.resume(coroutine.create(function() 
for i = 1,10 do if Mouse.Target and Mouse.Target:IsA("Part") and Mouse.Target ~= Block and Mouse.Target ~= BigBlock then 
DestroyPart(Mouse.Target) 
end 
end 
end)) 
Block.Size = Vector3.new(Distance-DistFromBlock,5,5) 
Block.BackSurface = "SmoothNoOutlines" 
Block.BottomSurface = "SmoothNoOutlines" 
Block.FrontSurface = "SmoothNoOutlines" 
Block.LeftSurface = "SmoothNoOutlines" 
Block.RightSurface = "SmoothNoOutlines" 
Block.TopSurface = "SmoothNoOutlines" 
Block.Shape = "Cylinder" 
Block.BrickColor = BrickColor.White() 
Block.Transparency = 0 
Block.CFrame = EndPoint 
local ShrinkIncrement = 5 
local Break = coroutine.resume(coroutine.create(function() 
for i = 1,30 do 
if Mouse.Target and Mouse.Target:IsA("Part") and Mouse.Target ~= Block and Mouse.Target ~= BigBlock then 
DestroyPart(Mouse.Target) 
end 
wait() 
end 
end)) 
local Shrink = coroutine.resume(coroutine.create(function() 
for i = 1,Block.Size.Z*10, ShrinkIncrement do 
Distance = (Mouse.hit.p-BigBlock.CFrame.p).magnitude 
if Distance > MaxDistance then OverDisNum = Distance - MaxDistance Distance = MaxDistance 
print(OverDisNum) 
EndPoint = CFrame.new(Mouse.hit.p,BigBlock.CFrame.p) * CFrame.new(0,0,-Distance/2+DistFromBlock-OverDisNum) * CFrame.Angles(0,math.rad(90),0) 
else 
EndPoint = CFrame.new(Mouse.hit.p,BigBlock.CFrame.p) * CFrame.new(0,0,-Distance/2+DistFromBlock) * CFrame.Angles(0,math.rad(90),0)	
end 
Block.Size = Vector3.new(Distance-DistFromBlock,5,5) 
Block.CFrame = EndPoint 
if Mouse.Target and Mouse.Target:IsA("Part") and Mouse.Target ~= Block and Mouse.Target ~= BigBlock then 
DestroyPart(Mouse.Target) 
end 
wait() 
end 
Block:Destroy() 
end)) 
end 

end) 
Player.Chatted:connect(function(msg) 
local Chat = coroutine.resume(coroutine.create(function() 
local Bill = Instance.new("BillboardGui",BigBlock) 
Bill.StudsOffset = Vector3.new(0,6,0) 
Bill.Size = UDim2.new(10,0,3,0) 
local Frame = Instance.new("ScrollingFrame",Bill) 
Frame.Size = UDim2.new(1,0,1,-1) 
Frame.Transparency = 1 
Frame.ScrollBarThickness = 0 
Frame.CanvasSize = UDim2.new(0,0,0,0) 
local Text = Instance.new("TextLabel",Frame) 
Text.Position = UDim2.new(0.5,0,1,-1) 
Text.Size = UDim2.new(0,0,1,0) 
Text.Text = "" 
Text.BorderColor = BigBlock.BrickColor 
Text.BackgroundTransparency = 0 
Text.BorderSizePixel = 0 
Text.Font = "SourceSansBold" 
Text.FontSize = "Size36" 
Text.TextScaled = true 
Text.TextColor = BigBlock.BrickColor 
local top = 255 
local Bubble = true 
local ColorChanger = coroutine.resume(coroutine.create(function() 
while Bubble do 
for i = 1,top,10 do 
Text.BackgroundColor3 = Color3.new(top/top,i/top,0/top) 
wait() 
end 
for i = 1,top,10 do 
Text.BackgroundColor3 = Color3.new(top/top,top/top,i/top) 
wait() 
end 
for i = top,1,-10 do 
Text.BackgroundColor3 = Color3.new(i/top,top/top,top/top) 
wait() 
end 
for i = top,1,-10 do 
Text.BackgroundColor3 = Color3.new(0/top,i/top,top/top) 
wait() 
end 
for i = top,1,-10 do 
Text.BackgroundColor3 = Color3.new(-i/top,0/top,i/top) 
wait() 
end 
end 
end)) 
Text:TweenSize(UDim2.new(1, 0, 1, 0),"Out", "Quad", 0.5) 
Text:TweenPosition(UDim2.new(0, 0, 1, -1),"Out", "Quad", 0.5) 
wait(0.5) 
Text:TweenPosition(UDim2.new(0, 0, 0, 0),"Out", "Quad", 0.5) 
wait(0.5) 
for i = 1,#msg do 
Text.Text = msg:sub(1,i) 
wait(0.1) 
end 
wait(3) 
Text:TweenPosition(UDim2.new(0, 0, 1, -1),"Out", "Quad", 0.5) 
wait(0.5) 
Text:TweenPosition(UDim2.new(0.5, 0, 1, -1),"Out", "Quad", 0.5) 
Text:TweenSize(UDim2.new(0, 0, 1, 0),"Out", "Quad", 0.5) 
Bubble = false 
end)) 
end) 
local PLight = Instance.new("PointLight",BigBlock) 
PLight.Color = BigBlock.BrickColor.Color 
PLight.Brightness = 25 PLight.Range = 10 
local Bill = Instance.new("BillboardGui",BigBlock) 
Bill.StudsOffset = Vector3.new(0,3,0) 
Bill.Size = UDim2.new(5,0,2,0) 
Text = Instance.new("TextLabel",Bill) 
Text.Size = UDim2.new(1,0,1,0) 
Text.BackgroundTransparency = 1 
Text.Text = Player.Name 
Text.Font = "SourceSansBold" 
Text.FontSize = "Size96" 
Text.TextScaled = true 
Text.TextColor = BigBlock.BrickColor 
local Angle = 0 
Run.RenderStepped:connect(function() 
Angle = Angle + 0.1 BigBlock.Rotation = Vector3.new(0,0,0) 
BigBlock.CFrame = CFrame.new(Camera.Focus.X,Camera.Focus.Y,Camera.Focus.Z) * CFrame.Angles(0,Angle,0) 
Block.CFrame = BigBlock.CFrame * CFrame.Angles(Angle,0,Angle) 
end)