/* 
Futuristic PMC
*/

#define package "PMC_"

SET_GROUP(clothing)
	["rhs_uniform_acu_ocp"] call FUNC(AddItem); // Uniform
	//["H_PilotHelmetFighter_B"] call FUNC(AddItem); //Helmet
	//["rhsusf_ach_helmet_ocp","rhsusf_ach_helmet_ocp_alt","rhsusf_ach_helmet_headset_ocp","rhsusf_ach_helmet_headset_ocp_alt","rhsusf_ach_helmet_ocp_norotos"] call FUNC(AddItemRandom); //Helmet
	["H_PilotHelmetFighter_B"] call FUNC(AddItemRandom); //Helmet
	["rhs_googles_black","rhs_googles_clear","rhs_googles_orange","rhs_googles_yellow","rhs_ess_black","rhsusf_oakley_goggles_blk","rhsusf_oakley_goggles_clr","rhsusf_oakley_goggles_ylw"] call FUNC(AddItemRandom); //Facewaer
	["rhsusf_assault_eagleaiii_ocp"] call FUNC(AddItem); //Backpack
END_GROUP;

SET_GROUP(IFAK)
	["ACE_fieldDressing", 5, "uniform"] call FUNC(AddItem);
	["ACE_elasticBandage", 5, "uniform"] call FUNC(AddItem);
	["ACE_packingBandage", 5, "uniform"] call FUNC(AddItem);
	["ACE_quikclot", 5, "uniform"] call FUNC(AddItem);
	["ACE_painkillers", 5, "uniform"] call FUNC(AddItem);
	["ACE_morphine", 2, "uniform"] call FUNC(AddItem);
	["ACE_epinephrine", 2, "uniform"] call FUNC(AddItem);
	["ACE_tourniquet", 2, "uniform"] call FUNC(AddItem);
	["ACE_splint", 2, "uniform"] call FUNC(AddItem);
	["ACE_suture", 2, "uniform"] call FUNC(AddItem);
END_GROUP;

SET_GROUP(bits)
	["ACRE_PRC343", 1] call FUNC(AddItem);
	["ItemMap"] call FUNC(AddItem);
	["ItemCompass"] call FUNC(AddItem);
	["vn_b_item_watch","ItemWatch","ChemicalDetector_01_watch_F","ACE_Altimeter"] call FUNC(AddItemRandom);
	["ACE_MapTools"] call FUNC(AddItem);
	["CUP_NVG_GPNVG_black"] call FUNC(AddItem);
	["ItemGPS"] call FUNC(AddItem);
END_GROUP;

SET_GROUP(grenades)
	["rhs_mag_an_m8hc", 1, "uniform"] call FUNC(AddItem);
	["rhs_mag_m67", 2, "uniform"] call FUNC(AddItem);
END_GROUP;

SET_GROUP(M4)
	["rhs_mag_30Rnd_556x45_M855A1_Stanag", 10, "vest"] call FUNC(AddItem);
	["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 3, "vest"] call FUNC(AddItem);
	["rhsusf_acc_eotech_552",1,"vest"] call FUNC(AddItem);
	["rhs_weap_m4a1_blockII","rhs_weap_m4a1_blockII_bk","rhs_weap_m4a1_blockII_KAC_bk","rhs_weap_m4a1_blockII_KAC"] call FUNC(AddItemRandom);
	["rhsusf_acc_acog_rmr"] call FUNC(AddItem);
	["cup_acc_anpeq_15_flashlight_black_l"] call FUNC(AddItem);
	["rhsusf_acc_rotex5_grey"] call FUNC(AddItem);
	["rhsusf_acc_grip1","rhsusf_acc_kac_grip","rhsusf_acc_rvg_blk","rhsusf_acc_tdstubby_blk","rhsusf_acc_grip3"] call FUNC(AddItemRandom);
END_GROUP;

//Platoon Leader
//[this, "PMC_PL"] call FW_fnc_GearScript;
case (package + "PL"): {
	["rhsusf_spcs_ocp_squadleader"] call FUNC(AddItem); // Vest
	ADD_GROUP(clothing);
	ADD_GROUP(IFAK);
	ADD_GROUP(bits);
	["ACRE_PRC152", 1] call FUNC(AddItem);
	["Binocular"] call FUNC(AddItem);
	ADD_GROUP(grenades);
	ADD_GROUP(M4);
};


/*
//Platoon Sargeant
//[this, "PMC_PSG"] call FW_fnc_GearScript;
case (package + "PSG"): { 
	["rhsusf_spcs_ocp_squadleader"] call FUNC(AddItem);
	ADD_GROUP(clothing);
	ADD_GROUP(IFAK);
	ADD_GROUP(bits);
	["ACRE_PRC152", 1] call FUNC(AddItem);
	["Binocular"] call FUNC(AddItem);
	ADD_GROUP(grenades);
	ADD_GROUP(M4);
};
*/

/*
//Radio Telephone Operator / Forward Observer
//[this, "PMC_RTO"] call FW_fnc_GearScript;
case (package + "RTO"): { 
	["rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman_alt"] call FUNC(AddItemRandom);
	ADD_GROUP(clothing);
	ADD_GROUP(IFAK);
	ADD_GROUP(bits);
	["ACRE_PRC152", 1] call FUNC(AddItem);
	["rhsusf_bino_lerca_1200_black"] call FUNC(AddItem);
	ADD_GROUP(grenades);
	ADD_GROUP(M4);
};
*/

/*
//Combat Medic
//[this, "PMC_MED"] call FW_fnc_GearScript;
case (package + "MED"): { 
	["rhsusf_spcs_ocp_medic"] call FUNC(AddItem);
	ADD_GROUP(clothing);
	ADD_GROUP(IFAK);
	ADD_GROUP(bits);
	ADD_GROUP(grenades);
	ADD_GROUP(M4);
	["ACE_surgicalKit",1,"backpack"] call FUNC(AddItem);
	["ACE_fieldDressing", 25, "backpack"] call FUNC(AddItem);
	["ACE_elasticBandage", 25, "backpack"] call FUNC(AddItem);
	["ACE_packingBandage", 25, "backpack"] call FUNC(AddItem);
	["ACE_quikclot", 25, "backpack"] call FUNC(AddItem);
	["ACE_morphine", 15, "backpack"] call FUNC(AddItem);
	["ACE_epinephrine", 15, "backpack"] call FUNC(AddItem);
	["ACE_tourniquet", 10, "backpack"] call FUNC(AddItem);
  	["ACE_splint", 10, "backpack"] call FUNC(AddItem);
	["ACE_salineIV_250",8,"backpack"] call FUNC(AddItem);
 	["ACE_salineIV_500",6,"backpack"] call FUNC(AddItem);
};
*/

/*
//UAV Operator
//[this, "PMC_UAV"] call FW_fnc_GearScript;
case (package + "UAV"): { 
	["rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman_alt"] call FUNC(AddItemRandom);
	ADD_GROUP(clothing);
	ADD_GROUP(IFAK);
	ADD_GROUP(bits);
	ADD_GROUP(grenades);
	ADD_GROUP(M4);
	removeBackpack _unit;
	["B_rhsusf_B_BACKPACK"] call FUNC(AddItemRandom);
};
*/

/*
//Squad Leader
//[this, "PMC_SL"] call FW_fnc_GearScript;
case (package + "SL"): {
	["rhsusf_spcs_ocp_squadleader"] call FUNC(AddItem);
	ADD_GROUP(clothing);
	ADD_GROUP(IFAK);
	ADD_GROUP(bits);
	["ACRE_PRC152", 1] call FUNC(AddItem);
	["Binocular"] call FUNC(AddItem);
	ADD_GROUP(grenades);
	ADD_GROUP(M4);
};
*/

/*
//Team Leader
//[this, "PMC_TL"] call FW_fnc_GearScript;
case (package + "TL"): { 
	["rhsusf_spcs_ocp_teamleader","rhsusf_spcs_ocp_teamleader_alt"] call FUNC(AddItemRandom);
	ADD_GROUP(clothing);
	ADD_GROUP(IFAK);
	ADD_GROUP(bits);
	["Binocular"] call FUNC(AddItem);
	ADD_GROUP(grenades);
	ADD_GROUP(M4);
};
*/

/*
//Grenadier
//[this, "PMC_GR"] call FW_fnc_GearScript;
case (package + "GR"): { 
	["rhsusf_spcs_ocp_grenadier"] call FUNC(AddItem);
	ADD_GROUP(clothing);
	ADD_GROUP(IFAK);
	ADD_GROUP(bits);
	ADD_GROUP(grenades);
	ADD_GROUP(M4);
	["rhs_mag_M441_HE", 15, "backpack"] call FUNC(AddItem);
	["rhs_mag_m715_Green", 2, "backpack"] call FUNC(AddItem);
	["rhs_mag_m713_Red", 2, "backpack"] call FUNC(AddItem);
	["rhs_mag_m714_White", 4, "backpack"] call FUNC(AddItem);
	["rhs_weap_M320"] call FUNC(AddItem);
};
*/

/*
//Automatic Rifleman
//[this, "PMC_AR"] call FW_fnc_GearScript;
case (package + "AR"): { 
	["rhsusf_spcs_ocp_saw"] call FUNC(AddItem);
	ADD_GROUP(clothing);
	ADD_GROUP(IFAK);
	ADD_GROUP(bits);
	ADD_GROUP(grenades);
	["rhsusf_acc_eotech_552",1,"vest"] call FUNC(AddItem);
	["rhsusf_100Rnd_556x45_mixed_soft_pouch", 4, "vest"] call FUNC(AddItem);
	["rhsusf_100Rnd_556x45_mixed_soft_pouch", 2, "backpack"] call FUNC(AddItem);
	["rhsusf_100Rnd_556x45_M995_soft_pouch", 2, "backpack"] call FUNC(AddItem);
	["rhs_weap_m249_pip_ris"] call FUNC(AddItem);
	["rhsusf_acc_elcan"] call FUNC(AddItem);
	["cup_acc_anpeq_15_flashlight_black_l"] call FUNC(AddItem);
	["rhsusf_acc_rotex5_grey"] call FUNC(AddItem);
	["rhsusf_acc_saw_bipod","rhsusf_acc_grip4","rhsusf_acc_grip4_bipod"] call FUNC(AddItemRandom);
	["rhsusf_mag_17Rnd_9x19_JHP", 3, "vest"] call FUNC(AddItem);
	["rhsusf_weap_glock17g4"] call FUNC(AddItem);
};
*/

/*
//Rifleman
//[this, "PMC_RF"] call FW_fnc_GearScript;
case (package + "RF"): { 
	["rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman_alt"] call FUNC(AddItemRandom);
	ADD_GROUP(clothing);
	ADD_GROUP(IFAK);
	ADD_GROUP(bits);
	ADD_GROUP(grenades);
	ADD_GROUP(M4);
};
*/

/*
//Crewman
//[this, "PMC_CR"] call FW_fnc_GearScript;
case (package + "CR"): { 
	["rhsusf_spcs_ocp_crewman"] call FUNC(AddItem);
	ADD_GROUP(clothing);
	ADD_GROUP(IFAK);
	ADD_GROUP(bits);
	ADD_GROUP(grenades);
	ADD_GROUP(M4);
};
*/

/*
//Machine Gunner
//[this, "PMC_MG"] call FW_fnc_GearScript;
case (package + "MG"): { 
	["rhsusf_spcs_ocp_machinegunner"] call FUNC(AddItem);
	ADD_GROUP(clothing);
	ADD_GROUP(IFAK);
	ADD_GROUP(bits);
	ADD_GROUP(grenades);
	["rhsusf_100Rnd_762x51_m80a1epr", 4, "vest"] call FUNC(AddItem);
	["rhsusf_100Rnd_762x51_m80a1epr", 3, "backpack"] call FUNC(AddItem);
	["rhs_weap_m240G"] call FUNC(AddItem);
	["rhsusf_acc_acog2"] call FUNC(AddItem);
	["rhsusf_acc_ardec_m240"] call FUNC(AddItem);
	["rhsusf_mag_17Rnd_9x19_JHP", 3, "vest"] call FUNC(AddItem);
	["rhsusf_weap_glock17g4"] call FUNC(AddItem);
};
*/

/*
//Machine Gunner Assistant
//[this, "PMC_MGA"] call FW_fnc_GearScript;
case (package + "MGA"): { 
	["rhsusf_spcs_ocp_rifleman","rhsusf_spcs_ocp_rifleman_alt"] call FUNC(AddItemRandom);
	ADD_GROUP(clothing);
	ADD_GROUP(IFAK);
	ADD_GROUP(bits);
	["Binocular"] call FUNC(AddItem);
	ADD_GROUP(grenades);
	ADD_GROUP(M4);
	["rhsusf_100Rnd_762x51_m80a1epr", 3, "backpack"] call FUNC(AddItem);
};
*/

/*
// To go in vehGearSettings.sqf

case "STRYKER": {
		_vehicle call FUNC(RemoveAllVehicleGear);
		["rhs_mag_30Rnd_556x45_M855A1_Stanag", 30] call FUNC(AddItemVehicle);
		["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 15] call FUNC(AddItemVehicle);
		["rhsusf_100Rnd_556x45_mixed_soft_pouch", 10] call FUNC(AddItemVehicle);
		["rhsusf_100Rnd_556x45_M995_soft_pouch", 5] call FUNC(AddItemVehicle);
		["rhsusf_100Rnd_762x51_m80a1epr", 5] call FUNC(AddItemVehicle);
		["rhs_mag_M441_HE", 10] call FUNC(AddItemVehicle);
		["rhs_mag_m715_Green", 5] call FUNC(AddItemVehicle);
		["rhs_mag_m713_Red", 5] call FUNC(AddItemVehicle);
		["rhs_mag_m714_White", 5] call FUNC(AddItemVehicle);
		["rhsusf_mag_17Rnd_9x19_JHP", 5] call FUNC(AddItemVehicle);
		["UK3CB_BAF_Javelin_Slung_Tube", 4] call FUNC(AddItemVehicle);
		["UK3CB_BAF_Javelin_CLU"] call FUNC(AddItemVehicle);
		["ACE_fieldDressing", 25] call FUNC(AddItemVehicle);
		["ACE_elasticBandage", 25] call FUNC(AddItemVehicle);
		["ACE_packingBandage", 25] call FUNC(AddItemVehicle);
		["ACE_quikclot", 25] call FUNC(AddItemVehicle);
		["ACE_morphine", 25] call FUNC(AddItemVehicle);
		["ACE_tourniquet", 25] call FUNC(AddItemVehicle);
		["ACE_splint", 25] call FUNC(AddItemVehicle);
		["ACE_surgicalKit",2] call FUNC(AddItemVehicle);
		["ACE_salineIV_250",8] call FUNC(AddItemVehicle);
  		["ACE_salineIV_500",6] call FUNC(AddItemVehicle);
		["rhs_weap_sr25_ec", 1] call FUNC(AddItemVehicle);
		["rhsusf_20Rnd_762x51_SR25_m118_special_Mag", 10] call FUNC(AddItemVehicle);
		["rhsusf_acc_aac_762sdn6_silencer", 1] call FUNC(AddItemVehicle);
		["rhsusf_acc_anpeq15a", 1] call FUNC(AddItemVehicle);
		["rhsusf_acc_premier", 1] call FUNC(AddItemVehicle);
		["rhsusf_acc_harris_bipod", 1] call FUNC(AddItemVehicle);
		["rhs_weap_m4a1", 1] call FUNC(AddItemVehicle);
	};

*/