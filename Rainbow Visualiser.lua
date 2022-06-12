local Players=game:service'Players'
local Player=Players.LocalPlayer
local Char=Player.Character
local parts={};
local skipvotes=0
local prefix='!'
local Width,Height,Gen,Div,Cap=.1,.1,100,70,12
local animspd=.75
wait(.05)

function rainb(hue)
    local section = hue % 1 * 3
    local secondary = 0.5 * math.pi * (section % 1)
    if section < 1 then
        return Color3.new(1, 1 - math.cos(secondary), 1 - math.sin(secondary))
    elseif section < 2 then
        return Color3.new(1 - math.sin(secondary), 1, 1 - math.cos(secondary))
    else
        return Color3.new(1 - math.cos(secondary), 1 - math.sin(secondary), 1)
    end
end

pcall(function()
	Char.SaVisualizer:Destroy()
	Char.HumanoidRootPart.Sound:Destroy()
end)

script.Name = 'SaVisualizer'

local Modl=Instance.new('Model', script)
local HumanoidRootPart=Char:WaitForChild'HumanoidRootPart'
local fp=CFrame.new(0,6,0)*CFrame.Angles(-math.rad(5),0,0)
local S=Instance.new('Sound',HumanoidRootPart)
S.Looped=true
S.Volume=1
S.EmitterSize=40
local lrs=game:service'RunService'.RenderStepped

--[[
local bl=Instance.new('Part')
bl.Anchored=true
bl.Size=Vector3.new(Width,Height,.2)
bl.Material='SmoothPlastic'
bl.Color=Color3.new(1,1,1)
bl.Transparency=0
bl.CanCollide=false
bl.Anchored=true
bl.CFrame=fp*CFrame.new(0,Height*3,0)
local bm=Instance.new('SpecialMesh',bl)
bl.MeshType='Sphere'
bl.Parent=nil
--]]

local Generated=false
local first=true
function AddParts(Number)
	local up=1
	if first then
		up=0
		first=false
	end
	local nparts=#parts
	Generated=false
	for i = 0,math.floor(tonumber(Number)) do
		local p=Instance.new('Part')
		p.Anchored=true
		p.Size=Vector3.new(Width,Height,.2)
		p.Material='SmoothPlastic'
		p.Color=Color3.new(1,1,1)
		p.Transparency=0
		p.CanCollide=false
		p.Anchored=true
		p.CFrame=fp*CFrame.new(0,Height*3,0)
		local bm=Instance.new('SpecialMesh',p)
		bm.MeshId='rbxasset://fonts/rightarm.mesh'
		bm.TextureId='rbxassetid://215418209'
		p.Parent=Modl
		--warn(nparts+i)
		parts[(nparts+up)+i]=p
		game.ItemChanged:wait()
	end
	Generated=true
end

function RmvParts(Number)
	if Generated then
		local nparts=#parts
		warn(nparts)
		for i = 0, Number do
			local n=nparts-i
			local per=parts[n]
			parts[n]=nil
			per:Destroy()
			lrs:wait()
		end
		warn(#parts)
	end
end

function Sound(Id)
	skipvotes=0
	S:Stop()
	S.SoundId='rbxassetid://'..Id
	S:Play()
end
--326631346
function OnChat(P, Message)
	m=Message:lower()
	if m:sub(0,#prefix+3)== prefix..'snd' and P==Player then
		local id=tonumber(m:sub(6))
		print(id)
		local snd=Sound(id)
	elseif m:sub(0,#prefix+3)== prefix..'add' and P==Player then
		local num=tonumber(m:sub(6))
		warn(num)
		AddParts(num)
	elseif m:sub(0,#prefix+3)== prefix..'rmv' and P==Player then
		local num=tonumber(m:sub(6))
		warn(num)
		RmvParts(num)
	elseif m:sub(0,#prefix+3)== prefix..'spd' and P==Player then
		local num=tonumber(m:sub(6))
		warn(num)
		animspd=num or .8
	elseif m:sub(0,#prefix+4)== prefix..'stop' and P==Player then
		S:Pause()
	elseif m:sub(0,#prefix+6)== prefix..'replay' and P==Player then
		--S:Stop()
		S:Play()
	elseif m:sub(0,#prefix+4)== prefix..'play' and P==Player then
		S:Resume()
	elseif m:sub(0,#prefix+5)== prefix..'vskip' then
		skipvotes=skipvotes+1
		if skipvotes>= math.floor(Players.NumPlayers/3) then
			skipvotes=0
			S:Stop()
		end
	end
end

function Connect(P)
	P.Chatted:connect(function(Message)
		OnChat(P, Message)
	end)
end

function HandleParts(Plb_l,Clr,Spd)
	for index, Part in next, parts do
		local neg=-(Width*index)+(Width*(#parts/2))
		Part.CFrame=Part.CFrame:lerp(CFrame.Angles(0,0,0)*fp*CFrame.new(neg,Height*5,0),.1)
		if Generated then
			Part.Anchored=true
			if index==0 then
				Part.Mesh.VertexColor=Part.Mesh.VertexColor:lerp(Vector3.new(Clr.r,Clr.g,Clr.b),.6)
				Part.Mesh.Scale=Part.Mesh.Scale:lerp(Vector3.new(Width+.1,.1+Plb_l,.01),Spd/3.5)
			elseif index ~= 0 then
				spawn(function()
					wait(((index/200)*1.1))
					--Part.Mesh.VertexColor=parts[index-1].Mesh.VertexColor
					Part.Mesh.VertexColor=Part.Mesh.VertexColor:lerp(parts[index-1].Mesh.VertexColor,.6)
				end)
				Part.Mesh.Scale=Part.Mesh.Scale:lerp(Vector3.new(Width+.1,parts[index-1].Mesh.Scale.Y,.01),Spd)
			end
		end
	end
end

lrs:connect(function()
	local Color = rainb(tick()/20)
	local Var=S.PlaybackLoudness
	--local Spd = .15+((.15*100)/Var)
	--warn(Spd,(.85*100)/Var)
	--if Spd > .75 then
	--	Spd=.7
	--end
	if not S.IsPlaying or S.SoundId=='rbxassetid://0' then
		local mul=200
		Var=(mul-.1)+math.sin(tick()*2)*mul
		--print(Var)
	end
	HandleParts(Var/Div,Color,animspd)
end)

Players.PlayerAdded:connect(function(P)
	Connect(P)
end)

for Index, P in next, Players:GetPlayers() do
	Connect(P)
end
--485859421
AddParts(Gen)
Sound(485859421)--265675215//337053183//244769293