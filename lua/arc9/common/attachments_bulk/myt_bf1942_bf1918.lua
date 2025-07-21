local ATT = {}


----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

--- Berdan ---

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Outlaw Conversion]]
ATT.CompactName = [[B. Shotgun]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[idk i skimmed through wikipedia and saw shotgun mentioned somewhere
]]
ATT.CustomCons = { Malfunction = "+15%" }
ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_empty"	then	return "reload_empty_sg"	end
	if	curanim == "reload_fail"	then 	return "reload_sg_fail"		end
	if	curanim == "fire"			then 	return "fire_big"			end	
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

ATT.PhysBulletMuzzleVelocity = 1240 * 12
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

ATT.Penetration = 0

ARC9.LoadAttachment(ATT, "myt_bf1942_1918_berdan1")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Tunnerler Conversion]]
ATT.CompactName = [[K. Obrez]] 
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[pistole
]]
ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_empty"	then	return "reload_obrez"		end
	if	curanim == "reload_fail"	then 	return "reload_obrez"		end
	if	curanim == "fire"			then 	return "fire_obrez"			end	
	if	curanim == "idle"			then 	return "idle_obrez"			end	
	if	curanim == "idle_sprint"			then 	return "idle_obrez"			end
	if	curanim == "draw"			then 	return "draw_obrez"			end	
	if	curanim == "ready"			then 	return "draw_obrez"			end	
	if	curanim == "holster"		then 	return "holster_obrez"		end	
end

ATT.CustomizePosHook = function(wep, vec)
    return vec + Vector(-11, 0, 0)
end

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(0, 8, 0)
end

ATT.IronSights = {
    Pos = Vector(-2.705, 8, 3.15),
    Ang = Angle(0,0,0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1.1,
    CrosshairInSights = false
}

ATT.SprintPos = Vector(4, 8, -8)
ATT.SprintAng = Angle(0, 60, 0)

ATT.PeekPos = Vector(1, 0, -2)
ATT.PeekAng = Angle(0, 0, -10)
ATT.ReloadPos = Vector(0, 2, 0)

ATT.BarrelLengthAdd = -45

ATT.SortOrder = -1000
ATT.Category = "bf1942_1918_berdan_cal"
ATT.ActivateElements = {"cal_obrez", "norsight"}
ATT.ExcludeElements = {"rsight"}

ATT.SpreadAdd = 0.005
ATT.SpreadSights = 0.01

ATT.RecoilMult = 4
ATT.RecoilPatternDriftMult = 5
ATT.AimDownSightsTimeMult = 0.4
ATT.SprintToFireTimeMult = 0.4

ARC9.LoadAttachment(ATT, "myt_bf1942_1918_berdan7")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Heretic Kit]]
ATT.CompactName = [[K. Bullpup]] 
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ergonomic
]]
ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_empty"	then	return "reload_bullpup"		end
	if	curanim == "reload_fail"	then 	return "reload_bullpup"		end
	if	curanim == "fire"			then 	return "fire_bullpup"		end	
	if	curanim == "idle"			then 	return "idle_bullpup"		end	
	if	curanim == "idle_sprint"	then 	return "idle_bullpup"		end
	if	curanim == "draw"			then 	return "draw_bullpup"		end	
	if	curanim == "ready"			then 	return "draw_bullpup"		end	
	if	curanim == "holster"		then 	return "holster_bullpup"	end	
end

ATT.CustomizePosHook = function(wep, vec)
    return vec + Vector(11, 0, 0)
end

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(0, -12, 0)
end

ATT.IronSights = {
    Pos = Vector(-2.705, -8, 2.675),
    Ang = Angle(0,0.4,0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1.1,
    CrosshairInSights = false
}

ATT.SprintPos = Vector(6, 3, 1)
ATT.SprintAng = Angle(40, -15, -15)

ATT.PeekPos = Vector(1, 0, -2)
ATT.PeekAng = Angle(0, 0, -10)
ATT.ReloadPos = Vector(0, -1, 0)

ATT.BarrelLengthAdd = 8

ATT.SortOrder = -1000
ATT.Category = "bf1942_1918_berdan_cal"
ATT.ActivateElements = {"cal_bullpup", "norsight"}
ATT.ExcludeElements = {"rsight"}

--ATT.SpreadAdd = -0.00125
--ATT.SpreadSights = 0.01

ATT.AimDownSightsTimeMult = 0.8
ATT.SprintToFireTimeMult = 1.2

ARC9.LoadAttachment(ATT, "myt_bf1942_1918_berdan8")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Anti-Tank Conversion]]
ATT.CompactName = [[B. AT]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Not a 50bmg fitted in a 12ga bore.
Sometimes the gun will wack you when firing.
]]
ATT.CustomCons = { Malfunction = "+20%" }
ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_empty"	then	return "reload_empty_50bmg"	end
	if	curanim == "reload_fail"	then 	return "reload_50bmg_fail"	end	
	if	curanim == "fire"			then 	return "fire_bmg"			end	
end

--ATT.ShootSound = {"myt_bf1942/dc/Saiga12k.wav"}

ATT.SortOrder = 10
ATT.Category = "bf1942_1918_berdan_cal"
ATT.ActivateElements = {"cal_50"}

ATT.SpreadAdd = 0.006
ATT.SpreadSights = 0.025
ATT.DamageMaxMult = 2.75
ATT.DamageMinMult = 1.5

ATT.RecoilMult = 6
ATT.RecoilPatternDriftMult = 7

ATT.PhysBulletMuzzleVelocity = 1540 * 12
ATT.ImpactForce = 12
ATT.Penetration = 24

--ATT.Ammo = "buckshot"
--ATT.ShellModel = "models/weapons/shotgun_shell.mdl"
ATT.ShellScale = 2

ATT.DamageType = DMG_BLAST + DMG_BULLET + DMG_AIRBOAT

ATT.Hook_PrimaryAttack = function(wep)
    local rng = math.Truncate(util.SharedRandom("if stunfisk mention cb lokix again i will kick a dog", 1,100))
	if rng <= 1  then
        -- Stole from 8Z.
        wep:GetOwner():EmitSound("vo/npc/male01/myarm0" .. math.random(1, 2) .. ".wav", 75)
        local dmg = DamageInfo()
        dmg:SetAttacker(wep:GetOwner())
        dmg:SetInflictor(wep)
        dmg:SetDamage(math.random(20, 40))
        dmg:SetDamageType(DMG_GENERIC)
        wep:GetOwner():TakeDamageInfo(dmg)
        wep:GetOwner():ViewPunch(Angle(2, -10, 10))
        -- can't do it right now because the gun isn't done firing yet
        timer.Simple(0, function()
            if IsValid(wep) and IsValid(wep:GetOwner()) then
                wep:GetOwner():DropWeapon(wep, nil, wep:GetOwner():GetForward() * -200 + VectorRand() * 50 + Vector(0, 0, 150))
            end
        end)
	end
end

ARC9.LoadAttachment(ATT, "myt_bf1942_1918_berdan4")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Katyusha Conversion]]
ATT.CompactName = [[B. GL]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Awesome grenade firing mortar mount from famous video game franchise Pocket Mortar™]]
ATT.CustomPros = { Malfunction = "-5%" }
ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_empty"	then	return "reload_empty_rpg"	end
	if	curanim == "reload_fail"	then	return "reload_rpg_fail"	end	
end

--ATT.ShootSound = {"myt_bf1942/dc/Saiga12k.wav"}

ATT.SortOrder = 1
ATT.Category = "bf1942_1918_berdan_cal"
ATT.ActivateElements = {"cal_gl", "norsight"}
ATT.ExcludeElements = {"rsight"}

ATT.SpreadAdd = 0.0075
ATT.SpreadSights = 0.025
ATT.SupplyLimit = 6

ATT.Ammo = "smg1_grenade"
ATT.ShootEnt = "myt_bf1942_1918_gl_launcher"
ATT.ShootEntForce = 20000

ATT.CustomizePosHook = function(wep, vec)
    return vec + Vector(-7, 0, 0)
end

ATT.ActiveAngHook = function(wep, ang)
    return ang + Angle(0, 5, -3)
end

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(0, -1, -2)
end

ARC9.LoadAttachment(ATT, "myt_bf1942_1918_berdan5")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Internal Magazine]]
ATT.CompactName = [[B. Mag]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.CustomCons = { Malfunction = "+25%" }
ATT.Description = [[This thing is basically a mosin innit.
Sometimes the character develops dementia and overload a 6th round.
]]


ATT.SortOrder = 0.1
ATT.Category = "bf1942_1918_berdan_cal"
ATT.ActivateElements = {"cal_mag"}

ATT.ShotgunReload = true
ATT.ManualAction = true
ATT.ManualActionNoLastCycle = false
ATT.CanReloadWhileUnCycled = false
ATT.ClipSize = 5
ATT.SupplyLimit = 4

ATT.DamageMaxMultMult = 0.8
ATT.DamageMinMultMult = 0.8
ATT.SpreadAdd = 0.0025
ATT.SpreadSights = 0.0125

ARC9.LoadAttachment(ATT, "myt_bf1942_1918_berdan6")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Bayonet]]
ATT.CompactName = [[Bayonet]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[This base has the worst melee function ever
]]

ATT.SortOrder = 100
ATT.Category = "bf1942_1918_berdan_cal"
ATT.ActivateElements = {"bayonet"} -- worst fucking base ever made
--ATT.ExcludeElements = {"is_melee"}

ATT.Bash = true

--[[ATT.Hook_TranslateAnimation = function(wep, curanim)
	--if	curanim == "idle_sprint"	then	return "idle_sprint_bayo"		end
	if	curanim == "bash"	then	return "bash_bayo"		end
	if	wep:GetIsSprintingCheck() and	curanim == "bash"	then	return "bash_bayo_sprint"		end
end]]

--[[ATT.Hook_Think = function(wep)
	if wep:GetIsSprintingCheck() then
	--wep:PreBashTime(0.05)
	--wep:PostBashTime(0.6)
	end
end]]


ATT.SprintPos = Vector(0, 2, 1)
ATT.SprintAng = Angle(2, -2, -30)
ATT.NearWallPos = Vector(0, -5, -4)
ATT.NearWallAng = Angle(0, 2, -15)
ATT.BobSprintMult = 0.5


ARC9.LoadAttachment(ATT, "myt_bf1942_1918_berdan2")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Raised Sight]]
ATT.CompactName = [[RSight]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Shooting aircrafts i think
whoops wrong era
]]

ATT.SortOrder = 100
ATT.Category = "bf1942_1918_berdan_sight"
ATT.ActivateElements = {"rsight"}
ATT.ExcludeElements = {"norsight"}

ARC9.LoadAttachment(ATT, "myt_bf1942_1918_berdan3")


----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

--- Webley ---

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Officer Barrel]]
ATT.CompactName = [[B. Short]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Made for the short king market
Aids with trigger press, somehow.
]]

ATT.SortOrder = 1
ATT.Category = "bf1942_1918_webley_barrel"
ATT.ActivateElements = {"b_1"}

ATT.TriggerDelayTime = 0.05

ARC9.LoadAttachment(ATT, "myt_bf1942_1918_webley1")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Auto Barrel]]
ATT.CompactName = [[B. Auto]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[How do you mean that's not what it does?
Does not require a heavy trigger press, effectively an auto single action(?)
More prone to malfuctions. Like very prone
]]

ATT.SortOrder = 1
ATT.Category = "bf1942_1918_webley_barrel"
ATT.ActivateElements = {"b_2"}

ATT.TriggerDelay = false
ATT.MalfunctionMeanShotsToFailAdd = -4

ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_empty"		then	return "reload_empty_auto"		end
	if	curanim == "reload"				then	return "reload_auto"			end	
	if	curanim == "fire"				then	return "fire_auto"				end
	if	curanim == "reload_empty_fail"	then 	return "reload_empty_auto_fail"	end	
	if	curanim == "reload_fail"		then 	return "reload_auto_fail"		end	
end


ARC9.LoadAttachment(ATT, "myt_bf1942_1918_webley2")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Hydra Barrel]]
ATT.CompactName = [[B. Hydra]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[may cry
]]

ATT.SortOrder = 2
ATT.Category = "bf1942_1918_webley_barrel"
ATT.ActivateElements = {"b_3"}

ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_empty"		then	return "reload_empty_hydra"		end
	if	curanim == "reload"				then	return "reload_hydra"			end	
	if	curanim == "reload_empty_fail"	then 	return "reload_empty_hydra_fail"	end	
	if	curanim == "reload_fail"		then 	return "reload_hydra_fail"		end	
end

ATT.NumOverride = 2
ATT.AmmoPerShot = 2
ATT.PhysBulletMuzzleVelocityAdd = -100 * 12

ATT.TriggerDelayTime = 0.2
ATT.MalfunctionMeanShotsToFailAdd = -2
ATT.SpreadMultSights = 0.0125/0.0025

ATT.RecoilMult = 2
ATT.RecoilPatternDriftMult = 2

ATT.BulletBones = { 
    [1] = "W_Ammo2",
    [3] = "W_Ammo3", 
	[5] = "W_Ammo4",  
	[2] = "W_Ammo5",  
	[4] = "W_Ammo6",
	[6] = "W_Ammo1",
}

ARC9.LoadAttachment(ATT, "myt_bf1942_1918_webley3")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Carabiner Barrel]]
ATT.CompactName = [[B. Carbine]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[long shlong
]]

ATT.SortOrder = 3
ATT.Category = "bf1942_1918_webley_barrel"
ATT.ActivateElements = {"b_4"}

ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_empty"		then	return "reload_empty_rifle"		end
	if	curanim == "reload"				then	return "reload_rifle"			end	
	if	curanim == "reload_empty_fail"	then 	return "reload_empty_rifle"		end	
	if	curanim == "reload_fail"		then 	return "reload_rifle"			end	

	if	curanim == "idle"				then 	return "idle_rifle"				end	
	if	curanim == "draw"				then 	return "draw_rifle"				end	
	if	curanim == "ready"				then 	return "draw_rifle"				end	
	if	curanim == "holster"			then 	return "holster_rifle"			end	
	if	curanim == "fire"				then 	return "fire_rifle"				end	
	if	curanim == "trigger"			then 	return "trigger_rifle"			end	
	if	curanim == "untrigger"			then 	return "untrigger_rifle"		end	
end

ATT.ActivePosHook = 	function(wep, vec)	return vec + Vector(0, -1, -0.5) end

ATT.TriggerDelayTime = 0.2
ATT.Malfunction = false
ATT.SpreadMultSightsMult = 0.5
ATT.SpreadMult = 0.5

ATT.RecoilMult = 0.8
ATT.RecoilPatternDriftMult = 0.5

ATT.AimDownSightsTimeMult = 1.5
ATT.SprintToFireTimeMult = 1.5
ATT.BarrelLengthAdd = 24

ATT.SprintPos = Vector(2, 5, -2)
ATT.SprintAng = Angle(40, -15, -15)

ATT.HoldType = "ar2"
ATT.HoldTypeSights = "ar2"

ATT.IronSights = {
    Pos = Vector(-2.705, 5, 0.875),
    Ang = Angle(0,0,0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1.1,
    CrosshairInSights = false
}

ARC9.LoadAttachment(ATT, "myt_bf1942_1918_webley4")


----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Duel Barrel]]
ATT.CompactName = [[B. Duel]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Single shot, long bullet
]]

ATT.SortOrder = 1
ATT.Category = "bf1942_1918_webley_barrel"
ATT.ActivateElements = {"b_5"}

ATT.TriggerDelayTime = 0.3
ATT.Malfunction = false
ATT.BarrelLengthAdd = 6
ATT.ClipSize = 1
ATT.DamageMaxMult = 1.3
ATT.DamageMinMult = 1.25
ATT.Penetration = 16

ATT.BulletBones = { 
    [1] = "W_Ammo1",
}


ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_empty"		then	return "reload_single"			end
	if	curanim == "reload"				then	return "reload_single"			end
	if	curanim == "reload_empty_fail"	then 	return "reload_single"			end
	if	curanim == "reload_fail"		then 	return "reload_single"			end
	if	curanim == "fire"				then 	return "fire_single"			end
	if	curanim == "trigger"			then 	return "trigger_single"			end
	if	curanim == "untrigger"			then 	return "untrigger_single"		end
end

ARC9.LoadAttachment(ATT, "myt_bf1942_1918_webley5")

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

--- Winchester ---

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Hydra Barrel]]
ATT.CompactName = [[B. Hydra]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[olimpa
]]
--ATT.CustomCons = { Malfunction = "+15%" }
ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload" and wep:Clip1() == 0			then	return "dry_hydra"			end
	if	curanim == "reload"	and wep:HasElement("dovemount")	then	return "wet_hydra_optic"	end
	if	curanim == "reload"									then	return "wet_hydra"			end
end

ATT.Firemodes = {
    {
        Mode = 1,
    },
}

ATT.SortOrder = 120
ATT.Category = "bf1942_fh_winch_cal"
ATT.ActivateElements = {"cal_hydra"}

ATT.NumOverride = 14
ATT.DamageMaxMult = 1.3
ATT.DamageMinMult = 1.3

ATT.PhysBulletMuzzleVelocityAdd = 400 * 12
ATT.ImpactForce = 6

ATT.Penetration = 2

ATT.ShotgunReload = false
ATT.ManualAction = false
ATT.ClipSize = 2
ATT.ChamberSize = 0

ATT.LHIK = true
ATT.LHIK_Priority = 0.01
 
ATT.Scale = 1
ATT.ModelOffset = Vector(-22, -2.6, 3.5)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Model = "models/weapons/myt_bf1942/1918/c_winchester.mdl"
ATT.ModelBodygroups = "43740"

ARC9.LoadAttachment(ATT, "myt_bf1942_fh_winch1")


----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Monolith Barrel]]
ATT.CompactName = [[B. Monolith]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[same diameter
]]
--ATT.CustomCons = { Malfunction = "+15%" }
ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload" and wep:Clip1() == 0	then	return "dry_monolith"	end
	if	curanim == "reload"							then	return "dry_monolith"	end

	if	curanim == "fire"		then	return "fire_monolith"	end
end

ATT.SortOrder = 100
ATT.Category = "bf1942_fh_winch_cal"
ATT.ActivateElements = {"cal_monolith"}

ATT.Firemodes = {
    {
        Mode = 1,
    },
}

ATT.NumOverride = 1
ATT.DamageMaxMult = 14
ATT.DamageMinMult = 12
ATT.DamageType = DMG_BLAST + DMG_BULLET + DMG_AIRBOAT
ATT.RecoilMult = 2
ATT.RecoilPatternDriftMult = 2
ATT.SpreadMultSights = 0.0005/0.0025

ATT.PhysBulletMuzzleVelocityAdd = 800 * 12
ATT.ImpactForce = 12

ATT.Penetration = 20

ATT.ShotgunReload = false
ATT.ManualAction = false
ATT.ClipSize = 1
ATT.ChamberSize = 0


ATT.Hook_PrimaryAttack = function(wep)

	if !wep:GetUBGL(true) then

    local rng = math.Truncate(util.SharedRandom("fallout did NOT win best adaptation	lies all of them", 1,100))
	if rng <= 1  then
        -- Stole from 8Z.
        wep:GetOwner():EmitSound("vo/npc/male01/myarm0" .. math.random(1, 2) .. ".wav", 75)
        local dmg = DamageInfo()
        dmg:SetAttacker(wep:GetOwner())
        dmg:SetInflictor(wep)
        dmg:SetDamage(math.random(20, 40))
        dmg:SetDamageType(DMG_GENERIC)
        wep:GetOwner():TakeDamageInfo(dmg)
        wep:GetOwner():ViewPunch(Angle(2, -10, 10))
        -- can't do it right now because the gun isn't done firing yet
        timer.Simple(0, function()
            if IsValid(wep) and IsValid(wep:GetOwner()) then
                wep:GetOwner():DropWeapon(wep, nil, wep:GetOwner():GetForward() * -200 + VectorRand() * 50 + Vector(0, 0, 150))
            end
        end)
	end

	end
end

ARC9.LoadAttachment(ATT, "myt_bf1942_fh_winch4")


----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Cyclone Barrel]]
ATT.CompactName = [[B. Cyclone]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[autofive
]]
--ATT.CustomCons = { Malfunction = "+15%" }
ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_end_empty" 	then	return "reload_end_empty_auto"	end
	if	curanim == "reload_emptoloop"	then	return "reload_emptoloop_auto"	end
	if	curanim == "reload_start_empty"	then	return "reload_start_empty_auto"	end	
	
	if  wep:Clip1() == 0 then
	if	curanim == "fire"		then	return "fire_auto_last"	end
	if	curanim == "idle"		then	return "idle_last"		end
	if	curanim == "draw"		then	return "draw_last"		end	
	if	curanim == "holster"	then	return "holster_last"	end
	end
	if	curanim == "fire"		then	return "fire_auto"	end
end

ATT.SortOrder = 10
ATT.Category = "bf1942_fh_winch_cal"
ATT.ActivateElements = {"cal_auto"}

ATT.Firemodes = {
    {
        Mode = 1,
    },
}

ATT.NumOverride = 8
ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.9

ATT.PhysBulletMuzzleVelocityAdd = -200 * 12
ATT.ImpactForce = 2

ATT.ManualAction = false
ATT.ClipSize = 5
ATT.RPMMult = 300/500

ATT.LHIK = true
ATT.LHIK_Priority = 0.01
 
ATT.Scale = 1
ATT.ModelOffset = Vector(-22, -2.6, 3.5)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Model = "models/weapons/myt_bf1942/1918/c_winchester.mdl"
ATT.ModelBodygroups = "43740"

ATT.MalfunctionWait = -1
ATT.Malfunction = true
ATT.MalfunctionMeanShotsToFail = 10
ATT.MalfunctionJam = false

ARC9.LoadAttachment(ATT, "myt_bf1942_fh_winch2")


----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Fireflux Barrel]]
ATT.CompactName = [[B. Flux]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[spasm
dual firemode
]]

ATT.SortOrder = 2
ATT.Category = "bf1942_fh_winch_cal"
ATT.ActivateElements = {"cal_flux"}

ATT.PeekPos = Vector(2, -1, -2)
ATT.PeekAng = Angle(0, 0, -10)

ATT.Firemodes = {
    {
        Mode = 1,
		PrintName = "PUMP",
		ImpactForce = 4,
		RPM = 600,
    }, 
	{
        Mode = 1,
		ManualAction = false,
		ImpactForce = 2,
		RPM = 200,
    },
}

ARC9.LoadAttachment(ATT, "myt_bf1942_fh_winch3")


----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Assault Barrel]]
ATT.CompactName = [[B. Breach]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[they've got urban door breaching back in the first world war?
]]

ATT.SortOrder = 1
ATT.Category = "bf1942_fh_winch_cal"
ATT.ActivateElements = {"cal_breach", "nofg"}

ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_finish" 		then	return "reload_end_breach"			end
	if	curanim == "reload_finish_fail"	then	return "reload_end_breach"			end
	if	curanim == "reload_insert" 		then	return "reload_insert_breach"		end
	if	curanim == "reload_loop_fail"	then	return "reload_insert_breach"		end
	if	curanim == "reload_emptoloop"	then	return "reload_emptoloop_breach"	end
	if	curanim == "reload_start"		then	return "reload_start_breach"		end	
	
end
ATT.ClipSize = 3

ATT.LHIK = true
ATT.LHIK_Priority = 0.01

ATT.Scale = 1
ATT.ModelOffset = Vector(-8.5, 0.5, -4.5)
ATT.ModelAngleOffset = Angle(0, 5, 0)
ATT.Model = "models/weapons/myt_bf1942/dc/c_mp5_ik_ii.mdl"
ATT.BarrelLengthAdd = -20

ARC9.LoadAttachment(ATT, "myt_bf1942_fh_winch5")


----------------------------------------------------------------------------------

ATT = {}

ATT.PrintName = [[Heretic Kit]]
ATT.CompactName = [[K. Bullpup]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[ergonomic
long barrel allows long tube allows long shell
whoops, more shell
]]

ATT.SortOrder = 1000000
ATT.Category = "bf1942_fh_winch_cal2"
ATT.ActivateElements = {"cal_bullpup", "no_dovetail", "nooh"}

ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "reload_finish" 		then	return "reload_end_bp"			end
	if	curanim == "reload_insert" 		then	return "reload_insert_bp"		end
	if	curanim == "reload_emptoloop"	then	return "reload_emptoloop_bp"	end
	if	curanim == "reload_start"		then	return "reload_start_bp"		end	

	if	curanim == "draw"				then	return "draw_bp"				end	
	if	curanim == "ready"				then	return "ready_bp"				end
	if	curanim == "idle"				then	return "idle_bp"				end
	if	curanim == "holster"			then	return "holster_bp"				end	
	if	curanim == "fire"				then	return "fire_bp"				end
	if	curanim == "cycle"				then	return "cycle_bp"				end	
	if	curanim == "cycle_fail"			then	return "cycle_fail_bp"			end	
	if	curanim == "reload_start_empty"	then	return "reload_start_empty_bp"	end	
	if	curanim == "reload_end_empty"	then	return "reload_end_empty_bp"	end	
	if	curanim == "reload_loop_fail"	then	return "reload_insert_fail_bp"	end	
	if	curanim == "reload_finish_fail"	then	return "reload_end_fail_bp"	end	
	
end
ATT.ClipSize = 10

ATT.IronSights = {
    Pos = Vector(-2.705, -6, -1),
    Ang = Angle(0,0,0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1.1,
    CrosshairInSights = false
}


ATT.CustomizePosHook =	function(wep, vec)	return vec + Vector(6, 0, 0) end
ATT.ActivePosHook = 	function(wep, vec)	return vec + Vector(0.5, -5, -1) end
ATT.ReloadPos = Vector(0, -0.5, 0)

ATT.RHIK = true
ATT.RHIK_Priority = 0.01
 
ATT.Scale = 1
ATT.ModelOffset = Vector(-11, -2.8, 3.8)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Model = "models/weapons/myt_bf1942/1918/c_winchester_ik_bullpup.mdl"
--ATT.ModelBodygroups = "43740"

ARC9.LoadAttachment(ATT, "myt_bf1942_fh_winch6")


----------------------------------------------------------------------------------

---winchester ik bodge

ATT = {}

ATT.PrintName = ""
ATT.CompactName = ""
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[]]
ATT.SortOrder = 10000
ATT.Free = true

ATT.LHIK = true 
ATT.LHIK_Priority = 0.001

ATT.Scale = 1
ATT.ModelOffset = Vector(-20, -2.7, 4)
ATT.ModelAngleOffset = Angle(0, 0, 0)
ATT.Model = "models/weapons/myt_bf1942/1918/c_winchester_ik_bullpup.mdl"


ATT.DrawFunc = function(swep, model) 
	if swep:GetElements()["bf1942_fh_winch_cal2"] then
		model:SetModel("models/weapons/myt_bf1942/1918/c_winchester_ik_bullpup.mdl")
	else
		model:SetModel("models/weapons/myt_bf1942/dc/blank.mdl")
	end
end

ATT.Category = {"fh_winch_bodge"}

ARC9.LoadAttachment(ATT, "myt_bf1942_fh_winch61")
