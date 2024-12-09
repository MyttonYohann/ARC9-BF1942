local ATT = {}

----------------------------------------------------------
---- Keymod Rail Pistol ----
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


ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"optic_css"},
        InstalledElements = {"has_optic"},
        Pos = Vector(1, 0, -1.3),
        Ang = Angle(0, 0, 0),
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

ATT.IKAnimationAlsoPlayBase = true	 ---?? does this fucking work
-- cant play both of them?
-- possible bodge: play reload_knife_start and THEN play the actual reload anim

--works, kind of, jitters a bit and reload stage gets undefined for some reason so you can still shoot and shit during reload
--[[ATT.Hook_PostReload = function(wep)
	wep:PlayAnimation("reload_knife_start")

	timer.Create("Bodge", 0.05, 1, function()
	wep:PlayAnimation("reload")
	end)
end]]

--[[ this works
ATT.Hook_EndReload = function(wep)
	wep:SetReloading(false)
	wep:PlayAnimation("reload_knife_end")
	timer.Create("Bodge2", 0.05, 1, function()
	wep:PlayAnimation("idle_knife") -- force snap to idle
	end)
end]]

--fuck me in the ass SORRY SORRY SORRY
ATT.DrawFunc = function(wep, model) 
	if wep:GetReloading() then
		model:SetModel("models/weapons/myt_bf1942/atts/dc/c_knife_uhand2.mdl")
	else
		model:SetModel("models/weapons/myt_bf1942/atts/dc/c_knife_uhand.mdl")
	end
end

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
--[[ATT.ModelAngleOffset = Angle(0, 0, 0)

--ATT.ActivePosUBGL = Vector(4, 3, 0)
--ATT.ActiveAngUBGL = Angle(5, 0, 20)

--ATT.SprintAngUBGL = Angle(0, -10, 10)
--ATT.SprintPosUBGL = Vector(2, 3, -1)]]

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

ATT.SprintPos = Vector(4, 8, -4)
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
]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/myt_bf1942/atts/scope_vss.mdl"
ATT.ModelBodygroups = "000"

ATT.Category = {"bfc_optic_dove"}
ATT.Folder = "Dove Mount"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(-0.255, 11, -3.445),
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
ATT.RTScopeMagnification = 2.5
ATT.ScopeScreenRatio = 375/1080
ATT.RTScopeReticle = Material("myt_bfc_reticle/pso1.png", "mips smooth")
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
ATT.Description = [[
]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/myt_bf1942/atts/scope_tabek.mdl"
ATT.ModelBodygroups = "000"

ATT.Category = {"bfc_optic_dove"}
ATT.Folder = "Dove Mount"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(-0.07, 14, -3.9),
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
ATT.RTScopeMagnification = 2.5
ATT.ScopeScreenRatio = 375/1080
ATT.RTScopeReticle = Material("myt_bfc_reticle/tabuk.png", "mips smooth")
ATT.RTScopeReticleScale = 0.98
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
ATT.Description = [[
]]
ATT.SortOrder = 1

ATT.Model = "models/weapons/myt_bf1942/atts/scope_smaw.mdl"
ATT.ModelBodygroups = "000"

ATT.Category = {"bfc_optic_dove"}
ATT.Folder = "Dove Mount"

-- Allows a custom sight position to be defined
ATT.Sights = {
    {
        Pos = Vector(0.9375, 12, -2.605),
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
ATT.ScopeScreenRatio = 375/1080
ATT.RTScopeReticle = Material("myt_bfc_reticle/smaw.png", "mips smooth")
ATT.RTScopeReticleScale = 0.98
ATT.RTScopeColorable = true
ATT.RTScopeShadowIntensity = 7

ATT.SwayAdd = 0.05
ATT.FreeAimRadiusMultSights = 0.1
ATT.AimDownSightsTimeAdd = 0.12
ATT.SprintToFireTimeAdd = 0.05

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_optic_smaw")