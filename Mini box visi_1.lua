local plr = game:GetService('Players').LocalPlayer;
local char = plr.Character;
local Torso = char.Torso
pplr = game.Workspace.TycoonKing1981
game.Workspace.TycoonKing1981.Head.face:Remove()
torso = pplr.Torso
head = pplr.Head
leftarm = pplr["Left Arm"]
rightarm = pplr["Right Arm"]
leftleg = pplr["Left Leg"]
rightleg = pplr["Right Leg"]
head.Transparency = 1
rightarm.Transparency = 1
leftarm.Transparency = 1
rightleg.Transparency = 1
leftleg.Transparency = 1
torso.Transparency = 1
function cycle(num)
    local section=num % 1 * 3;
    local secondary=0.5 * math.pi * (section % 1);
    if section < 1 then
        return 1,1 - math.cos(secondary),1 - math.sin(secondary);
    elseif section < 2 then
        return 1 - math.sin(secondary),1,1 - math.cos(secondary);
    else
        return 1 - math.cos(secondary),1 - math.sin(secondary),1;
    end
end

--weld------
local weld = function(p0,p1,x,y,z,ax,ay,az)
	p0.Position=p1.Position
	local w = Instance.new("Motor",p0)
	w.Part0=p0
	w.Part1=p1
	w.C0=CFrame.new(x,y,z)*CFrame.Angles(ax,ay,az)
end


wait(1)
local play = false
local Pause = false
--function chat end--
local Songs = {
{SongName = 'Trigger', SongDesc = 'Nil', Creator = 'Ayeekillerpro', ID = 301999080};                
{SongName = 'Lindsey Sterling - Crystallize', SongDesc = 'Nil', Creator = 'Nil', ID = 165000427};        
{SongName = 'Charli XCX - Boom clap', SongDesc = 'Nil', Creator = 'brightnikki', ID = 160594536};        
{SongName = 'Elle King - Exs & Ohs', SongDesc = 'Nil', Creator = 'Nil', ID = 270207539};
{SongName = 'Burnt Rice - Shawn Wasabi', SongDesc = 'Nil', Creator = 'Nil', ID = 327095350};
{SongName = 'KSI', SongDesc = 'Nil', Creator = 'Violisse', ID = 455542293};
{SongName = 'Desiigner - Timmy Turner (Official Sound)', SongDesc = 'Nil', Creator = 'Nil', ID = 469009274};
{SongName = 'Fall Out Boy - Centuries', SongDesc = 'Nil', Creator = 'Nil', ID = 181547615};
{SongName = 'Black Beatles', SongDesc = 'Nil', Creator = 'Nil', ID = 492272696};
{SongName = 'Nil', SongDesc = 'Nil', Creator = 'Nil', ID = 492272696};
{SongName = 'Nil', SongDesc = 'Nil', Creator = 'Nil', ID = 181086214};
{SongName = 'Nil', SongDesc = 'Nil', Creator = 'Nil', ID = 435358295};
{SongName = 'Nil', SongDesc = 'Nil', Creator = 'Nil', ID = 462185312};
{SongName = 'Nil', SongDesc = 'Nil', Creator = 'Nil', ID = 462185312};
{SongName = 'Nil', SongDesc = 'Nil', Creator = 'Nil', ID = 320597966};
{SongName = 'Nil', SongDesc = 'Nil', Creator = 'Nil', ID = 142319852};
{SongName = 'Nil', SongDesc = 'Nil', Creator = 'Nil', ID = 467369212};
{SongName = 'Nil', SongDesc = 'Nil', Creator = 'Nil', ID = 325360758};
{SongName = 'Nil', SongDesc = 'Nil', Creator = 'Nil', ID = 166667250};
{SongName = 'Nil ', SongDesc = 'Nil', Creator = 'Nil', ID = 320597966};
{SongName = 'Nil', SongDesc = 'Nil', Creator = 'Nil', ID = 411577574};
}
local Sound = Instance.new("Sound",Torso)
function PlayList()
        local sng = Songs[math.random(1,#Songs)]
        Sound.SoundId = 'rbxassetid://'..sng.ID
        Sound:Play()
        repeat wait() until Sound.IsPaused == true
    if play == false then return end
    if Pause == true then return end
        PlayList()
end
local Loop = false
local Locked
p = game:GetService('Players').LocalPlayer
p.Chatted:connect(function(msg)
        if msg:sub(1,5):lower()=='play ' then
                play = true
                local val = Instance.new("NumberValue", p.Character)
                val.Name = "SongID"
                val.Value = tonumber(msg:sub(6))
                local id = val.Value
                Sound:Stop()
                Sound.SoundId='rbxassetid://'..id
                Sound:Play()
                wait(1)
                val:Remove()
        elseif msg:sub(1,4):lower()=='vol/' then
                local val = Instance.new("NumberValue", p.Character)
                val.Name = "VolID"
                val.Value = tonumber(msg:sub(5))
                if val.Value > 10 then val.Value = 10
                end
                local id = val.Value
                Sound.Volume = id
                val:Remove()
                
        elseif msg:sub(1,6) == 'start' then
                play = true
                PlayList()

        elseif msg:sub(1,6) == 'change' then
                play = false
                    Sound:Stop()
                play = true
                    PlayList()

        elseif msg:sub(1,5) == 'end' then
                play = false
                    Sound:Stop()
        end

end)
--156332473
--222095512
--394260844
--301999080
--181086214
--435358295
--462185312

--Chest


local q = Instance.new("Part")
q.CanCollide=false
q.FormFactor="Custom"
q.Material="SmoothPlastic"
q.BrickColor=BrickColor.new("Black")
q.Size = Vector3.new(2.01,2.01,1.01)
weld(q,char['Torso'],0,0,0,0,0,0)

--local w = Instance.new("Part")
--w.CanCollide=false
--w.FormFactor="Custom"
--w.Material="SmoothPlastic"
--w.BrickColor=BrickColor.new("Grey")
--w.Size = Vector3.new(2.001,.1,.1)
--weld(w,char['Torso'],0,.89,.411,0,0,0)

--Visulisers
local Feedback = Instance.new("Part",char)
Feedback.Anchored = true
Feedback.CanCollide=false
Feedback.TopSurface='Smooth'
Feedback.BrickColor=BrickColor.new("Bright red")
Feedback.Material = Enum.Material.Neon

local Feedback2 = Instance.new("Part",char)
Feedback2.Anchored = true
Feedback2.CanCollide=false
Feedback2.TopSurface='Smooth'
Feedback2.BrickColor=BrickColor.new("Bright red")
Feedback2.Material = Enum.Material.Neon

local Feedback3 = Instance.new("Part",char)
Feedback3.Anchored = true
Feedback3.CanCollide=false
Feedback3.TopSurface='Smooth'
Feedback3.BrickColor=BrickColor.new("Bright red")
Feedback3.Material = Enum.Material.Neon

local Feedback4 = Instance.new("Part",char)
Feedback4.Anchored = true
Feedback4.CanCollide=false
Feedback4.TopSurface='Smooth'
Feedback4.BrickColor=BrickColor.new("Bright red")
Feedback4.Material = Enum.Material.Neon

local Feedback5 = Instance.new("Part",char)
Feedback5.Anchored = true
Feedback5.CanCollide=false
Feedback5.TopSurface='Smooth'
Feedback5.BrickColor=BrickColor.new("Bright red")
Feedback5.Material = Enum.Material.Neon

local Feedback6 = Instance.new("Part",char)
Feedback6.Anchored = true
Feedback6.CanCollide=false
Feedback6.TopSurface='Smooth'
Feedback6.BrickColor=BrickColor.new("Bright red")
Feedback6.Material = Enum.Material.Neon

local Feedback7 = Instance.new("Part",char)
Feedback7.Anchored = true
Feedback7.CanCollide=false
Feedback7.TopSurface='Smooth'
Feedback7.BrickColor=BrickColor.new("Bright red")
Feedback7.Material = Enum.Material.Neon

local Feedback8 = Instance.new("Part",char)
Feedback8.Anchored = true
Feedback8.CanCollide=false
Feedback8.TopSurface='Smooth'
Feedback8.BrickColor=BrickColor.new("Bright red")
Feedback8.Material = Enum.Material.Neon

------------------------------Parent to workspace---------------
Sound.Parent = char
Feedback.Parent = char
Feedback2.Parent = char
Feedback3.Parent = char
Feedback4.Parent = char
Feedback5.Parent = char
Feedback6.Parent = char
Feedback7.Parent = char
Feedback8.Parent = char
q.Parent = char
--w.Parent = game.Workspace




local MaxHeight = .2

game:GetService('RunService').Stepped:connect(function()
        for _,v in pairs(char:GetChildren()) do
                
Feedback.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback2.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback3.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback4.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback5.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback6.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback7.BrickColor = BrickColor.new(Color3.new(cycle(tick())));
Feedback8.BrickColor = BrickColor.new(Color3.new(cycle(tick())));




local Height = Sound.PlaybackLoudness/100 * MaxHeight
local Height2 = Sound.PlaybackLoudness/150 * MaxHeight
local Height3 = Sound.PlaybackLoudness/200 * MaxHeight
local Height4 = Sound.PlaybackLoudness/250 * MaxHeight
local Height5 = Sound.PlaybackLoudness/250 * MaxHeight
local Height6 = Sound.PlaybackLoudness/200 * MaxHeight
local Height7 = Sound.PlaybackLoudness/150 * MaxHeight
local Height8 = Sound.PlaybackLoudness/100 * MaxHeight


Feedback.Size = Vector3.new(.01, (Height ~= 0 and Height or .01), .01)
Feedback.CFrame = plr.Character.Torso.CFrame * CFrame.new(.7,-.8,-.41) +Vector3.new(0,(Height == 0 and 0 or Height/2),0)

Feedback2.Size = Vector3.new(.01, (Height2 ~= 0 and Height2 or .01), .01)
Feedback2.CFrame = plr.Character.Torso.CFrame * CFrame.new(.5,-.8,-.41) +Vector3.new(0,(Height2 == 0 and 0 or Height2/2),0)

Feedback3.Size = Vector3.new(.01, (Height3 ~= 0 and Height3 or .01), .01)
Feedback3.CFrame = plr.Character.Torso.CFrame * CFrame.new(.3,-.8,-.41) +Vector3.new(0,(Height3 == 0 and 0 or Height3/2),0)

Feedback4.Size = Vector3.new(.01, (Height4 ~= 0 and Height4 or .01), .01)
Feedback4.CFrame = plr.Character.Torso.CFrame * CFrame.new(.1,-.8,-.41) +Vector3.new(0,(Height4 == 0 and 0 or Height4/2),0)

Feedback5.Size = Vector3.new(.01, (Height5 ~= 0 and Height5 or .01), .01)
Feedback5.CFrame = plr.Character.Torso.CFrame * CFrame.new(-.1,-.8,-.41) +Vector3.new(0,(Height5 == 0 and 0 or Height5/2),0)

Feedback6.Size = Vector3.new(.01, (Height6 ~= 0 and Height6 or .01), .01)
Feedback6.CFrame = plr.Character.Torso.CFrame * CFrame.new(-.3,-.8,-.41) +Vector3.new(0,(Height6 == 0 and 0 or Height6/2),0)

Feedback7.Size = Vector3.new(.01, (Height7 ~= 0 and Height7 or .01), .01)
Feedback7.CFrame = plr.Character.Torso.CFrame * CFrame.new(-.5,-.8,-.41) +Vector3.new(0,(Height7 == 0 and 0 or Height7/2),0)

Feedback8.Size = Vector3.new(.01, (Height8 ~= 0 and Height8 or .01), .01)
Feedback8.CFrame = plr.Character.Torso.CFrame * CFrame.new(-.7,-.8,-.41) +Vector3.new(0,(Height8 == 0 and 0 or Height8/2),0)
                end
        end)