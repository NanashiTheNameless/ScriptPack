-- Better Players V1.0

function Better(pl)
coroutine.resume(coroutine.create(function()
while wait(1) do
for _,v in pairs(pl.Character.Head:children()) do if v.Name=="HD" then v:remove() end end
local pchar=pl.Character
local h = pchar.Head:clone()
pchar.Head.Transparency=1
h.Parent=pchar
h.Name="HD"
local w=Instance.new("Weld",pchar.Head)
w.Part0=pchar.Head
w.Part1=h
local bbg=Instance.new("BillboardGui",h)
bbg.Size=UDim2.new(1,0,1,0)
bbg.StudsOffset=Vector3.new(0,2,0)
local tl=Instance.new("TextLabel",bbg)
tl.Text=pl.Character.Name
tl.TextColor3=Color3.new(math.random(0,255),math.random(0,255),math.random(0,255))
tl.FontSize="Size10"
while wait() do
tl.Text=pchar.Name.." [Health: "..pchar.Humanoid.Health.."/"..pchar.Humanoid.MaxHealth.."]"
end
end
end))
end

table.foreach(game.Players:children(),function(i,v) Better(v) end)
