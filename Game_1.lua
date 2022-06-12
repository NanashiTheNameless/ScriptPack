--line 75 for flood fill algorithm
local function create(t) local o=Instance.new(t[1]) for p,v in pairs(t) do if p~=1 then o[p]=v end end return o end

GAME_WIDTH	= 64
GAME_HEIGHT	= 64
GAME_SCALE	= 6

local screenGui, gameFrame;

function init()
	screenGui = create{"ScreenGui", Name = "FloodFill"}
	gameFrame = create{"Frame",
		Size = UDim2.new(0, GAME_WIDTH*GAME_SCALE, 0, GAME_HEIGHT*GAME_SCALE),
		Position = UDim2.new(1, -GAME_WIDTH*GAME_SCALE-32, 1, -GAME_HEIGHT*GAME_SCALE-32),
		BackgroundColor3 = Color3.new(), BorderSizePixel = 0, Parent = screenGui
	}
	
	local flood;
	local isFlooding = false
	local moveCounter = 0
	
	for id = 0, 5 do
		local color = Tile.idColor[id]
		local button = create{"ImageButton",
			Size = UDim2.new(0, GAME_WIDTH*GAME_SCALE/6+(id~=5 and 1 or 0), 0, GAME_WIDTH*GAME_SCALE/6), Parent = gameFrame,
			BackgroundColor3 = color, BorderSizePixel = 0, Position = UDim2.new(0, id/6*GAME_WIDTH*GAME_SCALE, 0, -GAME_WIDTH*GAME_SCALE/6)
		}
		button.MouseButton1Down:connect(function()
			if not isFlooding then
				flood(id)
			end
		end)
	end
	
	newGameButton = create{"TextButton",
		Size = UDim2.new(0, GAME_WIDTH*GAME_SCALE/6, 0, GAME_WIDTH*GAME_SCALE/6), Parent = gameFrame, Text = "0",
		BackgroundColor3 = Color3.new(1,1,1), BorderSizePixel = 0, Position = UDim2.new(0, -1/6*GAME_WIDTH*GAME_SCALE, 1, -GAME_WIDTH*GAME_SCALE/6),
		Font = "SourceSansBold", FontSize = "Size36"
	}
	
	local renderStepped = game:GetService("RunService").RenderStepped
	local perlinMap;
	
	gameGrid = {}
	
	for x = 1, GAME_WIDTH do
		gameGrid[x] = {}
		for y = 1, GAME_HEIGHT do
			gameGrid[x][y] = Tile.new(i, x, y)
		end
	end
	
	local function newGame()
		perlinMap = PerlinNoiseMap(GAME_WIDTH, GAME_HEIGHT, 2^math.random(3,5), math.random(2,8))
		for x = 1, GAME_WIDTH do
			for y = 1, GAME_HEIGHT do
				local i = math.floor(perlinMap[x][y]*8-1)
				i = i < 0 and 0 or i > 5 and 5 or i
				gameGrid[x][y]:SetID(i)
				gameGrid[x][y]:SetChecked(false)
			end
		end
		moveCounter = 0
		newGameButton.Text = moveCounter
	end
	
	newGame()
	
	newGameButton.MouseButton1Down:connect(function()
		moveCounter = 0
		newGame()
		isFlooding = false
	end)
	
	flood = function(id) --yay
		local newId = id
		local previousId = gameGrid[1][1].id
		local checking = {gameGrid[1][1]}
		if newId == previousId then
			print("not doing anything, same color")
			return
		end
		
		isFlooding = true
		
		moveCounter = moveCounter + 1
		newGameButton.Text = moveCounter
		
		local isGameInProgress = false
		local recursions = 0
		
		local newChecking = {}
		local function recurse()
			recursions = recursions + 1
			for i, tile in pairs(checking) do
				tile:SetChecked(true)
				if tile.id == previousId then
					tile:SetID(newId)
					for x = -1, 1 do
						for y = -1, 1 do
							if (math.abs(y)==1 and x==0) or (math.abs(x)==1 and y==0) then
								local t = gameGrid[x+tile.x] ~= nil and gameGrid[x+tile.x][y+tile.y] or nil
								if t and not t:IsChecked() then
									table.insert(newChecking, t)
								end
							end
						end
					end
				end
			end
			if #newChecking > 0 then
				checking = newChecking
				newChecking = {}
				if recursions % 3 == 0 then
					renderStepped:wait()
				end
				recurse()
			end
		end
		recurse()
		for x = 1, GAME_WIDTH do
			for y = 1, GAME_HEIGHT do
				gameGrid[x][y]:SetChecked(false)
			end
		end
		isFlooding = false
	end
	
	screenGui.Parent = game.Players.LocalPlayer.PlayerGui
end

Tile = {}
Tile.idColor = {
	[0] = Color3.new(0.9, 0.3, 0.2);
	[1] = Color3.new(0.3, 0.9, 0.2);
	[2] = Color3.new(0.9, 0.9, 0.3);
	[3] = Color3.new(0.2, 0.3, 0.9);
	[4] = Color3.new(0.3, 0.9, 0.9);
	[5] = Color3.new(0.9, 0.3, 0.9);
}

Tile.new = function(id, x, y)
	local this = {}
	this.id		= id or math.random(0, 5)
	this.color	= Tile.idColor[this.id]
	this.x = x
	this.y = y
	
	local checked = false
	
	local frame = create{"Frame",
		Size = UDim2.new(1/GAME_WIDTH, 0, 1/GAME_HEIGHT, 0),
		BackgroundColor3 = this.color, BorderSizePixel = 0,
	}
	
	function this:Draw()
		frame.Parent			= gameFrame
		frame.Position			= UDim2.new((this.x-1)/GAME_WIDTH, 0, (this.y-1)/GAME_HEIGHT, 0)
		frame.BackgroundColor3	= this.color
	end
	function this:SetChecked(c)
		checked = c
	end
	function this:IsChecked()
		return checked
	end
	function this:SetID(id)
		this.id = id
		this.color = Tile.idColor[id]
		this:Draw()
	end
	return this
end

local perm = {
	151,160,137,91,90,15,
	131,13,201,95,96,53,194,233,7,225,140,36,103,30,69,142,8,99,37,240,21,10,23,
	190, 6,148,247,120,234,75,0,26,197,62,94,252,219,203,117,35,11,32,57,177,33,
	88,237,149,56,87,174,20,125,136,171,168, 68,175,74,165,71,134,139,48,27,166,
	77,146,158,231,83,111,229,122,60,211,133,230,220,105,92,41,55,46,245,40,244,
	102,143,54, 65,25,63,161, 1,216,80,73,209,76,132,187,208, 89,18,169,200,196,
	135,130,116,188,159,86,164,100,109,198,173,186, 3,64,52,217,226,250,124,123,
	5,202,38,147,118,126,255,82,85,212,207,206,59,227,47,16,58,17,182,189,28,42,
	223,183,170,213,119,248,152, 2,44,154,163, 70,221,153,101,155,167, 43,172,9,
	129,22,39,253, 19,98,108,110,79,113,224,232,178,185, 112,104,218,246,97,228,
	251,34,242,193,238,210,144,12,191,179,162,241, 81,51,145,235,249,14,239,107,
	49,192,214, 31,181,199,106,157,184, 84,204,176,115,121,50,45,127, 4,150,254,
	138,236,205,93,222,114,67,29,24,72,243,141,128,195,78,66,215,61,156,180,
	151,160,137,91,90,15,
	131,13,201,95,96,53,194,233,7,225,140,36,103,30,69,142,8,99,37,240,21,10,23,
	190, 6,148,247,120,234,75,0,26,197,62,94,252,219,203,117,35,11,32,57,177,33,
	88,237,149,56,87,174,20,125,136,171,168, 68,175,74,165,71,134,139,48,27,166,
	77,146,158,231,83,111,229,122,60,211,133,230,220,105,92,41,55,46,245,40,244,
	102,143,54, 65,25,63,161, 1,216,80,73,209,76,132,187,208, 89,18,169,200,196,
	135,130,116,188,159,86,164,100,109,198,173,186, 3,64,52,217,226,250,124,123,
	5,202,38,147,118,126,255,82,85,212,207,206,59,227,47,16,58,17,182,189,28,42,
	223,183,170,213,119,248,152, 2,44,154,163, 70,221,153,101,155,167, 43,172,9,
	129,22,39,253, 19,98,108,110,79,113,224,232,178,185, 112,104,218,246,97,228,
	251,34,242,193,238,210,144,12,191,179,162,241, 81,51,145,235,249,14,239,107,
	49,192,214, 31,181,199,106,157,184, 84,204,176,115,121,50,45,127, 4,150,254,
	138,236,205,93,222,114,67,29,24,72,243,141,128,195,78,66,215,61,156,180
}
local floor = math.floor
local function grad( hash, x, y )
    local h = hash%8;          -- Convert low 3 bits of hash code
    local u = h<4 and x or y;  -- into 8 simple gradient directions,
    local v = h<4 and y or x;  -- and compute the dot product with (x,y).
    return ((h%2==1) and -u or u) + ((floor(h/2)%2==1) and -2.0*v or 2.0*v);
end
local function PerlinNoise(x,y)
    local ix0, iy0, ix1, iy1;
    local fx0, fy0, fx1, fy1;
    local s, t, nx0, nx1, n0, n1;

    ix0 = floor(x); -- Integer part of x
    iy0 = floor(y); -- Integer part of y
    fx0 = x - ix0;        -- Fractional part of x
    fy0 = y - iy0;        -- Fractional part of y
    fx1 = fx0 - 1.0;
    fy1 = fy0 - 1.0;
    ix1 = (ix0 + 1) % 255;  -- Wrap to 0..255
    iy1 = (iy0 + 1) % 255;
    ix0 = ix0 % 255;
    iy0 = iy0 % 255;
    
	t=(fy0*fy0*fy0*(fy0*(fy0*6-15)+10));
	s=(fx0*fx0*fx0*(fx0*(fx0*6-15)+10));

    nx0 = grad(perm[ix0 + perm[iy0+1]+1], fx0, fy0);
    nx1 = grad(perm[ix0 + perm[iy1+1]+1], fx0, fy1);
    n0 = nx0 + t*(nx1-nx0);

    nx0 = grad(perm[ix1 + perm[iy0+1]+1], fx1, fy0);
    nx1 = grad(perm[ix1 + perm[iy1+1]+1], fx1, fy1);
    n1 = nx0 + t*(nx1-nx0);

    return 0.5*(1 + (0.507 * (n0 + s*(n1-n0))))
end
function PerlinNoiseMap(width, length, lambda, depth)
	local key = math.random()*10000
	local map = {}
	for x = 1, width do
		map[x] = {}
		for z = 1, length do
			map[x][z] = PerlinNoise(x/lambda, z/lambda + key)
		end
	end
	for currentDepth = 1, depth-1 do
		local divider = 2^currentDepth
		for x = 1, width do
			for z = 1, length do
				map[x][z] = map[x][z] + ( (PerlinNoise(x/(lambda/divider), z/(lambda/divider) + key) - 0.5)/divider )
			end
		end
	end
	return map
end
init()