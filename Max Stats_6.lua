plr = "NAMEHERE"
plrid = game.Players[plr].userId
level = 120
pie = game.ReplicatedStorage.leaderstat[plrid]

repeat
pie.EXP.Value = pie.MaxEXP.Value
wait()
until pie.Level.Value == level

repeat
pie.AGTEXP.Value = pie.AGTMaxEXP.Value
wait()
until pie.AGTLevel.Value == level

repeat
pie.SMTEXP.Value = pie.SMTMaxEXP.Value
wait()
until pie.SMTLevel.Value == level

repeat
pie.STREXP.Value = pie.STRMaxEXP.Value
wait()
until pie.STRLevel.Value == level

repeat
pie.STMEXP.Value = pie.STMMaxEXP.Value
wait()
until pie.STMLevel.Value == level

repeat
pie.OHSEXP.Value = pie.OHSMaxEXP.Value
wait()
until pie.OHSLevel.Value == level

repeat
pie.THSEXP.Value = pie.THSMaxEXP.Value
wait()
until pie.THSLevel.Value == level

repeat
pie.KATEXP.Value = pie.KATMaxEXP.Value
wait()
until pie.KATLevel.Value == level

repeat
pie.RAPEXP.Value = pie.RPRMaxEXP.Value
wait()
until pie.RAPLevel.Value == level