local ATT = {}

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

ATT.PrintName = [[Bullpup Kit]]
ATT.CompactName = [[G. Bullpup]]
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
ATT.AimDownSightsTimeMult = 0.75
ATT.SprintToFireTimeMult = 0.75

ATT.CustomizePosHook = function(wep, vec)
    return vec + Vector(5, 0, 0)
end

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(-0.5, -3, -0.5)
end

ATT.BarrelLengthAdd = -10

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

ATT.PrintName = [[VSS Calibre]]
ATT.CompactName = [[Cal. VSS]]
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

ATT.PrintName = [[AKS74U Calibre]]
ATT.CompactName = [[Cal. AKS74U]]
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

ATT.PrintName = [[Tabuk Calibre]]
ATT.CompactName = [[Cal. Tabuk]]
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
ATT.DamageMinMult = 2

ATT.Firemodes = {
    {
        Mode = 1,
    },
}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_ak_cal3")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Scorpion Calibre]]
ATT.CompactName = [[Cal. Scor]]
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

ATT.PrintName = [[Saiga Calibre]]
ATT.CompactName = [[Cal. Saiga]]
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