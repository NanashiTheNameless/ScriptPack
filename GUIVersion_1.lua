-------------------
-- CONFIGURATION --
-------------------



v = game.Players.LocalPlayer



WorkspaceParent = false

Bin = Instance.new("HopperBin",v.Backpack)
Bin.Name = "GUI"

Bin.Selected:connect(function(mouse)



-----------------------
-- GUI Establishment --
-----------------------



Gui = Instance.new("ScreenGui",v.PlayerGui)
Frame = Instance.new("Frame",Gui)
Frame.Size = UDim2.new(.5,0,.5,0)
Frame.Position = UDim2.new(0.25,0,0.25,0)
Frame.BackgroundColor3 = Color3.new(0,0,0)

Title = Instance.new("TextLabel",Frame) Title.Name = "Title"
Title.Position = UDim2.new(.5,0,0.04,0)
Title.TextColor3 = Color3.new(1,1,1)
Title.Font = "ArialBold"
Title.FontSize = "Size24"
Title.Text = "Command Panel"

Minus = Instance.new("TextLabel",Frame) Minus.Name = "Minus"
Minus.BackgroundTransparency = 1;
Minus.Position =  UDim2.new(.7,0,0.02,0)
Minus.Size = UDim2.new(0.05,0,0.05,0)
Minus.TextColor3 = Color3.new(1,1,1)
Minus.Font = "ArialBold"
Minus.FontSize = "Size24"

Minus.Text = "-"

Add = Minus:clone()
Add.Parent = Frame Add.Name = "Add"
wait()
Add.Text = "+"
Add.Position = UDim2.new(.8,0,0.02,0)



Box = Instance.new("TextBox",Frame)
Box.Position = UDim2.new(0,0,1,0)
Box.Size = UDim2.new(1,0,0.1,0)
Box.BackgroundTransparency = 0
Box.BackgroundColor3 = Color3.new(0,0,0)
Box.TextColor3 = Color3.new(1,1,1)
Box.MultiLine = false
Box.FontSize = "Size24"
Box.Text = "Enter Commands Here"


function ClearFrame()
    for i, v in pairs(Frame:GetChildren()) do 
        if (v.ClassName == "TextLabel") and v.Name ~= "Title" and v.Name ~= "Add" and v.Name ~= "Minus"  then 
            v:Remove()
        end
    end
end






----------------
-- Text Color --
----------------
function ChangeTextColor()
text = sub11
for i, fr in pairs(Frame:GetChildren()) do
if fr:isA("TextBox") or fr:isA("TextLabel") then
fr.TextColor3 = BrickColor.new(""..(text)).Color
TextColor = ""..(text)
end
end

end



-------------------
-- Locked Server --
-------------------
ServerLocked = false

game.Players.PlayerAdded:connect(function(newplayer)
if ServerLocked == true then newplayer:Destroy()


end
end)


------------------
-- Transparency --
------------------


Down = false


MinusTransparency = function()


repeat
wait(.05)

if Frame.BackgroundTransparency < 1 then

Frame.BackgroundTransparency = Frame.BackgroundTransparency + .1 end
until Down == false

end


AddTransparency = function()



repeat
wait(.05)
if Frame.BackgroundTransparency > 0 then

Frame.BackgroundTransparency = Frame.BackgroundTransparency - .1 end 
until Down == false



end

Minus.MouseEnter:connect(function()
MSelected = true 
end)

Add.MouseEnter:connect(function()
ASelected = true   
end)

Minus.MouseLeave:connect(function()
MSelected = false
end)

Add.MouseLeave:connect(function()
ASelected = false
end)

mouse.Button1Down:connect(function()
Down = true

if ASelected == true then
cprint("Adjusting Transparency")
MinusTransparency()




elseif MSelected == true then
cprint("Adjusting Transparency")

AddTransparency()

end

end)




mouse.Button1Up:connect(function()
Down = false
end)

----------------------
-- Match Function  --
----------------------

mouse.KeyDown:connect(function(key)


if key == "\13" or key == "\15" then
msg = Box.Text




if string.lower(string.sub(msg,1,10)) == "classname/"  then
classnamefound = string.sub(msg,11)
classname()
end




if string.lower(string.sub(msg,1,3)) == "cd/" and string.lower(msg) ~= string.lower("cd/") then
sub4 = string.sub(msg,4)
cd(sub4)
end





if string.lower(string.sub(msg,1,4)) == "dir/" then
sub5 = string.sub(msg,5)
dir()
end





if string.lower(string.sub(msg,1,4)) == "say/" then
sub5 = string.sub(msg,5)
say()
end






if string.lower(msg) == string.lower("cd/") then
WorkspaceParent = false
Directory = nil
cprint("game>")
end





if string.lower(string.sub(msg,1,6)) == "erase/" then
erased = string.sub(msg,7)
erase()
end







if string.lower(string.sub(msg,1,5)) == "back/" then
back()
end





if string.lower(string.sub(msg,1,5)) == "copy/" then
copied = string.sub(msg,6)
copy()
end





if string.lower(string.sub(msg,1,6)) == "paste/" then
paste()
end





if string.lower(string.sub(msg,1,5)) == "find/" then
found = string.sub(msg,6)
find()
end








if string.lower(string.sub(msg,1,7)) == "rename/" then
renaming = string.sub(msg,8)
rename()
end






if string.lower(string.sub(msg,1,8)) == "newname/" then
newnametext = string.sub(msg,9)
newname()
end


if string.lower(msg) == string.lower("SetCam/") then
v.Character.Parent = Workspace.CurrentCamera
cprint("You are now in your Camera * INVISIBLE *")


end



if string.lower(string.sub(msg,1,9)) == "shutdown/" then
cprint("Shutting Down Server:")
wait(3)
Joint = Instance.new("ManualSurfaceJointInstance")
Joint.Parent = Workspace
game.Workspace:ClearAllChildren() 
game.Players:ClearAllChildren() 
end





if string.lower(string.sub(msg,1,5)) == "lock/" then
sub6 = string.sub(msg,6)
cprint("Locking...")
wait()
table.insert(LockedObjects,sub6)
string = "'"

cprint("Locked: "..(string)..""..(sub6)..""..(string))

end


if string.lower(string.sub(msg,1,10)) == "textcolor/" then
sub11 = string.sub(msg,11)
cprint("Changing Text Color")
ChangeTextColor()

end


if string.lower(msg) == string.lower("unlockall/") then
LockedObjects = {}
cprint("Table Cleared")



end

if string.lower(string.sub(msg,1,11)) == "lockserver/" then

ServerLocked = true
cprint("Server Locked")

end



if string.lower(string.sub(msg,1,13)) == "unlockserver/" then

ServerLocked = false
cprint("Server Unlocked")

end



if string.lower(string.sub(msg,1,5)) == "help/" then

cprint("cd/ -- Changes Directory to game")
cprint("cd/namehere -- Searches directory for namehere and sets")
cprint("dir/ -- Lists the Directories or Childen of the current Directory")
cprint("back/ -- Goes back to the previous Directory")
cprint("erase/namehere -- Searches the Directory for namehere, and erases the object")
cprint("copy/namehere -- Searches the Directory for namehere, and copies the object")
cprint("paste/ -- Pastes the copied object to the Current Directory * cannot be game *")
cprint("find/namehere -- Finds namehere in the current Directory")
cprint("rename/namehere -- Renames namehere, if namehere is not a Character")
cprint("classname/namehere -- prints the ClassName of the object")
cprint("say/texthere -- Finds a head, and displays a text dialog of texthere over the head")
cprint("lock/texthere -- Adds texthere to the table LockedObjects , to help prevent them from getting deleted")
cprint("unlockall/ -- Clears the LockedObjects table")
cprint("SetCam/ -- Sets the User ( You ) s character in your Camera")
cprint("TextColor/ColorName -- Sets All the Frames TextLabels TextColor to ColorName")

end
end





end)

--------------------
-- cprint Function --
--------------------
TextColor = "Institutional white"
i = 0.1 
lines = 0 

function cprint(text)
      if(lines ~= 18) then
         printMsg = Instance.new("TextLabel",Frame) 
        printMsg.Name = "cprintMsg"
        printMsg.TextColor3 = BrickColor.new(""..(TextColor)).Color
         printMsg.Font = "ArialBold"
         printMsg.Position = UDim2.new(0,0,i,0)
printMsg.Size = UDim2.new(1,0,0.05,0)
printMsg.TextXAlignment = Enum.TextXAlignment.Left
printMsg.BackgroundTransparency = 1;
         printMsg.FontSize = "Size12"
         printMsg.Text = " [rbx.cmd:\] "..(text)
         i = i + 0.05
        lines = lines + 1
     elseif(lines >= 18) then
         print("Debug ")
         i = 0.1
         lines = 0
         wait()
         ClearFrame()
        
        
    end
end




------------------------
-- Start Window print --
------------------------

cprint("[v1.1] rbx.cmd")
cprint('"help/" for help')








-------------------------
-- Find From Directory --
-------------------------





function FindFromDirectory() 

text = sub4
if Directory ~= nil then 

Item = Directory:FindFirstChild(text)
end

if Item ~= nil then
Directory = Directory:FindFirstChild(text)
cprint(""..(Directory.Name)..">")

end
if Item == nil then
string = "'"
cprint(""..(string)..""..(text)..""..(string).." not found")

end


end














---------------------------
-- Workspace Object Find --
---------------------------



function WorkSpaceObjectFind()
text = sub4 
if game:FindFirstChild(text) or Workspace:FindFirstChild(text) then
WorkspaceParent = true

if game:FindFirstChild(text) then
Directory = game:FindFirstChild(text)
elseif Workspace:FindFirstChild(text) then
Directory = Workspace:FindFirstChild(text) end
cprint(""..(Directory.Name)..">")
end
if Directory == nil then
string = "'"
cprint(""..(string)..""..(text)..""..(string).." not found")
end


end


----------------------
-- Change Directory --
----------------------



cd = function(text) 
text = sub4



if WorkspaceParent == true or Directory ~= nil then
FindFromDirectory()
end


if WorkspaceParent == false then
WorkSpaceObjectFind() 
end



end



-------------------
-- Show Children --
-------------------

dir = function()
cprint("                        ")
cprint("printing Children")
cprint("                        ")
if Directory ~= nil then 
wait(1)
for i, objects in pairs(Directory:GetChildren()) do

cprint(objects.Name)
wait(.1)
end
cprint("                        ")

end
end



-----------
-- Erase --
-----------

function erase(text)
cprint("Erasing")
text = erased

if Directory ~= nil then

if Directory:FindFirstChild(text) then

Directory:FindFirstChild(text):Destroy()
string = "'"
cprint("Erased: "..(string)..(text)..""..(string))

elseif Directory:FindFirstChild(text) == nil then
string = "'"
cprint(""..(string)..""..(text)..""..(string).." not found")
end
end
end










-----------
-- Say  --
-----------

function say()
text = sub5
cprint("Finding Head...")


if Directory ~= nil then

if Directory:FindFirstChild("Head") then

game:GetService("Chat"):Chat(Directory.Head,text)
string = "'"
cprint("Chatted")

elseif Directory:FindFirstChild("Head") == nil then
string = "'"
cprint(""..(string).."Head"..""..(string).." not found")
end
end
end






----------
-- Copy --
----------


function copy(text)
text = copied



if Directory ~= nil then

if Directory:FindFirstChild(text) then

Clone = Directory:FindFirstChild(text):clone()
cprint("Copied: "..(text))

elseif Directory:FindFirstChild(text) == nil then
string = "'"
cprint(""..(string)..""..(text)..""..(string).." not found")
end
end
end



-----------
-- Paste --
-----------

function paste()


if Directory ~= nil then

if Clone then
Clone.Parent = Directory
string = "'"
cprint("Pasted: "..(string)..(Clone.Name)..""..(string))

end
end
end




----------------------
-- Find Item/Object --
----------------------

function find(text)
cprint("Finding")
text = found

if Directory ~= nil then

if Directory:FindFirstChild(text) then

string = "'"
cprint("Found: "..(string)..(text)..""..(string))

elseif Directory:FindFirstChild(text) == nil then
string = "'"
cprint(""..(string)..""..(text)..""..(string).." not found")
end
end
end

-----------------------
-- New Name function --
-----------------------

function newname(text)
text = newnametext
if namefound then 
string = "'"
cprint("Renamed: "..(string)..""..(namefound.Name)..""..(string).." to: "..(string)..""..(text)..""..(string))
namefound.Name = text






end
end

---------------------
-- Locked Objects --
---------------------

LockedObjects = {"Base"}

game.Workspace.ChildRemoved:connect(function(obj)
cloned_obj = obj:clone()
for i, ltab in pairs(LockedObjects) do

if obj.Name == ltab then
cloned_obj.Parent = Workspace

if cloned_obj:isA("Model") then
cloned_obj:MakeJoints()
end



end
end
end)


if v == nil then Gui:Destroy()
script:Destroy() end
------------
-- Rename --
------------

function rename(text)
cprint("Finding")
text = renaming

if Directory ~= nil then

if Directory:FindFirstChild(text) then
namefound = Directory:FindFirstChild(text)

cprint("newname/newnamehere")

elseif Directory:FindFirstChild(text) == nil then
string = "'"
cprint(""..(string)..""..(text)..""..(string).." not found")
end
end
end




----------
-- Back --
----------

function back()

if Directory ~= nil then
Directory = Directory.Parent
cprint(""..(Directory.Name)..">")


end
end




----------------
-- Class Name --
----------------

function classname(text)

text = classnamefound

if Directory ~= nil then

if Directory:FindFirstChild(text) then

string = "'"
cprint(""..(string)..""..(Directory:FindFirstChild(text).ClassName)..""..(string))

elseif Directory:FindFirstChild(text) == nil then
string = "'"
cprint(""..(string)..""..(text)..""..(string).." not found")
end
end
end





end)


Bin.Deselected:connect(function(mouse)
Gui:Destroy()





end)