local ATT = {}


----------------------------------------------------------
-- PSS --
----------------------------------------------------------


ATT = {}
ATT.PrintName = [[PSS]]
ATT.CompactName = [[PSS]]
ATT.Icon = Material("entities/gekolt_css_blank.png")
ATT.Description = [[
Switching sidearm is faster reload.
]] 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Model = "models/weapons/myt_bf1942/atts/dc/c_pss.mdl"
ATT.RHIK = true
ATT.RHIK_Priority = 10
ATT.ActivateElements = {"off_hand"}

ATT.DrawFunc = function(wep, model, wm)	-- hide gun during normal reload
	if wep:GetReloading() and !wep:GetUBGL(true) then 
	model:SetBodygroup(0,1)
	else
	model:SetBodygroup(0,0)
	end
end

ATT.PeekPosUBGL = Vector(1.5, -5, -1.5)
ATT.PeekAngUBGL = Angle(0, 0, -10)

ATT.IKAnimationProxy = {
	["fire_ubgl"] = { Source = "fire", },	
    ["idle_ubgl"] = { Source = "ubgl", }, 
	["idle_ubgl_sights"] = { Source = "ubgl_sight", }, 
	["idle_ubgl_glempty_sights"] = { Source = "ubgl_sight_last", },  
	["idle_ubgl_sights_nope"] = { Source = "ubgl_sight_last", }, 
	["fire_ubgl_sights"] = { Source = "ubgl_fire_sight", },
	["fire_ubgl_sights_nope"] = { Source = "ubgl_fire_sight_last", },
	["enter_sights_ubgl"] = { Source = "ubgl_to_sight",	Time = 8/40, NoStatAffectors = true, },	
	["enter_sights_ubgl_nope"] = { Source = "ubgl_to_sight_empty",	Time = 8/40, NoStatAffectors = true, },
	
	["fire_ubgl_glempty"] = { Source = "fire_last",  },		
	["fire_ubgl_empty"] = {Source = "fire_last", },
    ["reload_ubgl"] = {
        Source = "ubgl_wet",
        MinProgress = 0.8,
		FireASAP = true,
        EventTable = {		
            {s =  "myt_bf1942/dc/pss_mag1.ogg" ,   t = 1 / 40},
            {s =  "myt_bf1942/dc/pss_mag2.ogg" ,    t = 75 / 40},			
        },
    },  
	["reload_ubgl_empty"] = {
        Source = "ubgl_dry",
        MinProgress = 0.85,
		FireASAP = true,
        EventTable = {		
            {s =  "myt_bf1942/dc/pss_mag1.ogg" ,   t = 1 / 40},
            {s =  "myt_bf1942/dc/pss_mag2.ogg" ,    t = 75 / 40},	
            {s =  "myt_bf1942/dc/pss_bolt.ogg" ,   t = 91/ 40},			
        },
    },
    ["enter_ubgl"] = {
        Source = "to_ubgl",
        MinProgress = 0.65,
		FireASAP = true,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 1, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },
        },
    },
    ["exit_ubgl"] = {
        Source = "from_ubgl",
        MinProgress = 0.7,
		FireASAP = true,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley3.ogg" ,   t = 1 / 40},  
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 1, rhik = 0, },{ t = 1, lhik = 1, rhik = 0, },
        },
    },

    ["enter_ubgl_glempty"] = {
        Source = "to_ubgl_last",
        MinProgress = 0.7,
		FireASAP = true,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 1, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },
        },
    },
    ["exit_ubgl_glempty"] = {
        Source = "from_ubgl_last",
        MinProgress = 0.7,
		FireASAP = true,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley3.ogg" ,   t = 1 / 40},  
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 1, rhik = 0, },{ t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["idle_ubgl_glempty"] = { Source = "ubgl_last" },  
	["idle_ubgl_empty"] = { Source = "ubgl_last" },	
	["holster_ubgl"] = { Source = "ubgl_holster"  },
	["holster_ubgl_empty"] = { Source = "ubgl_holster_last"},

} -- When an animation event plays, override it with one based on this LHIK model.

ATT.IKGunMotionQCA = 2
ATT.MuzzleDeviceUBGL = true

ATT.Hook_TranslateAnimation = function(wep, curanim)
	--[[local lazy = wep:GetInSights() --and wep:GetUBGL(true)
	
	if lazy then
		if	curanim == "idle_ubgl"			then	return "sight_ugbl"		end
		if	curanim == "idle_ubgl_glempty"	then	return "sight_ugbl_empty"		end
		if	curanim == "fire_ubgl"			then	return "fire_sight_ugbl"		end	
		if	curanim == "fire_ubgl_glempty"	then	return "fire_sight_ugbl_empty"		end
		--if	curanim == "fire_iron" 	then	return "fire_ads_510_last"	end
	end]]	-- nope, just do it manually
	
	if wep:Clip2() == 0 then
		if	curanim == "fire_ubgl_sights" 		then	return "fire_ubgl_sights_nope"		end
		if	curanim == "enter_sights_ubgl" 		then	return "enter_sights_ubgl_nope"		end	
		if	curanim == "idle_ubgl_sights" 		then	return "idle_ubgl_sights_nope"		end	
	end

	-- i forgor why i did this and im too afraid to delete this
	if wep:Clip1() == 0 and wep:Clip2() != 0	then	-- well realistically need only check for if clip2 not empty
		if	curanim == "idle_ubgl_empty" 		then	return "idle_ubgl"		end
		if	curanim == "fire_ubgl_empty" 		then	return "fire_ubgl"		end	
		if	curanim == "fire_ubgl_iron_empty" 	then	return "fire_ubgl_iron"	end	
		if	curanim == "reload_ubgl_empty" 		then	return "reload_ubgl"	end	
		if	curanim == "holster_ubgl_empty"		then	return "holster_ubgl"	end
	else	
		return 
	end
end


ATT.BashUBGL = false
ATT.PrimaryBashUBGL = false
ATT.BottomlessClipUBGL = false
ATT.NoShellEjectUBGL = true
ATT.CaseEffectQCAUBGL = 2	-- nope, this still uses the gun qca


ATT.IKGunMotionOffset = Vector(0, 0, 0)
ATT.IKGunMotionOffsetAngle = Angle(0, 0, 0)

ATT.IKGunMotionMult = 0.5
ATT.IKGunMotionAngleMult = 0.5

ATT.Category = {"bf1942_dc_offhand"}

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1

ATT.UBGL = true
ATT.UBGLAmmo = "pistol"
ATT.UBGLClipSize = 8
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "PSS"
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

ATT.ModelOffset = Vector(10, 0, -1)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(4.65, 15, -5.75),
        Ang = Angle(8.5, -4.2, -35),
        Magnification = 1.05,
        ViewModelFOV = 60,
        CrosshairInSights = false,
        Blur = false,
        UBGLOnly = true,
        Disassociate = true,
    },
}

ATT.ActivePosUBGL = Vector(4, 3, 0)
ATT.ActiveAngUBGL = Angle(5, 0, 20)

ATT.SprintAngUBGL = Angle(0, -20, 10)
ATT.SprintPosUBGL = Vector(2, 3, 0)

ATT.CustomizeAngUBGL  = Angle(-90, 40, -5)
ATT.CustomizePosUBGL  = Vector(-12, 28, 7)
ATT.CustomizeRotateAnchorUBGL = Vector(10, -2, -10)

ATT.CustomCrosshairUBGL = false

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_oh_pss")


----------------------------------------------------------
-- R870 --
----------------------------------------------------------


ATT = {}
ATT.PrintName = [[Sawnoff R870]]
ATT.CompactName = [[R870]]
ATT.Icon = Material("entities/gekolt_css_blank.png")
ATT.Description = [[
Switching primary is faster reload.
]] 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Model = "models/weapons/myt_bf1942/atts/dc/c_r870.mdl"
ATT.RHIK = true
ATT.RHIK_Priority = 10
ATT.ActivateElements = {"off_hand"}

ATT.DrawFunc = function(wep, model, wm)	-- hide gun during normal reload
	if wep:GetReloading() and !wep:GetUBGL(true) then 
	model:SetBodygroup(0,1)
	else
	model:SetBodygroup(0,0)
	end
end

ATT.PeekPosUBGL = Vector(1.5, 0, -1.5)
ATT.PeekAngUBGL = Angle(0, 0, -10)

ATT.IKAnimationProxy = {
	["fire_ubgl"] = {
        Source = "fire_full",
        EventTable = {
            {s =  "myt_bf1942/dc/r870_bolt1.ogg" ,   t = 29 / 40},  
			{s =  "myt_bf1942/dc/r870_bolt2.ogg" ,   t = 41 / 40}, 
            {s =  "myt_bf1942/dc/r870_foley2.ogg" ,   t = 46 / 40},  			
        },
        MinProgress = 0.6,
		FireASAP = true,
    },
	["fire_ubgl_glempty"] = {
        Source = "fire",
        EventTable = {
        },		
    },
	["fire_empty_ubgl"] = {
        Source = "fire",	
        MinProgress = 0.05,
		FireASAP = true,
    },

	["cycle_ubgl"] = {
        Source = "pump",
        MinProgress = 0.6,
		FireASAP = true,
	        EventTable = {
            {s =  "myt_bf1942/dc/r870_bolt1.ogg" ,   t = 36 / 40},  
			{s =  "myt_bf1942/dc/r870_bolt2.ogg" ,   t = 48 / 40}, 
            {s =  "myt_bf1942/dc/r870_foley2.ogg" ,   t = 45 / 40},  			
        },
    },
    ["reload_ubgl_start"] = {
        Source = "ubgl_reload1",
        EventTable = {		
            {s =  "myt_bf1942/dc/r870_foley1.ogg" ,   t = 1 / 40}, 
			{s =  "myt_bf1942/dc/ak_foley2.ogg" ,   t = 5 / 40},   
        },
		Mult = 1,
    },
    ["reload_ubgl_finish_empty"] = {
        Source = "ubgl_reload3",
        EventTable = {		
            {s =  "myt_bf1942/dc/r870_bolt1.ogg" ,   t = 16 / 40},  
			{s =  "myt_bf1942/dc/r870_bolt2.ogg" ,   t = 28 / 40}, 
            {s =  "myt_bf1942/dc/r870_foley2.ogg" ,   t = 33 / 40},  
        },
        MinProgress = 0.6,
		FireASAP = true,
    },  
	["reload_ubgl_finish"] = {
        Source = "ubgl_reload3_wet",
        EventTable = {		
            {s =  "myt_bf1942/dc/r870_foley2.ogg" ,   t = 5 / 40},  
        },
        MinProgress = 0.6,
		FireASAP = true,
    },
    ["reload_ubgl_insert"] = {
        Source = "ubgl_reload2",
        EventTable = {		
            {s = "myt_bf1942/dc/r870_reload.ogg", t = 20 / 40},		
        },
        MinProgress = 0.5,
		--Time = 0.8,
    },

    ["enter_ubgl"] = {
        Source = "to_ubgl",
        MinProgress = 0.8,
		FireASAP = true,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 1, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },
        },
    },
    ["idle_ubgl"] = {
        Source = "ubgl",
    }, 
    ["exit_ubgl"] = {
        Source = "from_ubgl",
        MinProgress = 0.8,
		FireASAP = true,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley3.ogg" ,   t = 1 / 40},  
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 1, rhik = 0, },{ t = 1, lhik = 1, rhik = 0, },
        },
    },
	["holster_ubgl"] = {
        Source = "ubgl_holster"
    },
} 

ATT.BashUBGL = false
ATT.PrimaryBashUBGL = false
ATT.BottomlessClipUBGL = false
-- When an animation event plays, override it with one based on this LHIK model.
ATT.IKGunMotionQCA = 2
ATT.MuzzleDeviceUBGL = true
ATT.ShotgunReloadUBGL = true

ATT.CaseEffectQCAOverrideUBGL = 1	-- nope

ATT.IKGunMotionOffset = Vector(0, 0, 0)
ATT.IKGunMotionOffsetAngle = Angle(0, 0, 0)

ATT.IKGunMotionMult = 0.5
ATT.IKGunMotionAngleMult = 0.5

ATT.Category = {"bf1942_dc_offhand"}

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1

ATT.UBGL = true
ATT.UBGLAmmo = "buckshot"
ATT.UBGLClipSize = 5
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "R870"
ATT.UBGLChamberSize = 0
ATT.ShootVolumeUBGL = 110
ATT.RPMUBGL = 44

-- I LOVE BODGING
ATT.Hook_Think = function(wep)	-- reset RPM [FOR UGBL ONLY] cuz the bloody MANUAL ACTION DOESNT FUCKING WORK
	if wep:GetUBGL(true) then
	if wep:Clip2() == 0 then wep:SetNextPrimaryFire(1) end
	end
end

ATT.SpreadUBGL = 0.02
ATT.SpreadSightsUBGL = 0.1

ATT.FirstShootSoundUBGL = false
ATT.ShootSoundUBGL = "myt_bf1942/dc/R870.wav"
ATT.DistantShootSoundUBGL = false
ATT.HasSightsUBGL = true


ATT.NumUBGL = 8
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

ATT.DamageTypeUBGL = DMG_BULLET
ATT.DamageMaxUBGL = 26 -- Damage done at point blank range
ATT.DamageMinUBGL = 7 -- Damage done at maximum range

ATT.DamageRandUBGL = 0.3 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

ATT.RangeMinUBGL = 200 -- How far bullets retain their maximum damage for.
ATT.RangeMaxUBGL = 4000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

ATT.PenetrationUBGL = 0 -- Units of wood that can be penetrated by this gun.

ATT.MuzzleParticleUBGL = "muzzleflash_shotgun"

ATT.ModelOffset = Vector(10, 0, -1)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(4.1, 10, -5.1),
        Ang = Angle(7.95, -3.2, -35),
        Magnification = 1.05,
        ViewModelFOV = 60,
        CrosshairInSights = false,
        Blur = false,
        UBGLOnly = true,
        Disassociate = true,
    },
}

ATT.ActivePosUBGL = Vector(4, 3, 0)
ATT.ActiveAngUBGL = Angle(5, 0, 20)

ATT.SprintAngUBGL = Angle(5, -5, 10)
ATT.SprintPosUBGL = Vector(3, 3, -3)

ATT.CustomizeAngUBGL  = Angle(-90, 40, -6)
ATT.CustomizePosUBGL  = Vector(-20, 28, 7)
ATT.CustomizeRotateAnchorUBGL = Vector(10, 0, -10)

ATT.CustomCrosshairUBGL = false


ARC9.LoadAttachment(ATT, "myt_bf1942_dc_oh_r870")


----------------------------------------------------------
-- RPG --
----------------------------------------------------------


ATT = {}
ATT.PrintName = [[RPG]]
ATT.CompactName = [[RPG]]
ATT.Icon = Material("entities/gekolt_css_blank.png")
ATT.Description = [[
Switching gadget is faster reload.
]] 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Model = "models/weapons/myt_bf1942/atts/dc/c_rpg.mdl"
ATT.RHIK = true
ATT.ActivateElements = {"off_hand"}

ATT.DrawFunc = function(wep, model, wm)	-- hide gun during normal reload
	if wep:GetReloading() and !wep:GetUBGL(true) then 
	model:SetBodygroup(0,1)
	else
	model:SetBodygroup(0,0)
	end
end

ATT.PeekPosUBGL = Vector(2, 0, 0)
ATT.PeekAngUBGL = Angle(0, 0, 10)

ATT.IKAnimationProxy = {
	["fire_ubgl"] = {
        Source = "fire",
        MinProgress = 0.6,
		FireASAP = true,
    },
	
	["fire_empty_ubgl"] = {
        Source = "fire",
        EventTable = {
        },		
        MinProgress = 0.05,
		FireASAP = true,
    },
	["fire_ubgl_glempty"] = {
        Source = "fire",
        EventTable = {
        },		
    },
    ["reload_ubgl"] = {
        Source = "ubgl_reload",
        MinProgress = 0.8,
		FireASAP = true,
        EventTable = {		
            {s =  "myt_bf1942/dc/rpg_reload_oh.ogg" ,   t = 1 / 40},		
        },
    },  
	["reload_ubgl_empty"] = {
        Source = "ubgl_reload",
        MinProgress = 0.85,
		FireASAP = true,
        EventTable = {		
            {s =  "myt_bf1942/dc/rpg_reload_oh.ogg" ,   t = 1 / 40},	
        },
    },

    ["enter_ubgl"] = {
        Source = "to_ubgl",
        MinProgress = 0.8,
		FireASAP = true,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 1, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },
        },
    },
    ["idle_ubgl"] = {
        Source = "ubgl",
    }, 
    ["exit_ubgl"] = {
        Source = "from_ubgl",
        MinProgress = 0.8,
		FireASAP = true,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley3.ogg" ,   t = 1 / 40},  
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 1, rhik = 0, },{ t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["enter_ubgl_glempty"] = {
        Source = "to_ubgl_last",
        MinProgress = 0.7,
		FireASAP = true,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 1, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },
        },
    },
    ["exit_ubgl_glempty"] = {
        Source = "from_ubgl_last",
        MinProgress = 0.6,
		FireASAP = true,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley3.ogg" ,   t = 1 / 40},  
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 1, rhik = 0, },{ t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["idle_ubgl_glempty"] = {
        Source = "ubgl_last"
    },

	["holster_ubgl"] = {
        Source = "ubgl_holster"
    },
	["holster_ubgl_empty"] = {
        Source = "ubgl_holster_last"
    },
} -- When an animation event plays, override it with one based on this LHIK model.

ATT.BashUBGL = false
ATT.PrimaryBashUBGL = false
ATT.BottomlessClipUBGL = false
ATT.IKGunMotionQCA = 2
ATT.MuzzleDeviceUBGL = true

ATT.IKCameraMotionQCA = nil
ATT.IKCameraMotionOffsetAngle = Angle(0, 90, 0)

ATT.CaseEffectQCAOverrideUBGL = 1	-- nope

ATT.IKGunMotionOffset = Vector(0, 0, 0)
ATT.IKGunMotionOffsetAngle = Angle(0, 0, 0)

ATT.IKGunMotionMult = 0.5
ATT.IKGunMotionAngleMult = 0.5

ATT.Category = {"bf1942_dc_offhand"}

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1

ATT.UBGL = true
ATT.UBGLAmmo = "RPG_rocket"
ATT.UBGLClipSize = 1
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "RPG"
ATT.UBGLChamberSize = 0
ATT.ShootVolumeUBGL = 110
ATT.RPMUBGL = 900

ATT.SpreadUBGL = 0.01

ATT.FirstShootSoundUBGL = false
ATT.ShootSoundUBGL = "myt_bf1942/dc/RPG.wav"
ATT.DistantShootSoundUBGL = false
ATT.HasSightsUBGL = true

ATT.NumUBGL = 1
ATT.ShootEntUBGL = "myt_bf1942_dc_rpg"
ATT.ShootEntForceUBGL = 200000
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

ATT.DamageTypeUBGL = DMG_BULLET
ATT.DamageMaxUBGL = 24 -- Damage done at point blank range
ATT.DamageMinUBGL = 6 -- Damage done at maximum range

ATT.DamageRandUBGL = 0.3 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

ATT.RangeMinUBGL = 300 -- How far bullets retain their maximum damage for.
ATT.RangeMaxUBGL = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

ATT.PenetrationUBGL = 0 -- Units of wood that can be penetrated by this gun.

ATT.MuzzleParticleUBGL = "muzzleflash_shotgun"

ATT.ModelOffset = Vector(10, 0, -1)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(1.92, 10, -7.75),
        Ang = Angle(7.5, -2.5, -5),
        Magnification = 1.05,
        ViewModelFOV = 60,
        CrosshairInSights = false,
        Blur = false,
        UBGLOnly = true,
        Disassociate = true,
    },
}

ATT.ActivePosUBGL = Vector(4, 3, 0)
ATT.ActiveAngUBGL = Angle(5, 0, 20)

ATT.SprintAngUBGL = Angle(0, -25, 10)
ATT.SprintPosUBGL = Vector(2, 3, -0.5)

ATT.CustomizeAngUBGL  = Angle(-90, 40, -6)
ATT.CustomizePosUBGL  = Vector(-8, 35, 7)
ATT.CustomizeRotateAnchorUBGL = Vector(10, -2, -10)
ATT.CustomCrosshairUBGL = false

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_oh_rpg")


----------------------------------------------------------
-- Knife --
----------------------------------------------------------


ATT = {}
ATT.PrintName = [[Knife]]
ATT.CompactName = [[Knife]]
ATT.Icon = Material("entities/gekolt_css_blank.png")
ATT.Description = [[
You run faster.
]] 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Model = "models/weapons/myt_bf1942/atts/dc/c_knife.mdl"
ATT.RHIK = true
ATT.ActivateElements = {"off_hand", "is_melee"}

ATT.DrawFunc = function(wep, model, wm)	-- hide gun during normal reload
	if wep:GetReloading() and !wep:GetUBGL(true) then 
	model:SetBodygroup(0,1)
	else
	model:SetBodygroup(0,0)
	end
end

ATT.IKAnimationProxy = {
	["bash_ubgl"] = {
        Source = {"fire", "fire2"},
        MinProgress = 0.6,
		FireASAP = true,
		Mult = 0.8,
    },
	["bash"] = {
        Source = {"fire", "fire2"},
        MinProgress = 0.6,
		FireASAP = true,
		Mult = 0.8,
    },
	
    ["enter_ubgl"] = {
        Source = "to_ubgl",
        MinProgress = 0.8,
		FireASAP = true,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 1, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },
        },
    },
    ["idle_ubgl"] = {
        Source = "ubgl",
    }, 
    ["exit_ubgl"] = {
        Source = "from_ubgl",
        MinProgress = 0.8,
		FireASAP = true,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley3.ogg" ,   t = 1 / 40},  
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 1, rhik = 0, },{ t = 1, lhik = 1, rhik = 0, },
        },
    },
} -- When an animation event plays, override it with one based on this LHIK model.

ATT.Hook_TranslateAnimation = function(wep, curanim) -- bodging, i fucking hate arc9
	if wep:GetUBGL(true)	then
		if	curanim == "bash" 		then	return "bash_ubgl"		end
	else
	end
end

ATT.IKGunMotionQCA = 2
ATT.MuzzleDeviceUBGL = false

ATT.IKCameraMotionQCA = nil
ATT.IKCameraMotionOffsetAngle = Angle(0, 90, 0)

ATT.CaseEffectQCAOverrideUBGL = 1	-- nope

ATT.IKGunMotionOffset = Vector(0, 0, 0)
ATT.IKGunMotionOffsetAngle = Angle(0, 0, 0)

ATT.IKGunMotionMult = 0.5
ATT.IKGunMotionAngleMult = 0.5

ATT.Category = {"bf1942_dc_offhand"}

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1

ATT.UBGL = true
ATT.UBGLAmmo = ""
ATT.UBGLClipSize = 0
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "Knife"
ATT.UBGLChamberSize = 0
ATT.ShootVolumeUBGL = 110

ATT.FirstShootSoundUBGL = false
ATT.ShootSoundUBGL = "myt_bf1942/dc/RPG.wav"
ATT.DistantShootSoundUBGL = false
ATT.HasSightsUBGL = false

ATT.BashUBGL = true
ATT.PrimaryBashUBGL = true
ATT.BashDamageUBGL = 40
ATT.BashLungeRangeUBGL = 0
ATT.BashRangeUBGL = 64
ATT.PreBashTimeUBGL = 0.1
ATT.PostBashTimeUBGL = 0.3

ATT.SpeedOverrideUGBL = 1.5

ATT.ModelOffset = Vector(10, 0, -1)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.ActivePosUBGL = Vector(4, 3, 0)
ATT.ActiveAngUBGL = Angle(5, 0, 20)

ATT.SprintAngUBGL = Angle(0, -10, 10)
ATT.SprintPosUBGL = Vector(2, 3, -1)

ATT.CustomizeAngUBGL  = Angle(-90, 40, -5)
ATT.CustomizePosUBGL  = Vector(-12, 28, 7)
ATT.CustomizeRotateAnchorUBGL = Vector(10, -2, -10)
ATT.Crosshair = false
ATT.CanLeanUBGL = false

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_oh_knife")