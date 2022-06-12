--\\Main//-- 
 
 
--[[commands
        trail;off     Turns trail off
        trail;on      Turns trail on
        +;           Makes a loadstring
        hide;on       Hides the orb
        hide;off      Shows the orb
        time;value    Value = Time
        regen;player  Regenerates the player
        regen;orb     Regenerates the orb
        chat;         Red ChatService
        tk;           A kill on touch script *LETHAL*

]]        
 
blacklist = {
        "1x1x1x1",
        "noobfgt",
        
};
 
 local deb = false
 --Don't even parent yet... script.Parent = game.Workspace  --Put it to nil after you have completed your SCRIPT.
plr = game.Players.LocalPlayer
 
 
 OrbCreate = function()
        tOrb = nil;
        spmesh = nil;
        bodyPosition = nil;
        
        tOrb = Instance.new("Part", workspace);
        tOrb.Size = Vector3.new(1,1,1);
        tOrb.CanCollide = false;
        tOrb.BrickColor = BrickColor.new("Really black");
        tOrb.Name = "Leroy6";
        tOrb.Position = Vector3.new(5,5,5);
        tOrb.BottomSurface = "Smooth"
        tOrb.TopSurface = "Smooth"
                spmesh = Instance.new("SpecialMesh", tOrb);
        spmesh.MeshType = "Sphere";
        bodyPosition = Instance.new("BodyPosition", tOrb);
        
         end
OrbCreate();
 
function getPlayer(name)
        for i,v in pairs(game.Players:children()) do
        if #v.Name >= name then
        if string.lower(v.Name):sub(1,#name) == string.lower(name) then
                return v
            end
        end
    end
    return nil
end
 
--\\Commands//--
coroutine.resume(coroutine.create(function()
                    
 while wait(0.02) do                             
if trail == true then
                                
parts = {}
                coroutine.resume(coroutine.create(function()
            clone = tOrb:clone()
                clone.CFrame = tOrb.CFrame
                clone.Parent = Workspace
                clone.Anchored = true
            table.insert(parts, {clone = clone})
                while wait() do
            for i,v in pairs(parts) do
                for i = 0, 1, 0.1 do
                v.clone.Transparency = i
                wait(0.05)
                end                
                v.clone:Destroy()
                table.remove(parts, clone)
        end
                    end
                    end))
    else
        pcall(function()v:Destroy() end)
                                end
                        end
                        end))
 
                        
plr.Chatted:connect(function(msg)
        if msg == "trail;off" then
                trail = false
        end
        if msg == "trail;on" then
                trail = true
        end
       
        if msg == "hide;on" then 
        tOrb.Transparency = 1
        end
        
        if msg == "hide;off" then
        tOrb.Transparency = 0
        end   
        
if msg == "regen;orb" then
    OrbCreate()   
    end
    
if msg == "regen;player" then
    plr.Character.Parent = game.Lighting 
    wait(0.01)
    plr.Character.Parent = game.Workspace
    end
    
    
    if msg == "box;" then
    deb = not deb
    if deb then
local p0 = Instance.new("SelectionBox")
p0.Adornee = tOrb
p0.Color = BrickColor.new("Really black")
p0.Parent = tOrb
else
p0:Destroy()
end
end
    
if msg:sub(1,5) == "time;" then
    game:service'Lighting'.TimeOfDay = msg:sub(6) -- Never use letters as a Number.
    end
    
if msg:sub(1,5) == "kick;" then
        if game.Players(msg:sub(6)) ~= nil then
            follow = game.Players(msg:sub(6)).Name
        game.Players[follow]:Destroy()
        end
        end

if msg == "chat;" then
        chat = game:GetService("Chat")
function plchat(msg)
pcall(function()
chat:Chat(plr.Character.Head,msg,2)
end)
end
plr.Chatted:connect(function(msg)
plchat(msg)
end)
end

if msg == "tk;" then 
        function onTouched(hit) 
if (hit.Parent:findFirstChild("Humanoid")~= nil) then hit.Parent.Humanoid.Health = 0 end 
end 
c = plr.Character:GetChildren() 
for i = 1, #c do 
if (c[i].className == "Part") then c[i].Touched:connect(onTouched) end end 
end
        
end)
        
        
 
coroutine.resume(coroutine.create(function()
        while wait() do 
                if char.Humanoid.Health <= 0 then
                        trail = false
                end
        end
        end))
 
 
game:service'Players'.LocalPlayer.Chatted:connect(function(msg)
        wait(0.001);
        loadstring(msg:match'+;(.+)')();
end);
 
 
--\\Functions//--
function move()
if plr.Character.Humanoid.Health<1 then 
repeat wait() until plr.Character.Humanoid.Health>0
OrbCreate()
end
 end 
 
coroutine.resume(coroutine.create(function()
while true do
wait() 
                bodyPosition.position = (plr.Character.Torso.CFrame).p + Vector3.new(4, 4, 0);
end 
end))


while true do
tOrb.CFrame = tOrb.CFrame * CFrame.fromEulerAnglesXYZ(0.02,0,0.02)
wait(0.1)
end