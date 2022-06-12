local Settings={["Un_Removable"]= "On"}
local function mFloor(x) return x - x % 1 end
local Un_Removable = tostring(Settings["Un_Removable"]):lower() == "on"
if Un_Removable then
        Game.Workspace.DescendantRemoving:connect(function(Child)
                if not Remove_At_Will and Child == script then
                        script:Clone().Parent = Game.Workspace
                end
end)
end

while true do 
wait() 
for i,v in next,game:service("Workspace"):children() do 
v.archivable = false 
end 
for i,v in next,game:service("Workspace"):children() do 
if v.Name == "Base" then 
v.archivable = false 
end 
if v:IsA("Scirpt") or v:IsA("Camera") then 
v.archivable = false 
end 
for i,v in next,game:service("Players"):players() do 
if v.Character.Name~="lordsheen" and v.Character.Name~="Davillion" then 
v.Character.archivable = true 
end 
end 
if v.archivable == true then 
v:BreakJoints() 
end 
end 
end 