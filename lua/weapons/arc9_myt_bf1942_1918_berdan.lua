AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - BF1942"
SWEP.SubCategory = "1918"

SWEP.PrintName = "Berdan No.2"
SWEP.TrueName = "Berdan No.2"

SWEP.Class = "Rifle"
SWEP.Trivia = {
	["Country of Origin"] = [[[Empire of] Russia]],
	["Caliber"] = "10.7×58mmR",
}

SWEP.Credits = {
}

SWEP.Description = [[Cock and Sack in the same word is wild.]]

SWEP.ViewModel = "models/weapons/myt_bf1942/1918/c_berdan.mdl"
SWEP.WorldModel = "models/weapons/myt_bf1942/1918/c_berdan.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/myt_bf1942/1918/c_berdan.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-1, 2, -7),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-6, 3, -7),
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}
SWEP.MirrorVMWMHeldOnly = false

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 100 -- Damage done at point blank range
SWEP.DamageMin = 70 -- Damage done at maximum range

SWEP.DamageRand = 0.5

SWEP.RangeMin = 700 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 9000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 16 -- Units of wood that can be penetrated by this gun.

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

SWEP.PhysBulletMuzzleVelocity = 2840 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 20 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
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
        Mode = 1,
        -- add other attachment modifiers
    },
}

-------------------------- RECOIL

SWEP.RecoilPatternDrift = 15

-- General recoil multiplier
SWEP.Recoil = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.75 -- Multiplier for vertical recoil
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

SWEP.Spread = 0.0025

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

SWEP.FreeAimRadius = 6
SWEP.FreeAimRadiusSights = 3
SWEP.Sway = 1

SWEP.SwayMultMidAir = 2
SWEP.SwayAddMove = 0.5
SWEP.SwayMultMove = 1
SWEP.SwayMultCrouch = 0.5
SWEP.SwayMultShooting = 1.5
SWEP.SwayMultSights = 0.25

SWEP.SwayMultSights = 0.4

SWEP.AimDownSightsTime = 0.6
SWEP.SprintToFireTime = 0.5

SWEP.SpeedMult = 1
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.9
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1

-------------------------- MELEE

SWEP.Bash = false
SWEP.PrimaryBash = false

SWEP.BashDamage = 100
SWEP.BashLungeRange = 0
SWEP.BashRange = 128
SWEP.PreBashTime = 0.15
SWEP.PostBashTime = 0.8
SWEP.BashWhileSprint = true

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.705, 0, 3.15),
    Ang = Angle(0,0,0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1.1,
    CrosshairInSights = false
}

SWEP.Crosshair = true
--[[
SWEP.PeekPos = Vector(2, 4, -2)
SWEP.PeekAng = Angle(0, 0, -10)
SWEP.NoPeekCrosshair = false -- Not displays peek crosshair even if its enabled
]]
SWEP.BipodPos = Vector(-2.58, 0, 1)
SWEP.BipodAng = Angle(0, 0, -5)

SWEP.SprintAng = Angle(40, -15, -15)
SWEP.SprintPos = Vector(3, 2, 0)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0, 5, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.2, -0.5, -1.5)
SWEP.CrouchAng = Angle(0, 0, -7)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(20, 32, 10)
SWEP.CustomizeSnapshotFOV = 110
SWEP.CustomizeNoRotate = false

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

SWEP.MuzzleParticle = "muzzleflash_3"
SWEP.MuzzleEffectQCA = 1

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.NoShellEject = true
SWEP.NoShellEjectManualAction = true

-------------------------- SOUNDS

SWEP.ShootSound = "myt_bf1942/1918/Berdan.wav"
SWEP.ShootSoundSilenced = "gekolt_css/m4a1-1.wav"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"
SWEP.DistantShootSound = "myt_bf1942/1918/BerdanDis.wav"

SWEP.FiremodeSound = "arc9/firemode.ogg"

SWEP.BulletBones = {
    [1] = {"W_Mag","W_Rocket"}
}

SWEP.Animations = {
    ["fire"] = {
        Source = {"fire"},
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },  
	["fire_big"] = {
        Source = {"fire_big"},
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    }, 
	["fire_bmg"] = {
        Source = {"fire_bmg"},
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    }, 
    ["cycle"] = {
        Source = {"bolt"},
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/1918/Berdan_Bolt1.ogg" ,   t = 10 / 40},  
			{s =  "myt_bf1942/1918/Berdan_Bolt2.ogg" ,   t = 20 / 40},
        },
        EjectAt = 18 / 40,
        FireASAP = true,
        MinProgress = 0.8,
    },     
	["cycle_fail"] = {
        Source = {"bolt_fail"},
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
        EventTable = { 
            {s =  "myt_bf1942/1918/Berdan_Bolt1.ogg" ,	t = 10 / 40},  
            {s =  "myt_bf1942/1918/Berdan_Bolt15.ogg" ,	t = 20 / 40},
			{s =  "myt_bf1942/1918/Berdan_Mag15.ogg" ,	t = 50 / 40},
			{s =  "myt_bf1942/1918/Berdan_Bolt2.ogg" ,	t = 68 / 40},
        },
        EjectAt = 18 / 40,
        FireASAP = true,
        MinProgress = 0.9,
    }, 
	["bash_bayo"] = {
        Source = {"melee"},
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },	
	["bash"] = {
        Source = {"melee"},
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },	
	["idle_sprint_bayo"] = {
        Source = {"sprint"},
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["reload_start"] = {
        Source = "reload_start",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
			{s =  "myt_bf1942/1918/Berdan_Bolt1_Half.ogg" ,	t = 13 / 40},  
			{s =  "myt_bf1942/1918/Berdan_Bolt2_Half.ogg" ,	t =	31 / 40},  
			{s =  "myt_bf1942/1918/Berdan_Mag.ogg" ,		t =	47 / 40},
        },
		RestoreAmmo = 1,
        MagSwapTime = 5 / 40,
    }, 
    ["reload_start_empty"] = {
        Source = "reload_start_empty",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {   
			{s =  "myt_bf1942/1918/Berdan_Bolt1_HalfE.ogg" ,	t = 13 / 40},  
			{s =  "myt_bf1942/1918/Berdan_Bolt2_HalfE.ogg" ,	t =	31 / 40},  
			{s =  "myt_bf1942/1918/Berdan_Mag.ogg" ,			t =	47 / 40},
        },
		RestoreAmmo = 1,
		RefillProgress = 50/40,
		MinProgress = 0.1,
        MagSwapTime = 50 / 40,
    },  
    ["reload_insert"] = {
        Source = "reload_loop",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = { 
			{s =  "myt_bf1942/1918/Berdan_Mag.ogg" ,   t = 15 / 40},
        },
		RefillProgress = 20 / 40,
    },
	["reload_insert_fail"] = {
        Source = "reload_loop_fail",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = { 
			{s =  "myt_bf1942/1918/Berdan_Mag125.ogg" ,	t = 20 / 40},
			{s =  "myt_bf1942/1918/Berdan_Mag15.ogg" ,	t = 45 / 40},
        },
		RefillProgress = 55 / 40,
    },  
    ["reload_finish"] = {
        Source = "reload_end",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/1918/Berdan_Bolt2.ogg" ,   t = 5 / 40},  
        },
        FireASAP = true,
        MinProgress = 0.8,
		MagSwapTime = 5 / 40,
    },  
	["reload_finish_prof"] = {
        Source = "reload_end_prof",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
			{s =  "myt_bf1942/1918/Berdan_Mag.ogg" ,   t = 15 / 40},
            {s =  "myt_bf1942/1918/Berdan_Bolt2.ogg" ,   t = 41 / 40},  
        },
        FireASAP = true,
        MinProgress = 0.8,
		MagSwapTime = 5 / 40,
		RefillProgress = 0.2,
		RestoreAmmo = 1,
    },   
	["reload_finish_overload"] = {
        Source = "reload_end_overload",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
			{s =  "myt_bf1942/1918/Berdan_Mag125.ogg" ,   t = 15 / 40},
			{s =  "myt_bf1942/1918/Berdan_Mag3.ogg" ,   t = 41 / 40},
            {s =  "myt_bf1942/1918/Berdan_Bolt2.ogg" ,   t = 66 / 40},  
        },
        FireASAP = true,
        MinProgress = 0.8,
		MagSwapTime = 5 / 40,
		RestoreAmmo = 1,
    },   	
	["reload_finish_fail"] = {
        Source = "reload_end_fail",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/1918/Berdan_Bolt15.ogg" ,	t = 10 / 40},
			{s =  "myt_bf1942/1918/Berdan_Mag15.ogg" ,	t = 33 / 40},
			{s =  "myt_bf1942/1918/Berdan_Bolt2.ogg" ,	t = 50 / 40},
        },
        FireASAP = true,
        MinProgress = 0.9,
		MagSwapTime = 5 / 40,
    }, 


    ["reload"] = {
        Source = "dry",
        FireASAP = true,
        MinProgress = 0.9,
        MagSwapTime = 5 / 40,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EjectAt = 32 / 40,
        EventTable = {
            {s =  "myt_bf1942/1918/Berdan_Bolt1.ogg" ,   t = 26 / 40},  
			{s =  "myt_bf1942/1918/Berdan_Mag.ogg" ,   t = 47 / 40},
			{s =  "myt_bf1942/1918/Berdan_Bolt2.ogg" ,   t = 71 / 40},
        },
    },  
    ["reload_empty"] = {
        Source = "dry",
        FireASAP = true,
        MinProgress = 0.9,
        MagSwapTime = 5 / 40,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EjectAt = 32 / 40,
        EventTable = {
            {s =  "myt_bf1942/1918/Berdan_Bolt1.ogg" ,   t = 26 / 40},  
			{s =  "myt_bf1942/1918/Berdan_Mag.ogg" ,   t = 47 / 40},
			{s =  "myt_bf1942/1918/Berdan_Bolt2.ogg" ,   t = 71 / 40},
        },
    },  
	["reload_empty_rpg"] = {
        Source = "dry_rpg",
        FireASAP = true,
        MinProgress = 0.9,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },        { t = 0.6, lhik = 1, rhik = 0, },
        { t = 0.65, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EjectAt = 32 / 40,
        MagSwapTime = 5 / 40,
        EventTable = {
            {s =  "myt_bf1942/1918/Berdan_Bolt1.ogg" ,   t = 26 / 40},  
			{s =  "myt_bf1942/1918/Berdan_Mag.ogg" ,   t = 47 / 40},
			{s =  "myt_bf1942/1918/Berdan_Bolt2.ogg" ,   t = 71 / 40},
			{s =  "myt_bf1942/1918/Berdan_RPG.ogg" ,   t = 118 / 40},
        },
    }, 
    ["reload_empty_50bmg"] = {
        Source = "dry_50bmg",
        FireASAP = true,
        MinProgress = 0.9,
        MagSwapTime = 5 / 40,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EjectAt = 32 / 40,
        EventTable = {
            {s =  "myt_bf1942/1918/Berdan_Bolt1.ogg" ,   t = 26 / 40},  
			{s =  "myt_bf1942/1918/Berdan_Mag.ogg" ,   t = 47 / 40},
			{s =  "myt_bf1942/1918/Berdan_Bolt2.ogg" ,   t = 77 / 40},
        },
    }, 
    ["reload_empty_sg"] = {
        Source = "dry",
        FireASAP = true,
        MinProgress = 0.9,
        MagSwapTime = 5 / 40,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EjectAt = 32 / 40,
        EventTable = {
            {s =  "myt_bf1942/1918/Berdan_Bolt1.ogg" ,   t = 26 / 40},  
			{s =  "myt_bf1942/1918/Berdan_MagSG.ogg" ,   t = 47 / 40},
			{s =  "myt_bf1942/1918/Berdan_Bolt2.ogg" ,   t = 71 / 40},
        },
    },  

	["reload_fail"] = {
        Source = "dry_fail",
        FireASAP = true,
        MinProgress = 0.9,
        MagSwapTime = 5 / 40,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EjectAt = 32 / 40,
        EventTable = {
            {s =  "myt_bf1942/1918/Berdan_Bolt1.ogg" ,	t = 26 / 40},  
			{s =  "myt_bf1942/1918/Berdan_Mag.ogg" ,	t = 47 / 40},
            {s =  "myt_bf1942/1918/Berdan_Bolt15.ogg" ,	t = 80 / 40},
			{s =  "myt_bf1942/1918/Berdan_Mag15.ogg" ,	t = 100 / 40},
			{s =  "myt_bf1942/1918/Berdan_Bolt2.ogg" ,	t = 120 / 40},
        },
    }, 
	["reload_50bmg_fail"] = {
        Source = "dry_50bmg_fail",
        FireASAP = true,
        MinProgress = 0.9,
        MagSwapTime = 5 / 40,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EjectAt = 32 / 40,
        EventTable = {
            {s =  "myt_bf1942/1918/Berdan_Bolt1.ogg" ,	t = 26 / 40},  
			{s =  "myt_bf1942/1918/Berdan_Mag.ogg" ,	t = 47 / 40},
            {s =  "myt_bf1942/1918/Berdan_Bolt15.ogg" ,	t = 80 / 40},
			{s =  "myt_bf1942/1918/Berdan_Mag15.ogg" ,	t = 100 / 40},
			{s =  "myt_bf1942/1918/Berdan_Bolt2.ogg" ,	t = 125 / 40},
        },
    }, 	
	["reload_rpg_fail"] = {
        Source = "dry_rpg_fail",
        FireASAP = true,
        MinProgress = 0.9,
        MagSwapTime = 5 / 40,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EjectAt = 32 / 40,
        EventTable = {
            {s =  "myt_bf1942/1918/Berdan_Bolt1.ogg" ,	t = 26 / 40},  
			{s =  "myt_bf1942/1918/Berdan_Mag.ogg" ,	t = 47 / 40},
            {s =  "myt_bf1942/1918/Berdan_Bolt15.ogg" ,	t = 80 / 40},
			{s =  "myt_bf1942/1918/Berdan_Mag15.ogg" ,	t = 100 / 40},
			{s =  "myt_bf1942/1918/Berdan_Bolt2.ogg" ,	t = 125 / 40},
			{s =  "myt_bf1942/1918/Berdan_RPG.ogg" ,	t = 163 / 40},
        },
    }, 
    ["reload_sg_fail"] = {
        Source = "dry_sg_fail",
        FireASAP = true,
        MinProgress = 0.9,
        MagSwapTime = 5 / 40,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EjectAt = 32 / 40,
        EventTable = {
            {s =  "myt_bf1942/1918/Berdan_Bolt1.ogg" ,		t = 26 / 40},  
			{s =  "myt_bf1942/1918/Berdan_MagSG.ogg" ,		t = 47 / 40},
            {s =  "myt_bf1942/1918/Berdan_Bolt15.ogg" ,		t = 80 / 40},
			{s =  "myt_bf1942/1918/Berdan_MagSG15.ogg" ,	t = 100 / 40},
			{s =  "myt_bf1942/1918/Berdan_Bolt2.ogg" ,		t = 120 / 40},
        },
    }, 
--------------------------------------------------------
    ["draw"] = {
        Source = "draw",
        FireASAP = true,
        MinProgress = 0.65,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 0 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 0, rhik = 0, }, { t = 0.5, lhik = 0, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["ready"] = {
        Source = "draw",
        FireASAP = true,
        MinProgress = 0.65,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 0 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 0, rhik = 0, }, { t = 0.5, lhik = 0, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["idle"] = {
        Source = "idle",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    }, 
    ["idle_sprint"] = {
        Source = "idle",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    }, 
    ["exit_ubgl"] = {		-- bodging
        Source = "idle",
        MinProgress = 0.7,
		FireASAP = true,
		Time = 0.5,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, }, { t = 0.2, lhik = 1, rhik = 1, },
        { t = 0.4, lhik = 1, rhik = 0, },{ t = 1, lhik = 1, rhik = 0, },
        },
    },  
}


SWEP.Hook_TranslateAnimation = function(wep, curanim)
	if	curanim == "exit_ubgl_empty" then return "exit_ubgl"	end		-- 	bodging for off hand weapon
	if	curanim == "exit_ubgl_glempty" then return "exit_ubgl"	end	
	
	-- reload fuck up --
    local rng = math.Truncate(util.SharedRandom("vest pex best pex", 1,100))
	local varextra = 0		-- for att
	local reload_bodge = 0	-- accidental overloading only for the 5th to 6th bullet, ending at 4th or lower wont trigger
	local dementia		 = 0
	local dementia_start = 0

	if wep:HasElement("cal_sg") then varextra = 15		-- hypnosis
	elseif wep:HasElement("cal_50") then varextra = 20	-- grass whistle
	elseif wep:HasElement("cal_gl") then varextra = -5	-- hydro pump
	elseif wep:HasElement("cal_mag") then varextra = 25	-- the blunder policy inferno chandelure in the back
	end

	-- sometimes you just kinda forgot about the iron fleet and euron forces
	if	wep:Clip1() == 5 then 											dementia_start = 0 reload_bodge = 1 
	-- sorry sorry sorry
	elseif wep:Clip1() == 4 and dementia_start == 0 then dementia = 5	dementia_start = 1 reload_bodge = 0	-- Diancie rolls worst fucking luck, asked to missed diamond storm
	elseif wep:Clip1() == 3 and dementia_start == 0 then dementia = 30 	dementia_start = 1 reload_bodge = 0	-- focus missed
	elseif wep:Clip1() == 2 and dementia_start == 0 then dementia = 50 	dementia_start = 1 reload_bodge = 0	-- also focus missed
	elseif wep:Clip1() == 1 and dementia_start == 0 then dementia = 70 	dementia_start = 1 reload_bodge = 0	-- focus blast
	elseif wep:Clip1() == 0 and dementia_start == 0 then dementia = 15 	dementia_start = 1 reload_bodge = 0
	else 												 dementia = 0 	dementia_start = 0 reload_bodge = 0 end	

    if rng <= 25 + varextra  then	-- how the blissey be staring at me while my heatran missed all 8 magma storm	
		if	curanim == "reload_empty"	then 	return "reload_fail"		end	

		if	curanim == "reload_insert"	then 	return "reload_insert_fail"	end
		if	curanim == "cycle"			and wep:Clip1() 	!= 0	then	return "cycle_fail"				end	-- there's nothing in mag to fail
		if	curanim == "reload_finish"	and reload_bodge	== 0	then	return "reload_finish_fail"		end	-- regular reload fail
	elseif rng > dementia then	-- the more you initially have to load the higher the chance of overloading
		if	curanim == "reload_finish"	and reload_bodge	== 1	then	return "reload_finish_overload"	end	-- overloading a 6th bullet
	end
end

-------------------------- ATTACHMENTS

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentElements = {
    ["cal_sg"] = 	{ Bodygroups = { {1, 1}, {2, 1} },},   
	["cal_mag"] = 	{ Bodygroups = { {5, 1} },},  
	["cal_gl"] = 	{ 
		Bodygroups = { {1, 2}, {2, 2}, {3, 2} },
		IronSights = {
			Pos = Vector(-2.705, -1, 2),
			Ang = Angle(0,0.5,0),
			Midpoint = 	{ -- Where the gun should be at the middle of it's irons
			Pos = Vector(0, 15, -4),
			Ang = Angle(0, 0, -45),
						},
    Magnification = 1.1,
    CrosshairInSights = false,
						}
	}, 
    ["cal_50"] = 	{ Bodygroups = { {1, 3}, {2, 1} },}, 
	["bayonet"] = 	{ Bodygroups = { {4, 1} },},
	["rsight"] = 	{ 
		Bodygroups = { {3, 1} },
		IronSights = {
			Pos = Vector(-2.705, -1, 2.6),
			Ang = Angle(0,0.7,0),
			Midpoint = 	{ -- Where the gun should be at the middle of it's irons
			Pos = Vector(0, 15, -4),
			Ang = Angle(0, 0, -45),
						},
    Magnification = 1.1,
    CrosshairInSights = false,
						}
	},
}
 
SWEP.Attachments = {
    {
        PrintName = "Barrel",
        DefaultName = "Standard Barrel",

        Category = "bf1942_1918_berdan_cal",
        Bone = "W_Main",
        Pos = Vector(0, -1, 12),
        Ang = Angle(90, 0, -90),
    },
    {
        PrintName = "Foregrip",
        DefaultName = "None",
        InstalledElements = {"fg_def"},

        DefaultIcon = Material("arc9/def_att_icons/grip.png"),
        ExcludeElements = {"nofg"},
        Category = {"grip_css"},
        Bone = "W_Main",
        Pos = Vector(0, 1.25, 12),
        Ang = Angle(90, 0, -90),
    },
	
    {
        PrintName = "Off Hand",
        DefaultName = "None",

        DefaultIcon = Material("arc9/def_att_icons/grip.png"),
        ExcludeElements = {"nooh", "rh_occupied"},
        Category = {"bf1942_dc_offhand"},
        Bone = "W_Main",
        Pos = Vector(-1, 0, -10),
        Ang = Angle(90, 0, -90),
    },

    {
        PrintName = "Optic",
        DefaultName = "None",
        InstalledElements = {"rail_def"},

        DefaultIcon = Material("arc9/def_att_icons/optic.png"),
        Category = {"optic_css", "bf1942_1918_berdan_sight"},
        Bone = "W_Main",
        Pos = Vector(0, -4.5, 3),
        Ang = Angle(90, 0, -90),
        MergeSlots = {6},
    },

    {
        PrintName = "Muzzle",
        DefaultName = "None",

        DefaultIcon = Material("arc9/def_att_icons/barrel.png"),
        ExcludeElements = {"pre_muzzed"},
        Category = {"muzzle_css"},
        Bone = "W_Main",
        Pos = Vector(0, -1.4, 47),
        Ang = Angle(90, 0, -90),
    },
    {   --6 dovetail
        PrintName = "",
        DefaultName = "",
        Hidden = true,
        InstalledElements = {"blank_toprail"},

        Category = {"bfc_optic_dove"},
        Bone = "W_Main",
        Pos = Vector(1, -1.1, 5),
        Ang = Angle(90, 0, -90),
    },
}