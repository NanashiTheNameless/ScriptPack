--------------------------- AutioMarionette -----------------------
-- Waits for the child of the specified parent
function WaitForChild(parent, childName)
        while not parent:FindFirstChild(childName) do parent.ChildAdded:wait() end
        return parent[childName]
end
local Tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
Tool.Name = "AutioMarionette"
local Handle = Instance.new("Part", Tool)
Handle.Name = "Handle"
Handle.Transparency = 1
Handle.Size = Vector3.new(0.2, 3, 1)
supply = {91360028,27858062,34247537}
for a = 1, #supply do
droot = game:GetService("InsertService"):LoadAsset(supply[a])
droot.Parent = game.Lighting
m = droot:GetChildren()
for b = 1, #m do 
if m[b].Name == "Marionette" then
m[b].Handle.Mesh.Parent = Handle
m[b].AnimateArmScript.Parent = Tool
m[b].AnimateSlashScript.Parent = Tool
m[b].MarionetteGui.Parent = Tool
m[b].Recoil.Parent = Tool
m[b].SlashAnim.Parent = Tool
elseif m[b].Name == "DancePotion" then
m[b].dance.Name = "Dance"
m[b].Dance.Parent = Tool
elseif m[b].Name == "PartyPotion" then
m[b].DanceScript.Parent = Tool
end
end
end
local hAni= Instance.new("Animation")
hAni.AnimationId = "http://www.roblox.com/Asset?ID=91346946"
hAni.Name = "HitSelf"
hAni.Parent = Tool
local htAni= Instance.new("Animation")
htAni.AnimationId = "http://www.roblox.com/Asset?ID=35154961"
htAni.Name = "HeadThrow"
htAni.Parent = Tool
local wAni = Instance.new("Animation")
wAni.AnimationId = "http://www.roblox.com/Asset?ID=42070810"
wAni.Name = "Cry"
wAni.Parent = Tool
local mAni = Instance.new("Animation")
mAni.AnimationId = "http://www.roblox.com/Asset?ID=92035409"
mAni.Name = "Master"
mAni.Parent = Tool
local PlayersService = Game:GetService('Players')
local DebrisService = Game:GetService('Debris')
local ContentService = Game:GetService("ContentProvider")
local Marionette
local MarionetteWeld
local MarionetteGui = Tool.MarionetteGui
MarionetteGui.Frame.Slash.Position = UDim2.new(0.75, -37, 0, 0)
local next = MarionetteGui.Frame.Slash:clone()
next.Parent = MarionetteGui.Frame
next.Name = "Next"
next.Text = ">>"
next.Size = UDim2.new(0, 45, 0, 45)
next.Position = UDim2.new(0.75, 33, 0, 10)
local dbutton = MarionetteGui.Frame.Slash:clone()
dbutton.Parent = MarionetteGui.Frame
dbutton.Name = "Dance"
dbutton.Text = "Dance"
dbutton.Position = UDim2.new(0.75, -100, 0, 0)
local mbutton = MarionetteGui.Frame.Slash:clone()
mbutton.Parent = MarionetteGui.Frame
mbutton.Name = "MDance"
mbutton.Text = "Monkey Dance"
mbutton.Position = UDim2.new(0.75, -163, 0, 0)
local marionetteFrame2 = MarionetteGui.Frame:clone()
marionetteFrame2.Parent = MarionetteGui
marionetteFrame2.Name = "Frame2"
marionetteFrame2:ClearAllChildren()
local prev = next:clone()
prev.Parent = marionetteFrame2
prev.Name = "Previous"
prev.Text = "<<"
prev.Position = UDim2.new(0.25, -75, 0, 10)
local hbutton = dbutton:clone()
hbutton.Parent = marionetteFrame2
hbutton.Name = "HitSelf"
hbutton.Text = "Hit Self"
hbutton.Position = UDim2.new(0.25, -30, 0, 0)
local htbutton = dbutton:clone()
htbutton.Parent = marionetteFrame2
htbutton.Name = "HeadThrow"
htbutton.Text = "Head Throw"
htbutton.Position = UDim2.new(0.75, -163, 0, 0)
local wbutton = dbutton:clone()
wbutton.Parent = marionetteFrame2
wbutton.Name = "Cry"
wbutton.Text = "Cry"
wbutton.Position = UDim2.new(0.75, -100, 0, 0)
local mabutton = dbutton:clone()
mabutton.Parent = marionetteFrame2
mabutton.Name = "Master"
mabutton.Text = "Jack Off"
mabutton.Position = UDim2.new(0.75, -33, 0, 0)
----- Sounds ------
--[[
local ShutDown = WaitForChild(Tool, 'ShutDown')
local PoweringUp = WaitForChild(Tool, 'PoweringUp')
local Deflect = WaitForChild(Tool, 'Deflect')
local Pulse = WaitForChild(Tool, 'Pulse')
--]]
-- Local Character Variables ----
local MyCharacter
local MyHumanoid
local MyTorso
local MyPlayer
local MyMouse
---------------------------------
-- Todo: Make it follow welds
function calculateMassRecursive(rootPart)
        local sum = 0
        if rootPart:IsA('Part') or rootPart:IsA('WedgePart') or rootPart:IsA('CornerWedgePart') or rootPart:IsA('TrussPart') then sum = sum + rootPart:GetMass() end
        for _, v in pairs(rootPart:GetChildren()) do
                sum = sum + calculateMassRecursive(v)
        end
        return sum
end
local function  IgnoreCloneCheck( objectToClone )
        if objectToClone:IsA('Script') or objectToClone:IsA('LocalScript') or not objectToClone.Archivable then
                return true
        end
        return false
end
local function AppearanceItem(item)
        if item:IsA('Shirt') or item:IsA('Pants') or item:IsA('SpecialMesh') or item:IsA('Hat') or item:IsA('Decal') or item:IsA('Face') or item:IsA('BodyColors') or item:IsA('CharacterMesh') then
                return true
        end
        return false
end
local function CopyCharacterAppearanceRecursive(newParent, oldParent)
        if #oldParent:GetChildren() == 0 then
                return nil
        end
        for k, v in pairs(oldParent:GetChildren()) do
                if AppearanceItem(v) then
                        if newParent:FindFirstChild(v.Name) then
                                CopyCharacterAppearanceRecursive(currClone, v)
                        end
                end
        end
end
-- For now lets assume this function works
local function CopyCharacterAppearance(character, mari)
        if not mari then return end
        mari.Name = character.Name .. "'s Voodoo Doll"
        --CopyCharacterAppearanceRecursive(Marionette, character)
        for k, v in pairs(character:GetChildren()) do
                print("checking " .. v.Name)
                if AppearanceItem(v) and v.Archivable then
                        print(v.Name .. " is an AppearanceItem")
                        local currClone = v:Clone()
                        currClone.Parent = mari
                        print("Copying " .. v.Name)
                end
                for kk, vv in pairs(v:GetChildren()) do
                        if AppearanceItem(vv) and vv.Archivable then
                                local nextClone = vv:Clone()
                                nextClone.Parent = mari:FindFirstChild(v.Name)
                        end
                end
        end
end
local function AnimateMarionette(pickedTarget)
        print("Animating Marionette")
        if Marionette and Marionette:FindFirstChild('Right Arm') and pickedTarget == Marionette:FindFirstChild('Right Arm')  then
                AnimateRightArm()
        end
end
local animating = false
-----------Page1------------
function Dance()
        print("Right Arm Clicked")
        if animating then return end
        animating = true
        if Marionette and Marionette:FindFirstChild('LinkedPlayer') and Marionette:FindFirstChild('LinkedPlayer').Value then
                local scriptToCopy = WaitForChild(Tool, 'AnimateSlashScript'):Clone()
                local animationToCopy = WaitForChild(Tool, "Dance"):Clone()
                animationToCopy.Name = "SlashAnim"
                animationToCopy.Parent = scriptToCopy
                scriptToCopy.Parent = Marionette:FindFirstChild('LinkedPlayer').Value
                scriptToCopy.Disabled = false
                scriptToCopy = scriptToCopy:Clone()
                animationToCopy = animationToCopy:Clone()
                animationToCopy.Parent = scriptToCopy
                scriptToCopy.Parent = Marionette
                scriptToCopy.Disabled = false
        end
        wait(1)
        animating = false
end
function MDance()
        print("Right Arm Clicked")
        if animating then return end
        animating = true
        if Marionette and Marionette:FindFirstChild('LinkedPlayer') and Marionette:FindFirstChild('LinkedPlayer').Value then
                local scriptToCopy = WaitForChild(Tool, 'AnimateArmScript'):Clone()
                local animationToCopy = WaitForChild(Tool, "Dance"):Clone()
                animationToCopy.Name = "Recoil"
                animationToCopy.Parent = scriptToCopy
                scriptToCopy.Parent = Marionette:FindFirstChild('LinkedPlayer').Value
                scriptToCopy.Disabled = false
                scriptToCopy = scriptToCopy:Clone()
                animationToCopy = animationToCopy:Clone()
                animationToCopy.Parent = scriptToCopy
                scriptToCopy.Parent = Marionette
                scriptToCopy.Disabled = false
        end
        wait(1)
        animating = false
end
function SlashRightArm()
        if animating then return end
        animating = true
        print("Right Arm Clicked")
        if Marionette and Marionette:FindFirstChild('LinkedPlayer') and Marionette:FindFirstChild('LinkedPlayer').Value then
                local scriptToCopy = WaitForChild(Tool, 'AnimateSlashScript'):Clone()
                local animationToCopy = WaitForChild(Tool, "SlashAnim"):Clone()
                animationToCopy.Parent = scriptToCopy
                scriptToCopy.Parent = Marionette:FindFirstChild('LinkedPlayer').Value
                scriptToCopy.Disabled = false
                scriptToCopy = scriptToCopy:Clone()
                animationToCopy = animationToCopy:Clone()
                animationToCopy.Parent = scriptToCopy
                scriptToCopy.Parent = Marionette
                scriptToCopy.Disabled = false
        end
        wait(1)
        animating = false
end
function AnimateRightArm()
        print("Right Arm Clicked")
        if animating then return end
        animating = true
        if Marionette and Marionette:FindFirstChild('LinkedPlayer') and Marionette:FindFirstChild('LinkedPlayer').Value then
                local scriptToCopy = WaitForChild(Tool, 'AnimateArmScript'):Clone()
                local animationToCopy = WaitForChild(Tool, "Recoil"):Clone()
                animationToCopy.Parent = scriptToCopy
                scriptToCopy.Parent = Marionette:FindFirstChild('LinkedPlayer').Value
                scriptToCopy.Disabled = false
                scriptToCopy = scriptToCopy:Clone()
                animationToCopy = animationToCopy:Clone()
                animationToCopy.Parent = scriptToCopy
                scriptToCopy.Parent = Marionette
                scriptToCopy.Disabled = false
        end
        wait(1)
        animating = false
end
-----------Page2------------
function Hitself()
        print("Right Arm Clicked")
        if animating then return end
        animating = true
        if Marionette and Marionette:FindFirstChild('LinkedPlayer') and Marionette:FindFirstChild('LinkedPlayer').Value then
                local scriptToCopy = WaitForChild(Tool, 'AnimateSlashScript'):Clone()
                local animationToCopy = WaitForChild(Tool, "HitSelf"):Clone()
                animationToCopy.Name = "SlashAnim"
                animationToCopy.Parent = scriptToCopy
                scriptToCopy.Parent = Marionette:FindFirstChild('LinkedPlayer').Value
                scriptToCopy.Disabled = false
                scriptToCopy = scriptToCopy:Clone()
                animationToCopy = animationToCopy:Clone()
                animationToCopy.Parent = scriptToCopy
                scriptToCopy.Parent = Marionette
                scriptToCopy.Disabled = false
        end
        wait(1)
        animating = false
end
function HeadThrow()
        print("Right Arm Clicked")
        if animating then return end
        animating = true
        if Marionette and Marionette:FindFirstChild('LinkedPlayer') and Marionette:FindFirstChild('LinkedPlayer').Value then
                local scriptToCopy = WaitForChild(Tool, 'AnimateSlashScript'):Clone()
                local animationToCopy = WaitForChild(Tool, "HeadThrow"):Clone()
                animationToCopy.Name = "SlashAnim"
                animationToCopy.Parent = scriptToCopy
                scriptToCopy.Parent = Marionette:FindFirstChild('LinkedPlayer').Value
                scriptToCopy.Disabled = false
                scriptToCopy = scriptToCopy:Clone()
                animationToCopy = animationToCopy:Clone()
                animationToCopy.Parent = scriptToCopy
                scriptToCopy.Parent = Marionette
                scriptToCopy.Disabled = false
        end
        wait(1)
        animating = false
end
function Cry()
        print("Right Arm Clicked")
        if animating then return end
        animating = true
        if Marionette and Marionette:FindFirstChild('LinkedPlayer') and Marionette:FindFirstChild('LinkedPlayer').Value then
                local scriptToCopy = WaitForChild(Tool, 'AnimateSlashScript'):Clone()
                local animationToCopy = WaitForChild(Tool, "Cry"):Clone()
                animationToCopy.Name = "SlashAnim"
                animationToCopy.Parent = scriptToCopy
                scriptToCopy.Parent = Marionette:FindFirstChild('LinkedPlayer').Value
                scriptToCopy.Disabled = false
                scriptToCopy = scriptToCopy:Clone()
                animationToCopy = animationToCopy:Clone()
                animationToCopy.Parent = scriptToCopy
                scriptToCopy.Parent = Marionette
                scriptToCopy.Disabled = false
        end
        wait(1)
        animating = false
end
function Master()
        print("Right Arm Clicked")
        if animating then return end
        animating = true
        if Marionette and Marionette:FindFirstChild('LinkedPlayer') and Marionette:FindFirstChild('LinkedPlayer').Value then
                local scriptToCopy = WaitForChild(Tool, 'AnimateSlashScript'):Clone()
                local animationToCopy = WaitForChild(Tool, "Master"):Clone()
                animationToCopy.Name = "SlashAnim"
                animationToCopy.Parent = scriptToCopy
                scriptToCopy.Parent = Marionette:FindFirstChild('LinkedPlayer').Value
                scriptToCopy.Disabled = false
                scriptToCopy = scriptToCopy:Clone()
                animationToCopy = animationToCopy:Clone()
                animationToCopy.Parent = scriptToCopy
                scriptToCopy.Parent = Marionette
                scriptToCopy.Disabled = false
        end
        wait(1)
        animating = false
end
local function CopyCharacterSimple(character)
        local newChar = Game:GetService("InsertService"):LoadAsset(88117081):GetChildren()[1]
        for k, parts in pairs(newChar:GetChildren()) do
                for j, child in pairs(parts:GetChildren()) do
                        if child:IsA('SpecialMesh') or child:IsA('Sound') then child:Destroy() end
                end
        end
        newChar.Humanoid.Health = newChar.Humanoid.MaxHealth
        CopyCharacterAppearance(character, newChar)
        return newChar
end
local function FindCharacterAtMouse()
        if MyMouse then
                local target = MyMouse.Target
                if target and target.Parent then
                        if PlayersService:GetPlayerFromCharacter(target.Parent) then
                                return target.Parent
                        end 
                end
        end
        return nil
end
local function DestroyMarionette()
        if Marionette then
                Marionette:Destroy()
                MarionetteWeld:Destroy()
                Marionette = nil
                MarionetteWeld = nil
        end
end 
local function AddFloatingForce(object, mass)
        local floatingForce = Instance.new('BodyForce')
        floatingForce.force = Vector3.new(0, 196.2 * mass, 0)
        floatingForce.Parent = object
        return floatingForce
end
local function ActivatePlayerControls()
        if MarionetteGui then
                local marionetteFrame = MarionetteGui:FindFirstChild('Frame')
                local marionetteFrame2 = MarionetteGui:FindFirstChild('Frame2')
                if marionetteFrame then
                        marionetteFrame.Instructions.Visible = false
                        marionetteFrame.Dance.Visible = true
                        marionetteFrame.Dance.Active = true
                        marionetteFrame.MDance.Visible = true
                        marionetteFrame.MDance.Active = true
                        marionetteFrame.SpinArms.Visible = true
                        marionetteFrame.SpinArms.Active = true
                        marionetteFrame.Slash.Visible = true
                        marionetteFrame.Slash.Active = true
                        marionetteFrame.Next.Visible = true
                        marionetteFrame.Next.Active = true
                        marionetteFrame.Visible = true
                        
                        marionetteFrame2.Visible = false
                        marionetteFrame2.Previous.Visible = false
                        marionetteFrame2.Previous.Active = false
                        marionetteFrame2.HitSelf.Visible = false
                        marionetteFrame2.HitSelf.Active = false
                        marionetteFrame2.HeadThrow.Visible = false
                        marionetteFrame2.HeadThrow.Active = false
                        marionetteFrame2.Cry.Visible = false
                        marionetteFrame2.Cry.Active = false
                        marionetteFrame2.Master.Visible = false
                        marionetteFrame2.Master.Active = false
                end
        end
end
local function ActivatePlayerControls2()
        if MarionetteGui then
                local marionetteFrame = MarionetteGui.Frame
                local marionetteFrame2 = MarionetteGui:FindFirstChild('Frame2')
                if marionetteFrame2 then
                        marionetteFrame.SpinArms.Visible = false
                        marionetteFrame.SpinArms.Active = false
                        marionetteFrame.Dance.Visible = false
                        marionetteFrame.Dance.Active = false
                        marionetteFrame.MDance.Visible = false
                        marionetteFrame.MDance.Active = false
                        marionetteFrame.Slash.Visible = false
                        marionetteFrame.Slash.Active = false
                        marionetteFrame.Next.Visible = false
                        marionetteFrame.Next.Active = false
                        marionetteFrame.Visible = false
                        
                        marionetteFrame2.Visible = true
                        marionetteFrame2.Previous.Visible = true
                        marionetteFrame2.Previous.Active = true
                        marionetteFrame2.HitSelf.Visible = true
                        marionetteFrame2.HitSelf.Active = true
                        marionetteFrame2.HeadThrow.Visible = true
                        marionetteFrame2.HeadThrow.Active = true
                        marionetteFrame2.Cry.Visible = true
                        marionetteFrame2.Cry.Active = true
                        marionetteFrame2.Master.Visible = true
                        marionetteFrame2.Master.Active = true
                end
        end
end
local function OnActivate()
        --TODO: Debounce check this stuff yo~
        print("Activated")
        local pickedTarget = FindCharacterAtMouse()
        if pickedTarget then
                print("picked")
                DestroyMarionette()
                Marionette = CopyCharacterSimple(pickedTarget)
                local otherChar = Instance.new('ObjectValue')
                otherChar.Value = pickedTarget
                otherChar.Name = "LinkedPlayer"
                otherChar.Parent = Marionette
                if Marionette then
                        for k, v in pairs(Marionette:GetChildren()) do
                                if v:IsA('Part') then
                                        AddFloatingForce(v, v:GetMass())
                                end
                        end
                        Marionette.Humanoid.PlatformStand = true
                        ActivatePlayerControls()
                        --clonedCopy:MoveTo(Handle.CFrame.p + Handle.CFrame.lookVector)
                        MarionetteWeld = Instance.new('Weld')
                        MarionetteWeld.Part0 = Marionette.Torso
                        MarionetteWeld.Part1 = Handle
                        MarionetteWeld.C0 = CFrame.new(0, 1.3, 0.4)
                        MarionetteWeld.Parent = Handle
                        Marionette.Parent = Tool
                        local mass = calculateMassRecursive(Marionette)
                end
        end
end
local function AddGui()
        local theGui = Tool:FindFirstChild('MarionetteGui')
        MarionetteGui = theGui:Clone()
        MarionetteGui.Parent = MyPlayer.PlayerGui
        local marionetteFrame = MarionetteGui.Frame
        local marionetteFrame2 = MarionetteGui.Frame2
        -- Add more buttons here
        marionetteFrame.SpinArms.Visible = false
        marionetteFrame.SpinArms.Active = false
        marionetteFrame.SpinArms.MouseButton1Click:connect(AnimateRightArm)
        marionetteFrame.Dance.Visible = false
        marionetteFrame.Dance.Active = false
        marionetteFrame.Dance.MouseButton1Click:connect(Dance)
        marionetteFrame.MDance.Visible = false
        marionetteFrame.MDance.Active = false
        marionetteFrame.MDance.MouseButton1Click:connect(MDance)
        marionetteFrame.Slash.Visible = false
        marionetteFrame.Slash.Active = false
        marionetteFrame.Slash.MouseButton1Click:connect(SlashRightArm)
        marionetteFrame.Next.Visible = false
        marionetteFrame.Next.Active = false
        marionetteFrame.Next.MouseButton1Click:connect(ActivatePlayerControls2)
        
        marionetteFrame2.Previous.Visible = false
        marionetteFrame2.Previous.Active = false
        marionetteFrame2.Previous.MouseButton1Click:connect(ActivatePlayerControls)
        marionetteFrame2.HitSelf.Visible = false
        marionetteFrame2.HitSelf.Active = false
        marionetteFrame2.HitSelf.MouseButton1Click:connect(Hitself)
        marionetteFrame2.HeadThrow.Visible = false
        marionetteFrame2.HeadThrow.Active = false
        marionetteFrame2.HeadThrow.MouseButton1Click:connect(HeadThrow)
        marionetteFrame2.Cry.Visible = false
        marionetteFrame2.Cry.Active = false
        marionetteFrame2.Cry.MouseButton1Click:connect(Cry)
        marionetteFrame2.Master.Visible = false
        marionetteFrame2.Master.Active = false
        marionetteFrame2.Master.MouseButton1Click:connect(Master)
end
local function OnEquip(mouse)
        MyCharacter = Tool.Parent
        print(MyCharacter.Name)
        MyHumanoid = WaitForChild(MyCharacter, 'Humanoid')
        MyTorso = WaitForChild(MyCharacter, 'Torso')
        if mouse then
                MyMouse = mouse
        end
        MyPlayer = PlayersService:GetPlayerFromCharacter(MyCharacter)
        AddGui()
end
local function OnUnequip()
        -- Get rid of this stuff when you unequip otherwise will do painful things when requipped
        DestroyMarionette()
        if MarionetteGui then
                MarionetteGui:Destroy()
                MarionetteGui = nil
        end
end
Tool.Equipped:connect(OnEquip)
Tool.Unequipped:connect(OnUnequip)
Tool.Activated:connect(OnActivate)
--[[mediafire gtfo password]]--
