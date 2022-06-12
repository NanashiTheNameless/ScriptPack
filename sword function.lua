function Button2(mouse) --Since it is Button2,it will run this function on keydown("z")(See 'klick' table) AND DoubleClicked. 
char.Torso:remove() 
end 

fire={Button2} 
name={"Example"} 
klick={"z"} 

So,on KeyDown(klick[1]) it will run fire[1] and make a hint saying name[1].."!" 

(Also,since it is named Button2,it will run Button2 if you doubleclick.) 