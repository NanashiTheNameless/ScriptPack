if (script:FindFirstChild("forCustomRun")~=nil) then
local sc = script["forCustomRun"].Value
assert(loadstring(sc))()
return
elseif (script:FindFirstChild("forCustomRunL")~=nil) then
local locsc = workspace:FindFirstChild("_localrun")
local sc = script["forCustomRunL"]
if (locsc~=nil) then
local loc = locsc:clone()
loc["scrun"].Value = sc.Value
loc.Name = script.Name
for i,v in pairs(script:GetChildren()) do
v:clone().Parent = loc
end
loc.Parent = script.Parent
script:remove()
return
else
assert(loadstring(sc.Value))()
return
end
end
local m = Instance.new("Model")
m.Name = "Cyber-Blade"
t1 = Instance.new("Tool", m)
t1.Name = "Cyber-Blade"
t1.GripForward = Vector3.new(-1, 0, 0)
t1.GripPos = Vector3.new(0, 0, -1.70000005)
t1.GripRight = Vector3.new(0, 1, 0)
t1.GripUp = Vector3.new(0, 0, 1)
t1.ToolTip = "Made By Ace28545 And YoungWarlock"
p1 = Instance.new("Part", t1)
p1.BrickColor = BrickColor.new("Bright yellow")
p1.Material = Enum.Material.SmoothPlastic
p1.Transparency = 1
p1.Name = "Handle"
p1.CFrame = CFrame.new(-6.30087948, 1.58412969, 18.0000076, 0.999998689, -0.00152071053, 8.95137709e-005, 0.00152071717, 0.999998689, -7.23654084e-005, -8.94034965e-005, 7.25020218e-005, 1)
p1.FormFactor = Enum.FormFactor.Plate
p1.Size = Vector3.new(1, 0.800000012, 6)
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
x1 = Instance.new("Sound", p1)
x1.Name = "SOUND_down"
x1.Pitch = 1
x1.SoundId = "rbxasset://sounds/swordlunge.wav"
x1.Volume = 1
x1.Looped = false
x1.PlayOnRemove = false
x2 = Instance.new("Sound", p1)
x2.Name = "SOUND_equip"
x2.Pitch = 1
x2.SoundId = "http://www.roblox.com/asset?id=130806924"
x2.Volume = 1
x2.Looped = false
x2.PlayOnRemove = false
x3 = Instance.new("Sound", p1)
x3.Name = "SOUND_hitground"
x3.Pitch = 1
x3.SoundId = "rbxasset://sounds/snap.wav"
x3.Volume = 1
x3.Looped = false
x3.PlayOnRemove = false
x4 = Instance.new("Sound", p1)
x4.Name = "SOUND_slash"
x4.Pitch = 1
x4.SoundId = "http://www.roblox.com/asset?id=10209645"
x4.Volume = 1
x4.Looped = false
x4.PlayOnRemove = false
x5 = Instance.new("PointLight", p1)
x5.Color = Color3.new(1, 1, 0)
s1 = script:clone()
s2 = script:clone()
s2.Name = "MotorizeRightGrip"
s2.Disabled = false
so2 = Instance.new("StringValue", s2)
so2.Name = "forCustomRun"
so2.Value = [===[
function Create(ty)
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

local Tool = script.Parent.Parent

local armChildRemovedConn = nil
local Motor6DGrip = nil
local EquippedNum = 0

Tool.Equipped:connect(function()
        EquippedNum = EquippedNum + 1
        local myEquip = EquippedNum
        --some vars
        local Player = game.Players:GetPlayerFromCharacter(Tool.Parent)
        local Character = Player.Character

        local rightarm = Character:FindFirstChild('Right Arm')
        if rightarm and rightarm:FindFirstChild('RightGrip') then
                local rightGrip = rightarm['RightGrip']
                local handle = rightGrip.Part1

                --kill my joint when the normal joint is removed
                --this must be done here so that the joint is removed 
                --_right away_ after unequipping and the character doesn't 
                --glitch up.
                local armChildRemovedConn = rightarm.ChildRemoved:connect(function(ch)
                        if ch == rightGrip then
                                Motor6DGrip:Remove()
                                Motor6DGrip = nil
                                --
                                if handle and Character:FindFirstChild('Torso') then
                                        if Tool.Parent.Parent:IsA('Player') then
                                                --the sword has been deselected
                                                --put the sword far away so the user doesn't notice that the handle doesn't
                                                --update for about 0.1 seconds after selecting the tool.
                                                handle.CFrame = CFrame.new(100000, 100000, 100000)
                                        else
                                                --if in the workspace, position the handle where it should be dropped
                                                --use the size of the handle to make sure it's dropped far enough away
                                                handle.CFrame = Character.Torso.CFrame * CFrame.new(0, 0, -(handle.Size.magnitude+2))
                                        end
                                end
                        end
                end)

                --make my new joint
                Motor6DGrip = Create'Motor6D'{
                        Name = 'RightGrip_Motor',
                        Part0 = rightarm,
                        Part1 = handle,
                }
                --kill the old weld
                rightGrip.Part1 = nil
                rightGrip.Part0 = nil
                Motor6DGrip.Parent = rightGrip.Parent
                Motor6DGrip.C1 = Motor6DGrip.C1 * CFrame.Angles(0, -math.pi/2, 0)
                Motor6DGrip.C1 = Motor6DGrip.C1 * CFrame.Angles(math.pi/2, 0, 0)
                Motor6DGrip.C1 = Motor6DGrip.C1 + Vector3.new(0.20, 0, 0)
        end
end)

Tool.Unequipped:connect(function()
        EquippedNum = EquippedNum + 1
        if armChildRemovedConn then
                armChildRemovedConn:disconnect()
                armChildRemovedConn = nil
        end
end)

]===]
s2.Parent = s1
s1.Name = "ChristmasKatana_MainScript"
s1.Disabled = false
so1 = Instance.new("StringValue", s1)
so1.Name = "forCustomRunL"
so1.Value = [===[
--local mDebugId = game.Workspace.DebugId.Value
--game.Workspace.DebugId.Value = game.Workspace.DebugId.Value+1
--print("Running swordscript <"..mDebugId..">")
local debris = game:GetService("Debris")

-------------------------------------
-- Makes an RBX::Lua Instance using
-- a table of key-value pairs to
-- initialize it. Values with numeric 
-- keys will be parented to the object
-- and other values will be set
-- as members of the object.
function Create(ty)
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

---------------------------------------
-- Same as Make, but modifies an existing
-- object rather than creating ones.
function Modify(obj, data)
        for k, v in pairs(data) do
                if type(data) == 'number' then
                        data.Parent = obj
                else
                        data[k] = v
                end
        end
        return obj
end

-----------------------------------------
-- Creates a class which can be instantiated
-- using `CreateCLASSNAME( ... )`.
---usage:
--class'MyClass'(function(this, arg1)
--        this.ClassMember = value
--        function this.ClassMethod(...) ... end
--end, function(def)
--        def.StaticMember = value
--         function def.StaticMethod(...) ... end
--end)
--local obj = CreateMyClass(arg1)
------------------------------------------
local function class(name)
        local def = {}
        getfenv(0)[name] = def
        return function(ctor, static)
                local nctor = function(...)
                        local this = {}
                        if ctor then
                                ctor(this, ...)
                        end
                        return this
                end
                getfenv(0)['Create'..name] = nctor
                if static then static(def) end
        end
end


---------------------------------------------
-- Signal class for custom-made events
--API:
-- Signal:connect(callback)
-- Signal:fire(...)
-- Signal:wait()
---------------------------------------------
class'Signal'(function(this)
        local mListeners = {}
        local mWaitObject = Create'BoolValue'{}

        function this:connect(func)
                local connection = {}
                function connection:disconnect()
                        mListeners[func] = nil
                end
                mListeners[func] = connection
                return connection
        end

        function this:fire(...)
                --print("Fire evt<"..tostring(this).."> from script<"..mDebugId..">")
                for func, conn in pairs(mListeners) do
                        --print("-> "..tostring(func).."( ... )")
                        func(...)
                end
                mWaitObject.Value = not mWaitObject.Value
        end

        function this:wait()
                mWaitObject.Changed:wait()
        end
end)


--------------------------------------------------
-- Bin class for cleaning up assets
--API: 
-- Bin:add(func: Function, ident: String)
-- Bin:clean(ident: String)
-- Bin:cleanAll()
--------------------------------------------------
class'Bin'(function(this)
        local mGarbage = {}

        function this:add(func, ident)
                ident = ident or '__unnamed'
                if not mGarbage[ident] then
                        mGarbage[ident] = {}
                end
                mGarbage[ident][#mGarbage[ident]+1] = func
        end

        function this:clean(ident)
                local listToCall = mGarbage[ident]
                if listToCall then
                        for _, func in pairs(listToCall) do
                                func()
                        end
                        mGarbage[ident] = nil
                end
        end

        function this:cleanAll()
                for ident, list in pairs(mGarbage) do
                        for _, func in pairs(list) do
                                func()
                        end
                        mGarbage[ident] = nil
                end
        end
end)


-----------------------------------------------------
-- AnimationProvider class for easy loading of
-- animation assets into animationtracks once 
-- a humanoid is available.
--API:
-- AnimationProvider:registerAnimation(ident, assetid)
-- AnimationProvider:setHumanoid(humanoid)
-- AnimationProvider:setTool(tool)
-- AnimationProvider:getAnimation(ident)
-----------------------------------------------------
class'AnimationProvider'(function(this)
        local mAnimations = {--[[ident => {AnimationId, CurrentTrack, CurrentAnim} ]]}
        local mCurrentHumanoid = nil

        function this:registerAnimation(ident, assetid)
                --check for an existing copy of the anim
                local existingAnim = Tool.Tool:FindFirstChild('ANIM_'..ident)
                        
                --make the data for this anim
                local animdat = {
                        AnimationId = assetid, 
                        CurrentAnim = existingAnim or Create'Animation'{
                                Name = "ANIM_"..ident,
                                AnimationId = assetid,        
                        },
                }
                mAnimations[ident] = animdat

                --if there's a current tool, put it in there
                if Tool.Tool then
                        Tool.HUGE_EQUIP_HACK = true
                        animdat.CurrentAnim.Parent = Tool.Tool
                        Tool.HUGE_EQUIP_HACK = false
                end
                
                --if there's a humanoid load the animation track
                if mCurrentHumanoid then
                        animdat.CurrentTrack = mCurrentHumanoid:LoadAnimation(animdat.CurrentAnim)
                end
        end

        function this:setHumanoid(humanoid)
                mCurrentHumanoid = humanoid
                for _, anim in pairs(mAnimations) do
                        anim.CurrentTrack = humanoid:LoadAnimation(anim.CurrentAnim)
                end
        end

        function this:getAnimation(ident)
                local dat = mAnimations[ident]
                if not dat then error("Gear Fatal Error: Animation `"..ident.."` not found") end
                if not dat.CurrentTrack then 
                        error("Gear Fatal Error: No Humanoid for animation `"..ident.."` to run in") 
                end
                return dat.CurrentTrack
        end
end)


----------------------------------------------
-- SoundProvider class
-- functions similarily to the animationprovider
----------------------------------------------
class'SoundProvider'(function(this)
        local mSounds = {}

        function this:registerSound(ident, assetid, inpart)
                inpart = inpart or Tool.Tool:FindFirstChild('Handle')
                if not inpart then
                        repeat
                                inpart = Tool.Tool.ChildAdded:wait()
                        until inpart.Name == 'Handle'
                end
                local existingSound = inpart:FindFirstChild('SOUND_'..ident)
                local sounddat = {
                        SoundId = assetid,
                        CurrentSound = existingSound or Create'Sound'{
                                Name = 'SOUND_'..ident,
                                SoundId = assetid,
                                Parent = inpart,
                        },
                }
                mSounds[ident] = sounddat
        end

        function this:getSound(ident)
                local dat = mSounds[ident]
                if dat then
                        return dat.CurrentSound
                end
        end
end)


----------------------------------------------
-- DebounceProvider class -- Prevent events
-- from happening in too rapid succession
----------------------------------------------
class'DebounceProvider'(function(this)
        local mFlagNameToLastTime = {}

        function this:test(ident, delta)
                local t = tick()
                local lastTime = mFlagNameToLastTime[ident] or 0
                if delta then
                        return (t-lastTime) > delta
                else
                        return mFlagNameToLastTime[ident]
                end
        end
        function this:set(ident, state)
                if state then
                        mFlagNameToLastTime[ident] = state
                elseif state == false then
                        mFlagNameToLastTime[ident] = false
                else
                        mFlagNameToLastTime[ident] = tick()
                end
        end
end)


function TagHumanoid(humanoid)
        if Tool.Player then
                local tag = Create'ObjectValue'{
                        Name = "creator", 
                        Value = Tool.Player,
                        Parent = humanoid,
                }
                Tool.Bin:add(function()
                        tag:Remove()
                end, 'HumanoidTag')
        end
end
function UntagHumanoid()
        Tool.Bin:clean('HumanoidTag')
end


------- wait for any event in a set of events  to fire ------
function WaitForAny(tb)
        local evt = tb
        local conn = {}
        local eventargs = nil
        local waitProxy = Create'BoolValue'{}
        for _, e in pairs(evt) do
                local c = e:connect(function(...)
                        for _, c in pairs(conn) do
                                c:disconnect()
                        end
                        eventargs = {...}
                        waitProxy.Value = not waitProxy.Value
                end)
                conn[#conn+1] = c
        end
        --
        waitProxy.Changed:wait()
        --
        return unpack(eventargs)
end


----------------------------------------------
-- Tool singleton class
--API:
-- ...
class'Tool'(nil, function(this)
        --need this here for the animationprovider to use
        this.HUGE_EQUIP_HACK = false

        this.Bin = CreateBin()
        this.AnimationProvider = CreateAnimationProvider()
        this.DebounceProvider = CreateDebounceProvider()
        this.SoundProvider = CreateSoundProvider()

        --general values
        this.Tool = script.Parent
        this.Player = nil
        this.Humanoid = nil
        this.Character = nil

        --============ several flags for the gear
        --nothing

        --some events
        this.Equipped = CreateSignal()
        this.Unequipped = CreateSignal()
        this.OwnerChange = CreateSignal()

        --mouse utility events
        this.MouseClick = CreateSignal()
        this.MouseDoubleClick = CreateSignal()
        this.DoubleClickThreshold = 0.2

        local mLastClickTime = 0

        script.Parent.Equipped:connect(function(mouse)
                --print("Internal Equipped: Time b: "..time())
                --set up general values in the tool
                this.Mouse = mouse
                local curOwner = game.Players:GetPlayerFromCharacter(script.Parent.Parent)
                if curOwner ~= this.Player then
                        this.Player = curOwner
                        this.OwnerChange:fire(this.Player)
                end
                this.Character = this.Player.Character
                this.Humanoid = this.Character.Humanoid
                this.AnimationProvider:setHumanoid(this.Humanoid)

                --set up the mouse events
                mouse.Button1Down:connect(function()
                        local t = tick()
                        if (t-mLastClickTime) < this.DoubleClickThreshold then
                                --prvent multiple double-clicks in a row
                                mLastClickTime = 0
                                this.MouseDoubleClick:fire(mouse)
                        else
                                mLastClickTime = t
                                this.MouseClick:fire(mouse)
                        end
                end)

                --done setup, call the equipped function
                if this.HUGE_EQUIP_HACK then
                        --the HUGE_EQUIP_HACK flags tells the tool that the equip is a synchronous
                        --call as a result of parenting an animation to the character, which happens 
                        --when the tool is picked up from the workspace, but not during normal equips 
                        --(Why does this happen???), if this is the case, the call should be rederrred 
                        --one tick to ensure that all of the gear's loading can complete before it's 
                        --equipped event is called.
                        --TODO: Blame John for this.
                        Delay(0, function()
                                this.Equipped:fire(mouse)
                        end)
                else
                        --otherwise, proceed as normal
                        this.Equipped:fire(mouse)
                end
        end)

        script.Parent.Unequipped:connect(function()
                --before my teardown, fire the event
                this.Unequipped:fire()

                --delete all my garbage
                this.Bin:cleanAll()
        end)
end)



---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
--                                                                                               --
--                               Specific Gear code starts Here                                  -- 
--                                                                                               --
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------

--register my stuff
Tool.AnimationProvider:registerAnimation('equip', 'http://www.roblox.com/asset/?id=66702743')
Tool.AnimationProvider:registerAnimation('slash', 'http://www.roblox.com/asset/?id=66702758')
Tool.AnimationProvider:registerAnimation('critup', 'http://www.roblox.com/asset/?id=66703957')
Tool.AnimationProvider:registerAnimation('critdown', 'http://www.roblox.com/asset/?id=66703954')
Tool.SoundProvider:registerSound('slash', 'rbxasset://sounds\\swordslash.wav')
Tool.SoundProvider:registerSound('equip', 'rbxasset://sounds\\unsheath.wav')
Tool.SoundProvider:registerSound('down', 'rbxasset://sounds\\swordlunge.wav')
Tool.SoundProvider:registerSound('hitground', 'rbxasset://sounds\\snap.wav')

local DamageEnbled = false
local DamageToDo = 20
local SparkleParts = {}
local SparkleAttach = {}

Tool.Equipped:connect(function()
        print("Equipped")
        Tool.AnimationProvider:getAnimation('equip'):Play(0, 1, 3)
        Tool.SoundProvider:getSound('equip'):Play()
        local handleTouchedConn = Tool.Tool.Handle.Touched:connect(function(part)
                local h = (part.Parent or game):FindFirstChild("Humanoid")
                if DamageEnbled and h then
                        TagHumanoid(h)
                        h:TakeDamage(DamageToDo)
                        wait(1)
                        UntagHumanoid()
                end
        end)
        Tool.Bin:add(function() 
                handleTouchedConn:disconnect() 
        end, 'disconnect_handle_ontouched')

        local color = true
        for i = -3, 3, 1.5 do
                color = not color
                local p = Create'Part'{
                        Name = 'EffectPart',
                        FormFactor = 'Custom',
                        Size = Vector3.new(0.1, 0.1, 0.1),
                        Parent = Tool.Tool.Handle,
                        Transparency = 1,
                        CanCollide = false,
                        Create'Fire'{
                                Name = 'Effect',
                                Enabled = false,
                                Color = (color and Color3.new(1, 0, 0) or Color3.new(1, 1, 1)),
                                Size = 2,
                        },
                }
                --[[SparkleParts[#SparkleParts+1] = p
                local motor = Create'Motor6D'{
                        Name = 'EffectAttach',
                        Parent = Tool.Tool.Handle,
                        Part0 = Tool.Tool.Handle,
                        Part1 = p,
                        C1 = CFrame.new(i, 0, 0),
                }
                SparkleAttach[#SparkleAttach+1] = motor]]
        end
        Tool.Bin:add(function()
                for _, effectPart in pairs(SparkleParts) do
                        effectPart.Parent = nil
                end
                for _, p in pairs(SparkleAttach) do
                        p.Parent = nil
                end
                SparkleParts = {}
                SparkleAttach = {}
        end, 'kill_particle_effect')
end)

Tool.Unequipped:connect(function()
        Tool.AnimationProvider:getAnimation('equip'):Stop()
end)

--utility to enable / disable damage. Makes sure that enable-disable
--pairs don't ever interfear with one and other. 
local damageEnabledLevel = 0
local function EnableDamage(damage)
        DamageEnbled = true
        DamageToDo = damage
        damageEnabledLevel = damageEnabledLevel + 1
end
local function DisableDamage()
        damageEnabledLevel = damageEnabledLevel - 1
        if damageEnabledLevel <= 0 then
                DamageEnbled = false
        end
end


--set particles enabled
local function SetBladeEffectEnabled(state)
        for _, effectPart in pairs(SparkleParts) do
                effectPart.Effect.Enabled = state
        end
end

local function frand(low, high)
        return low + math.random()*(high-low)
end

--local blues = {23,107,102,11,45,135}
local blues = {5, 24, 1009, 105, 1017}
function allThatIce(pos, isTurbo)
        local count = 5
        if (isTurbo == true) then count = 10 end

        for i=1,count do
                local p = Instance.new("Part")
                p.BrickColor = BrickColor.new  ("Bright yellow")
                p.formFactor = 2
                p.Size = Vector3.new(.1,.2,.3)
                p.Material = Enum.Material.SmoothPlastic
                p.Transparency = 0.5
                p.TopSurface = 0
                p.BottomSurface = 0
                
                local a = math.random() * 6.28
                local d = Vector3.new(math.cos(a), 0, math.sin(a)).unit
                p.Velocity = d * 25
                p.RotVelocity = d
                p.Position = pos + Vector3.new(0, math.random() * 3, 0) + (d * 2)
                p.Parent = game.Workspace

                debris:AddItem(p, 4)
        end

end

--make the hitting ground effect
local PossibleSplashColors = {Color3.new(1, 0, 0), Color3.new(.5, 0, 0)}
local function CreateSplashEffect(pos)
        local splashParts = {}
        for i = 1, 20 do
                local part = Create'Part'{
                        FormFactor = 'Custom',
                        Name = 'SlashParticle',
                        Transparency = 1,
                        CanCollide = false,
                        Size = Vector3.new(0.5, 0.5, 0.5),
                        CFrame = CFrame.new(pos),
                        Create'Fire'{
                                Name = 'Effect',
                                Size = 2,
                                Color = PossibleSplashColors[math.random(1, #PossibleSplashColors)],
                        },
                        Create'BodyVelocity'{
                                Name = 'Fly',
                                P = 100000,
                                maxForce = Vector3.new(0, 0, 0),
                                velocity = Vector3.new(frand(-1, 1), 
                                                       frand(0.5,1), 
                                                       frand(-1, 1)).unit * frand(20, 80),
                        },
                }
                splashParts[#splashParts+1] = part
                part.Parent = game.Workspace
                part.Velocity = part.Fly.velocity
                Delay(frand(0.5, 2), function()
                        part.Parent = nil
                end)
        end
        Tool.Bin:add(function()
                for _, p in pairs(splashParts) do
                        p.Parent = nil
                end
        end, 'remove_splash_effect')
end

--====== main action code

Tool.MouseClick:connect(function()
        if Tool.DebounceProvider:test('slash', 0.5) then
                Tool.DebounceProvider:set('slash')
                Tool.AnimationProvider:getAnimation('slash'):Play(0, 1, 4)
                Tool.SoundProvider:getSound('slash'):Play()
                EnableDamage(20)
                wait(0.7)
                DisableDamage()
        end
end)

Tool.MouseDoubleClick:connect(function()
        if not Tool.DebounceProvider:test('doubleclick') then
                Tool.DebounceProvider:set('doubleclick', true)
                --
                Tool.AnimationProvider:getAnimation('slash'):Stop(0)
                Tool.AnimationProvider:getAnimation('critup'):Play(0, 1, 8)
                local torso = Tool.Character:FindFirstChild("Torso")
                if torso then
                        --jump high
                        Tool.Humanoid.Jump = true
                        torso.Velocity = torso.Velocity + Vector3.new(0, 120, 0)-- + (torso.CFrame.lookVector * 150)
                        local bv = Instance.new("BodyAngularVelocity")
                        bv.P = 1250
                        local mmm = torso.CFrame.lookVector
                        bv.angularvelocity = Vector3.new(mmm.z, 0, -mmm.x) * 8 --Vector3.new(0,0,0)
                        bv.maxTorque = Vector3.new(400000,400000,400000)
                        bv.Parent = torso

                        --wait for the character to reach the top of their jump
                        while torso.Velocity.y > 0.1 do
                                wait()
                        end

                        bv:Remove()
                        
--[[
                        local pos = torso.Position

                        for i, v in pairs(Workspace:GetChildren()) do
                                local h = v:FindFirstChild("Humanoid")
                                if h and h ~= Tool.Character.Humanoid then
                                        local t = v:FindFirstChild("Torso")
                                        if t then
                                                if (t.Position - pos).magnitude <= 15 then
                                                        h.Sit = true
                                                        h.Parent.Torso.Velocity = (CFrame.new(script.Parent.Handle.Position, h.Parent.Torso.Position).lookVector * 200) + Vector3.new(0, 100, 0)
                                                        h.Parent.Torso.RotVelocity = Vector3.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100))
                                                end
                                        end
                                end
                        end]]


                        --now, switch to the critdown anim / sound, activate the damage, 
                        --and wait for the player to hit something on their way down.
                        --also, speed up their descent
                        EnableDamage(40)
                        Tool.AnimationProvider:getAnimation('critup'):Stop(0)
                        Tool.AnimationProvider:getAnimation('critdown'):Play(0, 1, 10)
                        Tool.SoundProvider:getSound('down'):Play()
                        torso.Velocity = torso.Velocity - Vector3.new(0, 10, 0)

                        SetBladeEffectEnabled(true) --show some particles on the way down
                        
                        local rightLeg = Tool.Character:FindFirstChild('Right Leg')
                        local leftLeg = Tool.Character:FindFirstChild('Left Leg')
                        WaitForAny{rightLeg.Touched, leftLeg.Touched}

                        SetBladeEffectEnabled(false) --get rid of the particles, we've leanded

                        --play the hit gound sound
                        Tool.SoundProvider:getSound('hitground'):Play()

                        --generate a splash effect where the collision occurred
                        local handle = Tool.Tool:FindFirstChild('Handle')
                        if handle then
                                --CreateSplashEffect((handle.CFrame*CFrame.new(2.5, 0, 0)).p)
                                allThatIce((handle.CFrame*CFrame.new(2.5,0,0)).p, true)
                        end

                        --now, we touched down, so halt the player for a cooldown, and
                        --wait a bit for the cooldown to expire
                        Tool.Humanoid.WalkSpeed = 0
                        wait(0.175)

                        --unfreeze them and stop the anim, also, disable the damage
                        Tool.Humanoid.WalkSpeed = 16
                        Tool.AnimationProvider:getAnimation('critdown'):Stop()
                        DisableDamage()
                else
                        --no torso? Something is wrong, stop the anim
                        Tool.AnimationProvider:getAnimation('critup'):Stop(0)
                end
                --
                Tool.DebounceProvider:set('doubleclick', false)
        end
end)

--print("Done Running swordscript <"..mDebugId..">")
]===]
s1.Parent = t1
x6 = Instance.new("Animation", t1)
x6.Name = "ANIM_equip"
x6.AnimationId = "http://www.roblox.com/asset/?id=66702743"
x7 = Instance.new("Animation", t1)
x7.Name = "ANIM_slash"
x7.AnimationId = "http://www.roblox.com/asset/?id=66702758"
x8 = Instance.new("Animation", t1)
x8.Name = "ANIM_critup"
x8.AnimationId = "http://www.roblox.com/asset/?id=66703957"
x9 = Instance.new("Animation", t1)
x9.Name = "ANIM_critdown"
x9.AnimationId = "http://www.roblox.com/asset/?id=66703954"
s3 = script:clone()
s3.Name = "SpinScr"
s3.Disabled = true
so3 = Instance.new("StringValue", s3)
so3.Name = "forCustomRunL"
so3.Value = [===[
on = 0
Tool = script.Parent
torso = nil
human = nil

bv = Instance.new("BodyAngularVelocity")
bv.P = 1250
bv.angularvelocity = Vector3.new(0,26,0)
bv.maxTorque = Vector3.new(0,400000,0)

function Crouch(ison)
        if torso == nil then
        torso = Tool.Parent:FindFirstChild("Torso")
        end
        if human == nil then
                human = Tool.Parent:FindFirstChild("Humanoid")
        end

        if ison == 0 then
                while torso:FindFirstChild("BodyAngularVelocity") do
                        torso:FindFirstChild("BodyAngularVelocity"):Remove()
                end
                human.WalkSpeed = 16
        elseif ison == 1 then
                newf = bv:Clone()
                newf.Parent = torso
                newf.archivable = false
                human.WalkSpeed = 32
        end
end

function Key(key)
        if key then
                key = string.lower(key)
                if (key=="x") then --SPIN TIME!
                        print("X key pressed")
                        if on == 1 then
                                on = 0
                        elseif on == 0 then
                                on = 1
                        end
                Crouch(on)
                end
        end
end

function Equip(mouse)
mouse.KeyDown:connect(Key)
end
function Unequip()
print("Unequipping!")
                while torso:FindFirstChild("BodyAngularVelocity") do
                        torso:FindFirstChild("BodyAngularVelocity"):Remove()
                end
                human.WalkSpeed = 16
end
script.Parent.Equipped:connect(Equip)
script.Parent.Unequipped:connect(Unequip)
]===]
s3.Parent = t1
p2 = Instance.new("Part", t1)
p2.BrickColor = BrickColor.new("Bright yellow")
p2.Material = Enum.Material.SmoothPlastic
p2.Transparency = 1
p2.CFrame = CFrame.new(-6.23183012, 1.50372219, 16.9002419, 0.999998808, -0.00152067281, 8.84913679e-005, 0.0015206791, 0.999998808, -7.21006654e-005, -8.83816247e-005, 7.22351324e-005, 1)
p2.CanCollide = false
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(1, 0.400000006, 2.19999957)
p2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p3 = Instance.new("Part", t1)
p3.BrickColor = BrickColor.new("Bright blue")
p3.Material = Enum.Material.SmoothPlastic
p3.CFrame = CFrame.new(-5.40855694, 1.50565481, 16.9838943, -0.00161137665, 0.765986323, -0.642854273, 0.999998331, 0.00127055019, -0.000992681948, 5.64024667e-005, -0.642855346, -0.765987754)
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.400000036, 0.400000036, 0.400000036)
p3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b1 = Instance.new("SpecialMesh", p3)
b1.MeshType = Enum.MeshType.Sphere
b1.Name = "Mesh"
p4 = Instance.new("Part", t1)
p4.BrickColor = BrickColor.new("Bright blue")
p4.Material = Enum.Material.SmoothPlastic
p4.CFrame = CFrame.new(-6.23203468, 1.50414407, 14.4999695, 0.99999845, -8.82664681e-005, -0.00152060855, 0.0015206103, 2.32168641e-005, 0.99999845, -8.82301974e-005, -1, 2.33557876e-005)
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.600000024, 1, 0.600000024)
p4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b2 = Instance.new("CylinderMesh", p4)
b2.Name = "Mesh"
p5 = Instance.new("Part", t1)
p5.BrickColor = BrickColor.new("Bright blue")
p5.Material = Enum.Material.SmoothPlastic
p5.CFrame = CFrame.new(-6.23210096, 1.50411129, 13.799778, -0.00154823414, -8.85253685e-005, -0.999998391, 0.999998391, 0.000164738827, -0.00154824834, 0.000164880432, -1, 8.82693639e-005)
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.600000024, 0.400000036, 0.600000024)
p5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b3 = Instance.new("SpecialMesh", p5)
b3.MeshId = "http://www.roblox.com/asset/?id=1033714"
b3.TextureId = ""
b3.MeshType = Enum.MeshType.FileMesh
b3.Name = "Mesh"
b3.VertexColor = Vector3.new(0, 0.899999976, 0.699999988)
b3.Scale = Vector3.new(0.200000003, 0.800000012, 0.200000003)
p6 = Instance.new("Part", t1)
p6.BrickColor = BrickColor.new("Bright blue")
p6.Material = Enum.Material.SmoothPlastic
p6.CFrame = CFrame.new(-6.2317915, 1.50421429, 15.399888, -0.999999344, -0.000124109269, 0.000748514372, -0.000748534978, 0.000164867452, -0.999999344, 0.000123984981, -1, -0.00016496508)
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.400000036, 1, 0.400000036)
p6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b4 = Instance.new("CylinderMesh", p6)
b4.Name = "Mesh"
p7 = Instance.new("Part", t1)
p7.BrickColor = BrickColor.new("Bright yellow")
p7.Material = Enum.Material.SmoothPlastic
p7.CFrame = CFrame.new(-6.23173571, 1.50380504, 16.4001312, -0.999999344, -0.000124109269, 0.000748514372, -0.000748534978, 0.000164867452, -0.999999344, 0.000123984981, -1, -0.00016496508)
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.400000036, 1, 0.400000036)
p7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b5 = Instance.new("CylinderMesh", p7)
b5.Name = "Mesh"
p8 = Instance.new("Part", t1)
p8.BrickColor = BrickColor.new("Bright blue")
p8.Material = Enum.Material.SmoothPlastic
p8.CFrame = CFrame.new(-6.2317915, 1.50414503, 17.3000221, 0.00149294292, 8.84059336e-005, -0.99999851, -0.99999851, -0.000164591998, -0.00149295724, -0.000164728524, 1, 8.81592496e-005)
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.600000024, 0.400000036, 0.600000024)
p8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b6 = Instance.new("SpecialMesh", p8)
b6.MeshId = "http://www.roblox.com/asset/?id=1033714"
b6.TextureId = ""
b6.MeshType = Enum.MeshType.FileMesh
b6.Name = "Mesh"
b6.VertexColor = Vector3.new(0, 0.899999976, 0.699999988)
b6.Scale = Vector3.new(0.300000012, 0.800000012, 0.300000012)
p9 = Instance.new("Part", t1)
p9.BrickColor = BrickColor.new("Bright blue")
p9.Material = Enum.Material.SmoothPlastic
p9.CFrame = CFrame.new(-6.23176193, 1.50456023, 17.599823, 0.99999845, -0.00152055745, 8.8417466e-005, 0.00152055919, 0.99999845, -2.32166603e-005, -8.83811881e-005, 2.3355773e-005, 1)
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.800000012, 0.400000006, 0.800000012)
p9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b7 = Instance.new("CylinderMesh", p9)
b7.Name = "Mesh"
p10 = Instance.new("Part", t1)
p10.BrickColor = BrickColor.new("Bright yellow")
p10.Material = Enum.Material.SmoothPlastic
p10.Transparency = 0.5
p10.CFrame = CFrame.new(-6.23095226, 1.60426509, 17.600008, -0.99999845, -0.00152060017, -8.82340682e-005, -0.00152060192, 0.99999845, 2.32094499e-005, 8.81978267e-005, 2.33481987e-005, -1)
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.600000024, 0.400000006, 0.600000024)
p10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b8 = Instance.new("SpecialMesh", p10)
b8.MeshType = Enum.MeshType.Head
b8.Name = "Mesh"
p11 = Instance.new("Part", t1)
p11.BrickColor = BrickColor.new("Bright yellow")
p11.Material = Enum.Material.SmoothPlastic
p11.Transparency = 0.5
p11.CFrame = CFrame.new(-6.23160601, 1.40460825, 17.6000538, -0.99999845, -0.00152063207, -8.84771362e-005, -0.00152064662, 0.99999845, 0.000164470694, 8.8226072e-005, 0.000164609781, -1)
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.600000024, 0.400000006, 0.600000024)
p11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b9 = Instance.new("SpecialMesh", p11)
b9.MeshType = Enum.MeshType.Head
b9.Name = "Mesh"
p12 = Instance.new("Part", t1)
p12.BrickColor = BrickColor.new("Bright yellow")
p12.Material = Enum.Material.SmoothPlastic
p12.Transparency = 0.30000001192093
p12.CFrame = CFrame.new(-6.23206663, 1.70426691, 17.5995903, -0.99999845, -0.00152064476, -8.82664681e-005, -0.00152064662, 0.99999845, 2.32168641e-005, 8.82301974e-005, 2.33557657e-005, -1)
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.400000036, 0.200000003, 0.400000006)
p12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b10 = Instance.new("SpecialMesh", p12)
b10.MeshType = Enum.MeshType.Head
b10.Name = "Mesh"
p13 = Instance.new("Part", t1)
p13.BrickColor = BrickColor.new("Bright yellow")
p13.Material = Enum.Material.SmoothPlastic
p13.Transparency = 0.30000001192093
p13.CFrame = CFrame.new(-6.23143768, 1.30387723, 17.5995731, -0.99999845, -0.00152064476, -8.82664681e-005, -0.00152064662, 0.99999845, 2.32168641e-005, 8.82301974e-005, 2.33557657e-005, -1)
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.400000036, 0.200000003, 0.400000006)
p13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b11 = Instance.new("SpecialMesh", p13)
b11.MeshType = Enum.MeshType.Head
b11.Name = "Mesh"
p14 = Instance.new("Part", t1)
p14.BrickColor = BrickColor.new("Bright blue")
p14.Material = Enum.Material.SmoothPlastic
p14.CFrame = CFrame.new(-5.95518589, 1.50466502, 17.4358101, -0.642854452, -0.765986323, -0.00152061647, -0.000851499499, -0.00127054972, 0.99999845, -0.765987754, 0.642855346, 0.000164546509)
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.400000036, 0.600000024, 0.400000036)
p14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b12 = Instance.new("SpecialMesh", p14)
b12.MeshId = "http://www.roblox.com/asset/?id=1033714"
b12.TextureId = ""
b12.MeshType = Enum.MeshType.FileMesh
b12.Name = "Mesh"
b12.VertexColor = Vector3.new(0, 0.899999976, 0.699999988)
b12.Scale = Vector3.new(0.200000003, 0.800000012, 0.200000003)
p15 = Instance.new("Part", t1)
p15.BrickColor = BrickColor.new("Bright blue")
p15.Material = Enum.Material.SmoothPlastic
p15.CFrame = CFrame.new(-5.57215166, 1.50538123, 17.1144238, -0.642853975, 0.765986204, 0.00174256973, -0.00119676092, 0.00127054949, -0.999997914, -0.765987694, -0.642855465, 9.99198819e-005)
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.400000036, 0.400000036, 0.400000036)
p15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b13 = Instance.new("CylinderMesh", p15)
b13.Name = "Mesh"
p16 = Instance.new("Part", t1)
p16.BrickColor = BrickColor.new("Bright blue")
p16.Material = Enum.Material.SmoothPlastic
p16.CFrame = CFrame.new(-7.17970896, 1.50297976, 17.1038074, 0.00152075139, -0.984821439, 0.173560783, -0.99999845, -0.00146909745, 0.000426075014, -0.000164634897, -0.173561305, -0.984823108)
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.200000003, 0.400000036, 1.60000026)
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b14 = Instance.new("BlockMesh", p16)
b14.Name = "Mesh"
p17 = Instance.new("Part", t1)
p17.BrickColor = BrickColor.new("Bright blue")
p17.Material = Enum.Material.SmoothPlastic
p17.CFrame = CFrame.new(-6.83175993, 1.50354934, 17.5996361, -0.00152074918, -8.8644163e-005, -0.99999845, 0.99999845, 0.000164470432, -0.00152076373, 0.000164609781, -1, 8.83930916e-005)
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.200000003, 0.600000024, 0.600000143)
p17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b15 = Instance.new("BlockMesh", p17)
b15.Name = "Mesh"
p18 = Instance.new("Part", t1)
p18.BrickColor = BrickColor.new("Bright yellow")
p18.Material = Enum.Material.SmoothPlastic
p18.Reflectance = 0.10999999940395
p18.Transparency = 0.5
p18.CFrame = CFrame.new(-6.23137188, 1.50391638, 22.3999977, -0.999998808, -0.00152063277, -8.78110222e-005, -0.0015206472, 0.999998808, 0.000164444325, 8.75608603e-005, 0.00016457765, -1)
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(1.20000017, 0.200000003, 9.00000095)
p18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("BlockMesh", p18)
b16.Name = "Mesh"
s4 = script:clone()
s4.Name = "Script"
s4.Disabled = false
so4 = Instance.new("StringValue", s4)
so4.Name = "forCustomRun"
so4.Value = [===[
script.Parent.Reflectance = 0.1
while true do
        for i = 1, 30 do
                script.Parent.Reflectance = script.Parent.Reflectance + 0.01
                wait(0.03)
        end
        for i = 1, 30 do
                script.Parent.Reflectance = script.Parent.Reflectance - 0.01
                wait(0.03)
        end
wait()
end

]===]
s4.Parent = p18
s5 = script:clone()
s5.Name = "Script"
s5.Disabled = false
so5 = Instance.new("StringValue", s5)
so5.Name = "forCustomRun"
so5.Value = [===[
local b = Instance.new("Part")
b.BrickColor = BrickColor.new(24)
b.TopSurface = ("Smooth")
b.BottomSurface = ("Smooth")
b.formFactor = ("Custom")
b.CanCollide = false
b.Transparency = 0.3
b.Reflectance = script.Parent.Reflectance
b.Name = ("Spray")

function onTouched(hit)
                local h = hit.Parent:findFirstChild("Humanoid")
                local p = script.Parent.Parent.Parent:findFirstChild("Humanoid")

                                if (h ~= nil) and (p ~= nil) and hit.Parent ~= script.Parent.Parent.Parent then
                                                damage = math.random (40,70)
                                                h.Health = h.Health - damage
                                                wait(0.5)
                                end

                                if hit.Name ~= ("Spray") and hit.Name ~= "Flash" and p ~= nil then
                                                for i = 1, 3 do
                                                                b2 = b:clone()
                                                                bx = math.random (1, 10)
                                                                by = math.random (1, 10)
                                                                bz = math.random (1, 10)
                                                                b2.Size = Vector3.new(bx/10,by/10,bz/10)
                                                                v1 = math.random (-50, 50)
                                                                v2 = math.random (-50, 50)
                                                                v3 = math.random (-50, 50)
                                                                b2.Velocity = Vector3.new(v1, v2, v3)
                                                                b2.CFrame = b2.CFrame * CFrame.Angles(math.random(1, 314)/100, math.random(1, 314)/100, math.random(1, 314)/100)
                                                                b2.Position = hit.Position
                                                                b2.Parent = game.Workspace
                                                end
                                end
end 

script.Parent.Touched:connect(onTouched)

]===]
s5.Parent = p18
p19 = Instance.new("Part", t1)
p19.BrickColor = BrickColor.new("Bright blue")
p19.Material = Enum.Material.SmoothPlastic
p19.Name = "Part1"
p19.CFrame = CFrame.new(-6.23199272, 1.50425482, 15.0003376, -0.00152060797, 0.999998212, -8.8266519e-005, 0.999998212, 0.00152061018, 2.32166276e-005, 2.33559895e-005, -8.82301247e-005, -1)
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.600000024, 0.600000024, 0.600000024)
p19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b17 = Instance.new("SpecialMesh", p19)
b17.MeshType = Enum.MeshType.Sphere
b17.Name = "Mesh"
p20 = Instance.new("Part", t1)
p20.BrickColor = BrickColor.new("Bright blue")
p20.Material = Enum.Material.SmoothPlastic
p20.Name = "Part2"
p20.CFrame = CFrame.new(-6.23184156, 1.50410485, 16.8002663, 0.999998212, -8.85249683e-005, -0.00152054406, 0.00152055908, 0.000164440513, 0.999998212, -8.82738386e-005, -1, 0.000164580226)
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(0.600000024, 0.600000024, 0.600000024)
p20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b18 = Instance.new("CylinderMesh", p20)
b18.Name = "Mesh"
p21 = Instance.new("WedgePart", t1)
p21.BrickColor = BrickColor.new("Bright blue")
p21.Material = Enum.Material.SmoothPlastic
p21.Name = "Part"
p21.CFrame = CFrame.new(-7.33178425, 1.50305212, 17.3993626, -0.00153289922, -0.999998569, 8.8467219e-005, 0.999998629, -0.00153291353, -0.000165334379, 0.00016546977, 8.81987871e-005, 0.999999762)
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.200000003, 0.400000155, 1.00000012)
p21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p22 = Instance.new("WedgePart", t1)
p22.BrickColor = BrickColor.new("Bright blue")
p22.Material = Enum.Material.SmoothPlastic
p22.Name = "Part"
p22.CFrame = CFrame.new(-7.17155743, 1.50294125, 19.4989643, 0.00153308816, -0.999998808, -8.75424303e-005, -0.999998808, -0.00153309014, 2.30896549e-005, -2.32238071e-005, 8.75069309e-005, -1)
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.200000003, 0.680000603, 3.20000052)
p22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p23 = Instance.new("WedgePart", t1)
p23.BrickColor = BrickColor.new("Bright yellow")
p23.Material = Enum.Material.SmoothPlastic
p23.Reflectance = 0.10999999940395
p23.Transparency = 0.5
p23.Name = "Part"
p23.CFrame = CFrame.new(-6.33086443, 1.50281048, 28.2001743, -0.00152057305, 8.84807814e-005, 0.999998748, 0.999998808, -0.000164443292, 0.00152058736, 0.000164577636, 0.99999994, -8.8230634e-005)
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(0.200000003, 2.60000014, 0.99999994)
p23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
s6 = script:clone()
s6.Name = "Script"
s6.Disabled = false
so6 = Instance.new("StringValue", s6)
so6.Name = "forCustomRun"
so6.Value = [===[
script.Parent.Reflectance = 0.1
while true do
        for i = 1, 30 do
                script.Parent.Reflectance = script.Parent.Reflectance + 0.01
                wait(0.03)
        end
        for i = 1, 30 do
                script.Parent.Reflectance = script.Parent.Reflectance - 0.01
                wait(0.03)
        end
wait()
end

]===]
s6.Parent = p23
s7 = script:clone()
s7.Name = "Script"
s7.Disabled = false
so7 = Instance.new("StringValue", s7)
so7.Name = "forCustomRun"
so7.Value = [===[
local b = Instance.new("Part")
b.BrickColor = BrickColor.new(24)
b.TopSurface = ("Smooth")
b.BottomSurface = ("Smooth")
b.formFactor = ("Custom")
b.CanCollide = false
b.Transparency = 0.3
b.Reflectance = script.Parent.Reflectance
b.Name = ("Spray")

function onTouched(hit)
                local h = hit.Parent:findFirstChild("Humanoid")
                local p = script.Parent.Parent.Parent:findFirstChild("Humanoid")

                                if (h ~= nil) and (p ~= nil) and hit.Parent ~= script.Parent.Parent.Parent then
                                                damage = math.random (40,70)
                                                h.Health = h.Health - damage
                                                wait(0.5)
                                end

                                if hit.Name ~= ("Spray") and hit.Name ~= "Flash" and p ~= nil then
                                                for i = 1, 3 do
                                                                b2 = b:clone()
                                                                bx = math.random (1, 10)
                                                                by = math.random (1, 10)
                                                                bz = math.random (1, 10)
                                                                b2.Size = Vector3.new(bx/10,by/10,bz/10)
                                                                v1 = math.random (-50, 50)
                                                                v2 = math.random (-50, 50)
                                                                v3 = math.random (-50, 50)
                                                                b2.Velocity = Vector3.new(v1, v2, v3)
                                                                b2.CFrame = b2.CFrame * CFrame.Angles(math.random(1, 314)/100, math.random(1, 314)/100, math.random(1, 314)/100)
                                                                b2.Position = hit.Position
                                                                b2.Parent = game.Workspace
                                                end
                                end
end 

script.Parent.Touched:connect(onTouched)

]===]
s7.Parent = p23
p24 = Instance.new("WedgePart", t1)
p24.BrickColor = BrickColor.new("Bright blue")
p24.Material = Enum.Material.SmoothPlastic
p24.Name = "Part"
p24.CFrame = CFrame.new(-5.38667727, 1.50544417, 18.6995544, -0.00152058655, 0.999998093, -8.89646399e-005, 0.999996662, 0.00152060424, 0.000164119134, 0.000164209516, -8.85208938e-005, -0.999997854)
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(0.200000003, 0.490000308, 1.60000014)
p24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p25 = Instance.new("WedgePart", t1)
p25.BrickColor = BrickColor.new("Bright blue")
p25.Material = Enum.Material.SmoothPlastic
p25.Name = "Part"
p25.CFrame = CFrame.new(-5.43177652, 1.50557411, 17.4994144, 0.00152074045, 0.999998808, 8.83262546e-005, -0.999998808, 0.00152075454, -0.000162115422, -0.000162249547, -8.80796142e-005, 1)
p25.FormFactor = Enum.FormFactor.Custom
p25.Size = Vector3.new(0.200000003, 0.600000143, 0.800000012)
p25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p26 = Instance.new("WedgePart", t1)
p26.BrickColor = BrickColor.new("Bright yellow")
p26.Material = Enum.Material.SmoothPlastic
p26.Reflectance = 0.10999999940395
p26.Transparency = 0.5
p26.Name = "Part"
p26.CFrame = CFrame.new(-5.73093843, 1.50387084, 27.3003426, 0.00152060494, 8.85682093e-005, -0.999998689, -0.999998569, -0.000164443147, -0.00152061949, -0.000164577621, 0.999999881, 8.83180473e-005)
p26.FormFactor = Enum.FormFactor.Custom
p26.Size = Vector3.new(0.200000003, 0.800000012, 0.200000003)
p26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
s8 = script:clone()
s8.Name = "Script"
s8.Disabled = false
so8 = Instance.new("StringValue", s8)
so8.Name = "forCustomRun"
so8.Value = [===[
script.Parent.Reflectance = 0.1
while true do
        for i = 1, 30 do
                script.Parent.Reflectance = script.Parent.Reflectance + 0.01
                wait(0.03)
        end
        for i = 1, 30 do
                script.Parent.Reflectance = script.Parent.Reflectance - 0.01
                wait(0.03)
        end
wait()
end

]===]
s8.Parent = p26
s9 = script:clone()
s9.Name = "Script"
s9.Disabled = false
so9 = Instance.new("StringValue", s9)
so9.Name = "forCustomRun"
so9.Value = [===[
local b = Instance.new("Part")
b.BrickColor = BrickColor.new(24)
b.TopSurface = ("Smooth")
b.BottomSurface = ("Smooth")
b.formFactor = ("Custom")
b.CanCollide = false
b.Transparency = 0.3
b.Reflectance = script.Parent.Reflectance
b.Name = ("Spray")

function onTouched(hit)
                local h = hit.Parent:findFirstChild("Humanoid")
                local p = script.Parent.Parent.Parent:findFirstChild("Humanoid")

                                if (h ~= nil) and (p ~= nil) and hit.Parent ~= script.Parent.Parent.Parent then
                                                damage = math.random (40,70)
                                                h.Health = h.Health - damage
                                                wait(0.5)
                                end

                                if hit.Name ~= ("Spray") and hit.Name ~= "Flash" and p ~= nil then
                                                for i = 1, 3 do
                                                                b2 = b:clone()
                                                                bx = math.random (1, 10)
                                                                by = math.random (1, 10)
                                                                bz = math.random (1, 10)
                                                                b2.Size = Vector3.new(bx/10,by/10,bz/10)
                                                                v1 = math.random (-50, 50)
                                                                v2 = math.random (-50, 50)
                                                                v3 = math.random (-50, 50)
                                                                b2.Velocity = Vector3.new(v1, v2, v3)
                                                                b2.CFrame = b2.CFrame * CFrame.Angles(math.random(1, 314)/100, math.random(1, 314)/100, math.random(1, 314)/100)
                                                                b2.Position = hit.Position
                                                                b2.Parent = game.Workspace
                                                end
                                end
end 

script.Parent.Touched:connect(onTouched)

]===]
s9.Parent = p26
p27 = Instance.new("WedgePart", t1)
p27.BrickColor = BrickColor.new("Bright blue")
p27.Material = Enum.Material.SmoothPlastic
p27.Name = "Part"
p27.CFrame = CFrame.new(-6.13166904, 1.49980831, 18.5999336, -0.00149405224, 0.999997795, -8.85720365e-005, 0.999996364, 0.00149405724, 2.32387047e-005, 2.33310202e-005, -8.83422545e-005, -0.999997854)
p27.FormFactor = Enum.FormFactor.Custom
p27.Size = Vector3.new(0.25000003, 0.200000003, 1.80000019)
p27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p28 = Instance.new("WedgePart", t1)
p28.BrickColor = BrickColor.new("Bright blue")
p28.Material = Enum.Material.SmoothPlastic
p28.Name = "Part"
p28.CFrame = CFrame.new(-6.3316617, 1.50426912, 18.5995083, 0.0014939697, -0.999995768, -8.81660526e-005, -0.999990523, -0.00149398285, 2.3187009e-005, -2.31595222e-005, 8.74187681e-005, -0.999992132)
p28.FormFactor = Enum.FormFactor.Custom
p28.Size = Vector3.new(0.240000024, 0.200000003, 1.80000019)
p28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
p29 = Instance.new("WedgePart", t1)
p29.BrickColor = BrickColor.new("Bright blue")
p29.Material = Enum.Material.SmoothPlastic
p29.Name = "Part"
p29.CFrame = CFrame.new(-5.83173037, 1.5149262, 17.9994049, 0.00151063211, -0.999998093, -8.31719371e-005, -0.999996722, -0.001510637, 2.2027205e-005, -2.21080845e-005, 8.29444834e-005, -0.999997854)
p29.FormFactor = Enum.FormFactor.Custom
p29.Size = Vector3.new(0.220000014, 0.400000155, 1.20000005)
p29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
s10 = script:clone()
s10.Name = "Welding"
s10.Disabled = false
so10 = Instance.new("StringValue", s10)
so10.Name = "forCustomRun"
so10.Value = [===[
function Weld(x,y)
        local W = Instance.new("Weld")
        W.Part0 = x
        W.Part1 = y
        local CJ = CFrame.new(x.Position)
        local C0 = x.CFrame:inverse()*CJ
        local C1 = y.CFrame:inverse()*CJ
        W.C0 = C0
        W.C1 = C1
        W.Parent = x
end

function Get(A)
        if A.className == "Part" then
                Weld(script.Parent.Handle, A)
                A.Anchored = false
        else
                local C = A:GetChildren()
                for i=1, #C do
                Get(C[i])
                end
        end
end

function Finale()
        Get(script.Parent)
end

script.Parent.Equipped:connect(Finale)
script.Parent.Unequipped:connect(Finale)
Finale()
]===]
s10.Parent = t1
s11 = script:clone()
s11.Name = "Welding"
s11.Disabled = false
so11 = Instance.new("StringValue", s11)
so11.Name = "forCustomRun"
so11.Value = [===[
function Weld(x,y)
        local W = Instance.new("Weld")
        W.Part0 = x
        W.Part1 = y
        local CJ = CFrame.new(x.Position)
        local C0 = x.CFrame:inverse()*CJ
        local C1 = y.CFrame:inverse()*CJ
        W.C0 = C0
        W.C1 = C1
        W.Parent = x
end

function Get(A)
        if A.className == "Part" then
                Weld(script.Parent.Handle, A)
                A.Anchored = false
        else
                local C = A:GetChildren()
                for i=1, #C do
                Get(C[i])
                end
        end
end

function Finale()
        Get(script.Parent)
end

script.Parent.Equipped:connect(Finale)
script.Parent.Unequipped:connect(Finale)
Finale()
]===]
s11.Parent = t1
s12 = script:clone()
s12.Name = "BackupWeld"
s12.Disabled = false
so12 = Instance.new("StringValue", s12)
so12.Name = "forCustomRunL"
so12.Value = [===[
function Weld(x,y)
        local W = Instance.new("Weld")
        W.Part0 = x
        W.Part1 = y
        local CJ = CFrame.new(x.Position)
        local C0 = x.CFrame:inverse()*CJ
        local C1 = y.CFrame:inverse()*CJ
        W.C0 = C0
        W.C1 = C1
        W.Parent = x
end

function Get(A)
        if A.className == "Part" then
                Weld(script.Parent.Handle, A)
                A.Anchored = false
        else
                local C = A:GetChildren()
                for i=1, #C do
                Get(C[i])
                end
        end
end

function Finale()
        Get(script.Parent)
end

script.Parent.Equipped:connect(Finale)
script.Parent.Unequipped:connect(Finale)
Finale()
]===]
s12.Parent = t1
s13 = script:clone()
s13.Name = "BackupWeld"
s13.Disabled = false
so13 = Instance.new("StringValue", s13)
so13.Name = "forCustomRunL"
so13.Value = [===[
function Weld(x,y)
        local W = Instance.new("Weld")
        W.Part0 = x
        W.Part1 = y
        local CJ = CFrame.new(x.Position)
        local C0 = x.CFrame:inverse()*CJ
        local C1 = y.CFrame:inverse()*CJ
        W.C0 = C0
        W.C1 = C1
        W.Parent = x
end

function Get(A)
        if A.className == "Part" then
                Weld(script.Parent.Handle, A)
                A.Anchored = false
        else
                local C = A:GetChildren()
                for i=1, #C do
                Get(C[i])
                end
        end
end

function Finale()
        Get(script.Parent)
end

script.Parent.Equipped:connect(Finale)
script.Parent.Unequipped:connect(Finale)
Finale()
]===]
s13.Parent = t1
s14 = script:clone()
s14.Name = "BottomSpinner"
s14.Disabled = false
so14 = Instance.new("StringValue", s14)
so14.Name = "forCustomRunL"
so14.Value = [===[
--[[Super Util]]--
function WaitForChild(parent,...)
        local debugPrint = false
        for _, i in ipairs({...}) do
                if type(i)=='boolean' then
                        debugPrint = i
                else
                        while not parent:FindFirstChild(i) do  
                                wait(1/30) 
                                if debugPrint then
                                        print(script.Name..':'..parent.Name..' Waiting for '.. i)
                                end
                        end
                        parent=parent[i]
                end
        end
        return parent
end

function ForEach(parent,func)
        if type(parent)=='table' then
                for _,i in pairs(parent) do
                        func(i)
                end
        else
                for _,i in pairs(parent:GetChildren()) do
                        func(i)
                end
        end
end

function MakeValue(class,name,value,parent)
        local temp = Instance.new(class)
        temp.Name = name
        temp.Value = value
        temp.Parent = parent
        return temp
end        

function TweenProperty(obj, propName, inita, enda, length)
        --WARNING:possible floating point errors here
        local lastAlpha = 0
        local breakLoop = false
        --[[
        if obj.Changed then obj.Changed:connect(function(prop)
                        if prop ==propName and math.abs(lastAlpha-obj[propName])>.001 then
                                breakLoop = true
                        end
                end)
        end
        --]]
        local startTime = tick()
        local diff = enda-inita
        while tick()-startTime<length and not breakLoop do
                lastAlpha = (((tick()-startTime)/length)*diff)+inita
                obj[propName] = lastAlpha
                wait(1/30)
        end
        if not breakLoop then
                obj[propName] = enda        
        end
end


--[[Constants]]--
local MAX_SIZE = Vector3.new(9.8,.2,9.8)
local MIN_SIZE = Vector3.new(1,1,1)
--[[Workspace Variables]]--
local Tool = script.Parent
local MyHumanoid =nil
--[[Script Variables]]--
local IsEquipped = false
local IsFreeFalling = false
local SpinPart = Instance.new('Part')
SpinPart.Transparency = 1
SpinPart.Size = MAX_SIZE
SpinPart.CanCollide = false
SpinPart.FormFactor = 'Custom'
local SpinDecal = Instance.new('Decal')
SpinDecal.Texture = 'http://www.roblox.com/asset/?id=156255318'
SpinDecal.Parent = SpinPart
SpinDecal.Face = 'Top'
do
        local tspin = Instance.new('BodyAngularVelocity')
        tspin.angularvelocity = Vector3.new(0,1,0)
        tspin.maxTorque =Vector3.new(math.huge,math.huge,math.huge)
        tspin.Parent = SpinPart
end
local SpinPos = Instance.new('BodyPosition')
SpinPos.maxForce = Vector3.new(math.huge,math.huge,math.huge)
SpinPos.Parent = SpinPart

--[[Script Functions]]--
function OnFreeFalling(isfalling)
        IsFreeFalling = isfalling
end
--[[Running Logic]]--

function Equipped()
        IsEquipped = true
        local MyTorso = Tool.Parent:FindFirstChild('Torso')
        if Tool.Parent:FindFirstChild('Humanoid') then
                MyHumanoid = Tool.Parent.Humanoid
                if not FreeFallingConnection then
                        FreeFallingConnection = MyHumanoid.FreeFalling:connect(OnFreeFalling)
                end
        end
        if MyTorso then
                Spawn(function()
                        local startTime = tick()
                        SpinPart.CFrame = CFrame.new(MyTorso.CFrame.p+Vector3.new(0,-2.8+(math.sin(tick())/3),0))
                        SpinPart.Parent = MyTorso
                        local fadeIn = true
                        while IsEquipped do

                                SpinDecal.Transparency=((math.sin(tick()-startTime)/2))
                                if not IsFreeFalling then
                                        SpinPos.position = MyTorso.CFrame.p+Vector3.new(0,-2.8+(math.sin(tick())/3),0)
                                end
                                wait()
                        end
                        SpinPart.Parent = nil
                        
                end)
        end
end

function Unequipped()
        IsEquipped = false
end

Tool.Equipped:connect(Equipped)
Tool.Unequipped:connect(Unequipped)

]===]
s14.Parent = t1
w1 = Instance.new("Weld", p1)
w1.Part0 = p1
w1.C0 = CFrame.new(0, 0, 0, 1, -7.31859018e-012, 1.10276233e-011, -3.92930133e-012, 1, 7.27595761e-011, 1.11413101e-011, 6.54836185e-011, 1)
w1.Part1 = p1
w1.C1 = CFrame.new(0, 0, 0, 1, -7.31859018e-012, 1.10276233e-011, -3.92930133e-012, 1, 7.27595761e-011, 1.11413101e-011, 6.54836185e-011, 1)
w2 = Instance.new("Weld", p1)
w2.Part0 = p1
w2.C0 = CFrame.new(0, 0, 0, 0.999998748, 0.00152071728, -8.94034965e-005, -0.00152071076, 0.999998748, 7.25020436e-005, 8.95137709e-005, -7.23653939e-005, 1)
w2.Part1 = p2
w2.C1 = CFrame.new(-0.069024086, 0.0805917978, 1.09975433, 0.999998808, 0.0015206791, -8.83816247e-005, -0.00152067281, 0.999998808, 7.22351324e-005, 8.84913679e-005, -7.21006654e-005, 1)
w3 = Instance.new("Weld", p1)
w3.Part0 = p1
w3.C0 = CFrame.new(0, 0, 0, 0.999998748, 0.00152071728, -8.94034965e-005, -0.00152071076, 0.999998748, 7.25020436e-005, 8.95137709e-005, -7.23653939e-005, 1)
w3.Part1 = p3
w3.C1 = CFrame.new(0.0799700022, -1.33662128, -0.204773903, -0.00161137723, 0.999998569, 5.64018883e-005, 0.765986562, 0.001270551, -0.642855287, -0.642854393, -0.000992681831, -0.765987754)
w4 = Instance.new("Weld", p1)
w4.Part0 = p1
w4.C0 = CFrame.new(0, 0, 0, 0.999998748, 0.00152071728, -8.94034965e-005, -0.00152071076, 0.999998748, 7.25020436e-005, 8.95137709e-005, -7.23653939e-005, 1)
w4.Part1 = p4
w4.C1 = CFrame.new(-0.0690317154, -3.50002956, 0.0801719427, 0.999998689, 0.00152061065, -8.82303284e-005, -8.82663517e-005, 2.32174534e-005, -1, -0.00152060902, 0.999998689, 2.33552018e-005)
w5 = Instance.new("Weld", p1)
w5.Part0 = p1
w5.C0 = CFrame.new(0, 0, 0, 0.999998748, 0.00152071728, -8.94034965e-005, -0.00152071076, 0.999998748, 7.25020436e-005, 8.95137709e-005, -7.23653939e-005, 1)
w5.Part1 = p5
w5.C1 = CFrame.new(0.0808173418, -4.20021057, 0.0690255165, -0.00154823461, 0.999998629, 0.00016487985, -8.85252521e-005, 0.000164739453, -1, -0.999998629, -0.00154824869, 8.82694876e-005)
w6 = Instance.new("Weld", p1)
w6.Part0 = p1
w6.C0 = CFrame.new(0, 0, 0, 0.999998748, 0.00152071728, -8.94034965e-005, -0.00152071076, 0.999998748, 7.25020436e-005, 8.95137709e-005, -7.23653939e-005, 1)
w6.Part1 = p6
w6.C1 = CFrame.new(0.0693507195, -2.60009766, -0.0803960562, -0.999999583, -0.000748535211, 0.000123985112, -0.000124109167, 0.000164868077, -1, 0.000748514838, -0.999999583, -0.000164964498)
w7 = Instance.new("Weld", p1)
w7.Part0 = p1
w7.C0 = CFrame.new(0, 0, 0, 0.999998748, 0.00152071728, -8.94034965e-005, -0.00152071076, 0.999998748, 7.25020436e-005, 8.95137709e-005, -7.23653939e-005, 1)
w7.Part1 = p7
w7.C1 = CFrame.new(0.0692820549, -1.59985352, -0.080640316, -0.999999583, -0.000748535211, 0.000123985112, -0.000124109167, 0.000164868077, -1, 0.000748514838, -0.999999583, -0.000164964498)
w8 = Instance.new("Weld", p1)
w8.Part0 = p1
w8.C0 = CFrame.new(0, 0, 0, 0.999998748, 0.00152071728, -8.94034965e-005, -0.00152071076, 0.999998748, 7.25020436e-005, 8.95137709e-005, -7.23653939e-005, 1)
w8.Part1 = p8
w8.C1 = CFrame.new(-0.0802030563, 0.699966431, 0.0690302849, 0.0014929435, -0.999998748, -0.000164727957, 8.84058245e-005, -0.000164592624, 1, -0.999998748, -0.0014929577, 8.81593805e-005)
w9 = Instance.new("Weld", p1)
w9.Part0 = p1
w9.C0 = CFrame.new(0, 0, 0, 0.999998748, 0.00152071728, -8.94034965e-005, -0.00152071076, 0.999998748, 7.25020436e-005, 8.95137709e-005, -7.23653939e-005, 1)
w9.Part1 = p9
w9.C1 = CFrame.new(-0.0690317154, 0.0796838999, 0.400177002, 0.999998689, 0.00152055954, -8.83813191e-005, -0.00152055791, 0.999998689, 2.33551909e-005, 8.84173496e-005, -2.32172461e-005, 1)
w10 = Instance.new("Weld", p1)
w10.Part0 = p1
w10.C0 = CFrame.new(0, 0, 0, 0.999998748, 0.00152071728, -8.94034965e-005, -0.00152071076, 0.999998748, 7.25020436e-005, 8.95137709e-005, -7.23653939e-005, 1)
w10.Part1 = p10
w10.C1 = CFrame.new(0.0699930191, -0.0200197697, -0.399993896, -0.999998689, -0.00152060227, 8.81979577e-005, -0.00152060064, 0.999998689, 2.3347613e-005, -8.82339518e-005, 2.32100392e-005, -1)
w11 = Instance.new("Weld", p1)
w11.Part0 = p1
w11.C0 = CFrame.new(0, 0, 0, 0.999998748, 0.00152071728, -8.94034965e-005, -0.00152071076, 0.999998748, 7.25020436e-005, 8.95137709e-005, -7.23653939e-005, 1)
w11.Part1 = p11
w11.C1 = CFrame.new(0.0690355301, 0.179692507, -0.399917603, -0.999998689, -0.00152064697, 8.82262029e-005, -0.00152063265, 0.999998689, 0.000164609199, -8.84770197e-005, 0.000164471319, -1)
w12 = Instance.new("Weld", p1)
w12.Part0 = p1
w12.C0 = CFrame.new(0, 0, 0, 0.999998748, 0.00152071728, -8.94034965e-005, -0.00152071076, 0.999998748, 7.25020436e-005, 8.95137709e-005, -7.23653939e-005, 1)
w12.Part1 = p12
w12.C1 = CFrame.new(0.0690307617, -0.120023131, -0.400413513, -0.999998689, -0.00152064697, 8.82303284e-005, -0.00152064522, 0.999998689, 2.33551837e-005, -8.82663517e-005, 2.32174534e-005, -1)
w13 = Instance.new("Weld", p1)
w13.Part0 = p1
w13.C0 = CFrame.new(0, 0, 0, 0.999998748, 0.00152071728, -8.94034965e-005, -0.00152071076, 0.999998748, 7.25020436e-005, 8.95137709e-005, -7.23653939e-005, 1)
w13.Part1 = p13
w13.C1 = CFrame.new(0.0690507889, 0.280367136, -0.400421143, -0.999998689, -0.00152064697, 8.82303284e-005, -0.00152064522, 0.999998689, 2.33551837e-005, -8.82663517e-005, 2.32174534e-005, -1)
w14 = Instance.new("Weld", p1)
w14.Part0 = p1
w14.C0 = CFrame.new(0, 0, 0, 0.999998748, 0.00152071728, -8.94034965e-005, -0.00152071076, 0.999998748, 7.25020436e-005, 8.95137709e-005, -7.23653939e-005, 1)
w14.Part1 = p14
w14.C1 = CFrame.new(-0.21000576, 0.627393723, 0.0800831318, -0.642854571, -0.000851499266, -0.765987754, -0.765986562, -0.00127055054, 0.642855287, -0.00152061705, 0.999998689, 0.000164545927)
w15 = Instance.new("Weld", p1)
w15.Part0 = p1
w15.C0 = CFrame.new(0, 0, 0, 0.999998748, 0.00152071728, -8.94034965e-005, -0.00152071076, 0.999998748, 7.25020436e-005, 8.95137709e-005, -7.23653939e-005, 1)
w15.Part1 = p15
w15.C1 = CFrame.new(-0.209975243, -1.12739849, -0.0799297094, -0.642854095, -0.00119676068, -0.765987694, 0.765986443, 0.0012705503, -0.642855406, 0.00174257031, -0.999998212, 9.99204567e-005)
w16 = Instance.new("Weld", p1)
w16.Part0 = p1
w16.C0 = CFrame.new(0, 0, 0, 0.999998748, 0.00152071728, -8.94034965e-005, -0.00152071076, 0.999998748, 7.25020436e-005, 8.95137709e-005, -7.23653939e-005, 1)
w16.Part1 = p16
w16.C1 = CFrame.new(-0.0799609423, -1.02115607, -0.730033875, 0.00152075198, -0.999998689, -0.000164634315, -0.984821737, -0.0014690978, -0.173561305, 0.173560828, 0.000426075712, -0.984823108)
w17 = Instance.new("Weld", p1)
w17.Part0 = p1
w17.C0 = CFrame.new(0, 0, 0, 0.999998748, 0.00152071728, -8.94034965e-005, -0.00152071076, 0.999998748, 7.25020436e-005, 8.95137709e-005, -7.23653939e-005, 1)
w17.Part1 = p17
w17.C1 = CFrame.new(0.079838872, -0.400405884, -0.530967236, -0.00152074976, 0.999998689, 0.000164609213, -8.86440466e-005, 0.000164471057, -1, -0.999998689, -0.00152076408, 8.83932225e-005)
w18 = Instance.new("Weld", p1)
w18.Part0 = p1
w18.C0 = CFrame.new(0, 0, 0, 0.999998748, 0.00152071728, -8.94034965e-005, -0.00152071076, 0.999998748, 7.25020436e-005, 8.95137709e-005, -7.23653939e-005, 1)
w18.Part1 = p18
w18.C1 = CFrame.new(0.0690002441, 0.0795947313, 4.40000916, -0.999998808, -0.0015206472, 8.75608603e-005, -0.00152063277, 0.999998808, 0.00016457765, -8.78110222e-005, 0.000164444325, -1)
w19 = Instance.new("Weld", p1)
w19.Part0 = p1
w19.C0 = CFrame.new(0, 0, 0, 0.999998689, 0.00152071717, -8.94034965e-005, -0.00152071053, 0.999998689, 7.25020218e-005, 8.95137709e-005, -7.23654084e-005, 1)
w19.Part1 = p19
w19.C1 = CFrame.new(0.080049634, -0.069029808, -2.9996624, -0.00152060855, 0.99999851, 2.33554292e-005, 0.99999851, 0.00152061053, -8.82302629e-005, -8.82664099e-005, 2.32171988e-005, -1)
w20 = Instance.new("Weld", p1)
w20.Part0 = p1
w20.C0 = CFrame.new(0, 0, 0, 0.999998689, 0.00152071717, -8.94034965e-005, -0.00152071053, 0.999998689, 7.25020218e-005, 8.95137709e-005, -7.23654084e-005, 1)
w20.Part1 = p20
w20.C1 = CFrame.new(-0.0690221786, -1.19972229, 0.0803271532, 0.99999851, 0.00152055942, -8.82739769e-005, -8.85248592e-005, 0.000164441139, -1, -0.00152054476, 0.99999851, 0.000164579658)
w21 = Instance.new("Weld", p1)
w21.Part0 = p1
w21.C0 = CFrame.new(0, 0, 0, 1, -2.97859515e-011, 4.61568561e-011, -2.63895572e-011, 1, 2.91038305e-010, 4.6270543e-011, 2.83762347e-010, 1)
w21.Part1 = p1
w21.C1 = CFrame.new(0, 0, 0, 1, -2.97859515e-011, 4.61568561e-011, -2.63895572e-011, 1, 2.91038305e-010, 4.6270543e-011, 2.83762347e-010, 1)
w22 = Instance.new("Weld", p1)
w22.Part0 = p1
w22.C0 = CFrame.new(0, 0, 0, 0.999998808, 0.00152071728, -8.94035038e-005, -0.00152071088, 0.999998808, 7.250208e-005, 8.95137709e-005, -7.23653793e-005, 1)
w22.Part1 = p1
w22.C1 = CFrame.new(0, 0, 0, 0.999998808, 0.00152071728, -8.94035038e-005, -0.00152071088, 0.999998808, 7.250208e-005, 8.95137709e-005, -7.23653793e-005, 1)
w23 = Instance.new("Weld", p1)
w23.Part0 = p1
w23.C0 = CFrame.new(0, 0, 0, 0.999998748, 0.00152071728, -8.94034965e-005, -0.00152071076, 0.999998748, 7.25020436e-005, 8.95137709e-005, -7.23653939e-005, 1)
w23.Part1 = p1
w23.C1 = CFrame.new(0, 0, 0, 0.999998748, 0.00152071728, -8.94034965e-005, -0.00152071076, 0.999998748, 7.25020436e-005, 8.95137709e-005, -7.23653939e-005, 1)
w24 = Instance.new("Weld", p2)
w24.Part0 = p2
w24.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w24.Part1 = p25
w24.C1 = CFrame.new(0.000732421875, -0.800002813, -0.599243164, -1, 1.50995447e-007, -2.32810999e-006, 1.50995817e-007, 1, -1.50995447e-007, 2.32810999e-006, -1.50995817e-007, -1)
w25 = Instance.new("Weld", p2)
w25.Part0 = p2
w25.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w25.Part1 = p16
w25.C1 = CFrame.new(0.000732421875, -0.898162901, 0.364990234, -1, 1.6300811e-007, 5.49116663e-008, -1.50995845e-007, -0.98480773, 0.173648193, 8.23844744e-008, 0.173648193, 0.984807789)
w26 = Instance.new("Weld", p2)
w26.Part0 = p2
w26.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w26.Part1 = p13
w26.C1 = CFrame.new(2.28881836e-005, 0.199829102, 0.69934082, -4.37113918e-008, -1, -1.12976295e-011, 1, -4.37113954e-008, 0.000141224227, -0.000141224227, -5.08748599e-012, 1)
w27 = Instance.new("Weld", p2)
w27.Part0 = p2
w27.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w27.Part1 = p17
w27.C1 = CFrame.new(-0.000854492188, 0.69934082, -0.599994719, 1, -1.60811055e-007, -2.98023366e-008, 2.98023206e-008, -1.62920671e-007, 1, -1.60811055e-007, -1, -1.62920685e-007)
w28 = Instance.new("Weld", p2)
w28.Part0 = p2
w28.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w28.Part1 = p14
w28.C1 = CFrame.new(0.588073969, -0.132385254, -0.000610351563, -4.37139533e-008, -0.642787635, 0.766044438, -1.80833126e-012, -0.766044438, -0.642787635, 1, -2.80971424e-008, 3.34839569e-008)
w29 = Instance.new("Weld", p2)
w29.Part0 = p2
w29.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w29.Part1 = p21
w29.C1 = CFrame.new(-0.00109863281, -1.099998, -0.499022961, 0.999999821, -1.23103609e-005, -8.91073853e-007, -1.23103446e-005, -0.999999762, 2.98023224e-008, -8.91079253e-007, -1.49011896e-008, -0.999999762)
w30 = Instance.new("Weld", p2)
w30.Part0 = p2
w30.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w30.Part1 = p18
w30.C1 = CFrame.new(-2.28881836e-005, -0.00109863281, 5.49975586, -4.37113883e-008, -1, 6.69768156e-007, 1, -4.37113883e-008, 2.92764944e-014, 0, 6.69768156e-007, 1)
w31 = Instance.new("Weld", p2)
w31.Part0 = p2
w31.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w31.Part1 = p23
w31.C1 = CFrame.new(-0.00109860301, -11.2999249, 0.100032806, 1, 1.61157203e-008, 1.38339123e-014, -1.14003918e-014, -1.42108547e-014, -0.99999994, -1.61157274e-008, 0.99999994, 1.42108547e-014)
w32 = Instance.new("Weld", p2)
w32.Part0 = p2
w32.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w32.Part1 = p26
w32.C1 = CFrame.new(0.00109863281, -10.4001446, 0.499973059, -0.999999762, 1.61157274e-008, -8.9668712e-015, -4.80015689e-015, 8.7422741e-008, -0.999999881, -1.61157239e-008, -0.999999881, -8.74227695e-008)
w33 = Instance.new("Weld", p2)
w33.Part0 = p2
w33.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w33.Part1 = p15
w33.C1 = CFrame.new(0.588134289, -0.367614746, 0.000488251448, -0.000345305598, -0.642787695, 0.766044319, -4.91340302e-011, 0.766044319, 0.642787755, -0.99999994, 0.000221958166, -0.000264519418)
w34 = Instance.new("Weld", p2)
w34.Part0 = p2
w34.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w34.Part1 = p12
w34.C1 = CFrame.new(3.81469727e-006, -0.200561523, 0.69934082, -4.37113918e-008, -1, -1.12976295e-011, 1, -4.37113954e-008, 0.000141224227, -0.000141224227, -5.08748599e-012, 1)
w35 = Instance.new("Weld", p2)
w35.Part0 = p2
w35.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w35.Part1 = p2
w35.C1 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w36 = Instance.new("Weld", p2)
w36.Part0 = p2
w36.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w36.Part1 = p20
w36.C1 = CFrame.new(-3.81469727e-006, -0.0999755859, -0.000366210938, -4.37113883e-008, 1, 4.37113954e-008, 8.10027518e-015, -4.3711367e-008, 1, 1, 4.37113847e-008, 0)
w37 = Instance.new("Weld", p2)
w37.Part0 = p2
w37.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w37.Part1 = p3
w37.C1 = CFrame.new(-0.000610351563, -0.576843262, 0.593322992, 1, -9.07789654e-005, 0.000108185523, 4.09261958e-010, 0.766044438, 0.642787635, -0.000141226512, -0.642787635, 0.766044438)
w38 = Instance.new("Weld", p2)
w38.Part0 = p2
w38.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w38.Part1 = p19
w38.C1 = CFrame.new(-0.000488311052, -3.81469727e-006, -1.89990234, 1, -7.4505877e-009, 0.000141224227, 7.4505806e-009, 1, 6.1817218e-012, -0.000141224227, -5.08748599e-012, 1)
w39 = Instance.new("Weld", p2)
w39.Part0 = p2
w39.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w39.Part1 = p4
w39.C1 = CFrame.new(-3.81469727e-006, -2.40026855, -0.000366210938, 7.45058237e-009, 1, 3.65218966e-012, -0.000141224227, -5.08748599e-012, 1, 1, -7.45058593e-009, 0.000141224213)
w40 = Instance.new("Weld", p2)
w40.Part0 = p2
w40.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w40.Part1 = p5
w40.C1 = CFrame.new(0.000122070313, -3.10046387, 1.14440918e-005, 1, -2.76455648e-005, -2.98020097e-007, 2.98023224e-007, -4.37196022e-008, 1, -2.76455648e-005, -1, -4.37113954e-008)
w41 = Instance.new("Weld", p2)
w41.Part0 = p2
w41.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w41.Part1 = p6
w41.C1 = CFrame.new(0.000224947929, -1.50036621, 0.000244170427, 0.000772074622, -0.999999702, -3.56277487e-005, 4.80763504e-007, -3.56273958e-005, 1, -0.999999702, -0.00077207468, 4.5325578e-007)
w42 = Instance.new("Weld", p2)
w42.Part0 = p2
w42.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w42.Part1 = p7
w42.C1 = CFrame.new(0.000156402588, -0.50012207, 2.98023224e-008, 0.000772074622, -0.999999702, -3.56277487e-005, 4.80763504e-007, -3.56273958e-005, 1, -0.999999702, -0.00077207468, 4.5325578e-007)
w43 = Instance.new("Weld", p2)
w43.Part0 = p2
w43.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w43.Part1 = p8
w43.C1 = CFrame.new(0.00048828125, -0.399780273, -3.81469727e-006, -1, -2.76455648e-005, 1.51001032e-007, -1.50997963e-007, -7.55021006e-008, -1, 2.76455667e-005, -1, 7.54978942e-008)
w44 = Instance.new("Weld", p2)
w44.Part0 = p2
w44.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w44.Part1 = p9
w44.C1 = CFrame.new(-3.93390656e-006, -0.000854492188, -0.699584961, -4.37113883e-008, 1, 1.50989635e-007, 1, 4.36900578e-008, 0.000141224213, 0.000141224213, 1.50995774e-007, -1)
w45 = Instance.new("Weld", p2)
w45.Part0 = p2
w45.C0 = CFrame.new(0, 0, 0, 7.54979013e-008, 1, 1.5100278e-007, 1, -7.55118492e-008, 9.23425177e-005, 9.23425177e-005, 1.50995788e-007, -1)
w45.Part1 = p11
w45.C1 = CFrame.new(7.62939453e-006, 0.0989990234, 0.699829102, -4.37113918e-008, -1, 4.1124224e-009, 1, -4.37113954e-008, -2.98023224e-008, 2.9802333e-008, 4.11243661e-009, 1)
m.Parent = game:service("Workspace")
m:MakeJoints()
