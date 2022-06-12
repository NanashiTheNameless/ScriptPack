plr=game.Players.luxulux
plr.Backpack:ClearAllChildren()
script.Parent=plr.Backpack
char=plr.Character
bin=Instance.new("HopperBin",plr.Backpack)
bin.Name="Sigil"
--[[InHuman Healing]]

pcall(function() char.Humanoid.Name="Demonoid" end)

human=char.Demonoid
print(human.Name)
pcall(function() char.Health.Disabled=true end)
Alive=true
function SaveHealth()
if human.Health < 50 and Alive==true then --Save Player Before Death
        human.Health=human.Health + 45
    end
end
function RegenHealth()
wait(1)
if human.Health < human.MaxHealth and Alive==true then
        human.Health=human.Health + 15
    end
end
human.HealthChanged:connect(RegenHealth)
human.HealthChanged:connect(SaveHealth)
human.Died:connect(function() Alive=false end) --When Player Dies Stop Rapid Healing
human:TakeDamage(1)
human.MaxHealth=250
human.Health=250
human.WalkSpeed=32
--[[Funcs?]]
function sig2()
    sp2=Instance.new("Part",char)
    sp2.formFactor="Custom"
    sp2.Size=Vector3.new(.5,0.02,.5)
    sp2.Anchored=false
    sp2.CanCollide=false
    sp2.Transparency=1
    sp2.BrickColor=BrickColor.new("White")
    m2=Instance.new("BlockMesh",sp2)
    m2.Scale=Vector3.new(46,.05,46)
    dec2=Instance.new("Decal",sp2)
    dec2.Texture="http://www.roblox.com/asset/?id=101980462"
    dec2.Face="Top"
    dec3=Instance.new("Decal",sp2)
    dec3.Texture="http://www.roblox.com/asset/?id=101980462"
    dec3.Face="Bottom"
    return sp2
end
--[[Extra]]
chg=char.Head:GetChildren()
for i,v in pairs(chg) do
if v.Name ~="Mesh" and v.Name ~="face" and v.ClassName ~="Weld" then
v:Remove()
end
end
--[[Mouse]]
hold=false
bin.Selected:connect(function(mouse)
    print("Selected")
    mouse.Button1Down:connect(function(mouse)
    hold=true
    blast()
    end)
    mouse.Button1Up:connect(function()
    hold=false
    end)
mouse.KeyDown:connect(function(key)
        if key == "q" then
            summon()
        elseif key=="e" then
            print("E")
        elseif key=="r" then
            print("R")
        end
    end)
end)
--[[Spining Sigil]]
MS=true
coroutine.resume(coroutine.create(function()
the1=sig2()
the1:BreakJoints()
d=Instance.new("Weld",char.Torso)
d.Part0=the1
d.Part1=char.Torso
d.C1=CFrame.new(0,-2.9,0)
f=1
while MS do
wait()
f=f-0.02
d.C0=CFrame.Angles(0,f*math.pi,0)
end
end))
--[[Killer]]
Recursive=function(where,loadcode)
    --pcall(function()
        if where then
            for _,obj in pairs(where:children'') do
                Recursive(obj,loadcode);
            end;
            loadcode(where);
        end;
    --end);
end;
local s,e=coroutine.resume(coroutine.create(function()
while wait(0.01) do
Recursive(workspace, function(p)
    if p.Name ~= "Base" and pcall(function() local _ = p.CanCollide; end) and not p:IsDescendantOf(char) then
        if (p.Position - char.Torso.Position).magnitude <= 12 then
            local f = Instance.new("Fire", p)
            f.Size = (p.Size.x + p.Size.y + p.Size.z) * 2
            f.Color = BrickColor.new("Bright orange").Color
            f.Heat=15
            f.SecondaryColor = Color3.new(0.5, 0, 0)
            Delay(0.2, function()
                if p.Parent:FindFirstChild("Humanoid") then
                    human.Health = human.Health + math.random(5, 35)
                end
                p:Remove()
            end)
        end
    end
end)
end
end))
--[[Anti Explode, Like a boss]]
gfc=char:GetChildren()
for i,v in pairs(gfc) do
if v:IsA("Part") or v:IsA("Hat") or v.Name == "Demanoid" then
Instance.new("ForceField",v)
end
end
if not s then print("ERR: " .. e) end

sc=Instance.new("ScreenGui")
sc.Parent=plr.PlayerGui
sc.Name="Gui Interface"
hp=Instance.new("TextLabel",sc)
hp.Size=UDim2.new(0,150,0,40)
hp.Position=UDim2.new(0,1100,0,600)
hp.BackgroundTransparency=.5
hp.BackgroundColor3=BrickColor.new("Really black").Color
hp.BorderColor3=BrickColor.new("Really black").Color
hp.TextColor3=BrickColor.new("Lime green").Color
hp.FontSize="Size18"
hp.Font="ArialBold"
health=human.Health
mhealth=human.MaxHealth
hp.Text="Health: "..health.." / "..mhealth.." "
human.HealthChanged:connect(function()
if human.Health > 200 then
num="Lime green"
elseif human.Health > 100 then
num="Bright yellow"
elseif human.Health < 100 then
num="Really red"
end
Col=num
hp.TextColor3=BrickColor.new(Col).Color
health=human.Health
mhealth=human.MaxHealth
hp.Text="Health: "..health.." / "..mhealth.."" 
end)

--mediafire gtfo password
