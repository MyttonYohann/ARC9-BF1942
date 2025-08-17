AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - BF1942"
SWEP.SubCategory = "5Desert Combat"

SWEP.PrintName = "Mareschann-5"
SWEP.TrueName = "MP5"

SWEP.Class = "Submachine Gun"
SWEP.Trivia = {
    ["Country of Origin"] = [[Germany]],
    ["Calibre"] = "9x19mm",
}

SWEP.Credits = {
}

SWEP.Description = [[gun.]]

SWEP.ViewModel = "models/weapons/myt_bf1942/dc/c_mp5.mdl"
SWEP.WorldModel = "models/weapons/myt_bf1942/dc/c_mp5.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelMirror = "models/weapons/myt_bf1942/dc/c_mp5.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(0, 0, 0),
    Ang = Angle(0, 0, 0),
    TPIKPos = Vector(-5, 5, -8),
    TPIKAng = Angle(0, 0, 180),
	TPIKPosSightOffset = Vector(-3, 2, -2),
	TPIKPosReloadOffset = Vector(2, 0, 0),
	TPIKAngReloadOffset = Angle(0, 0, 0),
    Scale = 1,
}
SWEP.MirrorVMWMHeldOnly = false

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 18 -- Damage done at point blank range
SWEP.DamageMin = 8 -- Damage done at maximum range

SWEP.DamageRand = 0.3

SWEP.RangeMin = 500 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 8000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 7 -- Units of wood that can be penetrated by this gun.

SWEP.ImpactForce = 2

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1800 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.15

-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 4 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

-------------------------- FIREMODES

SWEP.RPM = 800

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
SWEP.RecoilUp = 0.6 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.4 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.5
SWEP.RecoilRandomSide = 0.5

SWEP.RecoilDissipationRate = 7 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0 -- Multiplier for automatic recoil control.

SWEP.RecoilKick = 1.75

SWEP.RecoilPerShot = 1
SWEP.RecoilKickDamping = 50

SWEP.RecoilMultCrouch = 0.7
SWEP.RecoilMultHipFire = 1
SWEP.RecoilMultSights = 1

-------------------------- SPREAD

SWEP.Spread = 0.01

SWEP.SpreadAddRecoil = 0.005 -- Applied per unit of recoil.
SWEP.RecoilModifierCap = 8

SWEP.SpreadAddMove = 0.04
SWEP.SpreadAddMidAir = 0.0075
SWEP.SpreadMultHipFire = 5
SWEP.SpreadMultCrouch = 0.75

SWEP.SpreadMultSights = 0.01/SWEP.Spread
SWEP.RecoilModifierCapSights = 1.5
SWEP.RecoilModifierCapCrouch = 5

-------------------------- HANDLING

SWEP.FreeAimRadius = 7
SWEP.FreeAimRadiusSights = 6
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
    Pos = Vector(-2.7, 3, -1.37),
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
SWEP.SprintPos = Vector(3, 2.5, -3)

SWEP.ViewModelFOVBase = 70
SWEP.ActivePos = Vector(0.5, 6, -2.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-0.2, -0.5, -1.5)
SWEP.CrouchAng = Angle(0, 0, -7)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(9, 28, 7)
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

SWEP.ShellModel = "models/weapons/shell.mdl"
SWEP.ShellCorrectAng = Angle(0, 180, 0)
SWEP.ShellScale = 0.5
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

-------------------------- SOUNDS

SWEP.ShootSound = "myt_bf1942/dc/MP5.wav"
SWEP.ShootSoundSilenced = "gekolt_css/m4a1-1.wav"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"

SWEP.FiremodeSound = "arc9/firemode.ogg"
SWEP.BarrelLength = 48

SWEP.Hook_TranslateAnimation = function(wep, curanim) 
	if	curanim == "exit_ubgl_empty" then return "exit_ubgl"	end	-- bodging
	if	curanim == "exit_ubgl_glempty" then return "exit_ubgl"	end	

	local optic_reload = wep:HasElement("has_optic") and !wep:HasElement("no_animbodge")

	local varextra = 0
	if wep:HasElement("s_4") then varextra = -5
	elseif wep:HasElement("hg_1") then varextra = -10
	elseif wep:HasElement("hg_3") then varextra = 5
	end
	if wep:Clip1() == 0 then varextra = varextra - 30 end
	
    local rng = math.Truncate(util.SharedRandom("i lost 400 elo with red card mimikyu", 1,100))
    if rng <= 60 + varextra then	-- i fucking hate mp5	
		if	curanim == "reload" 		then return "reload_fail"		end	
		if	optic_reload and curanim == "reload_empty"	then	return "dry_optic_fail"
			else if curanim == "reload_empty" 	then return "reload_empty_fail"	end	
		end
	end

	if	optic_reload and curanim == "reload_empty"		then	return "dry_optic"			end	
end


SWEP.Animations = {
    ["fire"] = {
        Source = {"fire"},
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["fire_iron"] = {
        Source = {"fire_ads"},
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    }, 
	["fire_510_last"] = {
        Source = {"fire_510_last"},
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["fire_ads_510_last"] = {
        Source = {"fire_ads_510_last"},
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["reload"] = {
        Source = "wet",
        FireASAP = true,
        MinProgress = 0.93,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.15, lhik = 0, rhik = 0, }, { t = 0.85, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/mp5_bolt1.ogg" ,  	t = 18 / 40},  
			{s =  "myt_bf1942/dc/mp5_bolt15.ogg" ,	t = 33 / 40},
			{s =  "myt_bf1942/dc/mp5_mag1.ogg" ,	t = 49 / 40},
            {s =  "myt_bf1942/dc/mp5_foley1.ogg" ,	t = 66 / 40},
            {s =  "myt_bf1942/dc/mp5_mag2.ogg" ,	t = 112 / 40},
            {s =  "myt_bf1942/dc/mp5_foley2.ogg" ,	t = 129 / 40},
        },
    },  
	["reload_fail"] = {
        Source = "wet_fail",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.15, lhik = 0, rhik = 0, }, { t = 0.85, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/mp5_bolt1.ogg" ,  	t = 18 / 40},  
			{s =  "myt_bf1942/dc/mp5_bolt15.ogg" ,	t = 33 / 40},
			{s =  "myt_bf1942/dc/mp5_mag1.ogg" ,	t = 49 / 40},
            {s =  "myt_bf1942/dc/mp5_foley1.ogg" ,	t = 66 / 40},
            {s =  "myt_bf1942/dc/mp5_mag22.ogg" ,	t = 115 / 40},
            {s =  "myt_bf1942/dc/mp5_foley2.ogg" ,	t = 143 / 40},
        },
    },
    ["reload_empty"] = {
        Source = "dry",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.125, lhik = 0, rhik = 0, }, { t = 0.86, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/mp5_bolt1.ogg" ,  	t = 18 / 40},  
			{s =  "myt_bf1942/dc/mp5_bolt2.ogg" ,	t = 34 / 40},
			{s =  "myt_bf1942/dc/mp5_mag1.ogg" ,	t = 66 / 40},
            {s =  "myt_bf1942/dc/mp5_foley1.ogg" ,	t = 94 / 40},
            {s =  "myt_bf1942/dc/mp5_mag2.ogg" ,	t = 130 / 40}, 
			{s =  "myt_bf1942/dc/mp5_bolt3.ogg" ,	t = 156 / 40},
            {s =  "myt_bf1942/dc/mp5_foley2.ogg" ,	t = 174 / 40},
        },
    },  
	["reload_empty_fail"] = {
        Source = "dry_fail",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.125, lhik = 0, rhik = 0, }, { t = 0.86, lhik = 0, rhik = 0, },{ t = 0.94, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/mp5_bolt1.ogg" ,  	t = 18 / 40},  
			{s =  "myt_bf1942/dc/mp5_bolt2.ogg" ,	t = 34 / 40},
			{s =  "myt_bf1942/dc/mp5_mag1.ogg" ,	t = 66 / 40},
            {s =  "myt_bf1942/dc/mp5_foley1.ogg" ,	t = 94 / 40},
            {s =  "myt_bf1942/dc/mp5_mag2.ogg" ,	t = 130 / 40}, 
			{s =  "myt_bf1942/dc/mp5_bolt35.ogg" ,	t = 156 / 40},	
			{s =  "myt_bf1942/dc/mp5_bolt4.ogg" ,	t = 183 / 40},
            {s =  "myt_bf1942/dc/mp5_foley2.ogg" ,	t = 194 / 40},
        },
    },  
	["dry_optic"] = {
        Source = "dry_optic",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.125, lhik = 0, rhik = 0, }, { t = 0.875, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/mp5_bolt1.ogg" ,  	t = 18 / 40},  
			{s =  "myt_bf1942/dc/mp5_bolt2.ogg" ,	t = 34 / 40},
			{s =  "myt_bf1942/dc/mp5_mag1.ogg" ,	t = 66 / 40},
            {s =  "myt_bf1942/dc/mp5_foley1.ogg" ,	t = 94 / 40},
            {s =  "myt_bf1942/dc/mp5_mag2.ogg" ,	t = 130 / 40}, 
			{s =  "myt_bf1942/dc/mp5_bolt3.ogg" ,	t = 156 / 40},
            {s =  "myt_bf1942/dc/mp5_foley2.ogg" ,	t = 174 / 40},
        },
    },  
	["dry_optic_fail"] = {
        Source = "dry_optic_fail",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.125, lhik = 0, rhik = 0, }, { t = 0.875, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/mp5_bolt1.ogg" ,  	t = 18 / 40},  
			{s =  "myt_bf1942/dc/mp5_bolt2.ogg" ,	t = 34 / 40},
			{s =  "myt_bf1942/dc/mp5_mag1.ogg" ,	t = 66 / 40},
            {s =  "myt_bf1942/dc/mp5_foley1.ogg" ,	t = 94 / 40},
            {s =  "myt_bf1942/dc/mp5_mag2.ogg" ,	t = 130 / 40}, 
			{s =  "myt_bf1942/dc/mp5_bolt35.ogg" ,	t = 156 / 40},	
			{s =  "myt_bf1942/dc/mp5_bolt4.ogg" ,	t = 183 / 40},
            {s =  "myt_bf1942/dc/mp5_foley2.ogg" ,	t = 194 / 40},
        },
    },   
	["wet_510"] = {
        Source = "wet_510",
        FireASAP = true,
        MinProgress = 0.93,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.15, lhik = 0, rhik = 0, }, { t = 0.85, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,  	t = 1 / 40},  
			{s =  "myt_bf1942/dc/mp5_mag1.ogg" ,	t = 49 / 40},
            {s =  "myt_bf1942/dc/mp5_foley1.ogg" ,	t = 66 / 40},
            {s =  "myt_bf1942/dc/mp5_mag2.ogg" ,	t = 112 / 40},
            {s =  "myt_bf1942/dc/mp5_foley2.ogg" ,	t = 129 / 40},
        },
    },  
	["wet_510_fail"] = {
        Source = "wet_510_fail",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.15, lhik = 0, rhik = 0, }, { t = 0.85, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,  	t = 1 / 40},  
			{s =  "myt_bf1942/dc/mp5_mag1.ogg" ,	t = 49 / 40},
            {s =  "myt_bf1942/dc/mp5_foley1.ogg" ,	t = 66 / 40},
            {s =  "myt_bf1942/dc/mp5_mag22.ogg" ,	t = 115 / 40},
            {s =  "myt_bf1942/dc/mp5_foley2.ogg" ,	t = 143 / 40},
        },
    },
    ["dry_510"] = {
        Source = "dry_510",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.15, lhik = 0, rhik = 0, }, { t = 0.875, lhik = 0, rhik = 0, },{ t = 0.975, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,  	t = 1 / 40},  
			{s =  "myt_bf1942/dc/mp5_mag1.ogg" ,	t = 48 / 40},
            {s =  "myt_bf1942/dc/mp5_foley1.ogg" ,	t = 76 / 40},
            {s =  "myt_bf1942/dc/mp5_mag2.ogg" ,	t = 112 / 40}, 
			{s =  "myt_bf1942/dc/mp5_bolt3.ogg" ,	t = 142 / 40},
            {s =  "myt_bf1942/dc/mp5_foley2.ogg" ,	t = 156 / 40},
        },
    },  
	["dry_510_fail"] = {
        Source = "dry_510_fail",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.15, lhik = 0, rhik = 0, }, { t = 0.875, lhik = 0, rhik = 0, },{ t = 0.975, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,  	t = 1 / 40},  
			{s =  "myt_bf1942/dc/mp5_mag1.ogg" ,	t = 48 / 40},
            {s =  "myt_bf1942/dc/mp5_foley1.ogg" ,	t = 76 / 40},
            {s =  "myt_bf1942/dc/mp5_mag2.ogg" ,	t = 112 / 40}, 
			{s =  "myt_bf1942/dc/mp5_bolt35.ogg" ,	t = 142 / 40},	
			{s =  "myt_bf1942/dc/mp5_bolt15.ogg" ,	t = 151 / 40},	
			{s =  "myt_bf1942/dc/mp5_bolt1.ogg" ,	t = 174 / 40},	
			{s =  "myt_bf1942/dc/mp5_bolt4.ogg" ,	t = 178 / 40},
            {s =  "myt_bf1942/dc/mp5_foley2.ogg" ,	t = 187 / 40},
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
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },	
	["draw_510_empty"] = {
        Source = "draw_510_empty",
        FireASAP = true,
        MinProgress = 0.5,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 0 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["ready"] = {
        Source = "draw",
        FireASAP = true,
        MinProgress = 0.5,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 0 / 40},
        },
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
	["holster"] = {
        Source = "holster",
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
	["holster_510_empty"] = {
        Source = "holster_510_empty",
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
	["idle_510_empty"] = {
        Source = "idle_510_empty",
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
--------------------------------------------------------
-- Bullpup --
--------------------------------------------------------
    ["fire_bullpup"] = {
        Source = {"fire_bullpup"},
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["fire_bullpup_ads"] = {
        Source = {"fire_bullpup_ads"},
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    }, 
	["fire_bullpup_510_last"] = {
        Source = {"fire_bullpup_510_last"},
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["fire_bullpup_ads_510_last"] = {
        Source = {"fire_bullpup_ads_510_last"},
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["wet_bullpup"] = {
        Source = "wet_bullpup",
        FireASAP = true,
        MinProgress = 0.93,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.15, lhik = 0, rhik = 0, }, { t = 0.85, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/mp5_bolt1.ogg" ,  	t = 18 / 40},  
			{s =  "myt_bf1942/dc/mp5_bolt15.ogg" ,	t = 33 / 40},
			{s =  "myt_bf1942/dc/mp5_mag1.ogg" ,	t = 49 / 40},
            {s =  "myt_bf1942/dc/mp5_foley1.ogg" ,	t = 66 / 40},
            {s =  "myt_bf1942/dc/mp5_mag2.ogg" ,	t = 112 / 40},
            {s =  "myt_bf1942/dc/mp5_foley2.ogg" ,	t = 129 / 40},
        },
    },  
	["wet_bullpup_fail"] = {
        Source = "wet_bullpup_fail",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.15, lhik = 0, rhik = 0, }, { t = 0.85, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/mp5_bolt1.ogg" ,  	t = 18 / 40},  
			{s =  "myt_bf1942/dc/mp5_bolt15.ogg" ,	t = 33 / 40},
			{s =  "myt_bf1942/dc/mp5_mag1.ogg" ,	t = 49 / 40},
            {s =  "myt_bf1942/dc/mp5_foley1.ogg" ,	t = 66 / 40},
            {s =  "myt_bf1942/dc/mp5_mag22.ogg" ,	t = 115 / 40},
            {s =  "myt_bf1942/dc/mp5_foley2.ogg" ,	t = 143 / 40},
        },
    },
    ["dry_bullpup"] = {
        Source = "dry_bullpup",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.15, lhik = 0, rhik = 0, }, { t = 0.85, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/mp5_bolt1.ogg" ,  	t = 18 / 40},  
			{s =  "myt_bf1942/dc/mp5_bolt2.ogg" ,	t = 34 / 40},
			{s =  "myt_bf1942/dc/mp5_mag1.ogg" ,	t = 66 / 40},
            {s =  "myt_bf1942/dc/mp5_foley1.ogg" ,	t = 94 / 40},
            {s =  "myt_bf1942/dc/mp5_mag2.ogg" ,	t = 130 / 40}, 
			{s =  "myt_bf1942/dc/mp5_bolt3.ogg" ,	t = 156 / 40},
            {s =  "myt_bf1942/dc/mp5_foley2.ogg" ,	t = 174 / 40},
        },
    },  
	["dry_bullpup_fail"] = {
        Source = "dry_bullpup_fail",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.15, lhik = 0, rhik = 0, }, { t = 0.85, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/mp5_bolt1.ogg" ,  	t = 18 / 40},  
			{s =  "myt_bf1942/dc/mp5_bolt2.ogg" ,	t = 34 / 40},
			{s =  "myt_bf1942/dc/mp5_mag1.ogg" ,	t = 66 / 40},
            {s =  "myt_bf1942/dc/mp5_foley1.ogg" ,	t = 94 / 40},
            {s =  "myt_bf1942/dc/mp5_mag2.ogg" ,	t = 130 / 40}, 
			{s =  "myt_bf1942/dc/mp5_bolt35.ogg" ,	t = 156 / 40},	
			{s =  "myt_bf1942/dc/mp5_bolt4.ogg" ,	t = 183 / 40},
            {s =  "myt_bf1942/dc/mp5_foley2.ogg" ,	t = 194 / 40},
        },
    },
    ["wet_bullpup_510"] = {
        Source = "wet_bullpup_510",
        FireASAP = true,
        MinProgress = 0.93,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.15, lhik = 0, rhik = 0, }, { t = 0.85, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,  	t = 1 / 40},  
			{s =  "myt_bf1942/dc/mp5_mag1.ogg" ,	t = 49 / 40},
            {s =  "myt_bf1942/dc/mp5_foley1.ogg" ,	t = 66 / 40},
            {s =  "myt_bf1942/dc/mp5_mag2.ogg" ,	t = 112 / 40},
            {s =  "myt_bf1942/dc/mp5_foley2.ogg" ,	t = 129 / 40},
        },
    },  
	["wet_bullpup_510_fail"] = {
        Source = "wet_bullpup_510_fail",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.15, lhik = 0, rhik = 0, }, { t = 0.85, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,  	t = 1 / 40},  
			{s =  "myt_bf1942/dc/mp5_mag1.ogg" ,	t = 49 / 40},
            {s =  "myt_bf1942/dc/mp5_foley1.ogg" ,	t = 66 / 40},
            {s =  "myt_bf1942/dc/mp5_mag22.ogg" ,	t = 115 / 40},
            {s =  "myt_bf1942/dc/mp5_foley2.ogg" ,	t = 143 / 40},
        },
    },
    ["dry_bullpup_510"] = {
        Source = "dry_bullpup_510",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.15, lhik = 0, rhik = 0, }, { t = 0.875, lhik = 0, rhik = 0, },{ t = 0.975, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,  	t = 1 / 40},  
			{s =  "myt_bf1942/dc/mp5_mag1.ogg" ,	t = 48 / 40},
            {s =  "myt_bf1942/dc/mp5_foley1.ogg" ,	t = 76 / 40},
            {s =  "myt_bf1942/dc/mp5_mag2.ogg" ,	t = 112 / 40}, 
			{s =  "myt_bf1942/dc/mp5_bolt3.ogg" ,	t = 142 / 40},
            {s =  "myt_bf1942/dc/mp5_foley2.ogg" ,	t = 156 / 40},
        },
    },  
	["dry_bullpup_510_fail"] = {
        Source = "dry_bullpup_510_fail",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.15, lhik = 0, rhik = 0, }, { t = 0.875, lhik = 0, rhik = 0, },{ t = 0.975, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,  	t = 1 / 40},  
			{s =  "myt_bf1942/dc/mp5_mag1.ogg" ,	t = 48 / 40},
            {s =  "myt_bf1942/dc/mp5_foley1.ogg" ,	t = 76 / 40},
            {s =  "myt_bf1942/dc/mp5_mag2.ogg" ,	t = 112 / 40}, 
			{s =  "myt_bf1942/dc/mp5_bolt35.ogg" ,	t = 142 / 40},	
			{s =  "myt_bf1942/dc/mp5_bolt15.ogg" ,	t = 151 / 40},	
			{s =  "myt_bf1942/dc/mp5_bolt1.ogg" ,	t = 174 / 40},	
			{s =  "myt_bf1942/dc/mp5_bolt4.ogg" ,	t = 178 / 40},
            {s =  "myt_bf1942/dc/mp5_foley2.ogg" ,	t = 187 / 40},
        },
    },    
	["dry_bullpup_optic"] = {
        Source = "dry_bullpup_optic",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.15, lhik = 0, rhik = 0, }, { t = 0.85, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/mp5_bolt1.ogg" ,  	t = 18 / 40},  
			{s =  "myt_bf1942/dc/mp5_bolt2.ogg" ,	t = 34 / 40},
			{s =  "myt_bf1942/dc/mp5_mag1.ogg" ,	t = 66 / 40},
            {s =  "myt_bf1942/dc/mp5_foley1.ogg" ,	t = 94 / 40},
            {s =  "myt_bf1942/dc/mp5_mag2.ogg" ,	t = 130 / 40}, 
			{s =  "myt_bf1942/dc/mp5_bolt3.ogg" ,	t = 156 / 40},
            {s =  "myt_bf1942/dc/mp5_foley2.ogg" ,	t = 174 / 40},
        },
    },  
	["dry_bullpup_optic_fail"] = {
        Source = "dry_bullpup_optic_fail",
        FireASAP = true,
        MinProgress = 0.95,
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.15, lhik = 0, rhik = 0, }, { t = 0.85, lhik = 0, rhik = 0, },{ t = 0.95, lhik = 1, rhik = 0, },
        },
        EventTable = {
            {s =  "myt_bf1942/dc/mp5_bolt1.ogg" ,  	t = 18 / 40},  
			{s =  "myt_bf1942/dc/mp5_bolt2.ogg" ,	t = 34 / 40},
			{s =  "myt_bf1942/dc/mp5_mag1.ogg" ,	t = 66 / 40},
            {s =  "myt_bf1942/dc/mp5_foley1.ogg" ,	t = 94 / 40},
            {s =  "myt_bf1942/dc/mp5_mag2.ogg" ,	t = 130 / 40}, 
			{s =  "myt_bf1942/dc/mp5_bolt35.ogg" ,	t = 156 / 40},	
			{s =  "myt_bf1942/dc/mp5_bolt4.ogg" ,	t = 183 / 40},
            {s =  "myt_bf1942/dc/mp5_foley2.ogg" ,	t = 194 / 40},
        },
    }, 
--------------------------------------------------------
    ["draw_bullpup"] = {
        Source = "draw_bullpup",
        FireASAP = true,
        MinProgress = 0.5,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 0 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    }, 
	["draw_bullpup_510_empty"] = {
        Source = "draw_bullpup_510_empty",
        FireASAP = true,
        MinProgress = 0.5,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 0 / 40},
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["ready_bullpup"] = {
        Source = "draw_bullpup",
        FireASAP = true,
        MinProgress = 0.5,
        EventTable = {
            {s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 0 / 40},
        },
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["holster_bullpup"] = {
        Source = "holster_bullpup",
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["idle_bullpup"] = {
        Source = "idle_bullpup",
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    }, 
	["holster_bullpup_510_empty"] = {
        Source = "holster_bullpup_510_empty",
		IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, }, { t = 1, lhik = 1, rhik = 0, },
        },
    },
    ["idle_bullpup_510_empty"] = {
        Source = "idle_bullpup_510_empty",
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
    ["exit_ubgl_glempty"] = {		-- bodging
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

-------------------------- ATTACHMENTS

SWEP.DefaultBodygroups = "00400000000000000000"

SWEP.AttachmentElements = {
    ["s_1"] = 	{ Bodygroups = { {2, 0} },},
    ["s_2"] = 	{ Bodygroups = { {2, 3}, {3, 1} },},
    ["s_3"] = 	{ Bodygroups = { {2, 1} },},
	["s_32"] = 	{ Bodygroups = { {2, 2} },},   
	["s_4"] = 	{ 
	Bodygroups = { {3, 2}, {1, 1}, {5, 1} },
	IronSights = {
			Pos = Vector(-2.7, -5, -2.1),
			Ang = Angle(0,0,0),
			Midpoint = 	{ -- Where the gun should be at the middle of it's irons
			Pos = Vector(0, 15, -4),
			Ang = Angle(0, 0, -45),
				},
    Magnification = 1.1,
    CrosshairInSights = false,
	},
	AttPosMods = { 
	[6] = { Pos = Vector(0, -7.4, 10), } 
	},	
	},  
	["hg_1"] = 	{ 
	Bodygroups = { {1, 4}, {4, 1}, {5, 2}, },
	AttPosMods = { 
		[7] = { Pos = Vector(0, -3.95, 16), } 
		},	
	},	
	["hg_2"] = 	{ Bodygroups = { {1, 6},},},
	["hg_3"] = 	{ Bodygroups = { {1, 8},},},
	["hg_4"] = 	{ Bodygroups = { {1, 2},},},

	["cal_1"] =	{ Bodygroups = { {0, 1} },},
    ["rail_def"] = { Bodygroups = { {6, 1} },},
    ["fg_def"] = { Bodygroups = { {8, 1} },},
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model  -- most insufficient method ever
    if wep:HasElement("s_4") and wep:HasElement("hg_1") 	then model:SetBodygroup(1,5) model:SetBodygroup(5,3) end 
	if wep:HasElement("s_4") and wep:HasElement("hg_2") 	then model:SetBodygroup(1,7) end
	if wep:HasElement("s_4") and wep:HasElement("hg_4") 	then model:SetBodygroup(1,3) end
	if wep:HasElement("s_4") and wep:HasElement("rail_def")	then model:SetBodygroup(6,2) end
	if wep:HasElement("s_4") and wep:HasElement("rail_def") and wep:HasElement("hg_1")	then model:SetBodygroup(6,3) end
	if wep:HasElement("rail_def") and !wep:HasElement("optic_css_free") then model:SetBodygroup(5,4) end	-- maybe
end

SWEP.Attachments = {
    {
        PrintName = "Receiver",
        DefaultName = "Standard Receiver",

        Category = "bf1942_dc_mp5_cal",
        Bone = "W_Main",
        Pos = Vector(0, -2, 5.5),
        Ang = Angle(90, 0, -90),
    },

    {
        PrintName = "Handguard",
        DefaultName = "Standard Handguard",

        ExcludeElements = {"noguard"},
        Category = "bf1942_dc_mp5_hg",
        Bone = "W_Main",
        Pos = Vector(0, -4, 12),
        Ang = Angle(90, 0, -90),
    },

    {
        PrintName = "Stock",
        DefaultName = "Standard Stock",
        ExcludeElements = {"nostock"},
        Installed = "myt_bf1942_dc_mp5_stock1",

        DefaultIcon = Material("arc9/def_att_icons/stock_ak.png"),
		Category = "bf1942_dc_mp5_stock",
        Bone = "W_Main",
        Pos = Vector(0, -4, -5),
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
        Pos = Vector(0, -2, 10),
        Ang = Angle(90, 0, -90),
        MergeSlots = {8},
    },
	
    {
        PrintName = "Off Hand",
        DefaultName = "None",

        DefaultIcon = Material("arc9/def_att_icons/grip.png"),
        ExcludeElements = {"nooh", "rh_occupied"},
        Category = {"bf1942_dc_offhand", "bfc_onehand_smg"},
        Bone = "W_Main",
        Pos = Vector(-0.5, 0, -10),
        Ang = Angle(90, 0, -90),
    },

    {
        PrintName = "Optic",
        DefaultName = "None",
        InstalledElements = {"rail_def", "has_optic"},

        DefaultIcon = Material("arc9/def_att_icons/optic.png"),
        Category = {"optic_css", "optic_css_free"},
        Bone = "W_Main",
        Pos = Vector(0, -6.65, 2.5),
        Ang = Angle(90, 0, -90),
        MergeSlots = {9},
    },

    {
        PrintName = "Muzzle",
        DefaultName = "None",

        DefaultIcon = Material("arc9/def_att_icons/barrel.png"),
        ExcludeElements = {"pre_muzzed"},
        Category = {"muzzle_css"},
        Bone = "W_Main",
        Pos = Vector(0, -3.95, 19.25),
        Ang = Angle(90, 0, -90),
    },

    {   --8 permanent ubgl, affected separately from the changes of the above attachment
        PrintName = "",
        DefaultName = "",
        Hidden = true,
        InstalledElements = {"nooh"},
        ExcludeElements = {"nogrip"},
        Category = {"css_ubgl"},
        Bone = "W_Main",
        Pos = Vector(0, -2.5, 10),
        Ang = Angle(90, 0, -90),
    },
    {   --9 dovetail
        PrintName = "",
        DefaultName = "",
        Hidden = true,
        InstalledElements = {"blank_toprail", "has_optic"},

        Category = {"bfc_optic_dove"},
        Bone = "W_Main",
        Pos = Vector(0.9, -4.4, 2.5),
        Ang = Angle(90, 0, -90),
    },
}