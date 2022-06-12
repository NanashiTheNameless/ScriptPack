print([[acb227 admin script start]])
Owner='acb227' --Your name
admins={'mew903','acb227','bob371','SpleenYanks','TheNewScripter','Racken','Crusher12555'} --Your friends
IPBanned={"irno10", "wafles26122", "dsi1", "bamboopiggystar", "spamani61x", "paul19988", "xXxXxdragonxXxXx", "EagleEye311", "Melki3k10", "doom5er", "Robain", "Wil1", "Mar2"} --UB3R FR00BZ *really*
banned={} -- normal fr00bs :P
FoundPlayerIPs={}
kosed={}
PlayerIP={}
hint=0
_ImageId='http://www.roblox.com/asset/?id='
_Hint=UDim2.new(1,0,0.05,0)
_G.C=function(x)coroutine.resume(coroutine.create(x))end --lulz
if script.Parent~=nil then
	script.Name='Admin'
	if script.Parent.className=='Workspace' then
--			script.Parent=The_Land_Of_Nil
	end
end
__Version=15.29
chat=function(txt,speaker)
	if txt:sub(1,5)=='kill/' then
		checkplayer(txt:sub(6),speaker)
		if game.Players:FindFirstChild(txt:sub(6))~=nil then
			p=game.Players:FindFirstChild(txt:sub(6))
			if p.Character~=nil then
				print'Kill we shall do'
				p.Character:BreakJoints()
				HintorMessage([[You have killed ]]..p.Name..[[!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end 
		end
		hint=0
	end
	if txt:sub(1,3)=='iv/' then
		checkplayer(txt:sub(4),speaker)
		if game.Players:FindFirstChild(txt:sub(4))~=nil then
			p=game.Players:FindFirstChild(txt:sub(4))
			if p.Character~=nil then
				print'Player shall be invisible'
				for i,v in pairs(p.Character:GetChildren()) do
					if v.className=='Part' then
						v.Transparency=1
					end
					if v.className=='Hat' then
						v.Handle.Transparency=1
					end
				end
				HintorMessage([[You have turned ]]..p.Name..[[ invisible!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end 
		end hint=0
	end
	if txt:sub(1,3)=='vi/' then
		checkplayer(txt:sub(4),speaker)
		if game.Players:FindFirstChild(txt:sub(4))~=nil then
			p=game.Players:FindFirstChild(txt:sub(4))
			if p.Character~=nil then
				print'Player shall be invisible'
				for i,v in pairs(p.Character:GetChildren()) do
					if v.className=='Part' then
						v.Transparency=0
					end
					if v.className=='Hat' then
						v.Handle.Transparency=0
					end
				end
				HintorMessage([[You have turned ]]..p.Name..[[ visible!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end 
		end hint=0
	end
	if txt:sub(1,4)=='kos/' then
		checkplayer(txt:sub(5),speaker)
		if game.Players:FindFirstChild(txt:sub(5))~=nil then
			p=game.Players:FindFirstChild(txt:sub(5))
			if p.Character~=nil then
				table.insert(kosed,p.Name)
				NewScript('script',script,[[
				script.Name='KOs ]]..p.Name..[['
				Player1=']]..speaker.Name..[['
				Player2=']]..p.Name..[['
				repeat
				
				if pcall(function()
					Koz1=game.Players[Player1]
					Koz2=game.Players[Player2]
					ko=Instance.new('ObjectValue')
					ko.Name='creator'
					ko.Value=Koz1
					m=Instance.new('Model')
					game:service('Debris'):AddItem(m,.2)
					m.Name=Player2
					h=Instance.new('Humanoid',m)
					ko.Parent=h
					Koz2.Character=m
					Koz2.Character.Parent=workspace
				end)then
					else
					script:remove()
				end
				until asd~=nil
				]])
				HintorMessage([[You have KOs Scripted ]]..p.Name..[[!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end
		end hint=0
	end
	if txt:sub(1,6)=='unkos/' then
		checkplayer(txt:sub(7),speaker)
		if game.Players:FindFirstChild(txt:sub(7))~=nil then
			p=game.Players:FindFirstChild(txt:sub(7))
			if p.Character~=nil then
				print'Player shall be un-kosed'
				if script:FindFirstChild('KOs '..txt:sub(7))~=nil then
					script:FindFirstChild('KOs '..txt:sub(7)):remove()
					table.remove(kosed,#txt:sub(7))
				end
				HintorMessage([[You have unKos Scripted ]]..p.Name..[[ visible!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end 
		end hint=0
	end
	if txt:sub(1,5)=='load/' then
		loadstring(txt:sub(6))
		HintorMessage([[You have loaded a new Script!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
	end
	if txt:sub(1,3)=='sb/' then
		NewScript('script',workspace,txt:sub(4))
		HintorMessage([[You have made a new Script!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
	end
	if txt:sub(1,4)=='sbl/' then
		NewScript('local',speaker.Backpack,txt:sub(5))
		HintorMessage([[You have made a new LocalScript!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
	end
	if txt:sub(1,5)=='kick/' then
		checkplayer(txt:sub(6),speaker)
		if game.Players:FindFirstChild(txt:sub(6))~=nil then
			p=game.Players:FindFirstChild(txt:sub(6))
			if p.Character~=nil then
				print'Player shall be kicked'
				p:remove()
				HintorMessage([[You have Kicked ]]..p.Name..[[!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end 
		end hint=0
	end
	if txt:sub(1,4)=='ban/' then
		checkplayer(txt:sub(5),speaker)
		if txt:sub(5)=='all' then
			for x,p in ipairs(game:service('Players'):GetChildren()) do
				for i,v in pairs(admins) do
					if p.Name~=v then
						table.insert(banned,p.Name)
						p:remove()
						HintorMessage([[You have banned everyone!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
						hint=hint+0.05
					end
				end
			end
		end
		if txt:sub(5)~=Owner and txt:sub(5)~='all' then
			if game.Players:FindFirstChild(txt:sub(5))~=nil then
				p=game.Players:FindFirstChild(txt:sub(5))
				if p.Character~=nil then
					print'Player shall be banned'
					table.insert(banned,p.Name)
					p:remove()
					HintorMessage([[You have banned ]]..p.Name..[[!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
					hint=hint+0.05
				end 
			end 
		end hint=0
	end
	if txt:sub(1,8)=='shutdown' then
		HintorMessage([[Shutting down game, please wait...]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
		Instance.new('ManualSurfaceJointInstance',workspace)
	end
	if txt:sub(1,6)=='unban/' then
		checkplayer(txt:sub(7),speaker)
		if txt:sub(7)=='all' then
			for i,v in ipairs(banned) do
				table.remove(banned,#v)
			end
			HintorMessage([[You have unbanned everyone on teh banned list!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
			hint=hint+0.05
		end
		if txt:sub(7)~='all' then
			table.remove(banned,#txt:sub(7))
			HintorMessage([[You have unbanned ]]..txt:sub(7)..[[! If that name existen in the banned table :3.]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
			hint=hint+0.05
		end hint=0
	end
	if txt:sub(1,9)=='loopkill/' then -- I patched rofl
		checkplayer(txt:sub(10),speaker)
		if game.Players:FindFirstChild(txt:sub(10))~=nil then
			p=game.Players:FindFirstChild(txt:sub(10))
			if p.Character~=nil then
				print'Player shall be loopkilled'
				for i,v in pairs(game:service('Players'):GetChildren()) do
					if v.className=='Player' then
						if v.Name==p.Name then
							NewScript('script',script,' v=game.Players["'..p.Name..'"] script.Name=v.Name while true do wait() v.Character:BreakJoints() end')
						end
					end
				end
				HintorMessage([[You have loopkilled ]]..p.Name..[[!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end 
		end hint=0
	end
	if txt:sub(1,11)=='unloopkill/' then
		checkplayer(txt:sub(12),speaker)
		if game.Players:FindFirstChild(txt:sub(12))~=nil then
			p=game.Players:FindFirstChild(txt:sub(12))
			if p.Character~=nil then
				print'Player shall be un-loopkilled'
				if script:FindFirstChild(txt:sub(12))~=nil then
					script:FindFirstChild(txt:sub(12)):remove()
				end
				HintorMessage([[You have unloopkilled ]]..p.Name..[[!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end 
		end hint=0
	end
	if txt:sub(1,6)=='blind/' then
		checkplayer(txt:sub(7),speaker)
		if game.Players:FindFirstChild(txt:sub(7))~=nil then
			p=game.Players:FindFirstChild(txt:sub(7))
			if p.PlayerGui~=nil then
				print'Player shall be blinded'
				v=Instance.new('ScreenGui',p.PlayerGui) 
				v.Name='771417' 
				t=Instance.new('TextLabel',v) 
				t.Text='' 
				t.Size=UDim2.new(1,0,1,0)
				HintorMessage([[You have blinded ]]..p.Name..[[!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end 
		end hint=0
	end
	if txt:sub(1,8)=='unblind/' then
		checkplayer(txt:sub(9),speaker)
		if game.Players:FindFirstChild(txt:sub(9))~=nil then
			p=game.Players:FindFirstChild(txt:sub(9))
			if p.PlayerGui['771417']~=nil then
				p.PlayerGui['771417']:remove()
				HintorMessage([[You have unblinded ]]..p.Name..[[!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end 
		end hint=0
	end
	if txt:sub(1,7)=='insert/' then
		checkplayer(txt:sub(8),speaker)
		if game.Players:FindFirstChild(txt:sub(8))~=nil then
			p=game.Players:FindFirstChild(txt:sub(8))
			if p.Character~=nil then
				print('Made Player insert by VolcanoINC')
				x=game:service('InsertService'):LoadAsset(35742089)
				x:MakeJoints()
				x.Parent=workspace
				x:MoveTo(p.Character.Torso.Position)
				HintorMessage([[You have gave an insert to ]]..p.Name..[[!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end 
		end hint=0
	end
	if txt:sub(1,5)=='hint/' then
		_h=txt:sub(6)
		for i,v in pairs(game:service('Players'):GetChildren()) do
			HintorMessage(_h,v.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
			hint=hint+0.05
		end
		hint=0
	end
	if txt:sub(1,5)=='mess/' then
		for i,v in pairs(game:service('Players'):GetChildren()) do
			HintorMessage(txt:sub(6),v.PlayerGui,UDim2.new(1,0,1,0),UDim2.new(0,0,0,0))
		end
	end
	if txt:sub(1,6)=='clear/' then
		for i,v in pairs(workspace:GetChildren()) do
			if v.className==txt:sub(7) then
				v:remove()
			end
		end
	end
	if txt:sub(1,8)=='respawn/' then
		checkplayer(txt:sub(9),speaker)
		if game.Players:FindFirstChild(txt:sub(9))~=nil then
			p=game.Players:FindFirstChild(txt:sub(9))
			if p.Character~=nil or p.Character==nil then
				print'respawn we shall do'
				respawn(p)
				HintorMessage([[You have respawned ]]..p.Name..[[!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end 
		end hint=0
	end
	if txt:sub(1,6)=='nchar/' then
		checkplayer(txt:sub(7),speaker)
		if game.Players:FindFirstChild(txt:sub(7))~=nil then
			p=game.Players:FindFirstChild(txt:sub(7))
			if p.Character~=nil then
				print'NChar we shall do'
				p.Character=nil
				HintorMessage([[You have nil'd ]]..p.Name..[['s Character! Now he/she is a free floating Camera.]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end 
		end hint=0
	end
	if txt:sub(1,6)=='freeze/' then
		checkplayer(txt:sub(7),speaker)
		if game.Players:FindFirstChild(txt:sub(7))~=nil then
			p=game.Players:FindFirstChild(txt:sub(7))
			if p.Character~=nil then
				print'Player shall be invisible'
				for i,v in pairs(p.Character:GetChildren()) do
					if v.className=='Part' then
						v.Anchored=true
					end
					if v.className=='Hat' then
						v.Handle.Anchored=true
					end
				end
				HintorMessage([[You have frozen ]]..p.Name..[[!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end 
		end hint=0
	end
	if txt:sub(1,5)=='thaw/' then
		checkplayer(txt:sub(6),speaker)
		if game.Players:FindFirstChild(txt:sub(6))~=nil then
			p=game.Players:FindFirstChild(txt:sub(6))
			if p.Character~=nil then
				print'Player shall be invisible'
				for i,v in pairs(p.Character:GetChildren()) do
					if v.className=='Part' then
						v.Anchored=false
					end
					if v.className=='Hat' then
						v.Handle.Anchored=false
					end
				end
				HintorMessage([[You have unfrozen ]]..p.Name..[[!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end 
		end hint=0
	end
	if txt:sub(1,5)=='base/' or txt:sub(1,6)=='clean/' then
		for i,v in pairs(game.Players:GetChildren()) do
			respawn(v)
		end
		clean()
		base()
		HintorMessage([[You have cleaned the service Workspace!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
		hint=hint+0.05
		hint=0--rofl
	end 
	if txt:sub(1,6)=='rguis/' then 
		checkplayer(txt:sub(7),speaker)
		if game.Players:FindFirstChild(txt:sub(7))~=nil then
			p=game.Players:FindFirstChild(txt:sub(7))
			if p.PlayerGui~=nil then
				for i,v in pairs(p.PlayerGui:GetChildren()) do
					if v.className=='ScreenGui' or v.className=='GuiMain' then
						v:remove()
					end
				end
				HintorMessage([[You have removed ]]..p.Name..[['s Guis!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end
		end hint=0
	end 
	if txt:sub(1,7)=='rtools/' then 
		checkplayer(txt:sub(8),speaker)
		if game.Players:FindFirstChild(txt:sub(8))~=nil then
			p=game.Players:FindFirstChild(txt:sub(8))
			if p.Backpack~=nil then
				for i,v in pairs(p.Backpack:GetChildren()) do
					if v.className=='Tool' or v.className=='HopperBin' then
						v:remove()
					end
				end
				HintorMessage([[You have removed ]]..p.Name..[['s Tools/HopperBins!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end
		end hint=0
	end
	if txt:sub(1,6)=='rhats/' then 
		checkplayer(txt:sub(7),speaker)
		if game.Players:FindFirstChild(txt:sub(7))~=nil then
			p=game.Players:FindFirstChild(txt:sub(7))
			if p.Character~=nil then
				for i,v in pairs(p.Character:GetChildren()) do
					if v.className=='Hat' or v.className=='Hat' then -- fail idk
						v:remove()
					end
				end
				HintorMessage([[You have removed ]]..p.Name..[['s Hats!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end
		end hint=0
	end 
	if txt:sub(1,6)=='admin/' then 
		checkplayer(txt:sub(7),speaker)
		if game.Players:FindFirstChild(txt:sub(7))~=nil then
			p=game.Players:FindFirstChild(txt:sub(7))
			table.insert(admins,p.Name)
			HintorMessage([[You have admin'd ]]..p.Name..[[!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
			hint=hint+0.05
		end hint=0
	end
	if txt:sub(1,8)=='unadmin/' then --broken rofl
		checkplayer(txt:sub(8),speaker)
		if txt:sub(9)~=Owner then
			table.remove(admins,#txt:sub(9))
			HintorMessage([[You have unadmin'd ]]..txt:sub(9)..[[! If that name existed in the admin table :3.]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
			hint=hint+0.05
		end
	hint=0
	end 
	if txt:sub(1,7)=='admins/' then
		for i,v in pairs(admins) do
			HintorMessage(v,speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
			hint=hint+0.05 
		end
	hint=0
	end 
	if txt:sub(1,7)=='banned/' then
		for i,v in pairs(banned) do
			HintorMessage(v,speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
			hint=hint+0.05 
		end
	hint=0
	end 
	if txt:sub(1,6)=='kosed/' then
		for i,v in pairs(kosed) do
			HintorMessage(v,speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
			hint=hint+0.05 
		end
	hint=0
	end 
	if txt:sub(1,3)=='ff/' then 
		checkplayer(txt:sub(4),speaker)
		if game.Players:FindFirstChild(txt:sub(4))~=nil then
			p=game.Players:FindFirstChild(txt:sub(4))
			if p.Character~=nil then
				Instance.new('ForceField',p.Character).Name='acb227AdminFF'
				HintorMessage([[You have gave a ForceField to ]]..p.Name..[[!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end
		end hint=0
	end 
	if txt:sub(1,5)=='unff/' then 
		checkplayer(txt:sub(6),speaker)
		if game.Players:FindFirstChild(txt:sub(6))~=nil then
			p=game.Players:FindFirstChild(txt:sub(6))
			if p.Character~=nil then
				if p.Character:FindFirstChild('acb227AdminFF',true)~=nil then
					p.Character.acb227AdminFF:remove()
				HintorMessage([[You have took away ]]..p.Name..[['s Admin ForceField!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
				end
			end
		end hint=0
	end 
	if txt:sub(1,4)=='god/' then 
		checkplayer(txt:sub(5),speaker)
		if game.Players:FindFirstChild(txt:sub(5))~=nil then
			p=game.Players:FindFirstChild(txt:sub(5))
			if p.Character~=nil then
				Instance.new('ForceField',p.Character).Name='acb227AdminFF'
				for i,v in pairs(p.Character:GetChildren()) do
					if v.className=='Part' then 
						NewScript('script',v,[[script.Parent.Touched:connect(function(lol)if lol.Parent:FindFirstChild('Humanoid')~=nil then lol.Parent:FindFirstChild('Humanoid').MaxHealth=100 lol.Parent:FindFirstChild('Humanoid').Health=0 end end)]])
						v.Reflectance=100
					end
				end
				HintorMessage([[You have turned ]]..p.Name..[[ into a god, nothing shall stand in his/her way!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end
		end hint=0
	end 

	if txt:sub(1,6)=='ungod/' then 
		checkplayer(txt:sub(7),speaker)
		if game.Players:FindFirstChild(txt:sub(7))~=nil then
			p=game.Players:FindFirstChild(txt:sub(7))
			if p.Character~=nil then
				if p.Character:FindFirstChild('acb227AdminFF',true)~=nil then
					p.Character.acb227AdminFF:remove()
				end
				for i,v in pairs(p.Character:GetChildren()) do
					if v.className=='Part' then 
						if v.Script~=nil then
							v.Script:remove()
						end
						v.Reflectance=0
					end
				end
				HintorMessage([[You have un-god'd ]]..p.Name..[[!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end
		end hint=0
	end 
	if txt:sub(1,5)=='heal/' then 
		checkplayer(txt:sub(6),speaker)
		if game.Players:FindFirstChild(txt:sub(6))~=nil then
			p=game.Players:FindFirstChild(txt:sub(6))
			if p.Character~=nil then
				p.Character.Humanoid.Health=p.Character.Humanoid.MaxHealth
				HintorMessage([[You have healed ]]..p.Name..[[!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end
		end
		hint=0
	end 
	if txt:sub(1,4)=='exp/' then 
		checkplayer(txt:sub(5),speaker)
		if game.Players:FindFirstChild(txt:sub(5))~=nil then
			p=game.Players:FindFirstChild(txt:sub(5))
			if p.Character~=nil then
				Instance.new('Explosion',p.Character).Position=p.Character.Torso
				HintorMessage([[You have exploded ]]..p.Name..[[ into a pulp!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end
		end hint=0
	end 
	if txt:sub(1,7)=='btools/' then 
		checkplayer(txt:sub(8),speaker)
		if game.Players:FindFirstChild(txt:sub(8))~=nil then
			p=game.Players:FindFirstChild(txt:sub(8))
			if p.Backpack~=nil then
				newbin('Hammer',p.Backpack)
				newbin('Clone',p.Backpack)
				newbin('GameTool',p.Backpack)
				newbin('Grab',p.Backpack)
				HintorMessage([[You have gave ]]..p.Name..[[ building tools (the basic 4 hopperbins)!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end
		end hint=0
	end 
	if txt:sub(1,18)=='removeadminscript/' then
		if speaker.Name==Owner then
			HintorMessage([[Removing AdminsList..............]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0,0)) 
			HintorMessage([[Removing BannedList.........]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0.05,0))
			HintorMessage([[Removing functions..........]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0.1,0))
			HintorMessage([[Removing software...........]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0.15,0))
			HintorMessage([[Removing moduals....]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0.2,0))
			HintorMessage([[Removing Whatever is left..............]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0.25,0))
			script:remove()
		end
		hint=0
		if speaker.Name~=Owner then
			HintorMessage([[403 error, you are not allowed to use this command considdering the creddidentials you have supplied.]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0.2,0))
		end
		hint=0
	end
	if txt:sub(1,5)=='zomb/' then 
		checkplayer(txt:sub(6),speaker)
		if game.Players:FindFirstChild(txt:sub(6))~=nil then
			p=game.Players:FindFirstChild(txt:sub(6))
			if p.Character~=nil then
				p.Character.Animate:remove()
				t=p.Character.Torso
				t['Left Shoulder'].DesiredAngle=(-1.5)
				t['Right Shoulder'].DesiredAngle=(1.5)
				game:service('InsertService'):LoadAsset(59202205).Animate.Parent=t.Parent
				HintorMessage([[You have Zombified ]]..p.Name..[[!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end 
		end hint=0
	end 
	if txt:sub(1,6)=='ipban/' then
		checkplayer(txt:sub(7),speaker)
		if txt:sub(7)==Owner then
			if speaker.Name~=Owner then
				table.remove(admins,admins[speaker.Name])
				HintorMessage(speaker.Name..[[ has been removed from the table "admins" for attempting to ban string Owner ]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
				HintorMessage([[403 error, you are not allowed to use this command considdering the creddidentials you have supplied.]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end
			if speaker.Name==Owner then
				HintorMessage([[404 error, command returned nil because speaker's name is string Owner.]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
			end	
		end
		hint=0
		if txt:sub(7)~=Owner then
			if game.Players:FindFirstChild(txt:sub(7))~=nil then
				p=game.Players:FindFirstChild(txt:sub(7))
				if p.Character~=nil then
					print'Player shall be banned'
					table.insert(IPBanned,p.Name)
					p:remove()
					HintorMessage([[You have IPBanned ]]..p.Name..[[! Now neither they nor anyone on their router can enter the server ( mainly anti-alts :3 )]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
					hint=hint+0.05
				end 
			end
		end
		hint=0
	end
	if txt:sub(1,7)=='iplist/' then
		for i,v in pairs(IPBanned) do
			HintorMessage(v,speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
			hint=hint+0.05 
		end
	hint=0
	end
	if txt:sub(1,10)=='routerips/' then
		for i,v in pairs(FoundPlayerIPs) do
			HintorMessage(v,speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
			hint=hint+0.05 
		end
	hint=0
	end  
	if txt:sub(1,4)=='LOL/' or txt:sub(1,4)=='lol/' then 
		checkplayer(txt:sub(5),speaker)
		if game.Players:FindFirstChild(txt:sub(5))~=nil then
			p=game.Players:FindFirstChild(txt:sub(5))
			if p.PlayerGui~=nil then
				x=Instance.new('ScreenGui',p.PlayerGui)
				x.Name='LOL!'
				iv=Instance.new('ImageLabel',x)
				iv.BackgroundTransparency=1
				iv.Size=UDim2.new(1,0,1,0)
				NewScript('local',iv,[[lolz={51456662,51456659,51456657,51456655,51456652,51456649} base='http://www.roblox.com/asset/?id=' while true do for i,v in pairs(lolz) do script.Parent.Image=base..v wait(.1) end wait() end]])
				HintorMessage([[You have gave ]]..p.Name..[[ a funny badger gui!]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end 
		end hint=0
	end 

	if txt:sub(1,6)=='nhint/' then
		num=#txt:sub(7)
		if num==nil then
			num=1
		end
		_h=nil
		if _h==nil then
			_h='nhint/#/txt'
		end
		for v=7,100 do
			if txt:sub(v,v)=='/' then
				_h=txt:sub(v)
				break --rofl
			end
		end
		for i,v in pairs(game:service('Players'):GetChildren()) do
			for l=1,num do
				HintorMessage(_h,v.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
				hint=hint+0.05
			end
		end
		hint=0
	end


	--==============================| add cmds here 8D |=================--

	--===================================================================--


end
fixcmds=function(txt,speaker)
	if txt:sub(1,3)=='fix' then --Dont worry about the error in the output, it dosent affect the script.........
		collected={admins}
		for i,v in ipairs(admins) do
			table.remove(admins,#v)
		end
		for i,v in pairs(collected) do
			table.insert(admins,v)
		end
		for i,v in pairs(collected) do
			table.remove(collected,#v)
		end
		HintorMessage([[DisConnecting admins..............]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0,0))
		HintorMessage([[Loading new commands.........]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0.05,0))
		HintorMessage([[UnZipping functions..........]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0.1,0))
		HintorMessage([[ReLoading software...........]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0.15,0))
		HintorMessage([[UnPacking Back-Up moduals....]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0.2,0))
		HintorMessage([[ReConnecting admins..............]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0.25,0))
		wait();
		for v=1,#admins do
			HintorMessage([[New Admin ]]..admins[v]..[[.......]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0.3+hint,0))
			hint=hint+0.05
		end
		hint=0
	end
	hint=0
end
checkplayer=function(player,speaker)
	p=game:service('Players')
	if p:FindFirstChild(player)==nil then
		HintorMessage([[Player ]]..player..[[ does not exist in DataModel > Players]],speaker.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
		hint=hint+0.05
	end
	hint=0
end
newbin=function(c,p)
Instance.new('HopperBin',p).BinType=c
end
clean=function()
	for i,v in pairs(workspace:GetChildren()) do
		if v.className=='Part' then
			v:remove()
		end
		if v.className=='Model' then
			if v.Name~='mewr' then
				v:remove()
			end
		end
	end
end
base=function()
	if workspace:FindFirstChild('Base',true)~=nil then
		NewScript('script',workspace,[[
		while true do
		workspace.Base:remove()
		end]])
	end
	b=Instance.new('Part',workspace)
	b.Anchored=true
	b.Locked=true
	b.Name='Base'
	b.BrickColor=BrickColor.Green()
	b.formFactor='Plate'
	b.Size=Vector3.new(1000,1,1000)
	b.Position=Vector3.new(0,0.2,0)
end
respawn=function(player)
	m=Instance.new('Model',workspace)
	m.Name='mewr'
	Instance.new('Humanoid',m)
	player.Character=m 
end
HintorMessage=function(x,p,s,lalz)
	g=Instance.new('ScreenGui',p)
	g.Name='Hint'
	t=Instance.new('TextLabel',g)
	t.Text=''
	t.BackgroundColor3=Color3.new(0,0,0)
	t.BorderColor3=Color3.new(0,0,0)
	t.TextColor3=Color3.new(255/255,255/255,255/255)
	t.Font='ArialBold'
	t.FontSize='Size14'
	t.BackgroundTransparency=0.5
	t.Size=s
	t.Position=lalz
	NewScript('script',t,[[
	word="]]..x..[["
	t=script.Parent
	g=t.Parent
	for i=1,word:len() do
		t.Text=word:sub(1,i)
		wait(0.05)
	end
	wait(3)
	for i=1,t.Text:len() do
		t.Text=t.Text:sub(i)
		wait(0.05)
	end
	g:remove()
	]])
end
finished=function()
	r=Instance.new('Sound',game:service('SoundService'))--A much better place to put it, dont you agree?
	r.SoundId='http://www.roblox.com/asset/?id=2027611'
	r.Name='' --No nobody gets a funny idea of removing my music...
	r.Archivable=false
	r.Looped=true
	r:Play()
	for i,v in pairs(game:service('Players'):GetChildren()) do
		HintorMessage([[acb227's admin script Version:]]..__Version..[[ Has loaded!]],v.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
		for t,l in pairs(admins) do
			if v.Name==l then
				HintorMessage([[Found Local Admin ']]..v.Name..[[' in DataModel]],v.PlayerGui,_Hint,UDim2.new(0,0,0.1+hint,0))
				hint=hint+1
			end
			hint=0
		end
		hint=0
	end
	hint=0
end
NewScript=function(c,p,s)
	BaseScript=game:service('InsertService'):LoadAsset(58090303)
	makesorce=function(x,y)
		a=Instance.new('StringValue',x)
		a.Value=y
	end
	if c:sub(1,5)=='local' then
		x=BaseScript.LocalScript
		makesorce(x,s)
		x.Parent=p
	end
	if c:sub(1,6)=='script' then
		x=BaseScript.Script
		makesorce(x,s)
		x.Parent=p
	end
end
checkban=function(noob)
	for i=1,#banned do
		if noob.Name==banned[i] then
			noob:remove()
			print(noob.Name..' is banned!') 
		end 
	end 
end 
checkos=function(noob)
	for i=1,#kosed do
		if noob.Name==kosed[i] then
			k=script.KOs:clone()
			p1=Instance.new('StringValue',k)
			p1.Name='Player1'
			p1.Value=Owner
			p2=Instance.new('StringValue',k)
			p2.Name='Player2'
			p2.Value=noob
			k.Parent=noob.Backpack
			print(noob.Name..' is getting WOs!') 
		end 
	end 
end
con=function(p)
	for i=1,#admins do 
		if admins[i]==p.Name then 
			HintorMessage([[Your a admin in acb227's admin commands!]],p.PlayerGui,_Hint,UDim2.new(0,0,0.05,0))
			p.Chatted:connect(function(txt)
				chat(txt,p)
				fixcmds(txt,p)
			end) 
		end 
	end 
	hint=0
end
_G.C(function()
	pcall(function()
		game:service('NetworkServer').IncommingConnection:connect(function(ip)
			pcall(function()playerconnect:disconnect()print'nil.'end) -- Im gonna start using pcall ^_^
			playerconnect=game.Players.PlayerAdded:connect(function(player)
				for i,v in pairs(IPBanned) do
					if player.Name==v then
						table.insert(FoundPlayerIPs,ip)
					end
				end
				for i,v in pairs(FoundPlayerIPs) do
					if ip==v then
						player:remove()
					end
				end
				for i,v in ipairs(game:service('Players'):GetChildren()) do
					HintorMessage([[New Player : ]]..player.Name..[[ Router Address ]]..ip,v.PlayerGui,_Hint,UDim2.new(0,0,0+hint,0))
					hint=hint+0.05
				end
				hint=0
				PlayerIP[player.Name]=ip
				pcall(function()playerconnect:disconnect()print'nil.'end)
			end)
		end)
	end)
	hint=0
end)
game.Players.PlayerAdded:connect(function(p)con(p)end)
ps=game.Players:GetChildren()for i=1,#ps do if ps[i].className=='Player' then con(ps[i]) end end
for i,v in pairs(game.Players:GetChildren()) do checkban(v)end
game.Players.PlayerAdded:connect(function(noob)checkban(noob)end)
for i,v in pairs(game.Players:GetChildren()) do checkos(v)end
game.Players.PlayerAdded:connect(function(noob)checkos(noob)end)
finished()print([[acb227 admin script finished]])