local ATT = {}
local shared = {
	--HoldType = "duel",
	RHIK = true,
	RHIK_Priority = 10,
	ActivateElements = {"off_hand"},

	IKGunMotionQCA = 2,
	MuzzleDeviceUBGL = true,

	BashUBGL = false,
	PrimaryBashUBGL = false,
	BottomlessClipUBGL = false,
	NoShellEjectUBGL = true,
	SpeedMultReloadUBGL = 1,
	TriggerDelayUBGL = false,

-- what the actual heck do these do
	IKGunMotionOffset = Vector(0, 0, 0),
	IKGunMotionOffsetAngle = Angle(0, -90, 0),
	IKGunMotionAnchor = Vector(0, 0, 0),

	CustomCrosshairUBGL = false,
	PushBackForceUBGL = 0,
}
----------------------------------------------------------

----------------------------------------------------------
-- PSS --
----------------------------------------------------------


ATT = {}
table.Merge(ATT, shared) 
ATT.PrintName = [[PSS]]
ATT.CompactName = [[PSS]]
ATT.Icon = Material("entities/gekolt_css_blank.png")
ATT.Description = [[Backup single stack suppressed sidearm.
]] 
ATT.SortOrder = 0

ATT.Model = "models/weapons/myt_bf1942/atts/dc/c_pss.mdl"

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
        MinProgress = 0.825,
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

ATT.Hook_TranslateAnimation = function(wep, curanim)	
	if wep:Clip2() == 0 then
		if	curanim == "fire_ubgl_sights" 		then	return "fire_ubgl_sights_nope"		end
		if	curanim == "enter_sights_ubgl" 		then	return "enter_sights_ubgl_nope"		end	
		if	curanim == "idle_ubgl_sights" 		then	return "idle_ubgl_sights_nope"		end	
		if	curanim == "exit_ubgl" 				then	return "exit_ubgl_glempty"			end
		-- separete check 'cos the new ugbl ik update broke something
		if	curanim == "reload_ubgl" 			then	return "reload_ubgl_empty"			end	
		if	curanim == "idle_ubgl" 				then	return "idle_ubgl_empty"			end
		if	curanim == "fire_ubgl" 				then	return "fire_ubgl_empty"			end	
		if	curanim == "holster_ubgl"			then	return "holster_ubgl_empty"			end
		if	curanim == "enter_ubgl" 			then	return "enter_ubgl_glempty"			end
	end

	-- i forgor why i did this and im too afraid to delete this
	-- doesnt matter 'cos the new update fuck its whole arsehole
	if wep:Clip1() == 0 and wep:Clip2() != 0	then	-- well realistically need only check for if clip2 not empty
		if	curanim == "idle_ubgl_empty" 		then	return "idle_ubgl"		end
		if	curanim == "fire_ubgl_empty" 		then	return "fire_ubgl"		end	
		if	curanim == "fire_ubgl_iron_empty" 	then	return "fire_ubgl_iron"	end	
		if	curanim == "reload_ubgl_empty" 		then	return "reload_ubgl"	end	
		if	curanim == "holster_ubgl_empty"		then	return "holster_ubgl"	end
	-- separate check
		if	curanim == "enter_ubgl_glempty" 		then	return "enter_ubgl"		end
	else	
		return 
	end
end

ATT.Category = {"bf1942_dc_offhand"}

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1

ATT.UBGL = true
ATT.UBGLAmmo = "pistol"
ATT.UBGLClipSize = 8
ATT.UBGLFiremode = 1
ATT.SecondarySupplyLimit = 4
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
ATT.CustomizePosUBGL  = Vector(-12, 32, 4)
ATT.CustomizeRotateAnchorUBGL = Vector(10, -2, -10)

ATT.NearWallPosUBGL = Vector(5, -1, -6)
ATT.NearWallAngUBGL = Angle(15, 20, 30)

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_oh_pss")

----------------------------------------------------------
-- Scorpion --
----------------------------------------------------------


ATT = {}
table.Merge(ATT, shared) 
ATT.PrintName = [[Scorpion]]
ATT.CompactName = [[Scor]]
ATT.Icon = Material("entities/gekolt_css_blank.png")
ATT.Description = [[Backup submachine gun.
This one was modified to use a pistol grip to further reduce length.
]] 
ATT.SortOrder = 0

ATT.Model = "models/weapons/myt_bf1942/atts/dc/c_scor_uc.mdl"

ATT.DrawFunc = function(wep, model, wm)	-- hide gun during normal reload
	if wep:GetReloading() and !wep:GetUBGL(true) then 
	model:SetBodygroup(0,1)	
	model:SetBodygroup(1,2)
	else
	model:SetBodygroup(0,0)
	model:SetBodygroup(1,0)
	end
end

ATT.PeekPosUBGL = Vector(1.5, -5, -1.5)
ATT.PeekAngUBGL = Angle(0, 0, -10)

ATT.IKAnimationProxy = {
	["fire_ubgl"] = { Source = "fire", },	
    ["idle_ubgl"] = { Source = "ubgl", }, 
	["fire_ubgl_sights"] = { Source = "fire_ads", },
	["fire_ubgl_sights_last"] = { Source = "fire_ads_last", },

	["fire_ubgl_glempty"] = { Source = "fire_last",  },		
	["fire_ubgl_empty"] = {Source = "fire_last", },
    ["reload_ubgl"] = {
        Source = "ubgl_wet",
        MinProgress = 0.825,
		FireASAP = true,
        EventTable = {		
            {s =  "myt_bf1942/dc/pss_mag1.ogg" ,   t = 1 / 40},
            {s =  "myt_bf1942/dc/pss_mag2.ogg" ,    t = 75 / 40},			
        },
    },  
	["reload_ubgl_empty"] = {
        Source = "ubgl_dry",
        MinProgress = 0.925,
		FireASAP = true,
        EventTable = {		
            {s =  "myt_bf1942/dc/pss_mag1.ogg" ,   t = 1 / 40},
            {s =  "myt_bf1942/dc/pss_mag2.ogg" ,    t = 75 / 40},	
            {s =  "myt_bf1942/dc/pss_bolt.ogg" ,   t = 101 / 40},			
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

ATT.Hook_TranslateAnimation = function(wep, curanim)	
	if wep:Clip2() == 0 then
		if	curanim == "fire_ubgl_sights" 		then	return "fire_ubgl_sights_last"		end
		if	curanim == "exit_ubgl" 				then	return "exit_ubgl_glempty"			end
		-- separete check 'cos the new ugbl ik update broke something
		if	curanim == "reload_ubgl" 			then	return "reload_ubgl_empty"			end	
		if	curanim == "idle_ubgl" 				then	return "idle_ubgl_empty"			end
		if	curanim == "fire_ubgl" 				then	return "fire_ubgl_empty"			end	
		if	curanim == "holster_ubgl"			then	return "holster_ubgl_empty"			end
		if	curanim == "enter_ubgl" 			then	return "enter_ubgl_glempty"			end
	end

	-- i forgor why i did this and im too afraid to delete this
	if wep:Clip1() == 0 and wep:Clip2() != 0	then	-- well realistically need only check for if clip2 not empty
		if	curanim == "idle_ubgl_empty" 		then	return "idle_ubgl"		end
		if	curanim == "fire_ubgl_empty" 		then	return "fire_ubgl"		end	
		if	curanim == "fire_ubgl_iron_empty" 	then	return "fire_ubgl_iron"	end	
		if	curanim == "reload_ubgl_empty" 		then	return "reload_ubgl"	end	
		if	curanim == "holster_ubgl_empty"		then	return "holster_ubgl"	end
	-- separate check
		if	curanim == "enter_ubgl_glempty" 		then	return "enter_ubgl"		end
	else
		return 
	end
end

ATT.Category = {"bf1942_dc_offhand"}

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1

ATT.UBGL = true
ATT.UBGLAmmo = "pistol"
ATT.UBGLClipSize = 20
ATT.UBGLFiremode = -1
ATT.SecondarySupplyLimit = 4
ATT.UBGLFiremodeName = "Scor"
ATT.UBGLChamberSize = 1
ATT.ShootVolumeUBGL = 110
ATT.RPMUBGL = 900

ATT.SpreadUBGL = 0.015
ATT.SpreadMultHipFiredUBGL = 1
ATT.FreeAimRadiusUGBL = 10

ATT.FirstShootSoundUBGL = false
ATT.ShootSoundUBGL = "myt_bf1942/dc/scorpion.wav"
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
ATT.DamageMaxUBGL = 26 -- Damage done at point blank range
ATT.DamageMinUBGL = 14 -- Damage done at maximum range

ATT.DamageRandUBGL = 0.3 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

ATT.RangeMinUBGL = 300 -- How far bullets retain their maximum damage for.
ATT.RangeMaxUBGL = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

ATT.PenetrationUBGL = 3 -- Units of wood that can be penetrated by this gun.

ATT.MuzzleParticleUBGL = "muzzleflash_pistol"

ATT.ModelOffset = Vector(10, 0, -1)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(5.1, 10, -5.3),
        Ang = Angle(7.8, -3.3, -35),
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
ATT.CustomizePosUBGL  = Vector(-12, 32, 4)
ATT.CustomizeRotateAnchorUBGL = Vector(10, -2, -10)

ATT.NearWallPosUBGL = Vector(7, -3, -6)
ATT.NearWallAngUBGL = Angle(15, 20, 30)

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_oh_scor")


----------------------------------------------------------
-- R870 --
----------------------------------------------------------


ATT = {}
table.Merge(ATT, shared)
ATT.PrintName = [[Sawnoff R870]]
ATT.CompactName = [[R870]]
ATT.Icon = Material("entities/gekolt_css_blank.png")
ATT.Description = [[Backup sawnoff shotgun with incredible dexterity display.
]] 
ATT.SortOrder = 0

ATT.Model = "models/weapons/myt_bf1942/atts/dc/c_r870.mdl"
ATT.DrawFunc = function(wep, model, wm)
-- hide gun during normal reload
	if wep:GetReloading() and !wep:GetUBGL(true) then 
	model:SetBodygroup(0,1)
	model:SetBodygroup(1,0)	
	else
		if wep:HasElement("oh_r870_lever") then 
		model:SetBodygroup(1,1)
		end
	model:SetBodygroup(0,0)
	end
end

ATT.PeekPosUBGL = Vector(2, 0, -1.5)
ATT.PeekAngUBGL = Angle(0, 0, -10)

ATT.IKAnimationProxy = {
	["fire_ubgl"] = {
        Source = "fire_full2",
        EventTable = {
            {s =  "myt_bf1942/dc/r870_bolt1.ogg" ,   t = 26 / 40},  
			{s =  "myt_bf1942/dc/r870_bolt2.ogg" ,   t = 37	 / 40}, 
            {s =  "myt_bf1942/dc/r870_foley2.ogg" ,   t = 43 / 40},  			
        },
        MinProgress = 0.6,
		FireASAP = true,
		Mult = 0.95,
    },
	["fire_ubgl_lever"] = {
        Source = "fire_lever",
        EventTable = {
            {s =  "myt_bf1942/dc/r870_bolt1.ogg" ,   t = 11 / 40},  
			{s =  "myt_bf1942/dc/r870_bolt2.ogg" ,   t = 20	 / 40}, 		
        },
        MinProgress = 0.6,
		FireASAP = true,
		Mult = 0.95,
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

	--[[["cycle_ubgl"] = { -- doesnt work
        Source = "pump",
        MinProgress = 0.6,
		FireASAP = true,
	        EventTable = {
            {s =  "myt_bf1942/dc/r870_bolt1.ogg" ,   t = 36 / 40},  
			{s =  "myt_bf1942/dc/r870_bolt2.ogg" ,   t = 48 / 40}, 
            {s =  "myt_bf1942/dc/r870_foley2.ogg" ,   t = 45 / 40},  			
        },
    },]]
    ["reload_ubgl_start"] = {
        Source = "ubgl_reload1",
        EventTable = {		
            {s =  "myt_bf1942/dc/r870_foley1.ogg" ,   t = 1 / 40}, 
			{s =  "myt_bf1942/dc/ak_foley2.ogg" ,   t = 5 / 40},   
            {s = "myt_bf1942/dc/r870_reload.ogg", t = 65 / 40},		
        },
		RestoreAmmo = 1,
		RefillProgress = 72/40,
    },
    ["reload_ubgl_finish_empty"] = {
        Source = "ubgl_reload3",
        EventTable = {		
            {s =  "myt_bf1942/dc/r870_bolt1.ogg" ,   t = 26 / 40},  
			{s =  "myt_bf1942/dc/r870_bolt2.ogg" ,   t = 34 / 40}, 
            {s =  "myt_bf1942/dc/r870_foley2.ogg" ,   t = 33 / 40},  
        },
        MinProgress = 0.73,
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
            {s = "myt_bf1942/dc/r870_reload.ogg", t = 31 / 40},		
        },
		RefillProgress = 36/40,
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
    ["idle_ubgl"] = { Source = "ubgl", },  
	--["idle"] = { Source = "idle_default", }, 
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
	["holster_ubgl"] = { Source = "ubgl_holster" },
}

ATT.Category = {"bf1942_dc_offhand"}

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1

ATT.UBGL = true

ATT.ShotgunReloadUBGL = true
ATT.UBGLAmmo = "buckshot"
ATT.UBGLClipSize = 5
ATT.UBGLFiremode = 1
ATT.SecondarySupplyLimit = 6
ATT.UBGLFiremodeName = "R870"
ATT.UBGLChamberSize = 0
ATT.ShootVolumeUBGL = 110
ATT.RPMUBGL = 54

-- I LOVE BODGING
ATT.Hook_Think = function(wep)	-- reset RPM [FOR UGBL ONLY] cuz the bloody MANUAL ACTION DOESNT FUCKING WORK
	if wep:GetUBGL(true) then
	if wep:Clip2() == 0 then wep:SetNextPrimaryFire(1) end
	end

	--[[if wep:GetInSights() then
		wep.SpreadUBGL = 0.02
	else
		wep.SpreadUBGL = 0.02 * ( wep.SpreadMultSights / wep.Spread)/10
	end	]]
end
ATT.SpreadUBGL = 0.02
ATT.SpreadMultSightsUBGL = 0.02 -- doesnt fucking work
ATT.FirstShootSoundUBGL = false
ATT.ShootSoundUBGL = "myt_bf1942/dc/r870.ogg"
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

ATT.Attachments = {
    {
        PrintName = "Conversion",
        Category = {"oh_r870_lever"},
        Pos = Vector(2, 0, 0),
        Ang = Angle(0, 0, 0),
    },
}

ATT.ActivePosUBGL = Vector(4, 3, 0)
ATT.ActiveAngUBGL = Angle(5, 0, 20)

ATT.SprintAngUBGL = Angle(5, -5, 10)
ATT.SprintPosUBGL = Vector(3, 3, -3)

ATT.CustomizeAngUBGL  = Angle(-90, 40, -6)
ATT.CustomizePosUBGL  = Vector(-22, 42, 5)
ATT.CustomizeRotateAnchorUBGL = Vector(10, 0, -10)

ATT.NearWallPosUBGL = Vector(7, -5, -10)
ATT.NearWallAngUBGL = Angle(15, 20, 30)

ATT.CustomCrosshairUBGL = false


ARC9.LoadAttachment(ATT, "myt_bf1942_dc_oh_r870")

----------------------------------------------------------------------------------


ATT = {}

ATT.PrintName = [[Windrider Conversion]]
ATT.CompactName = [[Lever]] 
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Converts to lever action, faster cycling
]]
ATT.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "fire_ubgl"	then	return "fire_ubgl_lever"		end
end

ATT.Category = "oh_r870_lever"
ATT.ActivateElements = {"oh_r870_lever"}
ATT.RPMUBGL = 92

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_oh_r870_lever")


----------------------------------------------------------
-- RPG --
----------------------------------------------------------


ATT = {}
table.Merge(ATT, shared)
ATT.PrintName = [[RPG]]
ATT.CompactName = [[RPG]]
ATT.Icon = Material("entities/gekolt_css_blank.png")
ATT.Description = [[Back-mounted rocket launcher.
]] 
ATT.SortOrder = 0

ATT.Model = "models/weapons/myt_bf1942/atts/dc/c_rpg.mdl"

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
			{s =  "myt_bf1942/dc/mp5_bolt1.ogg" ,   t = 118 / 40},     
        },
    },  
	["reload_ubgl_empty"] = {
        Source = "ubgl_reload",
        MinProgress = 0.85,
		FireASAP = true,
        EventTable = {		
			{s =  "myt_bf1942/dc/rpg_reload_oh.ogg" ,   t = 1 / 40},	
			{s =  "myt_bf1942/dc/mp5_bolt1.ogg" ,   t = 118 / 40},   
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

ATT.Hook_TranslateAnimation = function(wep, curanim)	
	if wep:Clip2() == 0 then
		if	curanim == "enter_sights_ubgl" 		then	return "enter_ubgl_glempty"		end	
		if	curanim == "exit_ubgl" 		then	return "exit_ubgl_glempty"		end
		-- separete check 'cos the new ugbl ik update broke something
		if	curanim == "reload_ubgl" 			then	return "reload_ubgl_empty"			end	
		if	curanim == "idle_ubgl" 				then	return "idle_ubgl_glempty"			end
		if	curanim == "fire_ubgl" 				then	return "fire_ubgl_empty"			end	
		if	curanim == "holster_ubgl"			then	return "holster_ubgl_empty"			end
		if	curanim == "enter_ubgl" 			then	return "enter_ubgl_glempty"			end
	end
	-- new ubgl update bodge
	if wep:Clip1() == 0 and wep:Clip2() != 0	then	-- well realistically need only check for if clip2 not empty
		if	curanim == "idle_ubgl_glempty" 		then	return "idle_ubgl"		end
		if	curanim == "fire_ubgl_empty" 		then	return "fire_ubgl"		end	
		if	curanim == "fire_ubgl_iron_empty" 	then	return "fire_ubgl_iron"	end	
		if	curanim == "reload_ubgl_empty" 		then	return "reload_ubgl"	end	
		if	curanim == "holster_ubgl_empty"		then	return "holster_ubgl"	end
	-- separate check
		if	curanim == "enter_ubgl_glempty" 		then	return "enter_ubgl"		end
	else
		return 
	end
end


ATT.Category = {"bf1942_dc_offhand"}

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1

ATT.UBGL = true
ATT.UBGLAmmo = "RPG_Round"
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
ATT.CustomizePosUBGL  = Vector(-8, 60, 7)
ATT.CustomizeRotateAnchorUBGL = Vector(10, -2, -10)
ATT.CustomCrosshairUBGL = false

ATT.NearWallPosUBGL = Vector(7, -5, -6)
ATT.NearWallAngUBGL = Angle(15, 20, 30)

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_oh_rpg")


----------------------------------------------------------
-- Knife --
----------------------------------------------------------


ATT = {}
table.Merge(ATT, shared)
ATT.PrintName = [[Knife]]
ATT.CompactName = [[Knife]]
ATT.Icon = Material("entities/gekolt_css_blank.png")
ATT.Description = [[You run faster.
]] 
ATT.SortOrder = 0

ATT.Model = "models/weapons/myt_bf1942/atts/dc/c_knife.mdl"
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
		if	curanim == "bash" 		then	return "bash_bayo"		end
	else
	end
end
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
ATT.CrosshairUBGL = false
ATT.CanLeanUBGL = false

ATT.NearWallPosUBGL = Vector(7, -5, -10)
ATT.NearWallAngUBGL = Angle(15, 20, 30)

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_oh_knife")