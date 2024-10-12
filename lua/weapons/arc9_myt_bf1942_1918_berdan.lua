AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - BF1942"
SWEP.SubCategory = "1918 - Primaries"

SWEP.PrintName = "Berdan"
SWEP.TrueName = "Berdan"

SWEP.Class = "Rifle"
SWEP.Trivia = {
   --["Country of Origin"] = [[[Empire of] Russia]],
    --["Caliber"] = "idfk its 10mm something",
}

SWEP.Credits = {
}

SWEP.Description = [[Cossack.]]

SWEP.ViewModel = "models/weapons/myt_bf1942/1918/c_berdan.mdl"
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/myt_bf1942/1918/c_berdan.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-1, 2, -7),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-8, 2, -7),
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

SWEP.PhysBulletMuzzleVelocity = 1725 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 60 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
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

SWEP.BashDamage = 100
SWEP.BashLungeRange = 0
SWEP.BashRange = 128
SWEP.PreBashTime = 0.15
SWEP.PostBashTime = 0.8
SWEP.BashWhileSprint = true

-- I LOVE BODGING
SWEP.Hook_Think = function(wep)	-- disable melee in UGBL
	if wep:GetUBGL(true) then
	wep:ThinkMelee(nil) end
end

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

SWEP.HoldType = "pistol"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "revolver"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = false
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_pistol"
SWEP.MuzzleEffectQCA = 1

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellCorrectAng = Angle(0, 180, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.NoShellEject = true
SWEP.NoShellEjectManualAction = true

-------------------------- SOUNDS

SWEP.ShootSound = "myt_bf1942/1918/Berdan.wav"
SWEP.ShootSoundSilenced = "gekolt_css/m4a1-1.wav"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"
SWEP.DistantShootSound = "myt_bf1942/1918/BerdanDis.wav"

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.Animations = {
    ["fire"] = {
        Source = {"fire"},
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
    ["reload"] = {
        Source = "dry",
        FireASAP = true,
        MinProgress = 0.93,
        EventTable = {
            {s =  "myt_bf1942/dc/pss_mag1.ogg" ,   t = 4 / 40},  
			{s =  "myt_bf1942/dc/pss_mag2.ogg" ,   t = 67 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.2, lhik = 0, rhik = 0, }, { t = 0.75, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
    },  
    ["reload_empty"] = {
        Source = "dry",
        FireASAP = true,
        MinProgress = 0.9,
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
    ["reload_empty_sg"] = {
        Source = "dry",
        FireASAP = true,
        MinProgress = 0.9,
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


SWEP.Hook_TranslateAnimation = function(wep, curanim)		-- 	bodging
	if	curanim == "exit_ubgl_empty" then return "exit_ubgl"	end	
	if	curanim == "exit_ubgl_glempty" then return "exit_ubgl"	end	
end


-------------------------- ATTACHMENTS

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentElements = {
    ["cal_sg"] = 	{ Bodygroups = { {1, 1}, {2, 1} },}, 
	["bayonet"] = 	{ Bodygroups = { {4, 1} },},
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
        Category = {"optic_css", "optic_css_free"},
        Bone = "W_Main",
        Pos = Vector(0, -4.5, 3),
        Ang = Angle(90, 0, -90),
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
}