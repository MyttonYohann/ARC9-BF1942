local ATT = {}

-- PSS --

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

ATT.IKAnimationProxy = {
-- quick finger fix --
--[[    ["fire"] = {
        Source = "fire_ik",
        EventTable = {
        },		
    }, 
    ["fire_iron"] = {
        Source = "fire_ik",
        EventTable = {
        },		
    }, 
]]

	["fire_ubgl"] = {
        Source = "fire",
        EventTable = {
        },
    },
    ["fire_ubgl_iron"] = {
        Source = "fire_ads",
        EventTable = {
        },		
    }, 
	["fire_ubgl_glempty"] = {
        Source = "fire_last",
        EventTable = {
        },		
    },
	["fire_ubgl_empty"] = {
        Source = "fire_last",
        EventTable = {
        },		
    },
    ["fire_ubgl_iron_glempty"] = {
        Source = "fire_ads_last",
        EventTable = {
        },		
    },  
	["fire_ubgl_iron_empty"] = {
        Source = "fire_ads_last",
        EventTable = {
        },		
    },
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
    },
    ["idle_ubgl"] = {
        Source = "ubgl",
    }, 
    ["exit_ubgl"] = {
        Source = "from_ubgl",
        MinProgress = 0.6,
		FireASAP = true,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley3.ogg" ,   t = 1 / 40},  
        },
    },

    ["enter_ubgl_glempty"] = {
        Source = "to_ubgl_last",
        MinProgress = 0.7,
		FireASAP = true,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
        },
    },
    ["exit_ubgl_glempty"] = {
        Source = "from_ubgl_last",
        MinProgress = 0.6,
		FireASAP = true,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley3.ogg" ,   t = 1 / 40},  
        },
    },
    ["idle_ubgl_glempty"] = {
        Source = "ubgl_last"
    },

} -- When an animation event plays, override it with one based on this LHIK model.
ATT.IKGunMotionQCA = 2
ATT.MuzzleDeviceUBGL = true


ATT.CaseEffectQCAOverrideUBGL = 1	-- nope

ATT.IKGunMotionOffset = Vector(0, 0, 0)
ATT.IKGunMotionOffsetAngle = Angle(0, 0, 0)

ATT.IKGunMotionMult = 0.5
ATT.IKGunMotionAngleMult = 0.5

ATT.Category = {"bf1942_dc_offhand"}

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1

ATT.UBGL = true
ATT.UBGLAmmo = "pistol"
ATT.UBGLClipSize = 12
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "PSS"
ATT.UBGLChamberSize = 1
ATT.ShootVolumeUBGL = 110
ATT.RPMUBGL = 600

ATT.SpreadUBGL = 0.0075
ATT.SpreadMultHipFiredUBGL = 1

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
ATT.RecoilRandomUpUBGL = 0.3
ATT.RecoilRandomSideUBGL = 0.3

ATT.RecoilDissipationRateUBGL = 50 -- How much recoil dissipates per second.
ATT.RecoilResetTimeUBGL = 0 -- How long the gun must go before the recoil pattern starts to reset.

ATT.RecoilAutoControlUBGL = 0 -- Multiplier for automatic recoil control.

ATT.RecoilKickUBGL = 1

ATT.DamageTypeUBGL = DMG_BULLET
ATT.DamageMaxUBGL = 23 -- Damage done at point blank range
ATT.DamageMinUBGL = 15 -- Damage done at maximum range

ATT.DamageRandUBGL = 0.3 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

ATT.RangeMinUBGL = 300 -- How far bullets retain their maximum damage for.
ATT.RangeMaxUBGL = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

ATT.PenetrationUBGL = 3 -- Units of wood that can be penetrated by this gun.

ATT.MuzzleParticleUBGL = "muzzleflash_pistol"

ATT.ModelOffset = Vector(10, 0, -1)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(5.05, 10, -5.2),
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

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_oh_pss")


-- R870 --

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

ATT.IKAnimationProxy = {
	["fire_ubgl"] = {
        Source = "fire_full",
        EventTable = {
            {s =  "myt_bf1942/dc/r870_bolt1.ogg" ,   t = 36 / 40},  
			{s =  "myt_bf1942/dc/r870_bolt2.ogg" ,   t = 48 / 40}, 
            {s =  "myt_bf1942/dc/r870_foley2.ogg" ,   t = 53 / 40},  			
        },
    },
	["fire_ubgl_empty"] = {
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
	
    ["reload_ubgl_start"] = {
        Source = "ubgl_reload1",
        EventTable = {		
            {s =  "myt_bf1942/dc/r870_bolt1.ogg" ,   t = 28 / 40},  	
        },
    },
    ["reload_ubgl_finish"] = {
        Source = "ubgl_reload3",
        EventTable = {		
            {s =  "myt_bf1942/dc/r870_bolt1.ogg" ,   t = 16 / 40},  
			{s =  "myt_bf1942/dc/r870_bolt2.ogg" ,   t = 28 / 40}, 
            {s =  "myt_bf1942/dc/r870_foley2.ogg" ,   t = 33 / 40},  
        },
        MinProgress = 0.7,
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
    },
} -- When an animation event plays, override it with one based on this LHIK model.
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
ATT.UBGLClipSize = 4
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "R870"
ATT.UBGLChamberSize = 1
ATT.ShootVolumeUBGL = 110
ATT.RPMUBGL = 39
ATT.RPMEmptyUBGL = 900
ATT.RPMUBGLEmpty = 900

ATT.SpreadUBGL = 0.01

ATT.FirstShootSoundUBGL = false
ATT.ShootSoundUBGL = "myt_bf1942/dc/R870.wav"
ATT.DistantShootSoundUBGL = false
ATT.HasSightsUBGL = false


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

ATT.RecoilKickUBGL = 1

ATT.DamageTypeUBGL = DMG_BULLET
ATT.DamageMaxUBGL = 23 -- Damage done at point blank range
ATT.DamageMinUBGL = 15 -- Damage done at maximum range

ATT.DamageRandUBGL = 0.3 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

ATT.RangeMinUBGL = 300 -- How far bullets retain their maximum damage for.
ATT.RangeMaxUBGL = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

ATT.PenetrationUBGL = 3 -- Units of wood that can be penetrated by this gun.

ATT.MuzzleParticleUBGL = "muzzleflash_pistol"

ATT.ModelOffset = Vector(10, 0, -1)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(5.05, 10, -5.2),
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

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_oh_r870")