$modelname "weapons/myt_bf1942/atts/dc/c_r870.mdl"

$bodygroup "studio" {
	studio "R870_Sawn.smd"
	blank
}

$origin -2.80527 -9.37854 -6.81793 

$cdmaterials "models\myt_bf1942\dc\ak\"
$cdmaterials "models\myt_bf1942\dc\"

$attachment "1" "W_R870_Pump" 0.00 0.00 6.00 rotate -90 0 0 // Muzzle
$attachment "2" "root"  2 5 -10 rotate 0 0 0     // VM movement
//$attachment "3" "camera" 0 0 0 rotate 0 0 0     // Camera rotation (only rotation!)

$collisionmodel "R870_Sawn.smd"

$sequence "idle" {
	"anims/idle.smd"
	fps 40
}
$sequence "ubgl" {
	"anims/ubgl.smd"
	fps 40
}

$sequence "fire" {
	"anims/ubgl_fire.smd"
	fadein 0.03
	fadeout 0.2
	fps 40
}
$sequence "fire_full" {
	"anims/ubgl_fire_full.smd"
	fadein 0.03
	fadeout 0.2
	fps 40
}

$sequence "pump" {
	"anims/ubgl_pump.smd"
	fadein 0.03
	fadeout 0.2
	fps 40
}

$sequence "to_ubgl" {
	"anims/to_ubgl.smd"
	fadein 0.1
	fadeout 0.1
	fps 40
}
$sequence "from_ubgl" {
	"anims/from_ubgl.smd"
	fadein 0.1
	fadeout 0.1
	fps 40
}

$sequence "ubgl_reload1" {
	"anims/ubgl_reload1.smd"
	fadein 0.1
	fadeout 0.1
	fps 40
}
$sequence "ubgl_reload2" {
	"anims/ubgl_reload2real.smd"
	fadein 0.1
	fadeout 0.1
	fps 40
}
$sequence "ubgl_reload3" {
	"anims/ubgl_reload3.smd"
	fadein 0.1
	fadeout 0.1
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
$bonemerge "ValveBiped.Bip01_R_Wrist"
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