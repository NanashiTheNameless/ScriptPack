How to use RXBMs via GetObjects

From what I've gathered with using this method with Colossus, and Rawlbin. The method to do so is rather simple.

The first few lines of god's remenant, look like this:

--game:GetObjects("rbxassetid://525285027")[1].Parent=game.ReplicatedStorage

if game.ReplicatedStorage:FindFirstChild("Sword") then
    mo = game.ReplicatedStorage['Sword']:Clone()
    game.ReplicatedStorage['Gauntlet']:Clone().Parent=mo
    local a = game.ReplicatedStorage['Gauntlet']:Clone()
    a.Name="Gauntlet2"
    a.Parent=mo
    mo.Parent=pchar
else
    game.ReplicatedStorage.GRLib.Sword:Clone().Parent = game.ReplicatedStorage
    game.ReplicatedStorage.GRLib.Gauntlet:Clone().Parent = game.ReplicatedStorage
    game.ReplicatedStorage.GRLib.obli:Clone().Parent = game.ReplicatedStorage
    print("Please run the script a second time.")
    return
    --[[wait(3)
    mo = game.ReplicatedStorage.GRLib['Sword']:Clone()
    game.ReplicatedStorage.GRLib['Gauntlet']:Clone().Parent=mo
    local a = game.ReplicatedStorage.GRLib['Gauntlet']:Clone()
    a.Name="Gauntlet2"
    a.Parent=mo
    mo.Parent=pchar]]
end

game.ReplicatedStorage.Sword:remove()
game.ReplicatedStorage.Gauntlet:remove()
game.ReplicatedStorage.GRLib:remove()
game.ReplicatedStorage.GRLib:remove()--

Funny thing is, you don't need all this content.

You only need this:

-local junks = game.ReplicatedStorage

if junks:FindFirstChild("ID") then
	junks.model.NameOfModel:Clone().Parent = junks
	junks.model.NameOfModel:Clone().Parent = junks
else
	game:GetObjects("rbxassetid://539919998")[1].Parent=junks
	wait(3)
	print("run script second time plis")
end
--------------------------------------------------------------

This.

Depending on how many models are in the localscript, you will have to keep adding lines, this means also running the script as many times as there are models.

But this is just the tip of the iceberg.

In order to get these to work properly.

You must first open the file.

Go into the localScript, where you will find the models.

Copy and paste those into a blank model, and name it 'model' no capital letters.

save the model to ROBLOX under any name you want, but make sure the actual content is called 'model'

Go into the LocalScript, and search for the model names inside 'model' For instance, Colossus.

Now CTRL F, and type 'script.Colossus' Once you find it, replace 'script.' with 'game.ReplicatedStorage.'

Once you change all the names, DOUBLE CHECK IF THERE ARE ANYMORE.

You can save the LocalScript to a txt. For future use.

Now just run the above script, which I will be putting in the archive. as many times as there are the models inside the script.

And you are golden.