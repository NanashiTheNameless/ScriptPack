1. Find the image you want.
2. Download Img2Lua.jar. (http://www.filedropper.com/img2lua)
3. Shift-click on the folder the Img2Lua.jar file is in, select Open Command Window Here.
4. In the Command Prompt, type Img2Lua.jar <image name here>.ext
5. A .lua file will be generated in the same directory. Open it.
6. Change the first lines to "Image = {" instead of the old text, "local ImageTable = {.
7. Find and Replace "0xff" with "0x" and the background color with "0".
8. Take the newly generated lua file in the same directory, copy everything in it
9. Open Roblox Studio.
10. Create a new script, put the source in it.
11. Open the Command Bar and copy and paste this in it:
    local src = workspace.Script.Source i = 0 while src:len() > 0 do i = 1 + 1 v = Instance.new("StringValue", workspace) v.Value = src:sub(0, 200000) src = src:sub(0, 200000) v.Name = tostring(i) print(i) wait() end
12. Select all the new StringValues in the Explorer and upload them to Roblox as a model.
13. Your script must have this in it:
    loadstring(game:GetService("InsertService"):LoadAsset(62626380).ImageLoader.Value)()
    LoadImage(<ID of the model>)
    xSize = #Image
    ySize = #Image[1]
    BackgroundColor = Color3.new(Background color of the image, replaces all 0x000000 or 0 values with this color. Not really needed unless you want it. Just set it to 1, 1, 1 if you don't care.)
14. There are multiple functions you can use with ImageLoader:
    a. ImageToGui(object Player, number Speed, udim2 Position)
        o This makes a gui in player Player, waits after Speed pixels are made, at Position.
        o Don't include Position to put it at the bottom right of the screen automatically.
    b. ImageToBrick(cframe Position, number Scale, number Speed)
        o Same as above except makes a model in Workspace named Image and fills it with bricks and not gui objects. Waits after Speed pixels like usual.
        o The Size of the bricks must be greater than 0.2.
    c. LoadImage
        o Loads an image you made with the code from step 11.

That's it, you've got an image now.
The default value I use for Speed is 10-50, depending on the image size.