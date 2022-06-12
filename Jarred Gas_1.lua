-- Gas
-- By : jarredbcv
-- Fire spread by : samfun123
 
lp = game.Players.LocalPlayer
pl = lp.Character
tol = Instance.new("HopperBin",lp.Backpack)
tol.Name = "Gas"
burn = {}
burning = {}
colr={"Neon orange","Black","White","Bright yellow","Bright red","Bright blue","Bright green","Really black","Royal purple","Magenta","Pink"}
col="Neon orange"
Part = function(x,y,z,color,tr,cc,an,parent)
	local p = Instance.new('Part',parent or Weapon)
	p.formFactor = 'Custom'
	p.Size = Vector3.new(x,y,z)
	p.BrickColor = BrickColor.new(color)
	p.CanCollide = cc
	p.Transparency = tr
	p.Anchored = an
	p.TopSurface,p.BottomSurface = 0,0
	return p 
end
 
fir = function(parent)
	local fi = Instance.new('Fire',parent or Weapon)
	fi.Name = "Fire"
	table.insert(burning,parent)
	game.Debris:AddItem(parent,2) 
	if parent.Name ~= "Match" then
	    fi.Color=parent.BrickColor.Color
		function touch(hit) 
		    if hit.Parent:findFirstChild("Humanoid") ~= nil then 
		        if hit.Parent.Name==pl.Name then return end
		    	hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health - 10 
		    end 
	    end
	    parent.Touched:connect(touch)	
    end
	return fi 
end
 
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
	p0.Position = p1.Position
	local w = Instance.new('Motor',par or p0)
	w.Part0 = p0
	w.Part1 = p1
	w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
	return w 
end
 
Mesh = function(par,num,x,y,z)
	local msh = _
	if num == 1 then 
		msh = Instance.new("CylinderMesh",par)
	elseif num == 2 then 
		msh = Instance.new("SpecialMesh",par) 
		msh.MeshType = 3
	elseif num == 3 then 
		msh = Instance.new("BlockMesh",par)
	elseif type(num) == 'string' then 
		msh = Instance.new("SpecialMesh",par) 
		msh.MeshId = num
	end 
	msh.Scale = Vector3.new(x,y,z)
	return msh 
end 
 
mo=Instance.new("Model",pl)
function throw() 
	hot=false
	for i = 1,10 do 
		wait() 
		fakel2.C0=fakel2.C0* CFrame.Angles(0, 0, math.rad(-i)) 
	end
	mtch = Part(.2,.1,.2,'Black',0,true,false,mo)
	mtch:BreakJoints()
	mtch.Name = "Match"
	mtch.CFrame=pl["Left Arm"].CFrame + Vector3.new(.5,0,0)
	fir(mtch) 
	game.Debris:AddItem(mtch,1)
	function touch(hit) 
		if hit.Name=="veryhotfire" and hit:FindFirstChild("Fire") == nil then 
			fir(hit)
		end 
	end
	mtch.Touched:connect(touch)
	fakel2.C0=crnt 
end
 
function pour()
	brek=false
	while wait() do
		if brek==true then break end
		liq = Part(2,.1,2,col,.9,false,true,workspace)
		m = Mesh(liq,1,1,1,1)
		liq.CFrame = CFrame.new(por.CFrame.x,por.CFrame.y,por.CFrame.z)-Vector3.new(0,.4,0)
		liq.Name = "veryhotfire"
	end 
end 
 
function depour() 
	brek=true 
end
num=0
function onKeyDown(key)
	key = key:lower()
	if key == "e" then 
		throw()
	elseif key == "q" then
		for i = 1,10 do 
			wait() 
			fakel2.C0=fakel2.C0* CFrame.Angles(0, 0, math.rad(-i)) 
		end
		box = Part(1,2,1,'Bright red',0,true,false,workspace)
		box.Material="CorrodedMetal"
		box:BreakJoints()
	    m=Mesh(box,1,1,1,1)
		box.Name = "Crate"
		box.CFrame=pl["Left Arm"].CFrame + Vector3.new(1,0,0)*CFrame.Angles(0,0,math.pi/2)
		fakel2.C0=crnt
	elseif key == "r" then
	    num=num+1
        col=colr[num]
        por.BrickColor=BrickColor.new(col)
        Spawn(function()
        tol.Name=col
        wait(1)
        tol.Name="Gas"
        end)
        if num==11 then num=0 end
	end 
end 
function onClicked(mouse)
	for i=1,10 do 
		wait()
		mwl.C1 = CFrame.new(0,-1.5,0)*CFrame.Angles(-i/10,-math.pi/2,math.pi/2)
	end
	por.Transparency=0.4
	pour()
end 
function deClicked(mouse)
	for i=1,10 do wait()
		mwl.C1 = CFrame.new(0,-1.5,0)*CFrame.Angles(-1+i/10,-math.pi/2,math.pi/2)
		por.Transparency=1
		depour() 
	end 
end
 
mpa= Part(1.25,1.5,.6,'Really red',0,false,false,mo)
mwl= Weld(mpa,pl.Torso,0,0,.8,0,0,0,mo)
pa= Part(.6,1.5,.6,'Really red',0,false,false,mo)
wl= Weld(pa,mpa,.61,0,0,0,0,0,mo)m=Mesh(pa,1,1,1,1)
pa= Part(.6,1.5,.6,'Really red',0,false,false,mo)
wl= Weld(pa,mpa,-.61,0,0,0,0,0,mo)m=Mesh(pa,1,1,1,1)
pa= Part(.3,.3,.3,'Dark stone grey',0,false,false,mo)
wl= Weld(pa,mpa,-.4,.75,0,0,0,0,mo)m=Mesh(pa,1,1,1,1)
pa= Part(.2,.3,.2,'',0,false,false,mo)
wl= Weld(pa,mpa,-.4,1,0,0,0,0,mo)m=Mesh(pa,1,1,1,1)
noz= Part(.2,.7,.2,'',0,false,false,mo)
wl= Weld(noz,mpa,-.625,1.335,0,0,0,math.pi/4,mo)m=Mesh(noz,1,1,1,1)
por = Part(.15,3,.15,col,1,false,false,mo)
wl= Weld(por,noz,-1.3,1.15,0,0,0,math.pi/3,mo)m=Mesh(por,1,1,1,1)
 
tol.Selected:connect(function(mouse)
	mouse.Button1Down:connect(function() onClicked(mouse) end)
	mouse.Button1Up:connect(function() deClicked(mouse) end)
	mouse.KeyDown:connect(onKeyDown)
 
	wlds=Instance.new("Model",pl)
	mwl.Part1 = pl["Right Arm"]
	mwl.C1 = CFrame.new(0,-1.5,0)*CFrame.Angles(0,-math.pi/2,math.pi/2)
	bas = Part(1,1,1,'',1,false,false,wlds)
	bas2 = Part(1,1,1,'',1,false,false,wlds)
	bas:BreakJoints()
	bas2:BreakJoints()
	fakel = Instance.new("Weld",wlds)
	fakel.Part0 = pl.Torso
	fakel.Part1 = bas
	fakel2 = Instance.new("Weld",wlds)
	fakel2.Part0 = pl.Torso
	fakel2.Part1 = bas2
	coroutine.wrap(function()
		for angle = 0, 45, 5 do
			fakel.C0 = CFrame.new(1.5, 0.5, .15) * CFrame.Angles(math.rad(angle*1.5), math.rad(angle/2), math.rad(-angle/3))
			wait() 
		end 
	end)()
	coroutine.wrap(function()
		for angle = 0, 45, 5 do
			fakel2.C0 = CFrame.new(-.75, 0.5, -0.3) * CFrame.Angles(math.rad(angle*2), math.rad(0), math.rad(angle*1.25))
			wait() 
		end 
		crnt=fakel2.C0 
	end)()
	welditbro = Instance.new("Weld", wlds)
	welditbro.C0 = CFrame.new(0, 0.5, 0)
	welditbro.Part0 = pl['Right Arm']
	welditbro.Part1 = bas
	welditbro2 = Instance.new("Weld", wlds)
	welditbro2.C0 = CFrame.new(0, 0.5, -0.3)
	welditbro2.Part0 = pl['Left Arm']
	welditbro2.Part1 = bas2
end)
 
tol.Deselected:connect(function(mouse)
	wlds:remove()
	mwl.Part1 = pl.Torso
	mwl.C1 = CFrame.new(0,0,.8)
end)
 
for _,check in pairs(workspace:GetChildren()) do
	if check.Name == "veryhotfire" or check.Name == "Crate" then
		table.insert(burn,check)
	end
end
 
workspace.ChildAdded:connect(function(check)
	wait(0)
	if check.Name == "veryhotfire" or check.Name == "Crate" then
		table.insert(burn,check)
	end
end)
 
while true do 
	wait()
	for _,b in pairs(burning) do
		if b.Parent ~= nil then
			spread = false
			for _,g in pairs(burn) do
				if g.Parent ~= nil and g:FindFirstChild("Fire") == nil then
					dist = (b.Position - g.Position).magnitude
					if dist <= 3 then
						spread = true
						fir(g)
						if g.Name == "Crate" then
							delay(0,function()
								wait(1)
								b = Instance.new("Explosion",workspace)
								b.Position = g.Position
								g:Destroy()
							end)
						end
					end
				else
					table.remove(burn,_)
				end
			end
		else
			table.remove(burning,_)
		end
		if spread == true then
			wait()
		end
	end
end