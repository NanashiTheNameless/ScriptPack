string=[[]] -- Copy and Paste your script between the [[ and the ]], Run the script and highlight the code in the Output (Viw>Output) then Right click and then click Copy, then copy the code to your script.

------------------Dont-touch-below---------------------------------------------------
a=[[]]
for i=1,string:len() do
a=a.."\\"..string.byte(string.sub(string,i,i))
end

b=[[]]
for i=1,a:len() do
b=b.."\\"..string.byte(string.sub(a,i,i))
end

c=[[loadstring(']]
for i=1,b:len() do
c=c.."\\"..string.byte(string.sub(b,i,i))
end
c=c..[[')()]]
print(c)