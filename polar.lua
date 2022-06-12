
--[[
	grub's polar grapher
	
	defaults:
		max_theta=6.28
		min_theta=0
		thetastep=0.13
		r(theta)=
	
	commands:
	run
	
--]]


vars={
	max_theta=6.28;
min_theta=0;
thetastep=0.13;
}
iver=nil
table.foreach(math, function(k,v)getfenv(0)[k]=v;end)
function getvar(name)
	local f, err = loadstring("varreceiver="..mathstr(vars[name]))
	if f then
		f()
		return varreceiver
	elseif err then
		print("error getting var \"", name, err)
		return nil
	end
end

function setvar(name, value)
	vars[name..""]=value..""
end

function mathstr(str)
	return str:gsub("(%d+)%s*(%a+)", "%1*%2")
end

parts={}
function parseChat(msg)
	print("parsing:",msg)
	if msg:match("(.+)=(.+)") then
		setvar(msg:match("(.+)=(.+)"))
	elseif msg:match("get .+") then
		print(vars[msg:match("get (.+)")])
	elseif msg:match"run" then
		for _, p in ipairs(parts) do
			if p then
				p:Destroy()
			end
		end
		for t=vars.min_theta, vars.max_theta, vars.thetastep do
			theta=t
			local p=Instance.new("Part")
			p.Parent=workspace
			p.Anchored=true
			p.CanCollide=false
			p.FormFactor="Custom"
			p.Size=Vector3.new(.2, .2, .2)
			p.CFrame=CFrame.new(CFrame.Angles(0, t, 0)*Vector3.new(0,5,getvar("r(theta)")))
			
			
		end
	end
end
wait(1)
setvar("r(theta)", "theta")
parseChat"run"
table.foreach(game.Players:GetPlayers(), function(_,p)p.Chatted:connect(parseChat)end)