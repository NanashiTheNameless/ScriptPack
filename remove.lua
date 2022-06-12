function touch(hit) 
if hit.Parent.Name ~= "acbalt" then 
hit:Remove() 
end 
end 


Workspace.Base.Touched:connect(touch)