local ATT = {}

---- Keymod Rail Pistol ----

ATT = {}

ATT.PrintName = [[Draco Keymod]]
ATT.CompactName = [[DRAKE]]
ATT.Icon = Material("entities/gekolt_css_blank.png", "mips smooth")
ATT.Description = [[Keymod rail for pistols, shaped like a
like a
]]

ATT.SortOrder = -0.1
ATT.Category = "bf1942_dc_pistol_frame"
ATT.ActivateElements = {"f_draco"}


ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"optic_css"},
        InstalledElements = {"has_optic"},
        Pos = Vector(1, 0, -1.3),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Mount D.",
        Category = {"grip_css"},
        InstalledElements = {"has_grip"},
        Pos = Vector(-3,0, 2.6),
        Ang = Angle(0, 0, 0),
        MergeSlots = {3},
    }, 
	{
        PrintName = "",
        DefaultName = "",
        Hidden = true,
        Category = {"tac_css"},
        Pos = Vector(-3,0, 2.6),
        Ang = Angle(0, 0, 180),
    },
}

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_rail_pistol_draco")

---- Knife ----

ATT = {}
ATT.PrintName = [[Knife]]
ATT.CompactName = [[U. Knife]]
ATT.Icon = Material("entities/gekolt_css_blank.png")
ATT.Description = [[
You run faster.
]] 
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.Model = "models/weapons/myt_bf1942/atts/dc/c_knife_uhand.mdl"
ATT.LHIK = true
ATT.ActivateElements = {"underhand_hand", "is_melee"}

ATT.IKAnimationProxy = {
	["bash"] = {
        Source = {"knife"},
        MinProgress = 0.6,
		FireASAP = true,
		Mult = 0.8,
    },
	
    ["reload_knife_start"] = {
        Source = "reload_knife_start",
        MinProgress = 0.8,
		FireASAP = true,
        EventTable = {
            --{s =  "myt_bf1942/dc/ak_foley1.ogg" ,   t = 1 / 40},  
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 0, },
        { t = 0.1, lhik = 1, rhik = 1, },{ t = 1, lhik = 1, rhik = 1, },
        },
    },
    ["reload_knife_end"] = {
        Source = "reload_knife_end",
        MinProgress = 0.8,
		FireASAP = true,
        EventTable = {
            --{s =  "myt_bf1942/dc/ak_foley3.ogg" ,   t = 1 / 40},  
        },
        IKTimeLine = {
        { t = 0, lhik = 1, rhik = 1, },
        { t = 0.1, lhik = 1, rhik = 0, },{ t = 1, lhik = 1, rhik = 0, },
        },
    },
} -- When an animation event plays, override it with one based on this LHIK model.

ATT.IKAnimationAlsoPlayBase = true	 ---?? does this fucking work
-- cant play both of them?
-- possible bodge: play reload_knife_start and THEN play the actual reload anim
ATT.Hook_PostReload = function(wep)
	wep:PlayAnimation("reload_knife_start")
end
-- this works, kinda, though if you fire mid way through the anim they knife doesnt snap to idle
ATT.Hook_EndReload = function(wep)
	wep:PlayAnimation("reload_knife_end")
end

ATT.IKGunMotionQCA = 2
ATT.MuzzleDeviceUBGL = false

ATT.IKCameraMotionQCA = nil
ATT.IKCameraMotionOffsetAngle = Angle(0, 90, 0)

-- the fuck do these do
ATT.IKGunMotionOffset = Vector(0, 0, 0)
ATT.IKGunMotionOffsetAngle = Angle(0, 0, 0)

ATT.IKGunMotionMult = 0.5
ATT.IKGunMotionAngleMult = 0.5

ATT.Category = {"bf1942_dc_underhand"}

ATT.AimDownSightsTimeMult = 1.2
ATT.SprintToFireTimeMult = 1.2

ATT.Bash = true
ATT.PrimaryBash = false
ATT.BashDamage = 60
ATT.BashLungeRange = 0
ATT.BashRange = 64
ATT.PreBashTime = 0.2
ATT.PostBashTime = 0.5

--ATT.ModelOffset = Vector(10, 0, -1)
--ATT.ModelAngleOffset = Angle(0, 0, 0)

--ATT.ActivePosUBGL = Vector(4, 3, 0)
--ATT.ActiveAngUBGL = Angle(5, 0, 20)

--ATT.SprintAngUBGL = Angle(0, -10, 10)
--ATT.SprintPosUBGL = Vector(2, 3, -1)

ARC9.LoadAttachment(ATT, "myt_bf1942_dc_uh_knife")