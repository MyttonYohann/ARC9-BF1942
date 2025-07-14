AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - BF1942"
SWEP.SubCategory = "5Desert Combat"

SWEP.PrintName = "Kovazh-47"
SWEP.TrueName = "AK47"

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = [[[Soviet] Russia]],
    ["Caliber"] = "7.62x39mm",
}

SWEP.Credits = {
}

SWEP.Description = [[Gun is in everything.
Character stupid sometimes and bring empty magazines.]]

SWEP.ViewModel = "models/weapons/myt_bf1942/dc/c_ak47.mdl"
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/myt_bf1942/dc/c_ak47.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-1, 2, -7),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-8, 2, -7),
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}
SWEP.MirrorVMWMHeldOnly = false

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 28 -- Damage done at point blank range
SWEP.DamageMin = 12 -- Damage done at maximum range

SWEP.DamageRand = 0.1

SWEP.RangeMin = 500 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 12 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 8

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2329 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 4 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

-------------------------- FIREMODES

SWEP.RPM = 600

-- Works different to ArcCW

-- -1: Automatic
-- 0: Safe. Don't use this for safety.
-- 1: Semi.
-- 2: Two-round burst.
-- 3: Three-round burst.
-- n: n-round burst.
SWEP.Firemodes = {
    {
        Mode = -1,
        -- add other attachment modifiers
    },
    {
        Mode = 1
    }
}

-------------------------- RECOIL

SWEP.RecoilPatternDrift = 15

-- General recoil multiplier
SWEP.Recoil = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1.2 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.425 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.5
SWEP.RecoilRandomSide = 0.5

SWEP.RecoilDissipationRate = 7 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilPerShot = 1
SWEP.RecoilKickDamping = 50

SWEP.RecoilMultCrouch = 0.7
SWEP.RecoilMultHipFire = 1
SWEP.RecoilMultSights = 1

-------------------------- SPREAD

SWEP.Spread = 0.005

SWEP.SpreadAddRecoil = 0.005 -- Applied per unit of recoil.
SWEP.RecoilModifierCap = 10

SWEP.SpreadAddMove = 0.04
SWEP.SpreadAddMidAir = 0.0075
SWEP.SpreadMultHipFire = 5
SWEP.SpreadMultCrouch = 0.5

SWEP.SpreadMultSights = 0.0025/0.005
SWEP.RecoilModifierCapSights = 2.5
SWEP.RecoilModifierCapCrouch = 5

-------------------------- HANDLING

SWEP.FreeAimRadius = 8
SWEP.FreeAimRadiusSights = 2
SWEP.Sway = 1

SWEP.SwayMultMidAir = 2
SWEP.SwayAddMove = 0.5
SWEP.SwayMultMove = 1
SWEP.SwayMultCrouch = 0.5
SWEP.SwayMultShooting = 1.5
SWEP.SwayMultSights = 0.25

SWEP.SwayMultSights = 0.4

SWEP.AimDownSightsTime = 0.5
SWEP.SprintToFireTime = 0.6

SWEP.SpeedMult = 1
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.8
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1

-------------------------- MELEE

SWEP.Bash = false
SWEP.PrimaryBash = false

SWEP.BashDamage = 50
SWEP.BashLungeRange = 128
SWEP.BashRange = 64
SWEP.PreBashTime = 0.25
SWEP.PostBashTime = 0.5

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.7, 0, 0.825),
    Ang = Angle(0,0.5,0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1.1,
    CrosshairInSights = false
}

SWEP.Crosshair = true

SWEP.BipodPos = Vector(-2.58, 0, 1)
SWEP.BipodAng = Angle(0, 0, -5)

SWEP.SprintAng = Angle(40, -15, -15)
SWEP.SprintPos = Vector(3, 2, 0)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0, 3, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.2, -0.5, -1.5)
SWEP.CrouchAng = Angle(0, 0, -7)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(13, 28, 7)
SWEP.CustomizeSnapshotFOV = 110
SWEP.CustomizeNoRotate = false

SWEP.BarrelLength = 48

SWEP.NearWallPos = Vector(2, 0, -10)
SWEP.NearWallAng = Angle(45, 30, 0)

SWEP.CustomizeRotateAnchor = Vector(10.5, -2.55, -2.23)

SWEP.StandardPresets = {
}

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = false
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_5"
SWEP.MuzzleEffectQCA = 1

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

-------------------------- SOUNDS

SWEP.ShootSound = "myt_bf1942/dc/AKM.wav"
SWEP.ShootSoundSilenced = "gekolt_css/m4a1-1.wav"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"

SWEP.FiremodeSound = "arc9/firemode.ogg"

SWEP.Hook_TranslateAnimation = function(wep, curanim) -- numero random, uno per cento
    local rng = math.Truncate(util.SharedRandom("vest pex best pex", 1,100))
    if rng <= 15  then	-- how the skarm be looking at me when i click fireblast on my chainchomp			
		if	curanim == "reload" then return "reload_fail"	end	
	end
end


SWEP.Animations = {
    ["fire"] = {
        Source = {"fire"},
    },
    ["cycle"] = {
        Source = {"bolt"},
		EjectAt = 20/ 40,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },       { t = 0.05, lhik = 1, rhik = 1, }, 
        { t = 0.15, lhik = 1, rhik = 0, },{ t = 0.6, lhik = 1, rhik = 0, },{ t = 0.7, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "myt_bf1942/1918/Berdan_Bolt1.ogg" ,   t = 8 / 40},  
			{s =  "myt_bf1942/1918/Berdan_Bolt2.ogg" ,   t = 18 / 40},
        },
    },
    ["cycle_empty"] = {
        Source = {"bolt_last"},
		EjectAt = 20/ 40,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },       { t = 0.05, lhik = 1, rhik = 1, }, 
        { t = 0.15, lhik = 1, rhik = 0, },{ t = 0.6, lhik = 1, rhik = 0, },{ t = 0.7, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "myt_bf1942/1918/Berdan_Bolt1.ogg" ,   t = 8 / 40},  
			{s =  "myt_bf1942/1918/Berdan_Bolt2.ogg" ,   t = 18 / 40},
        },
    },
    ["fire_smg"] = {
        Source = {"fire_smg"},
    }, 
	["fire_sg"] = {
        Source = {"fire_sg"},
    },
	["fire_bolt"] = {
        Source = {"fire_bolt"},
    },
    ["fire_iron"] = {
        Source = {"fire_ads"},
    },
    ["reload"] = {
        Source = "wet",
        FireASAP = true,
        MinProgress = 0.93,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 1, rhik = 0, },{ t = 0.75, lhik = 1, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
			{s =  "myt_bf1942/dc/ak_bolt1.ogg" ,   t = 14 / 40},
			{s =  "myt_bf1942/dc/ak_bolt4.ogg" ,   t = 30 / 40},
            {s =  "myt_bf1942/dc/ak_mag1.ogg" ,    t = 32 / 40},
            {s =  "myt_bf1942/dc/ak_foley2.ogg" ,    t = 62 / 40},
            {s =  "myt_bf1942/dc/ak_mag2.ogg" ,    t = 101 / 40},
            {s =  "myt_bf1942/dc/ak_foley3.ogg" ,    t = 114 / 40},
        },
    },  
	["reload_fail"] = {
        Source = "wet_fail",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 1, rhik = 0, },{ t = 0.9, lhik = 1, rhik = 0, },{ t = 0.975, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
			{s =  "myt_bf1942/dc/ak_bolt1.ogg" ,   t = 14 / 40},
			{s =  "myt_bf1942/dc/ak_bolt4.ogg" ,   t = 30 / 40},
            {s =  "myt_bf1942/dc/ak_mag1.ogg" ,    t = 32 / 40},
            {s =  "myt_bf1942/dc/ak_foley2.ogg" ,    t = 62 / 40},
            {s =  "myt_bf1942/dc/r870_foley2.ogg" ,    t = 93 / 40},
            {s =  "myt_bf1942/dc/ak_mag2.ogg" ,    t = 159 / 40},
            {s =  "myt_bf1942/dc/ak_foley3.ogg" ,    t = 162 / 40},
        },
    },
    ["reload_empty"] = {
        Source = "dry",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 1, rhik = 0, }, { t = 0.85, lhik = 1, rhik = 0, },{ t = 0.925, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
			{s =  "myt_bf1942/dc/ak_bolt1.ogg" ,   t = 14 / 40},
			{s =  "myt_bf1942/dc/ak_bolt2.ogg" ,   t = 27 / 40},
            {s =  "myt_bf1942/dc/ak_mag1.ogg" ,    t = 54 / 40},
            {s =  "myt_bf1942/dc/ak_foley2.ogg" ,    t = 84 / 40},
            {s =  "myt_bf1942/dc/ak_mag2.ogg" ,    t = 131 / 40},
            {s =  "myt_bf1942/dc/ak_bolt3.ogg" ,    t = 150 / 40},
        },
    }, 
--------------------------------------------------------
    ["reload_bolt"] = {
        Source = "wet_bolt",
        FireASAP = true,
        MinProgress = 0.93,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 1, rhik = 0, },{ t = 0.75, lhik = 1, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
			{s =  "myt_bf1942/dc/ak_bolt1.ogg" ,   t = 13 / 40},
			{s =  "myt_bf1942/dc/ak_bolt4.ogg" ,   t = 32 / 40},
            {s =  "myt_bf1942/dc/ak_mag1.ogg" ,    t = 38 / 40},
            {s =  "myt_bf1942/dc/ak_foley2.ogg" ,    t = 62 / 40},
            {s =  "myt_bf1942/dc/ak_mag2.ogg" ,    t = 115 / 40},
            {s =  "myt_bf1942/dc/ak_foley3.ogg" ,    t = 114 / 40},
        },
    },  
    ["reload_empty_bolt"] = {
        Source = "dry_bolt",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 1, rhik = 0, }, { t = 0.85, lhik = 1, rhik = 0, },{ t = 0.925, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
			{s =  "myt_bf1942/dc/ak_bolt1.ogg" ,   t = 13 / 40},
			{s =  "myt_bf1942/dc/ak_bolt2.ogg" ,   t = 25 / 40},
            {s =  "myt_bf1942/dc/ak_mag1.ogg" ,    t = 44 / 40},
            {s =  "myt_bf1942/dc/ak_foley2.ogg" ,    t = 84 / 40},
            {s =  "myt_bf1942/dc/ak_mag2.ogg" ,    t = 123 / 40},
            {s =  "myt_bf1942/dc/ak_bolt3.ogg" ,    t = 145 / 40},
        },
    }, 
--------------------------------------------------------
	["reload_u"] = {
        Source = "wet_u",
        FireASAP = true,
        MinProgress = 0.93,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 1, rhik = 0, },{ t = 0.75, lhik = 1, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
			{s =  "myt_bf1942/dc/ak_bolt1.ogg" ,   t = 14 / 40},
			{s =  "myt_bf1942/dc/ak_bolt4.ogg" ,   t = 30 / 40},
            {s =  "myt_bf1942/dc/ak_mag1.ogg" ,    t = 32 / 40},
            {s =  "myt_bf1942/dc/ak_foley2.ogg" ,    t = 62 / 40},
            {s =  "myt_bf1942/dc/ak_mag2.ogg" ,    t = 101 / 40},
            {s =  "myt_bf1942/dc/ak_foley3.ogg" ,    t = 114 / 40},
        },
    },
    ["reload_empty_u"] = {
        Source = "dry_u",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 1, rhik = 0, }, { t = 0.85, lhik = 1, rhik = 0, },{ t = 0.925, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
			{s =  "myt_bf1942/dc/ak_bolt1.ogg" ,   t = 14 / 40},
			{s =  "myt_bf1942/dc/ak_bolt2.ogg" ,   t = 27 / 40},
            {s =  "myt_bf1942/dc/ak_mag1.ogg" ,    t = 54 / 40},
            {s =  "myt_bf1942/dc/ak_foley2.ogg" ,    t = 84 / 40},
            {s =  "myt_bf1942/dc/ak_mag2.ogg" ,    t = 131 / 40},
            {s =  "myt_bf1942/dc/ak_bolt3.ogg" ,    t = 150 / 40},
        },
    },
	["reload_u_fail"] = {
        Source = "wet_u_fail",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 1, rhik = 0, },{ t = 0.9, lhik = 1, rhik = 0, },{ t = 0.975, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
			{s =  "myt_bf1942/dc/ak_bolt1.ogg" ,   t = 14 / 40},
			{s =  "myt_bf1942/dc/ak_bolt4.ogg" ,   t = 30 / 40},
            {s =  "myt_bf1942/dc/ak_mag1.ogg" ,    t = 32 / 40},
            {s =  "myt_bf1942/dc/ak_foley2.ogg" ,    t = 62 / 40},
            {s =  "myt_bf1942/dc/r870_foley2.ogg" ,    t = 93 / 40},
            {s =  "myt_bf1942/dc/ak_mag2.ogg" ,    t = 159 / 40},
            {s =  "myt_bf1942/dc/ak_foley3.ogg" ,    t = 162 / 40},
        },
    },
	["reload_tabuk"] = {
        Source = "wet_tabuk",
        FireASAP = true,
        MinProgress = 0.93,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 1, rhik = 0, },{ t = 0.75, lhik = 1, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
			{s =  "myt_bf1942/dc/ak_bolt1.ogg" ,   t = 14 / 40},
			{s =  "myt_bf1942/dc/ak_bolt4.ogg" ,   t = 30 / 40},
            {s =  "myt_bf1942/dc/ak_mag1.ogg" ,    t = 32 / 40},
            {s =  "myt_bf1942/dc/ak_foley2.ogg" ,    t = 62 / 40},
            {s =  "myt_bf1942/dc/ak_mag2.ogg" ,    t = 101 / 40},
            {s =  "myt_bf1942/dc/ak_foley3.ogg" ,    t = 114 / 40},
        },
    },
    ["reload_empty_tabuk"] = {
        Source = "dry_tabuk",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 1, rhik = 0, }, { t = 0.85, lhik = 1, rhik = 0, },{ t = 0.925, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
			{s =  "myt_bf1942/dc/ak_bolt1.ogg" ,   t = 14 / 40},
			{s =  "myt_bf1942/dc/ak_bolt2.ogg" ,   t = 27 / 40},
            {s =  "myt_bf1942/dc/ak_mag1.ogg" ,    t = 54 / 40},
            {s =  "myt_bf1942/dc/ak_foley2.ogg" ,    t = 84 / 40},
            {s =  "myt_bf1942/dc/ak_mag2.ogg" ,    t = 131 / 40},
            {s =  "myt_bf1942/dc/ak_bolt3.ogg" ,    t = 150 / 40},
        },
    },
	["reload_tabuk_fail"] = {
        Source = "wet_tabuk_fail",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 1, rhik = 0, },{ t = 0.9, lhik = 1, rhik = 0, },{ t = 0.975, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
			{s =  "myt_bf1942/dc/ak_bolt1.ogg" ,   t = 14 / 40},
			{s =  "myt_bf1942/dc/ak_bolt4.ogg" ,   t = 30 / 40},
            {s =  "myt_bf1942/dc/ak_mag1.ogg" ,    t = 32 / 40},
            {s =  "myt_bf1942/dc/ak_foley2.ogg" ,    t = 62 / 40},
            {s =  "myt_bf1942/dc/r870_foley2.ogg" ,    t = 93 / 40},
            {s =  "myt_bf1942/dc/ak_mag2.ogg" ,    t = 159 / 40},
            {s =  "myt_bf1942/dc/ak_foley3.ogg" ,    t = 162 / 40},
        },
    },
--------------------------------------------------------
	["reload_saiga"] = {
        Source = "wet_saiga",
        FireASAP = true,
        MinProgress = 0.93,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 1, rhik = 0, },{ t = 0.75, lhik = 1, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
			{s =  "myt_bf1942/dc/ak_bolt1.ogg" ,   t = 14 / 40},
			{s =  "myt_bf1942/dc/ak_bolt4.ogg" ,   t = 30 / 40},
            {s =  "myt_bf1942/dc/ak_mag1.ogg" ,    t = 32 / 40},
            {s =  "myt_bf1942/dc/ak_foley2.ogg" ,    t = 62 / 40},
            {s =  "myt_bf1942/dc/ak_mag2.ogg" ,    t = 101 / 40},
            {s =  "myt_bf1942/dc/ak_foley3.ogg" ,    t = 114 / 40},
        },
    },	
	["reload_saiga_fail"] = {
        Source = "wet_saiga_fail",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 1, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },{ t = 1, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
			{s =  "myt_bf1942/dc/ak_bolt1.ogg" ,   t = 14 / 40},
			{s =  "myt_bf1942/dc/ak_bolt4.ogg" ,   t = 30 / 40},
            {s =  "myt_bf1942/dc/ak_mag1.ogg" ,    t = 32 / 40},
            {s =  "myt_bf1942/dc/ak_foley2.ogg" ,    t = 62 / 40},
            {s =  "myt_bf1942/dc/r870_foley2.ogg" ,    t = 93 / 40},
            {s =  "myt_bf1942/dc/ak_mag2.ogg" ,    t = 159 / 40},
            {s =  "myt_bf1942/dc/ak_foley3.ogg" ,    t = 162 / 40},
        },
    },
    ["reload_empty_saiga"] = {
        Source = "dry_saiga",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 1, rhik = 0, }, { t = 0.85, lhik = 1, rhik = 0, },{ t = 0.925, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
			{s =  "myt_bf1942/dc/ak_bolt1.ogg" ,   t = 14 / 40},
			{s =  "myt_bf1942/dc/ak_bolt2.ogg" ,   t = 27 / 40},
            {s =  "myt_bf1942/dc/ak_mag1.ogg" ,    t = 54 / 40},
            {s =  "myt_bf1942/dc/ak_foley2.ogg" ,    t = 84 / 40},
            {s =  "myt_bf1942/dc/ak_mag2.ogg" ,    t = 131 / 40},
            {s =  "myt_bf1942/dc/ak_bolt3.ogg" ,    t = 150 / 40},
        },
    }, 
--------------------------------------------------------
	["reload_scor"] = {
        Source = "wet_scor",
        FireASAP = true,
        MinProgress = 0.93,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.125, lhik = 1, rhik = 0, },{ t = 0.75, lhik = 1, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
			{s =  "myt_bf1942/dc/ak_bolt1.ogg" ,   t = 14 / 40},
			{s =  "myt_bf1942/dc/ak_bolt4.ogg" ,   t = 30 / 40},
            {s =  "myt_bf1942/dc/ak_mag1.ogg" ,    t = 32 / 40},
            {s =  "myt_bf1942/dc/ak_foley2.ogg" ,    t = 62 / 40},
            {s =  "myt_bf1942/dc/ak_mag2.ogg" ,    t = 101 / 40},
            {s =  "myt_bf1942/dc/ak_foley3.ogg" ,    t = 114 / 40},
        },
    },	
    ["reload_empty_scor"] = {
        Source = "dry_scor",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 1, rhik = 0, }, { t = 0.85, lhik = 1, rhik = 0, },{ t = 0.925, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
			{s =  "myt_bf1942/dc/ak_bolt1.ogg" ,   t = 14 / 40},
			{s =  "myt_bf1942/dc/ak_bolt2.ogg" ,   t = 27 / 40},
            {s =  "myt_bf1942/dc/ak_mag1.ogg" ,    t = 54 / 40},
            {s =  "myt_bf1942/dc/ak_foley2.ogg" ,    t = 84 / 40},
            {s =  "myt_bf1942/dc/ak_mag2.ogg" ,    t = 131 / 40},
            {s =  "myt_bf1942/dc/ak_bolt3.ogg" ,    t = 150 / 40},
        },
    },
	["reload_scor_fail"] = {
        Source = "wet_scor_fail",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 1, rhik = 0, },{ t = 0.9, lhik = 1, rhik = 0, },{ t = 0.975, lhik = 1, rhik = 1, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
			{s =  "myt_bf1942/dc/ak_bolt1.ogg" ,   t = 14 / 40},
			{s =  "myt_bf1942/dc/ak_bolt4.ogg" ,   t = 30 / 40},
            {s =  "myt_bf1942/dc/ak_mag1.ogg" ,    t = 32 / 40},
            {s =  "myt_bf1942/dc/ak_foley2.ogg" ,    t = 62 / 40},
            {s =  "myt_bf1942/dc/r870_foley2.ogg" ,    t = 93 / 40},
            {s =  "myt_bf1942/dc/ak_mag2.ogg" ,    t = 159 / 40},
            {s =  "myt_bf1942/dc/ak_foley3.ogg" ,    t = 162 / 40},
        },
    },
--------------------------------------------------------
    ["draw"] = {
        Source = "draw",
        FireASAP = true,
        MinProgress = 0.5,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 0 / 40},
        },
    },
    ["ready"] = {
        Source = "draw",
        FireASAP = true,
        MinProgress = 0.5,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 0 / 40},
        },
    },
    ["holster"] = {
        Source = "holster",
    },
    ["idle"] = {
        Source = "idle",
    },
}

-------------------------- ATTACHMENTS

SWEP.DefaultBodygroups = "00600000000000000000"

SWEP.AttachmentElements = {
    ["s_1"] = 	{ Bodygroups = { {2, 0} },},
    ["s_2"] = 	{ Bodygroups = { {2, 1} },},
    ["s_3"] = 	{ Bodygroups = { {2, 3} },},  
	["s_4"] = 	{ Bodygroups = { {2, 5} },},	
	["s_5"] = 	{ Bodygroups = { {2, 2} },},	
	
	["g_1"] = 	{ Bodygroups = { {3, 3} },},
	["g_2"] = 	{ Bodygroups = { {3, 5} },},	
	["g_3"] = 	{ Bodygroups = { {3, 1} },},
	["g_4"] = 	{ Bodygroups = { {3, 6} },},
	["g_5"] = 	{ Bodygroups = { {3, 8} },},
	["g_6"] = 	{ Bodygroups = { {3, 7} },},
	["g_7"] = 	{ Bodygroups = { {3, 2} },},
	["g_8"] = 	{ 
		Bodygroups = { {3, 9} },
		--[[AttPosMods = { 
			[6] = { Pos = Vector(0, 0, 3), } 
		}		]]
	}, 
	
	["hg_1"] = 	{ 
		Bodygroups = { {1, 6} },
		IronSights = {
			Pos = Vector(-2.725, -1, 1.25),
			Ang = Angle(0,0.3,0),
			Midpoint = 	{ -- Where the gun should be at the middle of it's irons
			Pos = Vector(0, 15, -4),
			Ang = Angle(0, 0, -45),
						},
    Magnification = 1.1,
    CrosshairInSights = false,
						}
	},
	["hg_2"] = 	{ 
		Bodygroups = { {1, 4} },
		IronSights = {
			Pos = Vector(-2.725, -1, 0.2),
			Ang = Angle(0,0.4,0),
			Midpoint = 	{ -- Where the gun should be at the middle of it's irons
			Pos = Vector(0, 15, -4),
			Ang = Angle(0, 0, -45),
						},
    Magnification = 1.1,
    CrosshairInSights = false,
						}
	},
	["ak74u_irons"] = 	{ 
	Bodygroups = { {6, 2}, },
	IronSights = {
		Pos = Vector(-2.725, -2, 0.65),
		Ang = Angle(0,-0.15,0),
		Midpoint = 	{ -- Where the gun should be at the middle of it's irons
		Pos = Vector(0, 15, -4),
		Ang = Angle(0, 0, -45),
				},
    Magnification = 1.1,
    CrosshairInSights = false,
		}
	},
	["hg_3"] = 	{ Bodygroups = { {1, 1} },},
	["hg_4"] = 	{ Bodygroups = { {1, 2} },},
	["hg_5"] = 	{ Bodygroups = { {1, 5} },},
	["hg_6"] = 	{ Bodygroups = { {1, 7} },},
	["hg_7"] = 	{ Bodygroups = { {1, 12} },},
	["hg_8"] = 	{ Bodygroups = { {1, 13} },},

	["cal_1"] =	{ Bodygroups = { {0, 11} },},
	["cal_2"] =	{ Bodygroups = { {0, 3} },},	
	["cal_3"] =	{ Bodygroups = { {0, 8} },},
	["cal_4"] =	{ Bodygroups = { {0, 6}, {5, 2} },},
	["cal_5"] =	{ Bodygroups = { {0, 9}, {5, 1}, {1, 8} },},
	["cal_6"] = 	{ 
	Bodygroups = { {0, 13},{5, 3}, {4, 1}, },
	AttPosMods = { 
		[7] = { Pos = Vector(0, -5.2, 5), } 
		},	
	},	

    ["rail_def"] = { Bodygroups = { {6, 1} },},
    --["fg_def"] = { Bodygroups = { {8, 1} },},

}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model  -- most insufficient method ever
    if wep:HasElement("barrel_sg") and wep:HasElement("hg_2") 	then model:SetBodygroup(1,10) end
    if wep:HasElement("barrel_sg") and wep:HasElement("hg_3") 	then model:SetBodygroup(1,9) end 
	if wep:HasElement("barrel_sg") and wep:HasElement("hg_1") 	then model:SetBodygroup(1,6) end
	if wep:HasElement("barrel_sg") and wep:HasElement("hg_5") 	then model:SetBodygroup(1,11) end
	-- force top rail
	if wep:HasElement("rail_def") then model:SetBodygroup(6,1) end
	if wep:HasElement("rail_def") and wep:HasElement("cal_6") then model:SetBodygroup(6,3) end
end
 
SWEP.Attachments = {
    {
        PrintName = "Receiver",
        DefaultName = "Standard Receiver",

        Category = "bf1942_dc_ak47_cal",
        Bone = "W_Main",
        Pos = Vector(0, 2, 7.5),
        Ang = Angle(90, 0, -90),
    },

    {
        PrintName = "Handguard",
        DefaultName = "Standard Handguard",

        ExcludeElements = {"noguard"},
        Category = "bf1942_dc_ak47_hg",
        Bone = "W_Main",
        Pos = Vector(0, -3, 15),
        Ang = Angle(90, 0, -90),
    },

    {
        PrintName = "Stock",
        DefaultName = "No Stock",
        ExcludeElements = {"nostock"},
        Installed = "myt_bf1942_dc_ak47_stock1",

        DefaultIcon = Material("arc9/def_att_icons/stock_ak.png"),
		Category = "bf1942_dc_ak47_stock",
        Bone = "W_Main",
        Pos = Vector(0, -1, -5),
        Ang = Angle(0, 0, 0),
    },

    {
        PrintName = "Grip",
        DefaultName = "Standard Grip",

        DefaultIcon = Material("arc9/def_att_icons/grip_ar.png"),
        ExcludeElements = {"nogrip"},
        Category = "bf1942_dc_ak47_grip",
        Bone = "W_Main",
        Pos = Vector(0, 2.5, -3),
        Ang = Angle(0, 0, 0),
    },

    {
        PrintName = "Foregrip",
        DefaultName = "None",
        InstalledElements = {"fg_def"},

        DefaultIcon = Material("arc9/def_att_icons/grip.png"),
        ExcludeElements = {"nofg"},
        Category = {"grip_css"},
        Bone = "W_Main",
        Pos = Vector(0, 0, 14),
        Ang = Angle(90, 0, -90),
        MergeSlots = {9},
    },
	
    {
        PrintName = "Off Hand",
        DefaultName = "None",

        DefaultIcon = Material("arc9/def_att_icons/grip.png"),
        ExcludeElements = {"nooh", "rh_occupied"},
        Category = {"bf1942_dc_offhand"},
        Bone = "W_Main",
        Pos = Vector(0, 0, -10),
        Ang = Angle(90, 0, -90),
    },

    {
        PrintName = "Optic",
        DefaultName = "None",
        InstalledElements = {"rail_def"},

        DefaultIcon = Material("arc9/def_att_icons/optic.png"),
        Category = {"optic_css", "optic_css_free"},
        Bone = "W_Main",
        Pos = Vector(0, -4.8, 3),
        Ang = Angle(90, 0, -90),
        MergeSlots = {10},
    },

    {
        PrintName = "Muzzle",
        DefaultName = "None",

        DefaultIcon = Material("arc9/def_att_icons/barrel.png"),
        ExcludeElements = {"pre_muzzed"},
        Category = {"muzzle_css"},
        Bone = "W_Main",
        Pos = Vector(0, -2.25, 28.5),
        Ang = Angle(90, 0, -90),
    },

    {   --9 permanent ubgl, affected separately from the changes of the above attachment
        PrintName = "",
        DefaultName = "",
        Hidden = true,
        InstalledElements = {"nooh"},
        ExcludeElements = {"nogrip", "u_disk", "u_919x", "u_566"},
        Category = {"css_ubgl"},
        Bone = "W_Main",
        Pos = Vector(0, 1, 12),
        Ang = Angle(90, 0, -90),
    },
    {   --10 dovetail
        PrintName = "",
        DefaultName = "",
        Hidden = true,
        InstalledElements = {"blank_toprail"},

        Category = {"bfc_optic_dove"},
        Bone = "W_Main",
        Pos = Vector(0.9, -2.5, 3),
        Ang = Angle(90, 0, -90),
    },
}