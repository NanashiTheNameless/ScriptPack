Player = game.Players.LocalPlayer
PlayerGui = Player.PlayerGui
Screen = Instance.new("ScreenGui", PlayerGui)
rope = Instance.new("TextButton", Screen)
rope.Position = UDim2.new(0, 0, 0, 300)
rope.Size = UDim2.new(0, 100, 0, 50)
rope.Text = "Rope Swing"
rope.MouseButton1Down:connect(function()
SETTINGS = {}
SETTINGS.GRAVITY = 196.2*1
 
 
 
 
user = game.Players.LocalPlayer
 
repeat wait() until user.Character
 
char = user.Character
mouse = user:GetMouse()
l_arm = char:WaitForChild("Left Arm")
r_arm = char:WaitForChild("Right Arm")
l_leg = char:WaitForChild("Left Leg")
r_leg = char:WaitForChild("Right Leg")
head = char:WaitForChild("Head")
 
Points = {}
Constraints = {}
 
 
 
Point = {}
 
Point.new = function( x, y, z )
        local self = setmetatable( {}, { __index = Point } )
       
        self.x = x
        self.y = y
        self.z = z
       
        self.prevX = x
        self.prevY = y
        self.prevZ = z
       
        self.velX = 0
        self.velY = 0
        self.velZ = 0
       
        self.accX = 0
        self.accY = 0
        self.accZ = 0
       
        self.forceX = 0
        self.forceY = 0
        self.forceZ = 0
       
        self.pinned = false
        self.mass = 1
       
        return self
end
 
Point.update = function( self, delta )
       
        if not self.pinned then
                self.accX = 0
                self.accY = -SETTINGS.GRAVITY
                self.accZ = 0
               
                self.velX = ( self.x - self.prevX + self.forceX ) --* delta * 30
                self.velY = ( self.y - self.prevY + self.forceY ) --* delta * 30
                self.velZ = ( self.z - self.prevZ + self.forceZ ) --* delta * 30
               
                local nextX = self.x + self.velX*0.9985 + self.accX * delta^2
                local nextY = self.y + self.velY*0.9985 + self.accY * delta^2
                local nextZ = self.z + self.velZ*0.9985 + self.accZ * delta^2
               
                self.prevX = self.x
                self.prevY = self.y
                self.prevZ = self.z
               
                self.x = nextX
                self.y = nextY
                self.z = nextZ
        else
                self.accX = 0
                self.accY = 0
                self.accZ = 0
               
                self.velX = 0
                self.velY = 0
                self.velZ = 0
               
                self.prevX = self.x
                self.prevY = self.y
                self.prevZ = self.z
        end
       
        self.forceX = 0
        self.forceY = 0
        self.forceZ = 0
end
 
Point.setPinned = function(self, pinned)
        self.pinned = pinned
end
 
Point.setMass = function(self, mass)
        self.mass = mass
end
 
Point.getPosition = function( self )
        return Vector3.new( self.x, self.y, self.z )
end
 
Point.setPosition = function( self, pos )
        self.x = pos.x
        self.y = pos.y
        self.z = pos.z
end
 
Point.setForce = function(self, fx, fy, fz)
        self.forceX = fx
        self.forceY = fy
        self.forceZ = fz
end
 
Point.isPinned = function(self)
        return self.pinned
end
 
 
 
Constraint = {}
 
Constraint.new = function( point1, point2, dist )
        local self = setmetatable( {}, { __index = Constraint } )
       
        self.point1 = point1
        self.point2 = point2
       
        self.desireddistance = dist
       
        self.line = Instance.new("Part", Game.Workspace)
        self.line.CanCollide = false
        self.line.FormFactor = "Custom"
        self.line.Size = Vector3.new( .2, .2, .2 )
        self.line.Anchored = true
        self.line.BrickColor = BrickColor.new("Institutional white")
       
        self.mesh = Instance.new("BlockMesh", self.line)
        self.mesh.Scale = Vector3.new( 0.3, 0.3, 5 ) / 0.2
       
        return self
end
 
 
 
Constraint.solve = function( self )
        if not self:isDisconnected() then
                local diffX = self.point1.x - self.point2.x
                local diffY = self.point1.y - self.point2.y
                local diffZ = self.point1.z - self.point2.z
               
                local dist = math.sqrt( diffX^2 + diffY^2 + diffZ^2 )
               
                local difference = ( self.desireddistance - dist ) / dist
               
                local massratio = self.point1.mass/self.point2.mass --?
               
                local translateX = diffX * 0.5 * difference
                local translateY = diffY * 0.5 * difference
                local translateZ = diffZ * 0.5 * difference
               
                if not self.point1.pinned then
                        self.point1.x = self.point1.x + translateX
                        self.point1.y = self.point1.y + translateY
                        self.point1.z = self.point1.z + translateZ
                end
               
                if not self.point2.pinned then
                        self.point2.x = self.point2.x - translateX
                        self.point2.y = self.point2.y - translateY
                        self.point2.z = self.point2.z - translateZ
                end
        end
end
 
Constraint.draw = function( self )
        if not self:isDisconnected() and self.line and self.mesh then
                local dist = math.sqrt(
                        ( self.point1.x - self.point2.x )^2 +
                        ( self.point1.y - self.point2.y )^2 +
                        ( self.point1.z - self.point2.z )^2
                )
               
                self.line.CFrame = CFrame.new(
                        Vector3.new( self.point1.x, self.point1.y, self.point1.z ),
                        Vector3.new( self.point2.x, self.point2.y, self.point2.z )
                ) * CFrame.new( 0, 0, - dist / 2 )
               
                self.mesh.Scale = Vector3.new( 0.3, 0.3, dist ) / 0.2
        end
end
 
Constraint.remove = function( self )
        if self.line then self.line:Destroy() self.line = nil end
        if self.mesh then self.mesh:Destroy() self.mesh = nil end
        self.point1 = nil
        self.point2 = nil
end
 
Constraint.isDisconnected = function( self )
        return not (self.point1 and self.point2)
end
 
Constraint.setDistance = function( self, dist )
        self.desireddistance = dist
end
 
 
 
 
 
 
 
 
 
char_point = Point.new( 0, 100, 0 )
 
for _,v in pairs(char.Torso:children()) do
        if v:IsA("Motor6D") and v.Name ~= "Neck" then
                v:Destroy()
        end
end
for _,v in pairs(char:children()) do
        if v:IsA("BasePart") then
                v.Anchored = true
        end
end
 
ragdoll = {}
 
ragdoll.l_shoulder = Point.new( 0, 0, 0 )
ragdoll.r_shoulder = Point.new( 0, 0, 0 )
ragdoll.l_hip = Point.new( 0, 0, 0 )
ragdoll.r_hip = Point.new( 0, 0, 0 )
 
ragdoll.l_shoulder:setPinned( true )
ragdoll.r_shoulder:setPinned( true )
ragdoll.l_hip:setPinned( true )
ragdoll.r_hip:setPinned( true )
 
ragdoll.l_arm = Point.new( 0, -2, 0 )
ragdoll.r_arm = Point.new( 0, -2, 0 )
ragdoll.l_leg = Point.new( 0, -2, 0 )
ragdoll.r_leg = Point.new( 0, -2, 0 )
 
local l_arm_w = Constraint.new(ragdoll.l_shoulder, ragdoll.l_arm, 2)
local r_arm_w = Constraint.new(ragdoll.r_shoulder, ragdoll.r_arm, 2)
local l_leg_w = Constraint.new(ragdoll.l_hip, ragdoll.l_leg, 2)
local r_leg_w = Constraint.new(ragdoll.r_hip, ragdoll.r_leg, 2)
 
 
 
firstpoint = nil
attachpoint = nil
attachpart = nil
attachoffset = Vector3.new()
 
length = 8
 
webshot = false
local pointbool = false
 
function shoot( from, to )
        if not webshot then
        local hit, hitpos = workspace:FindPartOnRay(Ray.new( from, (to-from).unit*999 ), char)
        if hit then
                webshot = true
                to = hitpos
                for _,v in pairs(Constraints) do
                        v:remove()
                end
               
                attachpart = hit
                attachoffset = attachpart.CFrame:pointToObjectSpace( hitpos )
               
                length = 8
               
                Constraints = {}
                Points = {}
               
                local dir = ( to - from ).unit
                local dist = ( to - from ).magnitude
                if dist > 1000 then
                        dist = 1000
                        to = from + dir*1000
                end
               
                pointbool = true
               
                local amnt = math.floor( dist/length )
                amnt = amnt < 2 and 2 or amnt
                local temp = {}
               
                for y = 1, amnt do
                        local pos = from:Lerp( to, y/amnt )
                       
                        local rx, ry, rz = ( math.random()-0.5 )*2, ( math.random()-0.5 )*2, ( math.random()-0.5 )*2
                        temp[y] = Point.new( pos.x+rx, pos.y+ry, pos.z+rz)
                       
                        if y ~= 1 then
                                table.insert(Constraints, Constraint.new(temp[y-1], temp[y], length*1) )
                        else
                                firstpoint = temp[y]
                                table.insert(Constraints, Constraint.new(char_point, firstpoint, 1) )
                        end
                       
                        if y == amnt then
                                temp[y]:setPinned(true)
                                attachpoint = temp[y]
                        end
                end
               
                for _,p in pairs(temp) do
                        table.insert(Points, p)
                end
        end
        else
                attachpart = nil
                attachpoint = nil
                attachoffset = Vector3.new()
               
                webshot = false
                for _,v in pairs(Constraints) do
                        v:remove()
                end
               
                Constraints = {}
                Points = {}
               
        end
end
 
keys = {}
 
mouse.Button1Down:connect(function()
        shoot( Vector3.new(char_point.x, char_point.y, char_point.z ), mouse.Hit.p )
end)
 
mouse.KeyDown:connect(function(key)
        keys[ string.byte(key) ] = true
end)
mouse.KeyUp:connect(function(key)
        keys[ string.byte(key) ] = false
end)
 
prevtime = tick()
 
function loop( )
        local delta = tick()-prevtime
        prevtime = tick()
       
        if keys[32] then
                length = length - 0.1*30*delta
                if length < 2 then length = 2 end
        end
        if keys[48] then
                length = length + 0.1*30*delta
                if length > 11 then length = 11 end
        end
       
        if attachpart and attachpoint then
                local po = attachpart.CFrame * attachoffset
                attachpoint.x = po.x
                attachpoint.y = po.y
                attachpoint.z = po.z
        end
       
        char_point:update( delta )
        if char_point.y < -150 then
                char_point = Point.new( 0, 150, 0 )
        end
       
        if pointbool then
                for _,p in pairs(Points) do
                        p:setForce( char_point.velX*0.9, char_point.velY*0.9, char_point.velZ*0.9 )
                end
                pointbool = false
        end
       
        for _,p in pairs(Points) do
                p:update( delta )
        end
       
        for _,v in pairs(char:children()) do
                if v:IsA("BasePart") then
                        v.Velocity = Vector3.new()
                        v.RotVelocity = Vector3.new()
                end
        end
       
        if firstpoint then
                char.Torso.CFrame = CFrame.new(
                        Vector3.new(char_point.x, char_point.y, char_point.z),
                        Vector3.new(firstpoint.x, firstpoint.y, firstpoint.z)
                ) * CFrame.Angles(math.rad(-90), 0, 0)
        else
                char.Torso.CFrame = CFrame.new( char_point.x, char_point.y, char_point.z )
        end
        head.CFrame = char.Torso.CFrame * CFrame.new( 0, 1.5, 0 )
        for _,c in pairs(Constraints) do
                c:setDistance( length )
        end
       
        local tcf = char.Torso.CFrame
        ragdoll.l_shoulder:setPosition( tcf*CFrame.new( -1.5, 0.5, 0 ).p )
        ragdoll.r_shoulder:setPosition( tcf*CFrame.new( 1.5, 0.5, 0 ).p )
        ragdoll.l_hip:setPosition( tcf*CFrame.new( -0.5, -1, 0 ).p )
        ragdoll.r_hip:setPosition( tcf*CFrame.new( 0.5, -1, 0 ).p )
               
        for _,v in pairs(ragdoll) do
                v:update( delta*0.93 )
        end
       
        for i = 1, 15 do
                for _,c in pairs(Constraints) do
                        c:solve()
                end
                l_arm_w:solve()
                r_arm_w:solve()
                l_leg_w:solve()
                r_leg_w:solve()
        end
        for _,c in pairs(Constraints) do
                c:draw()
        end
       
        l_arm.CFrame = CFrame.new( ragdoll.l_shoulder:getPosition(), ragdoll.l_arm:getPosition() ) * CFrame.Angles(math.pi/2, 0, 0) * CFrame.new( 0, -0.5, 0 )
        r_arm.CFrame = CFrame.new( ragdoll.r_shoulder:getPosition(), ragdoll.r_arm:getPosition() ) * CFrame.Angles(math.pi/2, 0, 0) * CFrame.new( 0, -0.5, 0 )
        l_leg.CFrame = CFrame.new( ragdoll.l_hip:getPosition(), ragdoll.l_leg:getPosition() ) * CFrame.Angles(math.pi/2, 0, 0) * CFrame.new( 0, -1, 0 )
        r_leg.CFrame = CFrame.new( ragdoll.r_hip:getPosition(), ragdoll.r_leg:getPosition() ) * CFrame.Angles(math.pi/2, 0, 0) * CFrame.new( 0, -1, 0 )
       
end
 
game:getService("RunService").Stepped:connect(loop)
end)
elas = Instance.new("TextButton", Screen)
elas.Position = UDim2.new(0, 0, 0, 350)
elas.Size = UDim2.new(0, 100, 0, 50)
elas.Text = "Elastic Block"
elas.MouseButton1Down:connect(function()
SETTINGS = {}
SETTINGS.GRAVITY = 196.2*1
 
 
 
 
user = game.Players.LocalPlayer
 
repeat wait() until user.Character
 
playergui = user.PlayerGui
screengui = Instance.new("ScreenGui", playergui)
screengui.Name = "xSoul Physics Sandbox"
camera = workspace.CurrentCamera
 
function screenToWorld(x,y)
        local viewsize = screengui.AbsoluteSize/2
        local a = math.tan(camera.FieldOfView*math.pi/360)
        local bx = (viewsize.x-x)/viewsize.x*(a*viewsize.X/viewsize.Y)
        local by = (viewsize.y-y)/viewsize.y*a
        return camera.CoordinateFrame:vectorToWorldSpace(Vector3.new(-bx,by,-1).unit)
end
 
char = user.Character
mouse = user:GetMouse()
 
SavedPoints = {}
SavedConstraints = {}
 
Points = {}
Constraints = {}
 
Point = {}
 
Point.new = function( x, y, z )
        local self = setmetatable( {}, { __index = Point } )
       
        self.x = x
        self.y = y
        self.z = z
       
        self.prevX = x
        self.prevY = y
        self.prevZ = z
       
        self.velX = 0
        self.velY = 0
        self.velZ = 0
       
        self.accX = 0
        self.accY = 0
        self.accZ = 0
       
        self.forceX = 0
        self.forceY = 0
        self.forceZ = 0
       
        self.pinned = false
        self.renderable = true
        self.renderstate = true
       
        self.part = Instance.new("Part")
        self.part.FormFactor = "Custom"
        self.part.Size = Vector3.new(1,1,1)*0.2
        self.part.Anchored = true
        self.part.Parent = self.renderable and workspace or nil
       
        self.mesh = Instance.new("SpecialMesh",self.part)
        self.mesh.MeshType = "Sphere"
        self.mesh.Scale = Vector3.new(0.7, 0.7, 0.7)/0.2
       
        return self
end
 
Point.update = function( self, delta )
       
        if not self.pinned then
                self.accX = 0
                self.accY = -SETTINGS.GRAVITY
                self.accZ = 0
               
                self.velX = ( self.x - self.prevX + self.forceX ) --* delta * 30
                self.velY = ( self.y - self.prevY + self.forceY ) --* delta * 30
                self.velZ = ( self.z - self.prevZ + self.forceZ ) --* delta * 30
               
                if self.y <= 0.8 then
                        self.velX = self.velX * 0.35
                        self.velZ = self.velZ * 0.35
                       
                        self.velY = math.abs( self.velY )*0.93
                        self.accY = SETTINGS.GRAVITY*(#Points-1)
                end
               
                local nextX = self.x + self.velX*0.999 + self.accX * delta^2
                local nextY = self.y + self.velY*0.999 + self.accY * delta^2
                local nextZ = self.z + self.velZ*0.999 + self.accZ * delta^2
               
                self.prevX = self.x
                self.prevY = self.y
                self.prevZ = self.z
               
                self.x = nextX
                self.y = nextY
                self.z = nextZ
        else
                self.accX = 0
                self.accY = 0
                self.accZ = 0
               
                self.velX = 0
                self.velY = 0
                self.velZ = 0
               
                self.prevX = self.x
                self.prevY = self.y
                self.prevZ = self.z
        end
       
        self.forceX = 0
        self.forceY = 0
        self.forceZ = 0
end
 
Point.draw = function(self)
        if self.part and self.renderable and self.renderstate then
                if self.part.Parent ~= workspace then
                        self.part.Parent = workspace
                end
                self.part.CFrame = CFrame.new(self.x, self.y, self.z)
        else
                if self.part.Parent ~= nil then
                        self.part.Parent = nil
                end
        end
end
 
Point.setPinned = function(self, pinned)
        self.pinned = pinned
end
 
Point.setForce = function(self, fx, fy, fz)
        self.forceX = fx
        self.forceY = fy
        self.forceZ = fz
end
 
Point.isPinned = function(self)
        return self.pinned
end
 
Point.clone = function(self)
        local p = Point.new( self.x, self.y, self.z )
        p:setPinned( self.pinned )
        p.renderable = self.renderable
        return p
end
 
Point.destroy = function( self )
        if self.part then self.part:Destroy() end
end
 
Point.setRenderState = function( self, renderstate )
        if self.renderable then
                self.renderstate = renderstate
        end
end
 
Constraint = {}
 
Constraint.new = function( point1, point2, dist, renderable )
        local self = setmetatable( {}, { __index = Constraint } )
       
        self.point1 = point1
        self.point2 = point2
       
        self.renderable = renderable
        self.renderstate = renderable
       
        self.desireddistance = dist
       
        self.line = Instance.new("Part")
        self.line.CanCollide = false
        self.line.FormFactor = "Custom"
        self.line.Size = Vector3.new( .2, .2, .2 )
        self.line.Anchored = true
        self.line.BrickColor = BrickColor.new("Institutional white")
        self.line.Parent = renderable and workspace or nil
       
        self.mesh = Instance.new("BlockMesh", self.line)
        self.mesh.Scale = Vector3.new( 0.3, 0.3, 5 ) / 0.2
       
        return self
end
 
 
 
Constraint.solve = function( self )
        if not self:isDisconnected() then
                local diffX = self.point1.x - self.point2.x
                local diffY = self.point1.y - self.point2.y
                local diffZ = self.point1.z - self.point2.z
               
                local dist = math.sqrt( diffX^2 + diffY^2 + diffZ^2 )
               
                local difference = ( self.desireddistance - dist ) / dist
               
                local translateX = diffX * 0.00045 * difference
                local translateY = diffY * 0.00045 * difference
                local translateZ = diffZ * 0.00045 * difference
               
                if not self.point1.pinned then
                        self.point1.x = self.point1.x + translateX
                        self.point1.y = self.point1.y + translateY
                        self.point1.z = self.point1.z + translateZ
                end
               
                if not self.point2.pinned then
                        self.point2.x = self.point2.x - translateX
                        self.point2.y = self.point2.y - translateY
                        self.point2.z = self.point2.z - translateZ
                end
        end
end
 
Constraint.draw = function( self )
        if (not self:isDisconnected()) and self.renderable and self.renderstate then
                if self.line.Parent ~= workspace then
                        self.line.Parent = workspace
                end
               
                local dist = math.sqrt(
                        ( self.point1.x - self.point2.x )^2 +
                        ( self.point1.y - self.point2.y )^2 +
                        ( self.point1.z - self.point2.z )^2
                )
               
                self.line.CFrame = CFrame.new(
                        Vector3.new( self.point1.x, self.point1.y, self.point1.z ),
                        Vector3.new( self.point2.x, self.point2.y, self.point2.z )
                ) * CFrame.new( 0, 0, - dist / 2 )
               
                self.mesh.Scale = Vector3.new( 0.3, 0.3, dist + 0.3 ) / 0.2
        else
                if self.line.Parent ~= nil then
                        self.line.Parent = nil
                end
        end
end
 
Constraint.isDisconnected = function( self )
        return not (self.point1 and self.point2)
end
 
Constraint.setDistance = function( self, dist )
        self.desireddistance = dist
end
 
Constraint.clone = function( self )
        local c = Constraint.new(self.point1, self.point2, self.desireddistance, self.renderable)
        return c
end
 
Constraint.destroy = function( self )
        if self.line then self.line:Destroy() end
end
 
Constraint.setRenderState = function( self, renderstate )
        if self.renderable then
                self.renderstate = renderstate
        end
end
 
 
function modify( properties )
        for prop, val in pairs(properties) do
                if prop ~= 1 then
                        properties[1][prop] = val
                end
        end
end
 
function worldToScreen(x,y,z)
        local p = Vector3.new(x, y, z)
        local pos = camera.CoordinateFrame:pointToObjectSpace(p)
        local viewsize = Vector2.new(mouse.ViewSizeX,mouse.ViewSizeY)/2
        if pos.Z < 0 then
                local a = math.tan(camera.FieldOfView*math.pi/360)
                local scale = Vector2.new(a * viewsize.X/viewsize.Y,a)
                local b = Vector2.new(-pos.X,pos.Y) / pos.Z
                local c = viewsize + viewsize * b / scale
                return Vector2.new(math.floor(c.x), math.floor(c.y)), pos.Z
        else
                return Vector2.new(-100,-100)
        end
end
 
settings = {}
settings.point = true
settings.pinnedpoint = false
settings.constraint = false
settings.editmode = true
 
backframe = Instance.new("Frame", screengui)
modify { backframe,
        Size = UDim2.new( 0, 256, 0, 128+128 ), Position = UDim2.new(1, -256-16, 0, 16), BorderSizePixel = 3, BorderColor3 = Color3.new(0.68, 0.62, 0.56),
        BackgroundColor3 = Color3.new( 0.8, 0.75, 0.6 )
}
 
selectiongui = Instance.new("Frame", screengui)
modify { selectiongui,
        Size = UDim2.new(0, 24, 0, 24), Rotation = 45, BackgroundColor3 = Color3.new(0.3, 0.9, 0.1), BorderSizePixel = 4,
        Transparency = 0.5, Position = UDim2.new(0, -100, 0, -100), BorderColor3 = Color3.new(0.1, 0.35, 0.05)
}
 
Checkboxes = {}
CheckBox = {}
 
CheckBox.new = function( parent, pos, property, func )
        local self = setmetatable( {}, { __index = CheckBox } )
        self.position = pos
        self.property = property
       
        self.gui = Instance.new("ImageButton", parent)
        modify{ self.gui,
                Size = UDim2.new(0, 32, 0, 32), Position = pos, BackgroundColor3 = Color3.new( 0.93, 0.87, 0.82 ), AutoButtonColor = false,
                BorderSizePixel = 3, BorderColor3 = Color3.new(0.72, 0.66, 0.6), Image = settings[property] and "rbxassetid://138510306" or ""
        }
       
        self.gui.MouseButton1Down:connect( function()
                func( self )
        end)
       
        return self
end
 
CheckBox.set = function(self, asd)
        settings[ self.property ] = asd
        self.gui.Image = settings[ self.property ] and "rbxassetid://138510306" or ""
end
 
local function typeboxfunc( self )
        for _,v in pairs(Checkboxes) do
                v:set(false)
        end
        self:set( not settings[self.property] )
end
 
local function generalboxfunc( self )
        self:set( not settings[self.property] )
end
 
local checkbox1 = CheckBox.new( backframe, UDim2.new(0, 8, 0, 8+40*0), "point", typeboxfunc )
local checkbox2 = CheckBox.new( backframe, UDim2.new(0, 8, 0, 8+40*1), "pinnedpoint", typeboxfunc )
local checkbox3 = CheckBox.new( backframe, UDim2.new(0, 8, 0, 8+40*2), "constraint", typeboxfunc )
 
local editbox1 = CheckBox.new( backframe, UDim2.new(0, 8, 0, 8+40*3+10), "editmode", generalboxfunc )
 
table.insert(Checkboxes, checkbox1)
table.insert(Checkboxes, checkbox2)
table.insert(Checkboxes, checkbox3)
 
local text1 = Instance.new("TextLabel", checkbox1.gui)
modify { text1,
        TextXAlignment = "Left", TextYAlignment = "Top", Position = UDim2.new( 1, 8, 0, 0 ), Size = UDim2.new(),
        Text = "Point", BackgroundTransparency = 1, TextColor3 = Color3.new(), FontSize = "Size18", Font = "SourceSans"
}
local text2 = Instance.new("TextLabel", checkbox2.gui)
modify { text2,
        TextXAlignment = "Left", TextYAlignment = "Top", Position = UDim2.new( 1, 8, 0, 0 ), Size = UDim2.new(),
        Text = "Pinned point", BackgroundTransparency = 1, TextColor3 = Color3.new(), FontSize = "Size18", Font = "SourceSans"
}
local text3 = Instance.new("TextLabel", checkbox3.gui)
modify { text3,
        TextXAlignment = "Left", TextYAlignment = "Top", Position = UDim2.new( 1, 8, 0, 0 ), Size = UDim2.new(),
        Text = "Constraint", BackgroundTransparency = 1, TextColor3 = Color3.new(), FontSize = "Size18", Font = "SourceSans"
}
local text4 = Instance.new("TextLabel", editbox1.gui)
modify { text4,
        TextXAlignment = "Left", TextYAlignment = "Top", Position = UDim2.new( 1, 8, 0, 0 ), Size = UDim2.new(),
        Text = "Edit mode", BackgroundTransparency = 1, TextColor3 = Color3.new(), FontSize = "Size18", Font = "SourceSans"
}
 
paused = false
running = false
 
local startbutton = Instance.new("TextButton", backframe)
modify { startbutton,
        Position = UDim2.new(0, 0, 1, 8), Size = UDim2.new(0.5, -4, 0, 32), BackgroundColor3 = Color3.new(0.8, 0.75, 0.6), FontSize = "Size24",
        Font = "SourceSans", TextColor3 = Color3.new(), Text = "START", BorderSizePixel = 3, BorderColor3 = Color3.new(0.68, 0.62, 0.56)
}
 
startbutton.MouseButton1Down:connect(function()
        if not running then
                for i,v in pairs(SavedPoints) do
                        Points[i] = v:clone()
                        v:setRenderState( false )
                end
                for i,v in pairs(SavedConstraints) do
                        local con = v:clone()
                        v:setRenderState( false )
                        for ii, p in pairs(SavedPoints) do
                                if p == v.point1 then
                                        con.point1 = Points[ii]
                                elseif p == v.point2 then
                                        con.point2 = Points[ii]
                                end
                               
                        end
                        table.insert(Constraints, con)
                end
                running = true
                paused = false
        else
                paused = not paused
        end
        startbutton.Text = paused and "RETURN" or "PAUSE"
end)
 
local stopbutton = Instance.new("TextButton", backframe)
modify { stopbutton,
        Position = UDim2.new(0.5, 4, 1, 8), Size = UDim2.new(0.5, -4, 0, 32), BackgroundColor3 = Color3.new(0.8, 0.75, 0.6), FontSize = "Size24",
        Font = "SourceSans", TextColor3 = Color3.new(), Text = "STOP", BorderSizePixel = 3, BorderColor3 = Color3.new(0.68, 0.62, 0.56)
}
stopbutton.MouseButton1Down:connect(function()
        running = false
        paused = false
        startbutton.Text = "START"
        for i,v in pairs(Points) do
                v:destroy()
                Points[i] = nil
        end
        for i,v in pairs(Constraints) do
                v:destroy()
                Constraints[i] = nil
        end
        for i,v in pairs(SavedPoints) do
                v:setRenderState(true)
        end
        for i,v in pairs(SavedConstraints) do
                v:setRenderState(true)
        end
       
end)
 
button1down = false
click = false
up = false
 
mouse.Button1Down:connect(function()
        button1down = true
        click = true
        up = false
end)
 
mouse.Button1Up:connect(function()
        button1down = false
        up = true
end)
 
function cube( x, y, z, size )
        local sx = math.random()*size/2+size/2
        local sy = math.random()*size/2+size/2
        local sz = math.random()*size/2+size/2
       
        local blb = Point.new( x-sx, y-sy, z-sz ) blb.renderable = false
        local brb = Point.new( x+sx, y-sy, z-sz ) brb.renderable = false
        local tlb = Point.new( x-sx, y+sy, z-sz ) tlb.renderable = false
        local trb = Point.new( x+sx, y+sy, z-sz ) trb.renderable = false
       
        local blf = Point.new( x-sx, y-sy, z+sz ) blf.renderable = false
        local brf = Point.new( x+sx, y-sy, z+sz ) brf.renderable = false
        local tlf = Point.new( x-sx, y+sy, z+sz ) tlf.renderable = false
        local trf = Point.new( x+sx, y+sy, z+sz ) trf.renderable = false
       
        local function connect(pp1, pp2, rend)
                table.insert( SavedConstraints, Constraint.new( pp1, pp2, math.sqrt( (pp2.x-pp1.x)^2 + (pp2.y-pp1.y)^2 + (pp2.z-pp1.z)^2 ), rend) )
        end
       
        table.insert(SavedPoints, blb)
        table.insert(SavedPoints, brb)
        table.insert(SavedPoints, tlb)
        table.insert(SavedPoints, trb)
        table.insert(SavedPoints, blf)
        table.insert(SavedPoints, brf)
        table.insert(SavedPoints, tlf)
        table.insert(SavedPoints, trf)
       
        connect( blb, brb, true ) --front
        connect( blb, tlb, true )
        connect( brb, trb, true )
        connect( tlb, trb, true )
       
        connect( blf, brf, true ) --back
        connect( blf, tlf, true )
        connect( brf, trf, true )
        connect( tlf, trf, true )
       
        connect( blb, blf, true ) --edges
        connect( brb, brf, true )
        connect( tlb, tlf, true )
        connect( trb, trf, true )
       
        connect( blb, trb, false ) --back diagonal
        connect( brb, tlb, false ) --back diagonal
       
        connect( brf, tlf, false ) --front diagonal
        connect( blf, trf, false ) --front diagonal
       
        connect( blf, tlb, false ) --left diagonal
        connect( blb, tlf, false ) --left diagonal
       
        connect( brb, trf, false ) --right diagonal
        connect( brf, trb, false ) --right diagonal
       
        connect( trb, tlf, false ) -- top diagonal
        connect( tlb, trf, false ) -- top diagonal
       
        connect( blb, brf, false ) -- bottom diagonal
        connect( brb, blf, false ) -- bottom diagonal
end
 
selectedpoint = nil
selecteddist = 20
 
cube( 0, 20, 0, 8)
 
prevtime = tick()
 
function loop( )
        local delta = tick()-prevtime
        prevtime = tick()
        delta = 1/60
       
        if running and not paused then
                for x = 1, 8 do
                        for _,p in pairs(Points) do
                                p:update( delta/8 )
                        end
                        for i = 1, 8 do
                                for _,c in pairs(Constraints) do
                                        c:solve()
                                end
                        end
                end
        end
       
        for _,p in pairs(SavedPoints) do
                p:draw()
        end
       
        for _,c in pairs(SavedConstraints) do
                c:draw()
        end
        for _,p in pairs(Points) do
                p:draw()
        end
        for _,c in pairs(Constraints) do
                c:draw()
        end
       
        local tab = nil
       
        if running then tab = Points else tab = SavedPoints end
       
        local z = -200
        local poss = Vector2.new(-100, -100)
       
        for _,p in pairs(tab) do
                local pos, zz = worldToScreen(p.x, p.y, p.z)
                local dist = math.sqrt( (pos.x-mouse.X)^2 + (pos.y-mouse.Y)^2 )
               
                if not selectedpoint then
                        if dist < 24 then
                                if zz > z then
                                        z = zz
                                        poss = pos
                                        if click then
                                                selectedpoint = p
                                                selecteddist = -zz
                                        end
                                end
                        end
                end
        end
       
        if selectedpoint then
                selectedpoint:setPinned( true )
                selectiongui.BackgroundColor3 = Color3.new( 0.1, 0.6, 0.2 )
                selectiongui.BorderColor3 = Color3.new( 0.03, 0.2, 0.03 )
               
                local pos, zz = worldToScreen( selectedpoint.x, selectedpoint.y, selectedpoint.z )
                selectiongui.Size = UDim2.new( 0, 16, 0, 16 )
                selectiongui.Position = UDim2.new( 0, pos.x-8, 0, pos.y-8 )
        else
                selectiongui.BorderColor3 = Color3.new(0.1, 0.35, 0.05)
                selectiongui.BackgroundColor3 = Color3.new(0.3, 0.9, 0.1)
               
                selectiongui.Size = UDim2.new( 0, 24, 0, 24 )
                selectiongui.Position = UDim2.new( 0, poss.x-12, 0, poss.y-12 )
        end
       
        if button1down and selectedpoint and settings.editmode then
                local pos = camera.CoordinateFrame.p + screenToWorld( mouse.X, mouse.Y ) * selecteddist
                local x, y, z = selectedpoint.x, selectedpoint.y, selectedpoint.z
               
                local dx, dy, dz = pos.x-x, pos.y-y, pos.z-z
               
                local d = math.sqrt( dx^2 + dy^2 + dz^2 )
               
                selectedpoint.x = pos.x
                selectedpoint.y = pos.y
                selectedpoint.z = pos.z
               
                selectedpoint:setForce( dx, dy, dz )
        end
       
        if click then
                if running and selectedpoint then
                        --local dir = mouse.UnitRay.Direction*1.8
                        --selectedpoint:setForce( dir.x, dir.y, dir.z )
                end
        end
       
        if up and selectedpoint then
                selectedpoint:setPinned( false )
                selectedpoint = nil
        end
       
        click = false
        up = false
end
 
game:service("RunService").RenderStepped:connect(loop)
end)
heli = Instance.new("TextButton", Screen)
heli.Position = UDim2.new(0, 0, 0, 400)
heli.Size = UDim2.new(0, 100, 0, 50)
heli.Text = "Helipack"
heli.MouseButton1Down:connect(function()
create = function( tab )
        local obj = Instance.new( tab[1] )
        for i, v in pairs( tab ) do
                if i ~= 1 then
                        obj[i] = v
                end
        end
        if obj:IsA("BasePart") then
                obj:breakJoints()
        end
        return obj
end
 
local player            = game.Players.LocalPlayer
 
repeat wait() until player.Character
 
local _sgui                     = create{ "ScreenGui", Parent = player.PlayerGui, Name = "Controls" }
local _txt                      = create{ "TextLabel", Parent = _sgui, Text = "Start/Stop:\t\t\tdouble-tap spacebar\nThrust:\t\t\t\thold spacebar\nTurn character:\trotate camera\nTilt offset:\t\t\tWASD\n\nCaution: may be hard to control for some people\nTip: hold space only when you feel like you need more force upwards",
        BackgroundTransparency = 1, TextColor3 = Color3.new(), Size = UDim2.new(0,0,0,0),
        Position = UDim2.new(0.5, -70, 0, 15), TextWrap = true, TextXAlignment = "Left", TextYAlignment = "Top"
}
 
local character         = player.Character
local humanoid          = character:WaitForChild("Humanoid")
local head                      = character:WaitForChild("Head")
local torso                     = character:WaitForChild("Torso")
local l_arm                     = character:WaitForChild("Left Arm")
local r_arm                     = character:WaitForChild("Right Arm")
local l_leg                     = character:WaitForChild("Left Leg")
local r_leg                     = character:WaitForChild("Right Leg")
 
game:service("ContentProvider"):Preload("rbxassetid://134145308")
 
local heli_sound        = create{ "Sound", SoundId = "rbxassetid://134145308", Volume = 0.15, Looped = true }
 
local mouse                     = player:GetMouse()
local camera            = workspace.CurrentCamera
local bodymass          = 0
 
local heli_axis_weld;
local heli_rotor_weld;
local heli_rotorspeed;
local heli_rotorrot;
local heli_targetthrottle;
local heli_throttle;
 
local collision_time;
 
local bodyforce;
local bodygyro;
local tilt = CFrame.new();
 
local fake_l_arm;
local fake_r_arm;
local fake_l_leg;
local fake_r_leg;
local heli_axeltop;
local heli_axel;
local heli_top;
 
local getMass;
local updateMass;
local openPack;
local closePack;
 
local pack_open = false;
 
local lastSpaceTick;
 
keys = {}
framekeys = {}
 
mouse.KeyDown:connect( function(key)
        keys[ string.byte(key) ] = true
        framekeys[ string.byte(key) ] = true
end )
mouse.KeyUp:connect( function(key)
        keys[ string.byte(key) ] = false
        framekeys[ string.byte(key) ] = false
end )
 
lastSpaceTick = 0
 
handleInput = function()
        if keys[32] == true then
                heli_targetthrottle = 1.2
        else
                heli_targetthrottle = 0.7
        end
        if not pack_open then
                heli_targetthrottle = 0
        end
        local t = CFrame.new()
        if keys[ string.byte'a' ] then
                t = t * CFrame.Angles( 0, 0, math.rad(10) )
        end
        if keys[ string.byte'd' ] then
                t = t * CFrame.Angles( 0, 0, math.rad(-10) )
        end
        if keys[ string.byte'w' ] then
                t = t * CFrame.Angles( math.rad(-10), 0, 0 )
        end
        if keys[ string.byte's' ] then
                t = t * CFrame.Angles( math.rad(10), 0, 0 )
        end
        tilt = t
        if framekeys[32] == true then
                if tick() - lastSpaceTick < 0.3 then
                        lastSpaceTick = 0
                        if pack_open then closePack() else openPack() end
                else
                        lastSpaceTick = tick()
                end
        end
end
 
openPack = function()
        pack_open = true
        heli_throttle = 0.6
        heli_sound:Stop()
        heli_sound:Play()
        humanoid.PlatformStand = true
        bodygyro.Parent = heli_top
        fake_l_arm.CanCollide = true
        fake_r_arm.CanCollide = true
        fake_l_leg.CanCollide = true
        fake_r_leg.CanCollide = true
        game:service("ControllerService"):ClearAllChildren()
end
closePack = function()
        pack_open = false
        humanoid.PlatformStand = false
        bodygyro.Parent = nil
        fake_l_arm.CanCollide = false
        fake_r_arm.CanCollide = false
        fake_l_leg.CanCollide = false
        fake_r_leg.CanCollide = false
       
        coroutine.resume(coroutine.create(function()
                wait(0.2)
                Instance.new("HumanoidController",game:service("ControllerService"))
        end))
end
 
getMass = function( p )
        local mass = 0
        if p:IsA("BasePart") then
                mass = mass + p:GetMass()
        end
        for _, child in pairs( p:children() ) do
                mass = mass + getMass( child )
        end
        return mass
end
 
updateMass = function()
        bodymass = getMass( character )
end
 
collision_time = 0
 
onCollision = function( hit )
        if collision_time <= 0 then
                local hit_speed = ( torso.Velocity - hit.Velocity ).magnitude
                if hit_speed > 65 and hit.CanCollide == true then
                        collision_time = 0.8
                        bodygyro.Parent = nil
                end
        end
end
 
torso.Touched:connect( onCollision )
head.Touched:connect( onCollision )
 
for _, child in pairs( character:children() ) do
        if child.Name == "HeliPack" then
                child:Destroy()
        end
end
 
heli_model      = create{ "Model", Name = "HeliPack", Parent = character }
script.Parent = heli_model
 
fake_l_arm      = create { "Part", Parent = heli_model, FormFactor = "Custom", Size = Vector3.new(1,2,1), CanCollide = true, Transparency = 1, Elasticity = 0.1, Friction = 0.8 }
fake_r_arm      = create { "Part", Parent = heli_model, FormFactor = "Custom", Size = Vector3.new(1,2,1), CanCollide = true, Transparency = 1, Elasticity = 0.1, Friction = 0.8 }
fake_l_leg      = create { "Part", Parent = heli_model, FormFactor = "Custom", Size = Vector3.new(1,2,1), CanCollide = true, Transparency = 1, Elasticity = 0.1, Friction = 0.8 }
fake_r_leg      = create { "Part", Parent = heli_model, FormFactor = "Custom", Size = Vector3.new(1,2,1), CanCollide = true, Transparency = 1, Elasticity = 0.1, Friction = 0.8 }
create{ "Weld", Part0 = l_arm, Part1 = fake_l_arm, Parent = character }
create{ "Weld", Part0 = r_arm, Part1 = fake_r_arm, Parent = character }
create{ "Weld", Part0 = l_leg, Part1 = fake_l_leg, Parent = character }
create{ "Weld", Part0 = r_leg, Part1 = fake_r_leg, Parent = character }
 
fake_l_arm.Touched:connect( onCollision )
fake_r_arm.Touched:connect( onCollision )
fake_l_leg.Touched:connect( onCollision )
fake_r_leg.Touched:connect( onCollision )
 
heli_base       = create{ "Part", TopSurface = 0, BottomSurface = 0, FormFactor = "Custom", Parent = heli_model,
        Size = Vector3.new(1.8, 1.8, 0.2), BrickColor = BrickColor.new(1002)
}
heli_motor      = create{ "Part", TopSurface = 0, BottomSurface = 0, FormFactor = "Custom", Parent = heli_model,
        Size = Vector3.new(1.8, 1.7, 0.6), BrickColor = BrickColor.new(194)
}
heli_axel       = create{ "Part", TopSurface = 0, BottomSurface = 0, FormFactor = "Custom", Parent = heli_model, CanCollide = false,
        Size = Vector3.new(0.2, 3.1, 0.2), BrickColor = BrickColor.new(1002)
}
local _hp = create{ "Part", Parent = heli_model, TopSurface = 0, BottomSurface = 0, FormFactor = "Custom", CanCollide = false, Size = Vector3.new(0.4, 0.2, 0.4), BrickColor = BrickColor.new("Black") }
create{ "CylinderMesh", Parent = _hp}
create{"Weld", Parent = heli_model, Part0 = heli_motor, Part1 = _hp, C0 = CFrame.new(0, 0.9, 0) }
heli_axeltop = create{ "Part", TopSurface = 0, BottomSurface = 0, FormFactor = "Custom", Parent = heli_model, CanCollide = false,
        Size = Vector3.new(0.4, 0.2, 0.4), BrickColor = BrickColor.new("Black")
}
heli_top = create{ "Part", TopSurface = 0, BottomSurface = 0, FormFactor = "Custom", Parent = heli_model, CanCollide = false,
        Size = Vector3.new(0.2, 0.2, 0.2), Transparency = 1
}
create{ "Weld", Part0 = heli_axel, Part1 = heli_top, C0 = CFrame.new(0,1.5,0), Parent = heli_model }
 
create{ "CylinderMesh", Parent = heli_axeltop }
create{ "CylinderMesh", Parent = heli_axel }
 
heli_rotor_weld = create{ "Weld", Parent = heli_model, Part0 = heli_axel, Part1 = heli_axeltop, C0 = CFrame.new(0,1.6,0) }
 
clone_rotor     = create{ "Part", TopSurface = 0, BottomSurface = 0, FormFactor = "Custom", CanCollide = false,
        Size = Vector3.new(1.1, 0.2, 4.5), Transparency = 1
}
create { "Decal", Parent = clone_rotor, Texture = "rbxassetid://142889819", Face = "Top" }
create { "Decal", Parent = clone_rotor, Texture = "rbxassetid://142889819", Face = "Bottom" }
 
for angle = 0, 360-120, 120 do
        local part = clone_rotor:clone()
        create{ "BlockMesh", Parent = part, Scale = Vector3.new(1,0,1) }
        create{ "Weld", Part0 = heli_axeltop, Part1 = part, C0 = CFrame.Angles(0, math.rad(angle), 0), C1 = CFrame.new( 0, 0, -2.25 ), Parent = heli_model }
        part.Parent = heli_model
end
 
create{ "Weld", Part0 = torso, Part1 = heli_base, C0 = CFrame.new( 0, 0, 0.6 ), Parent = heli_model }
create{ "Weld", Part0 = heli_base, Part1 = heli_motor, C0 = CFrame.new( 0, -0.05, 0.4 ), Parent = heli_model }
 
heli_axis_weld = create{ "Weld", Part0 = heli_motor, Part1 = heli_axel, C0 = CFrame.new( 0, 2.3, 0 ), Parent = heli_model }
 
heli_l_part     = create{ "Part", TopSurface = 0, BottomSurface = 0, FormFactor = "Custom", Parent = heli_model, CanCollide = false, Size = Vector3.new(0.2, 1, 0.2), BrickColor = BrickColor.new(1002) }
heli_r_part     = create{ "Part", TopSurface = 0, BottomSurface = 0, FormFactor = "Custom", Parent = heli_model, CanCollide = false, Size = Vector3.new(0.2, 1, 0.2), BrickColor = BrickColor.new(1002) }
heli_l_axel     = create{ "Part", TopSurface = 0, BottomSurface = 0, FormFactor = "Custom", Parent = heli_model, CanCollide = false, Size = Vector3.new(0.2, 0.7, 0.2), BrickColor = BrickColor.new(1002) }
heli_r_axel     = create{ "Part", TopSurface = 0, BottomSurface = 0, FormFactor = "Custom", Parent = heli_model, CanCollide = false, Size = Vector3.new(0.2, 0.7, 0.2), BrickColor = BrickColor.new(1002) }
heli_l_top = create{ "Part", TopSurface = 0, BottomSurface = 0, FormFactor = "Custom", Parent = heli_model, CanCollide = false, Size = Vector3.new(0.3, 0.2, 0.3), BrickColor = BrickColor.new("Black") }
heli_r_top = create{ "Part", TopSurface = 0, BottomSurface = 0, FormFactor = "Custom", Parent = heli_model, CanCollide = false, Size = Vector3.new(0.3, 0.2, 0.3), BrickColor = BrickColor.new("Black") }
create{"CylinderMesh", Parent = heli_l_top, Scale = Vector3.new(1,0.4,1) }
create{"CylinderMesh", Parent = heli_r_top, Scale = Vector3.new(1,0.4,1) }
create{"CylinderMesh", Parent = heli_l_part }
create{"CylinderMesh", Parent = heli_r_part }
create{"CylinderMesh", Parent = heli_l_axel, Scale = Vector3.new(0.8,1,0.8) }
create{"CylinderMesh", Parent = heli_r_axel, Scale = Vector3.new(0.8,1,0.8) }
 
create{ "Weld", Part0 = heli_motor, Part1 = heli_l_part, C0 = CFrame.new( -0.9, 0.65, 0 ) * CFrame.Angles(0,math.pi/2,0) * CFrame.Angles(-math.pi/2,0,0), C1 = CFrame.new(0, -0.5, 0), Parent = heli_model }
create{ "Weld", Part0 = heli_motor, Part1 = heli_r_part, C0 = CFrame.new( 0.9, 0.65, 0 ) * CFrame.Angles(0,-math.pi/2,0) * CFrame.Angles(-math.pi/2,0,0), C1 = CFrame.new(0, -0.5, 0), Parent = heli_model }
create{ "Weld", Part0 = heli_l_part, Part1 = heli_l_axel, C0 = CFrame.new( 0, 0.38, 0 ) * CFrame.Angles(0, 0, 1.4), C1 = CFrame.new(0, -0.3, 0), Parent = heli_model }
create{ "Weld", Part0 = heli_r_part, Part1 = heli_r_axel, C0 = CFrame.new( 0, 0.38, 0 ) * CFrame.Angles(0, 0, -1.4), C1 = CFrame.new(0, -0.3, 0), Parent = heli_model }
 
heli_l_weld = create{ "Weld", Part0 = heli_l_axel, Part1 = heli_l_top, C0 = CFrame.new( 0, 0.4, 0 ), Parent = heli_model }
heli_r_weld = create{ "Weld", Part0 = heli_r_axel, Part1 = heli_r_top, C0 = CFrame.new( 0, 0.4, 0 ), Parent = heli_model }
 
for angle = 0, 360-90, 90 do
        local part = clone_rotor:clone()
        part.Size = Vector3.new(0.6,0.2,1.6)
        create{ "BlockMesh", Parent = part, Scale = Vector3.new(1,0,1) }
        create{ "Weld", Part0 = heli_l_top, Part1 = part, C0 = CFrame.Angles(0, math.rad(angle), 0), C1 = CFrame.new( 0, 0, -0.8 ), Parent = heli_model }
        part.Parent = heli_model
        local part2 = clone_rotor:clone()
        part2.Size = Vector3.new(0.6,0.2,1.6)
        create{ "BlockMesh", Parent = part2, Scale = Vector3.new(1,0,1) }
        create{ "Weld", Part0 = heli_r_top, Part1 = part2, C0 = CFrame.Angles(0, math.rad(angle), 0), C1 = CFrame.new( 0, 0, -0.8 ), Parent = heli_model }
        part2.Parent = heli_model
end
 
heli_sound.Parent = heli_axeltop
bodyforce       = create{ "BodyForce", force = Vector3.new(), Parent = heli_top }
bodygyro        = create{ "BodyGyro", maxTorque = Vector3.new( 3000, 3000, 3000 ), P = 65, D = 7 }
 
 
heli_rotorspeed = 0
heli_rotorrot = 0
heli_throttle = 0
heli_targetthrottle = 0
 
heli_sound:Play()
 
updateMass()
closePack()
 
character.DescendantAdded:connect( updateMass )
character.DescendantRemoving:connect( updateMass )
 
local prevTime = tick()
 
local a = 0
 
loop = function()
        local currTime = tick()
        local delta = currTime - prevTime
        prevTime = currTime
       
        handleInput()
       
        if collision_time > 0 then
                collision_time = collision_time - delta
        else
                if pack_open and bodygyro.Parent ~= heli_top then
                        bodygyro.Parent = heli_top
                end
        end
       
        heli_throttle = heli_throttle + (heli_targetthrottle - heli_throttle)*(0.06*delta*60.0)
        heli_rotorspeed = heli_throttle*3200
        heli_sound.Pitch = 1.9 + ( heli_throttle - 1 )*1
       
        if heli_throttle > 0.002 then
                if heli_sound.IsPaused then
                        heli_sound:Play()
                end
                heli_sound.Volume = 0.28*(heli_throttle-0.002)
        else
                if heli_sound.IsPlaying then
                        heli_sound:Pause()
                end
        end
       
        heli_rotorrot = heli_rotorrot + heli_rotorspeed*delta
        if heli_rotorrot > 180 then heli_rotorrot = heli_rotorrot - 360 elseif heli_rotorrot < -180 then heli_rotorrot = heli_rotorrot + 360 end
        heli_rotor_weld.C0 = CFrame.new(0, 1.6, 0) * CFrame.Angles( 0, math.rad(-heli_rotorrot), 0 )
        heli_l_weld.C1 = CFrame.Angles( 0, math.rad(heli_rotorrot), 0 )
        heli_r_weld.C1 = CFrame.Angles( 0, math.rad(heli_rotorrot), 0 )
       
        local cf = camera.CoordinateFrame * CFrame.Angles( math.rad(15), 0, 0 ) * tilt
        bodygyro.cframe = cf
        local up = ( torso.CFrame * CFrame.Angles( math.pi/2, 0, 0 )).lookVector
       
        local acc = Vector3.new(1,1,1)*196.2*heli_throttle
        bodyforce.force = up * acc * bodymass
       
        local hit, hitpos = workspace:FindPartOnRay( Ray.new( torso.CFrame.p, -up*3.1 ), character )
       
        if hit and pack_open and up.y > 0.88 and bodygyro.Parent == heli_top then
                if hit.CanCollide then
                        closePack()
                end
        end
       
        for i, _ in pairs( framekeys ) do
                framekeys[i] = false
        end
end
 
oc = oc or function(f) return f end
 
game:service("RunService").RenderStepped:connect( oc(loop) )
end)
shape = Instance.new("TextButton", Screen)
shape.Position = UDim2.new(0, 0, 0, 450)
shape.Size = UDim2.new(0, 100, 0, 50)
shape.Text = "Gui shapes"
shape.MouseButton1Down:connect(function()
wait()
local player;
local mouse;
local worldcamera;
 
local camera;
local world;
local screen;
local sg;
 
 
--[[
        thanks for stealing this
       
        obtw xsoul made dis
--]]
 
 
player  = game.Players.LocalPlayer
mouse   = player:GetMouse()
 
worldcamera = workspace.CurrentCamera
 
sg = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
screen = Instance.new("Frame", sg)
screen.BackgroundColor3 = Color3.new(1,1,1)
screen.Size = UDim2.new(1,0,1,20)
screen.BorderSizePixel = 0
 
create = function( tab )
        local obj = Instance.new( tab[1] )
        for i, v in pairs( tab ) do
                if i ~= 1 then
                        obj[i] = v
                end
        end
        return obj
end
 
local _hopper = create{"HopperBin", Parent = player.Backpack, Name = "HIDE MOUSE"}
_hopper.Selected:connect(function(moose)
        moose.Icon = "rbxassetid://18662154"
        _hopper:Destroy()
end)
 
local controllerservice;
repeat wait() controllerservice = game:service("ControllerService") until controllerservice
controllerservice:ClearAllChildren()
 
 
Display = {}
 
Display.resolution = screen.AbsoluteSize
Display.center = screen.AbsoluteSize/2
Display.update = function( self )
        local s = screen.AbsoluteSize
        self.resolution = s
        self.center = s/2
        self.x = s.x
        self.y = s.y
end
 
Camera = {}
 
Camera.create = function( fov, near_clip, far_clip )
        local self = setmetatable( {}, { __index = Camera } )
        self.field_of_view      = fov
        self.near_clip          = near_clip
        self.far_clip           = far_clip
        self.fovMult            = 1 / math.tan(math.rad(fov)/2)
        self.cframe                     = CFrame.new()
       
        return self
end
 
Camera.toScreenSpace = function( self, pos )
        local dif = self.cframe:pointToObjectSpace(pos)
        return
                Display.x/2 + ( dif.x/-dif.z * self.fovMult * Display.y/Display.x ) * Display.x / 2,
                Display.y/2 + ( dif.y/-dif.z * self.fovMult ) * Display.y / 2,
                -dif.z
end
 
Camera.setFov = function( self, fov )
        self.field_of_view = fov
end
 
Camera.applyRotation = function( self, rotation )
        local pos = self.cframe.p
        local rot = CFrame.Angles( 0, rotation.y, 0 )
        rot = rot * CFrame.Angles( rotation.x, 0, 0 )
        self.cframe = CFrame.new(pos) * rot
end
 
Camera.rotate = function( self, pitch, yaw, roll )
        self.cframe = self.cframe * CFrame.Angles( math.rad( pitch ), math.rad( yaw ), math.rad( roll ) )
end
Camera.moveX = function( self, amnt )
        self.cframe = self.cframe * CFrame.new( amnt, 0, 0 )
end
Camera.moveY = function( self, amnt )
        self.cframe = self.cframe * CFrame.new( 0, amnt, 0 )
end
Camera.moveZ = function( self, amnt )
        self.cframe = self.cframe * CFrame.new( 0, 0, amnt )
end
 
 
Point = {}
Point.mt = { __index = Point }
 
Point.new = function( pos )
        local self = setmetatable( {}, Point.mt )
        self.position = pos
        return self
end
 
Connector = {}
Connector.mt = { __index = Connector }
 
Connector.new = function( point1, point2 )
        local self = setmetatable( {}, Connector.mt )
        self.point1 = point1
        self.point2 = point2
        self.gui = create{ "Frame", Parent = screen, BorderSizePixel = 1, BackgroundColor3 = Color3.new(), Position = UDim2.new(1, 50, 1, 50) }
        return self
end
 
Connector.render = function( self, cframe )
        local x1, y1, z1 = camera:toScreenSpace( cframe:pointToWorldSpace(self.point1.position) )
        local x2, y2, z2 = camera:toScreenSpace( cframe:pointToWorldSpace(self.point2.position) )
        local z = math.min(z1, z2)
        local zz = math.max(z1, z2)
       
        if z > 0 and (x1 > 0 or x2 > 0) and (x1 < Display.x or x2 < Display.x) and (y1 > 0 or y2 > 0) and (y1 < Display.y or y2 < Display.y) and zz/65 < 1 then
                if self.gui.Parent ~= screen then
                        self.gui.Parent = screen
                        self.gui.Visible = true
                end
               
                local x, y = (x1+x2)/2, (y1+y2)/2
                local dist = math.sqrt( (x2-x1)^2 + (y2-y1)^2 )
                local h = 1
               
                local alpha = zz/65
                local alpha2 = zz/55
                if alpha2 > 1 then alpha2 = 1 end
               
                self.gui.BorderColor3 = Color3.new(alpha2, alpha2, alpha2)
                self.gui.BackgroundColor3 = Color3.new(alpha, alpha, alpha)
                self.gui.Position = UDim2.new(0, x-dist/2, 0, y-h/2)
                self.gui.Size = UDim2.new(0, dist, 0, h)
                self.gui.Rotation = math.deg( math.atan2( y2-y1, x2-x1 ) )
        else
                if self.gui.Parent ~= nil then
                        self.gui.Parent = nil
                        self.gui.Visible = false
                end
        end
end
 
Shape = {}
Shape.mt = { __index = Shape }
 
Shape.new = function( cframe )
        local self = setmetatable( {}, Shape.mt )
        self.points = {}
        self.connectors = {}
        self.cframe = cframe
       
        return self
end
 
Shape.render = function( self )
        self.cframe = self.cframe * CFrame.Angles(0.001211, 0.002654, -0.00125)
        for _, connector in pairs( self.connectors ) do
                connector:render(self.cframe)
        end
end
 
Shape.cuboid = function(cframe, width, height, depth)
        local self = Shape.new(cframe)
       
        local function p(x,y,z)
                local point = Point.new( Vector3.new(x*width/2,y*height/2,z*depth/2) )
                table.insert(self.points, point)
                return point
        end
       
        local function c(p1, p2)
                local connector = Connector.new(p1,p2)
                table.insert(self.connectors, connector)
                return connector
        end
       
        local top_left_back = p(-1,1,1)
        local top_right_back = p(1,1,1)
        local bottom_left_back = p(-1,-1,1)
        local bottom_right_back = p(1,-1,1)
       
        local top_left_front = p(-1,1,-1)
        local top_right_front = p(1,1,-1)
        local bottom_left_front = p(-1,-1,-1)
        local bottom_right_front = p(1,-1,-1)
       
        c( top_left_back, top_right_back ) --back side
        c( top_left_back, bottom_left_back )
        c( bottom_right_back, top_right_back )
        c( bottom_right_back, bottom_left_back )
       
        c( top_left_front, top_right_front ) --front side
        c( top_left_front, bottom_left_front )
        c( bottom_right_front, top_right_front )
        c( bottom_right_front, bottom_left_front )
       
        c( top_left_front, top_left_back ) --edges
        c( top_right_front, top_right_back )
        c( bottom_left_front, bottom_left_back )
        c( bottom_right_front, bottom_right_back )
       
        return self
end
 
Shape.pyramid = function(cframe, size)
        local self = Shape.new(cframe)
       
        local function p(x,y,z)
                local point = Point.new( Vector3.new(x*size/2,y*size/2,z*size/2) )
                table.insert(self.points, point)
                return point
        end
       
        local function c(p1, p2)
                local connector = Connector.new(p1,p2)
                table.insert(self.connectors, connector)
                return connector
        end
       
        local top = p(0,1,0)
        local left_back = p(-1,-1,-1)
        local right_back = p(1,-1,-1)
        local left_front = p(-1,-1,1)
        local right_front = p(1,-1,1)
       
        c(left_back, right_back)
        c(left_back, left_front)
        c(right_front, right_back)
        c(right_front, left_front)
       
        c(top, left_back)
        c(top, right_back)
        c(top, left_front)
        c(top, right_front)
       
        return self
end
 
Input = {}
 
Input.keys = {}
 
Input.isKeyDown = function(key)
        return Input.keys[string.byte(key)] or false
end
 
mouse.KeyDown:connect(function(k)
        Input.keys[string.byte(k)] = true
end)
mouse.KeyUp:connect(function(k)
        Input.keys[string.byte(k)] = false
end)
 
local rotashun = Vector3.new()
 
camera = Camera.create( 80 )
camera.cframe = CFrame.new(Vector3.new(0,0,22), Vector3.new(0,0,0))
 
world = {}
world.shapes = {}
world.render = function(self)
        for _, shape in pairs(self.shapes) do
                shape:render()
        end
end
 
local function _r(a)
        return (math.random()-0.5)*2*a
end
 
for i = 1, 9 do
table.insert(world.shapes, Shape.cuboid( CFrame.new(_r(14), _r(14), _r(14)) * CFrame.Angles(_r(math.pi), _r(math.pi), _r(math.pi)), _r(1.5)+1.8, _r(1.5)+1.8,_r(1.5)+1.8 ))
end
for i = 1, 9 do
table.insert(world.shapes, Shape.pyramid( CFrame.new(_r(14), _r(14), _r(14)) * CFrame.Angles(_r(math.pi), _r(math.pi), _r(math.pi)), _r(1.5)+1.8 ))
end
for i = 1, 9 do
table.insert(world.shapes, Shape.cuboid( CFrame.new(_r(70), _r(70), _r(70)) * CFrame.Angles(_r(math.pi), _r(math.pi), _r(math.pi)), _r(1.5)+1.8, _r(1.5)+1.8,_r(1.5)+1.8 ))
end
for i = 1, 9 do
table.insert(world.shapes, Shape.pyramid( CFrame.new(_r(70), _r(70), _r(70)) * CFrame.Angles(_r(math.pi), _r(math.pi), _r(math.pi)), _r(1.5)+1.8 ))
end
 
local prevTime = tick()
 
render = function()
        world:render()
end
 
local roro = rotashun
 
loop = function()
        local currentTime = tick()
        local delta = currentTime - prevTime
        prevTime = currentTime
       
        Display:update()
       
        local mousedelta = mouseupdate()
       
        rotashun = rotashun + Vector3.new( mousedelta.y*0.15, -mousedelta.x*0.15, 0 )
        if rotashun.x > 87 then rotashun = Vector3.new(87, rotashun.y, rotashun.z) end
        if rotashun.x < -87 then rotashun = Vector3.new(-87, rotashun.y, rotashun.z) end
        if rotashun.y > 180 then rotashun = Vector3.new(rotashun.x, rotashun.y-360, rotashun.z) end
        if rotashun.y < -180 then rotashun = Vector3.new(rotashun.x, rotashun.y+360, rotashun.z) end
       
        local diff = (rotashun - roro)
        if math.abs(diff.y) > 180 then
                diff = Vector3.new(diff.x, diff.y-(diff.y/math.abs(diff.y))*360, diff.z)
        end
        roro = (roro + diff*0.35)
        roro = Vector3.new(roro.x, roro.y%360, roro.z)
       
        camera:applyRotation( roro/(180/math.pi) )
       
        if Input.isKeyDown'w' then
                camera:moveZ( -0.2 )
        end
        if Input.isKeyDown's' then
                camera:moveZ( 0.2 )
        end
        if Input.isKeyDown'a' then
                camera:moveX( -0.2 )
        end
        if Input.isKeyDown'd' then
                camera:moveX( 0.2 )
        end
       
        render()
end
 
mousePos                = Vector2.new(mouse.X, mouse.Y)
lastMousePos    = mousePos
 
local ticks = -1
 
mouseupdate = function()
        lastMousePos = mousePos
        mousePos = Vector2.new(mouse.X, mouse.Y)
        local mouseDelta = mousePos - lastMousePos
       
        if (mousePos-Display.center).magnitude > 225 then
                player.CameraMode = Enum.CameraMode.LockFirstPerson
                worldcamera.CameraType = "Custom"
                worldcamera.CameraSubject = humanoid
 
                ticks = 2
        end
       
        if ticks > 0 then
                ticks = ticks - 1
        end
       
        if ticks == 0 then
                ticks = -1
                player.CameraMode = Enum.CameraMode.Classic
                worldcamera.CameraType = "Scriptable"
        end
       
        if mouseDelta.magnitude > 200 then
                mouseDelta = Vector2.new()
        end
       
        return mouseDelta
end
 
game:service("RunService").RenderStepped:connect(loop)
end)
 

