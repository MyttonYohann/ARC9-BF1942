AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - BF1942"
SWEP.SubCategory = "Desert Combat"

SWEP.PrintName = "DShK"
SWEP.TrueName = "DShK"

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = [[[Soviet] Russia]],
    ["Caliber"] = "12.7×108mm",
}

SWEP.Credits = {
}

SWEP.Description = [[big boy, need deploy to use]]

SWEP.ViewModel = "models/weapons/myt_bf1942/dc/c_dshk.mdl"
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/myt_bf1942/dc/c_dshk.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-1, 2, -7),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-15, 5, -10),
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}
SWEP.MirrorVMWMHeldOnly = false

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 108 -- Damage done at point blank range
SWEP.DamageMin = 72 -- Damage done at maximum range

SWEP.DamageRand = 0.4

SWEP.RangeMin = 300 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 7000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 42 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 10

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.6,
    [HITGROUP_RIGHTLEG] = 0.6,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2029 * 12
SWEP.PhysBulletGravity = 1.7
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "ar2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 80 -- Self-explanatory.
SWEP.SupplyLimit = 2 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
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
SWEP.Recoil = 2

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1.8 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1.4 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.5
SWEP.RecoilRandomSide = 2

SWEP.RecoilDissipationRate = 7 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.5

SWEP.RecoilPerShot = 1
SWEP.RecoilKickDamping = 50

SWEP.RecoilMultCrouch = 1
SWEP.RecoilMultHipFire = 1
SWEP.RecoilMultSights = 1

-------------------------- SPREAD

SWEP.Spread = 0.01

SWEP.SpreadAddRecoil = 0.005 -- Applied per unit of recoil.
SWEP.RecoilModifierCap = 15

SWEP.SpreadAddMove = 0.04
SWEP.SpreadAddMidAir = 0.0075
SWEP.SpreadMultHipFire = 5
SWEP.SpreadMultCrouch = 1

SWEP.SpreadMultSights = 0.0025/0.005
SWEP.RecoilModifierCapSights = 5

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

SWEP.SpeedMult = 0.75
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.2
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 0.5

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
    Pos = Vector(-2.7, 30,-6.75),
    Ang = Angle(0,0,0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 15, -4),
        Ang = Angle(0, 0, -45),
    },
    Magnification = 1.1,
    CrosshairInSights = false
}

SWEP.Crosshair = true

--SWEP.BipodPos = Vector(2, 30, -7)
--SWEP.BipodAng = Angle(0, 0, 0)

SWEP.BipodPos = Vector(0, 28, -6)
SWEP.BipodAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(-5, 32, -12)
SWEP.SprintAng = Angle(10, 0, -5)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0, 32, -8)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.2, -0.5, -1.5)
SWEP.CrouchAng = Angle(0, 0, -7)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(18, 40, 7)
SWEP.CustomizeSnapshotFOV = 110
SWEP.CustomizeNoRotate = false

SWEP.BarrelLength = 20

SWEP.NearWallPos = Vector(-3, 32, -12)
SWEP.NearWallAng = Angle(20, 10, 5)

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

SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 2
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

-------------------------- SOUNDS

SWEP.ShootSound = "myt_bf1942/pr/dshk_fire_1p.ogg"
SWEP.ShootSoundSilenced = "gekolt_css/m4a1-1.wav"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"

SWEP.FiremodeSound = "arc9/firemode.ogg"

SWEP.BulletBones = {
    [1] = "W_Bullet",
    [2] = "W_Bullet1",
    [3] = "W_Bullet2",
    [4] = "W_Bullet3",
    [5] = "W_Bullet4",
    [6] = "W_Bullet5",
    [7] = "W_Bullet6",
}

SWEP.Animations = {
    ["fire"] = {
        Source = {"fire"},
    },
    ["fire_bipod"] = {
        Source = {"fire_bipod"},
    },

    ["reload"] = {
        Source = "dry_bipod",
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
    ["reload_bipod"] = {
        Source = "dry_bipod",
        FireASAP = true,
        MinProgress = 0.95,
        MagSwapTime = 120 / 40,	
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 1, rhik = 0, }, { t = 0.85, lhik = 1, rhik = 0, },{ t = 0.925, lhik = 1, rhik = 1, },
        },
        EventTable = {
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
	["idle_bipod"] = {
        Source = "idle_bipod",
    },
	["enter_bipod"] = {
        Source = "enter_bipod",
    },	
	["exit_bipod"] = {
        Source = "exit_bipod",
    },
}

-------------------------- ATTACHMENTS

SWEP.DefaultBodygroups = "00600000000000000000"

SWEP.AttachmentElements = {
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
	---if wep:HasElement("barrel_sg") and wep:HasElement("hg_2") 	then model:SetBodygroup(1,10) end
end
 
SWEP.Attachments = {
    {
        PrintName = "Optic",
        DefaultName = "None",
        InstalledElements = {"rail_def"},

        DefaultIcon = Material("arc9/def_att_icons/optic.png"),
        Category = {"optic_css"},
        Bone = "W_Main",
        Pos = Vector(0, -4.8, 3),
        Ang = Angle(90, 0, -90),
        MergeSlots = {2},
    },

    {   --2 dovetail
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

SWEP.DamageType = DMG_BULLET + DMG_AIRBOAT
SWEP.Bipod = true
SWEP.HookP_BlockFire = function(self)
	if !self:GetBipod() then
    return true
	end
end

SWEP.Hook_TranslateAnimation = function(wep, curanim)
	if wep:GetCustomize() then
	if	curanim == "idle" then return "idle_bipod"	end	
	end	
end

SWEP.Hook_Think = function(self)
    local owner = self:GetOwner()

	if self:GetBipod() then
	owner:AddEFlags( EFL_NO_DAMAGE_FORCES ) 
	else
	owner:RemoveEFlags( EFL_NO_DAMAGE_FORCES ) 	
	end
end