local Name = "ic3w0lf589"

local Model = Instance.new("Model", Workspace)
   Model.Name = Name .. "'s Vehicle"
local ride = Instance.new("VehicleSeat", Model)
   ride.Position = game.Workspace[Name].Torso.Position
   ride.HeadsUpDisplay = false
   ride.TopSurface = "Smooth"
   ride.BottomSurface = "Smooth"
   ride.BrickColor = BrickColor.new("Really black")
   ride.Size = Vector3.new(4,1,4)
do
   Instance.new("BlockMesh", ride)
   local d1 = Instance.new("Part", Model)
      d1.CanCollide = false
      d1.FormFactor = "Custom"
      d1.TopSurface = "Smooth"
      d1.BottomSurface = "Smooth"
      d1.BrickColor = BrickColor.new("Dark stone grey")
      d1.Size = Vector3.new(2.4,1,2.4)
   Instance.new("BlockMesh", d1)
   local w1 = Instance.new("Weld", ride)
      w1.Part0 = ride
      w1.Part1 = d1
      w1.C0 = CFrame.new(0,0.05,0) * CFrame.Angles(0,math.pi/4,0)
      coroutine.resume(coroutine.create(function()
         while wait(0.05) do
            w1.C0 = w1.C0 * CFrame.Angles(0,math.pi/40,0)
         end
      end))
end

local bg = Instance.new("BodyGyro", ride)
   bg.maxTorque = Vector3.new(1e10,1e10,1e10)
local bp = Instance.new("BodyPosition", ride)
   bp.position = game.Workspace[Name].Torso.Position
   bp.maxForce = Vector3.new(1e10,1e10,1e10)

while wait() do
   bg.cframe = bg.cframe * CFrame.Angles(0,math.pi/60*(-ride.Steer),0)
   bp.position = bp.position + bg.cframe.lookVector*ride.Throttle
end