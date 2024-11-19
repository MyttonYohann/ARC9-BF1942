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
    return vec + Vector(0, -2, 0)
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

ATT.SortOrder = 1
ATT.Category = "bf1942_dc_mp5_hg"
ATT.ActivateElements = {"hg_1", "gripped"}

ATT.CustomizePosHook = function(wep, vec)
    return vec + Vector(2, 0, 0)
end

ATT.LHIK = true
ATT.LHIK_Priority = 0.01
 
ATT.Scale = 1
ATT.ModelOffset = Vector(-11, 0, -3)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Model = "models/weapons/myt_bf1942/dc/c_mp5_ik_k.mdl"

ATT.DrawFunc = function(swep, model) 
	if swep:GetElements()["s_4"] then
		model:SetModel("models/weapons/myt_bf1942/dc/blank.mdl")	-- cant set nil?
	else
		model:SetModel("models/weapons/myt_bf1942/dc/c_mp5_ik_k.mdl")
	end
end

ATT.RPMMult = 900/800

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_mp5_hg1")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Arbiter Handguard]]
ATT.CompactName = [[HG. II]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Lesbian gun woah
Cigarette wife
]]

ATT.SortOrder = 2
ATT.Category = "bf1942_dc_mp5_hg"
ATT.ActivateElements = {"hg_2", "gripped"}

ATT.LHIK = true
ATT.LHIK_Priority = 0.01
 
ATT.Scale = 1
ATT.ModelOffset = Vector(-11, 0, -3)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Model = "models/weapons/myt_bf1942/dc/c_mp5_ik_ii.mdl"

-- actually could i use this to temporarily disable rhik on stuff like off hand weapon, and potentially rifle grenade?
ATT.DrawFunc = function(swep, model) 
	if swep:GetElements()["s_4"] then
		model:SetModel("models/weapons/myt_bf1942/dc/blank.mdl")	-- cant set nil?
	else
		model:SetModel("models/weapons/myt_bf1942/dc/c_mp5_ik_ii.mdl")
	end
end

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

ATT.SortOrder = 3
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

ATT.RPMMult = 700/800

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
-- Calibre --
----------------------------------------------------------------------------------


ATT = {}
-- never fucking make a bullpup again
ATT.PrintName = [[5/10 Reciever]]
ATT.CompactName = [[Cal. Warden]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Polizei with a bolt hold thing
]]

ATT.Hook_TranslateAnimation = function(wep, curanim)
	local lazy = wep:Clip1() == 0			-- separate check for empty + last shot
	local bullpup = wep:GetElements()["s_4"]

	if bullpup then
	if	curanim == "reload_empty"		then	return "dry_bullpup_510"			end
	if	curanim == "reload_empty_fail"	then	return "dry_bullpup_510_fail"		end
	if	curanim == "reload"				then	return "wet_bullpup_510"			end
	if	curanim == "reload_fail"		then	return "wet_bullpup_510_fail"		end
	
	if	curanim == "fire" and lazy		then	return "fire_bullpup_510_last"		end
	if	curanim == "fire_iron" and lazy	then	return "fire_bullpup_ads_510_last"	end
	if	curanim == "idle"	and lazy	then	return "idle_bullpup_510_empty"		end	
	if	curanim == "draw"	and lazy	then	return "draw_bullpup_510_empty"		end	
	if	curanim == "holster" and lazy	then	return "holster_bullpup_510_empty"	end
	end
	
	if	curanim == "reload_empty"		then	return "dry_510"			end
	if	curanim == "reload_empty_fail"	then	return "dry_510_fail"		end
	if	curanim == "reload"				then	return "wet_510"			end
	if	curanim == "reload_fail"		then	return "wet_510_fail"		end

	if	curanim == "idle"	and lazy	then	return "idle_510_empty"		end
	if	curanim == "draw"	and lazy	then	return "draw_510_empty"		end	
	if	curanim == "holster" and lazy	then	return "holster_510_empty"	end	
	if	curanim == "fire" and lazy		then	return "fire_510_last"		end
	if	curanim == "fire_iron" and lazy	then	return "fire_ads_510_last"	end
end
ATT.ShootSound = {"myt_bf1942/dc/scorpion.wav"} -- placeholder

ATT.SortOrder = 1
ATT.Category = "bf1942_dc_mp5_cal"
ATT.ActivateElements = {"cal_1"}

ATT.RPMMult = 750 / 800
ATT.Penetration = 10

ATT.SpreadMult = 0.8
ATT.DamageMaxMult = 1.2
ATT.DamageMinMult = 0.8

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_mp5_cal1")