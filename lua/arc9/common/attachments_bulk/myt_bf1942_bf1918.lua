local ATT = {}

ATT = {}

ATT.PrintName = [[Shotgun Conversion]]
ATT.CompactName = [[Shotgun]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[idk i skimmed through wikipedia and saw shotgun mentioned somewhere
]]
ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_empty"		then	return "reload_empty_sg"	end
end

ATT.ShootSound = {"myt_bf1942/dc/Saiga12k.wav"}

ATT.SortOrder = 100
ATT.Category = "bf1942_1918_berdan_cal"
ATT.ActivateElements = {"cal_sg"}

ATT.NumOverride = 10
ATT.SpreadAdd = 0.01
ATT.SpreadSights = 0.1
ATT.DamageMaxMult = 0.4
ATT.DamageMinMult = 0.4

ATT.RecoilMult = 4
ATT.RecoilPatternDriftMult = 5

ATT.ImpactForce = 4

ATT.Ammo = "buckshot"
ATT.ShellModel = "models/weapons/shotgun_shell.mdl"
ATT.ShellScale = 0.5

ATT.Attachments = {
    {
        PrintName = "Ammo Type",
        DefaultName = "Default Type",
        Category = {"css_ammo_sg"},
        Pos = Vector(7, 0, 0),
        Ang = Angle(0, 0, 0),
    },
}

ATT.CustomCrosshair = true
ATT.CustomCrosshairSingle = true
ATT.CustomCrosshairMaterial = Material("arc9_myt_bf1942/circlehollow.png", "mips smooth")
ATT.CustomCrosshairSize = 70


ARC9.LoadAttachment(ATT, "myt_bf1942_bf1942_1918_berdan1")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Bayonet]]
ATT.CompactName = [[Bayonet]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[THERES A WHOLE OFF HAND WEAPON SYSTEM IN THIS MOD
]]

ATT.SortOrder = 100
ATT.Category = "bf1942_1918_berdan_cal"
ATT.ActivateElements = {"bayonet"} -- worst fucking base ever made
--ATT.ExcludeElements = {"is_melee"}

ATT.Bash = true

ATT.Hook_TranslateAnimation = function(wep, curanim)
	--if	curanim == "idle_sprint"	then	return "idle_sprint_bayo"		end
	if	curanim == "bash"	then	return "bash_bayo"		end
end

ATT.SprintAng = Angle(2, -2, -30)
ATT.SprintPos = Vector(0, 2, 1)
ATT.BobSprintMult = 0.5


ARC9.LoadAttachment(ATT, "myt_bf1942_bf1942_1918_berdan2")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Raised Sight]]
ATT.CompactName = [[RSight]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Tall
]]

ATT.SortOrder = 100
ATT.Category = "bf1942_1918_berdan_sight"
ATT.ActivateElements = {"rsight"}

ARC9.LoadAttachment(ATT, "myt_bf1942_bf1942_1918_berdan3")


----------------------------------------------------------------------------------

--- Webley ---

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Officer Barrel]]
ATT.CompactName = [[B. Short]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Short
]]

ATT.SortOrder = 1
ATT.Category = "bf1942_1918_webley_barrel"
ATT.ActivateElements = {"b_1"}

ATT.TriggerDelayTime = 0.05
ATT.RPMMult = 400/200

ARC9.LoadAttachment(ATT, "myt_bf1942_bf1942_1918_webley1")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Auto Barrel]]
ATT.CompactName = [[B. Auto]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[How do you mean that's not what it does?
]]

ATT.SortOrder = 1
ATT.Category = "bf1942_1918_webley_barrel"
ATT.ActivateElements = {"b_2"}

ATT.TriggerDelay = false

ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_empty"	then	return "reload_empty_auto"		end
	if	curanim == "reload"			then	return "reload_auto"			end	
	if	curanim == "fire"			then	return "fire_auto"				end
end

ATT.Firemodes = {
    {
        Mode = -1,
		RPMMult = 300/200,
    },
    {
        Mode = 1,
		RPMMult = 600/200,
    },
}


ARC9.LoadAttachment(ATT, "myt_bf1942_bf1942_1918_webley2")


----------------------------------------------------------------------------------