local ATT = {}

ATT = {}

ATT.PrintName = [[Polymer Stock]]
ATT.CompactName = [[S. Poly]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[]]

ATT.SortOrder = 0
ATT.Category = "bf1942_dc_mp5_stock"
ATT.ActivateElements = {"s_1"}

ATT.RecoilMult = 0.7
ATT.VisualRecoilMult = 0.7

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

ATT.RecoilMult = 0.65
ATT.VisualRecoilMult = 0.65

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

ATT.ToggleStats = {
    {
        PrintName = "Unfolded",
        RecoilMult = 0.8,
        VisualRecoilMult = 0.8
    },
    {
        PrintName = "Folded",
        CustomizePos = Vector(13, 28, 7),
        ActivateElements = {"s_32"}
    },
}


ARC9.LoadAttachment(ATT, "myt_bf1942_dc_mp5_stock3")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Bullpup Kit]]
ATT.CompactName = [[5 PM]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Commisar said you need to shorten mp5 even more, you have until 5 PM to complete.]]

ATT.SortOrder = 10
ATT.Category = "bf1942_dc_mp5_stock"
ATT.ActivateElements = {"s_4"}

ATT.CustomizePosHook = function(wep, vec)
    return vec + Vector(4, 0, 0)
end

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(0, -1, 0)
end

ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	wep:HasElement("rail_def") and curanim == "reload_empty"		then	return "dry_bullpup_optic"			end	
	if	wep:HasElement("rail_def") and curanim == "reload_empty_fail"	then	return "dry_bullpup_optic_fail"		end
	
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


-- GUARD --


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Kollider Handguard]]
ATT.CompactName = [[HG. Kurz]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[why did HK switch to a boring stub vertical grip, are they stupid
]]

ATT.SortOrder = 0
ATT.Category = "bf1942_dc_mp5_hg"
ATT.ActivateElements = {"hg_1", "gripped"}

ATT.CustomizePosHook = function(wep, vec)
    return vec + Vector(2, 0, 0)
end

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_mp5_hg1")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Arbiter Handguard]]
ATT.CompactName = [[HG. II]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Lesbian gun woah
Cigarette wife
]]

ATT.SortOrder = 0
ATT.Category = "bf1942_dc_mp5_hg"
ATT.ActivateElements = {"hg_2", "gripped"}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_mp5_hg2")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[SD Handguard]]
ATT.CompactName = [[HG. SD]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[
]]
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.Silencer = true

ATT.SortOrder = 11
ATT.Category = "bf1942_dc_mp5_hg"
ATT.ActivateElements = {"hg_3", "pre_muzzed"}

ATT.CustomizePosHook = function(wep, vec)
    return vec + Vector(2, 0, 0)
end

ATT.ShootVolumeMult = 0.8
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true
ATT.Silencer = true

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_mp5_hg3")

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Wooden Handguard]]
ATT.CompactName = [[HG. Wood]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.SortOrder = 0
ATT.Category = "bf1942_dc_mp5_hg"
ATT.ActivateElements = {"hg_4"}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_mp5_hg4")


----------------------------------------------------------------------------------