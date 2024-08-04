//Author: Pregnant Anne Frank
//[this, "USARMY_PLT_1IC"] call FW_fnc_GearScript;
//USE THIS COMMAND IN THE UNIT INIT TO ADD FLAG PATCHES [this, "vn_b_insignia_sog_rt_raleigh_01"] remoteExec ["BIS_fnc_setUnitInsignia", 0,this];
//[this, "MERCS_SQUAD LEADER"] call FW_fnc_GearScript;
//[this, "MERCS_TEAM LEADER"] call FW_fnc_GearScript;
//[this, "MERCS_AUTO RIFLEMAN"] call FW_fnc_GearScript;
//[this, "MERCS_RIFLEMAN"] call FW_fnc_GearScript;
//[this, "MERCS_AT"] call FW_fnc_GearScript;
//[this, "MERCS_GRENADIER"] call FW_fnc_GearScript;
//[this, "MERCS_AT ASSIST"] call FW_fnc_GearScript;
//[this, "MERCS_PLATOON LEADER"] call FW_fnc_GearScript;
//[this, "MERCS_MACHINEGUN"] call FW_fnc_GearScript;
//[this, "MERCS_MACHINEGUN ASSIST"] call FW_fnc_GearScript;
//[this, "MERCS_MARKSMAN"] call FW_fnc_GearScript;
//[this, "MERCS_MEDIC"] call FW_fnc_GearScript;
//[this, "MERCS_PILOT"] call FW_fnc_GearScript;
//[this, "MERCS_PILOT LEAD"] call FW_fnc_GearScript;

#define package "MERCS_"

#define uniform \
	["FP_GOR_Uniform_og107_mk3_portugueselizard_blench"] call FUNC(AddItem); \
	["V_Simc_SF_mk56_1","V_Simc_SF_mk56_2","V_Simc_SF_mk56_3"] call FUNC(AddItemRandom); \
	["tin_helmet_gc_beret"] call FUNC(AddItem); 	


#define IFAK \
	["ACE_fieldDressing", 3, "uniform"] call FUNC(AddItem); \
	["ACE_elasticBandage", 3, "uniform"] call FUNC(AddItem); \
	["ACE_packingBandage", 3, "uniform"] call FUNC(AddItem); \
	["ACE_quikclot", 3, "vest"] call FUNC(AddItem); \
	["ACE_morphine", 1, "vest"] call FUNC(AddItem); \
	["ACE_epinephrine", 1, "vest"] call FUNC(AddItem); \
	["ACE_tourniquet", 1, "vest"] call FUNC(AddItem); \
	["ACE_splint", 2, "vest"] call FUNC(AddItem); \

#define items \
	["ItemMap"] call FUNC(AddItem); \
	["ItemWatch"] call FUNC(AddItem); \
	["ItemCompass"] call FUNC(AddItem); \
	["rhs_mag_m67",2,"vest"] call FUNC(AddItem); \
	["UK3CB_BAF_SmokeShell",2,"vest"] call FUNC(AddItem); ; \

#define backpacks \
	["B_simc_USMCFLAK_M41_flat_M43_roll"] call FUNC(AddItem);

#define AK \
	["vn_type56_mag",10] call FUNC(AddItem); \
	["vn_ak_01"] call FUNC(AddItem);
	
#define KBKG \
	["vn_type56_mag",10] call FUNC(AddItem); \
	["vn_kbkg"] call FUNC(AddItem);
	
#define L1A1 \
	["vn_l1a1_20_mag",10] call FUNC(AddItem); \
	["vn_l1a1_01_camo","vn_l1a1_02_camo","vn_l1a1_03_camo"] call FUNC(AddItemRandom);
	
#define L34A1XM148 \
	["vn_f1_smg_mag",10] call FUNC(AddItem); \
	["vn_l34a1_xm148"] call FUNC(AddItem);
	
#define L1A1XM148 \
	["vn_l1a1_20_mag",10] call FUNC(AddItem); \
	["vn_l1a1_xm148_camo"] call FUNC(AddItem);
	
#define M16 \
	["vn_m16_30_mag",10] call FUNC(AddItem); \
	["vn_m16_camo","vn_m16_camo","vn_xm177_camo","vn_xm177_fg"] call FUNC(AddItemRandom);
	
#define M16M203 \
	["vn_m16_30_mag",10] call FUNC(AddItem); \
	["vn_m16_m203_camo","vn_m16_xm148","vn_xm177_m203_camo","vn_xm177_xm148_camo"] call FUNC(AddItemRandom); 
	
#define M63AssaultRifle \
	["vn_m63a_30_mag",10] call FUNC(AddItem); \
	["vn_m63a"] call FUNC(AddItem);

#define M60 \
	["vn_m60_100_mag",7] call FUNC(AddItem); \
	["vn_m60"] call FUNC(AddItem);
	
#define M63Commando \
	["vn_m63a_150_mag",7] call FUNC(AddItem); \
	["vn_m63a_cdo"] call FUNC(AddItem);
	
#define M63MachineGun \
	["vn_m63a_100_mag",10] call FUNC(AddItem); \
	["vn_m63a_lmg"] call FUNC(AddItem);
	
#define MPU \
	["vn_mpu_mag",10] call FUNC(AddItem); \
	["vn_mpu"] call FUNC(AddItem);
	
#define RPD \
	["vn_rpd_100_mag",10] call FUNC(AddItem); \
	["vn_rpd"] call FUNC(AddItem);

#define Type56 \
	["vn_type56_mag", 10] call FUNC(AddItem);	\
	["vn_type56"] call FUNC(AddItem);	\
	_unit addPrimaryWeaponItem "vn_b_type56";		
	
#define weaponRF \
	call selectRandom [{AK},{KBKG},{L1A1},{M16},{M63AssaultRifle},{Type56},{MPU}];
	
#define weaponGL \
	call selectRandom [{L34A1XM148},{M16M203},{L1A1XM148},{M16M203}];
	
#define weaponAR \
	call selectRandom [{RPD},{RPD},{M63MachineGun},{M63Commando}];
	
#define weaponMG \
	call selectRandom [{M60},{M60}];

 
case (package + "RIFLEMAN"): { //Rifleman


	uniform;
	IFAK;
	items; 
	
	weaponRF;

	["CUP_hgun_Deagle"] call FUNC(AddItem);
	["CUP_7Rnd_50AE_Deagle",3,"vest"] call FUNC(AddItem);


	
};

case (package + "GRENADIER"): { //Rifleman


	backpacks;	
	uniform;
	IFAK;
	items; 
	
	weaponGL;
	
	["vn_40mm_m381_he_mag",18] call FUNC(AddItem);
	["vn_40mm_m680_smoke_w_mag",6] call FUNC(AddItem);
	["vn_40mm_m715_smoke_g_mag",2] call FUNC(AddItem);
	["vn_40mm_m682_smoke_r_mag",2] call FUNC(AddItem);
	["vn_40mm_m717_smoke_p_mag",2] call FUNC(AddItem);

	["CUP_hgun_Deagle"] call FUNC(AddItem);
	["CUP_7Rnd_50AE_Deagle",3,"vest"] call FUNC(AddItem);


	
};

case (package + "AT"): { //Rifleman

		["B_simc_packboard_roket_2"] call FUNC(AddItem); 
	
	uniform;
	IFAK;
	items; 
	
	MPU;

		["vn_m20a1b1_01"] call FUNC(AddItem); 

	["vn_m20a1b1_heat_mag",5,"backpack"] call FUNC(AddItem);
	
	["CUP_hgun_Deagle"] call FUNC(AddItem);
	["CUP_7Rnd_50AE_Deagle",3,"vest"] call FUNC(AddItem);
	
};

case (package + "AT ASSIST"): { //Rifleman

		["B_simc_packboard_roket_2"] call FUNC(AddItem); 
	
	uniform;
	IFAK;
	items; 
	
	weaponRF;
 	
	["vn_m20a1b1_heat_mag",4,"backpack"] call FUNC(AddItem);
	
	["CUP_hgun_Deagle"] call FUNC(AddItem);
	["CUP_7Rnd_50AE_Deagle",3,"vest"] call FUNC(AddItem);
	
};

case (package + "TEAM LEADER"): { //Rifleman
	
	backpacks;
	uniform;
	IFAK;
	items; 

	M16;	
	["vn_o_1x_sp_m16"] call FUNC(AddItem); 
	

	["Binocular"] call FUNC(AddItem);
	["UK3CB_BAF_SmokeShellRed",2,"vest"] call FUNC(AddItem); // White Smoke
	["UK3CB_BAF_SmokeShellGreen",2,"vest"] call FUNC(AddItem); // White Smoke	
	
	["CUP_hgun_Deagle"] call FUNC(AddItem);
	["CUP_7Rnd_50AE_Deagle",3,"vest"] call FUNC(AddItem);
	
	
};

case (package + "SQUAD LEADER"): { //Rifleman

	uniform;
	IFAK;
	items; 
	
	["ACRE_PRC152", 1] call FUNC(AddItem);
	
	M16;	
	["vn_o_4x_m16"] call FUNC(AddItem); 

	["Binocular"] call FUNC(AddItem);
	["UK3CB_BAF_SmokeShellRed",2,"vest"] call FUNC(AddItem); // White Smoke
	["UK3CB_BAF_SmokeShellGreen",2,"vest"] call FUNC(AddItem); // White Smoke
	
	["CUP_hgun_Deagle"] call FUNC(AddItem);
	["CUP_7Rnd_50AE_Deagle",3,"vest"] call FUNC(AddItem);
	
};

case (package + "PLATOON LEADER"): { //Rifleman


	uniform;
	IFAK;
	items;

	["ACRE_PRC152", 1] call FUNC(AddItem);
	
	
	M16;	
	["vn_o_4x_m16"] call FUNC(AddItem);
	

	["Binocular"] call FUNC(AddItem);
	["UK3CB_BAF_SmokeShellRed",2,"vest"] call FUNC(AddItem); // White Smoke
	["UK3CB_BAF_SmokeShellGreen",2,"vest"] call FUNC(AddItem); // White Smoke

	["CUP_hgun_Deagle"] call FUNC(AddItem);
	["CUP_7Rnd_50AE_Deagle",3,"vest"] call FUNC(AddItem);
	
};

case (package + "PILOT LEAD"): { //Rifleman


	["UK3CB_ADC_C_U_Pilot_01"] call FUNC(AddItem);
	["UK3CB_ADC_C_H_Pilot_Cap"] call FUNC(AddItem);	
	["V_Rangemaster_belt"] call FUNC(AddItem);


	["ACRE_PRC152", 1] call FUNC(AddItem);

	IFAK;
	items; 

	["CUP_hgun_Deagle"] call FUNC(AddItem);
	["CUP_7Rnd_50AE_Deagle",3,"vest"] call FUNC(AddItem);
	
};

case (package + "PILOT"): { //Rifleman


	["UK3CB_ADC_C_U_Pilot_02"] call FUNC(AddItem);
	["H_Cap_marshal"] call FUNC(AddItem);	
	["V_Rangemaster_belt"] call FUNC(AddItem);


	["ACRE_PRC152", 1] call FUNC(AddItem);

	IFAK;
	items; 

	["CUP_hgun_Deagle"] call FUNC(AddItem);
	["CUP_7Rnd_50AE_Deagle",3,"vest"] call FUNC(AddItem);
	
};


case (package + "MACHINEGUN"): { //Rifleman

	backpacks;
	uniform;
	IFAK;
	items;
	
	weaponMG;
	
	
	["CUP_hgun_Deagle"] call FUNC(AddItem);
	["CUP_7Rnd_50AE_Deagle",3,"vest"] call FUNC(AddItem);

};




case (package + "MACHINEGUN ASSIST"): { //Rifleman

	backpacks;
	uniform;
	IFAK;
	items;
	
	["Binocular"] call FUNC(AddItem);

	
	["vn_m60_100_mag",6,"backpack"] call FUNC(AddItem);

	weaponRF;


	["CUP_hgun_Deagle"] call FUNC(AddItem);
	["CUP_7Rnd_50AE_Deagle",3,"vest"] call FUNC(AddItem);	
	
};

case (package + "AUTO RIFLEMAN"): { //Rifleman

	uniform;
	IFAK;
	items;
	backpacks;

	weaponAR;

	["CUP_hgun_Deagle"] call FUNC(AddItem);
	["CUP_7Rnd_50AE_Deagle",3,"vest"] call FUNC(AddItem);
	
};

case (package + "MEDIC") : { // Medic

	["usm_pack_m5_medic"] call FUNC(AddItem); // medic bag

	uniform;
	IFAK;
	items;
	
	["ACE_fieldDressing",10,"vest"] call FUNC(AddItem); // MED Supplies
	["ACE_elasticBandage",10,"vest"] call FUNC(AddItem);
	["ACE_quikclot",10,"vest"] call FUNC(AddItem);
	["ACE_epinephrine",10,"vest"] call FUNC(AddItem);
	["ACE_morphine",5,"vest"] call FUNC(AddItem);
	
	MPU;
	
        ["ACE_personalAidKit", 2, "backpack"] call FUNC(AddItem);
		["ACE_salineIV_250", 10, "backpack"] call FUNC(AddItem);
        ["ACE_salineIV_500", 10, "backpack"] call FUNC(AddItem);
        ["ACE_fieldDressing", 20, "backpack"] call FUNC(AddItem);
		["ACE_packingBandage", 20, "backpack"] call FUNC(AddItem);
		["ACE_elasticBandage", 20, "backpack"] call FUNC(AddItem);
		["ACE_morphine", 20, "backpack"] call FUNC(AddItem);
		["ACE_atropine", 20, "backpack"] call FUNC(AddItem);
		["ACE_epinephrine", 20, "backpack"] call FUNC(AddItem);
		["ACE_quikclot", 20, "backpack"] call FUNC(AddItem);
		["ACE_surgicalKit", 2, "backpack"] call FUNC(AddItem);
		["ACE_bloodIV_250", 10, "backpack"] call FUNC(AddItem);
        ["ACE_bloodIV_500", 10, "backpack"] call FUNC(AddItem);
        ["ACE_bloodIV", 10, "backpack"] call FUNC(AddItem);
		["ACE_Splint", 10, "backpack"] call FUNC(AddItem);
		["ACE_adenosine", 10, "backpack"] call FUNC(AddItem);
		["ACE_tourniquet", 10, "backpack"] call FUNC(AddItem);
	

	["CUP_hgun_Deagle"] call FUNC(AddItem);
	["CUP_7Rnd_50AE_Deagle",3,"vest"] call FUNC(AddItem);
	
};



case (package + "MARKSMAN"): { //Rifleman


	
	uniform;
	IFAK;
	items;
	camelbak;
	
	["vn_l1a1_01_camo","vn_l1a1_02_camo"] call FUNC(AddItemRandom);
	["vn_l1a1_20_mag",11,"vest"] call FUNC(AddItem);
	
	["vn_o_3x_l1a1"] call FUNC(AddItem);

	
	["CUP_hgun_Deagle"] call FUNC(AddItem);
	["CUP_7Rnd_50AE_Deagle",3,"vest"] call FUNC(AddItem);
	
};