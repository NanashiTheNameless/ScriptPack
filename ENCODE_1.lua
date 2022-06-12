string=[[]] -- Copy and Paste your script between the [[ and the ]], Run the script and highlight the code in the Output (Viw>Output) then Right click and then click Copy, then copy the code to your script.

------------------Dont-touch-below---------------------------------------------------
a=[[loadstring(']]
for i=1,string:len() do
a=a.."\\"..string.byte(string.sub(string,i,i))
end
a=a..[[')()]]
print(a)

