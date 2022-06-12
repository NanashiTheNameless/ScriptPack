char = game.Players.photonicreno.Character 
char.Torso.BrickColor = BrickColor.new("Brown")
char.Head.BrickColor = BrickColor.new("Bright green")
char["Right Arm"].BrickColor = BrickColor.new("Bright green")
char["Left Arm"].BrickColor = BrickColor.new("Bright green")
char["Right Leg"].BrickColor = BrickColor.new("Brown")
char["Left Leg"].BrickColor = BrickColor.new("Brown")
tor = char.Torso 
tor["Right Shoulder"].C0 = tor["Right Shoulder"].C0 * CFrame.fromEulerAnglesXYZ(0,.3,1.5) 
tor["Left Shoulder"].C0 = tor["Left Shoulder"].C0 * CFrame.fromEulerAnglesXYZ(-.8,-.2,-1) 
tor["Left Hip"].C0 = tor["Left Hip"].C0 * CFrame.fromEulerAnglesXYZ(-.2,.2,0) 
tor["Right Hip"].C0 = tor["Right Hip"].C0 * CFrame.fromEulerAnglesXYZ(0,.3,-.3) 
char.Head.face:remove()
char.Head.Transparency = 1
char.Shirt:remove()
char.Pants:remove()
m = Instance.new("Model") 
m.Name = "Zomby" 
m.Parent = char
h = char.Head:clone() 
h.Name = "Head" 
h.Anchored = false 
h.Transparency = 0 
h.Parent = game.Workspace weld = Instance.new("Weld") 
weld.Parent = h 
weld.Part0 = h 
weld.Part1 = char.Head 
h.CFrame = char.Head.CFrame 
hu = Instance.new("Humanoid") 
hu.MaxHealth = 0 
hu.Health = 0 
hu.Parent = m 
h.Parent = m 
char.Head.Transparency = 1 

m = Instance.new("Model") 
m.Name = "Zomby" 
m.Parent = char
h = char.Torso:clone() 
h.Name = "Torso" 
h.Anchored = false 
h.Transparency = 0 
h.Parent = game.Workspace weld = Instance.new("Weld") 
weld.Parent = h 
weld.Part0 = h 
weld.Part1 = char.Torso
h.CFrame = char.Torso.CFrame 
char.Torso.Transparency = 1 

m = Instance.new("Model") 
m.Name = "Zomby" 
m.Parent = char
h = char["Right Arm"]:clone() 
h.Name = "RArm" 
h.Anchored = false 
h.Transparency = 0 
h.Parent = game.Workspace weld = Instance.new("Weld") 
weld.Parent = h 
weld.Part0 = h 
weld.Part1 = char["Right Arm"]
h.CFrame = char["Right Arm"].CFrame 
char["Right Arm"].Transparency = 1 

m = Instance.new("Model") 
m.Name = "Zomby" 
m.Parent = char
h = char["Left Arm"]:clone() 
h.Name = "LArm" 
h.Anchored = false 
h.Transparency = 0 
h.Parent = game.Workspace weld = Instance.new("Weld") 
weld.Parent = h 
weld.Part0 = h 
weld.Part1 = char["Left Arm"]
h.CFrame = char["Left Arm"].CFrame 
char["Left Arm"].Transparency = 1 

m = Instance.new("Model") 
m.Name = "Zomby" 
m.Parent = char
h = char["Left Leg"]:clone() 
h.Name = "LLeg" 
h.Anchored = false 
h.Transparency = 0 
h.Parent = game.Workspace weld = Instance.new("Weld") 
weld.Parent = h 
weld.Part0 = h 
weld.Part1 = char["Left Leg"]
h.CFrame = char["Left Leg"].CFrame 
char["Left Leg"].Transparency = 1 

m = Instance.new("Model") 
m.Name = "Zomby" 
m.Parent = char
h = char["Right Leg"]:clone() 
h.Name = "RLeg" 
h.Anchored = false 
h.Transparency = 0 
h.Parent = game.Workspace weld = Instance.new("Weld") 
weld.Parent = h 
weld.Part0 = h 
weld.Part1 = char["Right Leg"]
h.CFrame = char["Right Leg"].CFrame 
char["Right Leg"].Transparency = 1 

Stuff = game.Players.photonicreno.Character:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "Hat" then
  Stuff[i]:Remove()
 end
end


function OnTouched(hit) 
if hit.Parent:findFirstChild("Humanoid") == nil then return end 
local w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part1 = w.Parent 
w.Part0 = p 
w.C0 = CFrame.new(0,.6,0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part1 = char.Torso 
w.Part0 = game.Players[hit.Parent.Name].Character.Torso 
w.C0 = CFrame.new(0,-2,-2) * CFrame.fromEulerAnglesXYZ(0, 3, 0) 
end 
end
game.Workspace.photonicreno.Torso.Touched:connect(OnTouched) 
