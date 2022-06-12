local children = game.PLACE:GetChildren()

print("EXPLORER:")
wait(1)

for i = 1, #children do
    print("-------------------------------------------------------------------")
    print(i, children[i].Name)
    print("-------------------------------------------------------------------")

end
