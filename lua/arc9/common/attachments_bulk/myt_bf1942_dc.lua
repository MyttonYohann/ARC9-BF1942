local ATT = {}

----------------------------------------------------------
----
----------------------------------------------------------
---- MP5 ----
----------------------------------------------------------
----
----------------------------------------------------------

ATT = {}

ATT.PrintName = [[Polymer Stock]]
ATT.CompactName = [[S. Poly]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[]]

ATT.SortOrder = 0
ATT.Category = "bf1942_dc_mp5_stock"
ATT.ActivateElements = {"s_1"}

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(0, -1, 0)
end

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

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(0, -1, 0)
end

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

ATT.ActivePosHook = function(wep, vec)
	if 	wep:HasElement("s_32") then
		return vec + Vector(0, -1, 0)
	else
		return vec + Vector(0, 0, 0)
	end
end

ATT.CustomizePosHook = function(wep, vec)
	if 	wep:HasElement("s_32") then
		return vec + Vector(1, 0, 0)
	else
		return vec + Vector(0, 0, 0)
	end
end


ATT.ToggleStats = {
    {
        PrintName = "Unfolded",
        RecoilMult = 0.8,
        VisualRecoilMult = 0.8
    },
    {
        PrintName = "Folded",
        ActivateElements = {"s_32"}
    },
}


ARC9.LoadAttachment(ATT, "myt_bf1942_dc_mp5_stock3")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Heretic Kit]]
ATT.CompactName = [[K. Bullpup]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Commisar said you need to shorten mp5 even more, you have until 5 PM to complete.]]
ATT.CustomPros = { Malfunction = "-5%" }

ATT.SortOrder = 10
ATT.Category = "bf1942_dc_mp5_stock"
ATT.ActivateElements = {"s_4", "no_animbodge", "nofg"}
ATT.TPIKAlternativePos = true
ATT.CustomizePosHook = function(wep, vec)
    return vec + Vector(6, 0, 0)
end

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(-0.5, -5, -0.5)
end

ATT.SprintPosHook = function(wep, vec)
    return vec + Vector(2, 0, 0)
end
ATT.NearWallPos = Vector(4, -3, -18)
ATT.NearWallAng = Angle(0, 50, -10)

ATT.BarrelLengthAdd = -10

ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	wep:HasElement("has_optic") and curanim == "reload_empty"		then	return "dry_bullpup_optic"			end	
	if	wep:HasElement("has_optic") and curanim == "reload_empty_fail"	then	return "dry_bullpup_optic_fail"		end
	
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
ATT.CustomPros = { Malfunction = "-10%" }

ATT.SortOrder = 1
ATT.Category = "bf1942_dc_mp5_hg"
ATT.ActivateElements = {"hg_1", "gripped", "nofg"}

ATT.CustomizePosHook = function(wep, vec)
    return vec + Vector(1, 0, 0)
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
ATT.ActivateElements = {"hg_2", "gripped", "nofg"}

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

ATT.PrintName = [[Nightshade Handguard]]
ATT.CompactName = [[HG. SD]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[
]]
ATT.CustomCons = { Malfunction = "+5%" }
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
ATT.PrintName = [[Warden Conversion]]
ATT.CompactName = [[Cal. 5/10]]
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
ATT.ActivateElements = {"cal_1", "no_animbodge"}

ATT.ClipSize = 25
ATT.RPMMult = 730 / 800
ATT.Penetration = 10

ATT.SpreadMult = 0.8
ATT.DamageMaxMult = 1.2
ATT.DamageMinMult = 0.8

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_mp5_cal1")

----------------------------------------------------------
----
----------------------------------------------------------
---- AK ----
----------------------------------------------------------
----
----------------------------------------------------------

ATT = {}

ATT.PrintName = [[Wooden Stock]]
ATT.CompactName = [[S. AK47]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ It's a classic
]]

ATT.SortOrder = -0.1
ATT.Category = "bf1942_dc_ak47_stock"
ATT.ActivateElements = {"s_1"}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_stock1")

----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Skeleton Stock]]
ATT.CompactName = [[S. AKS74U]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ It's also a classic
]]

ATT.SortOrder = 1
ATT.Category = "bf1942_dc_ak47_stock"
ATT.ActivateElements = {"s_2"}

ATT.RecoilMult = 1.1
ATT.RecoilKickMult = 1.1
ATT.RecoilAutoControlMult = 0.95
ATT.SpreadMultHipFire = 0.9
ATT.SpreadMultMove = 0.85
ATT.AimDownSightsTimeMult = 0.9

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_stock2")

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Tabuk Stock]]
ATT.CompactName = [[S. Tabuk]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ It's less a classic
]]

ATT.SortOrder = 3
ATT.Category = "bf1942_dc_ak47_stock"
ATT.ActivateElements = {"s_3"}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_stock3")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[PKM Stock]]
ATT.CompactName = [[S. PKM]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ There's no RPK in the mod so enjoy
]]

ATT.SortOrder = 4
ATT.Category = "bf1942_dc_ak47_stock"
ATT.ActivateElements = {"s_4"}


ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_stock4")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Scorpion Stock]]
ATT.CompactName = [[S. Scor]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ WIRE
]]

ATT.SortOrder = 5
ATT.Category = "bf1942_dc_ak47_stock"
ATT.ActivateElements = {"s_5"}


ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_stock5")






-- GRIP --


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Polymer Grip]]
ATT.CompactName = [[G. Saiga]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ Da future
]]

ATT.SortOrder = 1
ATT.Category = "bf1942_dc_ak47_grip"
ATT.ActivateElements = {"g_1"}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_grip1")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Scorpion Grip]]
ATT.CompactName = [[G. Scor]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ Yellow
]]

ATT.SortOrder = 2
ATT.Category = "bf1942_dc_ak47_grip"
ATT.ActivateElements = {"g_7"}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_grip7")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[VSS Grip]]
ATT.CompactName = [[G. VSS]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ Full Grip and Stock combo
]]

ATT.SortOrder = 20
ATT.Category = "bf1942_dc_ak47_grip"
ATT.ActivateElements = {"g_3", "nostock"}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_grip3")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Hunting Grip]]
ATT.CompactName = [[G. Hunt]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ (!) Disable Stock Attachments
Supposedly popular with civilians
]]

ATT.SortOrder = 21
ATT.Category = "bf1942_dc_ak47_grip"
ATT.ActivateElements = {"g_2", "nostock", "rh_occupied"}

ATT.RHIK = true
ATT.RHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(3, 0, 3.5)
ATT.ModelAngleOffset = Angle(90, -90, 0)
ATT.Model = "models/weapons/myt_bf1942/dc/c_ak47_ik_hunt.mdl"

ATT.SpreadMultHipFire = 0.75
ATT.SwayMultSights = 1.5
ATT.AimDownSightsTimeMult = 1.3
ATT.SprintToFireTimeMult = 1.3

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(0, 2, -0.5)
end

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_grip2")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Hunting Grip (Skeleton)]]
ATT.CompactName = [[G. HuntSke]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ (!) Disable Stock Attachments
Bent Skeleton Stock to fit a hand grip
]]

ATT.SortOrder = 21
ATT.Category = "bf1942_dc_ak47_grip"
ATT.ActivateElements = {"g_4", "nostock", "rh_occupied"}

ATT.RHIK = true
ATT.RHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(3, 0, 3.5)
ATT.ModelAngleOffset = Angle(90, -90, 0)
ATT.Model = "models/weapons/myt_bf1942/dc/c_ak47_ik_hunt.mdl"

ATT.SpreadMultHipFire = 0.75
ATT.SwayMultSights = 1.5
ATT.AimDownSightsTimeMult = 1.3
ATT.SprintToFireTimeMult = 1.3

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(0, 2, -0.5)
end

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_grip4")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Hunting Grip (Stub)]]
ATT.CompactName = [[G. HuntStub]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ (!) Disable Stock Attachments
Cut down wooden stock for alledged comfortable gripping
]]

ATT.SortOrder = 25
ATT.Category = "bf1942_dc_ak47_grip"
ATT.ActivateElements = {"g_5", "nostock", "rh_occupied"}

ATT.RHIK = true
ATT.RHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(3, 0, 3.5)
ATT.ModelAngleOffset = Angle(90, -90, 0)
ATT.Model = "models/weapons/myt_bf1942/dc/c_ak47_ik_hunt.mdl"

ATT.SpreadMultHipFire = 0.75
ATT.SwayMultSights = 1.5
ATT.AimDownSightsTimeMult = 1.3
ATT.SprintToFireTimeMult = 1.3

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(0, 2, -0.5)
end

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_grip5")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Hunting Grip (PKM)]]
ATT.CompactName = [[G. HuntPKM]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ (!) Disable Stock Attachments
There's still no RPK in the mod
]]

ATT.SortOrder = 25
ATT.Category = "bf1942_dc_ak47_grip"
ATT.ActivateElements = {"g_6", "nostock", "rh_occupied"}

ATT.RHIK = true
ATT.RHIK_Priority = 0

ATT.Scale = 1
ATT.ModelOffset = Vector(3, 0, 3.5)
ATT.ModelAngleOffset = Angle(90, -90, 0)
ATT.Model = "models/weapons/myt_bf1942/dc/c_ak47_ik_hunt.mdl"

ATT.SpreadMultHipFire = 0.75
ATT.SwayMultSights = 1.5
ATT.AimDownSightsTimeMult = 1.3
ATT.SprintToFireTimeMult = 1.3

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(0, 2, -0.5)
end

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_grip6")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Heretic Kit]]
ATT.CompactName = [[K. Bullpup]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ (!) Disable Stock Attachments
Have you ever wanted gun but short?
Increase Ergonomics(?)
]]

ATT.SortOrder = 50
ATT.Category = "bf1942_dc_ak47_grip"
ATT.ActivateElements = {"g_8", "nostock", "rh_occupied"}

ATT.RHIK = true
ATT.RHIK_Priority = 0.01
ATT.LHIK = true
ATT.LHIK_Priority = 0.01
 
ATT.Scale = 1
ATT.ModelOffset = Vector(3, 0, 3.5)
ATT.ModelAngleOffset = Angle(90, -90, 0)
ATT.Model = "models/weapons/myt_bf1942/dc/c_ak47_ik_bullpup.mdl"

ATT.SpreadMultHipFire = 0.75
ATT.SwayMultSights = 1.5
ATT.AimDownSightsTimeMult = 0.5
ATT.SprintToFireTimeMult = 0.5

ATT.NearWallPos = Vector(3, -3, -20)
ATT.NearWallAng = Angle(0, 50, -5)

ATT.CustomizePosHook = function(wep, vec)	return vec + Vector(5, 0, 0) end
ATT.ActivePosHook = function(wep, vec)
	--[[if wep:GetReloading() then -- nope doesnt work like that
		return vec + Vector(-0.5, -2.5, -0.5)	
	else]]
		return vec + Vector(-0.5, -3, -0.5)
	--end
end
--ATT.ReloadPos = Vector(0, -2, 0)
-- doesnt work
--[[ATT.ReloadPosHook = function(wep, vec)	
	if wep:GetElements()["cal_6"] then
		return vec + Vector(0, -4, 0)
	else
		return vec + Vector(0, 0, 0)
	end
end]]


ATT.BarrelLengthAdd = -12

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_grip8")


----------------------------------------------------------------------------------


-- GUARD --


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[VSS Handguard]]
ATT.CompactName = [[HG. VSS]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ Or AS VAl, the world is your oyster
]]
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.Silencer = true

ATT.SortOrder = 11
ATT.Category = "bf1942_dc_ak47_hg"
ATT.ActivateElements = {"hg_1", "pre_muzzed"}

ATT.CustomizePosHook = function(wep, vec)
    return vec + Vector(4, 0, 0)
end

ATT.ShootVolumeMult = 0.8
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true
ATT.Silencer = true

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_hg1")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Short VSS Handguard]]
ATT.CompactName = [[HG. SVSS]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ Author too lazy to separate barrel length and handguard
]]
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.Silencer = true

ATT.CustomizePosHook = function(wep, vec)
    return vec + Vector(-2, 0, 0)
end

ATT.SortOrder = 11.1
ATT.Category = "bf1942_dc_ak47_hg"
ATT.ActivateElements = {"hg_6", "pre_muzzed", "ak74u_irons"}

ATT.ShootVolumeMult = 0.8
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true
ATT.Silencer = true

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_hg6")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Saiga Handguard]]
ATT.CompactName = [[HG. Saiga]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ Supposedly used with shotgun configuration
]]

ATT.SortOrder = 10
ATT.Category = "bf1942_dc_ak47_hg"
ATT.ActivateElements = {"hg_2"}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_hg2")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[AKS74U Handguard]]
ATT.CompactName = [[HG. AKS74U]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ Compact (?)
]]

ATT.CustomizePosHook = function(wep, vec)
    return vec + Vector(-2, 0, 0)
end

ATT.SortOrder = 1
ATT.Category = "bf1942_dc_ak47_hg"
ATT.ActivateElements = {"hg_3", "ak74u_irons"}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_hg3")


----------------------------------------------------------------------------------


ATT = {}	-- maybe not?

ATT.PrintName = [[Tabuk Handguard]]
ATT.CompactName = [[HG. Tabuk]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ delete delete delete this
]]

ATT.CustomizePosHook = function(wep, vec)
    return vec + Vector(8, 0, 0)
end

ATT.SortOrder = 1
ATT.Category = "bf1942_dc_ak47_hg"
ATT.ActivateElements = {"hg_4"}
ATT.ExcludeElements = {"barrel_sg"}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_hg4")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[RPK Handguard]]
ATT.CompactName = [[HG. RPK]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ Would it be lmg if short barrel
]]

ATT.CustomizePosHook = function(wep, vec)
    return vec + Vector(8, 3, 0)
end

ATT.SortOrder = 1
ATT.Category = "bf1942_dc_ak47_hg"
ATT.ActivateElements = {"hg_7"}
ATT.ExcludeElements = {"barrel_sg"}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_hg7")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Short Saiga Handguard]]
ATT.CompactName = [[HG. SSaiga]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ Author too lazy to separate barrel length and handguard
]]

ATT.CustomizePosHook = function(wep, vec)
    return vec + Vector(-2, 0, 0)
end

ATT.SortOrder = 10.1
ATT.Category = "bf1942_dc_ak47_hg"
ATT.ActivateElements = {"hg_5", "ak74u_irons"}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_hg5")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[VPO Handguard]]
ATT.CompactName = [[HG. VPO]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ The wood market goes insane
Supposed to be used with a hunting grip but I'm not your mum
]]

ATT.SortOrder = 12
ATT.Category = "bf1942_dc_ak47_hg"
ATT.ActivateElements = {"hg_8"}
ATT.ExcludeElements = {"barrel_sg"}

ATT.CustomizePosHook = function(wep, vec)
    return vec + Vector(8, 3, 0)
end

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak47_hg8")


----------------------------------------------------------------------------------


-- Mag --


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Nightshade Conversion]]
ATT.CompactName = [[C. VSS]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[
]]

ATT.ClipSizeOverride = 20

ATT.RPMMult = 500 / 600

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_vss"
end

ATT.SortOrder = 20
ATT.Category = "bf1942_dc_ak47_cal"
ATT.ActivateElements = {"cal_1"}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak_cal1")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Frontliner Conversion]]
ATT.CompactName = [[C. AKS74U]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ 5.45 Calibre
]]

ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_empty"		then	return "reload_empty_u"		end
	if	curanim == "reload"				then	return "reload_u"			end
	if	curanim == "reload_fail"		then	return "reload_u_fail"		end
end

ATT.SortOrder = 1
ATT.Category = "bf1942_dc_ak47_cal"
ATT.ActivateElements = {"cal_2"}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak_cal2")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Interceptor Conversion]]
ATT.CompactName = [[C. Tabuk]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ .338 Calibre
]]

ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_empty"		then	return "reload_empty_tabuk"		end
	if	curanim == "reload"				then	return "reload_tabuk"			end
	if	curanim == "reload_fail"		then	return "reload_tabuk_fail"		end
end
ATT.ShootSound = {"myt_bf1942/dc/tabuk.wav"}
--ATT.ShootSoundSilenced = "gekolt_css/tmp-1.wav"

ATT.SortOrder = 30
ATT.Category = "bf1942_dc_ak47_cal"
ATT.ActivateElements = {"cal_3"}
ATT.ClipSizeOverride = 20
ATT.Penetration = 20

ATT.SpreadMult = 1.5
ATT.SpreadSights = 0.001
ATT.DamageMaxMult = 0.75
ATT.DamageMinMult = 5

ATT.Firemodes = {
    {
        Mode = 1,
    },
}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak_cal3")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Stinger Conversion]]
ATT.CompactName = [[C. Scorpion]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ 9mm (?) Calibre
]]

ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_empty"		then	return "reload_empty_scor"		end
	if	curanim == "reload"				then	return "reload_scor"			end
	if	curanim == "reload_fail"		then	return "reload_scor_fail"		end
	if	curanim == "fire"				then	return "fire_smg"				end
end
ATT.ShootSound = {"myt_bf1942/dc/scorpion.wav"}

ATT.SortOrder = -10
ATT.Category = "bf1942_dc_ak47_cal"
ATT.ActivateElements = {"cal_4"}

ATT.RPMMult = 800 / 600
ATT.Penetration = 1

ATT.SpreadMult = 0.75
ATT.SpreadSights = 0.01
ATT.DamageMaxMult = 0.5
ATT.DamageMinMult = 0.75

ATT.Ammo = "pistol"
ATT.ShellModel = "models/weapons/shell.mdl"
ATT.ShellScale = 0.5

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak_cal4")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Outlaw Conversion]]
ATT.CompactName = [[C. Saiga]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ 12ga Calibre
]]
-- has to do it manually otherwise it would stack
ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_empty"		then	return "reload_empty_saiga"		end
	if	curanim == "reload"				then	return "reload_saiga"			end
	if	curanim == "reload_fail"		then	return "reload_saiga_fail"		end	
	if	curanim == "fire"				then	return "fire_sg"				end	
	if	curanim == "fire_iron"			then	return "fire"					end
end

ATT.ShootSound = {"myt_bf1942/dc/Saiga12k.wav"}

ATT.SortOrder = 100
ATT.Category = "bf1942_dc_ak47_cal"
ATT.ActivateElements = {"cal_5", "barrel_sg"}
ATT.ExcludeElements = {"hg_4"}

ATT.ClipSizeOverride = 8

ATT.RPMMult = 300 / 600

ATT.NumOverride = 10
ATT.SpreadAdd = 0.01
ATT.SpreadSights = 0.1
ATT.DamageMaxMult = 0.4
ATT.DamageMinMult = 0.4

ATT.RecoilMult = 4
ATT.RecoilPatternDriftMult = 5
ATT.Penetration = 2


ATT.Ammo = "buckshot"
ATT.ShellModel = "models/weapons/shotgun_shell.mdl"
ATT.ShellScale = 0.5

ATT.Attachments = {
    {
        PrintName = "Ammo Type",
        DefaultName = "Default Type",
        Category = {"css_ammo_sg"},
        Pos = Vector(1, 0, -3.5),
        Ang = Angle(0, 0, 0),
    },
}


ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak_cal5")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Thundercharge Conversion]]
ATT.CompactName = [[C. Dragunov]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[khyber
bolt action
]]
ATT.CanReloadWhileUnCycled = true
-- refer to berdan mag convert for doc
ATT.Bodge_Cycle = 0
ATT.Hook_BlockAnimation = function(wep, curanim)
	if wep.Bodge_Cycle == 1 then
	if	curanim == "cycle" 				then return true end
	if	curanim == "cycle_iron" 		then return true end
	end
end
ATT.Hook_EndReload = function(wep, curanim, ammoType)
	if wep.Bodge_Cycle == 1 and wep:Clip1() < wep:GetValue("ClipSize") and wep:Clip1() > 0 then -- very inelegant way of doing it
		wep:GetOwner():GiveAmmo( wep:GetValue("ChamberSize"), wep:GetPrimaryAmmoType(), true )	 -- give back boolets
		wep:SetClip1(wep:GetValue("ClipSize") ) -- force NOT +1 in chamber
	end
end
-- has to do it manually otherwise it would stack
ATT.Hook_TranslateAnimation = function(wep, curanim)
	if wep:GetNeedsCycle() then
		if curanim == "reload" or curanim == "reload_fail" then 
			wep.Bodge_Cycle = 1 
			if wep:Clip1() == wep:GetValue("ClipSize") then
				return "reload_bolt_fast_single"
			else
				return "reload_bolt_fast"
			end
		end
		if	curanim == "reload_empty" then 
			wep.Bodge_Cycle = 1 
			return "reload_bolt_fast_dry"
		end	
	else
		if	curanim == "reload_empty"	then	return "reload_empty_bolt"		end
		if	curanim == "reload"			then	return "reload_bolt"			end
		if	curanim == "reload_fail"	then	return "reload_bolt"			end	
	end

	if	curanim == "fire"		then	wep.Bodge_Cycle = 0 return "fire_bolt"	end	
	if	curanim == "fire_iron"	then	wep.Bodge_Cycle = 0 return "fire_bolt"	end	
end

--ATT.ShootSound = {"myt_bf1942/dc/Saiga12k.wav"}

ATT.SortOrder = 1000
ATT.Category = "bf1942_dc_ak47_cal"
ATT.ActivateElements = {"cal_6",}

ATT.ClipSizeOverride = 6
ATT.SupplyLimitOverride = 4

ATT.SpreadAdd = -0.0025
ATT.SpreadSights = 0.001
ATT.DamageMaxMult = 3
ATT.DamageMinMult = 4.5

ATT.RecoilMult = 3
ATT.RecoilPatternDriftMult = 5
ATT.Penetration = 32
ATT.ManualAction = true
ATT.NoShellEjectManualAction = true
ATT.ManualActionNoLastCycle = false


--ATT.Ammo = "buckshot"
--ATT.ShellModel = "models/weapons/shotgun_shell.mdl"
ATT.ShellScale = 1.25


ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak_cal6")


----------------------------------------------------------------------------------

----------------------------------------------------------
----
----------------------------------------------------------
---- Extra ----
----------------------------------------------------------
----
----------------------------------------------------------

ATT = {}

ATT.PrintName = [[Draco Keymod]]
ATT.CompactName = [[DRAKE]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Keymod rail for pistols, shaped like a

like a
]]

ATT.SortOrder = -0.1
ATT.Category = "bf1942_dc_pistol_frame"
ATT.ActivateElements = {"f_draco"}
ATT.ExcludeElements = {"b_1", "b_3"}


ATT.Attachments = {
    {
	PrintName = "Optic",
	Category = {"optic_css"},
	InstalledElements = {"has_optic"},
	Pos = Vector(1, 0, -1.3),
	Ang = Angle(0, 0, 0), 
	ExtraSightDistance = 8,
	Icon_Offset = Vector(0, 0, 0),
    },
    {
	PrintName = "Mount D.",
	Category = {"grip_css"},
	InstalledElements = {"has_grip"},
	Pos = Vector(-3,0, 2.6),
	Ang = Angle(0, 0, 0),
	MergeSlots = {3},
    }, 
	{
	PrintName = "",
	DefaultName = "",
	Hidden = true,
	Category = {"tac_css"},
	Pos = Vector(-3,0, 2.6),
	Ang = Angle(0, 0, 180),
    },
}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_rail_pistol_draco")

----------------------------------------------------------
---- Underhand Knife ----
----------------------------------------------------------

ATT = {}
ATT.PrintName = [[Knife]]
ATT.CompactName = [[U. Knife]]
ATT.Icon = Material("entities/gekolt_css_blank.png")
ATT.Description = [[Stab people
]] 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Model = "models/weapons/myt_bf1942/atts/dc/c_knife_uhand.mdl"
ATT.LHIK = true
ATT.ActivateElements = {"underhand_hand", "is_melee"}

ATT.IKAnimationProxy = {
	["bash"] = {
        Source = {"knife"},
        MinProgress = 0.6,
		FireASAP = true,
		Mult = 0.8,
    },	
	["idle_knife"] = {
        Source = {"idle_knife"},
		Time = 0.1,
    },
	
    ["reload_knife_start"] = {
        Source = "reload_knife_start",
        EventTable = {
            --{s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
        },
		FireASAP = false,
		Mult = 0.2,
    },	
    ["knife_hide"] = {
        Source = "knife_hide",
		FireASAP = false,
    },
    ["reload_knife_end"] = {
        Source = "reload_knife_end",
        EventTable = {
            --{s =  "myt_bf1942/dc/ak_foley3.ogg" ,   t = 1 / 40},  
        },
		FireASAP = false,
    },
} -- When an animation event plays, override it with one based on this LHIK model.

-- ATT.IKAnimationAlsoPlayBase = true	 ---?? does this fucking work
-- cant play both of them?
-- possible bodge: play reload_knife_start and THEN play the actual reload anim


--works, kind of, jitters a bit and reload stage gets undefined for some reason so you can still shoot and shit during reload
ATT.Hook_PostReload = function(wep)
	wep:PlayAnimation("reload_knife_start")

	timer.Create("Bodge", 1/32, 1, function()
	wep:PlayAnimation("reload")
	end)
end

ATT.Hook_EndReload = function(wep)
	wep:SetReloading(false)
	wep:PlayAnimation("reload_knife_end")
	timer.Simple(1/32, function() wep:PlayAnimation("idle_knife") end)
	 -- force snap to idle
end

ATT.HookP_BlockFire = function(wep, curanim)	
	if	wep:GetReloading()	then return true end
end

--backup
--[[ATT.DrawFunc = function(wep, model) 
	if wep:GetReloading() then
		model:SetModel("models/weapons/myt_bf1942/atts/dc/c_knife_uhand2.mdl")
	else
		model:SetModel("models/weapons/myt_bf1942/atts/dc/c_knife_uhand.mdl")
	end
end]]

ATT.IKGunMotionQCA = 2
ATT.MuzzleDeviceUBGL = false

ATT.IKCameraMotionQCA = nil
ATT.IKCameraMotionOffsetAngle = Angle(0, 90, 0)

-- the fuck do these do
ATT.IKGunMotionOffset = Vector(0, 0, 0)
ATT.IKGunMotionOffsetAngle = Angle(0, 0, 0)

ATT.IKGunMotionMult = 0.5
ATT.IKGunMotionAngleMult = 0.5

ATT.Category = {"bf1942_dc_underhand"}

ATT.AimDownSightsTimeMult = 1.2
ATT.SprintToFireTimeMult = 1.2

ATT.Bash = true
ATT.PrimaryBash = false
ATT.BashDamage = 60
ATT.BashLungeRange = 0
ATT.BashRange = 64
ATT.PreBashTime = 0.2
ATT.PostBashTime = 0.4

ATT.ModelOffset = Vector(-5, -1, -2)

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_uh_knife")

----------------------------------------------------------
---- Pistol Pointshooting ----
----------------------------------------------------------

ATT = {}
ATT.PrintName = [[One Handed]]
ATT.CompactName = [[1H]]
ATT.Icon = Material("entities/gekolt_css_blank.png")
ATT.Description = [[Doctrin
]] 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0
ATT.ExcludeElements = {"has_grip"}

ATT.LHIK = true
ATT.LHIK_Priority = 10
 
ATT.Scale = 1
ATT.ModelOffset = Vector(-12, -5, -10)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Model = "models/weapons/myt_bf1942/dc/c_mp5_ik_k.mdl"

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(-1, 2, 0)
end

ATT.ActiveAngHook = function(wep, ang)
    return ang + Angle(0, 0, -5)
end

ATT.AimDownSightsTimeMult = 0.6
ATT.SprintToFireTimeMult = 0.6

ATT.PeekPos = Vector(0.5, -2.5, -7.25)
ATT.PeekAng = Angle(0, 0, -80)


ATT.Category = {"bfc_onehand_pistol"}

ARC9.LoadAttachment(ATT, "myt_bf1942_bfc_pshoot")

----------------------------------------------------------
---- SMG Pointshooting ----
----------------------------------------------------------

ATT = {}
ATT.PrintName = [[One Handed]]
ATT.CompactName = [[1H]]
ATT.Icon = Material("entities/gekolt_css_blank.png")
ATT.Description = [[Doctrin
]] 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.LHIK = true
ATT.LHIK_Priority = 10
 
ATT.Scale = 1
ATT.ModelOffset = Vector(-12, -5, -10)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Model = "models/weapons/myt_bf1942/dc/c_mp5_ik_k.mdl"

ATT.ActivePosHook = function(wep, vec)
	if wep:GetElements()["s_4"] then
		return vec + Vector(0.5, 0, 0)
	else
	    return vec + Vector(0.5, 4, 0)
	end
end

ATT.ActiveAngHook = function(wep, ang)
    return ang + Angle(0, 0, -5)
end

ATT.PeekPosHook = function(wep, vec)
	if wep:GetElements()["s_4"] then
		return vec + Vector(-0.5, -2, 2)
	else
		return vec + Vector(0, 0, 0)
	end
end

ATT.PeekAngHook = function(wep, ang)
	if wep:GetElements()["s_4"] then
		return ang + Angle(0, 0, 10)
	else
		return ang + Angle(0, 0, 0)
	end
end

ATT.PeekPos = Vector(1.5, 8, -6.5)
ATT.PeekAng = Angle(0, 0, -75)

ATT.SprintPosHook = function(wep, vec)
	if wep:GetElements()["s_4"] then
		return vec + Vector(-0.5, -8, -9)
	else
		return vec + Vector(0, 0, 0)
	end
end

ATT.AimDownSightsTimeMult = 0.6
ATT.SprintToFireTimeMult = 0.6

ATT.SprintPos = Vector(4, 8, -10)
ATT.SprintAng = Angle(0, 60, 0)


ATT.Category = {"bfc_onehand_smg"}

ARC9.LoadAttachment(ATT, "myt_bf1942_bfc_pshoot2")

----------------------------------------------------------
---- SMOL Spotting ----
----------------------------------------------------------


ATT = {}
ATT.PrintName = [[Mk-217 Spotting Rifle]]
ATT.CompactName = [[Mk-217]]
ATT.Icon = Material("entities/gekolt_css_blank.png")
ATT.Description = [[Rechambered in 5.56x45mm because the rocket does not have drop off]] 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.IKGunMotionQCA = 2
ATT.MuzzleDeviceUBGL = true

ATT.Hook_TranslateAnimation = function(wep, curanim)
	local b_sight 	= wep:GetInSights()
	local b_ugbl 	= wep:GetUBGL(true)	

	if	curanim == "fire" and b_sight and b_ugbl	then	return "fire_spot_ads"	end
	if	curanim == "fire" and b_ugbl				then	return "fire_spot"	end

	--if	curanim == "reload_ubgl_empty" 				then	return "spot_dry"		end	-- cant change this, i deliberately using different name for this shit, oh well, hope it wont break the off hands
	-- update, it breaks off hand, doing it manually in the weapon lua instead
end
ATT.UBGLIntegralReload = true
ATT.DoFireAnimationUBGL = true

ATT.BashUBGL = false
ATT.PrimaryBashUBGL = false
ATT.BottomlessClipUBGL = false
ATT.NoShellEjectUBGL = false
ATT.CaseEffectQCAUBGL = 2

ATT.Category = {"bf1942_dc_smol"}
ATT.ActivateElements = {"has_integral_ubgl"}
ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1

ATT.UBGL = true
ATT.UBGLAmmo = "smg1"
ATT.UBGLClipSize = 20
ATT.UBGLFiremode = -1
ATT.UBGLFiremodeName = "Spotting"
ATT.UBGLChamberSize = 1
ATT.ShootVolumeUBGL = 110
ATT.RPMUBGL = 600

ATT.SpreadUBGL = 0.0075
ATT.SpreadMultHipFiredUBGL = 1
ATT.FreeAimRadiusUGBL = 10

ATT.FirstShootSoundUBGL = false
ATT.ShootSoundUBGL = "myt_bf1942/dc/smol_spot.ogg"
ATT.DistantShootSoundUBGL = false
ATT.HasSightsUBGL = true


ATT.NumUBGL = 1
-- General recoil multiplier
ATT.RecoilUBGL = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
ATT.RecoilUpUBGL = 0.5 -- Multiplier for vertical recoil
ATT.RecoilSideUBGL = 0.3 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
ATT.RecoilRandomUpUBGL = 0.5
ATT.RecoilRandomSideUBGL = 0.5

ATT.RecoilDissipationRateUBGL = 50 -- How much recoil dissipates per second.
ATT.RecoilResetTimeUBGL = 0 -- How long the gun must go before the recoil pattern starts to reset.

ATT.RecoilAutoControlUBGL = 0 -- Multiplier for automatic recoil control.

ATT.RecoilKickUBGL = 1

ATT.DamageTypeUBGL = DMG_BULLET
ATT.DamageMaxUBGL = 38 -- Damage done at point blank range
ATT.DamageMinUBGL = 14 -- Damage done at maximum range

ATT.DamageRandUBGL = 0.3 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

ATT.RangeMinUBGL = 400 -- How far bullets retain their maximum damage for.
ATT.RangeMaxUBGL = 6000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

ATT.PenetrationUBGL = 7 -- Units of wood that can be penetrated by this gun.

ATT.MuzzleParticleUBGL = "muzzleflash_3"

ATT.PeekPosUBGL = Vector(-3, 3, -4.5)
ATT.PeekAngUBGL = Angle(0, 0.4, -35)

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_smol_spotting")


----------------------------------------------------------
----------------------------------------------------------
---- [[SCOPES]] ----
----------------------------------------------------------
----------------------------------------------------------


----------------------------------------------------------
---- VSS ----
----------------------------------------------------------


ATT = {}

ATT.PrintName = [[PSO-1 Scope]]
ATT.CompactName = [[PSO-1]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[4x
|^|
]]
ATT.SortOrder = 4

ATT.Model = "models/weapons/myt_bf1942/atts/scope_vss.mdl"
ATT.ModelBodygroups = "000"

ATT.Category = {"bfc_optic_dove"}
ATT.Folder = "Dove Mount"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(-0.255, 12, -3.445),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 40
    },
}

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(0.25, 0, -1)
end

ATT.SprintPosHook = function(wep, vec)
    return vec + Vector(0, 0, -2.5)
end

ATT.PeekPos = Vector(2, 2, -1.2)
ATT.PeekAng = Angle(0, 0, 0)

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 3
ATT.RTScopeMagnification = 4
ATT.ScopeScreenRatio = 500/1080
ATT.RTScopeReticle = Material("myt_bfc_reticle/pso1.png")--, "mips smooth")
ATT.RTScopeReticleScale = 0.98
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 7

ATT.SwayAdd = 0.05
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.12
ATT.SprintToFireTimeAdd = 0.05

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_optic_vss")


----------------------------------------------------------
---- Tabek ----
----------------------------------------------------------


ATT = {}

ATT.PrintName = [[Tabuk Scope]]
ATT.CompactName = [[Tabuk]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[6x
hes so sad
]]
ATT.SortOrder = 6

ATT.Model = "models/weapons/myt_bf1942/atts/scope_tabek.mdl"
ATT.ModelBodygroups = "000"
ATT.ModelOffset = Vector(0, -0.2, -0.5)

ATT.Category = {"bfc_optic_dove"}
ATT.Folder = "Dove Mount"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(-0.07, 15, -3.9),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 40
    },
}

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(0.25, 0, -1.5)
end

ATT.SprintPosHook = function(wep, vec)
    return vec + Vector(0, 0, -3)
end

ATT.PeekPos = Vector(2, 2, -1.2)
ATT.PeekAng = Angle(0, 0, 0)

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 3
ATT.RTScopeMagnification = 6
ATT.ScopeScreenRatio = 512/1080
ATT.RTScopeReticle = Material("myt_bfc_reticle/tabuk.png")--, "mips smooth")
ATT.RTScopeReticleScale = 1
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 7

ATT.SwayAdd = 0.05
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.12
ATT.SprintToFireTimeAdd = 0.05

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_optic_tabek")


----------------------------------------------------------
---- SMAW ----
----------------------------------------------------------


ATT = {}

ATT.PrintName = [[SMAW Scope]]
ATT.CompactName = [[SMAW]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[2.5x
lots of useless triangle
]]
ATT.SortOrder = 2.5

ATT.Model = "models/weapons/myt_bf1942/atts/scope_smaw.mdl"
ATT.ModelBodygroups = "000"
ATT.ModelOffset = Vector(0, 0, -0.2)
ATT.Category = {"bfc_optic_dove"}
ATT.Folder = "Dove Mount"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0.9375, 11, -2.605),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 40
    },
}

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(0.5, 0, -1)
end

ATT.SprintPosHook = function(wep, vec)
    return vec + Vector(0, 0, -1)
end

ATT.PeekPos = Vector(-1.2, 2, -1.2)
ATT.PeekAng = Angle(0, 0, 0)

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 3
ATT.RTScopeMagnification = 2.5
ATT.ScopeScreenRatio = 420/1080
ATT.RTScopeReticle = Material("myt_bfc_reticle/smaw.png")--, "mips smooth")
ATT.RTScopeReticleScale = 1
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 7

ATT.SwayAdd = 0.05
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.12
ATT.SprintToFireTimeAdd = 0.05

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_optic_smaw")


----------------------------------------------------------
---- RPG ----
----------------------------------------------------------


ATT = {}

ATT.PrintName = [[RPG Scope]]
ATT.CompactName = [[RPG]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[2.5x
Rocket
]]
ATT.SortOrder = 2

ATT.Model = "models/weapons/myt_bf1942/atts/scope_rpg.mdl"
ATT.ModelBodygroups = "000"

ATT.Category = {"bfc_optic_dove"}
ATT.Folder = "Dove Mount"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0.665, 9, -2.53),
        Ang = Angle(0, 0, 0),
        Magnification = 1.5,
        ViewModelFOV = 40
    },
}

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(0.5, 0, -1)
end

ATT.SprintPosHook = function(wep, vec)
    return vec + Vector(0, 0, -1)
end

ATT.PeekPos = Vector(-1.2, 2, -1.2)
ATT.PeekAng = Angle(0, 0, 0)

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 3
ATT.RTScopeMagnification = 2
ATT.ScopeScreenRatio = 420/1080
ATT.RTScopeReticle = Material("myt_bfc_reticle/rpg.png")--, "mips smooth")
ATT.RTScopeReticleScale = 1
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 7

ATT.SwayAdd = 0.05
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.12
ATT.SprintToFireTimeAdd = 0.05

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_optic_rpg")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Hydra Conversion]]
ATT.CompactName = [[C. Hydra]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[two of them
]]

ATT.SortOrder = 2
ATT.Category = "bf1942_dc_hpb_frame"
ATT.ActivateElements = {"b_1"}

ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_empty"		then	return "reload_empty_hydra"		end
	if	curanim == "reload"				then	return "reload_hydra"			end	
	--if	curanim == "reload_empty_fail"	then 	return "reload_empty_hydra_fail"	end	
	--if	curanim == "reload_fail"		then 	return "reload_hydra_fail"		end	
end

ATT.ClipSizeMult = 2
ATT.NumOverride = 2
ATT.AmmoPerShot = 2
ATT.ChamberSize = 2
ATT.RPMMult = 0.75
ATT.PhysBulletMuzzleVelocityAdd = -100 * 12

ATT.TriggerDelayTime = 0.2
--ATT.MalfunctionMeanShotsToFailAdd = -2
ATT.SpreadMultSights = 0.0125/0.0025

ATT.RecoilMult = 2
ATT.RecoilPatternDriftMult = 2

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_hpb1")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Cyclone Barrel]]
ATT.CompactName = [[B. Cyclone]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Full Auto
]]

ATT.SortOrder = 2
ATT.Category = "bf1942_dc_hpb_frame"
ATT.ActivateElements = {"b_2"}

ATT.RPMMult = 2

ATT.RecoilMult = 1.2
ATT.RecoilPatternDriftMult = 2

ATT.Firemodes = {
    {
        Mode = -1,
    },
}


ARC9.LoadAttachment(ATT, "myt_bf1942_dc_hpb2")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Ranger Barrel]]
ATT.CompactName = [[B. Ranger]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Long
]]

ATT.SortOrder = 2
ATT.Category = "bf1942_dc_hpb_frame"
ATT.ActivateElements = {"b_3"}

ATT.RecoilMult = 0.8
ATT.RecoilPatternDriftMult = 1.5

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_hpb3")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Extended Mag]]
ATT.CompactName = [[M. Ext]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Boolets
]]

ATT.SortOrder = 2
ATT.Category = "bf1942_dc_hpb_mag"
ATT.ActivateElements = {"m_1"}

ATT.ClipSize = 28

ATT.RecoilMult = 0.8
ATT.RecoilPatternDriftMult = 1.5

ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_empty"		then	return "reload_empty_x"		end
	if	curanim == "reload"				then	return "reload_x"			end	
end

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_hpb4")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Ranger Stock]]
ATT.CompactName = [[S. Ranger]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Long
]]

ATT.SortOrder = 2
ATT.Category = "bf1942_dc_hpb_stock"
ATT.ActivateElements = {"s_1"}

ATT.RecoilMult = 0.4
ATT.RecoilPatternDriftMult = 0.5

ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_empty"		then	return "reload_empty_stock"		end
	if	curanim == "reload"				then	return "reload_stock"			end	

	if wep:HasElement("m_1") then
	if	curanim == "reload_empty_x"		then	return "reload_empty_x_stock"		end
	if	curanim == "reload_x"				then	return "reload_x_stock"			end		
	end

		if	curanim == "fire" 				then return "fire_stock"		end	
		if	curanim == "fire_empty" 		then return "fire_stock_last"	end		
end

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_hpb5")


----------------------------------------------------------------------------------