local Model = game:GetService("InsertService"):LoadAsset(61274341):GetChildren()[1]
Model.Parent = Workspace
Model:MakeJoints()
Model:MoveTo(Vector3.new(0, 0, -100))