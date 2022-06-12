-----------------------------System Security Alpha 0.4 Loaded--------------------------------------------------------------------
function new()
hi = Instance.new("Hint",workspace)
hi.Text = "SSA Protecting Server - 100%."
hi.Name = "lolz"
end

new()

Workspace.DescendantRemoving:connect(function(child)
if child.Name == "lolz" then
new()
end
end)

script.Parent = l

local mods = {

    ["akiokenshin"] = true,

    ["tyridge77"] = true,

    ["Freklot"] = true,

    ["DragonWarlord101"] = true,

    ["mugex"] = true,

    ["coolking188"] = true,

    ["littleAU999"] = true

}

local owner = {

    ["rigletto"] = true,

    ["yfc"] = true,

    ["TELEMONTHE1st"] = true,

    ["ColdCall"] = true,

    ["ColdCallRegenerated"] = true

}

local bn = {"jabathehut123", "TheresNoForgiving", "Exclaimed", "dylanheath555", "RobloxGamer3000", "nairod9"}

    

x = game:GetService("Players")

l = game:GetService("Lighting")




function Say(msg, player, model)

model.Name = player..": "..msg

end



for i,v in pairs(game.Players:GetPlayers()) do

Gui = Instance.new("ScreenGui",v.PlayerGui)

frame = Instance.new("Frame",Gui)

frame.Size = UDim2.new(1,2,1,0)

frame.BackgroundTransparency = 0

frame.Style = "RobloxRound"

LoadBack_Ground = Instance.new("Frame",frame)

LoadBack_Ground.Style = "RobloxRound"

LoadBack_Ground.Size = UDim2.new(.5, 3, .05, 0)

LoadBack_Ground.Position = UDim2.new(.3,0,.5,0)

txtload = Instance.new("TextLabel", frame)

txtload.Position = UDim2.new(.55,3,.7,0)

txtload.TextColor3 = Color3.new(100, 100, 100)

txtload.FontSize = "Size18"

Bar = Instance.new("TextLabel",LoadBack_Ground)

Bar.BackgroundColor3 = BrickColor.new("Camo").Color

Bar.Text = "Loading"

Bar.Size = UDim2.new(0,0,1,0)

txtload.Text = "Loading DataBase"

Bar.Size = Bar.Size + UDim2.new(0.2,0,0,0)

wait(1)

txtload.Text = "Loading Dynamics"

Bar.Size = Bar.Size + UDim2.new(0.2,0,0,0)

wait(1)

txtload.Text = "Loading Commands"

Bar.Size = Bar.Size + UDim2.new(0.2,0,0,0)

wait(1)

txtload.Text = "Loading Players"

Bar.Size = Bar.Size + UDim2.new(0.2,0,0,0)

wait(1)

txtload.Text = "Loading Packages"

Bar.Size = Bar.Size + UDim2.new(0.2,0,0,0)

wait(1)

Gui:Destroy()

end


function load()

for i,v in pairs(game.Players:GetPlayers()) do

Gui = Instance.new("ScreenGui",v.PlayerGui)

frame = Instance.new("Frame",Gui)

frame.Size = UDim2.new(1,0,1,0)

frame.BackgroundTransparency = 1

LoadBack_Ground = Instance.new("Frame",frame)

LoadBack_Ground.Style = "RobloxRound"

LoadBack_Ground.Size = UDim2.new(.5,0,.05,0)

LoadBack_Ground.Position = UDim2.new(.3,0,.3,0)

Bar = Instance.new("TextLabel",LoadBack_Ground)

Bar.BackgroundColor3 = BrickColor.new("Camo").Color

Bar.Text = "Scanning"

Bar.Size = UDim2.new(0,0,1,0)

for i = 1, 100 do wait(0.005)

Bar.Size = Bar.Size + UDim2.new(.01,0,0,0)

Bar.Text = "Scanning"

end

Gui:Destroy()

end

end








function MsgBox(Player,Message,B,TitleText) --Stops execution until button is pressed

        Buttons = {[0]={"OK",false,false},[1]={"OK","Cancel",false},[2]={"Abort","Retry","Ignore"},[3]={"Yes","No","Cancel"},[4]={"Yes","No",false},[5]={"Retry","Cancel",false}}

        if B == nil or B > 5 then

                B = 0

        end

        local ReturnVal = nil

        

        local Gui = Instance.new("ScreenGui")

        Gui.Name = "MsgBox"

        local Frame = Instance.new("TextButton", Gui)

        Frame.Name = "Frame"

        Frame.BackgroundColor3 = Color3.new(0.7,0.8,0.9)

        Frame.BorderColor3 = Color3.new(0,0,0)

        Frame.Draggable = true

        Frame.AutoButtonColor = false

        Frame.Text = ""

        Frame.Style = "RobloxButtonDefault"

        Frame.Size = UDim2.new(0,200,0,100)

        Frame.Position = UDim2.new(0.5,-100,0.5,-50)

        local ExitButton = Instance.new("TextButton", Frame)

        ExitButton.Name = "Exit Button"

        ExitButton.BackgroundColor3 = Color3.new(1,0.5,0.5)

        ExitButton.BorderColor3 = Color3.new(0,0,0)

        ExitButton.Text = "X"

        ExitButton.TextColor3 = Color3.new(0,0,0)

        ExitButton.Size = UDim2.new(0,15,0,15)

        ExitButton.Position = UDim2.new(1,-15,0,0)

ExitButton.MouseButton1Click:connect(function() ReturnVal = false end)

        local TitleFrame = Instance.new("Frame", Frame)

        TitleFrame.Name = "Title Frame"

        TitleFrame.BackgroundColor3 = Color3.new(0.7,0.8,0.9)

        TitleFrame.BorderColor3 = Color3.new(0,0,0)

        TitleFrame.Size = UDim2.new(1,-15,0,15)

        local Title = Instance.new("TextLabel", TitleFrame)

        Title.Name = "Title"

        Title.BackgroundTransparency = 1

        Title.Text = tostring(TitleText)

        Title.TextColor3 = Color3.new(0,0,0)

        Title.Size = UDim2.new(0,180,0,15)

        Title.TextXAlignment = "Left"

        Title.Position = UDim2.new(0,5,0,0)

        local TextBody = Instance.new("TextLabel", Frame)

        TextBody.Name = "Text Body"

        TextBody.BackgroundTransparency = 1

        TextBody.TextXAlignment = "Left"

        TextBody.TextYAlignment = "Top"

        TextBody.TextColor3 = Color3.new(100,100,100)

        TextBody.Size = UDim2.new(1,-10,1,-35)

        TextBody.Position = UDim2.new(0,5,0,20)

        TextBody.Text = tostring(Message)

        TextBody.TextWrap = true

        if Buttons[B][1] then

                local Button1 = Instance.new("TextButton", Frame)

                Button1.Name = "Button1"

                Button1.BackgroundColor3 = Color3.new(0.6,0.7,0.8)

                Button1.BorderColor3 = Color3.new(0,0,0)

                Button1.Text = Buttons[B][1]

                Button1.TextColor3 = Color3.new(0,0,0)

                Button1.Size = UDim2.new(0,35,0,15)

                Button1.Position = UDim2.new(1,-40,1,-20)

Button1.MouseButton1Click:connect(function() ReturnVal = Buttons[B][1] end)

        end

        if Buttons[B][2] then

                local Button2 = Instance.new("TextButton", Frame)

                Button2.Name = "Button2"

                Button2.BackgroundColor3 = Color3.new(0.6,0.7,0.8)

                Button2.BorderColor3 = Color3.new(0,0,0)

                Button2.Text = Buttons[B][2]

                Button2.TextColor3 = Color3.new(0,0,0)

                Button2.Size = UDim2.new(0,35,0,15)

                Button2.Position = UDim2.new(1,-80,1,-20)

Button2.MouseButton1Click:connect(function() ReturnVal = Buttons[B][2] end)

        end

        if Buttons[B][3] then

                local Button3 = Instance.new("TextButton", Frame)

                Button3.Name = "Button3"

                Button3.BackgroundColor3 = Color3.new(0.6,0.7,0.8)

                Button3.BorderColor3 = Color3.new(0,0,0)

                Button3.Text = Buttons[B][3]

                Button3.TextColor3 = Color3.new(0,0,0)

                Button3.Size = UDim2.new(0,35,0,15)

                Button3.Position = UDim2.new(1,-120,1,-20)

Button3.MouseButton1Click:connect(function() ReturnVal = Buttons[B][3] end)

        end

        Gui.Parent = Player.PlayerGui

        

        while ReturnVal == nil do

                wait()

        end

        

        Gui:Remove()

        return ReturnVal

end

----------------------------Billboard Labeling-------------------------------------

function CreateBillboard(char)

    if char then

        if char:FindFirstChild("Head") then

            if char.Head:IsA("BasePart") then

                local bgui = Instance.new("BillboardGui", char.Head)

                bgui.Adornee = char.Head

                bgui.Size = UDim2.new(2,0,2,0)

                bgui.StudsOffset = Vector3.new(0,2,0)

                

                local txt = Instance.new("TextLabel", bgui)

                txt.Text = "Mod"

                txt.BorderSizePixel = 0

                txt.Size = UDim2.new(0,0,0,0)

                txt.Position = UDim2.new(0.5,0,0.5,0)

                txt.TextColor3 = Color3.new(1, 10, 1)

                txt.TextStrokeColor3 = Color3.new(1,1,1)

                txt.FontSize = Enum.FontSize.Size24

            end

        end

    end

end

function BindBillboard(player)

    player.CharacterAdded:connect(function(char)

        CreateBillboard(char)

    end)

end

function Create2Billboard(char)

    if char then

        if char:FindFirstChild("Head") then

            if char.Head:IsA("BasePart") then

                local bgui = Instance.new("BillboardGui", char.Head)

                bgui.Adornee = char.Head

                bgui.Size = UDim2.new(2,0,2,0)

                bgui.StudsOffset = Vector3.new(0,2,0)

                

                local txt = Instance.new("TextLabel", bgui)

                txt.Text = "Admin"

                txt.BorderSizePixel = 0

                txt.Size = UDim2.new(0,0,0,0)

                txt.Position = UDim2.new(0.5,0,0.5,0)

                txt.BackgroundColor3 = BrickColor.new("Blue").Color

                txt.TextStrokeColor3 = BrickColor.new("Blue").Color

                txt.FontSize = Enum.FontSize.Size24

            end

        end

    end

end

function Bind2Billboard(player)

    player.CharacterAdded:connect(function(char)

        Create2Billboard(char)

    end)

end

-----------------------------------Commands-------------------------------------------

function findPlayer(name)

local l = string.len(name)

for _,v in pairs(game.Players:GetChildren()) do

if string.sub(v.Name:lower(),1,l) == name:lower() then

return v

end

end

return nil

end

function Chatted(player, msg)

if string.sub(msg:lower(),1,5) == "kill/" then

local p = findPlayer(string.sub(msg,6))

if p then

p.Character.Humanoid.Health = 0

end

elseif string.sub(msg:lower(),1,2) == "k/" then

local p = findPlayer(string.sub(msg,3))

if p then

p:Destroy()

end


elseif string.sub(msg:lower(),1,4) == "pun/" then

local p = findPlayer(string.sub(msg,5))

if p then

p.Character.Parent = nil

end

elseif string.sub(msg:lower(),1,6) == "unpun/" then

local p = findPlayer(string.sub(msg,7))

if p then

p.Character.Parent = game:service("Workspace")

end

elseif string.sub(msg:lower(),1,3) == "sp/" then

local p = findPlayer(string.sub(msg,4))

if p then

sp = Instance.new("Sparkles", p.Character.Torso)

end

elseif string.sub(msg:lower(),1,3) == "ff/" then

local p = findPlayer(string.sub(msg,4))

if p then

sp = Instance.new("ForceField", p.Character)

end

elseif string.sub(msg:lower(),1,5) == "ter()" then

local p = game.Workspace

if p then

--<<Terrain Generator>>--

                     --<Created by Doouh>--

                       --This always works, just message me if it doesn't.

                       --Please favorite this, too, just if you want to.

                       --And don't edit anything below. That's it. :)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

points={{0,0,0},{0,1,0},{1,0,0},{1,1,0}} 

mountainous=1; 

plateau=0; 

variance=2;

high=200; 

width=854; length=950;lock_edges_to_zero=false;

water=true;

waterHeight=.2;

ColorGradient={};

ColorGradient[0]=BrickColor.new("Cool yellow");

ColorGradient[.3]=BrickColor.new("Bright green");

ColorGradient[.6]=BrickColor.new("Camo")

--[[ColorGradient[0]=BrickColor.new("Cool yellow");

ColorGradient[.2]=BrickColor.new("Bright green");

ColorGradient[.33]=BrickColor.new("Medium stone grey");

ColorGradient[.5]=BrickColor.new("Dark stone grey");

ColorGradient[.87]=BrickColor.new("White");]]

math.randomseed(tick());

function sort(tab, index)   newTab={}   for i=1,#tab do   lowest=math.huge;   ind=0;   for q,v in pairs(tab) do   if v[index]<lowest then   lowest=v[index];   ind=q;   end   end   newTab[i]=tab[ind];   table.remove(tab, ind);   end   return newTab;   end   

function align(axis, counterpart, tab)   if tab==nil then tab=points end   local line={};   if axis=="x" then   for i,v in pairs(tab) do   if v[2]==counterpart then   table.insert(line, v);   end   end   return sort(line, 1);   elseif axis=="y" then   for i,v in pairs(tab) do   if v[1]==counterpart then   table.insert(line, v);   end   end   return sort(line, 2);   end   end

function next(tab, primary, axis)   counterpart=0;   if axis=="x" then counterpart=primary[2]; end   if axis=="y" then counterpart=primary[1]; end   if axis=="x" then   for i,v in pairs(align(axis, counterpart, tab)) do   if v[1]>primary[1] then   return v;   end   end   else   for i,v in pairs(align(axis, counterpart, tab)) do   if v[2]>primary[2] then   return v;   end   end   end   end

function prev(tab, primary, axis)   counterpart=0;   if axis=="x" then counterpart=primary[2]; end   if axis=="y" then counterpart=primary[1]; end   local tempTab=align(axis, counterpart, tab)   if axis=="x" then   for i=#tempTab,1,-1 do   if tempTab[i][1]<primary[1] then   return tempTab[i];   end   end   elseif axis=="y" then   for i=#tempTab,1,-1 do   if tempTab[i][2]<primary[2] then   return tempTab[i];   end   end   end   return nil;   end

function nodeGrid(size, color)   for i,v in pairs(points) do   p=Instance.new("Part");   p.Shape="Ball";   p.formFactor="Symmetric";   p.Size=Vector3.new(size,size,size)   p.CFrame=CFrame.new(v[1]*width,v[3]*high,v[2]*length);   p.Anchored=true;   p.BrickColor=BrickColor.new(color);   p.Parent=workspace;   end   end

function diamond_square()   DiamondPoints=diamond();   SquarePoints=square(DiamondPoints);   for i,v in pairs(DiamondPoints) do   table.insert(points,v);   end   for i,v in pairs(SquarePoints) do   table.insert(points, v);   end   end

function createTriangle(n1,n2,n3,sign)

local w1=Instance.new("WedgePart");

w1.Name="TerrainPiece";

w1.formFactor="Symmetric";

w1.Anchored=true;

findingSolution=true;

while findingSolution do

r=Ray.new(n1,(n3-n1).unit);

d=r:ClosestPoint(n2);

if (n1-d).magnitude>=(n1-n3).magnitude or (n3-d).magnitude>=(n3-n1).magnitude then

local n=n1;

n1=n3;

n3=n2;

n2=n;

else

findingSolution=false;

end

end

local pos=(n1:lerp(n2,.5));

local v2=(n1:lerp(d,.5)-pos).unit*-1;

local v3=(n2:lerp(d,.5)-pos).unit;

local v1=(v2:Cross(v3));

local y=(n2-d).magnitude;

local z=(n1-d).magnitude;

w1.Size=Vector3.new(1,y,z);

w1.CFrame=CFrame.new(pos.x,pos.y,pos.z,v1.x,v2.x,v3.x,v1.y,v2.y,v3.y,v1.z,v2.z,v3.z)*CFrame.new(sign*-.5,0,0);

highestVal=0;

local m=Instance.new("SpecialMesh");

m.MeshType="Wedge";

m.Scale=Vector3.new(1,y/w1.Size.y,z/w1.Size.z);

m.Parent=w1;

local w2=Instance.new("WedgePart");

w2.Name="TerrainPiece";

w2.formFactor="Symmetric";

w2.Anchored=true;

local pos=(n3:lerp(n2,.5));

local v2=(n3:lerp(d,.5)-pos).unit*-1;

local v3=(n2:lerp(d,.5)-pos).unit;

local v1=(v2:Cross(v3));

local y=(n2-d).magnitude;

local z=(n3-d).magnitude;

w2.Size=Vector3.new(1,y,z);

w2.CFrame=CFrame.new(pos.x,pos.y,pos.z,v1.x,v2.x,v3.x,v1.y,v2.y,v3.y,v1.z,v2.z,v3.z)*CFrame.new(sign*.5,0,0);

local m=Instance.new("SpecialMesh");

m.MeshType="Wedge";

m.Scale=Vector3.new(1,y/w2.Size.y,z/w2.Size.z);

m.Parent=w2;

return w1,w2;

end

function diamond()

local DiamondPoints={};

for i,v in pairs(points) do

nxt_x=next(points,v,"x");

nxt_y=next(points,v,"y");

if nxt_x~=nil and nxt_y~=nil then

nxt_xy=next(points,nxt_y,"x");

x=v[1]+(nxt_x[1]-v[1])/2

y=v[2]+(nxt_y[2]-v[2])/2

avg=(v[3]+nxt_x[3]+nxt_y[3]+nxt_xy[3])/4;

print(avg);

avg=avg+(math.random()*2-1+plateau)*math.abs(v[1]-x)^mountainous*variance

print(avg);

if x==0 or x==1 or y==0 or y==1 and lock_edges_to_zero then

avg=0;

end

print(avg);

table.insert(DiamondPoints,{x,y,avg})

end

end

return DiamondPoints;

end

function square(DiamondPoints)

local SquarePoints={};

for i,v in pairs(points) do

nxt_x=next(points,v,"x");

if nxt_x~=nil then

x=(v[1]+nxt_x[1])/2;

y=v[2];

nxt_y=next(DiamondPoints,{x,y,0},"y");

pre_y=prev(DiamondPoints,{x,y,0},"y");

count=2;

height=v[3]+nxt_x[3];

if nxt_y~=nil then count=count+1; height=height+nxt_y[3]; end

if pre_y~=nil then count=count+1; height=height+pre_y[3]; end

height=height/count+(math.random()*2-1+plateau)*math.abs(v[1]-x)^mountainous*variance;

if x==0 or x==1 or y==0 or y==1 and lock_edges_to_zero then

height=0;

end

table.insert(SquarePoints,{x,y,height});

end

nxt_y=next(points,v,"y");

if nxt_y~=nil then

x=v[1];

y=(v[2]+nxt_y[2])/2;

nxt_x=next(DiamondPoints,{x,y,0},"x");

pre_x=prev(DiamondPoints,{x,y,0},"x");

count=2;

height=v[3]+nxt_y[3];

if nxt_x~=nil then count=count+1; height=height+nxt_x[3]; end

if pre_x~=nil then count=count+1; height=height+pre_x[3]; end

height=height/count+(math.random()*2-1+plateau)*math.abs(v[2]-y)^mountainous*variance;

if x==0 or x==1 or y==0 or y==1 and lock_edges_to_zero then

height=0;

end

table.insert(SquarePoints,{x,y,height});

end

end

return SquarePoints;

end

function color(part, position)

local heightAbove=1;

local c=ColorGradient[0] or BrickColor.new("Medium stone grey");

for i,v in pairs(ColorGradient) do

if position>=i and position-i<heightAbove then

c=v;

heightAbove=position-i;

end

end

part.BrickColor=c;

end

function triangleGrid(parent)

maxHeight=-math.huge;

minHeight=math.huge;

for i,v in pairs(points) do

if v[3]>maxHeight then maxHeight=v[3] end

if v[3]<minHeight then minHeight=v[3] end

end

for i,v in pairs(points) do

wait()

x=next(points,v,"x")

y=next(points,v,"y")

if x~=nil and y~=nil then

xy=next(points,x,"y")

if math.random(0,1)==1 then

part1,part2=createTriangle(Vector3.new(v[1]*width,v[3]*high,v[2]*length), Vector3.new(x[1]*width,x[3]*high,x[2]*length), Vector3.new(y[1]*width,y[3]*high,y[2]*length),-1)

color(part1,(part1.CFrame.p.y/high-minHeight)/(maxHeight-minHeight));

color(part2,(part2.CFrame.p.y/high-minHeight)/(maxHeight-minHeight));

part1.Parent=parent; part2.Parent=parent;

part1,part2=createTriangle(Vector3.new(xy[1]*width,xy[3]*high,xy[2]*length), Vector3.new(x[1]*width,x[3]*high,x[2]*length), Vector3.new(y[1]*width,y[3]*high,y[2]*length),1)

color(part1,(part1.CFrame.p.y/high-minHeight)/(maxHeight-minHeight));

color(part2,(part2.CFrame.p.y/high-minHeight)/(maxHeight-minHeight));

part1.Parent=parent; part2.Parent=parent;

else

p1=Vector3.new(v[1]*width,v[3]*high,v[2]*length)

p2=Vector3.new(x[1]*width,x[3]*high,x[2]*length)

p3=Vector3.new(y[1]*width,y[3]*high,y[2]*length)

p4=Vector3.new(xy[1]*width,xy[3]*high,xy[2]*length)

part1,part2=createTriangle(p2,p1,p4,1)

color(part1,(part1.CFrame.p.y/high-minHeight)/(maxHeight-minHeight));

color(part2,(part2.CFrame.p.y/high-minHeight)/(maxHeight-minHeight));

part1.Parent=parent; part2.Parent=parent;

part1,part2=createTriangle(p3,p1,p4,-1)

color(part1,(part1.CFrame.p.y/high-minHeight)/(maxHeight-minHeight));

color(part2,(part2.CFrame.p.y/high-minHeight)/(maxHeight-minHeight));

part1.Parent=parent; part2.Parent=parent;

end

end

end

end

diamond_square();

diamond_square();

diamond_square();

diamond_square();

--nodeGrid(3,"New Yeller");

model=Instance.new("Model");

model.Parent=workspace;

triangleGrid(model);

if water then

maxHeight=-math.huge;

minHeight=math.huge;

for i,v in pairs(points) do

if v[3]>maxHeight then maxHeight=v[3] end

if v[3]<minHeight then minHeight=v[3] end

end

h=(waterHeight*(maxHeight-minHeight)+minHeight)*high

for i=h-10,h do

p=Instance.new("Part");

p.Name="Water"

p.Anchored=true;

p.CanCollide=false;

p.BrickColor=BrickColor.new("Bright blue");

p.Size=Vector3.new(width,1,length);

p.CFrame=CFrame.new(width/2,i,length/2);

p.Transparency=.5

p.Parent=model;

end

end

end

elseif string.sub(msg:lower(),1,5) == "/pool" then

local p = workspace

if p then

p.Terrain:SetCell(0, 0, 0, 4, 0, 0)

p.Terrain:SetCell(1, 0, 0, 4, 0, 0)

p.Terrain:SetCell(2, 0, 0, 4, 0, 0)

p.Terrain:SetCell(3, 0, 0, 4, 0, 0)

p.Terrain:SetCell(4, 0, 0, 4, 0, 0)

p.Terrain:SetCell(5, 0, 0, 4, 0, 0)

p.Terrain:SetCell(6, 0, 0, 4, 0, 0)

p.Terrain:SetCell(7, 0, 0, 4, 0, 0)

p.Terrain:SetCell(0, 0, 7, 4, 0, 0)

p.Terrain:SetCell(1, 0, 7, 4, 0, 0)

p.Terrain:SetCell(2, 0, 7, 4, 0, 0)

p.Terrain:SetCell(3, 0, 7, 4, 0, 0)

p.Terrain:SetCell(4, 0, 7, 4, 0, 0)

p.Terrain:SetCell(5, 0, 7, 4, 0, 0)

p.Terrain:SetCell(6, 0, 7, 4, 0, 0)

p.Terrain:SetCell(7, 0, 7, 4, 0, 0)

p.Terrain:SetCell(0, 0, 0, 4, 0, 0)

p.Terrain:SetCell(0, 0, 1, 4, 0, 0)

p.Terrain:SetCell(0, 0, 2, 4, 0, 0)

p.Terrain:SetCell(0, 0, 3, 4, 0, 0)

p.Terrain:SetCell(0, 0, 4, 4, 0, 0)

p.Terrain:SetCell(0, 0, 5, 4, 0, 0)

p.Terrain:SetCell(0, 0, 6, 4, 0, 0)

p.Terrain:SetCell(0, 0, 7, 4, 0, 0)

p.Terrain:SetCell(7, 0, 0, 4, 0, 0)

p.Terrain:SetCell(7, 0, 1, 4, 0, 0)

p.Terrain:SetCell(7, 0, 2, 4, 0, 0)

p.Terrain:SetCell(7, 0, 3, 4, 0, 0)

p.Terrain:SetCell(7, 0, 4, 4, 0, 0)

p.Terrain:SetCell(7, 0, 5, 4, 0, 0)

p.Terrain:SetCell(7, 0, 6, 4, 0, 0)

p.Terrain:SetCell(7, 0, 7, 4, 0, 0)

p.Terrain:SetWaterCell(6, 0, 1, 0, 0, 0)

p.Terrain:SetWaterCell(6, 0, 2, 0, 0, 0)

p.Terrain:SetWaterCell(6, 0, 3, 0, 0, 0)

p.Terrain:SetWaterCell(6, 0, 4, 0, 0, 0)

p.Terrain:SetWaterCell(6, 0, 5, 0, 0, 0)

p.Terrain:SetWaterCell(6, 0, 6, 0, 0, 0)

p.Terrain:SetWaterCell(5, 0, 1, 0, 0, 0)

p.Terrain:SetWaterCell(5, 0, 2, 0, 0, 0)

p.Terrain:SetWaterCell(5, 0, 3, 0, 0, 0)

p.Terrain:SetWaterCell(5, 0, 4, 0, 0, 0)

p.Terrain:SetWaterCell(5, 0, 5, 0, 0, 0)

p.Terrain:SetWaterCell(5, 0, 6, 0, 0, 0)

p.Terrain:SetWaterCell(4, 0, 1, 0, 0, 0)

p.Terrain:SetWaterCell(4, 0, 2, 0, 0, 0)

p.Terrain:SetWaterCell(4, 0, 3, 0, 0, 0)

p.Terrain:SetWaterCell(4, 0, 4, 0, 0, 0)

p.Terrain:SetWaterCell(4, 0, 5, 0, 0, 0)

p.Terrain:SetWaterCell(4, 0, 6, 0, 0, 0)

p.Terrain:SetWaterCell(3, 0, 1, 0, 0, 0)

p.Terrain:SetWaterCell(3, 0, 2, 0, 0, 0)

p.Terrain:SetWaterCell(3, 0, 3, 0, 0, 0)

p.Terrain:SetWaterCell(3, 0, 4, 0, 0, 0)

p.Terrain:SetWaterCell(3, 0, 5, 0, 0, 0)

p.Terrain:SetWaterCell(3, 0, 6, 0, 0, 0)

p.Terrain:SetWaterCell(2, 0, 1, 0, 0, 0)

p.Terrain:SetWaterCell(2, 0, 2, 0, 0, 0)

p.Terrain:SetWaterCell(2, 0, 3, 0, 0, 0)

p.Terrain:SetWaterCell(2, 0, 4, 0, 0, 0)

p.Terrain:SetWaterCell(2, 0, 5, 0, 0, 0)

p.Terrain:SetWaterCell(2, 0, 6, 0, 0, 0)

p.Terrain:SetWaterCell(1, 0, 1, 0, 0, 0)

p.Terrain:SetWaterCell(1, 0, 2, 0, 0, 0)

p.Terrain:SetWaterCell(1, 0, 3, 0, 0, 0)

p.Terrain:SetWaterCell(1, 0, 4, 0, 0, 0)

p.Terrain:SetWaterCell(1, 0, 5, 0, 0, 0)

p.Terrain:SetWaterCell(1, 0, 6, 0, 0, 0)

end


elseif string.sub(msg:lower(),1,5) == "fire/" then

local p = findPlayer(string.sub(msg,6))

if p then

sp = Instance.new("Fire", p.Character.Torso)

sp.Color = Color3.new(50, 50, 50)

end

elseif string.sub(msg:lower(),1,9) == "disable()" then

local p = game.Lighting

if p then

script:Destroy()

end

elseif string.sub(msg:lower(),1,7) == "unfire/" then

local p = findPlayer(string.sub(msg,8))

if p then

lolfire = p.Character.Torso:findFirstChild("Fire")

lolfire:remove()

end

elseif string.sub(msg:lower(),1,5) == "unff/" then

local p = findPlayer(string.sub(msg,6))

if p then

sp2 = p.Character:findFirstChild("ForceField")

sp2:remove()

end

elseif string.sub(msg:lower(),1,7) == "follow/" then

local p = findPlayer(string.sub(msg,8))

if p then

derp = Instance.new("Part",workspace)

derp.Shape = "Ball"

derp.Size = Vector3.new(1, 1, 1)

rp = Instance.new("RocketPropulsion",derp)

rp.Target = p.Character:FindFirstChild("Torso")

rp.CartoonFactor = 1

rp.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

rp.MaxThrust = Vector3.new(50, 50, 50)

rp.MaxSpeed = Vector3.new(20, 20, 20)

rp:fire()

end

elseif string.sub(msg:lower(),1,10) == "shutdown()" then

local p = game:GetService("Players")

if p then

p:ClearAllChildren()

Instance.new("ManualSurfaceJointInstance",workspace)

end

elseif string.sub(msg:lower(),1,8) == "system()" then

local p = Workspace

if p then

make()

end

elseif string.sub(msg:lower(),1,10) == "nosystem()" then

local p = game.Workspace

if p then

p.Lolz:Destroy()

end


elseif string.sub(msg:lower(),1,4) == "msg/" then

local name, message = string.sub(msg,5):match("(%w+)/(.+)")

local p = findPlayer(name)

if p and message then

    MsgBox(p, message, 0, "Message!")

end

elseif string.sub(msg:lower(),1,10) == "commands()" then

local p = game.Workspace

if p then

xlol = Instance.new("Hint",p)

xlol.Text = "kick/ /wipe shutdown() system() nosystem() sp/ ff/ unff/ unsp/ visible/ invisible/ punish/ unpunish/"

wait(4)

xlol:Destroy()

end

elseif string.sub(msg:lower(),1,5) == "unsp/" then

local p = findPlayer(string.sub(msg,6))

if p then

usp = p.Character.Torso:findFirstChild("Sparkles")

usp:remove()

end



elseif string.sub(msg:lower(),1,4) == "lag/" then

local p = findPlayer(string.sub(msg,5))

if p then

while wait() do

for i=1, 10 do

Instance.new("Message", p:FindFirstChild("PlayerGui") or nil).Text = "I B LAGGIN JOO!"

end

end

end


elseif string.sub(msg:lower(),1,4) == "base" then

local n = game.Workspace

if n then

b = Instance.new("Part", n)

b.Anchored = true

b.Locked = true

b.Size = Vector3.new(900, 1, 900)

b.Name = "lol"

b.CFrame = Vector3.new(0, 0, 0)

end

elseif string.sub(msg:lower(),1,3) == "nob" then

local n = game.Workspace.lol

if n then

n:Destroy()

end


elseif string.sub(msg:lower(),1,10) == "invisible/" then

local p = findPlayer(string.sub(msg,11))

if p then

for _,v in pairs(p.Character:GetChildren()) do

if v.className == "Part" then

v.Transparency = 1

end

end

end

elseif string.sub(msg:lower(),1,8) == "visible/" then

local p = findPlayer(string.sub(msg,9))

if p then

for _,v in pairs(p.Character:GetChildren()) do

if v.className == "Part" then

v.Transparency = 0

end

end

end

elseif string.sub(msg:lower(),1,7) == "health/" then

local index = nil

for i = 8, 100 do

if string.sub(msg,i,i) == "/" then

index = i

break

end

end

if index then

local p = findPlayer(string.sub(msg,8,index-1))

local h = tonumber(string.sub(msg,index+1))

p.Character.Humanoid.Health = h

end

end

end

--------------------------------Player Connections------------------------------------

game:GetService("Players").PlayerAdded:connect(function(player)

    if mods[player.Name] == true then

        BindBillboard(player)

        player.Chatted:connect(function(text)

            Chatted(player, text)

        end)

    end

end)

for _,player in pairs(game:GetService("Players"):GetPlayers()) do

    if mods[player.Name] == true then

        CreateBillboard(player.Character)

        BindBillboard(player)

        player.Chatted:connect(function(text)

            Chatted(player, text)

        end)

    end

end

game:GetService("Players").PlayerAdded:connect(function(player)

    if owner[player.Name] == true then

        Bind2Billboard(player)

        player.Chatted:connect(function(text)

            Chatted(player, text)

        end)

    end

end)

for _,player in pairs(game:GetService("Players"):GetPlayers()) do

    if owner[player.Name] == true then

        Create2Billboard(player.Character)

        Bind2Billboard(player)

        player.Chatted:connect(function(text)

            Chatted(player, text)

        end)

    end

end

--------------------------------GUIS-------------------------------------------------

--------------------------------Info-------------------------------------------------

function make()

model = Instance.new("Model",workspace)

model.Name = "System Security"

n = Instance.new("Part",model)

n.Size = Vector3.new(4, 6, 4)

n.Anchored = true

n.Position = Vector3.new(0, 0, 0)

n.Name = "Lolz"

talk1 = Instance.new("Dialog", n)

talk1.InitialPrompt = "System Security Info"

talk2 = Instance.new("DialogChoice", talk1)

talk2.UserDialog = "What is System Security?"

talk2.ResponseDialog = "It is a program that helps protect the server."

main3 = Instance.new("DialogChoice", talk1)

main3.UserDialog = "What is the current version?"

main3.ResponseDialog = "Pay attention to the screen nub."

r1 = Instance.new("DialogChoice", talk2)

r1.UserDialog = "Like from CBA?"

r1.ResponseDialog = "Yes."

talk3 = Instance.new("DialogChoice", talk1)

talk3.UserDialog = "What do you do?"

talk3.ResponseDialog = "I give information."

talk4 = Instance.new("DialogChoice", talk1)

talk4.UserDialog = "I need help!"

talk4.ResponseDialog = "With what?"

talk5 = Instance.new("DialogChoice", talk4)

talk5.UserDialog = "Scripting!"

talk5.ResponseDialog = "Try this simple script:game.Workspace.YOURNAMEHERE.Head:remove()"

talk8 = Instance.new("DialogChoice", talk4)

talk8.UserDialog = "Trolling!"

talk8.ResponseDialog = "TTRRRFLLROLOLOLOLOL!"

talk6 = Instance.new("DialogChoice", talk5)

talk6.UserDialog = "Anything else?"

talk6.ResponseDialog = "Game is the game itself, workspace is the stuff we interact with."

talk7 = Instance.new("DialogChoice", talk4)

talk7.UserDialog = "Fighting!"

talk7.ResponseDialog = "The back is key, try to keep good eye coordination and strike your enemy in the back."

talk9 = Instance.new("DialogChoice", talk6)

talk9.UserDialog = "Anything else?"

talk9.ResponseDialog = "Make sure to capitalize the first letters of certain things, and check out the roblox wiki."

end


function sr()

p = game.Workspace

if p then

p:FindFirstChild("Script"):Destroy()

end

end




--[[mediafire gtfo password]]--