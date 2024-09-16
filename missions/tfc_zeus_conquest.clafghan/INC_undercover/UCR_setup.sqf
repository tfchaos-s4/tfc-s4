/*

Setup options for INC_undercover undercover / civilian recruitment script by Incontinentia.

Please check each setting carefully otherwise the script may not function properly in your scenario. All classnames must have quotation marks ("Item_Random_F")

*/

//-------------------------Player settings-------------------------

_undercoverUnitSide = west;             //What side is/are the undercover unit(s) on? (Can be east, west or independent - only one side supported)

//-------------------------General Settings-------------------------

_debug = false;                         //Set to true for debug
_fullAIfunctionality = true;            //Enable all checks on AI (may degrade performace very slightly for large groups, 15+)
_easyMode = true;                       //Disguise checks will also reveal if the player's disguise is working or not

_racism = false;                         //Enemies will notice if you aren't the race of the faction you're pretending to be (making you easier to detect if nothing is covering your face)
_racProfFacCiv = 1;                     //(Number) Multiplies the effect of racial profiling. Lower this number to simulate more multicultural civilian population
_racProfFacEny = 1;                     //(Number) Multiplies the effect of racial profiling. Lower this number to simulate more multicultural enemy forces

_regEnySide = sideEmpty;                     //Units of this side will be classed as regular enemies and will share information about detected units across entire map (Side: can be east, west, independent) - if you don't need this, use sideEmpty.
_regBarbaric = false;                   //(Bool - true or false) Will this side lash out on civilians if it takes casualties and doesn't know the attacker?
_regDetectRadius = 10;                  //Default detection radius for regular troops (this will expand and contract based on weather, time of day, and how the undercover unit is acting - civilians within this radius will be under much more scrutinty)

_asymEnySide = east;               //Units of this side will be classed as asymetric enemies (Side: can be east, west, independent) - if you don't need this, use sideEmpty.
_asymBarbaric = true;                   //(Bool - true or false) Will this side have a small chance of lashing out on civilians if it takes casualties and doesn't know the attacker?
_asymDetectRadius = 10;                 //Default detection radius for asym troops (this will expand and contract based on weather, time of day, and how the undercover unit is acting - civilians within this radius will be under much more scrutinty)

_globalSuspicionModifier = 1;           //Scales the level of suspicion of enemies. 1 is default, 2 means units are twice as likely to see through undercover unit's disguises, 0.5 means half as likely etc.

//-------------------------Civilian Disguise settings-------------------------

_civFactions = ["C_TA"]; //Array of factions whose vests are safe for undercover units to wear

//(Array of classnames) Safe vests (on top of the specific factions above - useful if faction has randomisation script or to add items that are not used by the faction)
_civilianVests = ["vss_01_BLK","vss_01_BF","vss_01_M81","vss_01_MC","vss_01_MCA","vss_01_MCTP","vss_01_RG","vss_01_WG","vss_02_BLK","vss_02_BF","vss_02_M8","vss_02_MC","vss_02_MCA","vss_02_MCTP","vss_02_RG","vss_02_WG","vss_03_BLK","vss_03_BF","vss_03_M81","vss_03_MC","vss_03_MCA","vss_03_MCTP","vss_03_RG","vss_03_WG","vss_04_BLK","vss_04_BF","vss_04_M81","vss_04_MC","vss_04_MCA","vss_04_MCTP","vss_04_RG","vss_04_WG","vss_05_BLK","vss_05_BF","vss_05_M81","vss_05_MC","vss_05_MCA","vss_05_MCTP","vss_05_RG","vss_05_WG","vss_06_BLK","vss_06_BF","vss_06_M81","vss_06_MC","vss_06_MCA","vss_06_MCTP","vss_06_RG","vss_06_WG","flb_BattleBelt_556_AOR1_Alpha","flb_BattleBelt_556_AOR1_Bravo""flb_BattleBelt_556_AOR1_Charlie","flb_BattleBelt_556_AOR1_Delta","flb_BattleBelt_556_coy_Alpha","flb_BattleBelt_556_coy_Bravo""flb_BattleBelt_556_coy_Charlie","flb_BattleBelt_556_coy_Delta","flb_BattleBelt_556_MC_Alpha","flb_BattleBelt_556_MC_Bravo""flb_BattleBelt_556_MC_Charlie","flb_BattleBelt_556_MC_Delta","flb_BattleBelt_556_Pixel","V_Chestrig_khk","V_Chestrig_blk","V_Chestrig_rgr","V_Chestrig_oli","V_Rangemaster_belt","V_RebreatherB"];

//(Array of classnames) Safe uniforms (on top of the specific factions above - useful if faction has randomisation script or to add items that are not used by the faction)
_civilianUniforms = ["U_BG_Guerilla2_2","U_BG_Guerilla2_1","U_BG_Guerilla2_3","U_I_C_Soldier_Bandit_4_F","U_I_C_Soldier_Bandit_1_F","U_I_C_Soldier_Bandit_2_F","U_I_C_Soldier_Bandit_5_F","U_I_C_Soldier_Bandit_3_F","ButtonUp_Jeans_WHITE_uniform","ButtonUp_Jeans_RED_uniform","ButtonUp_Jeans_BLUE_uniform","ButtonUp_Jeans_BLACK_uniform","ButtonUp_Cargo_OD_WHITE_uniform","ButtonUp_Cargo_OD_RED_uniform","ButtonUp_Cargo_OD_BLUE_uniform","ButtonUp_Cargo_OD_BLACK_uniform","ButtonUp_Cargo_KHK_WHITE_uniform","ButtonUp_Cargo_KHK_RED_uniform","ButtonUp_Cargo_KHK_BLUE_uniform","ButtonUp_Cargo_KHK_BLACK_uniform","ButtonUp_Cargo_BLK_WHITE_uniform","ButtonUp_Cargo_BLK_RED_uniform","ButtonUp_Cargo_BLK_BLUE_uniform","ButtonUp_Cargo_BLK_BLACK_uniform","cargob_black_uniform","cargob_green_uniform","cargob_blue_uniform","cargob_grey_uniform","cargob_tan_uniform","cargob_red_uniform","cargo_tan_uniform","cargo_black_uniform","cargo_green_uniform","cargo_blue_uniform","cargo_grey_uniform","cargo_tan_uniform","cargo_red_uniform","coverall_uniform","coverall_tan_uniform","coverall_tan_2_uniform","hoodie_uniform","hoodie_red_uniform","hoodie_brown_uniform","hoodie_white_uniform","jeans_red_uniform","jeans_green_uniform","jeans_white_uniform","jeans_blue_uniform","jeans_black_uniform","jeans_stripe1_uniform","jeans_stripe2_uniform","LOP_U_TAK_Civ_Fatigue_01","LOP_U_TAK_Civ_Fatigue_02","LOP_U_TAK_Civ_Fatigue_03","LOP_U_TAK_Civ_Fatigue_04","LOP_U_TAK_Civ_Fatigue_05","LOP_U_TAK_Civ_Fatigue_06","LOP_U_TAK_Civ_Fatigue_07","LOP_U_TAK_Civ_Fatigue_08","LOP_U_TAK_Civ_Fatigue_09","LOP_U_TAK_Civ_Fatigue_10","LOP_U_TAK_Civ_Fatigue_11","LOP_U_TAK_Civ_Fatigue_12","LOP_U_TAK_Civ_Fatigue_13","LOP_U_TAK_Civ_Fatigue_14","LOP_U_TAK_Civ_Fatigue_15","LOP_U_TAK_Civ_Fatigue_16","LOP_U_CHR_Civ_Fatigue_01","LOP_U_CHR_Civ_Fatigue_02","LOP_U_CHR_Civ_Fatigue_03","LOP_U_CHR_Civ_Fatigue_04","LOP_U_CHR_Civ_Fatigue_05","LOP_U_CHR_Civ_Fatigue_06","LOP_U_CHR_Civ_Fatigue_07","LOP_U_AFR_Civ_Fatigue_01","LOP_U_AFR_Civ_Fatigue_02","LOP_U_AFR_Civ_Fatigue_03","LOP_U_AFR_Civ_Fatigue_04","LOP_U_AFR_Civ_Fatigue_05","LOP_U_AFR_Civ_Fatigue_06","tshirt_Jeans_GOONS_uniform","tshirt_Jeans_BLOODLINES_RED_uniform","tshirt_Jeans_MISFITS_uniform","tshirt_Jeans_SLAYER_uniform"];

//(Array of classnames) Safe headgear (will automatically include civilian headgear classes - useful if faction has randomisation script or to add items that are not used by the faction)
_civilianHeadgear =["Headgear_H_WirelessEarpiece_F","H_Booniehat_khk","Headgear_H_Shemag_olive","Headgear_H_Watchcap_khk","Headgear_H_Watchcap_cbr","Headgear_H_Watchcap_camo","Headgear_H_Watchcap_blk","Headgear_H_Cap_oli","VSM_Beanie_Black","Headgear_H_Cap_blu","Headgear_H_Cap_blk","Headgear_H_Cap_grn","Headgear_H_Cap_red","ST11_BballE_Blk","ST11_BballE_Brown","ST11_BballE_Blk","ST11_BballE_OD","ST11_BballE_Tan","ST11_Beanie","ST11_511_Bball_Mic_Blk","ST11_511_Bball_Mic_OD","ST11_511_Bball_Mic_Tan","ST11_511_Bball_Mic_ATACSFG","ST11_511_Bball_Mic_ATACS","ST11_511_Bball_Mic_Nomad","ST11_511_Bball_Blk","ST11_511_Bball__OD","ST11_511_Bball__Tan","ST11_511_Bball__ATACSFG","ST11_511_Bball__ATACS","ST11_511_Bball__Nomad","ST11_BballE_Brown_A","ST11_BballE_Blk_A","ST11_BballE_OD_A","ST11_BballE_Tan_A","FLB_baseballcap_back_NOPELTOR_blk","FLB_baseballcap_back_NOPELTOR_blk_ODA","FLB_baseballcap_back_NOPELTOR_dtgr","FLB_baseballcap_back_NOPELTOR_dtgr_ODA","FLB_baseballcap_back_NOPELTOR_khk","FLB_baseballcap_back_NOPELTOR_khk_ODA","FLB_baseballcap_back_NOPELTOR_m81","FLB_baseballcap_back_NOPELTOR_m81_ODA","FLB_baseballcap_back_NOPELTOR_mcm","FLB_baseballcap_back_NOPELTOR_mcm_ODA","FLB_baseballcap_back_NOPELTOR_realtree","FLB_baseballcap_back_NOPELTOR_realtree_ODA","FLB_baseballcap_back_NOPELTOR_rgr","FLB_baseballcap_back_NOPELTOR_rgr_ODA","FLB_baseballcap_back_NOPELTOR_tgr","FLB_baseballcap_back_NOPELTOR_tgr_ODA","LOP_H_Pakol","H_Cap_press","H_Cap_police","LOP_H_Turban","LOP_H_Turban_mask","LOP_H_Ushanka","LOP_H_Worker_cap""LOP_H_Villager_cap"];

//(Array of classnames) Safe backpacks (will automatically include civilian backpack classes - useful if faction has randomisation script or to add items that are not used by the faction)
_civilianBackpacks = ["B_Carryall_cbr","B_Carryall_khk","B_TacticalPack_blk","B_TacticalPack_rgr","B_TacticalPack_oli","B_Kitbag_cbr","B_Kitbag_rgr","B_Kitbag_sgg","B_Parachute","ACE_NonSteerableParachute","ACE_TacticalLadder_Pack","tfw_ilbe_whip_black","tfw_ilbe_whip_coy","tfw_ilbe_whip_gr","tfw_ilbe_dd_black","tfw_ilbe_dd_coy","tfw_ilbe_dd_gr","tfw_ilbe_blade_black","tfw_blade_whipe_coy","tfw_blade_whipe_gr","GOLD_Para_Pack","drybag_blk","drybag_od","Mountain","Mountain_OD","Mountain_TAN","Mountain_mct","PJ_Backpacks_004","Taloon","Taloon_OD","Taloon_TAN","Taloon_mct","flb_assaultpack_od","flb_assaultpack_BLK","flb_assaultpack_tan","B_Kitbag_rgr","B_Kitbag_cbr","B_Kitbag_sgg","B_Kitbag_tan","pook_spotternet_west11_Pack","pook_spotternet_west12_Pack","SOG_BAG_blk","SOG_BAG_blk","SOG_BAG_OD","SOG_BAG_tan"];

//(Array of classnames) Safe vehicles to drive in (automatically includes vehicles from the civilian factions above).
_civilianVehicleArray = ["C_TA_Hatchback_01","C_TA_Land_Rover_01","C_TA_Offroad_01","C_TA_UAZ_3135_01","C_TA_UAZ_3135_Open_01","C_TA_Ural_4320_Open_01","C_TA_Ural_4320_01","C_Offroad_01_F","C_Offroad_01_comms_F","C_Offroad_01_covered_F","C_Truck_02_transport_F","C_Truck_02_covered_F","C_Van_02_vehicle_F","C_Van_02_transport_F","C_Van_01_transport_F","C_Quadbike_01_F"];

_HMDallowed = false; //(Bool - true or false) Are HMDs (night vision goggles etc.) safe to wear for units pretending to be civilians? Set to false if wearing HMDs will cause suspicion (must be stored in backpack).

_noOffRoad = false; //Civilian vehicles driving at speed more than 50 meters from the nearest road will immediately be considered hostile (even if false, this will be seen as suspicious)


//-------------------------Enemy Disguise settings-------------------------
_incogFactions = ["LOP_AM_OPF"]; //Array of enemy factions whose items and vehicles will allow the player to impersonate the enemy

 //Names of additional markers for areas that would be considered trespassing (any with "INC_tre" - case sensitive - somewhere in the marker name will automatically be included)
_trespassMarkers = [];

//(Array of classnames) Safe vests (on top of the specific factions above - useful if faction has randomisation script or to add items that are not used by the faction)
_incognitoVests = ["Vest_V_Chestrig_oli","Vest_V_Chestrig_blk"];

//(Array of classnames) Safe headgear (will automatically include incog headgear classes - useful if faction has randomisation script or to add items that are not used by the faction)
_incognitoHeadgear = [];

//(Array of classnames) Safe backpacks (will automatically include incog backpack classes - useful if faction has randomisation script or to add items that are not used by the faction)
_incognitoBackpacks = [];

//(Array of classnames) Safe uniforms (on top of the specific factions above - useful if faction has randomisation script or to add items that are not used by the faction)
_incognitoUniforms = [];

_incogVehArray = []; //(Array of classnames) Additional incognito vehicles (vehicles from the faction above will automatically count, as will all _highSecVehicles)



//-------------------------High security zone settings-------------------------
/*
High security zones are areas that can only be entered with specific uniforms / items, even if the unit is disguised as an enemy.
For instance, it could be a radar installation or a marker in the vicinity of a high value target that only specially designated units are allowed near.
All high security zones are automatically considered non-civilian territory, but units dressed as enemies can enter without being instantly considered hostile, but they will attract a LOT more attention.
In these settings, you can .
*/

_highSecMarkers = []; 					//Names of additional markers for areas that are designated high security zones that require specific uniforms to enter without raising suspicion (any with "INC_highSec" - case sensitive - somewhere in the marker name will automatically be included)

_highSecInstantHostile = false;         // If true, units entering high security areas with the wrong uniform will be instantly deemed hostile by enemy forces. If false, it will be highly suspicious.

_highSecVehicles = [];                  // (Array of classnames) Vehicles that can enter high security areas without raising suspicion (uniforms will still be noticed according to how open the vehicle is)

_highSecurityUniforms = [];             // (Array of classnames) Uniforms that allow entry into high security areas (defined by high security markers)

_highSecItemCheck = true;               // Check for disallowed items that aren't in the permitted list? Each non-permitted item will incur a suspicion penality. Set to false if high security checks just include uniform only.

_highSecItems = [];                     // (Array of classnames) List of items such as vests, headgear, hats etc., that won't cause suspicion in high security areas (only works on foot for now)

_hsItChkOutside = true;                 // The high security item check will occur if wearing a high security uniform even in non-high security zones. Useful if the high security uniform is, for example, a businessman or scientist, who would look weird carrying a gun and helmet.

_hsMustBeUnarmed = true;               // Units carrying weapons will be considered hostile (requires _highSecItemCheck to be set to true).

_highSecItemCheckScalar = 1;            // Multiplies the level of suspicion caused by each suspect item when in a high security zone


//-------------------------Civilian recruitment settings-------------------------
/*
By enabling civilian recruitment, undercover can recruit any ambient civilians they see into their group (if their reputation allows / the civvy wants to join).
Civilians will operate under similar restrictions to the player.
You can also dismiss your new teammates and they will leave your group and carry on doing whatever it is they fancy doing (usually sitting cross-legged in the middle of a field).
*/

_civRecruitEnabled = false;          //(Bool - true or false) Set this to false to prevent undercover units from recruiting civilians
_armedCivPercentage = 0;           //(Number - 0 to 100) Max percentage of civilians armed with weapons from the array below, either on their person or in their backpacks (will only work if _civRecruitEnabled is set to true, otherwise this is ignored)

//Weapon classnames for armed civilians (array of classnames)
_civWpnArray = [];

//Items that civilians may carry
_civItemArray = [];

//Civilian backpack classes (array of classnames)
_civPackArray = [];
