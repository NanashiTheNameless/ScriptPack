r2 = "Cyan"

--declarations
PI=math.pi
TAU=PI*2
FLOATFORCE=196.25
DEBRIS=game:service'Debris'
mr,md=math.random,math.rad
cfn,v3n=CFrame.new,Vector3.new
_A=nil
ang=function(x,y,z)local a=CFrame.Angles(x or 0,y or 0,z or 0)_A=a return a end
RS=game:service'RunService'
numkp=NumberSequenceKeypoint.new
colkp=ColorSequenceKeypoint.new
bcol=BrickColor.new

RS:UnbindFromRenderStep('Anim')

--player specific...
player = game:service'Players'.LocalPlayer
character = player.Character
torso = character.Torso
head = character.Head
rarm = character['Right Arm']
larm = character['Left Arm']
rleg = character['Right Leg']
lleg = character['Left Leg']
human = character.Humanoid
root_j=character.HumanoidRootPart.RootJoint
playergui = player.PlayerGui

--
gui = Instance.new("ScreenGui", playergui)
gui.Name="Text"
box = Instance.new("TextBox", gui)
box.Active = true
box.BackgroundColor3 = Color3.fromRGB(198, 198, 198)
box.BorderSizePixel = 0
box.Name = "TextBox"
box.Visible = true
box.ZIndex = math.huge
box.Archivable = true
box.Size = UDim2.new(0, 200,0, 50)
box.Position = UDim2.new(0, 0,0, 300)
box.Draggable = false
box.Font = "SciFi"
box.FontSize = "Size14"
box.Text = "CAPITALS ONLY"
--


--Utilities... who needs them?

function recurseHum(what)
	local res
	local p=what
	if what:IsA'Humanoid'then
		res=what
	else
	repeat
		p=p.Parent
		if p then
			local hum=p:FindFirstChild'Humanoid'
			if hum then
				res=hum
				break
			end
		end
	until p==nil
	end
	return res
end
function findHum(pos,rad,hum2)
    local hums={}
    function check(a)
        local res=false
        for i,ho in pairs(hums)do
            if a==ho then res=true end
        end
        return res
    end
    for i,v in pairs(Workspace:children())do
        if v:IsA'Model'and v~=Char and v~=(hum2 or Char) then
            for i,q in pairs(v:children())do
            if q:IsA'Humanoid' and q.Parent:FindFirstChild'Torso'and(q.Torso.Position-pos).magnitude < rad then
                    if not check(q)then
                        table.insert(hums,q)
                    end
                end
            end
        end
    end
    return hums
end

function checkY(p1,p2,range,range2)
	local function checko()
		return ( (l(p1).X>l(p2).X-range2 and l(p1).X<l(p2).X+range2) and (l(p1).Z>l(p2).Z-range2 and l(p1).Z<l(p2).Z+range2) )
	end
	if range2 then
		return (l(p1).Y > l(p2).Y-range and l(p2).Y < l(p2).Y+range) and checko()
	else
		return (l(p1).Y > l(p2).Y-range and l(p2).Y < l(p2).Y+range)
	end
end

udim=function(a,b,c,d)
if type(a)=='string'then
x,y=tostring(a):match('([%+%d%.%-%/%*]+),([%+%d%.%-%/%*]+)')
return UDim2.new(x or 0,x2 or 0,y or 0,y2 or 0)
else
return UDim2.new(a or 0,c or 0,b or 0,d or 0)
end end

function l(a1,x,y,z,rx,ry,rz)
    local cf
    if tostring(a1):find(',') == nil then
        cf=a1.CFrame
    else cf=a1 end
    return cf*CFrame.new(x or 0,y or 0,z or 0)*CFrame.Angles(
                        rx or 0,ry or 0,yz or 0)
end
function f(a) --turns thigns in to function returning the thing... f(l)(torso,0,2,0)
	return function(...)
		local args={...}
		return function() return a(unpack(args)) end
	end
end

function isIn(what,tab) --returns true if what is in tab. isIn("Troll", {"Tomato", "Troll", "Strawberry") --> true
	local res=false
	for i,v in next,tab do
		if v==what then
			res = true
			break
		end
	end
	return res
end

Weld = function(part0,part1,c0,c1,...) --over-engineered welding function which accepts many things
	local ar = {...}
	local cframe0,cframe1
	local function checkf()local res=true
		for i,v in pairs(ar)do
			if type(v) ~= 'number' then
				res=false
			end
		end
		return res
	end
	if type(c0) == 'table' then
		cframe0 = CFrame.new(c0[1] or 0, c0[2] or 0, c0[3] or 0) * CFrame.Angles(
			c0[4] or 0, c0[5] or 0, c0[6] or 0)
	elseif type(c0) == 'userdata' then
		cframe0 = c0
	elseif type(c0) == 'number' and checkf() then
		cframe0 = CFrame.new(c0 or 0,c1 or 0,ar[1] or 0) * CFrame.Angles(ar[2] or 0, ar[3] or 0, ar[4] or 0)
	end
	if type(c1) == 'table' then
		cframe1 = CFrame.new(c1[1] or 0, c1[2] or 0, c1[3] or 0) * CFrame.Angles(
			c1[4] or 0, c1[5] or 0, c1[6] or 0)
	elseif type(c1) == 'userdata' then
		cframe1 = c1
	elseif type(c1) == 'number' and (not c0 or (c0 and type(c0) == 'table')) then
		cframe1 = CFrame.new(c1 or 0, ar[1] or 0, ar[2] or 0) * CFrame.Angles(ar[3] or 0, ar[4] or 0, ar[5] or 0)
	end
	for i,v in pairs(ar)do
		if type(v) == 'table' then
			cframe1 = CFrame.new(v[1] or 0, v[2] or 0, v[3] or 0) * CFrame.new(v[4] or 0, v[5] or 0, v[6] or 0)
		elseif type(v) == 'userdata' then
			cframe1 = v
		end
	end
			
	cframe0,cframe1 = cframe1,cframe0
	part0.Position=part1.Position
	local weld = Instance.new("Weld")
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C0 = cframe0 or CFrame.new()
	weld.C1 = cframe1 or CFrame.new()
	if weld:IsA'Motor'then weld.MaxVelocity = set_maxvel or .1 end
	weld.Parent = part0
	_2=weld
	return weld
end

mesh_ids = {
	spikeball = "rbxassetid://24388358";
	spike = "rbxassetid://1033714";
	ring = "rbxassetid://3270017";
	coil = 'rbxassetid://16606212';
	diamond = 'rbxassetid://9756362';
	rock = 'rbxassetid://1290033';
	gear = 'rbxassetid://156292343';
	crown = 'rbxassetid://20329976';
	orb = 'rbxassetid://34795798';
	heart = 'rbxassetid://431221914';
	dragon = 'rbxassetid://24478215';
	half_sphere = 'rbxassetid://475668276';
	star = 'rbxassetid://45428961';
}
mesh_texs = {
	rock = 'rbxassetid://1290030';
	dragon = 'rbxassetid://25665033';
}
mesh_scales={
	diamond = v3n(0.75, 0.75, 0.75);
	spikeball = v3n(1.05, 1.05, 1.05);
	spike = v3n(0.5, 1.5, 0.5);
	gear = v3n(1.25,1.25,18);
	ring = v3n(1, 1, 6);
	coil = v3n(0.5, 0.5, 0.3);
	crown = v3n(0.6, 0.6, 0.6);
	orb = v3n(1, 1, 1);
	heart = v3n(0.25, 0.25, 0.4);
	dragon = v3n(0.4, 0.5, 0.4);
	half_sphere= v3n(0.005, 0.01, 0.005);
	star= v3n(4, 1, 4);
}
mesh_offsets={
	crown = v3n(0,.15,0);
}

function bindMesh(mesh,Size)
	local mesh_name
	local size=Size or mesh.Parent.Size
	for name,id in next,mesh_ids do
		if mesh.MeshId==id then
			mesh_name=name
		end
	end

	if not mesh_name then return end
	local mesh=mesh
	local con
	con=mesh.Parent.Changed:connect(function()
		local siz=mesh.Parent.Size
		mesh.Scale=siz*mesh_scales[mesh_name]
		if mesh_offsets[mesh_name] then
			mesh.Offset=siz*mesh_offsets[mesh_name]
		end
	end)
	return con
end
Mesh = function(parent,id,sx,sy,sz)
	local name = ( (id == 'cyl' and 'CylinderMesh') or (id == 'bl' and 'BlockMesh') or 'SpecialMesh')
	local mesh = Instance.new(name)
	if id == 's' then
		mesh.MeshType = Enum.MeshType.Sphere
	elseif id == 'w' then
		mesh.MeshType = Enum.MeshType.Wedge
	elseif id == 'h' then
		mesh.MeshType = Enum.MeshType.Head
	elseif string.find(id,"://") ~= nil then
		mesh.MeshId = id
	end
	mesh.Scale = Vector3.new(sx or 1, sy or 1, sz or 1)
	mesh.Parent = parent
	_3=mesh
	return mesh
end

Edit = function(what)
	return function(args)
		for ind,obj in next,what do
			for arg,val in next,args do				
				local child,argu = arg:match"(.+)%.(.+)"
				if child and argu then
					if pcall(function()return obj[child][argu] end) then
						obj[child][argu]=val
					end					
				else		
					if arg=='_F'then
						val(ind,obj)
					elseif pcall(function()return obj[arg]end) then
						obj[arg]=val
					end
				end
			end
		end
	end
end
New = function(what) --Synthetic caffeine for Instance.new 
	local obj
	if type(what) ~= 'string' then
		obj=what:Clone()
	else
		obj=Instance.new(what)
	end
	if what=='Weld' then obj.Name='mujoint'end
	return function(bar)
		for arg,val in pairs(bar) do
			if arg == "_P" then
				obj.Parent = val
			elseif arg=="_PP" then
				obj.Part0=val[1]
				obj.Part1=val[2]
			elseif arg=='_F'then
				val(obj)
			else
				if pcall(function()return obj[arg] end) then
					obj[arg]=val
				end
			end
		end _4=obj
		return obj
	end
end

set_parent,set_material=nil,nil
set_maxvel,set_anchor=nil,nil
set_collide=false

pcall(function() character['Knight']:Destroy() end) --removes old model.
Main = New"Model"{_P=character;Name = 'Knight'}

_1,_2,_3,_4,_5,_6,_7,_8 = nil,nil,nil,nil,nil,nil,nil
Part = function(x,y,z,col,tr)
	local p = New"Part"{
		_P=set_parent or ears or Main;
		BrickColor = BrickColor.new(col or set_color or "White");
		CanCollide = set_collide;
		Transparency = tr or 0;
		Size = Vector3.new(x or 0,y or 0,z or 0);
		Material = set_material or 'SmoothPlastic';
		Anchored = (set_anchor~=nil and set_anchor or false)
	}
	for _,sur in next,Enum.NormalId:GetEnumItems() do
		p[sur.Name..'Surface'] = 10
	end
	_1 = p
	return p
end

function platefy(part)
	local x,z=part.Size.x,part.Size.z
	local y=part.Size.y
	local list={}
	--Cylinders...
	local p2=Part(y,x,y)Mesh(_1,'cyl') table.insert(list,_1)
	Weld(p2,p,0,0,-z/2,PI/2,0,PI/2)

	local p2=Part(y,x,y)Mesh(_1,'cyl') table.insert(list,_1)
	Weld(p2,p,0,0,z/2,PI/2,0,PI/2)

	local p2=Part(y,z,y)Mesh(_1,'cyl') table.insert(list,_1)
	Weld(p2,p,x/2,0,0,PI/2)

	local p2=Part(y,z,y)Mesh(_1,'cyl') table.insert(list,_1)
	Weld(p2,p,-x/2,0,0,PI/2)

	--Balls...
	local p2=Part(y,y,y)Mesh(p2,'s') table.insert(list,_1)
	Weld(p2,p,-x/2,0,-z/2)

	local p2=Part(y,y,y)Mesh(p2,'s') table.insert(list,_1)
	Weld(p2,p,-x/2,0,z/2)

	local p2=Part(y,y,y)Mesh(p2,'s') table.insert(list,_1)
	Weld(p2,p,x/2,0,-z/2)

	local p2=Part(y,y,y)Mesh(p2,'s') table.insert(list,_1)
	Weld(p2,p,x/2,0,z/2)
	
	part.Changed:connect(function(prop)
		Edit(list){Material=part.Material;Color=part.Color}
	end)
end


function findAllParts(pos,radius)
	local min,max = math.min,math.max
	local list={}
	local pos1,pos2=l(cfn(pos),-radius*3,-radius*3,-radius*3).p,l(cfn(pos),radius*3,radius*3,radius*3).p
	local reg=Region3.new(v3n(min(pos1.x,pos2.x),min(pos1.y,pos2.y),min(pos1.z,pos2.z)),
						v3n(max(pos1.x,pos2.x),max(pos1.y,pos2.y),max(pos1.z,pos2.z)))
	for i,v in pairs(Workspace:FindPartsInRegion3WithIgnoreList(reg,{character})) do
		if (v.Position-pos).magnitude<radius and v.Name~='Base' then
			table.insert(list,v)
		end
	end
	return list
end

--BL_EXPORT
letters={
	A='[{"p": [0.001, -0.05, -0.09], "r": [0.0, 0.0, 0.0], "s": [0.34, 0.1, 0.102]}, {"p": [0.289, 0.05, 0.036], "r": [0.0, -0.262, -0.0], "s": [0.1, 0.1, 1.051]}, {"p": [-0.268, 0.05, 0.011], "r": [0.0, 0.262, 0.0], "s": [0.1, 0.1, 1.031]}]';
	B='[{"p": [0.283, 0.0, -0.822], "r": [-0.0, -1.931, 0.0], "s": [0.1, 0.1, 0.389]}, {"p": [0.226, 0.0, -0.292], "r": [0.0, -0.7, -0.0], "s": [0.1, 0.1, 0.48]}, {"p": [0.375, 0.0, 0.245], "r": [-0.0, -2.094, 0.0], "s": [0.1, 0.1, 0.48]}, {"p": [0.293, -0.0, 0.762], "r": [0.0, -0.96, -0.0], "s": [0.1, 0.1, 0.48]}, {"p": [-0.142, -0.0, 0.033], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.087]}]';
	C='[{"p": [0.121, 0.006, 0.939], "r": [-0.0, 1.571, 0.0], "s": [0.133, 0.103, 0.411]}, {"p": [-0.512, 0.006, 0.732], "r": [-0.0, 0.913, 0.0], "s": [0.133, 0.103, 0.385]}, {"p": [-0.765, 0.006, 0.103], "r": [-0.0, 0.0, 0.0], "s": [0.133, 0.103, 0.499]}, {"p": [-0.411, 0.006, -0.569], "r": [-0.0, -0.966, -0.0], "s": [0.133, 0.103, 0.499]}, {"p": [0.241, 0.006, -0.777], "r": [0.0, 1.419, 0.0], "s": [0.133, 0.103, 0.349]}]';
	D='[{"p": [0.06, 0.0, 0.617], "r": [-0.0, -1.047, 0.0], "s": [0.1, 0.1, 0.586]}, {"p": [0.518, -0.0, -0.027], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 0.437]}, {"p": [-0.497, -0.0, -0.027], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.024]}, {"p": [0.06, -0.0, -0.671], "r": [-0.0, 1.047, -0.0], "s": [0.1, 0.1, 0.586]}]';
	E='[{"p": [0.011, 0.0, -0.927], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.5]}, {"p": [0.011, 0.0, -0.027], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.5]}, {"p": [-0.533, 0.0, -0.027], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.0]}, {"p": [0.011, 0.0, 0.873], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.5]}]';
	F='[{"p": [0.011, 0.0, 0.877], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.5]}, {"p": [-0.533, -0.0, -0.022], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.0]}, {"p": [0.011, 0.0, 0.177], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.5]}]';
	G='[{"p": [0.386, 0.006, -0.755], "r": [0.0, 1.419, 0.0], "s": [0.133, 0.103, 0.499]}, {"p": [0.121, 0.006, 0.939], "r": [-0.0, 1.571, 0.0], "s": [0.133, 0.103, 0.411]}, {"p": [0.4, 0.006, 0.053], "r": [-0.0, -1.571, 0.0], "s": [0.133, 0.103, 0.238]}, {"p": [-0.512, 0.006, 0.732], "r": [-0.0, 0.913, 0.0], "s": [0.133, 0.103, 0.385]}, {"p": [-0.765, 0.006, 0.103], "r": [-0.0, 0.0, 0.0], "s": [0.133, 0.103, 0.499]}, {"p": [-0.411, 0.006, -0.569], "r": [-0.0, -0.966, -0.0], "s": [0.133, 0.103, 0.499]}, {"p": [0.765, 0.006, -0.313], "r": [0.0, 0.0, 0.0], "s": [0.133, 0.103, 0.499]}]';
	H='[{"p": [-0.002, 0.0, -0.023], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.547]}, {"p": [0.599, -0.0, -0.022], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.0]}, {"p": [-0.601, -0.0, -0.022], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.0]}]';
	I='[{"p": [0.01, 0.0, -0.027], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.0]}]';
	J='[{"p": [0.308, -0.0, -0.686], "r": [0.0, 0.607, 0.0], "s": [0.1, 0.1, 0.247]}, {"p": [-0.431, 0.0, -0.46], "r": [-0.0, 0.009, -0.0], "s": [0.1, 0.1, 0.221]}, {"p": [-0.297, 0.0, -0.733], "r": [-0.0, -0.929, -0.0], "s": [0.1, 0.1, 0.221]}, {"p": [0.036, 0.0, -0.846], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.216]}, {"p": [0.431, -0.0, 0.246], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 0.786]}]';
	K='[{"p": [0.298, 0.0, -0.486], "r": [-0.0, -0.785, -0.0], "s": [0.104, 0.104, 0.707]}, {"p": [0.25, -0.0, 0.486], "r": [0.0, 0.785, 0.0], "s": [0.104, 0.104, 0.679]}, {"p": [-0.298, -0.0, 0.003], "r": [0.0, 0.0, 0.0], "s": [0.104, 0.104, 1.04]}]';
	L='[{"p": [-0.242, -0.0, -0.033], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.023]}, {"p": [0.244, 0.0, -0.956], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.586]}]';
	M='[{"p": [0.182, 0.0, -0.029], "r": [0.0, 0.175, 0.0], "s": [0.106, 0.169, 1.014]}, {"p": [0.515, 0.0, -0.025], "r": [0.0, -0.175, -0.0], "s": [0.106, 0.169, 1.014]}, {"p": [-0.161, 0.0, -0.025], "r": [0.0, -0.175, -0.0], "s": [0.106, 0.169, 1.014]}, {"p": [-0.494, 0.0, -0.029], "r": [0.0, 0.175, 0.0], "s": [0.106, 0.169, 1.014]}]';
	N='[{"p": [-0.365, 0.0, 0.011], "r": [0.0, 0.0, 0.0], "s": [0.106, 0.169, 1.014]}, {"p": [0.179, 0.0, 0.004], "r": [0.0, -0.501, -0.0], "s": [0.106, 0.169, 1.105]}, {"p": [0.723, 0.0, -0.003], "r": [0.0, 0.0, 0.0], "s": [0.106, 0.169, 1.014]}]';
	O='[{"p": [0.323, 0.0, 0.67], "r": [-0.0, -0.611, 0.0], "s": [0.15, 0.15, 0.276]}, {"p": [-0.302, 0.0, 0.67], "r": [-0.0, 0.611, 0.0], "s": [0.15, 0.15, 0.276]}, {"p": [0.01, 0.0, 0.833], "r": [-0.0, 4.712, 0.0], "s": [0.15, 0.15, 0.277]}, {"p": [0.454, -0.0, -0.022], "r": [0.0, 0.0, 0.0], "s": [0.15, 0.15, 0.553]}, {"p": [0.323, 0.0, -0.716], "r": [-0.0, 0.611, -0.0], "s": [0.15, 0.15, 0.276]}, {"p": [0.011, 0.0, -0.878], "r": [-0.0, 4.712, 0.0], "s": [0.15, 0.15, 0.276]}, {"p": [-0.302, 0.0, -0.715], "r": [-0.0, -0.611, -0.0], "s": [0.15, 0.15, 0.276]}, {"p": [-0.433, -0.0, -0.022], "r": [0.0, 0.0, 0.0], "s": [0.15, 0.15, 0.553]}]';
	P='[{"p": [0.412, 0.0, 0.421], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 0.547]}, {"p": [0.011, 0.0, -0.027], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.5]}, {"p": [-0.533, 0.0, -0.027], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.0]}, {"p": [0.011, 0.0, 0.873], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.5]}]';
	R='[{"p": [0.238, -0.002, 0.29], "r": [-0.0, 3.235, 0.0], "s": [0.1, 0.1, 0.402]}, {"p": [-0.012, 0.002, -0.5], "r": [-0.0, 2.1, -0.0], "s": [0.104, 0.104, 0.774]}, {"p": [-0.16, -0.002, -0.05], "r": [0.0, 1.506, 0.0], "s": [0.1, 0.1, 0.454]}, {"p": [-0.142, -0.002, 0.738], "r": [0.0, -1.301, -0.0], "s": [0.1, 0.1, 0.5]}, {"p": [-0.687, -0.002, -0.028], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.0]}]';
	S='[{"p": [-0.469, -0.022, -0.91], "r": [-0.0, -0.776, -0.0], "s": [0.095, 0.095, 0.205]}, {"p": [-0.082, -0.022, -1.028], "r": [-0.0, 1.571, -0.0], "s": [0.095, 0.095, 0.311]}, {"p": [0.321, -0.022, -0.852], "r": [-0.0, 0.664, 0.0], "s": [0.095, 0.095, 0.27]}, {"p": [0.381, -0.022, -0.475], "r": [-0.0, -0.349, -0.0], "s": [0.095, 0.095, 0.27]}, {"p": [0.109, -0.022, -0.09], "r": [-0.0, -0.881, 0.0], "s": [0.095, 0.095, 0.27]}, {"p": [-0.189, -0.022, 0.294], "r": [-0.0, -0.436, 0.0], "s": [0.095, 0.095, 0.27]}, {"p": [-0.189, -0.022, 0.704], "r": [-0.0, 0.436, 0.0], "s": [0.095, 0.095, 0.27]}, {"p": [0.11, -0.022, 0.894], "r": [-0.0, 1.571, 0.0], "s": [0.095, 0.095, 0.27]}, {"p": [0.505, -0.022, 0.731], "r": [-0.0, -0.785, 0.0], "s": [0.095, 0.095, 0.27]}]';
	T='[{"p": [-0.001, -0.0, -0.022], "r": [0.0, 0.0, 0.0], "s": [0.1, 0.1, 1.0]}, {"p": [-0.006, 0.0, 0.877], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.911]}]';
	U='[{"p": [0.415, 0.0, -0.704], "r": [-3.142, 2.313, 3.142], "s": [0.1, 0.175, -0.38]}, {"p": [0.662, 0.0, 0.23], "r": [-3.142, -3.142, 3.142], "s": [0.1, 0.175, -0.75]}, {"p": [0.026, 0.0, -0.935], "r": [-3.141, -1.573, 3.141], "s": [0.1, 0.175, -0.179]}, {"p": [-0.614, 0.0, 0.232], "r": [-3.142, -3.142, 3.142], "s": [0.1, 0.175, -0.75]}, {"p": [-0.367, 0.0, -0.702], "r": [-3.142, -2.313, 3.142], "s": [0.1, 0.175, -0.38]}]';
	V='[{"p": [0.313, 0.0, -0.067], "r": [0.0, 0.364, 0.0], "s": [0.106, 0.169, 1.014]}, {"p": [-0.344, 0.0, -0.074], "r": [0.0, -0.364, 0.0], "s": [0.106, 0.169, 1.014]}]';
	W='[{"p": [0.515, 0.0, -0.025], "r": [0.0, 0.175, -0.0], "s": [0.106, 0.169, 1.014]}, {"p": [0.182, 0.0, -0.029], "r": [0.0, -0.175, 0.0], "s": [0.106, 0.169, 1.014]}, {"p": [-0.494, 0.0, -0.029], "r": [0.0, -0.175, 0.0], "s": [0.106, 0.169, 1.014]}, {"p": [-0.161, 0.0, -0.025], "r": [0.0, 0.175, -0.0], "s": [0.106, 0.169, 1.014]}]';
	X='[{"p": [0.007, -0.0, -0.03], "r": [0.0, -0.785, 0.0], "s": [0.15, 0.15, -1.323]}, {"p": [0.007, -0.0, -0.03], "r": [0.0, 0.785, 0.0], "s": [0.15, 0.15, -1.323]}]';
	Y='[{"p": [0.324, 0.01, 0.421], "r": [0.0, 0.611, 0.0], "s": [0.11, 0.11, 0.55]}, {"p": [-0.264, 0.01, 0.453], "r": [0.0, -0.524, -0.0], "s": [0.11, 0.11, 0.55]}, {"p": [0.011, 0.01, -0.576], "r": [0.0, 0.0, 0.0], "s": [0.11, 0.11, 0.55]}]';
	Z='[{"p": [0.269, 0.0, 0.915], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.586]}, {"p": [0.257, -0.0, -0.021], "r": [0.0, 0.524, 0.0], "s": [0.1, 0.1, 1.023]}, {"p": [0.244, 0.0, -0.956], "r": [-0.0, 1.571, 0.0], "s": [0.1, 0.1, 0.586]}]';
}
--/BL_EXPORT

scale=10

function doLetter(letter,pos,scale,color)
	local letter_mod = New"Model"{_P=Main}
	local list2={}
	local list=game:service'HttpService':JSONDecode(letters[letter])
    local cnt=0
	for i,v in pairs(list)do
		cnt=cnt+1
		Part(1,1,1,color or 'Royal purple')_1.Anchored=true Mesh(_1,'bl',unpack(v.s))_1.Parent=letter_mod
		_3.Scale=_3.Scale*scale+v3n(0,0.001*cnt,0)
		_1.CFrame=l(pos,v.p[1]*scale/2,v.p[2]*scale/2,v.p[3]*scale/2)*ang(unpack(v.r))
		_1.Material='Slate'
        list2[_1]={Scale=_3.Scale,CFrame=_1.CFrame}
        _1.CFrame=pos _3.Scale=v3n(0,0,0)
	end
	Spawn(function()
    for i=0,1.5,.1 do
        for o,v in pairs(list2)do
            o.CFrame=pos:lerp(v.CFrame,i)
            o.Mesh.Scale = v3n(0,0,0):lerp(v.Scale,i)
        end
        wait()
    end
    for i=1.5,1,-.1 do
        for o,v in pairs(list2)do
            o.CFrame=pos:lerp(v.CFrame,i)
            o.Mesh.Scale = v3n(0,0,0):lerp(v.Scale,i)
        end
        wait()
    end
    for o,v in pairs(list2)do
        o.CFrame=v.CFrame
        o.Mesh.Scale = v.Scale,i
    end
    end)
    
	return letter_mod
end

function doWord(word,pos,scale,col)
	stpos=pos
	local prev=0
    local modls={}
	for w in word:gmatch('%w') do
		local p=doLetter(w,stpos*cfn(prev,0,0),scale,(col=='r' and BrickColor.random().Name or (col or 'Cyan')))
		prev=prev+scale
        table.insert(modls,p)
        wait()
	end
    return function()
        for i,v in pairs(modls) do
            -- New"Explosion"{_P=Workspace;Position=pos.p;DestroyJointRadiusPercent=0}DEBRIS:AddItem(_4,0.001)
            for _,v2 in pairs(v:children())do v2.Anchored=false v2.CanCollide=true
                v2.Velocity = cfn(pos.p,l(v2).p).lookVector*30
                New"BodyForce"{_P=v2;force=v3n(0,(v2:GetMass()*FLOATFORCE)*.75,0)}
            end     
            Delay(1,function()
                for i=0,1,.1 do
                    
                    for _,v2 in pairs(v:children())do v2.Transparency=i end
                    
                    wait()
                end
                v:Destroy()
            end)
            
        end
    end    
end

sc=4
-- local br=doWord('HELLOVOIDSB',l(torso,0,sc/2,-3,PI/2,PI),sc,'Cyan')
while wait()do
thetext=box.Text
for text in string.gmatch(thetext,"%w+") do
    local br=doWord(text,l(torso,0,sc/2,-3,PI/2,PI),sc,col or tostring(BrickColor.random()),{[3]='White'})
    wait(1)
    br()wait'.5'
end   
end


-- part=Part(4,4,4,'Cyan',.5)Weld(_1,torso)