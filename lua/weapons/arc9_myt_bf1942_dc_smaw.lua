AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - BF1942"
SWEP.SubCategory = "Desert Combat"

SWEP.PrintName = "Mk153 SMAW"
SWEP.TrueName = "Mk153 SMAW"

SWEP.Class = "Launcher"
SWEP.Trivia = {
	["Country of Origin"] = [[idfk]],
	["Caliber"] = [[big]],
}

SWEP.Credits = {
}

SWEP.Description = [[Died whenever smorg last updated, born whenever this mod is released. Welcome back Kromusgen-18]]

SWEP.ViewModel = "models/weapons/myt_bf1942/dc/c_smaw.mdl"
SWEP.WorldModel = "models/weapons/myt_bf1942/dc/c_smaw.mdl"

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/myt_bf1942/dc/c_smaw.mdl"
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
SWEP.RangeMax = 4000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 7 -- Units of wood that can be penetrated by this gun.

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

SWEP.PhysBulletMuzzleVelocity = 1725 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

SWEP.ShootEnt = "myt_bf1942_dc_rpg"
SWEP.ShootEntForce = 200000

-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
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

SWEP.FreeAimRadius = 4
SWEP.FreeAimRadiusSights = 1
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

SWEP.IronSights = {
    Pos = Vector(-1.81, 2, 1.61),
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

SWEP.SprintAng = Angle(10, -15, -15)
SWEP.SprintPos = Vector(0, 2, 0)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(1.5, 5, 1.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.2, -0.5, -1.5)
SWEP.CrouchAng = Angle(0, 0, -7)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(10, 28, 7)
SWEP.CustomizeSnapshotFOV = 110
SWEP.CustomizeNoRotate = false

SWEP.CustomizeRotateAnchor = Vector(10.5, -2.55, -2.23)

SWEP.StandardPresets = {
}

-------------------------- HoldTypes

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = false
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_pistol"
SWEP.MuzzleEffectQCA = 1

SWEP.ShellModel = "models/weapons/shell.mdl"
SWEP.ShellCorrectAng = Angle(0, 180, 0)
SWEP.ShellScale = 0.5
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.CaseEffectQCA = 2
SWEP.NoShellEject = true

-------------------------- SOUNDS

SWEP.ShootSound = "myt_bf1942/dc/SMAW_fire_st.wav"
SWEP.ShootSoundSilenced = "gekolt_css/m4a1-1.wav"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.Animations = {
    ["fire"] = {
        Source = {"fire"},
		Mult = 0.8,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["fire_spot"] = {
        Source = {"fire_spot"},
		Mult = 0.8,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },  
	["fire_spot_ads"] = {
        Source = {"fire_spot_ads"},
		Mult = 0.8,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["reload_empty"] = {
        Source = "dry",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/smol_foley.ogg" ,   t = 0 / 40},  
			{s =  "myt_bf1942/dc/smol_out.ogg" ,   t = 52 / 40},
			{s =  "myt_bf1942/dc/smol_in.ogg" ,   t = 139 / 40},
        },
    }, 
    ["reload"] = {
        Source = "dry",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 0, rhik = 0, }, { t = 0.8, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/smol_foley.ogg" ,   t = 0 / 40},  
			{s =  "myt_bf1942/dc/smol_out.ogg" ,   t = 52 / 40},
			{s =  "myt_bf1942/dc/smol_in.ogg" ,   t = 139 / 40},
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

SWEP.DefaultBodygroups = "00000000000000000"

SWEP.AttachmentElements = { 
    ["has_grip"] = {
        SprintPosOverride = Vector(1, 5, -2),
        SprintAngOverride = Angle(8, -18, 0),
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("has_optic") 	then model:SetBodygroup(2,0) end
end
 
SWEP.Attachments = {
    {
        PrintName = "Side Mount | Off Hand",
        DefaultName = "None",

        Category = {"bf1942_dc_smol"},
        Bone = "W_Main",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        MergeSlots = {4},
    },

    {
        PrintName = "Mount",
        DefaultName = "None",
        InstalledElements = {"rail_def"},

        Category = {"bf1942_dc_pistol_frame"},
        Bone = "W_Main",
        Pos = Vector(0, -3, 4),
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

    {
        PrintName = "",		-- 4, off hand
        DefaultName = "",
        Hidden = true,

        ExcludeElements = {"nooh", "rh_occupied"},
        Category = {"bf1942_dc_offhand"},
        Bone = "W_Main",
        Pos = Vector(-1, 0, -10),
        Ang = Angle(90, 0, -90),
    },
}