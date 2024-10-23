// Created by Crowbar 0.12.0.0

$modelname "weapons/myt_bf1942/1918/c_webley.mdl"

$bodygroup "main"
{
	studio "webley.smd"	
	studio "webley_short.smd"	
	studio "webley_auto.smd"
	blank
}

$bodygroup "1"
{
	studio "webley_head.smd"
	blank
}
$bodygroup "2"
{
	studio "webley_shell.smd"
	blank
}

$illumposition 0 0 0

$cdmaterials "models\myt_bf1942\1918\"
$cdmaterials "models\myt_bf1942\dc\"

$attachment "1" "W_Main" 0.00 3.80 10.00 rotate -90 -0 0
$attachment "2" "W_Cylinder" 0.00 0.00 -2.00 rotate 90 0 0

$sequence "idle" {
	"anims\idle.smd"
	fadein 0.2
	fadeout 0.2	
	fps 40
}

$sequence "draw" {
	"anims\draw.smd"
	fadein 0.2
	fadeout 0.2	
	fps 40
}

$sequence "holster" {
	"anims\holster.smd"
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "fire" {
	"anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.1
	fadeout 0.5
	fps 40
}

$sequence "fire_fail" {
	"anims\fire_fail.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.1
	fadeout 0.5
	fps 40
}

$sequence "fire_auto" {
	"anims\fire_auto.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.1
	fadeout 0.5
	snap
	fps 40
}

$sequence "fire_prep" {
	"anims\fire_prep.smd"
	{ event 5001 0 "1" }
	fadein 0.1
	fadeout 0.2
	fps 40
}

$sequence "wet" {
	"anims\wet.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "dry" {
	"anims\dry.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "wet_auto" {
	"anims\wet_auto.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "dry_auto" {
	"anims\dry_auto.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "wet_fail" {
	"anims\wet_fail.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "dry_fail" {
	"anims\dry_fail.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "wet_auto_fail" {
	"anims\wet_auto_fail.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "dry_auto_fail" {
	"anims\dry_auto_fail.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
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

$collisionmodel "webley.smd"
{
	$mass 4
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
