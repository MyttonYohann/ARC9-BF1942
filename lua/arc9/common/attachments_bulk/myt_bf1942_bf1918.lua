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
ATT.ActivateElements = {"bayonet", "rh_occupied"} -- worst fucking base ever made
ATT.ExcludeElements = {"is_melee"}

ATT.Bash = true


ARC9.LoadAttachment(ATT, "myt_bf1942_bf1942_1918_berdan2")


----------------------------------------------------------------------------------