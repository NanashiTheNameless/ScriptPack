Sizer = 17 -- how big the scroll is depending on amount of items
enabled = false
s = Instance.new("ScreenGui", game.CoreGui)
pgr = Instance.new("TextButton")
pgr.Parent = s
pgr.BackgroundColor3 = Color3.new(1, 1, 1)
pgr.Position = UDim2.new(0, 180, 0, 264)
pgr.Size = UDim2.new(0, 50, 0, 35)
pgr.Font = Enum.Font.SciFi
pgr.FontSize = Enum.FontSize.Size14
pgr.Text = "Items"

if game.Players.LocalPlayer.PlayerGui:findFirstChild("Explorer") then
   game.Players.LocalPlayer.PlayerGui:findFirstChild("Explorer"):Remove()
end

local Cloned
local Deleted
local DeleteParent
local Player
local Search
local ScriptSearch
local Gui
local Cloned = nil
local Deleted = nil
local DeleteParent = nil
local Current = 0
local CurrentOption = 0

function Clear()
   Current = 0
   CurrentOption = 0
Fram:ClearAllChildren()
end

player = game.Players.LocalPlayer
user = player.Character;
cam = workspace.CurrentCamera;

function AddButton(N, Function, Color, Copy)
   if not N then
       error("RenderButton - No Name Specified")
   end
   if not Function then
       error("RenderButton - No Function Specified")
   end
   if not Color then
       Color = Color3.new(1, 1, 1)
   end
   local P = Instance.new("TextButton")
   P.Size = UDim2.new(0, 300, 0, 20)
   P.Text = (string.sub(N.Name, 5) .."  (x"..tostring(N.count.Value) ..")")
   P.Name = N.Name
   P.Parent = Fram
   P.BackgroundColor3 = Color
   P.TextColor3 = Color3.new(0, 0, 0)
   P.BackgroundTransparency = 0.5
   P.Position = UDim2.new(0, 0, 0, 0+(20*((Current))))
   P.MouseButton1Click:connect(function()
local model = false
model3 = true;
name3 = P.Name;

if Amounted and model3 == true then
for step = 1, Amounted do
local hit, position = workspace:FindPartOnRayWithIgnoreList(Ray.new((user.Torso.CFrame*CFrame.new(0, 0, -2.5)).p, Vector3.new(0, -30, 0)), {cam, workspace.targetFilter.ignore});
local area = CFrame.new(position+Vector3.new(0, 1, 0))*CFrame.Angles(0, math.rad(math.random(0, 359)), 0);

local drop = game.Lighting.assets.items[name3]:clone()
--if drop.count.Value == 1 then
drop:WaitForChild("count").Value = N.count.Value
--else
--end

drop.Parent = workspace.targetFilter.ignore.items;
local origin = drop.main.CFrame;
for index, child in pairs(drop:getChildren()) do
if child:isA("BasePart") then
child.Anchored = true;
child.CanCollide = false;

child.CFrame = area*origin:toObjectSpace(child.CFrame);

if child.Name == "light" or child.Name == "laser" then
child:Destroy();
end
end
end
end
end
name3 = nil
model3 = nil
   end)
   Current = Current + 1
   return P
end

function TestProperty(Obj, Property)
   Success = pcall(function()
       if Obj[Property] then
           return
       end
   end)
   return Success
end

function LoadOptions(Object)
end

Gui = Instance.new("ScreenGui")
   Gui.Parent = game.CoreGui
   Gui.Name = "Explorer"
   Fram = Instance.new("ScrollingFrame", Gui)
   Fram.Visible = false
   Fram.Size = UDim2.new(0, 300, 0, 200)
   Fram.Position = UDim2.new(0.7, 0, 0, 264)
   Fram.CanvasSize = UDim2.new(0, 0, Sizer, 0)

function Search(Object)
   if not Object:IsA("Workspace") or not Object:IsA("Player") then
       for Num, Obj in pairs(Object:GetChildren()) do
           --if not Obj:IsA("BasePart") or not Object.Parent == game.Workspace then
           if true then
                   AddButton(Obj, function() Clear(); Search(Obj); end, Color3.new(1, 1, 1), true)
           end
       end
   end
   i=0
       i=i+1
       i=i+1
   end

pgr.MouseButton1Click:connect(function()
if enabled == true then
enabled = false
   Clear()
Fram.Visible = false
else
enabled = true
   Search(game.Lighting.assets.items)
Fram.Visible = true
end
end)

--BEWARE OF GOING OVER THE LIMIT
--IT COULD KILL YOU
--KNOW YOUR FACTS BEFORE USE

--~kent911t

-- Objects

local SpawnGui = Instance.new("ScreenGui")
local ItemName = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local Count = Instance.new("TextBox")
local TextButton_2 = Instance.new("TextButton")
local Hide = Instance.new("TextButton")
local Show = Instance.new("TextButton")
local Amount = Instance.new("TextBox")
local TextButton_3 = Instance.new("TextButton")
local SpawnButton = Instance.new("TextButton")
local SpawnAllItems = Instance.new("TextButton")

-- Properties

SpawnGui.Name = "SpawnGui"
SpawnGui.Parent = game.CoreGui

ItemName.Name = "ItemName"
ItemName.Parent = SpawnGui
ItemName.BackgroundColor3 = Color3.new(0.529412, 0.529412, 0.529412)
ItemName.Position = UDim2.new(0, 0, 0, 300)
ItemName.Size = UDim2.new(0, 200, 0, 50)
ItemName.Font = Enum.Font.SciFi
ItemName.FontSize = Enum.FontSize.Size14
ItemName.Text = "Item"

TextButton.Parent = ItemName
TextButton.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
TextButton.Position = UDim2.new(0, 200, 0, 0)
TextButton.Size = UDim2.new(0, 50, 0, 50)
TextButton.Font = Enum.Font.SciFi
TextButton.FontSize = Enum.FontSize.Size10
TextButton.Text = "Item OK!"

Count.Name = "Count"
Count.Parent = SpawnGui
Count.BackgroundColor3 = Color3.new(0.529412, 0.529412, 0.529412)
Count.Position = UDim2.new(0, 0, 0, 400)
Count.Size = UDim2.new(0, 200, 0, 50)
Count.Font = Enum.Font.SciFi
Count.FontSize = Enum.FontSize.Size14
Count.Text = "Stack in item"

TextButton_2.Parent = Count
TextButton_2.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
TextButton_2.Position = UDim2.new(0, 200, 0, 0)
TextButton_2.Size = UDim2.new(0, 50, 0, 50)
TextButton_2.Font = Enum.Font.SciFi
TextButton_2.FontSize = Enum.FontSize.Size10
TextButton_2.Text = "Stack OK!"

Hide.Name = "Hide"
Hide.Parent = SpawnGui
Hide.BackgroundColor3 = Color3.new(1, 1, 1)
Hide.Position = UDim2.new(0, 0, 0, 264)
Hide.Size = UDim2.new(0, 50, 0, 35)
Hide.Font = Enum.Font.SciFi
Hide.FontSize = Enum.FontSize.Size10
Hide.Text = "Hide <"

Show.Name = "Show"
Show.Parent = SpawnGui
Show.BackgroundColor3 = Color3.new(1, 1, 1)
Show.Position = UDim2.new(0, 0, 0, 264)
Show.Size = UDim2.new(0, 50, 0, 35)
Show.Visible = false
Show.Font = Enum.Font.SciFi
Show.FontSize = Enum.FontSize.Size10
Show.Text = "Show >"

Amount.Name = "Amount"
Amount.Parent = SpawnGui
Amount.BackgroundColor3 = Color3.new(0.529412, 0.529412, 0.529412)
Amount.Position = UDim2.new(0, 0, 0, 350)
Amount.Size = UDim2.new(0, 200, 0, 50)
Amount.Font = Enum.Font.SciFi
Amount.FontSize = Enum.FontSize.Size14
Amount.Text = "Amount To Spawn"

TextButton_3.Parent = Amount
TextButton_3.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
TextButton_3.Position = UDim2.new(0, 200, 0, 0)
TextButton_3.Size = UDim2.new(0, 50, 0, 50)
TextButton_3.Font = Enum.Font.SciFi
TextButton_3.FontSize = Enum.FontSize.Size10
TextButton_3.Text = "Amount OK!"

SpawnButton.Name = "SpawnButton"
SpawnButton.Parent = SpawnGui
SpawnButton.BackgroundColor3 = Color3.new(1, 0.666667, 0)
SpawnButton.Position = UDim2.new(0, 0, 0, 451)
SpawnButton.Size = UDim2.new(0, 250, 0, 40)
SpawnButton.Font = Enum.Font.SciFi
SpawnButton.FontSize = Enum.FontSize.Size10
SpawnButton.Text = "Spawn!"
SpawnButton.TextColor3 = Color3.new(0, 0, 0)

SpawnAllItems.Name = "Hide"
SpawnAllItems.Parent = SpawnGui
SpawnAllItems.BackgroundColor3 = Color3.new(1, 1, 1)
SpawnAllItems.Position = UDim2.new(0, 60, 0, 264)
SpawnAllItems.Size = UDim2.new(0, 100, 0, 35)
SpawnAllItems.Font = Enum.Font.SciFi
SpawnAllItems.FontSize = Enum.FontSize.Size14
SpawnAllItems.Text = "Spawn All Items"

local player = game.Players.LocalPlayer
local user = player.Character;
local cam = workspace.CurrentCamera;

lightup = function(button)
coroutine.resume(coroutine.create(function()
local origincolor = button.BackgroundColor3
button.BackgroundColor3 = Color3.new(0, 1, 0)
wait(0.1)
button.BackgroundColor3 = origincolor
end))
end

function setname()
lightup(TextButton)
name = ItemName.Text
end

TextButton.MouseButton1Down:connect(setname)

function setcount()
lightup(TextButton_2)
Counted = tonumber(Count.Text)
end

TextButton_2.MouseButton1Down:connect(setcount)

function setamount()
lightup(TextButton_3)
Amounted = tonumber(Amount.Text)
end

TextButton_3.MouseButton1Down:connect(setamount)

function spawnitems()
lightup(SpawnButton)
local model = false
for _, v in pairs(game.Lighting.assets.items:getChildren()) do
if string.lower(v.Name) == "item"..string.lower(name) then
model3 = true;
name3 = v.Name;
end
end

if Amounted and Counted and model3 == true then
for step = 1, Amounted do
local hit, position = workspace:FindPartOnRayWithIgnoreList(Ray.new((user.Torso.CFrame*CFrame.new(0, 0, -2.5)).p, Vector3.new(0, -30, 0)), {cam, workspace.targetFilter.ignore});
local area = CFrame.new(position+Vector3.new(0, 1, 0))*CFrame.Angles(0, math.rad(math.random(0, 359)), 0);

local drop = game.Lighting.assets.items[name3]:clone();
--if drop.count.Value == 1 then
drop.count.Value = Counted
--else
--end

drop.Parent = workspace.targetFilter.ignore.items;
local origin = drop.main.CFrame;
for index, child in pairs(drop:getChildren()) do
if child:isA("BasePart") then
child.Anchored = true;
child.CanCollide = false;

child.CFrame = area*origin:toObjectSpace(child.CFrame);

if child.Name == "light" or child.Name == "laser" then
child:Destroy();
end
end
end
end
end
name3 = nil
model3 = nil
end

SpawnButton.MouseButton1Down:connect(spawnitems)

function spawnitems2()
lightup(SpawnAllItems)
for _, v in pairs (game.Lighting.assets.items:GetChildren()) do
local hit, position = workspace:FindPartOnRayWithIgnoreList(Ray.new((user.Torso.CFrame*CFrame.new(0, 0, -5)).p, Vector3.new(0, -60, 0)), {cam, workspace.targetFilter.ignore});
local area = CFrame.new(position+Vector3.new(0, 3, 0))*CFrame.Angles(0, math.rad(math.random(0, 359)), 0);
local drop = v:clone();
drop.Parent = workspace.targetFilter.ignore.items;
local hit, position = workspace:FindPartOnRayWithIgnoreList(Ray.new((user.Torso.CFrame*CFrame.new(0, 0, -5)).p, Vector3.new(0, -60, 0)), {cam, workspace.targetFilter.ignore});
local area = CFrame.new(position+Vector3.new(0, 3, 0))*CFrame.Angles(0, math.rad(math.random(0, 359)), 0);
local origin = drop.main.CFrame;
for index, child in pairs(drop:getChildren()) do
if child.ClassName == "Part" then
child.Anchored = true;
child.CanCollide = false;

child.CFrame = area*origin:toObjectSpace(child.CFrame);

if child.Name == "light" or child.Name == "laser" then
child:Destroy();
end
end
end
end
end

SpawnAllItems.MouseButton1Down:connect(spawnitems2)


HideGui = function()
lightup(Hide)
for _, v in pairs (SpawnGui:GetChildren()) do
v.Visible = false
end
Show.Visible = true
end
Hide.MouseButton1Down:connect(HideGui)

ShowGui = function()
lightup(Show)
for _, v in pairs (SpawnGui:GetChildren()) do
v.Visible = true
end
Show.Visible = false
end
Show.MouseButton1Down:connect(ShowGui)
