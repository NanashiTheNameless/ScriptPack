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

model=(Create'Model'{
	Name = "Level";
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(111.950142, -1.70029593, 122.200172, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(111.950142, 2.79971242, 122.200172, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(111.950142, 5.79955196, 122.200172, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(111.950142, 8.7995739, 122.200172, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(140.750214, -1.70029593, 95.6000443, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(140.750214, 2.79971242, 95.6000443, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(140.750214, 5.79955196, 95.6000443, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(140.750214, 8.7995739, 95.6000443, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(94.7501144, -1.70029593, 86.000145, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(94.7501144, 2.79971242, 86.000145, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(94.7501144, 5.79955196, 86.000145, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(94.7501144, 8.7995739, 86.000145, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(76.1501923, -1.70029593, 112.200165, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(76.1501923, 2.79971242, 112.200165, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(76.1501923, 5.79955196, 112.200165, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(76.1501923, 8.7995739, 112.200165, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(134.600021, -1.80015409, 58.1501694, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(134.600021, 2.69985318, 58.1501694, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(134.600021, 5.69969988, 58.1501694, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(134.600021, 8.69971657, 58.1501694, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(80.7999115, -1.80008638, 148.950165, 0, 1, 0, 1, 0, 0, 0, 0, -1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(80.7999115, 2.69991994, 148.950165, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(80.7999115, 5.69976473, 148.950165, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(80.7999115, 8.69978333, 148.950165, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(95.85009, -1.60057592, 58.1002617, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(95.85009, 2.89943242, 58.1002617, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(95.85009, 5.89927197, 58.1002617, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(95.85009, 8.89929199, 58.1002617, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(122.450226, -1.60057592, 86.9001923, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(122.450226, 2.89943242, 86.9001923, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(122.450226, 5.89927197, 86.9001923, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(122.450226, 8.89929199, 86.9001923, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(50.0999756, -1.80008638, 70.8999786, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(50.0999756, 2.69992566, 70.8999786, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(50.0999756, 5.69976473, 70.8999786, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(50.0999756, 8.69978905, 70.8999786, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(66.5501785, -1.70029593, 86.2002335, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(66.5501785, 2.79971242, 86.2002335, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(66.5501785, 5.79955196, 86.2002335, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(66.5501785, 8.7995739, 86.2002335, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(53.6999817, -1.90001237, 45.0999832, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(53.6999817, 2.59999967, 45.0999832, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(53.6999817, 5.59983873, 45.0999832, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(53.6999817, 8.59985733, 45.0999832, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(174.30011, -1.90001237, 14.299964, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(174.30011, 2.59999967, 14.299964, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(174.30011, 5.59983873, 14.299964, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(174.30011, 8.59985733, 14.299964, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(145.500046, -1.90001237, 40.900032, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(145.500046, 2.59999967, 40.900032, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(145.500046, 5.59983873, 40.900032, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(145.500046, 8.59985733, 40.900032, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(78.899971, -1.80008638, 44.2999878, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(78.899971, 2.69992566, 44.2999878, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(78.899971, 5.69976473, 44.2999878, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(78.899971, 8.69978905, 44.2999878, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(109.700142, -1.90001237, 30.9000854, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(109.700142, 2.59999967, 30.9000854, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(109.700142, 5.59983873, 30.9000854, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(109.700142, 8.59985733, 30.9000854, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Path";
		Create'Part'{
			Anchored = true;
			RightSurface = Enum.SurfaceType.SmoothNoOutlines;
			LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
			TopSurface = Enum.SurfaceType.SmoothNoOutlines;
			BrickColor = BrickColor.new(352);
			Material = Enum.Material.Concrete;
			FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
			Size = Vector3.new(6, 0.200000003, 19);
			formFactor = Enum.FormFactor.Custom;
			BackSurface = Enum.SurfaceType.SmoothNoOutlines;
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
			CFrame = CFrame.new(175.000046, -4.80000496, -16.0998936, -0.258819044, 5.47862555e-007, 0.965925515, -8.37345397e-007, 1, -7.91555351e-007, -0.965925515, -1.013683e-006, -0.258819044);
			Name = "Path";
			--Position = Vector3;
		};
		Create'WedgePart'{
			Anchored = true;
			RightSurface = Enum.SurfaceType.SmoothNoOutlines;
			LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
			TopSurface = Enum.SurfaceType.SmoothNoOutlines;
			BrickColor = BrickColor.new(352);
			Material = Enum.Material.Concrete;
			FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
			Size = Vector3.new(0.200025961, 30.1001663, 1.75657654);
			formFactor = Enum.FormFactor.Custom;
			BackSurface = Enum.SurfaceType.SmoothNoOutlines;
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
			CFrame = CFrame.new(151.55011, -4.8000164, -11.6216583, 5.23879294e-007, 1, 8.74227268e-008, -1, 5.23879294e-007, 4.05314267e-007, 4.05314239e-007, -8.74229329e-008, 1);
			--Position = Vector3;
		};
		Create'WedgePart'{
			Anchored = true;
			RightSurface = Enum.SurfaceType.SmoothNoOutlines;
			LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
			TopSurface = Enum.SurfaceType.SmoothNoOutlines;
			BrickColor = BrickColor.new(352);
			Material = Enum.Material.Concrete;
			FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
			Size = Vector3.new(0.200025961, 30.1001663, 4.24342346);
			formFactor = Enum.FormFactor.Custom;
			BackSurface = Enum.SurfaceType.SmoothNoOutlines;
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
			CFrame = CFrame.new(151.55011, -4.8000164, -8.62164974, -5.23879294e-007, 1, 4.96203556e-014, 1, 5.23879294e-007, -4.05314211e-007, -4.05314211e-007, -1.62715382e-013, -1);
			--Position = Vector3;
		};
		Create'WedgePart'{
			Anchored = true;
			RightSurface = Enum.SurfaceType.SmoothNoOutlines;
			LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
			TopSurface = Enum.SurfaceType.SmoothNoOutlines;
			BrickColor = BrickColor.new(352);
			Material = Enum.Material.Concrete;
			FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
			Size = Vector3.new(0.200021774, 5.69523335, 1.88792372);
			formFactor = Enum.FormFactor.Custom;
			BackSurface = Enum.SurfaceType.SmoothNoOutlines;
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
			CFrame = CFrame.new(165.823761, -4.80000496, -13.6411819, -6.36496679e-007, 0.0582586639, -0.998301506, 0.99999994, -5.99574093e-007, -6.72569399e-007, -6.37738708e-007, -0.998301446, -0.0582586676);
			--Position = Vector3;
		};
		Create'WedgePart'{
			Anchored = true;
			RightSurface = Enum.SurfaceType.SmoothNoOutlines;
			LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
			TopSurface = Enum.SurfaceType.SmoothNoOutlines;
			BrickColor = BrickColor.new(352);
			Material = Enum.Material.Concrete;
			FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
			Size = Vector3.new(0.200021774, 5.69523335, 28.2634544);
			formFactor = Enum.FormFactor.Custom;
			BackSurface = Enum.SurfaceType.SmoothNoOutlines;
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
			CFrame = CFrame.new(150.773682, -4.8000164, -14.5194464, 6.36496679e-007, 0.0582585782, 0.998301506, -0.99999994, -5.9957415e-007, 6.72569342e-007, 6.37738708e-007, -0.998301446, 0.0582585819);
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			RightSurface = Enum.SurfaceType.SmoothNoOutlines;
			LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
			TopSurface = Enum.SurfaceType.SmoothNoOutlines;
			BrickColor = BrickColor.new(352);
			Material = Enum.Material.Concrete;
			FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
			Size = Vector3.new(6, 0.200000003, 19);
			formFactor = Enum.FormFactor.Custom;
			BackSurface = Enum.SurfaceType.SmoothNoOutlines;
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
			CFrame = CFrame.new(127.000023, -4.80001068, -9.50000763, 2.98023224e-008, 4.4187157e-008, 0.999999881, -3.03109857e-007, 1, -4.41871677e-008, -0.999999881, -3.031098e-007, 2.98023224e-008);
			Name = "Path";
			--Position = Vector3;
		};
		Create'WedgePart'{
			Anchored = true;
			RightSurface = Enum.SurfaceType.SmoothNoOutlines;
			LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
			TopSurface = Enum.SurfaceType.SmoothNoOutlines;
			BrickColor = BrickColor.new(352);
			Material = Enum.Material.Concrete;
			FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
			Size = Vector3.new(0.200002387, 39.5001869, 1.35655975);
			formFactor = Enum.FormFactor.Custom;
			BackSurface = Enum.SurfaceType.SmoothNoOutlines;
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
			CFrame = CFrame.new(97.7498398, -4.80001068, -7.17826414, 4.19453769e-008, -1, -7.48835232e-015, -1, -4.19453769e-008, -2.30468672e-007, 2.30468643e-007, 1.71554479e-014, -1);
			--Position = Vector3;
		};
		Create'WedgePart'{
			Anchored = true;
			RightSurface = Enum.SurfaceType.SmoothNoOutlines;
			LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
			TopSurface = Enum.SurfaceType.SmoothNoOutlines;
			BrickColor = BrickColor.new(352);
			Material = Enum.Material.Concrete;
			FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
			Size = Vector3.new(0.200002387, 39.5001869, 4.64344025);
			formFactor = Enum.FormFactor.Custom;
			BackSurface = Enum.SurfaceType.SmoothNoOutlines;
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
			CFrame = CFrame.new(97.7498398, -4.8000164, -10.1782837, -4.19453769e-008, -1, -8.74227695e-008, 1, -4.19453983e-008, 2.30468657e-007, -2.30468629e-007, -8.74227553e-008, 1);
			--Position = Vector3;
		};
		Create'WedgePart'{
			Anchored = true;
			RightSurface = Enum.SurfaceType.SmoothNoOutlines;
			LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
			TopSurface = Enum.SurfaceType.SmoothNoOutlines;
			BrickColor = BrickColor.new(352);
			Material = Enum.Material.Concrete;
			FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
			Size = Vector3.new(0.200002477, 5.73883963, 37.7725563);
			formFactor = Enum.FormFactor.Custom;
			BackSurface = Enum.SurfaceType.SmoothNoOutlines;
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
			CFrame = CFrame.new(98.526329, -4.8000164, -4.28050995, 1.92656557e-010, -0.034322802, -0.999410808, -1, 2.59199112e-007, -9.09444964e-009, 2.59358529e-007, 0.999410808, -0.034322802);
			--Position = Vector3;
		};
		Create'WedgePart'{
			Anchored = true;
			RightSurface = Enum.SurfaceType.SmoothNoOutlines;
			LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
			TopSurface = Enum.SurfaceType.SmoothNoOutlines;
			BrickColor = BrickColor.new(352);
			Material = Enum.Material.Concrete;
			FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
			Size = Vector3.new(0.200002477, 5.73883963, 1.7509197);
			formFactor = Enum.FormFactor.Custom;
			BackSurface = Enum.SurfaceType.SmoothNoOutlines;
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
			CFrame = CFrame.new(78.7761917, -4.8000164, -4.9587779, -1.92663663e-010, -0.0343228877, 0.999410808, 1, 2.59199112e-007, 9.09447806e-009, -2.59358529e-007, 0.999410808, 0.0343228877);
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			RightSurface = Enum.SurfaceType.SmoothNoOutlines;
			LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
			TopSurface = Enum.SurfaceType.SmoothNoOutlines;
			BrickColor = BrickColor.new(352);
			Material = Enum.Material.Concrete;
			FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
			Size = Vector3.new(6, 0.200000003, 19);
			formFactor = Enum.FormFactor.Custom;
			BackSurface = Enum.SurfaceType.SmoothNoOutlines;
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
			CFrame = CFrame.new(69.5999908, -4.80001068, -2.5, -0.258819044, -3.42634472e-008, 0.965925694, -2.91673359e-007, 1, -4.26815348e-008, -0.965925694, -2.92781579e-007, -0.258819044);
			Name = "Path";
			--Position = Vector3;
		};
		Create'WedgePart'{
			Anchored = true;
			RightSurface = Enum.SurfaceType.SmoothNoOutlines;
			LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
			TopSurface = Enum.SurfaceType.SmoothNoOutlines;
			BrickColor = BrickColor.new(352);
			Material = Enum.Material.Concrete;
			FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
			Size = Vector3.new(0.200001597, 27.6992722, 3.65003657);
			formFactor = Enum.FormFactor.Custom;
			BackSurface = Enum.SurfaceType.SmoothNoOutlines;
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
			CFrame = CFrame.new(47.3500366, -4.80001068, 4.67829895, 4.34782272e-008, -0.965925753, -0.258819252, -0.99999994, 1.67419536e-008, -2.30468657e-007, 2.26948742e-007, 0.258819222, -0.965925813);
			--Position = Vector3;
		};
		Create'WedgePart'{
			Anchored = true;
			RightSurface = Enum.SurfaceType.SmoothNoOutlines;
			LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
			TopSurface = Enum.SurfaceType.SmoothNoOutlines;
			BrickColor = BrickColor.new(352);
			Material = Enum.Material.Concrete;
			FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
			Size = Vector3.new(0.200001597, 27.6992722, 2.3499639);
			formFactor = Enum.FormFactor.Custom;
			BackSurface = Enum.SurfaceType.SmoothNoOutlines;
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
			CFrame = CFrame.new(46.5736084, -4.8000164, 1.78050196, -4.34782237e-008, -0.965925753, 0.258819163, 0.99999994, 1.67419323e-008, 2.30468657e-007, -2.26948728e-007, 0.258819133, 0.965925813);
			--Position = Vector3;
		};
		Create'WedgePart'{
			Anchored = true;
			RightSurface = Enum.SurfaceType.SmoothNoOutlines;
			LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
			TopSurface = Enum.SurfaceType.SmoothNoOutlines;
			BrickColor = BrickColor.new(352);
			Material = Enum.Material.Concrete;
			FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
			Size = Vector3.new(0.200003833, 5.66643381, 27.3580685);
			formFactor = Enum.FormFactor.Custom;
			BackSurface = Enum.SurfaceType.SmoothNoOutlines;
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
			CFrame = CFrame.new(47.3500366, -4.8000164, 4.67829895, -1.65791107e-007, -0.328782469, -0.944405735, 1, -6.6350367e-008, -1.52451719e-007, -1.25382105e-008, -0.944405735, 0.328782469);
			--Position = Vector3;
		};
		Create'WedgePart'{
			Anchored = true;
			RightSurface = Enum.SurfaceType.SmoothNoOutlines;
			LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
			TopSurface = Enum.SurfaceType.SmoothNoOutlines;
			BrickColor = BrickColor.new(352);
			Material = Enum.Material.Concrete;
			FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
			Size = Vector3.new(0.200003833, 5.66643381, 1.97269356);
			formFactor = Enum.FormFactor.Custom;
			BackSurface = Enum.SurfaceType.SmoothNoOutlines;
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
			CFrame = CFrame.new(33.4999733, -4.8000164, 9.5, 1.65791121e-007, -0.328782558, 0.944405735, -1, -6.63503812e-008, 1.52451719e-007, 1.25382069e-008, -0.944405735, -0.328782558);
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			RightSurface = Enum.SurfaceType.SmoothNoOutlines;
			LeftSurface = Enum.SurfaceType.SmoothNoOutlines;
			TopSurface = Enum.SurfaceType.SmoothNoOutlines;
			BrickColor = BrickColor.new(352);
			Material = Enum.Material.Concrete;
			FrontSurface = Enum.SurfaceType.SmoothNoOutlines;
			Size = Vector3.new(6, 0.200000003, 19);
			formFactor = Enum.FormFactor.Custom;
			BackSurface = Enum.SurfaceType.SmoothNoOutlines;
			BottomSurface = Enum.SurfaceType.SmoothNoOutlines;
			CFrame = CFrame.new(23.9999657, -4.8000164, 9.5, 0, 0, 1, 0, 1, -0, -1, 0, 0);
			Name = "Path";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(83.4999084, -1.80005205, 19.4999962, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(83.4999084, 2.69995809, 19.4999962, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(83.4999084, 5.69979715, 19.4999962, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(83.4999084, 8.69981384, 19.4999962, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(35.5000954, -1.7003665, 83.4500427, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(35.5000954, 2.79963994, 83.4500427, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(35.5000954, 5.79948521, 83.4500427, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(35.5000954, 8.79950333, 83.4500427, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(32.9000282, -1.80008638, 34.7000008, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(32.9000282, 2.69992566, 34.7000008, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(32.9000282, 5.69976473, 34.7000008, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(32.9000282, 8.69978905, 34.7000008, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(156.000183, -1.80029809, 5.599998, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(156.000183, 2.69971204, 5.599998, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(156.000183, 5.69955111, 5.599998, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(156.000183, 8.69956779, 5.599998, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(128.30011, -1.90001237, 4.69996595, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(128.30011, 2.59999967, 4.69996595, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(128.30011, 5.59983873, 4.69996595, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(128.30011, 8.59985733, 4.69996595, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(63.4999771, -1.90001237, 17.4999962, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(63.4999771, 2.59999967, 17.4999962, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(63.4999771, 5.59983873, 17.4999962, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(63.4999771, 8.59985733, 17.4999962, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(52.7001038, -1.7003665, 119.650139, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(52.7001038, 2.79963994, 119.650139, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(52.7001038, 5.79948521, 119.650139, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(52.7001038, 8.79950333, 119.650139, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(48.5999756, -1.80008638, 141.95015, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(48.5999756, 2.69991994, 141.95015, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(48.5999756, 5.69976473, 141.95015, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(48.5999756, 8.69978333, 141.95015, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(100.099937, -1.90001237, 4.90007782, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(100.099937, 2.59999967, 4.90007782, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(100.099937, 5.59983873, 4.90007782, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(100.099937, 8.59985733, 4.90007782, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(32.7501869, -1.70028448, 131.599976, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(32.7501869, 2.79972196, 131.599976, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(32.7501869, 5.79956722, 131.599976, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(32.7501869, 8.79958534, 131.599976, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(31.9999695, -1.80008638, 157.350006, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(31.9999695, 2.69991994, 157.350006, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(31.9999695, 5.69976473, 157.350006, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(31.9999695, 8.69978333, 157.350006, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(117.45015, -1.80021036, -43.1497726, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(117.45015, 2.69979596, -43.1497726, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(117.45015, 5.69964075, -43.1497726, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(117.45015, 8.69965935, -43.1497726, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(40.950016, -1.70043421, -31.2498093, 0, 0, -1, 1, 0, 0, 0, -1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(40.950016, 2.79957318, -31.2498093, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(40.950016, 5.79941845, -31.2498093, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(40.950016, 8.79943657, -31.2498093, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(32.2501831, -1.80015409, -12.9498358, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(32.2501831, 2.69985318, -12.9498358, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(32.2501831, 5.69969416, -12.9498358, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(32.2501831, 8.69971657, -12.9498358, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(165.600098, -1.80029809, -40.3998795, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(165.600098, 2.69971204, -40.3998795, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(165.600098, 5.69955111, -40.3998795, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(165.600098, 8.69956779, -40.3998795, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(145.349991, -1.70049047, -42.0498276, 0, 0, -1, 1, 0, 0, 0, -1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(145.349991, 2.79951596, -42.0498276, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(145.349991, 5.79936123, -42.0498276, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(145.349991, 8.79937935, -42.0498276, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(33.850071, -1.60056448, 103.700203, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(33.850071, 2.89944196, 103.700203, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(33.850071, 5.89928722, 103.700203, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(33.850071, 8.89930344, 103.700203, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(69.6999969, -1.90001237, -19.0998993, 0, 0, -1, 1, 0, 0, 0, -1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(69.6999969, 2.59999967, -19.0998993, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(69.6999969, 5.59983873, -19.0998993, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(69.6999969, 8.59985733, -19.0998993, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(139.400024, -1.80029809, -58.9998398, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(139.400024, 2.69971204, -58.9998398, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(139.400024, 5.69955111, -58.9998398, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(139.400024, 8.69956779, -58.9998398, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(129.400024, -1.80029809, -23.1999054, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(129.400024, 2.69971204, -23.1999054, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(129.400024, 5.69955111, -23.1999054, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(129.400024, 8.69956779, -23.1999054, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(91.7000275, -1.90001237, -43.9000244, 0, 0, -1, 1, 0, 0, 0, -1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(91.7000275, 2.59999967, -43.9000244, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(91.7000275, 5.59983873, -43.9000244, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(91.7000275, 8.59985733, -43.9000244, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(107.099937, -1.90001237, -27.3000336, 0, 0, -1, 1, 0, 0, 0, -1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(107.099937, 2.59999967, -27.3000336, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(107.099937, 5.59983873, -27.3000336, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(107.099937, 8.59985733, -27.3000336, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(84.2001038, -1.80026376, -86.6497421, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(84.2001038, 2.69974637, -86.6497421, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(84.2001038, 5.69958353, -86.6497421, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(84.2001038, 8.69960594, -86.6497421, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "House";
		Create'Model'{
			Name = "Roof";
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(302);
				Material = Enum.Material.Cobblestone;
				Size = Vector3.new(2, 19.7000027, 35);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-7.96958876, 8.3999939, 0, 0.5, -0.866025388, 0, -0.866025388, -0.5, 0, 0, 0, -1);
				--Position = Vector3;
			};
			Create'WedgePart'{
				Anchored = true;
				BrickColor = BrickColor.new(320);
				Material = Enum.Material.Concrete;
				Size = Vector3.new(1, 8.79999924, 14.6000004);
				formFactor = Enum.FormFactor.Symmetric;
				CFrame = CFrame.new(7.19998884, 7.89999485, 13, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				--Position = Vector3;
			};
			Create'WedgePart'{
				Anchored = true;
				BrickColor = BrickColor.new(320);
				Material = Enum.Material.Concrete;
				Size = Vector3.new(1, 8.79999924, 14.6000004);
				formFactor = Enum.FormFactor.Symmetric;
				CFrame = CFrame.new(7.19998884, 7.89999485, -13.0000143, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(302);
				Material = Enum.Material.Cobblestone;
				Size = Vector3.new(2, 19.7000008, 35);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(8.01959991, 8.3999939, 0, -0.5, -0.866025329, 0, -0.866025329, 0.5, 0, 0, 0, -1);
				--Position = Vector3;
			};
			Create'WedgePart'{
				Anchored = true;
				BrickColor = BrickColor.new(320);
				Material = Enum.Material.Concrete;
				Size = Vector3.new(1, 8.79999924, 14.6000004);
				formFactor = Enum.FormFactor.Symmetric;
				CFrame = CFrame.new(-7.19999695, 7.89999485, -13.0000143, -5.54074617e-008, -1.49011612e-007, 0.99999994, -2.47144083e-009, 1, 8.94069672e-008, -1, -5.51784751e-009, -6.56268853e-008);
				--Position = Vector3;
			};
			Create'WedgePart'{
				Anchored = true;
				BrickColor = BrickColor.new(320);
				Material = Enum.Material.Cobblestone;
				Size = Vector3.new(2, 8.79999924, 14.6000004);
				formFactor = Enum.FormFactor.Symmetric;
				CFrame = CFrame.new(-7.19999695, 7.89999485, -14.5000143, -5.54074617e-008, -1.49011612e-007, 0.99999994, -2.47144083e-009, 1, 8.94069672e-008, -1, -5.51784751e-009, -6.56268853e-008);
				--Position = Vector3;
			};
			Create'WedgePart'{
				Anchored = true;
				BrickColor = BrickColor.new(320);
				Material = Enum.Material.Cobblestone;
				Size = Vector3.new(2, 8.79999924, 14.6000004);
				formFactor = Enum.FormFactor.Symmetric;
				CFrame = CFrame.new(-7.19999695, 7.89999485, 14.5, -5.54074617e-008, -1.49011612e-007, 0.99999994, -2.47144083e-009, 1, 8.94069672e-008, -1, -5.51784751e-009, -6.56268853e-008);
				--Position = Vector3;
			};
			Create'WedgePart'{
				Anchored = true;
				BrickColor = BrickColor.new(320);
				Material = Enum.Material.Concrete;
				Size = Vector3.new(1, 8.79999924, 14.6000004);
				formFactor = Enum.FormFactor.Symmetric;
				CFrame = CFrame.new(-7.19999695, 7.89999485, 13, -5.54074617e-008, -1.49011612e-007, 0.99999994, -2.47144083e-009, 1, 8.94069672e-008, -1, -5.51784751e-009, -6.56268853e-008);
				--Position = Vector3;
			};
			Create'WedgePart'{
				Anchored = true;
				BrickColor = BrickColor.new(320);
				Material = Enum.Material.Cobblestone;
				Size = Vector3.new(2, 8.79999924, 14.6000004);
				formFactor = Enum.FormFactor.Symmetric;
				CFrame = CFrame.new(7.19998884, 7.89999485, 14.5, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				--Position = Vector3;
			};
			Create'WedgePart'{
				Anchored = true;
				BrickColor = BrickColor.new(320);
				Material = Enum.Material.Cobblestone;
				Size = Vector3.new(2, 8.79999924, 14.6000004);
				formFactor = Enum.FormFactor.Symmetric;
				CFrame = CFrame.new(7.19998884, 7.89999485, -14.5000143, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				--Position = Vector3;
			};
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(5);
			Material = Enum.Material.WoodPlanks;
			Size = Vector3.new(2, 7.19999933, 20);
			formFactor = Enum.FormFactor.Custom;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(13.4999619, -0.100021034, -2.5, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(302);
			Material = Enum.Material.Concrete;
			Size = Vector3.new(31, 1.20000005, 29);
			formFactor = Enum.FormFactor.Custom;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(0, -4.30001545, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0);
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(5);
			Material = Enum.Material.WoodPlanks;
			Size = Vector3.new(1, 7.19999981, 23);
			formFactor = Enum.FormFactor.Custom;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(0, -0.100021034, -15, 0, 0, 1, 0, 1, -0, -1, 0, 0);
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(325);
			Material = Enum.Material.Concrete;
			Size = Vector3.new(1, 7.19999981, 23);
			formFactor = Enum.FormFactor.Custom;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(0, -0.100021034, -13, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(325);
			Material = Enum.Material.Concrete;
			Size = Vector3.new(1, 9.19999981, 20);
			formFactor = Enum.FormFactor.Custom;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(11.9999676, 0.899984896, -2.5, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			Material = Enum.Material.Metal;
			Size = Vector3.new(3, 0.200000003, 3.99999976);
			formFactor = Enum.FormFactor.Custom;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(12.9999619, -3.6000073, 9.5, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.WoodPlanks;
			Size = Vector3.new(23, 0.200000003, 25);
			formFactor = Enum.FormFactor.Custom;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(0, -3.6000073, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			--Position = Vector3;
		};
		Create'Model'{
			Name = "Pillar";
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3.20000005, 1.20000005, 3.20000005);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(13.099968, -3.10001206, -14.1000061, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(1.20000005, 3.00000024, 3);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(12.9999619, 2.89999127, -14, 0, -1, 0, -1, 0, 0, 0, 0, -1);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3, 0.400000036, 3);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(12.9999619, 0.899981081, -14, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3.20000005, 1.20000005, 3.20000005);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(13.099968, -1.5000205, -14.1000061, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3, 0.400000036, 3);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(12.9999619, -2.30001521, -14, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3, 0.400000036, 3);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(12.9999619, -0.700016558, -14, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3.20000005, 1.20000005, 3.20000005);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(13.099968, 0.0999786705, -14.1000061, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3.20000005, 1.20000005, 3.20000005);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(13.099968, 1.69998646, -14.1000061, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				--Position = Vector3;
			};
		};
		Create'Model'{
			Name = "Table";
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(365);
				Material = Enum.Material.Wood;
				Size = Vector3.new(2.49546885, 1.24773693, 1.24773455);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-0.156005993, -2.21801543, -0.144020006, 0, 0, 1, 1, 0, 0, 0, 1, 0);
				--Position = Vector3;
				Shape = Enum.PartType.Cylinder;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(365);
				Material = Enum.Material.Wood;
				Size = Vector3.new(2.49546885, 1.24773693, 1.24773455);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-2.44371796, -2.21803546, 2.143852, 0, 0, 1, 1, 0, 0, 0, 1, 0);
				--Position = Vector3;
				Shape = Enum.PartType.Cylinder;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(365);
				Material = Enum.Material.Wood;
				Size = Vector3.new(2.49546885, 1.24773693, 1.24773455);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-0.156128004, -2.21803546, 2.143852, 0, 0, 1, 1, 0, 0, 0, 1, 0);
				--Position = Vector3;
				Shape = Enum.PartType.Cylinder;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(365);
				Material = Enum.Material.Wood;
				Size = Vector3.new(2.49546885, 1.24773693, 1.24773455);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-2.44371796, -2.21803546, -0.143654004, 0, 0, 1, 1, 0, 0, 0, 1, 0);
				--Position = Vector3;
				Shape = Enum.PartType.Cylinder;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(365);
				Material = Enum.Material.Wood;
				Size = Vector3.new(0.832000017, 4.57499981, 4.57499981);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-1.29998004, -0.554627836, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0);
				--Position = Vector3;
				Shape = Enum.PartType.Cylinder;
			};
		};
		Create'Model'{
			Name = "Stool";
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(365);
				Material = Enum.Material.Wood;
				Size = Vector3.new(1.20000005, 0.600000024, 0.600000024);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-1.84993696, -2.80117631, 3.75003791, 0, 0, 1, 1, 0, 0, 0, 1, 0);
				--Position = Vector3;
				Shape = Enum.PartType.Cylinder;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(365);
				Material = Enum.Material.Wood;
				Size = Vector3.new(1.20000005, 0.600000024, 0.600000024);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-0.749778986, -2.80117631, 3.75003791, 0, 0, 1, 1, 0, 0, 0, 1, 0);
				--Position = Vector3;
				Shape = Enum.PartType.Cylinder;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(365);
				Material = Enum.Material.Wood;
				Size = Vector3.new(1.20000005, 0.600000024, 0.600000024);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-0.749778986, -2.80117631, 4.85002899, 0, 0, 1, 1, 0, 0, 0, 1, 0);
				--Position = Vector3;
				Shape = Enum.PartType.Cylinder;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(365);
				Material = Enum.Material.Wood;
				Size = Vector3.new(1.20000005, 0.600000024, 0.600000024);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-1.84993696, -2.80117631, 4.85002899, 0, 0, 1, 1, 0, 0, 0, 1, 0);
				--Position = Vector3;
				Shape = Enum.PartType.Cylinder;
			};
			Create'Seat'{
				--Position = Vector3;
				CFrame = CFrame.new(-1.29985797, -2.00120521, 4.30008316, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				Material = Enum.Material.Wood;
				Size = Vector3.new(2.20000005, 0.400000006, 2.20000005);
				formFactor = Enum.FormFactor.Custom;
				Anchored = true;
				BrickColor = BrickColor.new(365);
				Create'CylinderMesh'{
				};
			};
		};
		Create'Model'{
			Name = "Door";
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(345);
				CanCollide = false;
				Material = Enum.Material.Wood;
				Size = Vector3.new(1.39999998, 6, 3.99999976);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(13.1999741, -0.500020444, 9.5, -1, 0, 0, 0, 1, 0, 0, 0, -1);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(24);
				CanCollide = false;
				Material = Enum.Material.Metal;
				Size = Vector3.new(1, 1, 1);
				formFactor = Enum.FormFactor.Symmetric;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(13.7998877, -0.700016558, 10.7000198, -1, 0, 0, 0, 1, 0, 0, 0, -1);
				--Position = Vector3;
				Shape = Enum.PartType.Ball;
			};
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(5);
			Material = Enum.Material.WoodPlanks;
			Size = Vector3.new(1, 7.19999981, 25);
			formFactor = Enum.FormFactor.Custom;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-14.0000076, -0.100021034, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(5);
			Material = Enum.Material.WoodPlanks;
			Size = Vector3.new(2, 7.19999981, 0.999999821);
			formFactor = Enum.FormFactor.Custom;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(13.4999619, -0.100021034, 12, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(5);
			Material = Enum.Material.WoodPlanks;
			Size = Vector3.new(1, 7.19999981, 22.9999981);
			formFactor = Enum.FormFactor.Custom;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(0, -0.100021034, 15, 0, 0, 1, 0, 1, -0, -1, 0, 0);
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(325);
			Material = Enum.Material.Concrete;
			Size = Vector3.new(1, 7.19999981, 23);
			formFactor = Enum.FormFactor.Custom;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(0, -0.100021034, 13, 0, 0, -0.99999994, 0, 0.999999881, 0, 0.99999994, 0, 0);
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(5);
			Material = Enum.Material.WoodPlanks;
			Size = Vector3.new(2, 0.999999821, 4);
			formFactor = Enum.FormFactor.Custom;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(13.4999619, 2.99999356, 9.5, -0.999999523, 0, 0, 0, -0.999999762, 0, 0, 0, 0.999999762);
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(325);
			Material = Enum.Material.Concrete;
			Size = Vector3.new(1, 9.19999981, 25);
			formFactor = Enum.FormFactor.Custom;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-12.0000076, 0.899984896, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			--Position = Vector3;
		};
		Create'Model'{
			Name = "Candle";
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(341);
				Material = Enum.Material.Wood;
				Size = Vector3.new(0.800000012, 0.600000024, 0.600000024);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-1.29985797, 0.399112701, 1, 0, -1, -0, -1, 0, -0, 0, 0, -1);
				--Position = Vector3;
				Shape = Enum.PartType.Cylinder;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(320);
				Material = Enum.Material.Metal;
				Size = Vector3.new(1.4000001, 0.200000003, 1.4000001);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-1.29985797, 0.0991508812, 1.00008404, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				--Position = Vector3;
				Create'CylinderMesh'{
					Offset = Vector3.new(0, -0.100000001, 0);
					Scale = Vector3.new(0.850000024, 0.100000001, 0.850000024);
				};
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(26);
				Material = Enum.Material.Fabric;
				Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-1.29985797, 0.899069369, 1.00008404, 0, 0, -1, 0, 1, 0, 1, 0, 0);
				--Position = Vector3;
				Create'CylinderMesh'{
					Scale = Vector3.new(0.200000003, 1, 0.200000003);
				};
				Create'Fire'{
					Enabled = false;
					Heat = 5;
				};
				Create'PointLight'{
				};
			};
		};
		Create'Model'{
			Name = "Pillar";
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3.20000005, 1.20000005, 3.20000005);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(13.099968, -3.10001206, 14.1000061, -1, 0, 0, 0, 1, 0, 0, 0, -1);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(1.20000005, 3.00000024, 3);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(12.9999619, 2.89999127, 14, 0, 0, 1, -1, 0, 0, 0, -1, 0);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3, 0.400000036, 3);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(12.9999619, 0.899984896, 14, -1, 0, 0, 0, 1, 0, 0, 0, -1);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3.20000005, 1.20000005, 3.20000005);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(13.099968, -1.50001192, 14.1000061, -1, 0, 0, 0, 1, 0, 0, 0, -1);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3, 0.400000036, 3);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(12.9999619, -2.30001521, 14, -1, 0, 0, 0, 1, 0, 0, 0, -1);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3, 0.400000036, 3);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(12.9999619, -0.700016558, 14, -1, 0, 0, 0, 1, 0, 0, 0, -1);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3.20000005, 1.20000005, 3.20000005);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(13.099968, 0.0999805778, 14.1000061, -1, 0, 0, 0, 1, 0, 0, 0, -1);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3.20000005, 1.20000005, 3.20000005);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(13.099968, 1.69998646, 14.1000061, -1, 0, 0, 0, 1, 0, 0, 0, -1);
				--Position = Vector3;
			};
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(325);
			Material = Enum.Material.Concrete;
			Size = Vector3.new(1, 9.19999981, 0.999999821);
			formFactor = Enum.FormFactor.Custom;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(11.9999676, 0.899984896, 12, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(325);
			Material = Enum.Material.Concrete;
			Size = Vector3.new(1, 2.99999976, 3.99999976);
			formFactor = Enum.FormFactor.Custom;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(11.9999676, 3.99998641, 9.5, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			--Position = Vector3;
		};
		Create'Model'{
			Name = "Stool";
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(365);
				Material = Enum.Material.Wood;
				Size = Vector3.new(1.20000005, 0.600000024, 0.600000024);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-0.749900997, -2.80117631, -1.94993603, 5.8113776e-009, 1.04308128e-007, -0.999999762, 1, 2.78269908e-007, 5.81141535e-009, 2.78269965e-007, -0.999999762, -1.04308128e-007);
				--Position = Vector3;
				Shape = Enum.PartType.Cylinder;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(365);
				Material = Enum.Material.Wood;
				Size = Vector3.new(1.20000005, 0.600000024, 0.600000024);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-1.84993696, -2.80117631, -1.94993603, 5.8113776e-009, 1.04308128e-007, -0.999999762, 1, 2.78269908e-007, 5.81141535e-009, 2.78269965e-007, -0.999999762, -1.04308128e-007);
				--Position = Vector3;
				Shape = Enum.PartType.Cylinder;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(365);
				Material = Enum.Material.Wood;
				Size = Vector3.new(1.20000005, 0.600000024, 0.600000024);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-1.84993696, -2.80117631, -3.05004096, 5.8113776e-009, 1.04308128e-007, -0.999999762, 1, 2.78269908e-007, 5.81141535e-009, 2.78269965e-007, -0.999999762, -1.04308128e-007);
				--Position = Vector3;
				Shape = Enum.PartType.Cylinder;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(365);
				Material = Enum.Material.Wood;
				Size = Vector3.new(1.20000005, 0.600000024, 0.600000024);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-0.749900997, -2.80117631, -3.05004096, 5.8113776e-009, 1.04308128e-007, -0.999999762, 1, 2.78269908e-007, 5.81141535e-009, 2.78269965e-007, -0.999999762, -1.04308128e-007);
				--Position = Vector3;
				Shape = Enum.PartType.Cylinder;
			};
			Create'Seat'{
				--Position = Vector3;
				CFrame = CFrame.new(-1.29985797, -2.00120521, -2.5, -0.999999762, 5.8113776e-009, 1.04308128e-007, 5.81141535e-009, 1, 2.78269908e-007, -1.04308128e-007, 2.78269965e-007, -0.999999762);
				Material = Enum.Material.Wood;
				Size = Vector3.new(2.20000005, 0.400000006, 2.20000005);
				formFactor = Enum.FormFactor.Custom;
				Anchored = true;
				BrickColor = BrickColor.new(365);
				Create'CylinderMesh'{
				};
			};
		};
		Create'Model'{
			Name = "Pillar";
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3.20000005, 1.20000005, 3.20000005);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-13.1000137, -3.10001206, -14.100028, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(1.20000005, 3.00000024, 3);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-13.0000076, 2.89999127, -14.0000143, 0, 0, -1, -1, 0, 0, 0, 1, 0);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3, 0.400000036, 3);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-13.0000076, 0.899981081, -14.0000143, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3.20000005, 1.20000005, 3.20000005);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-13.1000137, -1.5000205, -14.100028, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3, 0.400000036, 3);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-13.0000076, -2.30001521, -14.0000143, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3, 0.400000036, 3);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-13.0000076, -0.700016558, -14.0000143, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3.20000005, 1.20000005, 3.20000005);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-13.1000137, 0.0999786705, -14.100028, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3.20000005, 1.20000005, 3.20000005);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-13.1000137, 1.69998646, -14.100028, 1, 0, 0, 0, 1, 0, 0, 0, 1);
				--Position = Vector3;
			};
		};
		Create'Model'{
			Name = "Pillar";
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3.20000005, 1.20000005, 3.20000005);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-13.0999517, -3.10001206, 14.1000061, 0, 0, 1, 0, 1, 0, -1, 0, 0);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(1.20000005, 3.00000024, 3);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-12.9998856, 2.89999127, 14, 0, 1, 0, -1, 0, 0, 0, 0, 1);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3, 0.400000036, 3);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-12.9998856, 0.899981081, 14, 0, 0, 1, 0, 1, 0, -1, 0, 0);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3.20000005, 1.20000005, 3.20000005);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-13.0999517, -1.5000205, 14.1000061, 0, 0, 1, 0, 1, 0, -1, 0, 0);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3, 0.400000036, 3);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-12.9998856, -2.30001521, 14, 0, 0, 1, 0, 1, 0, -1, 0, 0);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3, 0.400000036, 3);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-12.9998856, -0.700016558, 14, 0, 0, 1, 0, 1, 0, -1, 0, 0);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3.20000005, 1.20000005, 3.20000005);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-13.0999517, 0.0999786705, 14.1000061, 0, 0, 1, 0, 1, 0, -1, 0, 0);
				--Position = Vector3;
			};
			Create'Part'{
				Anchored = true;
				TopSurface = Enum.SurfaceType.Smooth;
				BrickColor = BrickColor.new(339);
				Material = Enum.Material.Brick;
				Size = Vector3.new(3.20000005, 1.20000005, 3.20000005);
				formFactor = Enum.FormFactor.Custom;
				BottomSurface = Enum.SurfaceType.Smooth;
				CFrame = CFrame.new(-13.0999517, 1.69998646, 14.1000061, 0, 0, 1, 0, 1, 0, -1, 0, 0);
				--Position = Vector3;
			};
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(16.9000168, -1.7003665, 109.650139, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(16.9000168, 2.79963994, 109.650139, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(16.9000168, 5.79948521, 109.650139, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(16.9000168, 8.79950333, 109.650139, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(8.49997616, -1.90001237, 34.0999641, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(8.49997616, 2.59999967, 34.0999641, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(8.49997616, 5.59983873, 34.0999641, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(8.49997616, 8.59985733, 34.0999641, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(5.65005493, -1.80015409, -41.7498398, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(5.65005493, 2.69985318, -41.7498398, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(5.65005493, 5.69969416, -41.7498398, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(5.65005493, 8.69971657, -41.7498398, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(7.30011702, -1.7003665, 83.6501236, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(7.30011702, 2.79963994, 83.6501236, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(7.30011702, 5.79948521, 83.6501236, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(7.30011702, 8.79950333, 83.6501236, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(14.2999802, -1.80008638, 60.9000397, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(14.2999802, 2.69992566, 60.9000397, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(14.2999802, 5.69976473, 60.9000397, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(14.2999802, 8.69978905, 60.9000397, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(133.000015, -1.80026376, -95.0496292, 0, 1, 0, 1, 0, 0, 0, 0, -1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(133.000015, 2.69974637, -95.0496292, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(133.000015, 5.69958353, -95.0496292, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(133.000015, 8.69960594, -95.0496292, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(147.199982, -1.80035436, -84.2495193, 0, 1, 0, 1, 0, 0, 0, 0, -1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(147.199982, 2.69965672, -84.2495193, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(147.199982, 5.69950151, -84.2495193, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(147.199982, 8.6995163, -84.2495193, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(165.400055, -1.80029809, -68.599884, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(165.400055, 2.69971204, -68.599884, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(165.400055, 5.69955111, -68.599884, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(165.400055, 8.69956779, -68.599884, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(91.2499466, -1.80021036, -61.7496796, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(91.2499466, 2.69979596, -61.7496796, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(91.2499466, 5.69964075, -61.7496796, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(91.2499466, 8.69965935, -61.7496796, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(117.250076, -1.80021036, -71.3497772, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(117.250076, 2.69979596, -71.3497772, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(117.250076, 5.69964075, -71.3497772, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(117.250076, 8.69965935, -71.3497772, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(41.850071, -1.80015409, -58.9496841, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(41.850071, 2.69985318, -58.9496841, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(41.850071, 5.69969416, -58.9496841, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(41.850071, 8.69971657, -58.9496841, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(69.7499161, -1.70043421, -57.8498077, 0, 0, -1, 1, 0, 0, 0, -1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(69.7499161, 2.79957318, -57.8498077, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(69.7499161, 5.79941845, -57.8498077, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(69.7499161, 8.79943657, -57.8498077, -1, 0, 0, 0, 1, 0, 0, 0, -1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-6.70008802, -1.90001237, -73.099884, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-6.70008802, 2.59999967, -73.099884, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-6.70008802, 5.59983873, -73.099884, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-6.70008802, 8.59985733, -73.099884, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-26.3499298, -1.60081816, -92.4996414, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-26.3499298, 2.899194, -92.4996414, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-26.3499298, 5.89903927, -92.4996414, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-26.3499298, 8.89905548, -92.4996414, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(66.3503189, -1.70043421, -86.1997757, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(66.3503189, 2.79957318, -86.1997757, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(66.3503189, 5.79941845, -86.1997757, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(66.3503189, 8.79943657, -86.1997757, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-27.4498138, -1.70053816, -64.5997162, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-27.4498138, 2.79947209, -64.5997162, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-27.4498138, 5.79931355, -64.5997162, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-27.4498138, 8.79932785, -64.5997162, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-3.2000649, -1.7001462, 56.1501122, 0, 1, 0, 1, 0, 0, 0, 0, -1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-3.2000649, 2.79986119, 56.1501122, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-3.2000649, 5.79970837, 56.1501122, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-3.2000649, 8.79972458, 56.1501122, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-13.1999884, -1.7001462, 91.9499817, 0, 1, 0, 1, 0, 0, 0, 0, -1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-13.1999884, 2.79986119, 91.9499817, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-13.1999884, 5.79970837, 91.9499817, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-13.1999884, 8.79972458, 91.9499817, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-33.1998749, -1.80007207, -39.2498932, 0, 1, 0, 1, 0, 0, 0, 0, -1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-33.1998749, 2.69993329, -39.2498932, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-33.1998749, 5.69977427, -39.2498932, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-33.1998749, 8.69979668, -39.2498932, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(4.55018616, -1.70028448, 131.800095, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(4.55018616, 2.79972196, 131.800095, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(4.55018616, 5.79956722, 131.800095, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(4.55018616, 8.79958534, 131.800095, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(100.79995, -1.80026376, -102.049629, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(100.79995, 2.69974637, -102.049629, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(100.79995, 5.69958353, -102.049629, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(100.79995, 8.69960594, -102.049629, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(84.9501953, -1.70043421, -112.399834, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(84.9501953, 2.79957318, -112.399834, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(84.9501953, 5.79941845, -112.399834, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(84.9501953, 8.79943657, -112.399834, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(104.900162, -1.70054388, -124.349525, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(104.900162, 2.79946637, -124.349525, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(104.900162, 5.79930401, -124.349525, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(104.900162, 8.79932594, -124.349525, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(56.7501831, -1.70043421, -112.19976, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(56.7501831, 2.79957318, -112.19976, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(56.7501831, 5.79941845, -112.19976, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(56.7501831, 8.79943657, -112.19976, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(14.1502895, -1.70028448, 157.80011, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(14.1502895, 2.79972196, 157.80011, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(14.1502895, 5.79956722, 157.80011, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(14.1502895, 8.79958534, 157.80011, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(178.350052, -1.70055819, -110.999611, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(178.350052, 2.79945302, -110.999611, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(178.350052, 5.79929829, -110.999611, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(178.350052, 8.79931259, -110.999611, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(6.29989576, -1.90001237, -105.700012, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(6.29989576, 2.59999967, -105.700012, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(6.29989576, 5.59983873, -105.700012, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(6.29989576, 8.59985733, -105.700012, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(164.150116, -1.70047617, -121.799583, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(164.150116, 2.79953122, -121.799583, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(164.150116, 5.7993784, -121.799583, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(164.150116, 8.7993927, -121.799583, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(29.2998886, -1.90001237, -117.899948, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(29.2998886, 2.59999967, -117.899948, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(29.2998886, 5.59983873, -117.899948, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(29.2998886, 8.59985733, -117.899948, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(87.7000427, -1.70054388, -160.549774, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(87.7000427, 2.79946637, -160.549774, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(87.7000427, 5.79930401, -160.549774, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(87.7000427, 8.79932594, -160.549774, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(15.6500463, -1.80015409, -77.5497437, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(15.6500463, 2.69985318, -77.5497437, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(15.6500463, 5.69969416, -77.5497437, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(15.6500463, 8.69971657, -77.5497437, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(69.1002274, -1.70054388, -134.349518, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(69.1002274, 2.79946637, -134.349518, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(69.1002274, 5.79930401, -134.349518, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(69.1002274, 8.79932594, -134.349518, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(118.750275, -1.70047617, -157.799561, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(118.750275, 2.79953122, -157.799561, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(118.750275, 5.7993784, -157.799561, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(118.750275, 8.7993927, -157.799561, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(12.2002258, -1.80023801, -146.249756, 0, 1, 0, 1, 0, 0, 0, 0, -1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(12.2002258, 2.69977117, -146.249756, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(12.2002258, 5.69961214, -146.249756, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(12.2002258, 8.69963455, -146.249756, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(142.550293, -1.70055819, -120.999565, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(142.550293, 2.79945302, -120.999565, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(142.550293, 5.79929829, -120.999565, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(142.550293, 8.79931259, -120.999565, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(41.6500587, -1.80015409, -87.1498184, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(41.6500587, 2.69985318, -87.1498184, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(41.6500587, 5.69969416, -87.1498184, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(41.6500587, 8.69971657, -87.1498184, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(128.350281, -1.70047617, -131.799561, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(128.350281, 2.79953122, -131.799561, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(128.350281, 5.7993784, -131.799561, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(128.350281, 8.7993927, -131.799561, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(86.0501709, -1.60072851, -140.299561, 0, -1, 0, 1, 0, 0, 0, 0, 1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(86.0501709, 2.89928365, -140.299561, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(86.0501709, 5.89912319, -140.299561, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(86.0501709, 8.89914513, -140.299561, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(39.0000916, -1.70031214, -152.049957, 0, 1, 0, 1, 0, 0, 0, 0, -1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(39.0000916, 2.79969525, -152.049957, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(39.0000916, 5.79954243, -152.049957, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(39.0000916, 8.79955864, -152.049957, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-29.8001251, -1.7001462, 27.3501663, 0, 1, 0, 1, 0, 0, 0, 0, -1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-29.8001251, 2.79986119, 27.3501663, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-29.8001251, 5.79970837, 27.3501663, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-29.8001251, 8.79972458, 27.3501663, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-39.3998871, -1.7001462, 73.3500061, 0, 1, 0, 1, 0, 0, 0, 0, -1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-39.3998871, 2.79986119, 73.3500061, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-39.3998871, 5.79970837, 73.3500061, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-39.3998871, 8.79972458, 73.3500061, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-29.0000153, -1.80007207, 52.5501251, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-29.0000153, 2.69993329, 52.5501251, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-29.0000153, 5.69977427, 52.5501251, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-29.0000153, 8.69979668, 52.5501251, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-40.0000153, -1.80007207, 97.7500458, 0, 1, 0, 1, 0, 0, 0, 0, -1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-40.0000153, 2.69993329, 97.7500458, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-40.0000153, 5.69977427, 97.7500458, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-40.0000153, 8.69979668, 97.7500458, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-59.800209, -1.80007207, -68.0499115, 0, 1, 0, 1, 0, 0, 0, 0, -1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-59.800209, 2.69993329, -68.0499115, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-59.800209, 5.69977427, -68.0499115, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-59.800209, 8.69979668, -68.0499115, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-56.6001358, -1.80007207, 42.7501297, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-56.6001358, 2.69993329, 42.7501297, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-56.6001358, 5.69977427, 42.7501297, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-56.6001358, 8.69979668, 42.7501297, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-43.1998749, -1.80007207, -3.45002007, 0, 1, 0, 1, 0, 0, 0, 0, -1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-43.1998749, 2.69993329, -3.45002007, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-43.1998749, 5.69977427, -3.45002007, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-43.1998749, 8.69979668, -3.45002007, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-68.5000076, -1.70035219, -49.749958, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-68.5000076, 2.79965329, -49.749958, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-68.5000076, 5.79949474, -49.749958, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-68.5000076, 8.79951668, -49.749958, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-69.4001236, -1.80007207, -22.0499115, 0, 1, 0, 1, 0, 0, 0, 0, -1);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-69.4001236, 2.69993329, -22.0499115, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-69.4001236, 5.69977427, -22.0499115, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(-69.4001236, 8.69979668, -22.0499115, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(102.29998, -1.80026376, -173.099854, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(102.29998, 2.69974637, -173.099854, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(102.29998, 5.69958353, -173.099854, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(102.29998, 8.69960594, -173.099854, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
	Create'Model'{
		Name = "Tree";
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(365);
			Material = Enum.Material.Wood;
			Size = Vector3.new(6, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(59.5001526, -1.70054388, -160.349518, 0, 0, 1, 1, 0, 0, 0, 1, 0);
			Name = "Trunk";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(6, 3, 6);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(59.5001526, 2.79946637, -160.349518, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(4, 3, 4);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(59.5001526, 5.79930401, -160.349518, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
		Create'Part'{
			Anchored = true;
			TopSurface = Enum.SurfaceType.Smooth;
			BrickColor = BrickColor.new(141);
			Material = Enum.Material.Sand;
			Size = Vector3.new(2, 3, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(59.5001526, 8.79932594, -160.349518, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Leaves";
			--Position = Vector3;
		};
	};
})
model.Parent=workspace.Base
model:MoveTo(Vector3.new(0, 0, 0))
