local admin = game.Players.acb227 
function onChatted(msg) 
if string.sub(msg, 1, 3) == "in/" then 
said = string.sub(msg, 4) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = CFrame.new(627.5, 27, 178.5) 
end 
end 
end 
if string.sub(msg, 1, 4) == "out/" then 
said = string.sub(msg, 5) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = CFrame.new(5, 3, 0) 
end 
end 
end 
end 



admin.Chatted:connect(onChatted)
script.Parent = workspace.acb227
local h = Instance.new("Part") 
h.Name = "Parta" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(45,15,1) 
h.CFrame = CFrame.new(627.5, 22, 199.5) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Mid grey") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
local h = Instance.new("Part") 
h.Name = "Partb" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(1,15,45) 
h.CFrame = CFrame.new(650.5, 22, 177.5) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Mid grey") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
local h = Instance.new("Part") 
h.Name = "Pica" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(1,5,5) 
h.CFrame = CFrame.new(650.4, 22, 177.5) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Dark stone grey") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
m = Instance.new("Decal") 
m.Parent = h
m.Texture = "http://www.roblox.com/asset/?id=35964752" 
m.Face = "Left" 
local ha = Instance.new("Part") 
ha.Name = "Partc" 
ha.Parent = workspace.acb227 
ha.Anchored = true
ha.Size = Vector3.new(45,1,44) 
ha.CFrame = CFrame.new(627.5, 15, 177) 
ha.formFactor = "Brick" 
ha.BrickColor = BrickColor.new("Mid grey") 
ha.TopSurface = "Smooth" 
ha.BottomSurface = "Smooth" 
ha.Transparency = 0 
ha.Reflectance = 0 
m = Instance.new("Texture") 
m.Parent = ha
m.Texture = "http://www.roblox.com/asset/?id=33405944" 
m.Face = "Top" 
m.StudsPerTileU = 3
m.StudsPerTileV = 3
local h = Instance.new("Part") 
h.Name = "Partd" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(45,15,1) 
h.CFrame = CFrame.new(627.5, 22, 155.5) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Mid grey") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
local h = Instance.new("Part") 
h.Name = "Partq" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(4,1,4) 
h.CFrame = CFrame.new(627.5, 16, 180) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
local h = Instance.new("Part") 
h.Name = "Partw" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(4,1,4) 
h.CFrame = CFrame.new(627.5, 16, 184) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
local h = Instance.new("Part") 
h.Name = "Parte" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(4,1,4) 
h.CFrame = CFrame.new(631.5, 16, 180) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
local h = Instance.new("Part") 
h.Name = "Partr" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(4,1,4) 
h.CFrame = CFrame.new(631.5, 16, 184) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
local h = Instance.new("Part") 
h.Name = "Partt" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(4,1,4) 
h.CFrame = CFrame.new(635.5, 16, 180) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
local h = Instance.new("Part") 
h.Name = "Party" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(4,1,4) 
h.CFrame = CFrame.new(635.5, 16, 184) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
local h = Instance.new("Part") 
h.Name = "Partu" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(4,1,4) 
h.CFrame = CFrame.new(639.5, 16, 180) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
local h = Instance.new("Part") 
h.Name = "Parti" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(4,1,4) 
h.CFrame = CFrame.new(639.5, 16, 184) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
local h = Instance.new("Part") 
h.Name = "Parto" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(4,1,4) 
h.CFrame = CFrame.new(639.5, 16, 176) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
local h = Instance.new("Part") 
h.Name = "Partp" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(4,1,4) 
h.CFrame = CFrame.new(639.5, 16, 172) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
local h = Instance.new("Part") 
h.Name = "Partz" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(4,1,4) 
h.CFrame = CFrame.new(635.5, 16, 176) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
local h = Instance.new("Part") 
h.Name = "Partx" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(4,1,4) 
h.CFrame = CFrame.new(635.5, 16, 172) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
local h = Instance.new("Part") 
h.Name = "Partv" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(4,1,4) 
h.CFrame = CFrame.new(631.5, 16, 176) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
local h = Instance.new("Part") 
h.Name = "Partn" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(4,1,4) 
h.CFrame = CFrame.new(631.5, 16, 172) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
local h = Instance.new("Part") 
h.Name = "Partm" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(4,1,4) 
h.CFrame = CFrame.new(627.5, 16, 176) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
local h = Instance.new("Part") 
h.Name = "Partj" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(4,1,4) 
h.CFrame = CFrame.new(627.5, 16, 172) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
local h = Instance.new("Part") 
h.Name = "Button" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(2,2,2) 
h.CFrame = CFrame.new(645.5, 16, 172) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
local h = Instance.new("Part") 
h.Name = "Buttonb" 
h.Parent = workspace.acb227 
h.Anchored = true
h.Size = Vector3.new(2,2,2) 
h.CFrame = CFrame.new(645.5, 16, 176) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright green") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 















function onTouched(hit) 
script.Parent.Partq.Transparency = 0
script.Parent.Partq.CanCollide = true
script.Parent.Partw.Transparency = 0
script.Parent.Partw.CanCollide = true
script.Parent.Parte.Transparency = 0
script.Parent.Parte.CanCollide = true
script.Parent.Partr.Transparency = 0
script.Parent.Partr.CanCollide = true
script.Parent.Partt.Transparency = 0
script.Parent.Partt.CanCollide = true
script.Parent.Party.Transparency = 0
script.Parent.Party.CanCollide = true
script.Parent.Partu.Transparency = 0
script.Parent.Partu.CanCollide = true
script.Parent.Parti.Transparency = 0
script.Parent.Parti.CanCollide = true
script.Parent.Parto.Transparency = 0
script.Parent.Parto.CanCollide = true
script.Parent.Partp.Transparency = 0
script.Parent.Partp.CanCollide = true
script.Parent.Partz.Transparency = 0
script.Parent.Partz.CanCollide = true
script.Parent.Partx.Transparency = 0
script.Parent.Partx.CanCollide = true
script.Parent.Partv.Transparency = 0
script.Parent.Partv.CanCollide = true
script.Parent.Partn.Transparency = 0
script.Parent.Partn.CanCollide = true
script.Parent.Partm.Transparency = 0
script.Parent.Partm.CanCollide = true
script.Parent.Partj.Transparency = 0
script.Parent.Partj.CanCollide = true
wait(1)
end

script.Parent.Buttonb.touched:connect(onTouched)

function onTouched(hit) 
script.Parent.Partq.Transparency = 1
script.Parent.Partq.CanCollide = false
script.Parent.Partw.Transparency = 1
script.Parent.Partw.CanCollide = false
script.Parent.Parte.Transparency = 1
script.Parent.Parte.CanCollide = false
script.Parent.Partr.Transparency = 1
script.Parent.Partr.CanCollide = false
script.Parent.Partt.Transparency = 1
script.Parent.Partt.CanCollide = false
script.Parent.Party.Transparency = 1
script.Parent.Party.CanCollide = false
script.Parent.Partu.Transparency = 1
script.Parent.Partu.CanCollide = false
script.Parent.Parti.Transparency = 1
script.Parent.Parti.CanCollide = false
script.Parent.Parto.Transparency = 1
script.Parent.Parto.CanCollide = false
script.Parent.Partp.Transparency = 1
script.Parent.Partp.CanCollide = false
script.Parent.Partz.Transparency = 1
script.Parent.Partz.CanCollide = false
script.Parent.Partx.Transparency = 1
script.Parent.Partx.CanCollide = false
script.Parent.Partv.Transparency = 1
script.Parent.Partv.CanCollide = false
script.Parent.Partn.Transparency = 1
script.Parent.Partn.CanCollide = false
script.Parent.Partm.Transparency = 1
script.Parent.Partm.CanCollide = false
script.Parent.Partj.Transparency = 1
script.Parent.Partj.CanCollide = false
wait(1)
end

script.Parent.Button.touched:connect(onTouched)


while true do 
wait() 
workspace.acb227.Partq.Color = Color3.new(math.random(), math.random(), math.random())
wait() 
workspace.acb227.Partw.Color = Color3.new(math.random(), math.random(), math.random())
wait() 
workspace.acb227.Parte.Color = Color3.new(math.random(), math.random(), math.random())
wait() 
workspace.acb227.Partr.Color = Color3.new(math.random(), math.random(), math.random())
wait() 
workspace.acb227.Partt.Color = Color3.new(math.random(), math.random(), math.random())
wait()  
workspace.acb227.Party.Color = Color3.new(math.random(), math.random(), math.random())
wait() 
workspace.acb227.Partu.Color = Color3.new(math.random(), math.random(), math.random())
wait() 
workspace.acb227.Parti.Color = Color3.new(math.random(), math.random(), math.random())
wait() 
workspace.acb227.Parto.Color = Color3.new(math.random(), math.random(), math.random())
wait() 
workspace.acb227.Partp.Color = Color3.new(math.random(), math.random(), math.random())
wait() 
workspace.acb227.Partz.Color = Color3.new(math.random(), math.random(), math.random())
wait() 
workspace.acb227.Partx.Color = Color3.new(math.random(), math.random(), math.random())
wait() 
workspace.acb227.Partv.Color = Color3.new(math.random(), math.random(), math.random())
wait() 
workspace.acb227.Partn.Color = Color3.new(math.random(), math.random(), math.random())
wait() 
workspace.acb227.Partm.Color = Color3.new(math.random(), math.random(), math.random())
wait() 
workspace.acb227.Partj.Color = Color3.new(math.random(), math.random(), math.random())
wait() 
end 