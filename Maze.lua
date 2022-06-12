local NodesPerStep = 30 --More = faster . . . basically steps between wait()'s.

local Maze = {}
function Maze:New(xSize, ySize)
	local Cells = {}
	local IDs = {}
	local ID = 1
	for x = 0, xSize+1 do
		Cells[x] = {}
		for y = 0, ySize+1 do
			Cells[x][y] = {
				ID = ID;
				X = x;
				Y = y;
				Edge = (x == 0 or y == 0 or x==xSize+1 or y == ySize+1)
			}
			IDs[ID] = Cells[x][y]
			ID = ID + 1
		end
	end
	local NewMaze = {
		Cells = Cells;
		IDs = IDs;
	}
	setmetatable(NewMaze, {
		__index = Maze;
	})
	return NewMaze
end
function Maze:NewWalls(x, y)
	local Walls = {}
	if  (x == self.Finish.X and y == self.Finish.Y) or 
		(x == self.Start.X and y == self.Start.Y) then
		print("Start or finish!")
		if x == #self.Cells then
			Walls[1] = {self.Cells[x][y].ID, self.Cells[x-1][y].ID}
			Walls[2] = {self.Cells[x][y].ID, false}
		else
			Walls[1] = {self.Cells[x][y].ID, self.Cells[x+1][y].ID}
			Walls[2] = {self.Cells[x][y].ID, false}
		end
		if y == #self.Cells[x] then
			Walls[3] = {self.Cells[x][y].ID, self.Cells[x][y-1].ID}
			Walls[4] = {self.Cells[x][y].ID, false}
		else
			Walls[3] = {self.Cells[x][y].ID, self.Cells[x][y+1].ID}
			Walls[4] = {self.Cells[x][y].ID, false}
		end	
	else
		Walls[1] = {self.Cells[x][y].ID, self.Cells[x-1][y].ID}
		Walls[2] = {self.Cells[x][y].ID, self.Cells[x+1][y].ID}
		Walls[3] = {self.Cells[x][y].ID, self.Cells[x][y-1].ID}
		Walls[4] = {self.Cells[x][y].ID, self.Cells[x][y+1].ID}
	end
	return Walls
end
function Maze:Generate(start, finish, wallLength, wallThickness, wallHeight)
	self.Finish = finish
	self.Start = start
	self.WallLength = wallLength
	self.WallThickness = wallThickness
	self.WallHeight = wallHeight
	self.Model = Instance.new("Model")
	local Walls = self:NewWalls(start.X, start.Y)
	local PermWalls = {}
	local PermCells = {[self.Cells[start.X][start.Y].ID] = true}
	local Rand = math.random
	local function MainLoop()
		while wait() do
			for i = 1, NodesPerStep do
				if not next(Walls, Key) then
					return nil
				end
				local Key = Rand(1, #Walls)
				local w = Walls[Key]
				table.remove(Walls,Key)
				local Other
				local Self
				if PermCells[w[1]] then
					if PermCells[w[2]] then
						PermWalls[#PermWalls+1] = w
					else
						Other = w[2]
						Self = w[1]
					end
				else
					Other = w[1]
					Self = w[2]
				end
				if Other then
					PermCells[Other] = true
					if self.IDs[Other].Edge then
						PermWalls[#PermWalls+1] = w
					else
						for _, Wall in pairs(self:NewWalls(self.IDs[Other].X, self.IDs[Other].Y)) do
							if Wall[2] ~= Self then
								Walls[#Walls+1] = Wall
							end
						end
					end
				end
			end
		end
	end
	MainLoop()
	for _, Wall in pairs(PermWalls) do
		self:CreateWall(Wall[1], Wall[2])
	end
	local xMax = ((#self.Cells - 1))*wallLength
	local yMax = ((#self.Cells[1] - 1))*wallLength
	local Floor = Instance.new("Part")
	Floor.Anchored = true
	Floor.Size = Vector3.new(xMax+2, 1.2, yMax+2)
	Floor.Position = Vector3.new(xMax/2+wallLength/2,-0.4,yMax/2+wallLength/2)
	Floor.Parent = self.Model
end
function Maze:CreateWall(id1, id2)
	local Wall = Instance.new "Part"
	Wall.Anchored = true
	Wall.Size = Vector3.new(self.WallLength, self.WallHeight, self.WallThickness)
	local n1 = self.IDs[id1]
	local n2 = self.IDs[id2]
	Wall.CFrame = CFrame.new(
		Vector3.new(n1.X, self.WallHeight/2, n1.Y),
		Vector3.new(n2.X, self.WallHeight/2, n2.Y)
	)
	Wall.Position = Vector3.new((n1.X + n2.X)*self.WallLength/2, self.WallHeight/2, (n1.Y + n2.Y)*self.WallLength/2)
	Wall.Parent = self.Model
end

local m = Maze:New(30,30)
m:Generate(Vector2.new(1,15), Vector2.new(30,15), 10, 2, 10)
m.Model.Parent = Workspace
