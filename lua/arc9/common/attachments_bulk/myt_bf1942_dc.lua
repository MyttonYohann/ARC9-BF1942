local ATT = {}

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