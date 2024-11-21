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
---- Knife ----
----------------------------------------------------------

ATT = {}
ATT.PrintName = [[Knife]]
ATT.CompactName = [[U. Knife]]
ATT.Icon = Material("entities/gekolt_css_blank.png")
ATT.Description = [[
You run faster.
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
---- SMOL Spotting ----
----------------------------------------------------------

ATT = {}
ATT.PrintName = [[Spotting Gun]]
ATT.CompactName = [[Spot]]
ATT.Icon = Material("entities/gekolt_css_blank.png")
ATT.Description = [[Rechambered in 5.56.
]] 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.IKGunMotionQCA = 2
ATT.MuzzleDeviceUBGL = true

ATT.Hook_TranslateAnimation = function(wep, curanim) 
	local lazy = wep:Clip2() == 0
	
	if	curanim == "enter_ubgl" 					then	return "ugbl_switch"	end
	if	curanim == "exit_ubgl" 						then	return "ugbl_switch"	end
	if	curanim == "fire_ubgl" 						then	return "fire_spot"		end
	if	curanim == "fire_ubgl_iron" 				then	return "fire_spot_ads"	end
	if	curanim == "reload_ubgl" 					then	return "spot_wet"		end
	if	curanim == "reload_ubgl_empty"	and lazy	then	return "spot_dry"		end
	if	curanim == "reload_ubgl"		and lazy 	then	return "spot_dry"		end

end
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
ATT.ShootSoundUBGL = "myt_bf1942/dc/PSS_fire_st.wav"
ATT.DistantShootSoundUBGL = false
ATT.HasSightsUBGL = true


ATT.NumUBGL = 1
-- General recoil multiplier
ATT.RecoilUBGL = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
ATT.RecoilUpUBGL = 0.7 -- Multiplier for vertical recoil
ATT.RecoilSideUBGL = 0.7 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
ATT.RecoilRandomUpUBGL = 0.5
ATT.RecoilRandomSideUBGL = 0.5

ATT.RecoilDissipationRateUBGL = 50 -- How much recoil dissipates per second.
ATT.RecoilResetTimeUBGL = 0 -- How long the gun must go before the recoil pattern starts to reset.

ATT.RecoilAutoControlUBGL = 0 -- Multiplier for automatic recoil control.

ATT.RecoilKickUBGL = 1

ATT.DamageTypeUBGL = DMG_BULLET
ATT.DamageMaxUBGL = 37 -- Damage done at point blank range
ATT.DamageMinUBGL = 22 -- Damage done at maximum range

ATT.DamageRandUBGL = 0.3 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

ATT.RangeMinUBGL = 300 -- How far bullets retain their maximum damage for.
ATT.RangeMaxUBGL = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

ATT.PenetrationUBGL = 3 -- Units of wood that can be penetrated by this gun.

ATT.MuzzleParticleUBGL = "muzzleflash_pistol"

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_smol_spotting")