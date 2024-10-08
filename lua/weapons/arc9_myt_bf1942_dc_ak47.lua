AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - BF1942"
SWEP.SubCategory = "Desert Combat | Primaries"

SWEP.PrintName = "AK47"
SWEP.TrueName = "AK47"

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    ["Country of Origin"] = [[[Soviet] Russia]],
    ["Caliber"] = "7.62x39mm",
}

SWEP.Credits = {
}

SWEP.Description = [[Gun.]]

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

SWEP.DamageMax = 37 -- Damage done at point blank range
SWEP.DamageMin = 17 -- Damage done at maximum range

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
SWEP.SprintToFireTime = 0.6

SWEP.SpeedMult = 1
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.8
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1

-------------------------- MELEE

SWEP.Bash = true
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
SWEP.ShellCorrectAng = Angle(0, 180, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

-------------------------- SOUNDS

SWEP.ShootSound = "myt_bf1942/dc/AKM.wav"
SWEP.ShootSoundSilenced = "gekolt_css/m4a1-1.wav"
SWEP.DryFireSound = "weapons/clipempty_rifle.wav"

SWEP.FiremodeSound = "arc9/firemode.wav"

SWEP.Hook_SelectReloadAnimation = function(wep,curanim) -- numero random, uno per cento
    local rng = math.Truncate(util.SharedRandom("vest pex best pex stall lame BO good", 1,100))
	
    if rng <= 15 then	-- fireblast missed fireblast missed
		--[[if	wep.Attachments[7].Installed and curanim == "reload" 	then	return "reload_10_rare" 	end --- should be = something
		if	!wep.Attachments[7].Installed and curanim == "reload" 	then	return "reload_rare" 		end	]]
		-- condition check wep.HasElement
		if	curanim == "reload" 	then	return "reload_fail" 		end
	end
end


SWEP.Animations = {
    ["fire"] = {
        Source = {"fire"},
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
        MinProgress = 0.96,
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
--------------------------------------------------------
    ["draw"] = {
        Source = "draw",
        FireASAP = true,
        MinProgress = 0.5,
        EventTable = {
            {s =  "gekolt_css_foley/draw_rif.wav" ,   t = 0 / 40},
        },
    },
    ["ready"] = {
        Source = "draw",
        FireASAP = true,
        MinProgress = 0.5,
        EventTable = {
            {s =  "gekolt_css_foley/draw_rif.wav" ,   t = 0 / 40},
        },
    },
    ["holster"] = {
        Source = "idle",
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
	["hg_3"] = 	{ 
		Bodygroups = { {1, 1} },
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
	["hg_4"] = 	{ Bodygroups = { {1, 2} },},

	["cal_1"] =	{ Bodygroups = { {0, 11} },},
	["cal_2"] =	{ Bodygroups = { {0, 3} },},	
	["cal_3"] =	{ Bodygroups = { {0, 7} },},
	["cal_4"] =	{ Bodygroups = { {0, 6} },},

    ["hg_naked"] = { Bodygroups = { {3, 14}, {7, 2} },			AttPosMods = { [6] = { Pos = Vector(0, -0.9, 8), } }		},
    ["hg_poly"] = { Bodygroups = { {3, 4}, {1, 5}, {2, 2} },	AttPosMods = { [6] = { Pos = Vector(0, -0.4, 2.5), } }		},
    ["hg_amd"] = { Bodygroups = { {3, 13} },					AttPosMods = { [6] = { Pos = Vector(0, -0.4, 2.5), }, [7] = { Pos = Vector(0, 0.075, 24), } }		},
    ["hg_bizon"] = { Bodygroups = { {3, 9} },					AttPosMods = { [7] = { Pos = Vector(0, 0.075, 21), } }		},
    ["hg_12"] = { Bodygroups = { {3, 12}, {1, 4}, {2, 2}, },	AttPosMods = { [6] = { Pos = Vector(0, 0.15 , 3.5), }, [5] = { Pos = Vector(0, 1.35, 16), }, [7] = { Pos = Vector(0.05, 0.05, 27), } }		},
    ["hg_sd"] = { Bodygroups = { {3, 2}, {2, 2} }, 				AttPosMods = { [6] = { Pos = Vector(0, -0.4, 2.5), }, [5] = { Pos = Vector(0, 2.25, 18.5), } }		},
    ["hg_u"] = { Bodygroups = { {3, 1}, {2, 1} },				AttPosMods = { [7] = { Pos = Vector(0, 0.15, 19.5), }, [6] = { Pos = Vector(0, -0.9, 8), } }		},
    ["hg_rpk"] = { Bodygroups = { {3, 5}, {9, 1} },				AttPosMods = { [7] = { Pos = Vector(0, 0.075, 35), }, [6] = { Pos = Vector(0, -0.9, 8), } }		},
    ["hg_hunt"] = { Bodygroups = { {3, 6}, {2, 1} },			AttPosMods = { [7] = { Pos = Vector(0, 0.075, 37.5), } }	},
    ["hg_94"] = { Bodygroups = { {3, 8}, {2, 2}, {1, 2} },		AttPosMods = { [6] = { Pos = Vector(0, -0.4, 2.5), }, [7] = { Pos = Vector(0, 0.2, 29.5), } }		},
    ["hg_rail"] = { Bodygroups = { {3, 3}, {2, 2}, {1, 1} },	AttPosMods = { [6] = { Pos = Vector(0, -0.35 , 5), }, [5] = { Pos = Vector(0, 2, 15), }, [7] = { Pos = Vector(0, 0.1, 27), } }		},


    ["rail_def"] = { Bodygroups = { {5, 3} },},
    ["fg_def"] = { Bodygroups = { {8, 1} },},
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model  -- most insufficient method ever
    if wep:HasElement("rail_def") and wep:HasElement("hg_12") 	then model:SetBodygroup(5,0) end
    if wep:HasElement("rail_def") and wep:HasElement("hg_12") 	then model:SetBodygroup(1,0) end
    if wep:HasElement("rail_def") and wep:HasElement("hg_rail") then model:SetBodygroup(5,0) end
    if wep:HasElement("rail_def") and wep:HasElement("hg_rail") then model:SetBodygroup(1,0) end
    if wep:HasElement("rail_def") and wep:HasElement("hg_poly") then model:SetBodygroup(1,0) end
    if wep:HasElement("rail_def") and wep:HasElement("hg_poly") then model:SetBodygroup(5,2) end
    if wep:HasElement("rail_def") and wep:HasElement("hg_sd") 	then model:SetBodygroup(5,2) end
    if wep:HasElement("rail_def") and wep:HasElement("hg_amd") 	then model:SetBodygroup(5,2) end
    if wep:HasElement("rail_def") and wep:HasElement("hg_94") 	then model:SetBodygroup(5,2) end
    if wep:HasElement("rail_def") and wep:HasElement("u_566") 	then model:SetBodygroup(5,2) end
    if wep:HasElement("rail_def") and wep:HasElement("u_566") 	then model:SetBodygroup(1,0) end
    if wep:HasElement("rail_def") and wep:HasElement("u_disk") 	then model:SetBodygroup(5,0) end
    if wep:HasElement("rail_def") and wep:HasElement("hg_u") 	then model:SetBodygroup(5,1) end  
    if wep:HasElement("rail_def") and wep:HasElement("hg_naked")	then model:SetBodygroup(5,1) end
    if wep:HasElement("rail_def") and wep:HasElement("hg_rpk") 	then model:SetBodygroup(5,1) end
    if wep:HasElement("rail_def") and wep:HasElement("s_fold4") then model:SetBodygroup(5,1) end

    if wep:HasElement("fg_def")	and wep:HasElement("hg_sd") 	then model:SetBodygroup(8,0) end
    if wep:HasElement("fg_def") and wep:HasElement("hg_rail") 	then model:SetBodygroup(8,0) end
    if wep:HasElement("fg_def") and wep:HasElement("hg_12") 	then model:SetBodygroup(8,0) end

    if wep:HasElement("hg_rpk") and wep:GetBipod() then
        model:SetBodygroup(9,2)
    elseif wep:HasElement("hg_rpk") and !wep:GetBipod() then
        model:SetBodygroup(9,1)
    end
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
        Pos = Vector(0, -0.5, 15),
        Ang = Angle(90, 0, -90),
    },

    {
        PrintName = "Stock",
        DefaultName = "Standard Stock",
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
        Pos = Vector(0, 2.6, 14),
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
        Pos = Vector(0, -5, 0.8),
        Ang = Angle(90, 0, -90),
    },

    {
        PrintName = "Muzzle",
        DefaultName = "None",

        DefaultIcon = Material("arc9/def_att_icons/barrel.png"),
        ExcludeElements = {"pre_muzzed"},
        Category = {"muzzle_css"},
        Bone = "W_Main",
        Pos = Vector(0, 0.075, 27.5),
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
}