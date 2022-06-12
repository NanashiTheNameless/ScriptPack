local function Create(ty)
	return function(data)
		local obj = Instance.new(ty)
		for k, v in pairs(data) do
			if type(k) == 'number' then
				v.Parent = obj
			else
				obj[k] = v
			end
		end
		return obj
	end
end

gmodel=Create'Model'{
	Name = "Gun";
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		CanCollide = false;
		Size = Vector3.new(0.984321058, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(31.6434193, 1.03237283, -98.7230301, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Shape = Enum.PartType.Cylinder;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.492160618, 0.492160439);
			MeshType = Enum.MeshType.Cylinder;
		};
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		CanCollide = false;
		Size = Vector3.new(0.984321058, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(31.6434193, 1.03237581, -98.476944, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Shape = Enum.PartType.Cylinder;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.492160618, 0.492160439);
			MeshType = Enum.MeshType.Cylinder;
		};
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		CanCollide = false;
		Size = Vector3.new(0.98432076, 0.200000003, 0.24608022);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(31.6434193, 1.00776577, -98.5999756, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.246080264, 1);
		};
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		Size = Vector3.new(0.344512314, 0.78745681, 0.344512314);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(32.4554634, 0.638654947, -98.5999756, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(26);
		Size = Vector3.new(0.295296252, 0.738240778, 0.369120389);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(32.4554634, 0.638655901, -98.5999756, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		CanCollide = false;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(32.0125313, 0.933940828, -98.5999756, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.615200579, 0.36912033, 0.24608025);
			MeshId = "http://www.roblox.com/asset/?id=3270017";
			MeshType = Enum.MeshType.FileMesh;
		};
	};
	Create'WedgePart'{
		CanCollide = false;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(32.0170479, 0.935147822, -98.5999756, 0, -0.86602509, 0.499999762, 0, 0.499999762, 0.86602509, -1, 0, 0);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.24608025, 0.369120389, 0.861280918);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		Size = Vector3.new(0.36912033, 0.738240659, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(32.2339973, 0.638655901, -98.5999756, 8.72865424e-009, 3.87438803e-007, 0.999992192, 0, -0.999991059, 4.08511482e-007, 0.999994576, -2.10733901e-008, 5.08757019e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 1, 0.738240719);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		CanCollide = false;
		Size = Vector3.new(0.344512254, 0.787456751, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(32.1971016, 0.638655901, -98.5999756, 8.72865424e-009, 3.87438803e-007, 0.999992192, 0, -0.999991059, 4.08511482e-007, 0.999994576, -2.10733901e-008, 5.08757019e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 1, 0.861280859);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		CanCollide = false;
		Size = Vector3.new(0.344512254, 0.787456751, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(32.7138557, 0.638651967, -98.5999756, 4.5159684e-008, 4.02331352e-007, -0.999992371, -3.53146774e-008, 0.999991238, 3.7252903e-007, 0.999994695, 4.95772667e-008, -2.77647505e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 1, 0.861280859);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		Size = Vector3.new(0.36912033, 0.738240778, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(32.67696, 0.638651967, -98.5999756, 1.2032524e-007, -3.87438803e-007, -0.999992192, -3.83273004e-008, 0.999991059, -4.08511482e-007, 0.999994576, 5.94008682e-008, 6.07211348e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 1, 0.738240719);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		Size = Vector3.new(1.47648132, 0.221472263, 0.344512314);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(31.8894806, 1.14310384, -98.5999756, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		Size = Vector3.new(0.200000003, 0.221472204, 0.221472189);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(31.1328011, 1.15540576, -98.5999756, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Shape = Enum.PartType.Cylinder;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.123040125, 1, 1);
			MeshType = Enum.MeshType.Cylinder;
		};
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		CanCollide = false;
		Size = Vector3.new(1.47648132, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(31.8894806, 1.29070473, -98.5999756, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.369120389, 0.7382406);
		};
	};
	Create'Part'{
		TopSurface = Enum.SurfaceType.Smooth;
		CanCollide = false;
		Size = Vector3.new(0.200000003, 0.270688266, 0.270688266);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(31.1389675, 1.15540576, -98.5999756, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Shape = Enum.PartType.Cylinder;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.123040125, 1, 1);
			MeshType = Enum.MeshType.Cylinder;
		};
	};
	Create'WedgePart'{
		CanCollide = false;
		Size = Vector3.new(1.47648132, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(31.8894806, 1.29070473, -98.476944, -0.999993443, 2.23674306e-007, -3.26270673e-008, 1.9387744e-007, 0.999990702, -2.20536322e-006, 6.83495429e-008, -2.22639096e-006, -0.999991059);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.369120389, 0.492160529);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		CanCollide = false;
		Size = Vector3.new(0.61520052, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(31.4588528, 1.29070473, -98.7230301, 0.999993443, -1.64078074e-007, 3.26270104e-008, 1.93873802e-007, 0.999990702, -2.20540414e-006, -6.83496282e-008, 2.18437799e-006, 0.999991059);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.369120389, 0.492160529);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		CanCollide = false;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(31.2175159, 1.32761669, -98.5999756, 1.03948793e-007, 0.37138921, 0.928470254, 4.08698497e-008, -0.92846787, 0.371388197, 0.999991357, -4.2256552e-008, -1.01011729e-007);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.24608025, 0.246080264, 0.615200639);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		CanCollide = false;
		Size = Vector3.new(0.442944348, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(32.4062653, 1.29070473, -98.7230301, 0.999993443, -1.64078074e-007, 3.26270104e-008, 1.93873802e-007, 0.999990702, -2.20540414e-006, -6.83496282e-008, 2.18437799e-006, 0.999991059);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.369120389, 0.492160529);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Friction = 2;
		TopSurface = Enum.SurfaceType.Smooth;
		CanCollide = false;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(32.5785103, 1.35222292, -98.5630493, 0.999999762, 1.70530257e-013, -2.27373675e-013, 1.70530257e-013, 1, -2.82659963e-013, -2.27373675e-013, -2.82659963e-013, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.492160469, 0.246080235, 0.123040132);
		};
	};
	Create'Part'{
		Friction = 2;
		TopSurface = Enum.SurfaceType.Smooth;
		CanCollide = false;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(32.5785103, 1.35222292, -98.6368942, 0.999999762, 1.70530257e-013, -2.27373675e-013, 1.70530257e-013, 1, -2.82659963e-013, -2.27373675e-013, -2.82659963e-013, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.492160469, 0.24608025, 0.123040132);
		};
	};
};

local t=Instance.new"Tool"
local h=Instance.new"Part"
h.Name="Handle"
h.FormFactor="Custom"
h.Size=gmodel:GetModelSize()
h.CFrame=gmodel:GetModelCFrame()
h.Parent=t
h.Transparency=1

for _, part in ipairs(gmodel:GetChildren()) do
	local w=Instance.new("Weld", h)
	w.Part0=h
	w.Part1=part
	w.C0=h.CFrame:inverse()*part.CFrame
	part.Parent=t
end
--[[
	
--]]
function lightning(startp, endp, color, vari, per, target)
	vari=vari or 1
	per=per or 5
	local len=math.min((startp.p-endp.p).magnitude, 500)
	local nparts=math.ceil(len/per)
	local ptable={}
	for i=0,nparts do
		for i=1,19 do
		math.random()
		end
		ptable[i]=Instance.new("Part", workspace)
		ptable[i].Anchored=true
		ptable[i].CanCollide=false
		ptable[i].FormFactor="Custom"
		ptable[i].TopSurface="Smooth"
		ptable[i].BottomSurface="Smooth"
		ptable[i].Transparency=.5
		ptable[i].Material="Neon"
		ptable[i].BrickColor=color or BrickColor.new("Cyan")
		game.Debris:AddItem(ptable[i], 2)
		coroutine.wrap(function()if target and (target.Parent:FindFirstChild"Humanoid" or target.Parent.Parent:FindFirstChild"Humanoid") then for x=1, 10 do wait(.05) if x%2==1 then ptable[i].BrickColor=BrickColor.new("Instituional White") else ptable[i].BrickColor=(color or BrickColor.new("Cyan")) end end end end)() 
		coroutine.wrap(function()wait(1.4);for t=.5,1,.1 do ptable[i].Transparency=t; wait(.1) end end)()
	end
	
	local pos={[0]=startp, [nparts+1]=endp}
	
	for i=1,nparts do
		local offset=CFrame.new(math.random()*vari, math.random()*vari, 0)
		pos[i]=startp:lerp(endp, i/nparts)*offset
	end
	for i=0, nparts do
		ptable[i].CFrame=CFrame.new((pos[i+1]:lerp(pos[i], .5)).p,pos[i+1].p)
		ptable[i].Size=Vector3.new(.2, .2, ((pos[i].p)-(pos[i+1].p)).magnitude) 
	end
end


t.Parent=game.Players.LocalPlayer.Backpack
t.Grip=CFrame.new(0,-0.35,-.5)*CFrame.Angles(0, math.pi/2, 0)
t.Name="qwikzappa 9000"

shock=Instance.new("Sound", h)
shock.SoundId="rbxassetid://157325701"
shock.Volume=1
t.Equipped:connect(function(mouse)
	mouse.Button1Down:connect(function()
		local target=mouse.Target
		if mouse.Hit then
			local offsetp=h.CFrame*CFrame.new(-h.Size.X/2 * .9, h.Size.Y/2 * .6, 0)
			lightning(offsetp, mouse.Hit, nil, nil, nil, target)
			local hum=target.Parent:FindFirstChild"Humanoid" or target.Parent.Parent:FindFirstChild"Humanoid"
			if hum then
				for _, p in ipairs(hum.Parent:GetChildren()) do
					if p:IsA"BasePart" then
						p.BrickColor=BrickColor.new("Really black")
						p.Material=Enum.Material.Marble
						p.Anchored=false
						p.Reflectance=.2
						p:BreakJoints()
						p.Velocity=p:GetMass()*10*Vector3.new(math.random(), math.random(), math.random())
					end
				end
			end
			
			shock:Play()
		end
	end)	
end)

t.Unequipped:connect(function()
		
end)