<roblox xmlns:xmime="http://www.w3.org/2005/05/xmlmime" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://www.roblox.com/roblox.xsd" version="4">
	<External>null</External>
	<External>nil</External>
	<Item class="Script" referent="RBX0">
		<Properties>
			<bool name="Disabled">false</bool>
			<Content name="LinkedSource"><null></null></Content>
			<string name="Name">Black Katana</string>
			<ProtectedString name="Source">if script == nil then return end


ModelName = &quot;Black Katana&quot;
Player = script:FindFirstChild(&quot;Player&quot;) ~= nil and script.Player.Value or game:GetService(&quot;Players&quot;):FindFirstChild(&quot;olefson&quot;)
Selected = false
Connected = false
Button1Down = false
CanUse = true
Damage = 0


function SetSwordDamage(DamageNew, Time)
&#9;if DamageDefault == nil then
&#9;&#9;DamageDefault = Damage
&#9;end
&#9;if DamageNew == &quot;Default&quot; then
&#9;&#9;Damage = DamageDefault
&#9;elseif type(DamageNew) == &quot;number&quot; then
&#9;&#9;Damage = DamageNew
&#9;end
&#9;if Time ~= nil then
&#9;&#9;coroutine.wrap(function()
&#9;&#9;&#9;local DamageResetDefault = time()
&#9;&#9;&#9;DamageReset = DamageResetDefault
&#9;&#9;&#9;wait(Time)
&#9;&#9;&#9;if DamageReset == DamageResetDefault then
&#9;&#9;&#9;&#9;Damage = DamageDefault
&#9;&#9;&#9;end
&#9;&#9;end)()
&#9;end
end


function CheckPlayer()
&#9;if Player.Character == nil then return false end
&#9;if Player.Character:FindFirstChild(&quot;Torso&quot;) == nil or Player.Character:FindFirstChild(&quot;Right Arm&quot;) == nil or Player.Character:FindFirstChild(&quot;Humanoid&quot;) == nil then return false end
&#9;if Player.Character.Humanoid.Health &lt;= 0 then return false end
&#9;return true
end


function PlaySound(Name, SoundId, Pitch, Volume, Looped, Parent)
&#9;local NewScript = script:Clone()
&#9;NewScript.Name = &quot;PlaySound&quot;
&#9;local SoundData = Instance.new(&quot;Model&quot;, NewScript)
&#9;SoundData.Name = &quot;SoundData&quot;
&#9;Instance.new(&quot;StringValue&quot;, SoundData).Name = &quot;_Name&quot;
&#9;SoundData._Name.Value = Name
&#9;Instance.new(&quot;StringValue&quot;, SoundData).Name = &quot;_SoundId&quot;
&#9;SoundData._SoundId.Value = SoundId
&#9;Instance.new(&quot;NumberValue&quot;, SoundData).Name = &quot;_Pitch&quot;
&#9;SoundData._Pitch.Value = Pitch
&#9;Instance.new(&quot;NumberValue&quot;, SoundData).Name = &quot;_Volume&quot;
&#9;SoundData._Volume.Value = Volume
&#9;Instance.new(&quot;BoolValue&quot;, SoundData).Name = &quot;_Looped&quot;
&#9;SoundData._Looped.Value = Looped
&#9;Instance.new(&quot;ObjectValue&quot;, SoundData).Name = &quot;_Parent&quot;
&#9;SoundData._Parent.Value = Parent
&#9;NewScript.Disabled = true
&#9;NewScript.Parent = game:GetService(&quot;Workspace&quot;)
&#9;coroutine.wrap(function()
&#9;&#9;wait(0.05)
&#9;&#9;NewScript.Disabled = false
&#9;end)()
end


function SetPartDamage(Damage, Break, Parent)
&#9;pcall(function() Parent.PartDamage:Remove() end)
&#9;local NewScript = script:Clone()
&#9;NewScript.Name = &quot;PartDamage&quot;
&#9;local DamageData = Instance.new(&quot;Model&quot;, NewScript)
&#9;DamageData.Name = &quot;DamageData&quot;
&#9;Instance.new(&quot;NumberValue&quot;, DamageData).Name = &quot;Damage&quot;
&#9;DamageData.Damage.Value = Damage
&#9;Instance.new(&quot;BoolValue&quot;, DamageData).Name = &quot;Break&quot;
&#9;DamageData.Break.Value = Break
&#9;NewScript.Disabled = true
&#9;NewScript.Parent = Parent
&#9;coroutine.wrap(function()
&#9;&#9;wait(0.05)
&#9;&#9;NewScript.Disabled = false
&#9;end)()
end


function CreateParts(Parent, Format)
&#9;if Parent == nil then return end
&#9;local Parts = Instance.new(&quot;Model&quot;)
&#9;Parts.Name = ModelName
&#9;if Format == 1 then
&#9;&#9;Parts.Name = Parts.Name.. &quot; (Holstered)&quot;
&#9;end
&#9;Parts.Parent = Parent

&#9;local MasterPart1 = Instance.new(&quot;Part&quot;)
&#9;MasterPart1.Name = &quot;Sheath&quot;
&#9;MasterPart1.BrickColor = BrickColor.new(&quot;Really black&quot;)
&#9;MasterPart1.TopSurface = 0
&#9;MasterPart1.BottomSurface = 0
&#9;MasterPart1.formFactor = &quot;Custom&quot;
&#9;MasterPart1.Size = Vector3.new(0.25, 0.5, 3.5)
&#9;MasterPart1.Locked = true
&#9;MasterPart1.Parent = Parts
&#9;local Weld = Instance.new(&quot;Weld&quot;)
&#9;Weld.Part0 = MasterPart1
&#9;Weld.Part1 = Player.Character:FindFirstChild(&quot;Torso&quot;)
&#9;Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(150), 0, 0)
&#9;Weld.C1 = CFrame.new(-1.1, -1.75, 0.5)
&#9;Weld.Parent = Weld.Part0

&#9;local MasterPart2 = Instance.new(&quot;Part&quot;)
&#9;MasterPart2.Name = &quot;Handle&quot;
&#9;MasterPart2.BrickColor = BrickColor.new(&quot;Really black&quot;)
&#9;MasterPart2.TopSurface = 0
&#9;MasterPart2.BottomSurface = 0
&#9;MasterPart2.formFactor = &quot;Custom&quot;
&#9;MasterPart2.Size = Vector3.new(0.3, 0.4, 1.25)
&#9;MasterPart2.Locked = true
&#9;MasterPart2.Parent = Parts
&#9;local Weld = Instance.new(&quot;Weld&quot;)
&#9;Weld.Part0 = MasterPart2
&#9;if Format == 1 then
&#9;&#9;Weld.Part1 = MasterPart1
&#9;&#9;Weld.C1 = CFrame.new(0, 0, 2.625)
&#9;elseif Format == 2 then
&#9;&#9;Weld.Part1 = Player.Character:FindFirstChild(&quot;Right Arm&quot;)
&#9;&#9;Weld.C1 = CFrame.new(0, -1, -0.1)
&#9;end
&#9;Weld.Parent = Weld.Part0
&#9;local Part = Instance.new(&quot;Part&quot;)
&#9;Part.Name = &quot;Hand Guard&quot;
&#9;Part.BrickColor = BrickColor.new(&quot;Really black&quot;)
&#9;Part.TopSurface = 0
&#9;Part.BottomSurface = 0
&#9;Part.formFactor = &quot;Custom&quot;
&#9;Part.Size = Vector3.new(0.5, 0.6, 0.25)
&#9;Part.Locked = true
&#9;Part.Parent = Parts
&#9;local Weld = Instance.new(&quot;Weld&quot;)
&#9;Weld.Part0 = Part
&#9;Weld.Part1 = MasterPart2
&#9;Weld.C0 = CFrame.new(0, 0, 0.75)
&#9;Weld.Parent = Weld.Part0
&#9;local Part = Instance.new(&quot;Part&quot;)
&#9;Part.Name = &quot;Blade Holder&quot;
&#9;Part.BrickColor = BrickColor.new(&quot;Really black&quot;)
&#9;Part.TopSurface = 0
&#9;Part.BottomSurface = 0
&#9;Part.formFactor = &quot;Custom&quot;
&#9;Part.Size = Vector3.new(0.25, 0.375, 0.2)
&#9;Part.Locked = true
&#9;Part.Parent = Parts
&#9;local Weld = Instance.new(&quot;Weld&quot;)
&#9;Weld.Part0 = Part
&#9;Weld.Part1 = MasterPart2
&#9;Weld.C0 = CFrame.new(0, 0, 0.9)
&#9;Weld.Parent = Weld.Part0
&#9;local Mesh = Instance.new(&quot;SpecialMesh&quot;, Part)
&#9;Mesh.MeshType = &quot;Brick&quot;
&#9;Mesh.Scale = Vector3.new(1, 1, 0.25)
&#9;local Part = Instance.new(&quot;Part&quot;)
&#9;Part.Name = &quot;Blade&quot;
&#9;Part.BrickColor = BrickColor.new(&quot;Light stone grey&quot;)
&#9;Part.Reflectance = 0.25
&#9;Part.TopSurface = 0
&#9;Part.BottomSurface = 0
&#9;Part.formFactor = &quot;Custom&quot;
&#9;Part.Size = Vector3.new(0.2, 0.3, 2.75)
&#9;Part.Locked = true
&#9;Part.Parent = Parts
&#9;Part.Touched:connect(SwordTouched)
&#9;local Weld = Instance.new(&quot;Weld&quot;)
&#9;Weld.Part0 = Part
&#9;Weld.Part1 = MasterPart2
&#9;Weld.C0 = CFrame.new(0, 0, 2.25)
&#9;Weld.Parent = Weld.Part0
&#9;local Mesh = Instance.new(&quot;SpecialMesh&quot;, Part)
&#9;Mesh.MeshType = &quot;Brick&quot;
&#9;Mesh.Scale = Vector3.new(0.1, 1, 1)
&#9;local Part = Instance.new(&quot;WedgePart&quot;)
&#9;Part.Name = &quot;Blade Tip&quot;
&#9;Part.BrickColor = BrickColor.new(&quot;Light stone grey&quot;)
&#9;Part.Reflectance = 0.25
&#9;Part.TopSurface = 0
&#9;Part.BottomSurface = 0
&#9;Part.formFactor = &quot;Custom&quot;
&#9;Part.Size = Vector3.new(0.2, 0.3, 0.75)
&#9;Part.Locked = true
&#9;Part.Parent = Parts
&#9;Part.Touched:connect(SwordTouched)
&#9;local Weld = Instance.new(&quot;Weld&quot;)
&#9;Weld.Part0 = Part
&#9;Weld.Part1 = MasterPart2
&#9;Weld.C0 = CFrame.new(0, 0, 4) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(180))
&#9;Weld.Parent = Weld.Part0
&#9;local Mesh = Instance.new(&quot;SpecialMesh&quot;, Part)
&#9;Mesh.MeshType = &quot;Wedge&quot;
&#9;Mesh.Scale = Vector3.new(0.1, 1, 1)
end


function RemoveParts(Parent, Format)
&#9;if Format == 1 then
&#9;&#9;pcall(function() Parent[ModelName.. &quot; (Holstered)&quot;]:Remove() end)
&#9;elseif Format == 2 then
&#9;&#9;pcall(function() Parent[ModelName]:Remove() end)
&#9;end
end


function SetAngle(Joint, Angle, Character)
&#9;if Character == nil then return false end
&#9;local Joints = {
&#9;&#9;Character.Torso:FindFirstChild(&quot;Right Shoulder 2&quot;),
&#9;&#9;Character.Torso:FindFirstChild(&quot;Left Shoulder 2&quot;),
&#9;&#9;Character.Torso:FindFirstChild(&quot;Right Hip 2&quot;),
&#9;&#9;Character.Torso:FindFirstChild(&quot;Left Hip 2&quot;)
&#9;}
&#9;if Joints[Joint] == nil then return false end
&#9;if Joint == 1 or Joint == 3 then
&#9;&#9;Joints[Joint].DesiredAngle = Angle
&#9;end
&#9;if Joint == 2 or Joint == 4 then
&#9;&#9;Joints[Joint].DesiredAngle = -Angle
&#9;end
end


function ForceAngle(Joint, Angle, Character)
&#9;if Character == nil then return false end
&#9;local Joints = {
&#9;&#9;Character.Torso:FindFirstChild(&quot;Right Shoulder 2&quot;),
&#9;&#9;Character.Torso:FindFirstChild(&quot;Left Shoulder 2&quot;),
&#9;&#9;Character.Torso:FindFirstChild(&quot;Right Hip 2&quot;),
&#9;&#9;Character.Torso:FindFirstChild(&quot;Left Hip 2&quot;)
&#9;}
&#9;if Joints[Joint] == nil then return false end
&#9;if Joint == 1 or Joint == 3 then
&#9;&#9;Joints[Joint].DesiredAngle = Angle
&#9;&#9;Joints[Joint].CurrentAngle = Angle
&#9;end
&#9;if Joint == 2 or Joint == 4 then
&#9;&#9;Joints[Joint].DesiredAngle = -Angle
&#9;&#9;Joints[Joint].CurrentAngle = -Angle
&#9;end
end


function SetSpeed(Joint, Speed, Character)
&#9;if Character == nil then return false end
&#9;local Joints = {
&#9;&#9;Character.Torso:FindFirstChild(&quot;Right Shoulder 2&quot;),
&#9;&#9;Character.Torso:FindFirstChild(&quot;Left Shoulder 2&quot;),
&#9;&#9;Character.Torso:FindFirstChild(&quot;Right Hip 2&quot;),
&#9;&#9;Character.Torso:FindFirstChild(&quot;Left Hip 2&quot;)
&#9;}
&#9;if Joints[Joint] == nil then return false end
&#9;Joints[Joint].MaxVelocity = Speed
end


function DisableLimb(Limb, Character)
&#9;if Character == nil then return false end
&#9;if Character:FindFirstChild(&quot;Torso&quot;) == nil then return false end
&#9;local Joints = {
&#9;&#9;Character.Torso:FindFirstChild(&quot;Right Shoulder&quot;),
&#9;&#9;Character.Torso:FindFirstChild(&quot;Left Shoulder&quot;),
&#9;&#9;Character.Torso:FindFirstChild(&quot;Right Hip&quot;),
&#9;&#9;Character.Torso:FindFirstChild(&quot;Left Hip&quot;)
&#9;}
&#9;local Limbs = {
&#9;&#9;Character:FindFirstChild(&quot;Right Arm&quot;),
&#9;&#9;Character:FindFirstChild(&quot;Left Arm&quot;),
&#9;&#9;Character:FindFirstChild(&quot;Right Leg&quot;),
&#9;&#9;Character:FindFirstChild(&quot;Left Leg&quot;)
&#9;}
&#9;if Joints[Limb] == nil then return false end
&#9;if Limbs[Limb] == nil then return false end
&#9;local Joint = Instance.new(&quot;Motor&quot;)
&#9;Joint.Parent = Character.Torso
&#9;Joint.Part0 = Character.Torso
&#9;Joint.Part1 = Limbs[Limb]
&#9;if Limb == 1 then
&#9;&#9;Joint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
&#9;&#9;Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
&#9;&#9;Joint.Name = &quot;Right Shoulder 2&quot;
&#9;elseif Limb == 2 then
&#9;&#9;Joint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
&#9;&#9;Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
&#9;&#9;Joint.Name = &quot;Left Shoulder 2&quot;
&#9;elseif Limb == 3 then
&#9;&#9;Joint.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
&#9;&#9;Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
&#9;&#9;Joint.Name = &quot;Right Hip 2&quot;
&#9;elseif Limb == 4 then
&#9;&#9;Joint.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
&#9;&#9;Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
&#9;&#9;Joint.Name = &quot;Left Hip 2&quot;
&#9;end
&#9;Joint.MaxVelocity = Joints[Limb].MaxVelocity
&#9;Joint.CurrentAngle = Joints[Limb].CurrentAngle
&#9;Joint.DesiredAngle = Joints[Limb].DesiredAngle
&#9;Joints[Limb]:Remove()
end


function ResetLimbCFrame(Limb, Character)
&#9;if Character == nil then return false end
&#9;if Character.Parent == nil then return false end
&#9;if Character:FindFirstChild(&quot;Torso&quot;) == nil then return false end
&#9;local Joints = {
&#9;&#9;Character.Torso:FindFirstChild(&quot;Right Shoulder 2&quot;),
&#9;&#9;Character.Torso:FindFirstChild(&quot;Left Shoulder 2&quot;),
&#9;&#9;Character.Torso:FindFirstChild(&quot;Right Hip 2&quot;),
&#9;&#9;Character.Torso:FindFirstChild(&quot;Left Hip 2&quot;)
&#9;}
&#9;local Limbs = {
&#9;&#9;Character:FindFirstChild(&quot;Right Arm&quot;),
&#9;&#9;Character:FindFirstChild(&quot;Left Arm&quot;),
&#9;&#9;Character:FindFirstChild(&quot;Right Leg&quot;),
&#9;&#9;Character:FindFirstChild(&quot;Left Leg&quot;)
&#9;}
&#9;if Joints[Limb] == nil then return false end
&#9;if Limbs[Limb] == nil then return false end
&#9;if Limb == 1 then
&#9;&#9;Joints[Limb].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
&#9;&#9;Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
&#9;elseif Limb == 2 then
&#9;&#9;Joints[Limb].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
&#9;&#9;Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
&#9;elseif Limb == 3 then
&#9;&#9;Joints[Limb].C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
&#9;&#9;Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
&#9;elseif Limb == 4 then
&#9;&#9;Joints[Limb].C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
&#9;&#9;Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
&#9;end
end


function EnableLimb(Limb, Character)
&#9;if Character == nil then return false end
&#9;if Character:FindFirstChild(&quot;Torso&quot;) == nil then return false end
&#9;local Joints = {
&#9;&#9;Character.Torso:FindFirstChild(&quot;Right Shoulder 2&quot;),
&#9;&#9;Character.Torso:FindFirstChild(&quot;Left Shoulder 2&quot;),
&#9;&#9;Character.Torso:FindFirstChild(&quot;Right Hip 2&quot;),
&#9;&#9;Character.Torso:FindFirstChild(&quot;Left Hip 2&quot;)
&#9;}
&#9;local Limbs = {
&#9;&#9;Character:FindFirstChild(&quot;Right Arm&quot;),
&#9;&#9;Character:FindFirstChild(&quot;Left Arm&quot;),
&#9;&#9;Character:FindFirstChild(&quot;Right Leg&quot;),
&#9;&#9;Character:FindFirstChild(&quot;Left Leg&quot;)
&#9;}
&#9;if Joints[Limb] == nil then return false end
&#9;if Limbs[Limb] == nil then return false end
&#9;if Limb == 1 then
&#9;&#9;Joints[Limb].Name = &quot;Right Shoulder&quot;
&#9;elseif Limb == 2 then
&#9;&#9;Joints[Limb].Name = &quot;Left Shoulder&quot;
&#9;elseif Limb == 3 then
&#9;&#9;Joints[Limb].Name = &quot;Right Hip&quot;
&#9;elseif Limb == 4 then
&#9;&#9;Joints[Limb].Name = &quot;Left Hip&quot;
&#9;end
&#9;Animate = Character:FindFirstChild(&quot;Animate&quot;)
&#9;if Animate == nil then return false end
&#9;Animate = Animate:Clone()
&#9;Character.Animate:Remove()
&#9;Animate.Parent = Character
end


function Weld(x, y)
&#9;weld = Instance.new(&quot;Weld&quot;)
&#9;weld.Part0 = x
&#9;weld.Part1 = y
&#9;CJ = CFrame.new(x.Position)
&#9;C0 = x.CFrame:inverse() * CJ
&#9;C1 = y.CFrame:inverse() * CJ
&#9;weld.C0 = C0
&#9;weld.C1 = C1
&#9;weld.Parent = x
end


function SwordTouched(Hit)
&#9;if Hit:IsDescendantOf(Player.Character) then return end
&#9;if Hit.Parent:FindFirstChild(&quot;Humanoid&quot;) ~= nil then
&#9;&#9;tagHumanoid(Hit.Parent.Humanoid)
&#9;&#9;Hit.Parent.Humanoid:TakeDamage(Damage)
&#9;&#9;wait()
&#9;&#9;pcall(function() untagHumanoid(hit.Parent.Humanoid) end)
&#9;end
end


function tagHumanoid(humanoid)
&#9;local tag = Instance.new(&quot;ObjectValue&quot;)
&#9;tag.Name = &quot;creator&quot;
&#9;tag.Value = Player
&#9;tag.Parent = humanoid
end


function untagHumanoid(humanoid)
&#9;if humanoid ~= nil then
&#9;&#9;local tag = humanoid:findFirstChild(&quot;creator&quot;)
&#9;&#9;if tag ~= nil then
&#9;&#9;&#9;tag:Remove()
&#9;&#9;end
&#9;end
end


function onButton1Down(Mouse)
&#9;if Button1Down == true then return end
&#9;Button1Down = true
&#9;if CheckPlayer() == false then return end
&#9;if KeyUGrab == true and KeyUGrabCharacter ~= nil and KeyUChoke ~= true and KeyUSlit ~= true then
&#9;&#9;KeyUChoke = true
&#9;&#9;for i = 0, 1, 0.1 do
&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(10 * i), math.rad(110 + (25 * i)), 0)
&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C0 = CFrame.new(-1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(10 * i), math.rad(-110 - (25 * i)), 0)
&#9;&#9;&#9;end)
&#9;&#9;&#9;wait()
&#9;&#9;end
&#9;&#9;pcall(function()
&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(10), math.rad(135), 0)
&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C0 = CFrame.new(-1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(10), math.rad(-135), 0)
&#9;&#9;end)
&#9;&#9;while Button1Down == true and KeyUGrab == true and Selected == true do
&#9;&#9;&#9;if KeyUGrabCharacter.Humanoid.Health - 0.5 &lt;= 0 and KeyUGrabCharacter:FindFirstChild(&quot;Head&quot;) ~= nil then
&#9;&#9;&#9;&#9;pcall(function() KeyUWeld:Remove() end)
&#9;&#9;&#9;&#9;for _, Part in pairs(KeyUGrabCharacter.Head:GetChildren()) do
&#9;&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;&#9;Part.SoundId = &quot;&quot;
&#9;&#9;&#9;&#9;&#9;&#9;Part.Volume = 0
&#9;&#9;&#9;&#9;&#9;&#9;Part.Pitch = 0
&#9;&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;&#9;wait(0.1)
&#9;&#9;&#9;&#9;KeyUGrabCharacter.Humanoid.Health = 0
&#9;&#9;&#9;else
&#9;&#9;&#9;&#9;KeyUGrabCharacter.Humanoid:TakeDamage(0.5)
&#9;&#9;&#9;end
&#9;&#9;&#9;if math.random(1, 20) == 1 then
&#9;&#9;&#9;&#9;local BillboardGui = Instance.new(&quot;BillboardGui&quot;)
&#9;&#9;&#9;&#9;BillboardGui.Parent = KeyUGrabCharacter
&#9;&#9;&#9;&#9;BillboardGui.Adornee = KeyUGrabCharacter:FindFirstChild(&quot;Head&quot;)
&#9;&#9;&#9;&#9;BillboardGui.Size = UDim2.new(1, 0, 1, 0)
&#9;&#9;&#9;&#9;BillboardGui.StudsOffset = Vector3.new(0, 0.5, 0)
&#9;&#9;&#9;&#9;local TextLabel = Instance.new(&quot;TextLabel&quot;)
&#9;&#9;&#9;&#9;TextLabel.Parent = BillboardGui
&#9;&#9;&#9;&#9;TextLabel.Position = UDim2.new(0, 0, 0, 0)
&#9;&#9;&#9;&#9;TextLabel.Size = UDim2.new(1, 0, 1, 0)
&#9;&#9;&#9;&#9;TextLabel.Text = (function()
&#9;&#9;&#9;&#9;&#9;local Choice1 = math.random(1, 5)
&#9;&#9;&#9;&#9;&#9;if Choice1 == 1 then
&#9;&#9;&#9;&#9;&#9;&#9;Choice1 = &quot;Hrk&quot;
&#9;&#9;&#9;&#9;&#9;elseif Choice1 == 2 then
&#9;&#9;&#9;&#9;&#9;&#9;Choice1 = &quot;Hk&quot;
&#9;&#9;&#9;&#9;&#9;elseif Choice1 == 3 then
&#9;&#9;&#9;&#9;&#9;&#9;Choice1 = &quot;Gak&quot;
&#9;&#9;&#9;&#9;&#9;elseif Choice1 == 4 then
&#9;&#9;&#9;&#9;&#9;&#9;Choice1 = &quot;Mmph&quot;
&#9;&#9;&#9;&#9;&#9;elseif Choice1 == 5 then
&#9;&#9;&#9;&#9;&#9;&#9;Choice1 = &quot;Mph&quot;
&#9;&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;&#9;&#9;local Choice2 = math.random(1, 5)
&#9;&#9;&#9;&#9;&#9;if Choice2 == 1 then
&#9;&#9;&#9;&#9;&#9;&#9;Choice2 = &quot;!&quot;
&#9;&#9;&#9;&#9;&#9;elseif Choice2 == 2 then
&#9;&#9;&#9;&#9;&#9;&#9;Choice2 = &quot;?&quot;
&#9;&#9;&#9;&#9;&#9;elseif Choice2 == 3 then
&#9;&#9;&#9;&#9;&#9;&#9;Choice2 = &quot;...&quot;
&#9;&#9;&#9;&#9;&#9;elseif Choice2 == 4 then
&#9;&#9;&#9;&#9;&#9;&#9;Choice2 = &quot;-&quot;
&#9;&#9;&#9;&#9;&#9;elseif Choice2 == 5 then
&#9;&#9;&#9;&#9;&#9;&#9;Choice2 = &quot;!?&quot;
&#9;&#9;&#9;&#9;&#9;elseif Choice2 == 5 then
&#9;&#9;&#9;&#9;&#9;&#9;Choice2 = &quot;?!&quot;
&#9;&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;&#9;&#9;return Choice1 .. Choice2
&#9;&#9;&#9;&#9;end)()
&#9;&#9;&#9;&#9;TextLabel.FontSize = &quot;Size14&quot;
&#9;&#9;&#9;&#9;TextLabel.TextColor3 = Color3.new(math.random(0, 255) / 255, 0, 0)
&#9;&#9;&#9;&#9;TextLabel.BackgroundTransparency = 1
&#9;&#9;&#9;&#9;coroutine.wrap(function()
&#9;&#9;&#9;&#9;&#9;local Direction = Vector3.new(math.random(-75, 75) / 1000, math.random(-75, 75) / 1000, math.random(-75, 75) / 1000)
&#9;&#9;&#9;&#9;&#9;for i = 0, math.random(25, 100) do
&#9;&#9;&#9;&#9;&#9;&#9;BillboardGui.StudsOffset = BillboardGui.StudsOffset + Direction
&#9;&#9;&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;&#9;&#9;for i = 0, 1, 0.05 do
&#9;&#9;&#9;&#9;&#9;&#9;BillboardGui.StudsOffset = BillboardGui.StudsOffset + (Direction * (1 - i)) - Vector3.new(0, 0.5 * i, 0)
&#9;&#9;&#9;&#9;&#9;&#9;TextLabel.TextTransparency = i
&#9;&#9;&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;&#9;&#9;BillboardGui:Remove()
&#9;&#9;&#9;&#9;end)()
&#9;&#9;&#9;end
&#9;&#9;&#9;wait()
&#9;&#9;end
&#9;&#9;for i = 0, 1, 0.1 do
&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(10 * (1 - i)), math.rad(135 - (25 * i)), 0)
&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C0 = CFrame.new(-1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(math.rad(10 * (1 - i)), math.rad(-135 + (25 * i)), 0)
&#9;&#9;&#9;end)
&#9;&#9;&#9;wait()
&#9;&#9;end
&#9;&#9;pcall(function()
&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(110), 0)
&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C0 = CFrame.new(-1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(-110), 0)
&#9;&#9;end)
&#9;&#9;KeyUChoke = false
&#9;elseif KeyUChoke == true and KeyUSlit ~= true then
&#9;&#9;KeyUSlit = true
&#9;&#9;while KeyUChoke == true do wait() end
&#9;&#9;for i = 0, 1, 0.25 do
&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1 + (0.5 * i), 0.5, -0.75 + (0.75 * i)) * CFrame.fromEulerAnglesXYZ(0, math.rad(110 - (100 * i)), 0)
&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C0 = CFrame.new(-1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(-110 + (50 * i)), 0)
&#9;&#9;&#9;end)
&#9;&#9;&#9;wait()
&#9;&#9;end
&#9;&#9;pcall(function() KeyUWeld:Remove() end)
&#9;&#9;KeyUGrabCharacter.Humanoid.Health = 0
&#9;&#9;wait(1)
&#9;&#9;KeyUSlit = false
&#9;&#9;CanUse = true
&#9;elseif CanUse == true then
&#9;&#9;CanUse = false
&#9;&#9;PlaySound(&quot;Slash&quot;, &quot;rbxasset://sounds\\swordslash.wav&quot;, math.random(150, 175) / 100, 1, false, Player.Character[ModelName].Blade)
&#9;&#9;SetSwordDamage(2)
&#9;&#9;SetSpeed(1, 0.75, Player.Character)
&#9;&#9;SetAngle(1, math.rad(125), Player.Character)
&#9;&#9;wait(0.15)
&#9;&#9;SetSwordDamage(10, 0.2)
&#9;&#9;SetSpeed(1, 1, Player.Character)
&#9;&#9;SetAngle(1, math.rad(-10), Player.Character)
&#9;&#9;wait(0.15)
&#9;&#9;SetSpeed(1, 0.5, Player.Character)
&#9;&#9;SetAngle(1, math.rad(90), Player.Character)
&#9;&#9;wait(0.05)
&#9;&#9;CanUse = true
&#9;end
end


function onButton1Up(Mouse)
&#9;Button1Down = false
&#9;Mouse.Icon = &quot;rbxasset://textures\\GunCursor.png&quot;
end


function onKeyDown(Key, Mouse)
&#9;if Selected == false then return end
&#9;Key = Key:lower()
&#9;if Key == &quot;u&quot; then
&#9;&#9;if KeyUGrab == true then
&#9;&#9;&#9;KeyUGrab = false
&#9;&#9;end
&#9;end
&#9;if Button1Down == false and CanUse == true and CheckPlayer() == true then
&#9;&#9;if Key == &quot;q&quot; then
&#9;&#9;&#9;if Mouse.Target == nil then return end
&#9;&#9;&#9;if CheckPlayer() == false then return end
&#9;&#9;&#9;local NewPlayer = game:GetService(&quot;Players&quot;):GetPlayerFromCharacter(Mouse.Target.Parent)
&#9;&#9;&#9;if NewPlayer == nil then return end
&#9;&#9;&#9;if NewPlayer.Character == nil then return end
&#9;&#9;&#9;if NewPlayer.Character:FindFirstChild(&quot;Torso&quot;) == nil then return end
&#9;&#9;&#9;if (NewPlayer.Character.Torso.CFrame.p - Player.Character.Torso.CFrame.p).magnitude &gt; 10 then return end
&#9;&#9;&#9;onDeselected(Mouse)
&#9;&#9;&#9;wait()
&#9;&#9;&#9;RemoveParts(Player.Character, 1)
&#9;&#9;&#9;script.Parent.Parent = NewPlayer.Backpack
&#9;&#9;&#9;Player = NewPlayer
&#9;&#9;end
&#9;&#9;if Key == &quot;e&quot; then
&#9;&#9;&#9;CanUse = false
&#9;&#9;&#9;local OldWalkSpeed = Player.Character.Humanoid.WalkSpeed
&#9;&#9;&#9;local Direction = Player.Character.Torso.CFrame.lookVector
&#9;&#9;&#9;Player.Character.Humanoid.WalkSpeed = 0
&#9;&#9;&#9;DisableLimb(2, Player.Character)
&#9;&#9;&#9;DisableLimb(3, Player.Character)
&#9;&#9;&#9;DisableLimb(4, Player.Character)
&#9;&#9;&#9;SetSpeed(1, 0.2, Player.Character)
&#9;&#9;&#9;SetSpeed(2, 0.2, Player.Character)
&#9;&#9;&#9;SetSpeed(3, 0.05, Player.Character)
&#9;&#9;&#9;SetSpeed(4, 0.05, Player.Character)
&#9;&#9;&#9;SetAngle(1, math.rad(90), Player.Character)
&#9;&#9;&#9;SetAngle(2, math.rad(90), Player.Character)
&#9;&#9;&#9;SetAngle(3, math.rad(35), Player.Character)
&#9;&#9;&#9;SetAngle(4, math.rad(-35), Player.Character)
&#9;&#9;&#9;for i = 0, 1, 0.075 do
&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90 * i), math.rad(180 * i), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * (1 - i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * (1 - i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 * (1 - i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 * (1 - i)), 0)
&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(180 * i), 0)
&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1.5, 0.5, 0)
&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C1 = CFrame.new(0, 0.5, 0)
&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C0 = CFrame.new(-1.5, 0.5, 0)
&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C1 = CFrame.new(0, 0.5, 0)
&#9;&#9;&#9;end)
&#9;&#9;&#9;SetSwordDamage(10, 2.5)
&#9;&#9;&#9;local BodyVelocity = Instance.new(&quot;BodyVelocity&quot;)
&#9;&#9;&#9;BodyVelocity.maxForce = Vector3.new(math.huge, 0, math.huge)
&#9;&#9;&#9;BodyVelocity.velocity = Direction * (OldWalkSpeed * 1.5)
&#9;&#9;&#9;BodyVelocity.Parent = Player.Character.Torso
&#9;&#9;&#9;local BodyAngularVelocity = Instance.new(&quot;BodyAngularVelocity&quot;)
&#9;&#9;&#9;BodyAngularVelocity.maxTorque = Vector3.new(0, math.huge, 0)
&#9;&#9;&#9;BodyAngularVelocity.angularvelocity = Vector3.new(0, 37.5, 0)
&#9;&#9;&#9;BodyAngularVelocity.Parent = Player.Character.Torso
&#9;&#9;&#9;for i = 0, 1, 0.01 do
&#9;&#9;&#9;&#9;PlaySound(&quot;Slash&quot;, &quot;rbxasset://sounds\\swordslash.wav&quot;, math.random(125, 200) / 100, 1, false, Player.Character[ModelName].Blade)
&#9;&#9;&#9;&#9;local Wave = Instance.new(&quot;Part&quot;)
&#9;&#9;&#9;&#9;Wave.Name = &quot;Wave&quot;
&#9;&#9;&#9;&#9;Wave.BrickColor = BrickColor.new(&quot;Light stone grey&quot;)
&#9;&#9;&#9;&#9;Wave.TopSurface = 0
&#9;&#9;&#9;&#9;Wave.BottomSurface = 0
&#9;&#9;&#9;&#9;Wave.Transparency = math.cos(i * math.pi * 1.85)
&#9;&#9;&#9;&#9;Wave.Transparency = Wave.Transparency &lt; 0.4 and 0.4 or Wave.Transparency
&#9;&#9;&#9;&#9;Wave.Anchored = true
&#9;&#9;&#9;&#9;Wave.CanCollide = false
&#9;&#9;&#9;&#9;Wave.formFactor = &quot;Custom&quot;
&#9;&#9;&#9;&#9;Wave.Size = Vector3.new(math.random(12, 15), 1, math.random(13, 16))
&#9;&#9;&#9;&#9;Wave.CFrame = Player.Character.Torso.CFrame * CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-5, 5)), 0, math.rad(math.random(-5, 5)))
&#9;&#9;&#9;&#9;Wave.Parent = game:GetService(&quot;Workspace&quot;)
&#9;&#9;&#9;&#9;local Mesh = Instance.new(&quot;CylinderMesh&quot;, Wave)
&#9;&#9;&#9;&#9;local Size = math.random(14, 16)
&#9;&#9;&#9;&#9;Mesh.Scale = Vector3.new(1, 0.075, 1)
&#9;&#9;&#9;&#9;coroutine.wrap(function()
&#9;&#9;&#9;&#9;&#9;for i = Wave.Transparency, 1, 0.1 do
&#9;&#9;&#9;&#9;&#9;&#9;Wave.Transparency = i
&#9;&#9;&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;&#9;&#9;Wave:Remove()
&#9;&#9;&#9;&#9;end)()
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;for i = 1, 25 do
&#9;&#9;&#9;&#9;BodyVelocity.velocity = BodyVelocity.velocity / 1.2
&#9;&#9;&#9;&#9;BodyAngularVelocity.angularvelocity = BodyAngularVelocity.angularvelocity / 1.075
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;BodyVelocity:Remove()
&#9;&#9;&#9;BodyAngularVelocity:Remove()
&#9;&#9;&#9;SetAngle(2, 0, Player.Character)
&#9;&#9;&#9;SetAngle(3, 0, Player.Character)
&#9;&#9;&#9;SetAngle(4, 0, Player.Character)
&#9;&#9;&#9;for i = 1, 0, -0.075 do
&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90 * i), math.rad(180 * i), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * (1 - i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 * (1 - i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 * (1 - i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 * (1 - i)), 0)
&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
&#9;&#9;&#9;end)
&#9;&#9;&#9;ResetLimbCFrame(1, Player.Character)
&#9;&#9;&#9;ResetLimbCFrame(2, Player.Character)
&#9;&#9;&#9;ResetLimbCFrame(3, Player.Character)
&#9;&#9;&#9;ResetLimbCFrame(4, Player.Character)
&#9;&#9;&#9;SetSpeed(1, 0.5, Player.Character)
&#9;&#9;&#9;SetSpeed(2, 0.5, Player.Character)
&#9;&#9;&#9;SetSpeed(3, 0.1, Player.Character)
&#9;&#9;&#9;SetSpeed(4, 0.1, Player.Character)
&#9;&#9;&#9;EnableLimb(1, Player.Character)
&#9;&#9;&#9;EnableLimb(2, Player.Character)
&#9;&#9;&#9;EnableLimb(3, Player.Character)
&#9;&#9;&#9;EnableLimb(4, Player.Character)
&#9;&#9;&#9;DisableLimb(1, Player.Character)
&#9;&#9;&#9;Player.Character.Humanoid.WalkSpeed = OldWalkSpeed
&#9;&#9;&#9;CanUse = true
&#9;&#9;end
&#9;&#9;if Key == &quot;r&quot; then
&#9;&#9;&#9;CanUse = false
&#9;&#9;&#9;local OldWalkSpeed = Player.Character.Humanoid.WalkSpeed
&#9;&#9;&#9;local Direction = Player.Character.Torso.CFrame.lookVector
&#9;&#9;&#9;Player.Character.Humanoid.WalkSpeed = 0
&#9;&#9;&#9;DisableLimb(2, Player.Character)
&#9;&#9;&#9;DisableLimb(3, Player.Character)
&#9;&#9;&#9;DisableLimb(4, Player.Character)
&#9;&#9;&#9;SetSpeed(1, 0.1, Player.Character)
&#9;&#9;&#9;SetSpeed(2, 0.1, Player.Character)
&#9;&#9;&#9;SetSpeed(3, 0.075, Player.Character)
&#9;&#9;&#9;SetSpeed(4, 0.075, Player.Character)
&#9;&#9;&#9;SetAngle(1, math.rad(90), Player.Character)
&#9;&#9;&#9;SetAngle(2, math.rad(-45), Player.Character)
&#9;&#9;&#9;SetAngle(3, math.rad(90), Player.Character)
&#9;&#9;&#9;SetAngle(4, math.rad(-60), Player.Character)
&#9;&#9;&#9;PlaySound(&quot;Slash&quot;, &quot;rbxasset://sounds\\swordslash.wav&quot;, math.random(75, 100) / 100, 1, false, Player.Character[ModelName].Blade)
&#9;&#9;&#9;for i = 0, 1, 0.075 do
&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90 * i), 0, 0)
&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
&#9;&#9;&#9;end)
&#9;&#9;&#9;SetSwordDamage(20, 1)
&#9;&#9;&#9;local BodyVelocity = Instance.new(&quot;BodyVelocity&quot;)
&#9;&#9;&#9;BodyVelocity.maxForce = Vector3.new(math.huge, 0, math.huge)
&#9;&#9;&#9;BodyVelocity.velocity = Direction * (OldWalkSpeed * 5)
&#9;&#9;&#9;BodyVelocity.Parent = Player.Character.Torso
&#9;&#9;&#9;for i = 1, 20 do
&#9;&#9;&#9;&#9;BodyVelocity.velocity = BodyVelocity.velocity / 1.15
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;BodyVelocity:Remove()
&#9;&#9;&#9;SetAngle(2, 0, Player.Character)
&#9;&#9;&#9;SetAngle(3, 0, Player.Character)
&#9;&#9;&#9;SetAngle(4, 0, Player.Character)
&#9;&#9;&#9;for i = 1, 0, -0.1 do
&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90 * i), 0, 0)
&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
&#9;&#9;&#9;end)
&#9;&#9;&#9;SetSpeed(1, 0.5, Player.Character)
&#9;&#9;&#9;SetSpeed(2, 0.5, Player.Character)
&#9;&#9;&#9;SetSpeed(3, 0.1, Player.Character)
&#9;&#9;&#9;SetSpeed(4, 0.1, Player.Character)
&#9;&#9;&#9;EnableLimb(1, Player.Character)
&#9;&#9;&#9;EnableLimb(2, Player.Character)
&#9;&#9;&#9;EnableLimb(3, Player.Character)
&#9;&#9;&#9;EnableLimb(4, Player.Character)
&#9;&#9;&#9;DisableLimb(1, Player.Character)
&#9;&#9;&#9;Player.Character.Humanoid.WalkSpeed = OldWalkSpeed
&#9;&#9;&#9;CanUse = true
&#9;&#9;end
&#9;&#9;if Key == &quot;t&quot; then
&#9;&#9;&#9;CanUse = false
&#9;&#9;&#9;KeyTDown = true
&#9;&#9;&#9;local KeyTCharge = 0
&#9;&#9;&#9;local KeyTFire = false
&#9;&#9;&#9;local OldWalkSpeed = Player.Character.Humanoid.WalkSpeed
&#9;&#9;&#9;Player.Character.Humanoid.WalkSpeed = OldWalkSpeed / 10
&#9;&#9;&#9;for i = 0, 1, 0.1 do
&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 - (100 * i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (90 * i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90 * i), 0, 0)
&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-10), 0)
&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(180), 0)
&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
&#9;&#9;&#9;end)
&#9;&#9;&#9;while KeyTDown == true and Mouse ~= nil and Selected == true do
&#9;&#9;&#9;&#9;KeyTCharge = KeyTCharge + 1
&#9;&#9;&#9;&#9;if KeyTCharge &gt;= 35 then
&#9;&#9;&#9;&#9;&#9;KeyTFire = true
&#9;&#9;&#9;&#9;&#9;local Shock = Instance.new(&quot;Part&quot;, game:GetService(&quot;Workspace&quot;))
&#9;&#9;&#9;&#9;&#9;Shock.Name = &quot;Shock Ring&quot;
&#9;&#9;&#9;&#9;&#9;Shock.BrickColor = BrickColor.new(&quot;Industrial white&quot;)
&#9;&#9;&#9;&#9;&#9;Shock.Transparency = 0.5
&#9;&#9;&#9;&#9;&#9;Shock.Anchored = true
&#9;&#9;&#9;&#9;&#9;Shock.CanCollide = false
&#9;&#9;&#9;&#9;&#9;Shock.formFactor = &quot;Custom&quot;
&#9;&#9;&#9;&#9;&#9;Shock.Size = Vector3.new(1.5, 1, 1.5)
&#9;&#9;&#9;&#9;&#9;Shock.CFrame = Player.Character[&quot;Right Arm&quot;].CFrame * CFrame.new(0, -1.5, 0.125) * CFrame.fromEulerAnglesXYZ(math.rad(180 + math.random(-25, 25)), 0, math.rad(math.random(-25, 25)))
&#9;&#9;&#9;&#9;&#9;local Mesh = Instance.new(&quot;SpecialMesh&quot;, Shock)
&#9;&#9;&#9;&#9;&#9;Mesh.MeshType = &quot;FileMesh&quot;
&#9;&#9;&#9;&#9;&#9;Mesh.MeshId = &quot;http://www.roblox.com/asset/?id=20329976&quot;
&#9;&#9;&#9;&#9;&#9;Mesh.Scale = Shock.Size
&#9;&#9;&#9;&#9;&#9;coroutine.wrap(function()
&#9;&#9;&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;&#9;&#9;&#9;for i = Shock.Transparency, 1, 0.05 do
&#9;&#9;&#9;&#9;&#9;&#9;&#9;Shock.Transparency = i
&#9;&#9;&#9;&#9;&#9;&#9;&#9;Shock.CFrame = Shock.CFrame * CFrame.new(0, 0.5, 0)
&#9;&#9;&#9;&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;&#9;&#9;&#9;Shock:Remove()
&#9;&#9;&#9;&#9;&#9;end)()
&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;PlaySound(&quot;Slash&quot;, &quot;rbxasset://sounds\\swordslash.wav&quot;, math.random(125, 150) / 100, 1, false, Player.Character[ModelName].Blade)
&#9;&#9;&#9;wait(0.05)
&#9;&#9;&#9;SetSwordDamage(20, 0.5)
&#9;&#9;&#9;local _, Position = pcall(function() return Mouse.Hit.p end)
&#9;&#9;&#9;for i = 0, 1, KeyTFire == true and 0.1 or 0.2 do
&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-10 + (170 * i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90 + (10 * i)), 0, 0)
&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;if KeyTFire == true and type(Position) == &quot;userdata&quot; then
&#9;&#9;&#9;&#9;&#9;local Shock = Instance.new(&quot;Part&quot;, game:GetService(&quot;Workspace&quot;))
&#9;&#9;&#9;&#9;&#9;Shock.Name = &quot;Shock Ring&quot;
&#9;&#9;&#9;&#9;&#9;Shock.BrickColor = BrickColor.new(&quot;Industrial white&quot;)
&#9;&#9;&#9;&#9;&#9;Shock.TopSurface = 0
&#9;&#9;&#9;&#9;&#9;Shock.BottomSurface = 0
&#9;&#9;&#9;&#9;&#9;Shock.Anchored = true
&#9;&#9;&#9;&#9;&#9;Shock.CanCollide = false
&#9;&#9;&#9;&#9;&#9;Shock.formFactor = &quot;Custom&quot;
&#9;&#9;&#9;&#9;&#9;Shock.Size = Vector3.new(0.2, 0.2, 0.2)
&#9;&#9;&#9;&#9;&#9;Shock.CFrame = CFrame.new(Player.Character[ModelName].Blade.CFrame.p, Position) * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, math.rad(math.sin((i + 1.5) * math.pi) * 25))
&#9;&#9;&#9;&#9;&#9;coroutine.wrap(function()
&#9;&#9;&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;&#9;&#9;&#9;for i = 0, 1, 0.05 do
&#9;&#9;&#9;&#9;&#9;&#9;&#9;Shock.Transparency = i
&#9;&#9;&#9;&#9;&#9;&#9;&#9;local NewPosition = Shock.CFrame * CFrame.new(0, 3, 0)
&#9;&#9;&#9;&#9;&#9;&#9;&#9;Shock.Size = Shock.Size + Vector3.new(0.75, 0.5, 0.05)
&#9;&#9;&#9;&#9;&#9;&#9;&#9;Shock.CFrame = NewPosition
&#9;&#9;&#9;&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;&#9;&#9;&#9;Shock:Remove()
&#9;&#9;&#9;&#9;&#9;end)()
&#9;&#9;&#9;&#9;&#9;SetPartDamage(15, false, Shock)
&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(160), 0)
&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(100), 0, 0)
&#9;&#9;&#9;end)
&#9;&#9;&#9;for i = 0, 1, 0.1 do
&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(160 - (70 * i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(180 - (90 * i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(100 * (1 - i)), 0, 0)
&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
&#9;&#9;&#9;end)
&#9;&#9;&#9;ResetLimbCFrame(1, Player.Character)
&#9;&#9;&#9;Player.Character.Humanoid.WalkSpeed = OldWalkSpeed
&#9;&#9;&#9;CanUse = true
&#9;&#9;end
&#9;&#9;if Key == &quot;y&quot; then
&#9;&#9;&#9;CanUse = false
&#9;&#9;&#9;KeyYDown = true
&#9;&#9;&#9;local OldWalkSpeed = Player.Character.Humanoid.WalkSpeed
&#9;&#9;&#9;Player.Character.Humanoid.WalkSpeed = OldWalkSpeed / 5
&#9;&#9;&#9;for i = 0, 1, 0.25 do
&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90 * i), 0, 0)
&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
&#9;&#9;&#9;end)
&#9;&#9;&#9;for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
&#9;&#9;&#9;&#9;if Part.Name ~= &quot;Sheath&quot; then
&#9;&#9;&#9;&#9;&#9;pcall(function() Part.Transparency = 1 end)
&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;end
&#9;&#9;&#9;SetSwordDamage(10)
&#9;&#9;&#9;while KeyYDown == true and Mouse ~= nil and Selected == true do
&#9;&#9;&#9;&#9;PlaySound(&quot;Slash&quot;, &quot;rbxasset://sounds\\swordslash.wav&quot;, math.random(150, 175) / 100, 1, false, Player.Character[ModelName].Blade)
&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1.5, 0.5, 0)
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90 + math.random(-30, 30)), math.rad(math.random(-30, 30)), 0)
&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;local Ghost = Instance.new(&quot;Part&quot;, game:GetService(&quot;Workspace&quot;))
&#9;&#9;&#9;&#9;Ghost.Name = &quot;Ghost&quot;
&#9;&#9;&#9;&#9;Ghost.BrickColor = BrickColor.new(&quot;Industrial white&quot;)
&#9;&#9;&#9;&#9;Ghost.Anchored = true
&#9;&#9;&#9;&#9;Ghost.CanCollide = false
&#9;&#9;&#9;&#9;Ghost.formFactor = &quot;Custom&quot;
&#9;&#9;&#9;&#9;Ghost.Size = Vector3.new(0.2, 0.2, 4)
&#9;&#9;&#9;&#9;Ghost.CFrame = Player.Character[ModelName].Handle.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-25, 25)), math.rad(math.random(-25, 25)), 0) * CFrame.new(math.random(-100, 100) / 100, math.random(-100, 100) / 100, math.random(-4, -3))
&#9;&#9;&#9;&#9;local Mesh = Instance.new(&quot;SpecialMesh&quot;, Ghost)
&#9;&#9;&#9;&#9;Mesh.MeshType = &quot;Sphere&quot;
&#9;&#9;&#9;&#9;coroutine.wrap(function()
&#9;&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;&#9;&#9;for i = 0, 1, 0.1 do
&#9;&#9;&#9;&#9;&#9;&#9;Ghost.Transparency = i
&#9;&#9;&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;&#9;&#9;Ghost:Remove()
&#9;&#9;&#9;&#9;end)()
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;ResetLimbCFrame(1, Player.Character)
&#9;&#9;&#9;SetSwordDamage(0)
&#9;&#9;&#9;for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
&#9;&#9;&#9;&#9;if Part.Name ~= &quot;Sheath&quot; then
&#9;&#9;&#9;&#9;&#9;pcall(function() Part.Transparency = 0 end)
&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;end
&#9;&#9;&#9;for i = 0, 1, 0.1 do
&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(100 * (1 - i)), 0, 0)
&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
&#9;&#9;&#9;end)
&#9;&#9;&#9;Player.Character.Humanoid.WalkSpeed = OldWalkSpeed
&#9;&#9;&#9;CanUse = true
&#9;&#9;end
&#9;&#9;if Key == &quot;u&quot; then
&#9;&#9;&#9;if KeyUGrab ~= true then
&#9;&#9;&#9;&#9;if Player.Character.Torso:FindFirstChild(&quot;IsGrabbed&quot;) ~= nil then return end
&#9;&#9;&#9;&#9;if Mouse.Target == nil then return end
&#9;&#9;&#9;&#9;KeyUGrabCharacter = Mouse.Target.Parent
&#9;&#9;&#9;&#9;if KeyUGrabCharacter == nil then return end
&#9;&#9;&#9;&#9;if KeyUGrabCharacter:FindFirstChild(&quot;Torso&quot;) == nil or KeyUGrabCharacter:FindFirstChild(&quot;Head&quot;) == nil or KeyUGrabCharacter:FindFirstChild(&quot;Humanoid&quot;) == nil then return end
&#9;&#9;&#9;&#9;if KeyUGrabCharacter.Torso:FindFirstChild(&quot;IsGrabbed&quot;) ~= nil then return end
&#9;&#9;&#9;&#9;if (KeyUGrabCharacter.Torso.CFrame.p - Player.Character.Torso.CFrame.p).magnitude &gt; 5 then return end
&#9;&#9;&#9;&#9;CanUse = false
&#9;&#9;&#9;&#9;KeyUGrab = true
&#9;&#9;&#9;&#9;local Marker1 = Instance.new(&quot;IntValue&quot;, KeyUGrabCharacter.Torso)
&#9;&#9;&#9;&#9;Marker1.Name = &quot;IsGrabbed&quot;
&#9;&#9;&#9;&#9;KeyUWeld = Instance.new(&quot;Weld&quot;, Player.Character.Torso)
&#9;&#9;&#9;&#9;KeyUWeld.Name = &quot;IsGrabbed&quot;
&#9;&#9;&#9;&#9;KeyUWeld.Part0 = KeyUWeld.Parent
&#9;&#9;&#9;&#9;KeyUWeld.Part1 = KeyUGrabCharacter.Torso
&#9;&#9;&#9;&#9;KeyUWeld.C0 = CFrame.new(0, 0, -1.05)
&#9;&#9;&#9;&#9;DisableLimb(2, Player.Character)
&#9;&#9;&#9;&#9;SetSpeed(1, 0.2, Player.Character)
&#9;&#9;&#9;&#9;SetSpeed(2, 0.2, Player.Character)
&#9;&#9;&#9;&#9;SetAngle(1, math.rad(100), Player.Character)
&#9;&#9;&#9;&#9;SetAngle(2, math.rad(100), Player.Character)
&#9;&#9;&#9;&#9;for i = 0, 1, 0.1 do
&#9;&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1.5 - (0.5 * i), 0.5, -0.75 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (20 * i)), 0)
&#9;&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C0 = CFrame.new(-1.5 + (0.5 * i), 0.5, -0.75 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (20 * i)), 0)
&#9;&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(160 * i), math.rad(110 * i), 0)
&#9;&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(110), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C0 = CFrame.new(-1, 0.5, -0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(-110), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(160), math.rad(110), 0)
&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;while KeyUGrab == true and Selected == true do
&#9;&#9;&#9;&#9;&#9;if CheckPlayer() == false then break end
&#9;&#9;&#9;&#9;&#9;if KeyUWeld.Parent == nil then break end
&#9;&#9;&#9;&#9;&#9;if KeyUGrabCharacter == nil then break end
&#9;&#9;&#9;&#9;&#9;if KeyUGrabCharacter:FindFirstChild(&quot;Torso&quot;) == nil or KeyUGrabCharacter:FindFirstChild(&quot;Humanoid&quot;) == nil then break end
&#9;&#9;&#9;&#9;&#9;if KeyUGrabCharacter.Humanoid.Health &lt;= 0 then break end
&#9;&#9;&#9;&#9;&#9;KeyUGrabCharacter.Humanoid.PlatformStand = true
&#9;&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;&#9;KeyUGrab = false
&#9;&#9;&#9;&#9;while KeyUChoke == true do wait() end
&#9;&#9;&#9;&#9;pcall(function() KeyUWeld:Remove() end)
&#9;&#9;&#9;&#9;pcall(function() Marker1:Remove() end)
&#9;&#9;&#9;&#9;pcall(function() Marker2:Remove() end)
&#9;&#9;&#9;&#9;pcall(function() KeyUGrabCharacter.Humanoid.Sit = true end)
&#9;&#9;&#9;&#9;if KeyUSlit == true then
&#9;&#9;&#9;&#9;&#9;while KeyUSlit == true do wait() end
&#9;&#9;&#9;&#9;&#9;SetSpeed(1, 0.5, Player.Character)
&#9;&#9;&#9;&#9;&#9;SetSpeed(2, 0.5, Player.Character)
&#9;&#9;&#9;&#9;&#9;SetAngle(1, math.rad(90), Player.Character)
&#9;&#9;&#9;&#9;&#9;SetAngle(2, 0, Player.Character)
&#9;&#9;&#9;&#9;&#9;for i = 0, 1, 0.1 do
&#9;&#9;&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(10 + (80 * i)), 0)
&#9;&#9;&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C0 = CFrame.new(-1 - (0.5 * i), 0.5, -0.75 + 0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(-10 - (80 * i)), 0)
&#9;&#9;&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(160 * (1 - i)), math.rad(110 * (1 - i)), 0)
&#9;&#9;&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;&#9;else
&#9;&#9;&#9;&#9;&#9;SetSpeed(1, 0.5, Player.Character)
&#9;&#9;&#9;&#9;&#9;SetSpeed(2, 0.5, Player.Character)
&#9;&#9;&#9;&#9;&#9;SetAngle(1, math.rad(90), Player.Character)
&#9;&#9;&#9;&#9;&#9;SetAngle(2, 0, Player.Character)
&#9;&#9;&#9;&#9;&#9;for i = 1, 0, -0.1 do
&#9;&#9;&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1.5 - (0.5 * i), 0.5, -0.75 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (20 * i)), 0)
&#9;&#9;&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C0 = CFrame.new(-1.5 + (0.5 * i), 0.5, -0.75 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (20 * i)), 0)
&#9;&#9;&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(160 * i), math.rad(110 * i), 0)
&#9;&#9;&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;&#9;ResetLimbCFrame(1, Player.Character)
&#9;&#9;&#9;&#9;ResetLimbCFrame(2, Player.Character)
&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
&#9;&#9;&#9;&#9;EnableLimb(1, Player.Character)
&#9;&#9;&#9;&#9;EnableLimb(2, Player.Character)
&#9;&#9;&#9;&#9;DisableLimb(1, Player.Character)
&#9;&#9;&#9;&#9;CanUse = true
&#9;&#9;&#9;end
&#9;&#9;end
&#9;&#9;if Key == &quot;f&quot; then
&#9;&#9;&#9;CanUse = false
&#9;&#9;&#9;DisableLimb(2, Player.Character)
&#9;&#9;&#9;SetSpeed(1, 0.3, Player.Character)
&#9;&#9;&#9;SetSpeed(2, 0.3, Player.Character)
&#9;&#9;&#9;SetAngle(1, math.rad(45), Player.Character)
&#9;&#9;&#9;SetAngle(2, math.rad(45), Player.Character)
&#9;&#9;&#9;PlaySound(&quot;Slash&quot;, &quot;rbxasset://sounds\\swordslash.wav&quot;, math.random(65, 80) / 100, 1, false, Player.Character[ModelName].Blade)
&#9;&#9;&#9;for i = 0, 1, 0.25 do
&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1.5 - (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (45 * i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C0 = CFrame.new(-1.5 + (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (45 * i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90 * i), math.rad(213.25 * i), math.rad(-39 * i))
&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(100), math.rad(213.25), math.rad(-39))
&#9;&#9;&#9;end)
&#9;&#9;&#9;wait(0.35)
&#9;&#9;&#9;SetSpeed(1, 0.75, Player.Character)
&#9;&#9;&#9;SetSpeed(2, 0.75, Player.Character)
&#9;&#9;&#9;SetAngle(1, math.rad(135), Player.Character)
&#9;&#9;&#9;SetAngle(2, math.rad(135), Player.Character)
&#9;&#9;&#9;SetSwordDamage(15, 0.5)
&#9;&#9;&#9;Player.Character.Humanoid.Jump = true
&#9;&#9;&#9;local Connection = Player.Character[ModelName].Blade.Touched:connect(function(Hit)
&#9;&#9;&#9;&#9;if Hit:IsDescendantOf(Player.Character) then return end
&#9;&#9;&#9;&#9;pcall(function() Hit.Parent.Humanoid.Sit = true end)
&#9;&#9;&#9;&#9;pcall(function() Hit.Parent.Torso.Velocity = (Player.Character.Torso.CFrame.lookVector * math.random(10, 25)) + Vector3.new(math.random(-10, 10), 75, math.random(-10, 10)) end)
&#9;&#9;&#9;end)
&#9;&#9;&#9;for i = 0, 1, 0.25 do
&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(100 + (45 * i)), math.rad(213.25 - (66.5 * i)), math.rad(-39))
&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;wait(0.5)
&#9;&#9;&#9;Connection:disconnect()
&#9;&#9;&#9;wait(0.25)
&#9;&#9;&#9;SetSpeed(1, 0.5, Player.Character)
&#9;&#9;&#9;SetSpeed(2, 0.5, Player.Character)
&#9;&#9;&#9;SetAngle(1, math.rad(90), Player.Character)
&#9;&#9;&#9;SetAngle(2, 0, Player.Character)
&#9;&#9;&#9;for i = 1, 0, -0.1 do
&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1.5 - (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (45 * i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C0 = CFrame.new(-1.5 + (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (45 * i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(145 * i), math.rad(146.75 * i), math.rad(-39 * i))
&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
&#9;&#9;&#9;end)
&#9;&#9;&#9;ResetLimbCFrame(1, Player.Character)
&#9;&#9;&#9;ResetLimbCFrame(2, Player.Character)
&#9;&#9;&#9;EnableLimb(1, Player.Character)
&#9;&#9;&#9;EnableLimb(2, Player.Character)
&#9;&#9;&#9;DisableLimb(1, Player.Character)
&#9;&#9;&#9;CanUse = true
&#9;&#9;end
&#9;&#9;if Key == &quot;g&quot; then
&#9;&#9;&#9;CanUse = false
&#9;&#9;&#9;DisableLimb(2, Player.Character)
&#9;&#9;&#9;SetSpeed(1, 0.3, Player.Character)
&#9;&#9;&#9;SetSpeed(2, 0.3, Player.Character)
&#9;&#9;&#9;SetAngle(1, math.rad(135), Player.Character)
&#9;&#9;&#9;SetAngle(2, math.rad(135), Player.Character)
&#9;&#9;&#9;PlaySound(&quot;Slash&quot;, &quot;rbxasset://sounds\\swordslash.wav&quot;, math.random(65, 80) / 100, 1, false, Player.Character[ModelName].Blade)
&#9;&#9;&#9;for i = 0, 1, 0.25 do
&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1.5 - (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (45 * i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C0 = CFrame.new(-1.5 + (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (45 * i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(10 * i), math.rad(-28.125 * i), math.rad(-39 * i))
&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(10), math.rad(-28.125), math.rad(-39))
&#9;&#9;&#9;end)
&#9;&#9;&#9;Player.Character.Humanoid.Jump = true
&#9;&#9;&#9;wait(0.4)
&#9;&#9;&#9;SetSpeed(1, 0.75, Player.Character)
&#9;&#9;&#9;SetSpeed(2, 0.75, Player.Character)
&#9;&#9;&#9;SetAngle(1, math.rad(45), Player.Character)
&#9;&#9;&#9;SetAngle(2, math.rad(45), Player.Character)
&#9;&#9;&#9;SetSwordDamage(20, 0.5)
&#9;&#9;&#9;for i = 0, 1, 0.25 do
&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(10 + (90 * i)), math.rad(-28.125 + (66.5 * i)), math.rad(-39))
&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;wait(0.5)
&#9;&#9;&#9;SetSpeed(1, 0.5, Player.Character)
&#9;&#9;&#9;SetSpeed(2, 0.5, Player.Character)
&#9;&#9;&#9;SetAngle(1, math.rad(90), Player.Character)
&#9;&#9;&#9;SetAngle(2, 0, Player.Character)
&#9;&#9;&#9;for i = 1, 0, -0.1 do
&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1.5 - (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (45 * i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C0 = CFrame.new(-1.5 + (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (45 * i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(145 * i), math.rad(146.75 * i), math.rad(-39 * i))
&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
&#9;&#9;&#9;end)
&#9;&#9;&#9;ResetLimbCFrame(1, Player.Character)
&#9;&#9;&#9;ResetLimbCFrame(2, Player.Character)
&#9;&#9;&#9;EnableLimb(1, Player.Character)
&#9;&#9;&#9;EnableLimb(2, Player.Character)
&#9;&#9;&#9;DisableLimb(1, Player.Character)
&#9;&#9;&#9;CanUse = true
&#9;&#9;end
&#9;&#9;if Key == &quot;h&quot; then
&#9;&#9;&#9;CanUse = false
&#9;&#9;&#9;local OldWalkSpeed = Player.Character.Humanoid.WalkSpeed
&#9;&#9;&#9;Player.Character.Humanoid.WalkSpeed = OldWalkSpeed / 10
&#9;&#9;&#9;SetAngle(1, math.rad(90), Player.Character)
&#9;&#9;&#9;SetSwordDamage(10)
&#9;&#9;&#9;for i = 0, 1, 0.01 do
&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(360 * 15 * i), 0)
&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;PlaySound(&quot;Slash&quot;, &quot;rbxasset://sounds\\swordslash.wav&quot;, math.random(125, 200) / 100, 1, false, Player.Character[ModelName].Blade)
&#9;&#9;&#9;&#9;local Size = math.random(8, 12)
&#9;&#9;&#9;&#9;local Wave = Instance.new(&quot;Part&quot;)
&#9;&#9;&#9;&#9;Wave.Name = &quot;Wave&quot;
&#9;&#9;&#9;&#9;Wave.BrickColor = BrickColor.new(&quot;Light stone grey&quot;)
&#9;&#9;&#9;&#9;Wave.TopSurface = 0
&#9;&#9;&#9;&#9;Wave.BottomSurface = 0
&#9;&#9;&#9;&#9;Wave.Transparency = math.cos(i * math.pi * 1.85)
&#9;&#9;&#9;&#9;Wave.Transparency = Wave.Transparency &lt; 0.4 and 0.4 or Wave.Transparency
&#9;&#9;&#9;&#9;Wave.Anchored = true
&#9;&#9;&#9;&#9;Wave.CanCollide = math.random(1, 3) == 1 and true or false
&#9;&#9;&#9;&#9;Wave.formFactor = &quot;Custom&quot;
&#9;&#9;&#9;&#9;Wave.Size = Vector3.new(Size, 1, Size)
&#9;&#9;&#9;&#9;Wave.CFrame = Player.Character[&quot;Right Arm&quot;].CFrame * CFrame.new(0, math.random(-150, -125) / 100, 0) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-5, 5)), 0, math.rad(math.random(-5, 5)))
&#9;&#9;&#9;&#9;Wave.Parent = game:GetService(&quot;Workspace&quot;)
&#9;&#9;&#9;&#9;local Mesh = Instance.new(&quot;CylinderMesh&quot;, Wave)
&#9;&#9;&#9;&#9;Mesh.Scale = Vector3.new(1, 0.075, 1)
&#9;&#9;&#9;&#9;coroutine.wrap(function()
&#9;&#9;&#9;&#9;&#9;for i = Wave.Transparency, 1, 0.1 do
&#9;&#9;&#9;&#9;&#9;&#9;Wave.Transparency = i
&#9;&#9;&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;&#9;&#9;Wave:Remove()
&#9;&#9;&#9;&#9;end)()
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.new()
&#9;&#9;&#9;end)
&#9;&#9;&#9;SetSwordDamage(&quot;Default&quot;)
&#9;&#9;&#9;Player.Character.Humanoid.WalkSpeed = OldWalkSpeed
&#9;&#9;&#9;CanUse = true
&#9;&#9;end
&#9;&#9;if Key == &quot;x&quot; then
&#9;&#9;&#9;if Player.Character.Torso.Velocity.x &gt; 2 or Player.Character.Torso.Velocity.y &gt; 2 or Player.Character.Torso.Velocity.z &gt; 2 or Player.Character.Torso.Velocity.x &lt; -2 or Player.Character.Torso.Velocity.y &lt; -2 or Player.Character.Torso.Velocity.z &lt; -2 then return end
&#9;&#9;&#9;CanUse = false
&#9;&#9;&#9;Player.Character.Torso.Anchored = true
&#9;&#9;&#9;Player.Character.Humanoid.PlatformStand = true
&#9;&#9;&#9;local Pos = Player.Character.Torso.CFrame
&#9;&#9;&#9;DisableLimb(2, Player.Character)
&#9;&#9;&#9;DisableLimb(3, Player.Character)
&#9;&#9;&#9;DisableLimb(4, Player.Character)
&#9;&#9;&#9;SetSpeed(1, 0.3, Player.Character)
&#9;&#9;&#9;SetSpeed(2, 0.3, Player.Character)
&#9;&#9;&#9;SetSpeed(3, 0.3, Player.Character)
&#9;&#9;&#9;SetSpeed(4, 0.3, Player.Character)
&#9;&#9;&#9;SetAngle(1, math.rad(90), Player.Character)
&#9;&#9;&#9;SetAngle(2, math.rad(90), Player.Character)
&#9;&#9;&#9;SetAngle(3, 0, Player.Character)
&#9;&#9;&#9;SetAngle(4, 0, Player.Character)
&#9;&#9;&#9;for i = 0, 1, 0.25 do
&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1.5 - (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (45 * i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C0 = CFrame.new(-1.5 + (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (45 * i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(10 * i), math.rad(-28.125 * i), math.rad(-39 * i))
&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;wait(0.1)
&#9;&#9;&#9;for i = 0, math.pi, 0.05 do
&#9;&#9;&#9;&#9;Player.Character.Torso.CFrame = Pos * CFrame.new(0, math.sin(-i) + 0.25, math.sin(-i)) * CFrame.fromEulerAnglesXYZ(math.rad(math.sin(-i) * 80), 0, 0)
&#9;&#9;&#9;&#9;ForceAngle(3, math.rad(math.sin(i) * 80), Player.Character)
&#9;&#9;&#9;&#9;ForceAngle(4, math.rad(math.sin(i) * 80), Player.Character)
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;SetAngle(2, 0, Player.Character)
&#9;&#9;&#9;for i = 1, 0, -0.25 do
&#9;&#9;&#9;&#9;pcall(function()
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(1.5 - (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90 + (45 * i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character.Torso[&quot;Left Shoulder 2&quot;].C0 = CFrame.new(-1.5 + (0.5 * i), 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90 - (45 * i)), 0)
&#9;&#9;&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(10 * i), math.rad(-28.125 * i), math.rad(-39 * i))
&#9;&#9;&#9;&#9;end)
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;wait(0.1)
&#9;&#9;&#9;SetSpeed(1, 0.2, Player.Character)
&#9;&#9;&#9;SetSpeed(2, 0.2, Player.Character)
&#9;&#9;&#9;SetSpeed(3, 0.1, Player.Character)
&#9;&#9;&#9;SetSpeed(4, 0.1, Player.Character)
&#9;&#9;&#9;EnableLimb(1, Player.Character)
&#9;&#9;&#9;EnableLimb(2, Player.Character)
&#9;&#9;&#9;EnableLimb(3, Player.Character)
&#9;&#9;&#9;EnableLimb(4, Player.Character)
&#9;&#9;&#9;DisableLimb(1, Player.Character)
&#9;&#9;&#9;Player.Character.Torso.Velocity = Vector3.new(0, 0, 0)
&#9;&#9;&#9;Player.Character.Torso.Anchored = false
&#9;&#9;&#9;Player.Character.Humanoid.PlatformStand = false
&#9;&#9;&#9;CanUse = true
&#9;&#9;end
&#9;&#9;if Key == &quot;j&quot; then
&#9;&#9;&#9;CanUse = false
&#9;&#9;&#9;local OldWalkSpeed = Player.Character.Humanoid.WalkSpeed
&#9;&#9;&#9;local Direction = (Player.Character.Torso.CFrame.p - (Player.Character.Torso.CFrame * CFrame.new(3, 0, 0)).p).unit
&#9;&#9;&#9;Player.Character.Humanoid.WalkSpeed = 0
&#9;&#9;&#9;local BodyVelocity = Instance.new(&quot;BodyVelocity&quot;)
&#9;&#9;&#9;BodyVelocity.maxForce = Vector3.new(math.huge, 0, math.huge)
&#9;&#9;&#9;BodyVelocity.velocity = Direction * (OldWalkSpeed * 10)
&#9;&#9;&#9;BodyVelocity.Parent = Player.Character.Torso
&#9;&#9;&#9;for i = 1, 20 do
&#9;&#9;&#9;&#9;BodyVelocity.velocity = BodyVelocity.velocity / 1.2
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;BodyVelocity:Remove()
&#9;&#9;&#9;Player.Character.Humanoid.WalkSpeed = OldWalkSpeed
&#9;&#9;&#9;CanUse = true
&#9;&#9;end
&#9;&#9;if Key == &quot;k&quot; then
&#9;&#9;&#9;CanUse = false
&#9;&#9;&#9;local OldWalkSpeed = Player.Character.Humanoid.WalkSpeed
&#9;&#9;&#9;local Direction = (Player.Character.Torso.CFrame.p - (Player.Character.Torso.CFrame * CFrame.new(-3, 0, 0)).p).unit
&#9;&#9;&#9;Player.Character.Humanoid.WalkSpeed = 0
&#9;&#9;&#9;local BodyVelocity = Instance.new(&quot;BodyVelocity&quot;)
&#9;&#9;&#9;BodyVelocity.maxForce = Vector3.new(math.huge, 0, math.huge)
&#9;&#9;&#9;BodyVelocity.velocity = Direction * (OldWalkSpeed * 10)
&#9;&#9;&#9;BodyVelocity.Parent = Player.Character.Torso
&#9;&#9;&#9;for i = 1, 20 do
&#9;&#9;&#9;&#9;BodyVelocity.velocity = BodyVelocity.velocity / 1.2
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;BodyVelocity:Remove()
&#9;&#9;&#9;Player.Character.Humanoid.WalkSpeed = OldWalkSpeed
&#9;&#9;&#9;CanUse = true
&#9;&#9;end
&#9;&#9;if Key == &quot;z&quot; then
&#9;&#9;&#9;if KeyZDown == true then return end
&#9;&#9;&#9;local KeyZMaxTime = 25
&#9;&#9;&#9;if KeyZTime == nil then KeyZTime = KeyZMaxTime end
&#9;&#9;&#9;if KeyZTime &lt;= 0 then return end
&#9;&#9;&#9;CanUse = false
&#9;&#9;&#9;KeyZDown = true
&#9;&#9;&#9;DisableLimb(2, Player.Character)
&#9;&#9;&#9;SetSpeed(1, 0.5, Player.Character)
&#9;&#9;&#9;SetSpeed(2, 0.5, Player.Character)
&#9;&#9;&#9;SetAngle(1, math.rad(10), Player.Character)
&#9;&#9;&#9;SetAngle(2, math.rad(10), Player.Character)
&#9;&#9;&#9;local KeyZMovement1 = Player.Character.Humanoid.Running:connect(function(Speed)
&#9;&#9;&#9;&#9;if Speed &gt; 0 then
&#9;&#9;&#9;&#9;&#9;SetAngle(1, math.rad(-45), Player.Character)
&#9;&#9;&#9;&#9;&#9;SetAngle(2, math.rad(-45), Player.Character)
&#9;&#9;&#9;&#9;else
&#9;&#9;&#9;&#9;&#9;SetAngle(1, math.rad(10), Player.Character)
&#9;&#9;&#9;&#9;&#9;SetAngle(2, math.rad(10), Player.Character)
&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;end)
&#9;&#9;&#9;local KeyZMovement2 = Player.Character.Humanoid.Jumping:connect(function()
&#9;&#9;&#9;&#9;--Player.Character.Torso.Velocity = Player.Character.Torso.Velocity + Vector3.new(0, 35, 0)
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;&#9;SetAngle(1, math.rad(-45), Player.Character)
&#9;&#9;&#9;&#9;SetAngle(2, math.rad(-45), Player.Character)
&#9;&#9;&#9;&#9;wait(0.15)
&#9;&#9;&#9;&#9;SetAngle(1, math.rad(180), Player.Character)
&#9;&#9;&#9;&#9;SetAngle(2, math.rad(180), Player.Character)
&#9;&#9;&#9;&#9;wait(0.5)
&#9;&#9;&#9;end)
&#9;&#9;&#9;local KeyZMovement3 = Player.Character.Humanoid.FreeFalling:connect(function()
&#9;&#9;&#9;&#9;SetAngle(1, math.rad(180), Player.Character)
&#9;&#9;&#9;&#9;SetAngle(2, math.rad(180), Player.Character)
&#9;&#9;&#9;end)
&#9;&#9;&#9;local Gui = Instance.new(&quot;ScreenGui&quot;, Player.PlayerGui)
&#9;&#9;&#9;Gui.Name = ModelName.. &quot; Stamina Bar&quot;
&#9;&#9;&#9;local BarUnderlay = Instance.new(&quot;Frame&quot;, Gui)
&#9;&#9;&#9;BarUnderlay.Name = &quot;BarUnderlay&quot;
&#9;&#9;&#9;BarUnderlay.BackgroundColor3 = Color3.new(1, 0, 0)
&#9;&#9;&#9;BarUnderlay.BorderColor3 = Color3.new(0, 0, 0)
&#9;&#9;&#9;BarUnderlay.Size = UDim2.new(0, 250, 0, 15)
&#9;&#9;&#9;BarUnderlay.Position = UDim2.new(1, -300, 1, -100)
&#9;&#9;&#9;local BarOverlay = Instance.new(&quot;Frame&quot;, Gui)
&#9;&#9;&#9;BarOverlay.Name = &quot;BarOverlay&quot;
&#9;&#9;&#9;BarOverlay.BackgroundColor3 = Color3.new(0, 1, 0)
&#9;&#9;&#9;BarOverlay.BorderColor3 = Color3.new(0, 0, 0)
&#9;&#9;&#9;BarOverlay.Position = UDim2.new(1, -300, 1, -100)
&#9;&#9;&#9;local TextLabel = Instance.new(&quot;TextLabel&quot;, Gui)
&#9;&#9;&#9;TextLabel.Name = &quot;Stamina&quot;
&#9;&#9;&#9;TextLabel.Text = &quot;Stamina&quot;
&#9;&#9;&#9;TextLabel.BackgroundTransparency = 1
&#9;&#9;&#9;TextLabel.BorderSizePixel = 1
&#9;&#9;&#9;TextLabel.Size = UDim2.new(0, 250, 0, 15)
&#9;&#9;&#9;TextLabel.Position = UDim2.new(1, -300, 1, -100)
&#9;&#9;&#9;coroutine.wrap(function()
&#9;&#9;&#9;&#9;for i = 1, 0, -0.1 do
&#9;&#9;&#9;&#9;&#9;BarUnderlay.BackgroundTransparency = i
&#9;&#9;&#9;&#9;&#9;BarOverlay.BackgroundTransparency = i
&#9;&#9;&#9;&#9;&#9;TextLabel.TextTransparency = i
&#9;&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;end)()
&#9;&#9;&#9;local OldWalkSpeed = Player.Character.Humanoid.WalkSpeed
&#9;&#9;&#9;Player.Character.Humanoid.WalkSpeed = 0
&#9;&#9;&#9;wait(0.1)
&#9;&#9;&#9;Player.Character.Humanoid.WalkSpeed = OldWalkSpeed * 2.5
&#9;&#9;&#9;while KeyZDown == true and KeyZTime &gt; 0 and Selected == true do
&#9;&#9;&#9;&#9;KeyZTime = KeyZTime - 0.1
&#9;&#9;&#9;&#9;BarOverlay.Size = UDim2.new(0, 250 - ((1 - (KeyZTime / KeyZMaxTime)) * 250), 0, 15)
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;KeyZMovement1:disconnect()
&#9;&#9;&#9;KeyZMovement2:disconnect()
&#9;&#9;&#9;KeyZMovement3:disconnect()
&#9;&#9;&#9;Player.Character.Humanoid.WalkSpeed = 0
&#9;&#9;&#9;wait(0.1)
&#9;&#9;&#9;Player.Character.Humanoid.WalkSpeed = OldWalkSpeed
&#9;&#9;&#9;SetSpeed(1, 0.2, Player.Character)
&#9;&#9;&#9;SetSpeed(2, 0.2, Player.Character)
&#9;&#9;&#9;SetAngle(1, math.rad(90), Player.Character)
&#9;&#9;&#9;SetAngle(2, 0, Player.Character)
&#9;&#9;&#9;EnableLimb(1, Player.Character)
&#9;&#9;&#9;EnableLimb(2, Player.Character)
&#9;&#9;&#9;DisableLimb(1, Player.Character)
&#9;&#9;&#9;while KeyZDown == true and Selected == true do
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;CanUse = true
&#9;&#9;&#9;while KeyZDown == false and KeyZTime &lt; KeyZMaxTime and Selected == true do
&#9;&#9;&#9;&#9;KeyZTime = KeyZTime + 0.09
&#9;&#9;&#9;&#9;BarOverlay.Size = UDim2.new(0, 250 - ((1 - (KeyZTime / KeyZMaxTime)) * 250), 0, 15)
&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;end
&#9;&#9;&#9;coroutine.wrap(function()
&#9;&#9;&#9;&#9;for i = 0, 1, 0.05 do
&#9;&#9;&#9;&#9;&#9;BarUnderlay.BackgroundTransparency = i
&#9;&#9;&#9;&#9;&#9;BarOverlay.BackgroundTransparency = i
&#9;&#9;&#9;&#9;&#9;TextLabel.TextTransparency = i
&#9;&#9;&#9;&#9;&#9;wait()
&#9;&#9;&#9;&#9;end
&#9;&#9;&#9;&#9;Gui:Remove()
&#9;&#9;&#9;end)()
&#9;&#9;end
&#9;end
end


function onKeyUp(Key, Mouse)
&#9;if Selected == false then return end
&#9;Key = Key:lower()
&#9;if Key == &quot;z&quot; then
&#9;&#9;KeyZDown = false
&#9;elseif Key == &quot;t&quot; then
&#9;&#9;KeyTDown = false
&#9;elseif Key == &quot;y&quot; then
&#9;&#9;KeyYDown = false
&#9;end
&#9;if CheckPlayer() == true then
&#9;&#9;if Button1Down == false and CanUse == true then
&#9;&#9;&#9;
&#9;&#9;end
&#9;end
end


function onSelected(Mouse)
&#9;if script.Parent.Active == false then return end
&#9;if Selected == true then return end
&#9;while true do
&#9;&#9;if CheckPlayer() == true then
&#9;&#9;&#9;if Player.Character.Torso:FindFirstChild(&quot;Right Shoulder&quot;) ~= nil then
&#9;&#9;&#9;&#9;break
&#9;&#9;&#9;end
&#9;&#9;end
&#9;&#9;wait(0.1)
&#9;end
&#9;Selected = true
&#9;if script.Parent.Active == false then return end
&#9;CanUse = false
&#9;DisableLimb(1, Player.Character)
&#9;SetSpeed(1, 0.5, Player.Character)
&#9;SetAngle(1, 0, Player.Character)
&#9;DisableLimb(2, Player.Character)
&#9;SetSpeed(2, 0.5, Player.Character)
&#9;SetAngle(2, 0, Player.Character)
&#9;wait(0.05)
&#9;for i = 0, 1, 0.1 do
&#9;&#9;pcall(function()
&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 =
&#9;&#9;&#9;&#9;CFrame.new(-0.05 * i, 0.11 * i, -0.8 * i) * CFrame.fromEulerAnglesXYZ(math.rad(50) * i, 0, math.rad(-45) * i) *
&#9;&#9;&#9;&#9;CFrame.new(1.5 * (1 - i), 0.5 * (1 - i), 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) * (1 - i), 0)
&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C1 =
&#9;&#9;&#9;&#9;CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) * (1 - i), 0)
&#9;&#9;end)
&#9;&#9;wait()
&#9;end
&#9;RemoveParts(Player.Character, 1)
&#9;CreateParts(Player.Character, 2)
&#9;pcall(function()
&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(-0.05, 0.11, -0.8) * CFrame.fromEulerAnglesXYZ(math.rad(50), 0, math.rad(-45))
&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C1 = CFrame.new(0, 0.5, 0)
&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0, 0, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(200), 0, math.rad(-45))
&#9;end)
&#9;wait(0.1)
&#9;PlaySound(&quot;Unsheath&quot;, &quot;rbxasset://sounds\\unsheath.wav&quot;, 1.25, 1, false, Player.Character[ModelName].Sheath)
&#9;SetSwordDamage(10, 0.5)
&#9;SetSpeed(2, 0.025, Player.Character)
&#9;SetAngle(2, math.rad(-15), Player.Character)
&#9;for i = 0, 1, 0.1 do
&#9;&#9;pcall(function()
&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 =
&#9;&#9;&#9;&#9;CFrame.new(-0.05 + (0.4 * i), 0.11 + (0.49 * i), -0.8 - (0.1 * i)) * CFrame.fromEulerAnglesXYZ(math.rad(50 + (130 * i)), 0, math.rad(-45 + (10 * i)))
&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0.2 * i, 0, -0.5 * i) * CFrame.fromEulerAnglesXYZ(math.rad(200 + (87.5 * i)), 0, math.rad(-45 - (3 * i)))
&#9;&#9;&#9;Player.Character[ModelName].Sheath.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(150 - (40 * i)), math.rad(17.5 * i), 0)
&#9;&#9;&#9;Player.Character[ModelName].Sheath.Weld.C1 = CFrame.new(-1.1 - (0.375 * i), -1.75, 0.5 - (0.2 * i))
&#9;&#9;end)
&#9;&#9;wait()
&#9;end
&#9;SetAngle(2, 0, Player.Character)
&#9;pcall(function()
&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(0.35, 0.6, -0.9) * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, math.rad(-35))
&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0.2, 0, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(287.5), 0, math.rad(-48))
&#9;&#9;Player.Character[ModelName].Sheath.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(110), math.rad(17.5), 0)
&#9;&#9;Player.Character[ModelName].Sheath.Weld.C1 = CFrame.new(-1.475, -1.75, 0.3)
&#9;end)
&#9;SetAngle(1, math.rad(90), Player.Character)
&#9;for i = 0, 1, 0.1 do
&#9;&#9;pcall(function()
&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 =
&#9;&#9;&#9;&#9;CFrame.new(1.5 * i, 0.5 * i, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) * i, 0) *
&#9;&#9;&#9;&#9;CFrame.new(0.35 * (1 - i), 0.6 * (1 - i), -0.9 * (1 - i)) * CFrame.fromEulerAnglesXYZ(math.rad(180 * (1 - i)), 0, math.rad(-35 * (1 - i)))
&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C1 =
&#9;&#9;&#9;&#9;CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) * i, 0)
&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0.2 * (1 - i), 0, -0.5 * (1 - i)) * CFrame.fromEulerAnglesXYZ(math.rad(287.5 * (1 - i)), 0, math.rad(-48 * (1 - i)))
&#9;&#9;&#9;Player.Character[ModelName].Sheath.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(110 + (40 * i)), math.rad(17.5 * (1 - i)), 0)
&#9;&#9;&#9;Player.Character[ModelName].Sheath.Weld.C1 = CFrame.new(-1.475 + (0.375 * i), -1.75, 0.3 + (0.2 * i))
&#9;&#9;end)
&#9;&#9;wait()
&#9;end
&#9;ResetLimbCFrame(1, Player.Character)
&#9;EnableLimb(1, Player.Character)
&#9;SetSpeed(2, 0.2, Player.Character)
&#9;SetAngle(2, 0, Player.Character)
&#9;EnableLimb(2, Player.Character)
&#9;DisableLimb(1, Player.Character)
&#9;Mouse.Icon = &quot;rbxasset://textures\\GunCursor.png&quot;
&#9;Mouse.Button1Down:connect(function() onButton1Down(Mouse) end)
&#9;Mouse.Button1Up:connect(function() onButton1Up(Mouse) end)
&#9;Mouse.KeyDown:connect(function(Key) onKeyDown(Key, Mouse) end)
&#9;Mouse.KeyUp:connect(function(Key) onKeyUp(Key, Mouse) end)
&#9;CanUse = true
end


function onDeselected(Mouse)
&#9;if Selected == false then return end
&#9;Selected = false
&#9;while CanUse == false do wait() end
&#9;RemoveParts(Player.Character, 2)
&#9;CreateParts(Player.Character, 1)
&#9;while Selected == false do
&#9;&#9;if CheckPlayer() == true then
&#9;&#9;&#9;if Player.Character.Torso:FindFirstChild(&quot;Right Shoulder 2&quot;) ~= nil then
&#9;&#9;&#9;&#9;break
&#9;&#9;&#9;end
&#9;&#9;end
&#9;&#9;wait(0.1)
&#9;end
&#9;if Selected == true then return end
&#9;CanUse = false
&#9;RemoveParts(Player.Character, 1)
&#9;CreateParts(Player.Character, 2)
&#9;SetSpeed(1, 0.5, Player.Character)
&#9;SetAngle(1, 0, Player.Character)
&#9;DisableLimb(2, Player.Character)
&#9;SetSpeed(2, 0.5, Player.Character)
&#9;SetAngle(2, 0, Player.Character)
&#9;wait(0.1)
&#9;SetSpeed(2, 0.025, Player.Character)
&#9;SetAngle(2, math.rad(-15), Player.Character)
&#9;for i = 1, 0, -0.1 do
&#9;&#9;pcall(function()
&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 =
&#9;&#9;&#9;&#9;CFrame.new(1.5 * i, 0.5 * i, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) * i, 0) *
&#9;&#9;&#9;&#9;CFrame.new(0.35 * (1 - i), 0.6 * (1 - i), -0.9 * (1 - i)) * CFrame.fromEulerAnglesXYZ(math.rad(180 * (1 - i)), 0, math.rad(-35 * (1 - i)))
&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C1 =
&#9;&#9;&#9;&#9;CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) * i, 0)
&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0.2 * (1 - i), 0, -0.5 * (1 - i)) * CFrame.fromEulerAnglesXYZ(math.rad(287.5 * (1 - i)), 0, math.rad(-48 * (1 - i)))
&#9;&#9;&#9;Player.Character[ModelName].Sheath.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(110 + (40 * i)), math.rad(17.5 * (1 - i)), 0)
&#9;&#9;&#9;Player.Character[ModelName].Sheath.Weld.C1 = CFrame.new(-1.475 + (0.375 * i), -1.75, 0.3 + (0.2 * i))
&#9;&#9;end)
&#9;&#9;wait()
&#9;end
&#9;pcall(function()
&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(0.35, 0.6, -0.9) * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, math.rad(-35))
&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0.2, 0, -0.5) * CFrame.fromEulerAnglesXYZ(math.rad(287.5), 0, math.rad(-48))
&#9;&#9;Player.Character[ModelName].Sheath.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(110), math.rad(17.5), 0)
&#9;&#9;Player.Character[ModelName].Sheath.Weld.C1 = CFrame.new(-1.475, -1.75, 0.3)
&#9;end)
&#9;PlaySound(&quot;Sheath&quot;, &quot;rbxasset://sounds\\unsheath.wav&quot;, -1.1, 1, true, Player.Character[ModelName].Sheath)
&#9;coroutine.wrap(function()
&#9;&#9;while Player.Character[ModelName].Sheath:FindFirstChild(&quot;Sheath&quot;) == nil do
&#9;&#9;&#9;wait()
&#9;&#9;end
&#9;&#9;wait(0.05)
&#9;&#9;Player.Character[ModelName].Sheath.Sheath.Looped = false
&#9;end)()
&#9;wait(0.15)
&#9;SetAngle(2, 0, Player.Character)
&#9;for i = 1, 0, -0.1 do
&#9;&#9;pcall(function()
&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 =
&#9;&#9;&#9;&#9;CFrame.new(-0.05 + (0.4 * i), 0.11 + (0.49 * i), -0.8 - (0.1 * i)) * CFrame.fromEulerAnglesXYZ(math.rad(50 + (130 * i)), 0, math.rad(-45 + (10 * i)))
&#9;&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0.2 * i, 0, -0.5 * i) * CFrame.fromEulerAnglesXYZ(math.rad(200 + (87.5 * i)), 0, math.rad(-45 - (3 * i)))
&#9;&#9;&#9;Player.Character[ModelName].Sheath.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(150 - (40 * i)), math.rad(17.5 * i), 0)
&#9;&#9;&#9;Player.Character[ModelName].Sheath.Weld.C1 = CFrame.new(-1.1 - (0.375 * i), -1.75, 0.5 - (0.2 * i))
&#9;&#9;end)
&#9;&#9;wait()
&#9;end
&#9;pcall(function()
&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 = CFrame.new(-0.05, 0.11, -0.8) * CFrame.fromEulerAnglesXYZ(math.rad(50), 0, math.rad(-45))
&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C1 = CFrame.new(0, 0.5, 0)
&#9;&#9;Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0, 0, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(200), 0, math.rad(-45))
&#9;end)
&#9;RemoveParts(Player.Character, 2)
&#9;CreateParts(Player.Character, 1)
&#9;for i = 1, 0, -0.1 do
&#9;&#9;pcall(function()
&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C0 =
&#9;&#9;&#9;&#9;CFrame.new(-0.05 * i, 0.11 * i, -0.8 * i) * CFrame.fromEulerAnglesXYZ(math.rad(50) * i, 0, math.rad(-45) * i) *
&#9;&#9;&#9;&#9;CFrame.new(1.5 * (1 - i), 0.5 * (1 - i), 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) * (1 - i), 0)
&#9;&#9;&#9;Player.Character.Torso[&quot;Right Shoulder 2&quot;].C1 =
&#9;&#9;&#9;&#9;CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) * (1 - i), 0)
&#9;&#9;end)
&#9;&#9;wait()
&#9;end
&#9;SetSpeed(1, 0.25, Player.Character)
&#9;SetAngle(1, 0, Player.Character)
&#9;ResetLimbCFrame(1, Player.Character)
&#9;EnableLimb(1, Player.Character)
&#9;SetSpeed(2, 0.2, Player.Character)
&#9;SetAngle(2, 0, Player.Character)
&#9;EnableLimb(2, Player.Character)
&#9;CanUse = true
end


if script:FindFirstChild(&quot;SoundData&quot;) ~= nil then
&#9;local Sound = Instance.new(&quot;Sound&quot;)
&#9;Sound.Name = script.SoundData._Name.Value
&#9;Sound.SoundId = script.SoundData._SoundId.Value
&#9;Sound.Pitch = script.SoundData._Pitch.Value
&#9;Sound.Volume = script.SoundData._Volume.Value
&#9;Sound.Looped = script.SoundData._Looped.Value
&#9;Sound.Parent = script.SoundData._Parent.Value
&#9;Sound:Play()
&#9;script:Remove()
elseif script:FindFirstChild(&quot;DamageData&quot;) ~= nil then
&#9;script.Parent.Touched:connect(function(Hit)
&#9;&#9;if Hit.Parent == nil then return end
&#9;&#9;if script.DamageData.Break.Value == true then Hit:BreakJoints() end
&#9;&#9;if Hit.Parent:FindFirstChild(&quot;Humanoid&quot;) == nil then return end
&#9;&#9;Hit.Parent.Humanoid:TakeDamage(script.DamageData.Damage.Value)
&#9;end)
elseif script.Parent.className ~= &quot;HopperBin&quot; then
&#9;if Player == nil then print(&quot;Error: Player not found!&quot;) return end
&#9;Tool = Instance.new(&quot;HopperBin&quot;)
&#9;Tool.Name = ModelName
&#9;Tool.Parent = Player.Backpack
&#9;script.Name = &quot;Main&quot;
&#9;script.Parent = Tool
elseif script.Parent.className == &quot;HopperBin&quot; and Connected == false then
&#9;Connected = true
&#9;Player = script.Parent.Parent.Parent
&#9;script.Parent.Selected:connect(onSelected)
&#9;script.Parent.Deselected:connect(onDeselected)
&#9;CreateParts(Player.Character, 1)
end</ProtectedString>
		</Properties>
	</Item>
</roblox>