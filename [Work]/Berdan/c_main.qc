// Created by Crowbar 0.12.0.0

$modelname "weapons/myt_bf1942/1918/c_berdan.mdl"

$bodygroup "main"
{
	studio "Berdan.smd"
	blank
}

$bodygroup "1"
{
	studio "Berdan_Ammo.smd"	
	studio "Berdan_Ammo_Shotgun.smd"
	blank
}

$bodygroup "2"
{
	studio "Berdan_Guard.smd"	
	studio "Berdan_Guard_SG.smd"
	blank
}

$bodygroup "3"
{
	studio "Berdan_Sight.smd"	
	studio "Berdan_Sight_Raised.smd"
	blank
}

$bodygroup "4"
{
	blank
	studio "Berdan_Bayonet.smd"
}

$illumposition 0 0 0

$cdmaterials "models\myt_bf1942\1918\"
$cdmaterials "models\myt_bf1942\dc\"

$attachment "1" "W_Main" 0.00 1.20 47.00 rotate -90 0 0
$attachment "2" "W_Main" -1.00 1.50 4.00 rotate -0 135 180

$sequence "idle" {
	"anims\idle.smd"
	fadein 0.05
	fadeout 0.2
	fps 40
}

$sequence "draw" {
	"anims\draw.smd"
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "holster" {
	"anims\holster.smd"
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "fire" {
	"anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.05
	fadeout 2
	fps 40
}

$sequence "dry" {
	"anims\dry.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "dry_sg" {
	"anims\dry_sg.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2	
	fps 40
}

$sequence "melee" {
	"anims\melee.smd"	
	fadein 0.05
	fadeout 0.5	
	fps 40
}

$sequence "sprint" {
	"anims\sprint.smd"	
	fadein 1
	fadeout 1
	fps 40
}


$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger02"

$surfaceprop "weapon"

$collisionmodel "Berdan.smd"
{
	$mass 4
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
