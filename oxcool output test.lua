script.Parent = nil
function ScrollingListBase(list,template)
local ListFrame = Instance.new("Frame")
ListFrame.Name = "ListContainer"
local EntryLabel = template or Instance.new("TextLabel")
EntryLabel.Parent = workspace
local entry_height = EntryLabel.AbsoluteSize.y > 0 and
EntryLabel.AbsoluteSize.y or EntryLabel.TextBounds.y + 2
EntryLabel.Parent = nil
EntryLabel.ZIndex = ListFrame.ZIndex

local
local
local
local

list_height = 0
num_entries = math.floor(list_height/entry_height)
scroll_index = 0
entries = {}

local class = {}

local function round(number,by)
return math.floor((number/by)+0.5) * by
end

local function update()
-- correct scroll index
if num_entries <= #list then
if scroll_index > 0 then
local mod = scroll_index + num_entries
if mod > #list then
scroll_index = #list -
num_entries
end
else
scroll_index = 0
end
else
scroll_index = 0
end
-- update current entries
for i = 1,num_entries do
local item = list[i + scroll_index]
if item then
local text = tostring(item)
local entry = entries[i]
if not entry then
entry = EntryLabel:Clone()
entries[i] = entry
end
entry.Parent = ListFrame
entry.Text = text
entry.Position = UDim2.new(0,0,0,(i-
1)*entry_height)
entry.Size =
UDim2.new(1,0,0,entry_height)
else

local entry = entries[i]
if entry then
entry:Remove()
entries[i] = nil
end

end
end
-- remove extra entries
for i = num_entries+1,#entries do
local entry = entries[i]
if entry then
entry:Remove()
end
entries[i] = nil
end
if class.UpdateCallback then
local e,o = pcall(class.UpdateCallback)
if not e then
print(o)
end
end

list

end

-- add an item to the list; optional list index
local function add_entry(item,index)
if index then
table.insert(list,index,item)
else
table.insert(list,item)
end
update()
end

-- remove entry from list; may be a list index or an item in the

local function remove_entry(item)
if type(item) == "number" or type(item) == "nil" then
table.remove(list,item)
else
for i,v in pairs(list) do
if v == item then
table.remove(list,i)
break
end
end
end
update()
end

local function scroll_down()
scroll_index = scroll_index + 1
update()
end

local function scroll_up()
scroll_index = scroll_index - 1
update()
end

local function scroll_to(index)
scroll_index = index
update()
end

local function scroll_percent(percent)
scroll_index = round((#list-num_entries)*percent,1)
update()
end

local function get_scroll_percent()
return scroll_index/(#list-num_entries)
end

local function get_scroll_index()
return scroll_index
end

local function can_scroll_down()
return scroll_index + num_entries < #list
end

local function can_scroll_up()
return scroll_index > 0
end

local con = ListFrame.Changed:connect(function(p)
if p == "AbsoluteSize" then
list_height = ListFrame.AbsoluteSize.y
num_entries =
math.floor(list_height/entry_height)
update()
elseif p == "ZIndex" then
local z = ListFrame.ZIndex
EntryLabel.ZIndex = z
for i,v in pairs(entries) do
v.ZIndex = z
end
end
end)

class.Frame = frame
class.Update = update
class.AddEntry = add_entry
class.RemoveEntry = remove_entry
class.ScrollDown = scroll_down
class.CanScrollDown = can_scroll_down
class.ScrollUp = scroll_up
class.CanScrollUp = can_scroll_up

class.ScrollTo = scroll_to
class.GetScrollIndex = get_scroll_index
class.ScrollPercent = scroll_percent
class.GetScrollPercent = get_scroll_percent

local function dispose()
for i in pairs(class) do
class[i] = nil
end
con:disconnect()
for i,v in pairs(entries) do
v:Remove()
entries[i] = nil
end
ListFrame:Remove()
end

class.Dispose = dispose

return class,ListFrame

end

function ScrollingList(list,size,position)
local entry = Instance.new("TextLabel")
entry.Name = "ListEntry"
entry.Font = "ArialBold"
entry.FontSize = "Size14"
entry.TextColor3 = Color3.new(1,1,1)
entry.BackgroundTransparency = 1
entry.TextXAlignment = "Left"

local ListObject = Instance.new("Frame")
ListObject.BorderSizePixel = 1
ListObject.ZIndex = 1
ListObject.Size = size or UDim2.new(0, 300, 0, 200)
ListObject.Position = position or UDim2.new(0, 0, 0, 0)
ListObject.Style = Enum.FrameStyle.RobloxSquare
ListObject.Active = true
ListObject.Name = "ListObject"

local Expander = Instance.new("Frame")
Expander.BackgroundTransparency = 1
Expander.BorderSizePixel = 1
Expander.ZIndex = 1
Expander.Size = UDim2.new(1, 21, 1, 16)
Expander.Position = UDim2.new(0,0,0,0)
Expander.Name = "Expander"

local ScrollContainer = Instance.new("Frame")
ScrollContainer.Size = UDim2.new(0, 16, 1, 0)
ScrollContainer.BackgroundTransparency = 1
ScrollContainer.Position = UDim2.new(1, -16, 0, 0)

--

ScrollContainer.Name = "ScrollContainer"
ScrollContainer.Parent = Expander
local ScrollDown = Instance.new("ImageButton")
ScrollDown.Image = "rbxasset://textures/ui/scrollbuttonDown.png"
ScrollDown.BackgroundTransparency = 1
ScrollDown.BorderSizePixel = 1
ScrollDown.ZIndex = 1
ScrollDown.Size = UDim2.new(0, 17, 0, 17)
ScrollDown.Name = "ScrollDown"
ScrollDown.Position = UDim2.new(1, -41, 1, -35)
ScrollDown.Parent = ScrollContainer
local ScrollUp = Instance.new("ImageButton")
ScrollUp.Image = "rbxasset://textures/ui/scrollbuttonUp.png"
ScrollUp.BackgroundTransparency = 1
ScrollUp.BorderSizePixel = 1
ScrollUp.ZIndex = 1
ScrollUp.Size = UDim2.new(0, 17, 0, 17)
ScrollUp.Name = "ScrollUp"
ScrollUp.Position = UDim2.new(1, -41, 0, 5)
ScrollUp.Parent = ScrollContainer
local ScrollBar = Instance.new("ImageLabel")
ScrollBar.Image = "rbxasset://textures/ui/scrollbar.png"
ScrollBar.BorderSizePixel = 1
ScrollBar.ZIndex = 1
ScrollBar.Size = UDim2.new(0, 17, 1, -61)
ScrollBar.BackgroundTransparency = 1
ScrollBar.Position = UDim2.new(1, -41, 0, 24)
ScrollBar.Name = "ScrollBar"
ScrollBar.Parent = ScrollContainer
local ScrollDrag = Instance.new("ImageButton")
ScrollDrag.Image = "http://www.roblox.com/asset/?id=55573231"
ScrollDrag.BorderSizePixel = 1
ScrollDrag.ZIndex = 1
ScrollDrag.Size = UDim2.new(0, 16, 0, 16)
ScrollDrag.BackgroundTransparency = 1
ScrollDrag.Name = "ScrollDrag"
ScrollDrag.Parent = ScrollBar
local MouseDrag = Instance.new("ImageButton")
MouseDrag.Active = false
MouseDrag.Size = UDim2.new(1.5, 0, 1.5, 0)
MouseDrag.AutoButtonColor = false
MouseDrag.BackgroundTransparency = 1
MouseDrag.Name = "MouseDrag"
MouseDrag.Position = UDim2.new(-0.25, 0, -0.25, 0)
MouseDrag.ZIndex = 10

local ListClass,ListFrame = ScrollingListBase(list,entry)
wait()
ListFrame.BackgroundTransparency = 1
ListFrame.Parent = ListObject
ListFrame.Size = UDim2.new(1,-16,1,0)

ListObject.Changed:connect(function(p)
if p == "ZIndex" then

local z = ListObject.ZIndex
ListFrame.ZIndex = z
ScrollContainer.ZIndex = z
ScrollDown.ZIndex = z
ScrollUp.ZIndex = z
ScrollBar.ZIndex = z
ScrollDrag.ZIndex = z

end

end)

ListClass.UpdateCallback = function()
local down = ListClass.CanScrollDown()
local up = ListClass.CanScrollUp()
local pct = ListClass.GetScrollPercent()
ScrollDown.Active = down
ScrollUp.Active = up
ScrollDown.AutoButtonColor = down
ScrollUp.AutoButtonColor = up
ScrollDrag.Visible = down or up
ScrollDrag.Position =
UDim2.new(0,0,0,pct*(ScrollBar.AbsoluteSize.y-ScrollDrag.AbsoluteSize.y))
end

local scroll_stamp = 0
ScrollDown.MouseButton1Down:connect(function()
scroll_stamp = tick()
local current = scroll_stamp
local up_con
up_con = MouseDrag.MouseButton1Up:connect(function()
scroll_stamp = tick()
MouseDrag.Parent = nil
up_con:disconnect(); drag = nil
end)
MouseDrag.Parent = ListObject.Parent
ListClass.ScrollDown()
wait(0.2)
local t = tick()
local w = 0.1
while scroll_stamp == current do
ListClass.ScrollDown()
if not ScrollDown.Active then break end
if tick()-t > 5 then
w = 0
elseif tick()-t > 2 then
w = 0.06
end
wait(w)
end
end)
ScrollDown.MouseButton1Up:connect(function()
scroll_stamp = tick()
end)

ScrollUp.MouseButton1Down:connect(function()

scroll_stamp = tick()
local current = scroll_stamp
local up_con
up_con = MouseDrag.MouseButton1Up:connect(function()
scroll_stamp = tick()
MouseDrag.Parent = nil
up_con:disconnect(); drag = nil
end)
MouseDrag.Parent = ListObject.Parent
ListClass.ScrollUp()
wait(0.2)
local t = tick()
local w = 0.1
while scroll_stamp == current do
ListClass.ScrollUp()
if not ScrollUp.Active then break end
if tick()-t > 5 then
w = 0
elseif tick()-t > 2 then
w = 0.06
end
wait(w)
end

end)

ScrollUp.MouseButton1Up:connect(function()
scroll_stamp = tick()
end)

ScrollDrag.MouseButton1Down:connect(function(x,y)
scroll_stamp = tick()
local mouse_offset = y - ScrollDrag.AbsolutePosition.y
local drag_con
local up_con
drag_con = MouseDrag.MouseMoved:connect(function(x,y)
local bar_abs_pos = ScrollBar.AbsolutePosition.y
local bar_abs_size = ScrollBar.AbsoluteSize.y
local drag_abs_size = ScrollDrag.AbsoluteSize.y
local bar_abs_one = bar_abs_pos + bar_abs_size -
drag_abs_size
y = y - mouse_offset
y = y < bar_abs_pos and bar_abs_pos or y >
bar_abs_one and bar_abs_one or y
y = y - bar_abs_pos
ListClass.ScrollPercent(y/(bar_abs_size-
drag_abs_size))
end)
up_con = MouseDrag.MouseButton1Up:connect(function()
scroll_stamp = tick()
MouseDrag.Parent = nil
drag_con:disconnect(); drag_con = nil
up_con:disconnect(); drag = nil
end)

MouseDrag.Parent = ListObject.Parent

end)

ListClass.Update()

return ListObject,ListClass,Expander

end

local Screen =
Instance.new("ScreenGui",game:FindFirstChild("CoreGui",true))
Screen.Name = "Output Gui for Oxcool1's Script Builder, Break Code:
math.random(bla,bla10),Type of Code: Impossible(Neva)"

list = {
}

ListObject,ListClass,Expander =
ScrollingList(list,UDim2.new(0.4,0,0,212),UDim2.new(0,0,1,-260))
ListObject.Parent = Screen
Expander.Parent = ListObject
ListObject.Visible = false
OxListContainer = ListObject.ListContainer

OutputEnter = Instance.new("TextButton",Screen)
OutputEnter.Name = "Open/Close"
OutputEnter.Position = UDim2.new(0.72,0,0.945,0)
OutputEnter.Size = UDim2.new(0.05,0,0.05,0)
OutputEnter.Text = "Output"
OutputEnter.FontSize = "Size10"
OutputEnter.TextColor = BrickColor.new("White")
OutputEnter.Style = "RobloxButton"

OutputTrickFrame = Instance.new("Frame")
OutputTrickFrame.Name = "BigPlayerListWindowImposter"
OutputTrickFrame.Visible = false
OutputTrickFrame.Style = Enum.FrameStyle.RobloxSquare
OutputTrickFrame.BackgroundColor3 = Color3.new(0,0,0)
OutputTrickFrame.BackgroundTransparency = 0.7
OutputTrickFrame.BorderSizePixel = 0
OutputTrickFrame.Size = UDim2.new(0.4*0.75,0,0,212*0.75)
OutputTrickFrame.Position = UDim2.new(0.045,0,1,-230)
OutputTrickFrame.Parent = Screen

Header = Instance.new("Frame")
Header.BorderSizePixel = 1
Header.ZIndex = 1
Header.Active = true
Header.Style = Enum.FrameStyle.RobloxSquare
Header.Size = UDim2.new(1, 0, 0, 19)
Header.Position = UDim2.new(0, -13, 0, -27)
Header.Name = "Header"

Header.Parent = Expander

CloseButton = Instance.new("ImageButton")
CloseButton.Image = "rbxasset://textures/ui/playerlist_big_hide.png"
CloseButton.BorderSizePixel = 1
CloseButton.ZIndex = 1
CloseButton.Size = UDim2.new(0, 25, 0, 25)
CloseButton.Position = UDim2.new(1, -24, 0.5, -7)
CloseButton.BackgroundTransparency = 1
CloseButton.Name = "CloseButton"
CloseButton.Parent = Header

CleanOutput = Instance.new("TextButton",Header)
CleanOutput.Name = "Clean Output"
CleanOutput.Position = UDim2.new(1, -65, 0.5, -7)
CleanOutput.Size = UDim2.new(0, 41, 0, 25)
CleanOutput.Text = "Clean"
CleanOutput.FontSize = "Size10"
CleanOutput.TextColor = BrickColor.new("White")
CleanOutput.Style = "RobloxButton"

OutputName = Instance.new("TextLabel")
OutputName.BorderSizePixel = 1
OutputName.ZIndex = 1
OutputName.FontSize = "Size18"
OutputName.Text = "Output"
OutputName.TextColor3 = Color3.new(1,1,1)
OutputName.Size = UDim2.new(0.5, 0, 1, 3)
OutputName.Position = UDim2.new(0,0,0,0)
OutputName.BackgroundTransparency = 1
OutputName.Name = "OutputName"
OutputName.TextXAlignment = "Left"
OutputName.Parent = Header

OutputEnter.MouseButton1Down:connect(function()
OutputEnter.Visible = false
OutputTrickFrame.Visible = true
OutputTrickFrame:TweenSizeAndPosition(UDim2.new(0.4,0,0,230),
UDim2.new(0,0,1,-280), Enum.EasingDirection.Out, bigEasingStyle, 0.3,
true,
function(state)
if state == Enum.TweenStatus.Completed then
OutputTrickFrame.Visible = false
ListObject.Visible = true
end
end)
end)

CloseButton.MouseButton1Down:connect(function()
ListObject.Visible = false
OutputTrickFrame.Visible = true
OutputTrickFrame:TweenSizeAndPosition(UDim2.new(0.4*0.75,0,0,212*0.75),UD
im2.new(0.045,0,1,-230), Enum.EasingDirection.In, Enum.EasingStyle.Quart,
0.15, true,

function(state)
if state == Enum.TweenStatus.Completed then
OutputEnter.Visible = true
OutputTrickFrame.Visible = false
end
end)
end)

CleanOutput.MouseButton1Down:connect(function()
for i,v in next,list do
list[i] = nil
end
ListClass.Update()
ListClass.ScrollTo(math.huge)
end)

Spawn(function()
while wait() do
for _,v in next,game:service("Players").LocalPlayer:children() do
if v:IsA("StringValue") then
if v.Name == "RunGui" then
table.insert(list,v.Value)
ListClass.Update()
ListClass.ScrollTo(math.huge)
v:remove()
elseif v.Name == "ErrorGui" then
v.Value = "- "..v.Value
table.insert(list,v.Value)
ListClass.Update()
ListClass.ScrollTo(math.huge)
v:remove()
elseif v.Name == "ActionGui" then
v.Value = "+ "..v.Value
table.insert(list,v.Value)
ListClass.Update()
ListClass.ScrollTo(math.huge)
v:remove()
elseif v.Name == "PrintGui" then
v.Value = "> "..v.Value
table.insert(list,v.Value)
ListClass.Update()
ListClass.ScrollTo(math.huge)
v:remove()
end
end
end
end
end)

Spawn(function()
while wait() do
for _,v in next,OxListContainer:children() do
if v.Text == "Output:" then

v.TextColor3 = Color3.new(255/255,255/255,255/255)
elseif v.Text:sub(1,7) == "Running" then
v.TextColor3 = Color3.new(0/255,102/255,255/255)
elseif v.Text:sub(1,2) == "- " then
v.TextColor3 = Color3.new(255/255,0/255,0/255)
elseif v.Text:sub(1,2) == "> " then
v.TextColor3 = Color3.new(255/255,255/255,255/255)
elseif v.Text:sub(1,2) == "+ " then
v.TextColor3 = Color3.new(255/255,153/255,0/255)
end end
end
end)
--script.Parent = nil
function ScrollingListBase(list,template)
local ListFrame = Instance.new("Frame")
ListFrame.Name = "ListContainer"
local EntryLabel = template or Instance.new("TextLabel")
EntryLabel.Parent = workspace
local entry_height = EntryLabel.AbsoluteSize.y > 0 and
EntryLabel.AbsoluteSize.y or EntryLabel.TextBounds.y + 2
EntryLabel.Parent = nil
EntryLabel.ZIndex = ListFrame.ZIndex

local
local
local
local

list_height = 0
num_entries = math.floor(list_height/entry_height)
scroll_index = 0
entries = {}

local class = {}

local function round(number,by)
return math.floor((number/by)+0.5) * by
end

local function update()
-- correct scroll index
if num_entries <= #list then
if scroll_index > 0 then
local mod = scroll_index + num_entries
if mod > #list then
scroll_index = #list -
num_entries
end
else
scroll_index = 0
end
else
scroll_index = 0
end
-- update current entries
for i = 1,num_entries do
local item = list[i + scroll_index]
if item then
local text = tostring(item)

local entry = entries[i]
if not entry then
entry = EntryLabel:Clone()
entries[i] = entry
end
entry.Parent = ListFrame
entry.Text = text
entry.Position = UDim2.new(0,0,0,(i-

entry.Size =

1)*entry_height)

UDim2.new(1,0,0,entry_height)
else

local entry = entries[i]
if entry then
entry:Remove()
entries[i] = nil
end

end
end
-- remove extra entries
for i = num_entries+1,#entries do
local entry = entries[i]
if entry then
entry:Remove()
end
entries[i] = nil
end
if class.UpdateCallback then
local e,o = pcall(class.UpdateCallback)
if not e then
print(o)
end
end

list

end

-- add an item to the list; optional list index
local function add_entry(item,index)
if index then
table.insert(list,index,item)
else
table.insert(list,item)
end
update()
end

-- remove entry from list; may be a list index or an item in the

local function remove_entry(item)
if type(item) == "number" or type(item) == "nil" then
table.remove(list,item)
else
for i,v in pairs(list) do
if v == item then
table.remove(list,i)

break

end

end
end
update()

end

local function scroll_down()
scroll_index = scroll_index + 1
update()
end

local function scroll_up()
scroll_index = scroll_index - 1
update()
end

local function scroll_to(index)
scroll_index = index
update()
end

local function scroll_percent(percent)
scroll_index = round((#list-num_entries)*percent,1)
update()
end

local function get_scroll_percent()
return scroll_index/(#list-num_entries)
end

local function get_scroll_index()
return scroll_index
end

local function can_scroll_down()
return scroll_index + num_entries < #list
end

local function can_scroll_up()
return scroll_index > 0
end

local con = ListFrame.Changed:connect(function(p)
if p == "AbsoluteSize" then
list_height = ListFrame.AbsoluteSize.y
num_entries =
math.floor(list_height/entry_height)
update()
elseif p == "ZIndex" then
local z = ListFrame.ZIndex
EntryLabel.ZIndex = z
for i,v in pairs(entries) do
v.ZIndex = z

end

end

end)

class.Frame = frame
class.Update = update
class.AddEntry = add_entry
class.RemoveEntry = remove_entry
class.ScrollDown = scroll_down
class.CanScrollDown = can_scroll_down
class.ScrollUp = scroll_up
class.CanScrollUp = can_scroll_up
class.ScrollTo = scroll_to
class.GetScrollIndex = get_scroll_index
class.ScrollPercent = scroll_percent
class.GetScrollPercent = get_scroll_percent

local function dispose()
for i in pairs(class) do
class[i] = nil
end
con:disconnect()
for i,v in pairs(entries) do
v:Remove()
entries[i] = nil
end
ListFrame:Remove()
end

class.Dispose = dispose

return class,ListFrame

end

function ScrollingList(list,size,position)
local entry = Instance.new("TextLabel")
entry.Name = "ListEntry"
entry.Font = "ArialBold"
entry.FontSize = "Size14"
entry.TextColor3 = Color3.new(1,1,1)
entry.BackgroundTransparency = 1
entry.TextXAlignment = "Left"

local ListObject = Instance.new("Frame")
ListObject.BorderSizePixel = 1
ListObject.ZIndex = 1
ListObject.Size = size or UDim2.new(0, 300, 0, 200)
ListObject.Position = position or UDim2.new(0, 0, 0, 0)
ListObject.Style = Enum.FrameStyle.RobloxSquare
ListObject.Active = true
ListObject.Name = "ListObject"

local Expander = Instance.new("Frame")
Expander.BackgroundTransparency = 1
Expander.BorderSizePixel = 1
Expander.ZIndex = 1
Expander.Size = UDim2.new(1, 21, 1, 16)
Expander.Position = UDim2.new(0,0,0,0)
Expander.Name = "Expander"

local ScrollContainer = Instance.new("Frame")
ScrollContainer.Size = UDim2.new(0, 16, 1, 0)
ScrollContainer.BackgroundTransparency = 1
ScrollContainer.Position = UDim2.new(1, -16, 0, 0)
ScrollContainer.Name = "ScrollContainer"
ScrollContainer.Parent = Expander
local ScrollDown = Instance.new("ImageButton")
ScrollDown.Image = "rbxasset://textures/ui/scrollbuttonDown.png"
ScrollDown.BackgroundTransparency = 1
ScrollDown.BorderSizePixel = 1
ScrollDown.ZIndex = 1
ScrollDown.Size = UDim2.new(0, 17, 0, 17)
ScrollDown.Name = "ScrollDown"
ScrollDown.Position = UDim2.new(1, -41, 1, -35)
ScrollDown.Parent = ScrollContainer
local ScrollUp = Instance.new("ImageButton")
ScrollUp.Image = "rbxasset://textures/ui/scrollbuttonUp.png"
ScrollUp.BackgroundTransparency = 1
ScrollUp.BorderSizePixel = 1
ScrollUp.ZIndex = 1
ScrollUp.Size = UDim2.new(0, 17, 0, 17)
ScrollUp.Name = "ScrollUp"
ScrollUp.Position = UDim2.new(1, -41, 0, 5)
ScrollUp.Parent = ScrollContainer
local ScrollBar = Instance.new("ImageLabel")
ScrollBar.Image = "rbxasset://textures/ui/scrollbar.png"
ScrollBar.BorderSizePixel = 1
ScrollBar.ZIndex = 1
ScrollBar.Size = UDim2.new(0, 17, 1, -61)
ScrollBar.BackgroundTransparency = 1
ScrollBar.Position = UDim2.new(1, -41, 0, 24)
ScrollBar.Name = "ScrollBar"
ScrollBar.Parent = ScrollContainer
local ScrollDrag = Instance.new("ImageButton")
ScrollDrag.Image = "http://www.roblox.com/asset/?id=55573231"
ScrollDrag.BorderSizePixel = 1
ScrollDrag.ZIndex = 1
ScrollDrag.Size = UDim2.new(0, 16, 0, 16)
ScrollDrag.BackgroundTransparency = 1
ScrollDrag.Name = "ScrollDrag"
ScrollDrag.Parent = ScrollBar
local MouseDrag = Instance.new("ImageButton")
MouseDrag.Active = false
MouseDrag.Size = UDim2.new(1.5, 0, 1.5, 0)
MouseDrag.AutoButtonColor = false
MouseDrag.BackgroundTransparency = 1

--

MouseDrag.Name = "MouseDrag"
MouseDrag.Position = UDim2.new(-0.25, 0, -0.25, 0)
MouseDrag.ZIndex = 10

local ListClass,ListFrame = ScrollingListBase(list,entry)
wait()
ListFrame.BackgroundTransparency = 1
ListFrame.Parent = ListObject
ListFrame.Size = UDim2.new(1,-16,1,0)

ListObject.Changed:connect(function(p)
if p == "ZIndex" then
local z = ListObject.ZIndex
ListFrame.ZIndex = z
ScrollContainer.ZIndex = z
ScrollDown.ZIndex = z
ScrollUp.ZIndex = z
ScrollBar.ZIndex = z
ScrollDrag.ZIndex = z
end
end)

ListClass.UpdateCallback = function()
local down = ListClass.CanScrollDown()
local up = ListClass.CanScrollUp()
local pct = ListClass.GetScrollPercent()
ScrollDown.Active = down
ScrollUp.Active = up
ScrollDown.AutoButtonColor = down
ScrollUp.AutoButtonColor = up
ScrollDrag.Visible = down or up
ScrollDrag.Position =
UDim2.new(0,0,0,pct*(ScrollBar.AbsoluteSize.y-ScrollDrag.AbsoluteSize.y))
end

local scroll_stamp = 0
ScrollDown.MouseButton1Down:connect(function()
scroll_stamp = tick()
local current = scroll_stamp
local up_con
up_con = MouseDrag.MouseButton1Up:connect(function()
scroll_stamp = tick()
MouseDrag.Parent = nil
up_con:disconnect(); drag = nil
end)
MouseDrag.Parent = ListObject.Parent
ListClass.ScrollDown()
wait(0.2)
local t = tick()
local w = 0.1
while scroll_stamp == current do
ListClass.ScrollDown()
if not ScrollDown.Active then break end
if tick()-t > 5 then

w = 0
elseif tick()-t > 2 then
w = 0.06
end
wait(w)

end
end)
ScrollDown.MouseButton1Up:connect(function()
scroll_stamp = tick()
end)

ScrollUp.MouseButton1Down:connect(function()
scroll_stamp = tick()
local current = scroll_stamp
local up_con
up_con = MouseDrag.MouseButton1Up:connect(function()
scroll_stamp = tick()
MouseDrag.Parent = nil
up_con:disconnect(); drag = nil
end)
MouseDrag.Parent = ListObject.Parent
ListClass.ScrollUp()
wait(0.2)
local t = tick()
local w = 0.1
while scroll_stamp == current do
ListClass.ScrollUp()
if not ScrollUp.Active then break end
if tick()-t > 5 then
w = 0
elseif tick()-t > 2 then
w = 0.06
end
wait(w)
end
end)

ScrollUp.MouseButton1Up:connect(function()
scroll_stamp = tick()
end)

ScrollDrag.MouseButton1Down:connect(function(x,y)
scroll_stamp = tick()
local mouse_offset = y - ScrollDrag.AbsolutePosition.y
local drag_con
local up_con
drag_con = MouseDrag.MouseMoved:connect(function(x,y)
local bar_abs_pos = ScrollBar.AbsolutePosition.y
local bar_abs_size = ScrollBar.AbsoluteSize.y
local drag_abs_size = ScrollDrag.AbsoluteSize.y
local bar_abs_one = bar_abs_pos + bar_abs_size -
drag_abs_size
y = y - mouse_offset

y = y < bar_abs_pos and bar_abs_pos or y >
bar_abs_one and bar_abs_one or y
y = y - bar_abs_pos
ListClass.ScrollPercent(y/(bar_abs_size-
drag_abs_size))
end)
up_con = MouseDrag.MouseButton1Up:connect(function()
scroll_stamp = tick()
MouseDrag.Parent = nil
drag_con:disconnect(); drag_con = nil
up_con:disconnect(); drag = nil
end)
MouseDrag.Parent = ListObject.Parent
end)

ListClass.Update()

return ListObject,ListClass,Expander

end

local Screen =
Instance.new("ScreenGui",game:FindFirstChild("CoreGui",true))
Screen.Name = "Output Gui for Oxcool1's Script Builder, Break Code:
math.random(bla,bla10),Type of Code: Impossible(Neva)"

list = {
}

ListObject,ListClass,Expander =
ScrollingList(list,UDim2.new(0.4,0,0,212),UDim2.new(0,0,1,-260))
ListObject.Parent = Screen
Expander.Parent = ListObject
ListObject.Visible = false
OxListContainer = ListObject.ListContainer

OutputEnter = Instance.new("TextButton",Screen)
OutputEnter.Name = "Open/Close"
OutputEnter.Position = UDim2.new(0.72,0,0.945,0)
OutputEnter.Size = UDim2.new(0.05,0,0.05,0)
OutputEnter.Text = "Output"
OutputEnter.FontSize = "Size10"
OutputEnter.TextColor = BrickColor.new("White")
OutputEnter.Style = "RobloxButton"

OutputTrickFrame = Instance.new("Frame")
OutputTrickFrame.Name = "BigPlayerListWindowImposter"
OutputTrickFrame.Visible = false
OutputTrickFrame.Style = Enum.FrameStyle.RobloxSquare
OutputTrickFrame.BackgroundColor3 = Color3.new(0,0,0)
OutputTrickFrame.BackgroundTransparency = 0.7
OutputTrickFrame.BorderSizePixel = 0

OutputTrickFrame.Size = UDim2.new(0.4*0.75,0,0,212*0.75)
OutputTrickFrame.Position = UDim2.new(0.045,0,1,-230)
OutputTrickFrame.Parent = Screen

Header = Instance.new("Frame")
Header.BorderSizePixel = 1
Header.ZIndex = 1
Header.Active = true
Header.Style = Enum.FrameStyle.RobloxSquare
Header.Size = UDim2.new(1, 0, 0, 19)
Header.Position = UDim2.new(0, -13, 0, -27)
Header.Name = "Header"
Header.Parent = Expander

CloseButton = Instance.new("ImageButton")
CloseButton.Image = "rbxasset://textures/ui/playerlist_big_hide.png"
CloseButton.BorderSizePixel = 1
CloseButton.ZIndex = 1
CloseButton.Size = UDim2.new(0, 25, 0, 25)
CloseButton.Position = UDim2.new(1, -24, 0.5, -7)
CloseButton.BackgroundTransparency = 1
CloseButton.Name = "CloseButton"
CloseButton.Parent = Header

CleanOutput = Instance.new("TextButton",Header)
CleanOutput.Name = "Clean Output"
CleanOutput.Position = UDim2.new(1, -65, 0.5, -7)
CleanOutput.Size = UDim2.new(0, 41, 0, 25)
CleanOutput.Text = "Clean"
CleanOutput.FontSize = "Size10"
CleanOutput.TextColor = BrickColor.new("White")
CleanOutput.Style = "RobloxButton"

OutputName = Instance.new("TextLabel")
OutputName.BorderSizePixel = 1
OutputName.ZIndex = 1
OutputName.FontSize = "Size18"
OutputName.Text = "Output"
OutputName.TextColor3 = Color3.new(1,1,1)
OutputName.Size = UDim2.new(0.5, 0, 1, 3)
OutputName.Position = UDim2.new(0,0,0,0)
OutputName.BackgroundTransparency = 1
OutputName.Name = "OutputName"
OutputName.TextXAlignment = "Left"
OutputName.Parent = Header

OutputEnter.MouseButton1Down:connect(function()
OutputEnter.Visible = false
OutputTrickFrame.Visible = true
OutputTrickFrame:TweenSizeAndPosition(UDim2.new(0.4,0,0,230),
UDim2.new(0,0,1,-280), Enum.EasingDirection.Out, bigEasingStyle, 0.3,
true,
function(state)
if state == Enum.TweenStatus.Completed then

OutputTrickFrame.Visible = false
ListObject.Visible = true
end
end)
end)

CloseButton.MouseButton1Down:connect(function()
ListObject.Visible = false
OutputTrickFrame.Visible = true
OutputTrickFrame:TweenSizeAndPosition(UDim2.new(0.4*0.75,0,0,212*0.75),UD
im2.new(0.045,0,1,-230), Enum.EasingDirection.In, Enum.EasingStyle.Quart,
0.15, true,
function(state)
if state == Enum.TweenStatus.Completed then
OutputEnter.Visible = true
OutputTrickFrame.Visible = false
end
end)
end)

CleanOutput.MouseButton1Down:connect(function()
for i,v in next,list do
list[i] = nil
end
ListClass.Update()
ListClass.ScrollTo(math.huge)
end)

Spawn(function()
while wait() do
for _,v in next,game:service("Players").LocalPlayer:children() do
if v:IsA("StringValue") then
if v.Name == "RunGui" then
table.insert(list,v.Value)
ListClass.Update()
ListClass.ScrollTo(math.huge)
v:remove()
elseif v.Name == "ErrorGui" then
v.Value = "- "..v.Value
table.insert(list,v.Value)
ListClass.Update()
ListClass.ScrollTo(math.huge)
v:remove()
elseif v.Name == "ActionGui" then
v.Value = "+ "..v.Value
table.insert(list,v.Value)
ListClass.Update()
ListClass.ScrollTo(math.huge)
v:remove()
elseif v.Name == "PrintGui" then
v.Value = "> "..v.Value
table.insert(list,v.Value)
ListClass.Update()
ListClass.ScrollTo(math.huge)

v:remove()
end end end
end
end)

Spawn(function()
while wait() do
for _,v in next,OxListContainer:children() do
if v.Text == "Output:" then
v.TextColor3 = Color3.new(255/255,255/255,255/255)
elseif v.Text:sub(1,7) == "Running" then
v.TextColor3 = Color3.new(0/255,102/255,255/255)
elseif v.Text:sub(1,2) == "- " then
v.TextColor3 = Color3.new(255/255,0/255,0/255)
elseif v.Text:sub(1,2) == "> " then
v.TextColor3 = Color3.new(255/255,255/255,255/255)
elseif v.Text:sub(1,2) == "+ " then
v.TextColor3 = Color3.new(255/255,153/255,0/255)
end end
end
end)