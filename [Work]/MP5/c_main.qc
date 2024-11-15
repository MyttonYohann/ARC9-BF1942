// Created by Crowbar 0.12.0.0

$modelname "weapons/myt_bf1942/dc/c_mp5.mdl"

$bodygroup "0"
{
	studio "MP5_Mag.smd"
	studio "MP5_Mag_10.smd"
	blank
}

$bodygroup "1"
{
	studio "MP5_HG.smd"
	studio "MP5_HG_Bullpup.smd"
	studio "MP5_HG_Wood.smd"
	studio "MP5_HG_Bullpup_Wood.smd"
	studio "MP5_HG_K.smd"	
	studio "MP5_HG_K_Gripless.smd"	
	studio "MP5_HG_II.smd"	
	studio "MP5_HG_II_Gripless.smd"	
	studio "MP5_HG_SD.smd"
	blank
}

$bodygroup "2"
{
	studio "MP5_Stock.smd"
	studio "MP5_Stock_Slide.smd"	
	studio "MP5_Stock_SlideF.smd"
	studio "MP5_Stock_Wood.smd"
	blank
}

$bodygroup "3"
{
	studio "MP5_Grip.smd"
	studio "MP5_Grip_Wood.smd"
	studio "MP5_Grip_Bullpup.smd"
	blank
}

$bodygroup "4"
{
	studio "MP5.smd"
	studio "MP5K.smd"
	blank
}
$bodygroup "5"
{
	studio "MP5_Iron.smd"
	studio "MP5_Iron_Bullpup.smd"
	studio "MP5_Iron_K.smd"
	studio "MP5_Iron_KBullpup.smd"
	blank
}
$bodygroup "6"
{
	blank
	studio "MP5_Rail.smd"
	studio "MP5_Rail_Bullpup.smd"
	studio "MP5_Rail_BullpupK.smd"
}

$illumposition 0 0 0

$cdmaterials "models\myt_bf1942\dc\ak\"
$cdmaterials "models\myt_bf1942\dc\"

$attachment "1" "W_Main" 0.00 2.00 29.00 rotate -90 -0 0
$attachment "2" "W_Main" -1.00 3.00 7.00 rotate -0 135 -180

$sequence "idle_bullpup" {
	"anims\idle_bullpup.smd"
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "idle" {
	"anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "idle_510_empty" {
	"anims\idle_510_empty.smd"
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "idle_bullpup_510_empty" {
	"anims\idle_bullpup_510_empty.smd"
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}

$sequence "draw" {
	"anims\draw.smd"
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "draw_510_empty" {
	"anims\draw_510_empty.smd"
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "draw_bullpup" {
	"anims\draw_bullpup.smd"
	fadein 0.2
	fadeout 0.2
	snap	
	fps 40
}
$sequence "draw_bullpup_510_empty" {
	"anims\draw_bullpup_510_empty.smd"
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
$sequence "holster_bullpup" {
	"anims\holster_bullpup.smd"
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
	fadeout 0.5
	fps 40
}
$sequence "fire_ads" {
	"anims\fire_ads.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.05
	fadeout 0.5
	fps 40
}
$sequence "fire_bullpup" {
	"anims\fire_bullpup.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.05
	fadeout 0.5
	fps 40
}
$sequence "fire_bullpup_ads" {
	"anims\fire_bullpup_ads.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.05
	fadeout 0.5
	fps 40
}
$sequence "fire_510_last" {
	"anims\fire_510_last.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.05
	fadeout 0.5
	fps 40
}
$sequence "fire_ads_510_last" {
	"anims\fire_ads_510_last.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.05
	fadeout 0.5
	fps 40
}
$sequence "fire_bullpup_510_last" {
	"anims\fire_bullpup_510_last.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.05
	fadeout 0.5
	fps 40
}
$sequence "fire_bullpup_ads_510_last" {
	"anims\fire_bullpup_ads_510_last.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.05
	fadeout 0.5
	fps 40
}



$sequence "dry" {
	"anims\dry.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
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

$sequence "wet" {
	"anims\wet.smd"
	activity "ACT_VM_RELOAD" 1		
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

$sequence "dry_bullpup" {
	"anims\dry_bullpup.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "dry_bullpup_fail" {
	"anims\dry_bullpup_fail.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	fps 40
}
$sequence "dry_bullpup_optic" {
	"anims\dry_bullpup_optic.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "dry_bullpup_optic_fail" {
	"anims\dry_bullpup_optic_fail.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "wet_bullpup" {
	"anims\wet_bullpup.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2	
	fps 40
}

$sequence "wet_bullpup_fail" {
	"anims\wet_bullpup_fail.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2	
	fps 40
}


$sequence "dry_510" {
	"anims\dry_510.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "dry_510_fail" {
	"anims\dry_510_fail.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "wet_510" {
	"anims\wet_510.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2	
	fps 40
}

$sequence "wet_510_fail" {
	"anims\wet_510_fail.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2	
	fps 40
}

$sequence "dry_bullpup_510" {
	"anims\dry_bullpup_510.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "dry_bullpup_510_fail" {
	"anims\dry_bullpup_510_fail.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "wet_bullpup_510" {
	"anims\wet_bullpup_510.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2	
	fps 40
}

$sequence "wet_bullpup_510_fail" {
	"anims\wet_bullpup_510_fail.smd"
	activity "ACT_VM_RELOAD" 1		
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

$collisionmodel "MP5.smd"
{
	$mass 4
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
