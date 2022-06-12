function Herp(v1, v2, num)
	return (v1 + ((v2 - v1) * num))
end

v1 = Vector3.new(2, 0, 2)
v2 = Vector3.new(4, 4, 4)

print(Herp(v1, v2, 0.2))
--print(v1:Lerp(v2, 0.2))

