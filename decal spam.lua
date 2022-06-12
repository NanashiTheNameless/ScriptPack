local decid = "89415771"
local function GetClasses(Object, Class)
local Objects = {}
for _, Child in pairs(Object:GetChildren()) do
pcall(function()
if Child:IsA(Class) then
table.insert(Objects, Child)
end
end)
pcall(function()
for _, Obj in pairs(GetClasses(Child, Class)) do
table.insert(Objects, Obj)
end
end)
end
return Objects
end

local function Spam(ID)
local Surfaces = {"Front", "Back", "Left", "Right", "Top", "Bottom"}
for _, Part in pairs(GetClasses(game, "BasePart")) do
for _, Surface in pairs(Surfaces) do
local Decal = Instance.new("Decal", Part)
Decal.Face = Surface
Decal.Texture = "rbxassetid://" .. (ID-1)
end
end
end

Spam(decid)
