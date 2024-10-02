local ATT = {}

-- MASS --

ATT = {}
ATT.PrintName = [[PSS]]
ATT.CompactName = [[PSS]]
ATT.Icon = Material("entities/gekolt_css_blank.png")
ATT.Description = [[
5-Round 12 gauge box magazine pumping shotgun for your handguard
Most polite way to open a door
**Requires a magazine to grip.**
]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Model = "models/weapons/myt_bf1942/atts/dc/c_pss.mdl"
ATT.RHIK = true
ATT.LHIK = false

ATT.IKAnimationProxy = {
    ["fire_ubgl"] = {
        Source = "fire",
        EventTable = {
        },		
    },
    ["reload_ubgl"] = {
        Source = "ubgl",
        EventTable = {		
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 8 / 40},
            {s =  "gekolt_css/galil_clipin.wav" ,    t = 59 / 40},			
        },
    },  
	["reload_ubgl_empty"] = {
        Source = "ubgl",
        EventTable = {		
            {s =  "gekolt_css/g3sg1_clipout.wav" ,   t = 8 / 40},
            {s =  "gekolt_css/galil_clipin.wav" ,    t = 59 / 40},	
            {s =  "gekolt_css/m3_pump.wav" ,   t = 89 / 40},			
        },
    },
    ["enter_ubgl"] = {
        Source = "to_ubgl",
    },
	["idle"] = {
        Source = "idle",
    },
    ["idle_ubgl"] = {
        Source = "ubgl",
		
    }, 
    ["exit_ubgl"] = {
        Source = "from_ubgl",
    },
} -- When an animation event plays, override it with one based on this LHIK model.
ATT.IKGunMotionQCA = 2
ATT.IKGunMuzzleEffectQCA = 3

ATT.IKGunMotionOffset = Vector(0, 0, 0)
ATT.IKGunMotionOffsetAngle = Angle(0, 0, 0)

ATT.IKGunMotionMult = 0.5
ATT.IKGunMotionAngleMult = 0.5

ATT.Category = {"bf1942_dc_offhand"}

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1

ATT.UBGL = true
ATT.UBGLAmmo = "buckshot"
ATT.UBGLClipSize = 12
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "PSS"
ATT.UBGLChamberSize = 1
ATT.ShootVolumeUBGL = 110
ATT.RPMUBGL = 600

ATT.SpreadUBGL = 0.025

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
ATT.DamageMaxUBGL = 52 -- Damage done at point blank range
ATT.DamageMinUBGL = 30 -- Damage done at maximum range

ATT.DamageRandUBGL = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

ATT.RangeMinUBGL = 300 -- How far bullets retain their maximum damage for.
ATT.RangeMaxUBGL = 12000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

ATT.PenetrationUBGL = 3 -- Units of wood that can be penetrated by this gun.

ATT.MuzzleParticleUBGL = "muzzleflash_1"

ATT.ModelOffset = Vector(10, 0, -1)
ATT.ModelAngleOffset = Angle(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(2.5, 18, -2),
        Ang = Angle(0, 0, -5),
        Magnification = 1.05,
        ViewModelFOV = 60,
        CrosshairInSights = true,
        Blur = false,
        UBGLOnly = true,
        Disassociate = true,
    },
}

ATT.ActivePosUBGL = Vector(4, 2, 0)
ATT.ActiveAngUBGL = Angle(5, 0, 20)

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_oh_pss")