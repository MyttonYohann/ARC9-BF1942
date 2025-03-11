AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - BF1942"
SWEP.SubCategory = "1918"

SWEP.PrintName = "Webley"
SWEP.TrueName = "Webley"

SWEP.Class = "Pistol"
SWEP.Trivia = {
	["Country of Origin"] = [[United Kingdom]],
    ["Calibre"] = ".455 Eley",
}

SWEP.Credits = {
}

SWEP.Description = [[How come no auto eject, author stupid?]]

SWEP.ViewModel = "models/weapons/myt_bf1942/1918/c_webley.mdl"
SWEP.WorldModel = "models/weapons/myt_bf1942/1918/c_webley.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/myt_bf1942/1918/c_webley.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-1, 2, -7),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-8, 2, -7),
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}
SWEP.MirrorVMWMHeldOnly = false

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 84 -- Damage done at point blank range
SWEP.DamageMin = 46 -- Damage done at maximum range

SWEP.DamageRand = 0.5

SWEP.RangeMin = 700 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 6000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 10 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 2

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2055 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "357" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 6 -- Self-explanatory.
SWEP.SupplyLimit = 5 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

-------------------------- FIREMODES

SWEP.RPM = 300

SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.1 -- Time until weapon fires.
SWEP.TriggerDelayRepeat = false -- Whether to do it for every shot on automatics.
SWEP.TriggerDelayCancellable = true -- Whether it is possible to cancel trigger delay by releasing the trigger before it is done.
SWEP.TriggerDelayReleaseToFire = true -- Release the trigger to fire instead of firing as soon as the delay is over.
SWEP.TriggerStartFireAnim = false -- Whether trigger begins the firing animation

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
SWEP.RecoilSide = 0.2 -- Multiplier for vertical recoil

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

SWEP.Spread = 0.003

SWEP.SpreadAddRecoil = 0.005 -- Applied per unit of recoil.
SWEP.RecoilModifierCap = 10

SWEP.SpreadAddMove = 0.04
SWEP.SpreadAddMidAir = 0.0075
SWEP.SpreadMultHipFire = 5
SWEP.SpreadMultCrouch = 0.5

SWEP.SpreadMultSights = 0.00125/0.003
SWEP.RecoilModifierCapSights = 2.5
SWEP.RecoilModifierCapCrouch = 5

-------------------------- HANDLING

SWEP.FreeAimRadius = 10
SWEP.FreeAimRadiusSights = 0
SWEP.Sway = 1

SWEP.SwayMultMidAir = 2
SWEP.SwayAddMove = 0.5
SWEP.SwayMultMove = 1
SWEP.SwayMultCrouch = 0.5
SWEP.SwayMultShooting = 1.5
SWEP.SwayMultSights = 0.25

SWEP.SwayMultSights = 0.4

SWEP.AimDownSightsTime = 0.5
SWEP.SprintToFireTime = 0.3

SWEP.SpeedMult = 1
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.9
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

SWEP.BulletBones = { 
    [1] = "W_Ammo2",
    [2] = "W_Ammo3", 
	[3] = "W_Ammo4",  
	[4] = "W_Ammo5",  
	[5] = "W_Ammo6",
	[6] = "W_Ammo1",
}

SWEP.IronSights = {
    Pos = Vector(-2.705, 10, 0.875),
    Ang = Angle(0,0,0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1.1,
    CrosshairInSights = false
}
SWEP.PeekPos = Vector(1.5, -1, -1.5)
SWEP.PeekAng = Angle(0, 0, -10)

SWEP.Crosshair = true

SWEP.BipodPos = Vector(1, 7, 1)
SWEP.BipodAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(0, 50, 0)
SWEP.SprintPos = Vector(2, 9, -9)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0.5, 10, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.2, -0.5, -1.5)
SWEP.CrouchAng = Angle(0, 0, -7)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(8, 25, 6)
SWEP.CustomizeSnapshotFOV = 110
SWEP.CustomizeNoRotate = false

SWEP.CustomizeRotateAnchor = Vector(10.5, -2.55, -2.23)

SWEP.StandardPresets = {
}

-------------------------- HoldTypes

SWEP.HoldType = "pistol"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "revolver"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = false
SWEP.AnimDraw = false
SWEP.NoShellEject = true
SWEP.NoShellEjectManualAction = true

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_pistol"
SWEP.MuzzleEffectQCA = 1

SWEP.ShellModel = "models/weapons/shell.mdl"
SWEP.ShellCorrectAng = Angle(0, 180, 0)
SWEP.ShellScale = 0.5
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

-------------------------- SOUNDS

SWEP.ShootSound = "myt_bf1942/1918/Webley.wav"
SWEP.ShootSoundSilenced = "gekolt_css/m4a1-1.wav"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"

SWEP.FiremodeSound = "arc9/firemode.ogg"

SWEP.Animations = {
	["fire"] = {
		Source = {"fire"},
		IKTimeLine = {	{ t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },	},
		Time = 23/40,
    },  
   ["jam"] = {
        Source = {"fire_fail"},
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/1918/Webley_Reload1.ogg" ,   t = 1 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload5.ogg" ,   t = 30 / 40}, 
        },
        FireASAP = true,
        MinProgress = 0.8,
    }, 
    ["fix"] = {
        Source = "idle",
		Time = 0.1,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    }, 
	["fire_auto"] = {
        Source = {"fire_auto"},
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["trigger"] = {
        Source = {"fire_prep"},
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/1918/Webley_Trigger.ogg" ,   t = 1 / 40},  
        },
		Mult = 1,
    },
	["untrigger"] = {
        Source = "fire_prep",
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/1918/Webley_Trigger2.ogg" ,   t = 1 / 40},  
        },
		Reverse = true,
		Mult = 1,
    },
    ["reload"] = {
        Source = "wet",
        FireASAP = true,
        MagSwapTime = 65 / 40,	
        MinProgress = 0.93,
        EventTable = {
            {s =  "myt_bf1942/1918/Webley_Reload1.ogg" ,   t = 16 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload2.ogg" ,   t = 35 / 40},  
			{s =  "myt_bf1942/1918/Webley_Reload3.ogg" ,   t = 47 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload4.ogg" ,   t = 99 / 40}, 
            {s =  "myt_bf1942/1918/Webley_Reload5.ogg" ,   t = 132 / 40}, 
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1	, lhik = 0, rhik = 0, }, { t = 0.75, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
    },   
	["reload_empty"] = {
        Source = "dry",
        FireASAP = true,
        MagSwapTime = 65 / 40,	
        MinProgress = 0.93,
        EventTable = {
            {s =  "myt_bf1942/1918/Webley_Reload1.ogg" ,   t = 16 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload2.ogg" ,   t = 35 / 40},  
			{s =  "myt_bf1942/1918/Webley_Reload3.ogg" ,   t = 47 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload4.ogg" ,   t = 99 / 40}, 
            {s =  "myt_bf1942/1918/Webley_Reload5.ogg" ,   t = 132 / 40}, 
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.2, lhik = 0, rhik = 0, }, { t = 0.75, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
    }, 
	["reload_fail"] = {
        Source = "wet_fail",
        FireASAP = true,
        MagSwapTime = 65 / 40,	
        MinProgress = 0.95,
        EventTable = {
            {s =  "myt_bf1942/1918/Webley_Reload1.ogg" ,	t = 16 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload2.ogg" ,	t = 35 / 40},  
			{s =  "myt_bf1942/1918/Webley_Reload3.ogg" ,	t = 47 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload4.ogg" ,	t = 99 / 40}, 
            {s =  "myt_bf1942/1918/Webley_ReloadF1.ogg",	t = 132 / 40}, 
            {s =  "myt_bf1942/1918/Webley_Reload5.ogg" ,	t = 166 / 40}, 
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1	, lhik = 0, rhik = 0, }, { t = 0.75, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
    },   
	["reload_empty_fail"] = {
        Source = "dry_fail",
        FireASAP = true,
        MagSwapTime = 65 / 40,	
        MinProgress = 0.95,
        EventTable = {
            {s =  "myt_bf1942/1918/Webley_Reload1.ogg" ,	t = 16 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload2.ogg" ,	t = 35 / 40},  
			{s =  "myt_bf1942/1918/Webley_Reload3.ogg" ,	t = 47 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload4.ogg" ,	t = 99 / 40}, 
            {s =  "myt_bf1942/1918/Webley_ReloadF1.ogg",	t = 132 / 40}, 
            {s =  "myt_bf1942/1918/Webley_Reload5.ogg" ,	t = 166 / 40}, 
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.2, lhik = 0, rhik = 0, }, { t = 0.75, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
    },   
	["reload_auto"] = {
        Source = "wet_auto",
        FireASAP = true,
        MagSwapTime = 85 / 40,	
        MinProgress = 0.93,
        EventTable = {
            {s =  "myt_bf1942/1918/Webley_Trigger.ogg" ,   t = 15 / 40},   
			{s =  "myt_bf1942/1918/Webley_Reload1.ogg" ,   t = 28 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload2.ogg" ,   t = 47 / 40},  
			{s =  "myt_bf1942/1918/Webley_Reload3.ogg" ,   t = 59 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload4.ogg" ,   t = 111 / 40}, 
            {s =  "myt_bf1942/1918/Webley_Reload5.ogg" ,   t = 144 / 40},   
			{s =  "myt_bf1942/1918/Webley_Reload6.ogg" ,   t = 156 / 40}, 
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1	, lhik = 0, rhik = 0, }, { t = 0.75, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
    },   
	["reload_empty_auto"] = {
        Source = "dry_auto",
        FireASAP = true,
        MagSwapTime = 85 / 40,	
        MinProgress = 0.93,
        EventTable = {
            {s =  "myt_bf1942/1918/Webley_Trigger.ogg" ,   t = 15 / 40},   
			{s =  "myt_bf1942/1918/Webley_Reload1.ogg" ,   t = 28 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload2.ogg" ,   t = 47 / 40},  
			{s =  "myt_bf1942/1918/Webley_Reload3.ogg" ,   t = 59 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload4.ogg" ,   t = 111 / 40}, 
            {s =  "myt_bf1942/1918/Webley_Reload5.ogg" ,   t = 144 / 40},   
			{s =  "myt_bf1942/1918/Webley_Reload6.ogg" ,   t = 156 / 40}, 
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.2, lhik = 0, rhik = 0, }, { t = 0.75, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
    },  
	["reload_auto_fail"] = {
        Source = "wet_auto_fail",
        FireASAP = true,
        MagSwapTime = 85 / 40,	
        MinProgress = 0.95,
        EventTable = {
            {s =  "myt_bf1942/1918/Webley_Trigger.ogg" ,	t = 15 / 40},   
			{s =  "myt_bf1942/1918/Webley_Reload1.ogg" ,	t = 28 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload2.ogg" ,	t = 47 / 40},  
			{s =  "myt_bf1942/1918/Webley_Reload3.ogg" ,	t = 59 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload4.ogg" ,	t = 111 / 40}, 
            {s =  "myt_bf1942/1918/Webley_ReloadF1.ogg",	t = 145 / 40}, 
            {s =  "myt_bf1942/1918/Webley_Reload5.ogg" ,	t = 175 / 40}, 
			{s =  "myt_bf1942/1918/Webley_Reload6.ogg" ,	t = 195 / 40}, 
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1	, lhik = 0, rhik = 0, }, { t = 0.75, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
    },   
	["reload_empty_auto_fail"] = {
        Source = "dry_auto_fail",
        FireASAP = true,
        MagSwapTime = 85 / 40,	
        MinProgress = 0.95,
        EventTable = {
            {s =  "myt_bf1942/1918/Webley_Trigger.ogg" ,	t = 15 / 40},   
			{s =  "myt_bf1942/1918/Webley_Reload1.ogg" ,	t = 28 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload2.ogg" ,	t = 47 / 40},  
			{s =  "myt_bf1942/1918/Webley_Reload3.ogg" ,	t = 59 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload4.ogg" ,	t = 111 / 40}, 
            {s =  "myt_bf1942/1918/Webley_ReloadF1.ogg",	t = 145 / 40}, 
            {s =  "myt_bf1942/1918/Webley_Reload5.ogg" ,	t = 175 / 40}, 
			{s =  "myt_bf1942/1918/Webley_Reload6.ogg" ,	t = 195 / 40}, 
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.2, lhik = 0, rhik = 0, }, { t = 0.75, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
    },  
	["reload_hydra"] = {
        Source = "wet_hydra",
        FireASAP = true,
        MagSwapTime = 65 / 40,	
        MinProgress = 0.93,
        EventTable = {
            {s =  "myt_bf1942/1918/Webley_Reload1.ogg" ,   t = 16 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload2.ogg" ,   t = 35 / 40},  
			{s =  "myt_bf1942/1918/Webley_Reload3.ogg" ,   t = 47 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload4.ogg" ,   t = 99 / 40}, 
            {s =  "myt_bf1942/1918/Webley_Reload5.ogg" ,   t = 132 / 40}, 
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1	, lhik = 0, rhik = 0, }, { t = 0.75, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
    },   
	["reload_empty_hydra"] = {
        Source = "dry_hydra",
        FireASAP = true,
        MagSwapTime = 65 / 40,	
        MinProgress = 0.93,
        EventTable = {
            {s =  "myt_bf1942/1918/Webley_Reload1.ogg" ,   t = 16 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload2.ogg" ,   t = 35 / 40},  
			{s =  "myt_bf1942/1918/Webley_Reload3.ogg" ,   t = 47 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload4.ogg" ,   t = 99 / 40}, 
            {s =  "myt_bf1942/1918/Webley_Reload5.ogg" ,   t = 132 / 40}, 
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.2, lhik = 0, rhik = 0, }, { t = 0.75, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
    }, 
	["reload_hydra_fail"] = {
        Source = "wet_hydra_fail",
        FireASAP = true,
        MagSwapTime = 65 / 40,	
        MinProgress = 0.95,
        EventTable = {
            {s =  "myt_bf1942/1918/Webley_Reload1.ogg" ,	t = 16 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload2.ogg" ,	t = 35 / 40},  
			{s =  "myt_bf1942/1918/Webley_Reload3.ogg" ,	t = 47 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload4.ogg" ,	t = 99 / 40}, 
            {s =  "myt_bf1942/1918/Webley_ReloadF1.ogg",	t = 132 / 40}, 
            {s =  "myt_bf1942/1918/Webley_Reload5.ogg" ,	t = 166 / 40}, 
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1	, lhik = 0, rhik = 0, }, { t = 0.75, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
    },   
	["reload_empty_hydra_fail"] = {
        Source = "dry_hydra_fail",
        FireASAP = true,
        MagSwapTime = 65 / 40,	
        MinProgress = 0.95,
        EventTable = {
            {s =  "myt_bf1942/1918/Webley_Reload1.ogg" ,	t = 16 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload2.ogg" ,	t = 35 / 40},  
			{s =  "myt_bf1942/1918/Webley_Reload3.ogg" ,	t = 47 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload4.ogg" ,	t = 99 / 40}, 
            {s =  "myt_bf1942/1918/Webley_ReloadF1.ogg",	t = 132 / 40}, 
            {s =  "myt_bf1942/1918/Webley_Reload5.ogg" ,	t = 166 / 40}, 
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
--------------------------------------------------------
	["fire_rifle"] = {
		Source = {"fire_rifle"},
		IKTimeLine = {	{ t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },	},
		Time = 23/40,
    },  
    ["trigger_rifle"] = {
        Source = {"fire_prep_rifle"},
        IKTimeLine = {  { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, }, },
        EventTable = {
            {s =  "myt_bf1942/1918/Webley_Trigger.ogg" ,   t = 1 / 40},  
        },
		Mult = 1,
    },
	["untrigger_rifle"] = {
        Source = "fire_prep_rifle",
        IKTimeLine = { { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, }, },
        EventTable = {
            {s =  "myt_bf1942/1918/Webley_Trigger2.ogg" ,   t = 1 / 40},  
        },
		Reverse = true,
		Mult = 1,
    },
    ["reload_rifle"] = {
        Source = "wet_rifle",
        FireASAP = true,
        MagSwapTime = 65 / 40,	
        MinProgress = 0.93,
        EventTable = {
            {s =  "myt_bf1942/1918/Webley_Reload1.ogg" ,   t = 13 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload2.ogg" ,   t = 32 / 40},  
			{s =  "myt_bf1942/1918/Webley_Reload3.ogg" ,   t = 44 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload4.ogg" ,   t = 97 / 40}, 
            {s =  "myt_bf1942/1918/Webley_Reload5.ogg" ,   t = 125 / 40}, 
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1	, lhik = 0, rhik = 0, }, { t = 0.75, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
    },   
	["reload_empty_rifle"] = {
        Source = "dry_rifle",
        FireASAP = true,
        MagSwapTime = 65 / 40,	
        MinProgress = 0.93,
        EventTable = {
            {s =  "myt_bf1942/1918/Webley_Reload1.ogg" ,   t = 13 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload2.ogg" ,   t = 32 / 40},  
			{s =  "myt_bf1942/1918/Webley_Reload3.ogg" ,   t = 44 / 40},  
            {s =  "myt_bf1942/1918/Webley_Reload4.ogg" ,   t = 97 / 40}, 
            {s =  "myt_bf1942/1918/Webley_Reload5.ogg" ,   t = 125 / 40}, 
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.2, lhik = 0, rhik = 0, }, { t = 0.75, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
    }, 
    ["draw_rifle"] = {
        Source = "draw_rifle",
        FireASAP = true,
        MinProgress = 0.65,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 0 / 40},
        },
        IKTimeLine = { { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },  },
    },
    ["holster_rifle"] = {
        Source = "holster_rifle",
        IKTimeLine = { { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, }, },
    },
    ["idle_rifle"] = {
        Source = "idle_rifle",
        IKTimeLine = { { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, }, },
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

SWEP.MalfunctionWait = -1
SWEP.Malfunction = true
SWEP.MalfunctionMeanShotsToFail = 10
SWEP.MalfunctionJam = false

SWEP.Hook_TranslateAnimation = function(wep, curanim)		-- 	bodging
	if	curanim == "exit_ubgl_empty" then return "exit_ubgl"	end	
	if	curanim == "exit_ubgl_glempty" then return "exit_ubgl"	end	
	
	-- reload fuck up --
    local rng = math.Truncate(util.SharedRandom("vest pex best pex", 1,100))
	local varextra = 0
	if wep:HasElement("b_2") then varextra = 15
	elseif wep:HasElement("b_3") then varextra = 10
	end

    if rng <= 15 + varextra  then	-- fire blast
		if	curanim == "reload_empty"	then 	return "reload_empty_fail"	end	
		if	curanim == "reload"			then	return "reload_fail"		end	
	end	
end

-------------------------- ATTACHMENTS

SWEP.DefaultBodygroups = "00000000000000000"

SWEP.AttachmentElements = {
    ["b_1"] = 	{ Bodygroups = { {0, 1}, },}, 
    ["b_2"] = 	{ Bodygroups = { {0, 2}, },},   
	["b_3"] = 	{ Bodygroups = { {0, 3}, },}, 
	["b_4"] = 	{ Bodygroups = { {0, 4}, },}, 
}
 
SWEP.Attachments = {
    {
        PrintName = "Barrel",
        DefaultName = "Default Length",

        Category = {"bf1942_1918_webley_barrel"},
        Bone = "W_Spin",
        Pos = Vector(0, -3.5, 5),
        Ang = Angle(90, 0, -90),
    }, 
	{
        PrintName = "Foregrip",
        DefaultName = "None",
        InstalledElements = {"fg_def"},

        DefaultIcon = Material("arc9/def_att_icons/grip.png"),
        ExcludeElements = {"nofg"},
        Category = {"grip_css"},
        Bone = "W_Bolt2",
        Pos = Vector(0, -0.75, 4),
        Ang = Angle(90, 0, -90),
    },
	
    {
        PrintName = "Off Hand",
        DefaultName = "None",

        ExcludeElements = {"nooh", "rh_occupied"},
        Category = {"bf1942_dc_offhand"},
        Bone = "W_Bolt2",
        Pos = Vector(-1, 2, -12),
        Ang = Angle(90, 0, -90),
    },

    {
        PrintName = "Optic",
        DefaultName = "None",
        InstalledElements = {"rail_def"},

        DefaultIcon = Material("arc9/def_att_icons/optic.png"),
        Category = {"optic_css", "optic_css_free"},
        Bone = "W_Bolt2",
        Pos = Vector(0, -2.5, 1),
        Ang = Angle(90, 0, -90),
    },

    {
        PrintName = "Muzzle",
        DefaultName = "None",

        DefaultIcon = Material("arc9/def_att_icons/barrel.png"),
        ExcludeElements = {"pre_muzzed"},
        Category = {"muzzle_css"},
        Bone = "W_Main",
        Pos = Vector(0, -2.8, 9),
        Ang = Angle(90, 0, -90),
    },
}