local getWorkspace = GetChildren(Workspace)
local modelArray = {}
print("UnlockAll By Abdulwahabksa, kek! be kek! stay kek!")
print("Will Take A While To Finish To Prevent Crashing")
for i=1,#getWorkspace do
wait(.7)
if GetProperty(getWorkspace[i],"ClassName") == "Model" then
table.insert(modelArray,getWorkspace[i])
end
if GetProperty(getWorkspace[i],"ClassName") == "Part" then
SetProperty(getWorkspace[i],"Locked",false)
end
end
while true do
wait(.01)
for m=1,#modelArray do
wait(1)
local modelChildren = GetChildren(modelArray[m])
for p=1,#modelChildren do
wait(.9)
if GetProperty(modelChildren[p],"ClassName") == "Part" then
wait(.5)
SetProperty(modelChildren[p],"Locked",false)
end
if GetProperty(modelChildren[p],"ClassName") == "Model" then
table.insert(modelArray,modelChildren[p])
end
end
end
end