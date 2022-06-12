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

slidem=Create'Model'{
	Name = "Slide";
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.605873466);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.899025, 1.09616446, -12.8304996, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.432766825, 0.0721278116, 1);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0504913, 1.00961018, -13.1190128, 5.43902274e-008, -2.38418579e-007, 0.999999642, -1.73907708e-007, -0.999999642, -2.38418579e-007, 1, -1.73907836e-007, -5.43902203e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255385, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9711456, 0.995186329, -13.1190109, 1.75943331e-008, 1.00000012, 7.03225425e-008, 1.1920929e-007, -8.68539232e-008, 1.00000024, 0.999999821, -4.23913527e-008, -2.98023224e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255444, 0.144255593, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9350891, 1.03124976, -13.1190128, -2.55395719e-007, 1.00000477, 2.68236658e-006, 2.98023224e-008, -2.69891052e-006, 1.00000954, 1.00000453, 2.30598317e-007, -8.94069672e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255444, 0.0721278116, 0.144255593);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0649109, 1.0889523, -13.1190109, 5.00532016e-009, -1.00000477, 1.32712366e-008, -2.98028908e-008, -2.98028944e-008, -1.00000966, 1.00000477, 2.9802468e-008, -5.96053482e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255355, 0.0721278116, 0.144255593);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0649109, 1.03124714, -13.1190128, 5.43902274e-008, -2.38418579e-007, 0.999999642, -1.73907708e-007, -0.999999642, -2.38418579e-007, 1, -1.73907836e-007, -5.43902203e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255444, 0.144255593, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9350891, 1.0889523, -13.1190128, -5.00532016e-009, 1.00000477, -1.32712366e-008, -2.98028908e-008, -2.98028944e-008, -1.00000966, -1.00000477, -2.9802468e-008, 5.96053482e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255444, 0.0721278116, 0.144255593);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9350891, 1.06010008, -13.1190128, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 0.144255593, 0.14425613);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0649109, 1.06010079, -13.1190128, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 0.144255593, 0.14425613);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.605873466);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9062347, 1.11058998, -12.8304996, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.504894555, 0.0721278116, 1);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.605873466);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.100975, 1.09616446, -12.8304996, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.432766825, 0.0721278116, 1);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.605873466);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0937653, 1.11058998, -12.8304996, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.504894555, 0.0721278116, 1);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9495087, 1.0889349, -13.1190128, 2.55395719e-007, -1.00000477, -2.68236658e-006, 2.98023224e-008, -2.69891052e-006, 1.00000954, -1.00000453, -2.30598317e-007, 8.94069672e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255444, 0.0721278116, 0.144255593);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0504913, 1.0889523, -13.1190128, -2.55395719e-007, 1.00000477, 2.68236658e-006, 2.98023224e-008, -2.69891052e-006, 1.00000954, 1.00000453, 2.30598317e-007, -8.94069672e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255385, 0.0721278116, 0.144255593);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0504913, 1.03124976, -13.1190128, -5.00532016e-009, 1.00000477, -1.32712366e-008, -2.98028908e-008, -2.98028944e-008, -1.00000966, -1.00000477, -2.9802468e-008, 5.96053482e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255444, 0.0721278116, 0.144255593);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0288544, 1.00961208, -13.1190128, -5.00529351e-009, 1.00000012, -1.32709648e-008, -2.98023259e-008, -2.98023295e-008, -1.00000036, -1.00000012, -2.98023259e-008, 5.96046448e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255444, 0.144255593, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9711456, 1.00954151, -13.1190128, 5.00529351e-009, -1.00000012, 1.32709648e-008, -2.98023259e-008, -2.98023295e-008, -1.00000036, 1.00000012, 2.98023259e-008, -5.96046448e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255608, 0.144255593, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9495087, 1.03117585, -13.1190109, 5.00532016e-009, -1.00000477, 1.32712366e-008, -2.98028908e-008, -2.98028944e-008, -1.00000966, 1.00000477, 2.9802468e-008, -5.96053482e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255444, 0.0721278116, 0.144255593);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.995186329, -13.1190128, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.144255638, 0.0721279457, 0.144255772);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9495087, 1.00961208, -13.1190128, 3.17287174e-008, 1.00000048, -5.96046448e-008, -3.03543857e-008, -7.76869926e-016, 1.00000048, 1.00000012, -7.38756327e-008, -3.64816728e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255444, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0288544, 0.995186329, -13.1190109, 6.21630534e-008, -1.00000012, 8.94069672e-008, 9.2254119e-008, 5.96046448e-008, 1.00000024, -0.999999821, -3.73660072e-008, 2.84716606e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255608, 0.144255593, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(1.37042797, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1370392, 1.3702507, -12.4482155, 0, -2.08616257e-007, 0.999996185, 0, 0.999996424, 2.08616257e-007, -0.999992907, 0, 0);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.274085671, 0.245234534);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1226196, 1.2259903, -12.1452847, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.216383412, 1, 1);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(1.91859937, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1154022, 1.38467622, -12.1741333, -3.39477594e-007, 0, 1, -7.81597009e-014, 1, 0, -0.999999881, 2.84217094e-014, -3.39477594e-007);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.0721278116, 0.144255593);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.245234475, 0.274085671, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.978363, 1.2259903, -12.5131359, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 1, 0.144255772);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9711456, 1.11057329, -13.1190128, -1.75943331e-008, -1.00000012, -7.03225425e-008, 1.1920929e-007, -8.68539232e-008, 1.00000024, -0.999999821, 4.23913527e-008, 2.98023224e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255608, 0.144255593, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8701706, 1.26925945, -12.2606888, -1, 2.36299798e-008, -6.17494322e-009, 2.36299798e-008, 1, -8.0466657e-007, 6.17492368e-009, -8.0466657e-007, -1);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255534, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8701706, 1.25483274, -12.2606888, -1, 0, 0, 0, 1, 0, 0, 0, -1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.144255668, 0.0721278116, 0.0721277967);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8701706, 1.25483274, -12.2390499, -1, 2.36299798e-008, -6.17494322e-009, 2.36299798e-008, 1, -8.0466657e-007, 6.17492368e-009, -8.0466657e-007, -1);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255534, 0.0721278116, 0.144255593);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.274085671, 0.259660095);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1226196, 1.2259903, -12.3977318, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.216383353, 1, 1);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.245234534);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8701706, 1.16829109, -12.1452847, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.144255653, 0.79340601, 1);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.245234534);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1154022, 1.37025118, -12.1452847, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.144255608, 0.0721279606, 1);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.274085671, 0.230808973);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8701706, 1.2259903, -12.3833046, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.144255474, 1, 1);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.245234534, 0.605873466);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 1.24041557, -12.8304996, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.259660095, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 1.3702507, -11.9577503, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.0721279606, 0.649150312);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8701706, 1.26205301, -12.0370922, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.144255653, 0.144255728, 0.144255772);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.201957837, 0.200000003, 0.865533531);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 1.38467717, -12.7006683, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.0721278116, 1);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8701706, 1.2548399, -12.0803699, 1, -2.36299798e-008, 6.17494322e-009, 2.36299798e-008, 1, -8.0466657e-007, -6.17492368e-009, 8.0466657e-007, 1);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255534, 0.0721278116, 0.144255593);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8701706, 1.26926661, -12.0587311, 1, -2.36299798e-008, 6.17494322e-009, 2.36299798e-008, 1, -8.0466657e-007, -6.17492368e-009, 8.0466657e-007, 1);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255534, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.274085671, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1298294, 1.2259903, -11.9577522, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.144255608, 1, 0.649150133);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8701706, 1.29811835, -12.0082397, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.144255608, 0.216383427, 0.144255593);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8701706, 1.2548399, -12.0587311, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.144255668, 0.0721278116, 0.0721277967);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.259660095, 0.200000003, 0.865533531);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 1.37025118, -12.7006683, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.0721278116, 1);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8629608, 1.37024999, -11.7053013, 6.17362872e-009, -8.0466657e-007, -1, 2.36299798e-008, 1, -8.0466657e-007, 1, -2.36299798e-008, 6.17429441e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255534, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.274085671, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8629608, 1.22598124, -11.7053013, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 1, 0.144255593);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.274085671, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1370392, 1.22598052, -11.633173, -1, 0, 0, 0, 1, 0, 0, 0, -1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 1, 0.144255593);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.274085671, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1370392, 1.22598052, -11.7053013, -1, 0, 0, 0, 1, 0, 0, 0, -1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 1, 0.144255593);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.274085671, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1370392, 1.22598052, -11.5610447, -1, 0, 0, 0, 1, 0, 0, 0, -1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 1, 0.144255593);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1370392, 1.37024999, -11.7053013, -6.17362872e-009, 8.0466657e-007, 1, 2.36299798e-008, 1, -8.0466657e-007, -1, 2.36299798e-008, -6.17429441e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255534, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1370392, 1.37024999, -11.633173, -6.17362872e-009, 8.0466657e-007, 1, 2.36299798e-008, 1, -8.0466657e-007, -1, 2.36299798e-008, -6.17429441e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255534, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1370392, 1.37024999, -11.5610447, -6.17362872e-009, 8.0466657e-007, 1, 2.36299798e-008, 1, -8.0466657e-007, -1, 2.36299798e-008, -6.17429441e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255534, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.259660035, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8629608, 1.3702507, -11.8928356, 6.17362872e-009, -8.0466657e-007, -1, 2.36299798e-008, 1, -8.0466657e-007, 1, -2.36299798e-008, 6.17429441e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.274085671, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8629608, 1.22598958, -11.8279209, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 1, 0.649150133);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.274085671, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1370392, 1.2259903, -11.8279228, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 1, 0.649150133);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.201957852, 0.200000003, 0.807831287);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 1.38467622, -11.6187477, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.0721278116, 1);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8773804, 1.29811978, -11.9000492, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 0.216383427, 0.0721277967);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.865533471, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8629608, 1.37024999, -12.7006664, 6.17362872e-009, -8.0466657e-007, -1, 2.36299798e-008, 1, -8.0466657e-007, 1, -2.36299798e-008, 6.17429441e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.865533471, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8845978, 1.38467622, -12.7006683, 6.17362872e-009, -8.0466657e-007, -1, 2.36299798e-008, 1, -8.0466657e-007, 1, -2.36299798e-008, 6.17429441e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.0721278116, 0.144255593);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8701706, 1.29811835, -11.9505386, -3.49111033e-008, 1, 6.63107585e-007, -1, -3.49110962e-008, -8.46824832e-009, -8.46824832e-009, -6.63107585e-007, 1);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.216383353, 0.144255593, 0.432766736);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8701706, 1.34139895, -11.9577503, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.144255608, 0.216383427, 0.649150133);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8701706, 1.18271542, -11.9577522, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.144255608, 0.937661588, 0.649150133);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.259660095, 0.288511246, 0.591447949);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 1.23320246, -11.5971107, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8629608, 1.37024999, -11.5610447, 6.17362872e-009, -8.0466657e-007, -1, 2.36299798e-008, 1, -8.0466657e-007, 1, -2.36299798e-008, 6.17429441e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255534, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8629608, 1.37024999, -11.633173, 6.17362872e-009, -8.0466657e-007, -1, 2.36299798e-008, 1, -8.0466657e-007, 1, -2.36299798e-008, 6.17429441e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255534, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.274085671, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8629608, 1.22598577, -11.633173, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 1, 0.144255593);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.274085671, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8629608, 1.2259872, -11.5610447, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 1, 0.144255593);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.274085671, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1370392, 1.22597194, -11.3446598, -1, 0, 0, 0, 1, 0, 0, 0, -1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 1, 0.144255593);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.274085671, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1370392, 1.22597456, -11.4167881, -1, 0, 0, 0, 1, 0, 0, 0, -1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 1, 0.144255593);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.274085671, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1370392, 1.22597766, -11.4889183, -1, 0, 0, 0, 1, 0, 0, 0, -1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 1, 0.144255593);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1370392, 1.37024951, -11.4167881, -6.17362872e-009, 8.0466657e-007, 1, 2.36299798e-008, 1, -8.0466657e-007, -1, 2.36299798e-008, -6.17429441e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255534, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1370392, 1.37024951, -11.3446598, -6.17362872e-009, 8.0466657e-007, 1, 2.36299798e-008, 1, -8.0466657e-007, -1, 2.36299798e-008, -6.17429441e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255534, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1370392, 1.37024951, -11.4889183, -6.17362872e-009, 8.0466657e-007, 1, 2.36299798e-008, 1, -8.0466657e-007, -1, 2.36299798e-008, -6.17429441e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255534, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.807831347, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8845978, 1.38467622, -11.6187496, 6.17362872e-009, -8.0466657e-007, -1, 2.36299798e-008, 1, -8.0466657e-007, 1, -2.36299798e-008, 6.17429441e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.0721278116, 0.144255593);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.274085671, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 1.22598958, -11.25811, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 1, 0.432767034);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.274085671, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8629608, 1.2259903, -11.4167919, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 1, 0.144255593);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8629608, 1.3702507, -11.4889183, 6.17362872e-009, -8.0466657e-007, -1, 2.36299798e-008, 1, -8.0466657e-007, 1, -2.36299798e-008, 6.17429441e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255534, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.274085671, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8629608, 1.2259903, -11.4889183, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 1, 0.144255593);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8629608, 1.3702507, -11.3446636, 6.17362872e-009, -8.0466657e-007, -1, 2.36299798e-008, 1, -8.0466657e-007, 1, -2.36299798e-008, 6.17429441e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255534, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.274085671, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8629608, 1.22598958, -11.3446636, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 1, 0.144255593);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.259660035, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 1.3702507, -11.25811, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.0721278116, 0.432767034);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8629608, 1.3702507, -11.4167919, 6.17362872e-009, -8.0466657e-007, -1, 2.36299798e-008, 1, -8.0466657e-007, 1, -2.36299798e-008, 6.17429441e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255534, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1370392, 1.37024999, -11.25811, -3.4141457e-012, -1.84774319e-006, 0.999994755, 0, 0.999994993, 1.84774717e-006, -0.999996364, 0, 0);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.432766676, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8629608, 1.37024999, -11.25811, 6.17362872e-009, -8.0466657e-007, -1, 2.36299798e-008, 1, -8.0466657e-007, 1, -2.36299798e-008, 6.17429441e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.432766676, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0288544, 1.11058998, -13.1190128, 1.75943331e-008, 1.00000012, 7.03225425e-008, 1.1920929e-007, -8.68539232e-008, 1.00000024, 0.999999821, -4.23913527e-008, -2.98023224e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255444, 0.144255593, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
};
basem=Create'Model'{
	Name = "Base";
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.216383412, 0.836682379);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.540778399, -11.7702198, 1, 0, -0, 0, 0, 1, 0, -1, 0);
		--Position = Vector3;
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511217, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.713889599, -11.8423462, 0.999999404, -1.77635684e-015, -4.47034836e-008, -3.55271368e-015, -0.999999642, -1.49011612e-008, -7.4505806e-008, 2.98023135e-008, -0.999999404);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.144255742, 0.360639155);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.713889599, -11.9144745, -0.999999404, -4.47034836e-008, -1.77635684e-015, 3.55271368e-015, -1.49011612e-008, -0.999999642, 7.4505806e-008, -0.999999404, 2.98023135e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.360638946, 0.144255593);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.200000003, 0.490469038);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.677825451, -12.0370922, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.216383427, 1);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.706677914, -12.2606888, 0.999991, -1.39119479e-007, 2.84650241e-008, 2.84560429e-008, 1.10267433e-006, -0.999994814, 7.55060015e-008, 0.999993384, 1.13247347e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.216383427, 0.0721278116);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.706677914, -12.2895393, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.0721278116, 0.0721277967);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.663399696, -12.3039646, -0.999998212, -4.47034303e-008, 0, 4.47034729e-008, -0.999999046, 1.49011523e-008, 2.98022886e-008, 2.98022993e-008, 0.999998808);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.0721278191, 0.216383398);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.685038805, -12.3039646, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.144255593, 0.216383427);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.685038805, -12.3328152, -0.99999094, -5.59716824e-008, -4.4984116e-008, 5.59810722e-008, -0.999994755, 1.51991844e-006, 1.86294571e-008, 1.51991844e-006, 0.999993324);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.144255593, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.764380217, -11.8423462, -0.999999285, 2.98023224e-008, -3.55271368e-015, 4.4408921e-016, -1.49011612e-008, -0.999999404, 1.49011612e-008, -0.999999404, 1.49011559e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.360639006, 0.360638946);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.77159214, -12.2895393, 0.999991, -1.39119479e-007, 2.84650241e-008, 2.84560429e-008, 1.10267433e-006, -0.999994814, 7.55060015e-008, 0.999993384, 1.13247347e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.0721278116, 0.577022374);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.836682558, 0.302936733);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.540778399, -11.5105591, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.259660095, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.82929492, -12.3183899, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 1, 0.216383427);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.879785299, -12.2823277, -0.999990582, 2.23517418e-007, -4.47034552e-008, 0, -1.10268581e-006, 0.999994576, 1.1920929e-007, 0.999993324, 1.07288338e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.144255593, 0.504894555);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0937653, 0.966336966, -13.0973701, 1, 0, 0, 0, -1, 0, 0, 0, -1);
		Name = "CornerWedge";
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.0288511179, 0.0288511235, 0.144255579);
			MeshId = "http://www.roblox.com/asset/?id=11294911";
			TextureId = "rbxassetid://0";
			VertexColor = Vector3.new(0.639215708, 0.635294139, 0.647058845);
			MeshType = Enum.MeshType.FileMesh;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.562596858);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9495087, 0.995187759, -12.8521366, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		Name = "Outer";
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278265, 0.0721279457, 1);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.966336966, -12.8232841, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.144255608, 0.0721279457, 0.216384232);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.605873525, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1298294, 1.06731415, -12.8304958, 0, 0, 1, 0, -1, 0, 1, 0, -0);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.216383427, 0.144255593);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.966336966, -12.5780506, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.144255608, 0.0721279457, 0.0721277967);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9062347, 0.966336966, -12.981966, 5.20890753e-009, -8.14456257e-007, -1, -2.36262725e-008, -1, 8.144562e-007, -1, 2.36262832e-008, -5.20836352e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.79340589, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.27408576);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0504913, 0.966336966, -12.70788, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.360639006, 0.0721279457, 1);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1298294, 1.02403831, -12.5491982, 7.68454242e-008, -1, -4.70734562e-014, 1, 7.68453177e-008, 2.98023224e-008, -2.98023224e-008, 5.29354338e-013, 1);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.649150074, 0.144255593, 0.216383398);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.995187759, -11.3374519, -0.999999285, 0, 0, 0, 2.98023153e-008, 0.999999583, 0, 0.999999583, -2.98023153e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.216383427, 0.360638946);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.605873525);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.899025, 1.04567671, -12.8304958, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.144255608, 0.432767004, 1);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8701706, 1.02403831, -12.5491982, 2.36268534e-008, 1, -8.04669014e-007, -1, 2.36269102e-008, -6.17750384e-009, -6.17682172e-009, 8.04668446e-007, 1);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.649150074, 0.144255593, 0.216383398);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.200000003, 1.16847026);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 1.01682639, -11.943325, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.577022552, 1);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.201957852, 0.200000003, 0.562596977);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.980762482, -12.8521366, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.0721279457, 1);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511217, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 1.05289006, -11.3374519, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.216383547, 0.216383576);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.966336966, -13.0973701, -0.999998748, 8.66465207e-017, -5.20471399e-009, -2.10734132e-008, -0.999999225, 1.49011555e-007, 1.22552981e-008, 8.94069316e-008, 0.999999285);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.865533352, 0.0721278116, 0.360638946);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0937653, 0.966336966, -12.981966, 4.47035902e-008, 3.90638462e-007, 0.999999642, -8.68500365e-008, -0.999999404, 4.20440813e-007, 0.999999583, -1.50070321e-007, -4.47035333e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.79340589, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.230808973, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.980762482, -12.5491982, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.216383547, 0.216384321);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.274085641, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9062347, 0.966336966, -12.70788, 6.1780332e-009, -8.04669014e-007, -1, -2.36262725e-008, -1, 8.04668957e-007, -1, 2.36262832e-008, -6.17748874e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 1.05289006, -11.2653236, -1, 0, 0, 0, 0, 1, 0, 1, -0);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.504894614, 0.216383398);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.27408576);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9495087, 0.966336966, -12.70788, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.360639006, 0.0721279457, 1);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.966336966, -12.981966, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.86553365, 0.0721279457, 0.793406665);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.274085641, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0937653, 0.966336966, -12.70788, -3.94351218e-013, -8.94069672e-008, 0.999997377, -9.09029509e-008, -0.999997377, -1.75833702e-006, 0.999998212, -9.09029367e-008, -2.58015831e-013);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9062347, 0.966336966, -13.0973701, 0, 0, 1, 0, -1, 0, 1, 0, -0);
		Name = "CornerWedge";
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.144255593, 0.0288511235, 0.0288511198);
			MeshId = "http://www.roblox.com/asset/?id=11294911";
			TextureId = "rbxassetid://0";
			VertexColor = Vector3.new(0.639215708, 0.635294139, 0.647058845);
			MeshType = Enum.MeshType.FileMesh;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.562596858);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0649109, 1.00240111, -12.8521366, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		Name = "Outer";
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 0.144255742, 1);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.605873466, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0504913, 1.0096128, -12.8304977, -6.3089729e-008, -5.96046448e-008, -1.00000048, -1.70092719e-007, 1.00000036, -2.98023224e-008, 1.00000012, 1.03256617e-007, -2.09428084e-008);
		Name = "Outer";
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.605873525);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.1009827, 1.04567671, -12.8304958, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.144255638, 0.432766855, 1);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.605873466);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0793381, 1.03846359, -12.8304958, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		Name = "Outer";
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 0.504894793, 1);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.605873466, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0649109, 1.03125024, -12.8304958, -5.00532016e-009, 1.00000477, -1.32712366e-008, -2.98028908e-008, -2.98028944e-008, -1.00000966, -1.00000477, -2.9802468e-008, 5.96053482e-008);
		Name = "Outer";
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.0721278116, 0.144255593);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.605873466, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0288544, 0.995187759, -12.8304958, -5.00529351e-009, 1.00000012, -1.32709648e-008, -2.98023259e-008, -2.98023295e-008, -1.00000036, -1.00000012, -2.98023259e-008, 5.96046448e-008);
		Name = "Outer";
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.144255593, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.605873466, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9495087, 1.0096128, -12.8304958, 5.98490857e-008, -1.00000048, -1.78813934e-007, -5.54701174e-008, 2.38418579e-007, -1.00000048, 1.00000012, 1.0199598e-007, 1.13659802e-008);
		Name = "Outer";
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.0721278116, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.605873466, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9711456, 0.995117903, -12.8304958, 5.00529351e-009, -1.00000012, 1.32709648e-008, -2.98023259e-008, -2.98023295e-008, -1.00000036, 1.00000012, 2.98023259e-008, -5.96046448e-008);
		Name = "Outer";
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.144255593, 0.0721277967);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.605873466);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9206619, 1.03846335, -12.8304958, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		Name = "Outer";
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 0.504894793, 1);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.605873466, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9350815, 1.031178, -12.8304958, 5.00532016e-009, -1.00000477, 1.32712366e-008, -2.98028908e-008, -2.98028944e-008, -1.00000966, 1.00000477, 2.9802468e-008, -5.96053482e-008);
		Name = "Outer";
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.0721278116, 0.144255593);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.562596858);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9350891, 1.00239992, -12.8521366, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		Name = "Outer";
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 0.144255742, 1);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.562596858);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0504913, 0.995187759, -12.8521366, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		Name = "Outer";
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.0721278042, 0.0721279457, 1);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.944699764, -12.2823257, -0.999999821, 0, -8.94069672e-008, 0, 1, 0, 8.94069672e-008, 0, -0.999999821);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.144255593, 0.144255593);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.94470048, -12.2318382, -0.999990582, 2.23517418e-007, 5.68434189e-014, 0, 2.37209406e-006, 0.999994516, 1.1920929e-007, 0.999993324, -2.40794884e-006);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.360639066, 0.144255593);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.230808973, 0.605873644, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 1.28369379, -12.8449211, 1, 0, -0, 0, 0, 1, 0, -1, 0);
		Name = "BarrelPart";
		--Position = Vector3;
		Create'CylinderMesh'{
			Scale = Vector3.new(1, 1, 0.793405831);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 1.06010294, -12.6213264, 1, 0, -0, 0, 0, 1, 0, -1, 0);
		--Position = Vector3;
		Create'CylinderMesh'{
			Scale = Vector3.new(0.432766825, 0.937661946, 0.432766855);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.216383412, 0.836682379);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.540778399, -11.2508984, 1, 0, 0, 0, -2.98023224e-008, -1, 0, 1, -2.98023224e-008);
		--Position = Vector3;
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.200000003, 1.31272602);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 1.08174086, -11.8711987, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.0721279457, 1);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.605873525, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.8701706, 1.06731415, -12.8304958, 6.1780332e-009, -8.04669014e-007, -1, -2.36262725e-008, -1, 8.04668957e-007, -1, 2.36262832e-008, -6.17748874e-009);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.216383427, 0.144255593);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.605873466, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0721283, 1.0745275, -12.8304958, -2.55395719e-007, 1.00000477, 2.68236658e-006, 2.98023224e-008, -2.69891052e-006, 1.00000954, 1.00000453, 2.30598317e-007, -8.94069672e-008);
		Name = "Outer";
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.0721278116, 0.144255593);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.605873466, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9278717, 1.07450962, -12.8304958, 2.55395719e-007, -1.00000477, -2.68236658e-006, 2.98023224e-008, -2.69891052e-006, 1.00000954, -1.00000453, -2.30598317e-007, 8.94069672e-008);
		Name = "Outer";
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.0721278116, 0.144255593);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(1002);
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.216383383, 0.274085671, 0.245234534);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-65.9927902, 1.22599244, -12.1452827, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		Name = "Metal";
		--Position = Vector3;
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.754731655, -12.0189285, -0.999991775, -1.78195239e-006, 8.08243101e-007, 4.58985767e-007, 0.146083787, 0.989263356, -1.94771019e-006, 0.989266396, -0.146084398);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.721277952, 0.19113867, 0.115404464);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(1003);
		CanCollide = false;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.230808973, 0.605873644, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 1.28369355, -12.8499718, 1, 0, -0, 0, 0, 1, 0, -1, 0);
		Name = "Hole";
		--Position = Vector3;
		Create'CylinderMesh'{
			Scale = Vector3.new(1, 1, 0.649150133);
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.964531898, -12.0011349, -0.999991834, 8.03110396e-008, 1.95573193e-007, -1.67532761e-007, 0.813725054, -0.581235468, -3.27164713e-007, -0.581237257, -0.813727438);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.721277952, 0.501288116, 0.613086164);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.93129611, -11.9761524, -0.999991834, 7.64302257e-008, 1.28373301e-007, -2.15856005e-007, 0.324316472, -0.94593966, -2.35273234e-007, -0.945942521, -0.324317336);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.721277952, 0.288511187, 0.328181446);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.830366135, -12.030098, -0.999991775, 1.6574761e-006, -9.1193499e-007, 5.79753191e-007, -0.146081612, -0.989263713, -1.83971554e-006, -0.989266634, 0.146082193);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.721277952, 0.19113867, 0.649150074);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.84122324, -12.0123806, 0.999991894, 1.8087452e-006, -1.34110451e-007, -3.87430191e-007, 0.324308068, 0.945942283, 1.85519457e-006, -0.945945323, 0.324308902);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.721277952, 0.335394263, 0.649150074);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 1.06010294, -13.1334343, 1, 0, -0, 0, 0, 1, 0, -1, 0);
		--Position = Vector3;
		Create'CylinderMesh'{
			Scale = Vector3.new(0.577022433, 0.144255966, 0.577022433);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.403915763, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 1.06010294, -12.9170513, 1, 0, -0, 0, 0, 1, 0, -1, 0);
		--Position = Vector3;
		Create'CylinderMesh'{
			Scale = Vector3.new(0.288511246, 1, 0.288511217);
		};
	};
};
magm=Create'Model'{
	Name = "Mag";
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.230808929, 0.200000003, 0.836682379);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.540777445, -11.6476002, 1, 0, -0, 0, 0, 1, 0, -1, 0);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.577022433, 1);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.230808944, 0.836682558, 0.230808944);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.540777445, -11.474493, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
	};
	Create'WedgePart'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.230808944, 0.200000003, 0.836682379);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.540777445, -11.3013878, 1, 0, 0, 0, -2.98023224e-008, -1, 0, 1, -2.98023224e-008);
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(1, 0.577022433, 1);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.200000003, 0.259660125, 0.735703468);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66.0288544, 0.515873194, -11.4581356, -0.999995112, 0, 1.42107734e-014, -1.59872116e-014, -0.136636451, -0.990617037, 0, -0.990613759, 0.136636898);
		Name = "DirectionPart";
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(0.721277952, 1, 1);
		};
	};
	Create'Part'{
		Anchored = true;
		RightSurface = Enum.SurfaceType.SmoothNoOutlines;
		LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
		TopSurface = Enum.SurfaceType.SmoothNoOutlines;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
		Size = Vector3.new(0.288511187, 0.200000003, 0.447192281);
		formFactor = Enum.FormFactor.Custom;
		BackSurface = Enum.SurfaceType.SmoothNoOutlines;
		BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
		CFrame = CFrame.new(-66, 0.100801349, -11.4384308, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		--Position = Vector3;
		Create'BlockMesh'{
			Scale = Vector3.new(1, 0.216383547, 1);
		};
	};
};

m=Instance.new("Model", workspace)
slidem.Parent=m
basem.Parent=m
magm.Parent=m

hsize=m:GetModelSize()
hcf=m:GetModelCFrame()

ssize=slidem:GetModelSize()
scf=slidem:GetModelCFrame()

msize=magm:GetModelSize()
mcf=magm:GetModelCFrame()

bsize=basem:GetModelSize()
bcf=basem:GetModelCFrame()


ProcessModel=function(model, hcf, hsize)
	local handle=Instance.new("Part", model)
	handle.Name="HandlePart"
	handle.FormFactor="Custom"
	handle.Size=hsize
	handle.CFrame=hcf
	handle.Transparency=1
	for _, part in pairs(model:GetChildren()) do
		if part~=handle and part:IsA("BasePart") then
			local cf=part.CFrame
			part.Anchored=false
			part.CanCollide=false
			local w=Instance.new("Weld", handle)
			w.Part0=handle
			w.Part1=part
			w.C0=hcf:inverse()*cf
		end
	end
	return model
end
function WeldModel(handle, model, cf)
	local part=model.HandlePart
	local w=Instance.new("Weld", handle)
	w.Part0=handle
	w.Part1=part
	w.C0=hcf:inverse()*cf
	return w
end
m.Parent=nil
mag=ProcessModel(magm:Clone(), mcf, msize)
base=ProcessModel(basem:Clone(), bcf, bsize)
slide=ProcessModel(slidem:Clone(), scf, ssize)
t=Instance.new("Tool", game.Players.LocalPlayer.Backpack)
t.Grip=CFrame.new(-.15, -0.2, 0.45)*CFrame.Angles(0, -math.pi/2, 0)
t.Name="Glock"
local handle=Instance.new("Part", t)
handle.Name="Handle"
handle.FormFactor="Custom"
handle.Size=hsize
handle.CFrame=hcf
handle.Transparency=1
magw=WeldModel(handle, mag, mcf)
slidew=WeldModel(handle, slide, scf)
basew=WeldModel(handle, base, bcf)
mag.Parent=t
slide.Parent=t
base.Parent=t
shoot=Instance.new("Sound", handle)
shoot.SoundId="rbxassetid://165946426"
shoot.Volume=1


local char, player, rarm, larm, rw, lw, torso, rs, ls, humanoid = nil, nil, nil, nil, Instance.new("Weld"), Instance.new("Weld"), nil, nil, nil, nil
t.Equipped:connect(function(m)
	char=game.Players.LocalPlayer.Character
	player=game.Players.LocalPlayer
	torso=char.Torso
	rarm=char["Right Arm"]
	larm=char["Left Arm"]
	rs=torso["Right Shoulder"]
	ls=torso["Left Shoulder"]
	humanoid=char.Humanoid
	if humanoid.Health>0 then
		rs.Part1=nil
		ls.Part1=nil
		rw.Part1=rarm
		lw.Part1=larm
		rw.Part0=torso
		lw.Part0=torso
		rw.Parent=torso
		lw.Parent=torso
		
		rw.C1=CFrame.new(0, 0.5, 0)	
		rw.C0=CFrame.new(1.5, 0.5, 0)*CFrame.Angles(math.pi/2, 0, 0) -- 90 degree rotation of arm
		
		lw.C1=CFrame.new(0, 0.5, 0)		
		lw.C0=CFrame.new(-1.5, 0.5, 0)
		m.Button1Down:connect(function()
			shoot:Play()
			coroutine.wrap(function()
				slidew.C0=slidew.C0*CFrame.new(-.4, 0, 0)
				wait()
				slidew.C0=slidew.C0*CFrame.new(.2, 0, 0)
				wait()
				slidew.C0=slidew.C0*CFrame.new(.2, 0, 0)
			end)()
		end)
	end
end)


t.Unequipped:connect(function()
	rs.Part1=rarm
	ls.Part1=larm
	rw.Parent=nil
	rw.Part1=nil
	lw.Parent=nil
	lw.Part1=nil
end)
--[[

hl/https://code.stypi.com/raw/wxeKL3UgUCwAtsXleX3sk1R3

]]