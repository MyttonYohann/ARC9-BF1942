AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - BF1942"
SWEP.SubCategory = "5Desert Combat"

SWEP.PrintName = "Firelance"
SWEP.TrueName = "Firelance"

SWEP.Class = "Melee"
SWEP.Trivia = {
	["Country of Origin"] = [[Universal Scab]],
	["Calibre"] = [[5.56x45mm]],
}

SWEP.Credits = {
}

SWEP.Description = [[A spotting gun from a rocket launcher, rechambered and elongated. Fitted with a glaive head for guardsmen.]]

SWEP.ViewModel = "models/weapons/myt_bf1942/dc/c_spear.mdl"
SWEP.WorldModel = "models/weapons/myt_bf1942/dc/c_spear.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/myt_bf1942/dc/c_spear.mdl"
SWEP.WorldModelOffset = {
	Pos = Vector(-1, 2, -7),
	Ang = Angle(-5, 0, 180),
	TPIKPos = Vector(-18, 4, -7),
	TPIKAng = Angle(-5, 0, 180),
	Scale = 1
}
SWEP.MirrorVMWMHeldOnly = false

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 38 -- Damage done at point blank range
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

SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 20 -- Self-explanatory.
SWEP.SupplyLimit = 4 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

-------------------------- FIREMODES
SWEP.RPM = 600

SWEP.Firemodes = {
	{
		Mode = -1,
		PrintName = "MELEE"
		-- add other attachment modifiers
	},
}

-------------------------- RECOIL

SWEP.RecoilPatternDrift = 15

-- General recoil multiplier
SWEP.Recoil = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 0.75 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.25 -- Multiplier for vertical recoil

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

SWEP.Spread = 0.03

SWEP.SpreadAddRecoil = 0.0025 -- Applied per unit of recoil.
SWEP.RecoilModifierCap = 10

SWEP.SpreadAddMove = 0.04
SWEP.SpreadAddMidAir = 0.0075
SWEP.SpreadMultHipFire = 1
SWEP.SpreadMultCrouch = 0.5

SWEP.SpreadMultSights = 0.25
SWEP.RecoilModifierCapSights = 2.5
SWEP.RecoilModifierCapCrouch = 5

-------------------------- HANDLING

SWEP.FreeAimRadius = 0

SWEP.SprintToFireTime = 0.3
SWEP.AimDownSightsTime = 0.3

SWEP.SpeedMult = 0.8
SWEP.SpeedMultSights = 0.6
SWEP.SpeedMultShooting = 0.5
SWEP.SpeedMultMelee = 0.9
SWEP.SpeedMultCrouch = 0.85 
SWEP.SpeedMultBlindFire = 1

SWEP.ShootWhileSprint = true
SWEP.BashWhileSprint = true
SWEP.SpeedHookMelee = function(wep)
	if wep:GetIsSprinting() then
		return 1
	end
end
SWEP.SpeedHookShooting = function(wep)
	if wep:GetIsSprinting() then
		return 1
	end
end
-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = true

-- WHY THE FUCK NO ONE TOLD ME ABOUT THIS
SWEP.DynamicConditions = {
	["Recoil"] = true,
	["PrimaryBash"] = true,
}

SWEP.PrimaryBashHook = function(wep)
	if !wep:GetInSights() then
		return true
	else
		return false
	end
end

SWEP.BashDamageHook = function(wep, dmg)
	if wep:GetIsSprinting() and !wep:GetUBGL() then
		return dmg * 2
	end
end

SWEP.BashDamage = 60
SWEP.BashLungeRange = 0
SWEP.BashRange = 150
SWEP.PreBashTime = 0.35
SWEP.PostBashTime = 0.3

SWEP.BashThirdArmAnimation = false

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
	Pos = Vector(-0.5, 2, -3),
	Ang = Angle(0,0,-5),
	Midpoint = { -- Where the gun should be at the middle of it's irons
		Pos = Vector(0, 15, -4),
		Ang = Angle(0, 0, -45),
	},
	Magnification = 1.1,
	CrosshairInSights = true
}

SWEP.Crosshair = false
SWEP.PeekPos = Vector(1.5, -1, -1)
SWEP.PeekAng = Angle(0, 0, -15)


SWEP.BipodPos = Vector(-2.58, 0, 1)
SWEP.BipodAng = Angle(0, 0, -5)

SWEP.SprintAng = Angle(0, -20, -10)
SWEP.SprintPos = Vector(-1, 3, -2)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(2, 8, -5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.2, -0.5, -1.5)
SWEP.CrouchAng = Angle(0, 0, -7)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(23, 54, 7)
SWEP.CustomizeSnapshotFOV = 110
SWEP.CustomizeNoRotate = false

SWEP.CustomizeRotateAnchor = Vector(10.5, -2.55, -2.23)

SWEP.StandardPresets = {
}

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "ar2"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = false
SWEP.AnimDraw = false
SWEP.NoShellEject = true
SWEP.NoShellEjectManualAction = true

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_3"
SWEP.MuzzleEffectQCA = 1

SWEP.ShellModel = "models/weapons/shell.mdl"
SWEP.ShellCorrectAng = Angle(0, 180, 0)
SWEP.ShellScale = 0.5
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

-------------------------- SOUNDS

SWEP.ShootSound = "myt_bf1942/dc/smol_spot.ogg"
SWEP.ShootSoundSilenced = "gekolt_css/m4a1-1.wav"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.Animations = {
	["bash"] = {
		Source = {"melee1", "melee2"},
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
		},
	},
	["enter_sights"] = {
		Source = {"ads"},
		NoStatAffectors = true,
		IKTimeLine = { { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, }, },
	},
	["exit_sights"] = {
		Source = {"ads"},
		NoStatAffectors = true,
		IKTimeLine = { { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, }, },
		Reverse = true,
	},
	["idle_sights"] = {
		Source = "idle_spear_ppram",
		IKTimeLine = { { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, }, },
	},
	["fire"] = {
		Source = "fire",
		IKTimeLine = { { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, }, },
	},
    ["reload"] = {
        Source = "wet",
        FireASAP = true,
        MagSwapTime = 65 / 40,	
        MinProgress = 0.93,
        EventTable = {
            {s =  "myt_bf1942/dc/smol_spot_foley.ogg" ,   t = 0 / 40},  
			{s =  "myt_bf1942/dc/smol_spot_out.ogg" ,   t = 15 / 40},
			{s =  "myt_bf1942/dc/smol_spot_in.ogg" ,   t = 85 / 40},
			{s =  "myt_bf1942/dc/smol_spot_foley2.ogg" ,   t = 97 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1	, lhik = 0, rhik = 0, }, { t = 0.75, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
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
		Source = "idle_ppram",
		IKTimeLine = {
		{ t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
		},
	},  
}

-------------------------- ATTACHMENTS

SWEP.DefaultBodygroups = "00000000000000000"

SWEP.AttachmentElements = {
}
 
SWEP.Attachments = {
}