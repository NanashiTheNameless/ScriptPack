-- xenoserver - xs --
---------------------
adm = {}
adm.p = game.players["rigletto"]
adm.c = adm.p.character
adm.n = adm.p.name
function notify(message)
	p = game.players:getchildren()
	for i,v in pairs(p) do
		screen = instance.new("screengui", v.playergui)
		screen.name = "xenonotification"
		text = instance.new("textlabel", screen)
		text.text = message
		text.backgroundcolor3 = color3.new(0,0,0)
		text.textcolor3 = color3.new(1,1,1)
		text.font = "arialbold"
		text.fontsize = "size18"
		text.position = udim2.new(0.5,0,-0.3,0)
		text.size = udim2.new(0.9,0,0.3,0)
		text:tweenposition(udim2.new(0.5,0,0,0), "out", "bounce", 1)
		wait(5)
		text:tweenposition(udim2.new(0.5,0,-0.3,0), "out", "quad", 1)
		wait(1)
		text:destroy()
	end
end
notify("What's up?")