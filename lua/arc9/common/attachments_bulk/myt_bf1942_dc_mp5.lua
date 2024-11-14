local ATT = {}

ATT = {}

ATT.PrintName = [[Polymer Stock]]
ATT.CompactName = [[S. Poly]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[]]

ATT.SortOrder = 0
ATT.Category = "bf1942_dc_mp5_stock"
ATT.ActivateElements = {"s_1"}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_mp5_stock1")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Wooden Stock]]
ATT.CompactName = [[S. Wood]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[]]

ATT.SortOrder = 0
ATT.Category = "bf1942_dc_mp5_stock"
ATT.ActivateElements = {"s_2"}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_mp5_stock2")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Sliding Stock]]
ATT.CompactName = [[S. Slide]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[]]

ATT.SortOrder = 0
ATT.Category = "bf1942_dc_mp5_stock"
ATT.ActivateElements = {"s_3"}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_mp5_stock3")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Bullpup Kit]]
ATT.CompactName = [[5 PM]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Commisar said you need to shorten mp5 even more, you have until 5 PM to complete.]]

ATT.SortOrder = 0
ATT.Category = "bf1942_dc_mp5_stock"
ATT.ActivateElements = {"s_4"}

ATT.CustomizePosHook = function(wep, vec)
    return vec + Vector(5, 0, 0)
end

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(0, -1, 0)
end

ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_empty"		then	return "dry_bullpup"			end
	if	curanim == "reload_empty_fail"	then	return "dry_bullpup_fail"		end
	if	curanim == "reload"				then	return "wet_bullpup"			end
	if	curanim == "reload_fail"		then	return "wet_bullpup_fail"		end
	if	curanim == "fire"				then	return "fire_bullpup"			end
	if	curanim == "fire_iron"			then	return "fire_bullpup_ads"		end
	if	curanim == "idle"				then	return "idle_bullpup"			end
	if	curanim == "draw"				then	return "draw_bullpup"			end	
	if	curanim == "ready"				then	return "ready_bullpup"			end
	if	curanim == "holster"			then	return "holster_bullpup"		end
end


ARC9.LoadAttachment(ATT, "myt_bf1942_dc_mp5_stock4")


----------------------------------------------------------------------------------