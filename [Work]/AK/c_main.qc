// Created by Crowbar 0.12.0.0

$modelname "weapons/myt_bf1942/dc/c_ak47.mdl"

$bodygroup "mag"
{
	studio "AK_Mag.smd"
	studio "AK_Mag20.smd"
	studio "AK_Mag50.smd"
	studio "AK_Mag_U.smd"
	studio "AK_Mag_U20.smd"
	studio "AK_Mag_Scor.smd"
	studio "AK_Mag_Scor30.smd"
	studio "AK_Mag_Snipe.smd"
	studio "AK_Mag_Snipe20.smd"	
	studio "AK_Mag_Saiga.smd"	
	studio "AK_Mag_Saiga4.smd"
	studio "AK_Mag_ASVal.smd"	
	blank
}

$bodygroup "handguard"
{
	studio "AK_HG.smd"
	studio "AK_HG_U.smd"
	studio "AK_HG_Snipe.smd"
	studio "AK_HG_Bare.smd"
	studio "AK_HG_Saiga.smd"	
	studio "AK_HG_SaigaU.smd"
	studio "AK_HG_ASVal.smd"
	studio "AK_HG_ASValU.smd"
	studio "AK_HG_SG.smd"
	studio "AK_HG_SG_U.smd"
	studio "AK_HG_SG_Saiga.smd"
	blank
}

$bodygroup "stock"
{
	studio "AK_Stock.smd"
	studio "AK_Stock_Skel.smd"	
	studio "AK_Stock_Scor.smd"
	studio "AK_Stock_Snipe.smd"
	studio "AK_Stock_Saiga.smd"
	studio "AK_Stock_PKM.smd"
	blank
}

$bodygroup "grip"
{
	studio "AK_Grip.smd"
	studio "AK_Grip_Stock.smd"
	studio "AK_Grip_Scor.smd"
	studio "AK_Grip_Poly.smd"
	studio "AK_Grip_PKM.smd"
	studio "AK_Grip_Hunt.smd"
	studio "AK_Grip_Hunt_Ske.smd"
	studio "AK_Grip_Hunt_Heavy.smd"
	studio "AK_Grip_Stub.smd"
	studio "AK_Grip_Bullpup.smd"
	blank
}

$bodygroup "ak"
{
	studio "AK_Main.smd"
	blank
}
$bodygroup "bullet"
{
	studio "AK_Bullet_308.smd"
	studio "AK_Bullet_12.smd"
	studio "AK_Bullet_9mm.smd"
	blank
}

$illumposition 0 0 0

$cdmaterials "models\myt_bf1942\dc\ak\"
$cdmaterials "models\myt_bf1942\dc\"

$attachment "1" "W_Main" 0.00 2.00 29.00 rotate -90 -0 0
$attachment "2" "W_Main" -1.00 3.00 7.00 rotate -0 135 -180

$sequence "idle" {
	"anims\idle.smd"
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

$sequence "fire_ads" {
	"anims\fire_ads.smd"
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

$sequence "dry_u" {
	"anims\dry_u.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "wet_u" {
	"anims\wet_u.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2	
	fps 40
}

$sequence "wet_u_fail" {
	"anims\wet_u_fail.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2	
	fps 40
}


$sequence "dry_saiga" {
	"anims\dry_saiga.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "wet_saiga" {
	"anims\wet_saiga.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2	
	fps 40
}

$sequence "wet_saiga_fail" {
	"anims\wet_saiga_fail.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2	
	fps 40
}

$sequence "dry_scor" {
	"anims\dry_scor.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1		
	fadein 0.2
	fadeout 0.2
	fps 40
}

$sequence "wet_scor" {
	"anims\wet_scor.smd"
	activity "ACT_VM_RELOAD" 1		
	fadein 0.2
	fadeout 0.2	
	fps 40
}

$sequence "wet_scor_fail" {
	"anims\wet_scor_fail.smd"
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

$collisionmodel "AK_Main.smd"
{
	$mass 4
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
}
