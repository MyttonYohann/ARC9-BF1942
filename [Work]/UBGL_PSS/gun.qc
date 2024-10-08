$modelname "weapons/myt_bf1942/atts/dc/c_pss.mdl"

$bodygroup "studio" {
	studio "pss.smd"
	blank
}

$origin -2.80527 -9.37854 -6.81793 

$illumposition 0 0 0

$cdmaterials "models\myt_bf1942\dc\ak\"
$cdmaterials "models\myt_bf1942\dc\"

$attachment "1" "W_PSS_Slide" 0.00 0.00 6.00 rotate -90 0 0 // Muzzle
$attachment "2" "root"  2 5 -10 rotate 0 0 0     // VM movement
//$attachment "3" "camera" 0 0 0 rotate 0 0 0     // Camera rotation (only rotation!)

$collisionmodel "pss.smd"

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

$sequence "ubgl_last" {
	"anims/ubgl_last.smd"
	fps 40
}

$sequence "fire_last" {
	"anims/ubgl_fire_last.smd"
	fadein 0.03
	fadeout 0.2
	fps 40
}

$sequence "to_ubgl_last" {
	"anims/to_ubgl_last.smd"
	fadein 0.1
	fadeout 0.1
	fps 40
}
$sequence "from_ubgl_last" {
	"anims/from_ubgl_last.smd"
	fadein 0.1
	fadeout 0.1
	fps 40
}

$sequence "fire_ads" {
	"anims/ubgl_fire_ads.smd"
	fadein 0.1
	fadeout 0.1
	fps 40
}
$sequence "fire_ads_last" {
	"anims/ubgl_fire_ads_last.smd"
	fadein 0.1
	fadeout 0.1
	fps 40
}

$sequence "ubgl_wet" {
	"anims/ubgl_wet.smd"
	fadein 0.1
	fadeout 0.1
	fps 40
}
$sequence "ubgl_dry" {
	"anims/ubgl_dry.smd"
	fadein 0.1
	fadeout 0.1
	fps 40
}

$sequence "fire_ik" {
	"anims/fire.smd"
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