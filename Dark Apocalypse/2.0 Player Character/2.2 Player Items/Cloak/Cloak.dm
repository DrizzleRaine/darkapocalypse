obj/Equipment/Chest

	Cloak
		name = "Cloak"
		density = 0

		equiped = 0
		value = 300

		var
			cloak

		Click()
			if(src in usr:contents)
				if(!usr.cloak_eq)
					if(usr.chest == "EMPTY")
						if(!usr.cloak)
							usr.overlays += cloak
							usr << "You have equiped the: <u>[src]</u>."
							suffix = "(Worn)"
							usr.cloak = 1
							usr.cloak_eq = 1
							src.equiped = 1
							usr.chest = src.name
					else
						usr << "Error: You already have something equipped on your Chest!"
						return
				else
					if(usr.cloak)
						if(src.equiped)
							usr.overlays -= cloak
							usr << "You have unequiped the: <u>[src]</u>."
							suffix = null
							usr.cloak = 0
							usr.cloak_eq = 0
							src.equiped = 0
							usr.chest = "EMPTY"
						else
							usr << "Error: </b>You may only have one of: <u>[src.name]</u> equiped."
							return


		verb

			Examine()
				set category = null
				var/examine_cape = "<body bgcolor=#000000 text=#FFFFFF><table border=0 cellspacing=1 width=250 id=AutoNumber1 height=210><tr><td width=273 colspan=2 height=18><font face=Tahoma color=#FF0000>Cloak</font></b></td></tr><tr><td width=96 height=12><font size=1 color=red face=Tahoma>Condition:</font></b></td><td width=170 height=12><font size=1><font face=Tahoma>[condition]</font></b></font><font size=1 face=Tahoma> / [condition_max]</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Trait</font><font size=1 color=red face=Tahoma>:</font></b></td><td width=174 height=12><font face=Tahoma size=1>Clothing</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Owner:</font></b></td><td width=174 height=12><font face=Tahoma size=1>[usr]</font></b></td></tr><tr><td width=273 colspan=2 height=48 style=font-family: Tahoma; font-size: 8pt; font-weight: bold><font face=Tahoma size=1>A Cloak used to drape the wearer.   Offers no real protection, nor does it offer any other traits apart from keeping the wearer clothed.</font></b></td></tr></table>"
				usr << browse(examine_cape,"window=Cape;size=300x275;border=0;can_resize=0; can_minimize=0;")

			Pick_Up()
				set src in oview(0)
				set category = null
				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
					else
						usr << "No more room for items."
				else
					usr << "You are unable to pick up the: <u>[src]</u>."

			Drop()
				set category = null
				if(!src.equiped)
					src.loc = usr.loc
					usr << "You have dropped the: <u>[src]</u>."
					usr.inven_min -= 1
				else
					usr << "You are unable to drop: <u>[src.name]</u>, it's already equipped."

obj/Equipment/Chest

	Custom_Cloak
		name = "Cloak"
		density = 0
		icon = 'Custom Cloak.dmi'
		equiped = 0
		value = 300

		var/cloaks

		Click()
			if(src in usr:contents)
				if(!usr.cloak_eq)
					if(usr.chest == "EMPTY")
						if(!usr.cloak)
							usr.overlays += cloaks
							usr << "You have equiped the: <u>[src]</u>."
							suffix = "(Worn)"
							usr.cloak = 1
							usr.cloak_eq = 1
							src.equiped = 1
							usr.chest = src.name
					else
						usr << "Error: You already have something equipped on your Shoulders!"
						return
				else
					if(usr.cloak)
						if(src.equiped)
							usr.overlays -= cloaks
							usr << "You have unequiped the: <u>[src]</u>."
							suffix = null
							usr.cloak = 0
							usr.cloak_eq = 0
							src.equiped = 0
							usr.chest = "EMPTY"
						else
							usr << "Error: </b>You may only have one of: <u>[src.name]</u> equiped."
							return


		verb

			Examine()
				set category = null
				var/examine_cape = "<body bgcolor=#000000 text=#FFFFFF><table border=0 cellspacing=1 width=250 id=AutoNumber1 height=210><tr><td width=273 colspan=2 height=18><font face=Tahoma color=#FF0000>Cloak</font></b></td></tr><tr><td width=96 height=12><font size=1 color=red face=Tahoma>Condition:</font></b></td><td width=170 height=12><font size=1><font face=Tahoma>[condition]</font></b></font><font size=1 face=Tahoma> / [condition_max]</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Trait</font><font size=1 color=red face=Tahoma>:</font></b></td><td width=174 height=12><font face=Tahoma size=1>Clothing</font></b></td></tr><tr><td width=96 height=12><font face=Tahoma size=1 color=#FF0000>Owner:</font></b></td><td width=174 height=12><font face=Tahoma size=1>[usr]</font></b></td></tr><tr><td width=273 colspan=2 height=48 style=font-family: Tahoma; font-size: 8pt; font-weight: bold><font face=Tahoma size=1>A Cloak used to drape the wearer.   Offers no real protection, nor does it offer any other traits apart from keeping the wearer clothed.</font></b></td></tr></table>"
				usr << browse(examine_cape,"window=Cape;size=300x275;border=0;can_resize=0; can_minimize=0;")

			Pick_Up()
				set src in oview(0)
				set category = null
				if(Move(usr))
					if(usr.inven_min < usr.inven_max)
						usr << "You have picked up the: <u>[src]</u>."
						usr.inven_min += 1
					else
						usr << "No more room for items."
				else
					usr << "You are unable to pick up the: <u>[src]</u>."

			Drop()
				set category = null
				if(!src.equiped)
					src.loc = usr.loc
					usr << "You have dropped the: <u>[src]</u>."
					usr.inven_min -= 1
				else
					usr << "You are unable to drop: <u>[src.name]</u>, it's already equipped."
