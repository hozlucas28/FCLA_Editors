
/********************************************************************************|
|                            LOADOUTS - PARACAIDISTAS                            |
|********************************************************************************/

_equipParachuteAction = [_this select 0, "<t size='1.2' color='#58D68D'>Equipar Paracaídas</t>", {
  if ((backpack _caller) == "") exitWith {
    _caller linkItem "ACE_Altimeter";
    _caller addbackpack "B_Advanced_Parachute";
  };

  if (!(["BOCR_Main"] call ACE_Common_fnc_isModLoaded)) exitWith {
    _line = ["Sistema", "Desequipate la mochila que llevas puesta."];
    [objNull, [_line], "System", 2, [false, false, "All", -1]] call FCLA_Common_fnc_showSubtitles;
  };

  [_caller] call BOCR_Main_fnc_actionOnChest;
  _caller linkItem "ACE_Altimeter";
  _caller addbackpack "B_Advanced_Parachute";
}, [false, false, false], true, "(backpack _this) != 'B_Advanced_Parachute'"] call FCLA_Common_fnc_createLoadout;


_unequipParachuteAction = [_this select 0, "<t size='1.2' color='#D65858'>Desequipar Paracaídas</t>", {
  removeBackpack _caller;
  _caller linkItem "Itemwatch";

  if (!(["BOCR_Main"] call ACE_Common_fnc_isModLoaded)) exitWith {};
  if (([_caller] call BOCR_main_fnc_chestPack) == "") exitWith {};
  [_caller] call BOCR_Main_fnc_actionOnBack;
}, [false, false, false], true, "(backpack _this) == 'B_Advanced_Parachute'"] call FCLA_Common_fnc_createLoadout;


_sergeantAction = [_this select 0, "<t size='1.5' color='#fbd40b'>Sargento</t>", {
  removeAllWeapons _caller;
  removeAllItems _caller;
  removeAllAssignedItems _caller;
  removeUniform _caller;
  removeVest _caller;
  removeBackpack _caller;
  removeHeadgear _caller;
  removeGoggles _caller;
  _caller addWeapon "col_tavor";
  _caller addPrimaryWeaponItem "acc_pointer_IR";
  _caller addPrimaryWeaponItem "optic_Hamr";
  _caller addPrimaryWeaponItem "30Rnd_556x45_Stanag";
  _caller addWeapon "hgun_Pistol_heavy_01_F";
  _caller addHandgunItem "optic_MRD";
  _caller addHandgunItem "11Rnd_45ACP_Mag";
  _caller forceAddUniform "bm4jun";
  _caller addVest "Cha_BM4_A_V_L";
  _caller addWeapon "Binocular";
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_epinephrine";};
  for "_i" from 1 to 3 do {_caller addItemToUniform "ACE_splint";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_morphine";};
  _caller addItemToUniform "ACE_salineIV_500";
  _caller addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 3 do {_caller addItemToUniform "ACE_tourniquet";};
  for "_i" from 1 to 7 do {_caller addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 7 do {_caller addItemToUniform "ACE_packingBandage";};
  _caller addItemToUniform "kat_Pulseoximeter";
  for "_i" from 1 to 2 do {_caller addItemToVest "11Rnd_45ACP_Mag";};
  for "_i" from 1 to 6 do {_caller addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
  for "_i" from 1 to 2 do {_caller addItemToVest "HandGrenade";};
  _caller addItemToVest "Chemlight_green";
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellBlue";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellRed";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellGreen";};
  for "_i" from 1 to 3 do {_caller addItemToVest "SmokeShell";};
  _caller addHeadgear "colombia_col_casco_lwh_e";
  _caller addGoggles "shemag_tacticalglass";
  _caller linkItem "ItemMap";
  _caller linkItem "ItemCompass";
  _caller linkItem "ItemWatch";
  _caller linkItem "tf_anprc152_1";
  _caller linkItem "ItemGPS";
}, [true, true, true], true, "true"] call FCLA_Common_fnc_createLoadout;


_secondAction = [_this select 0, "<t size='1.5' color='#fbd40b'>Segundo</t>", {
  removeAllWeapons _caller;
  removeAllItems _caller;
  removeAllAssignedItems _caller;
  removeUniform _caller;
  removeVest _caller;
  removeBackpack _caller;
  removeHeadgear _caller;
  removeGoggles _caller;
  _caller addWeapon "col_tavor";
  _caller addPrimaryWeaponItem "acc_pointer_IR";
  _caller addPrimaryWeaponItem "optic_Hamr";
  _caller addPrimaryWeaponItem "30Rnd_556x45_Stanag";
  _caller addWeapon "hgun_Pistol_heavy_01_F";
  _caller addHandgunItem "optic_MRD";
  _caller addHandgunItem "11Rnd_45ACP_Mag";
  _caller forceAddUniform "bm4jun";
  _caller addVest "Cha_BM4_A_V_L";
  _caller addWeapon "Binocular";
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_epinephrine";};
  for "_i" from 1 to 3 do {_caller addItemToUniform "ACE_splint";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_morphine";};
  _caller addItemToUniform "ACE_salineIV_500";
  _caller addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 3 do {_caller addItemToUniform "ACE_tourniquet";};
  for "_i" from 1 to 7 do {_caller addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 7 do {_caller addItemToUniform "ACE_packingBandage";};
  _caller addItemToUniform "kat_Pulseoximeter";
  for "_i" from 1 to 2 do {_caller addItemToVest "11Rnd_45ACP_Mag";};
  for "_i" from 1 to 6 do {_caller addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
  for "_i" from 1 to 2 do {_caller addItemToVest "HandGrenade";};
  _caller addItemToVest "Chemlight_green";
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellBlue";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellRed";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellGreen";};
  for "_i" from 1 to 3 do {_caller addItemToVest "SmokeShell";};
  _caller addHeadgear "colombia_col_casco_lwh_e";
  _caller addGoggles "shemag_tacticalglass";
  _caller linkItem "ItemMap";
  _caller linkItem "ItemCompass";
  _caller linkItem "ItemWatch";
  _caller linkItem "tf_anprc152_1";
  _caller linkItem "ItemGPS";
}, [true, true, true], true, "true"] call FCLA_Common_fnc_createLoadout;


_riflemanAction = [_this select 0, "<t size='1.5' color='#ffff00'>Fusilero</t>", {
  removeAllWeapons _caller;
  removeAllItems _caller;
  removeAllAssignedItems _caller;
  removeUniform _caller;
  removeVest _caller;
  removeBackpack _caller;
  removeHeadgear _caller;
  removeGoggles _caller;
  _caller addWeapon "col_tavor";
  _caller addPrimaryWeaponItem "acc_pointer_IR";
  _caller addPrimaryWeaponItem "optic_Hamr";
  _caller addPrimaryWeaponItem "30Rnd_556x45_Stanag";
  _caller forceAddUniform "bm4jun";
  _caller addVest "Cha_BM4_A_V_L";
  _caller addWeapon "Binocular";
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_epinephrine";};
  for "_i" from 1 to 3 do {_caller addItemToUniform "ACE_splint";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_morphine";};
  _caller addItemToUniform "ACE_EntrenchingTool";
  _caller addItemToUniform "ACE_salineIV_500";
  _caller addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 3 do {_caller addItemToUniform "ACE_tourniquet";};
  for "_i" from 1 to 7 do {_caller addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 7 do {_caller addItemToUniform "ACE_packingBandage";};
  _caller addItemToUniform "kat_Pulseoximeter";
  for "_i" from 1 to 6 do {_caller addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
  for "_i" from 1 to 2 do {_caller addItemToVest "HandGrenade";};
  _caller addItemToVest "Chemlight_green";
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellBlue";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellRed";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellGreen";};
  for "_i" from 1 to 3 do {_caller addItemToVest "SmokeShell";};
  _caller addHeadgear "colombia_col_casco_lwh_e";
  _caller addGoggles "shemag_tacticalglass";
  _caller linkItem "ItemMap";
  _caller linkItem "ItemCompass";
  _caller linkItem "ItemWatch";
  _caller linkItem "tf_anprc152_1";
}, [false, false, false], true, "true"] call FCLA_Common_fnc_createLoadout;


_ATRiflemanAction = [_this select 0, "<t size='1.5' color='#00ff00'>Fusilero AT</t>", {
  removeAllWeapons _caller;
  removeAllItems _caller;
  removeAllAssignedItems _caller;
  removeUniform _caller;
  removeVest _caller;
  removeBackpack _caller;
  removeHeadgear _caller;
  removeGoggles _caller;
  _caller addWeapon "col_tavor";
  _caller addPrimaryWeaponItem "acc_pointer_IR";
  _caller addPrimaryWeaponItem "optic_Hamr";
  _caller addPrimaryWeaponItem "30Rnd_556x45_Stanag";
  _caller addWeapon "rhs_weap_maaws";
  _caller addSecondaryWeaponItem "rhs_optic_maaws";
  _caller addSecondaryWeaponItem "rhs_mag_maaws_HEAT";
  _caller forceAddUniform "bm4jun";
  _caller addVest "Cha_BM4_A_V_L";
  _caller addBackpack "col_Alice_bag";
  _caller addWeapon "Binocular";
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_epinephrine";};
  for "_i" from 1 to 3 do {_caller addItemToUniform "ACE_splint";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_morphine";};
  _caller addItemToUniform "ACE_salineIV_500";
  _caller addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 3 do {_caller addItemToUniform "ACE_tourniquet";};
  for "_i" from 1 to 7 do {_caller addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 7 do {_caller addItemToUniform "ACE_packingBandage";};
  _caller addItemToUniform "kat_Pulseoximeter";
  _caller addItemToVest "Chemlight_green";
  for "_i" from 1 to 2 do {_caller addItemToVest "HandGrenade";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellBlue";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellRed";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellGreen";};
  for "_i" from 1 to 3 do {_caller addItemToVest "SmokeShell";};
  for "_i" from 1 to 6 do {_caller addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
  for "_i" from 1 to 2 do {_caller addItemToBackpack "MRAWS_HEAT_F";};
  _caller addItemToBackpack "MRAWS_HE_F";
  _caller addHeadgear "colombia_col_casco_lwh_e";
  _caller addGoggles "shemag_head_2";
  _caller linkItem "ItemMap";
  _caller linkItem "ItemCompass";
  _caller linkItem "ItemWatch";
  _caller linkItem "tf_anprc152_1";
  _caller linkItem "ItemGPS";
}, [false, false, false], true, "true"] call FCLA_Common_fnc_createLoadout;


_MachineGunnerAction = [_this select 0, "<t size='1.5' color='#00ff00'>Ametrallador</t>", {
  removeAllWeapons _caller;
  removeAllItems _caller;
  removeAllAssignedItems _caller;
  removeUniform _caller;
  removeVest _caller;
  removeBackpack _caller;
  removeHeadgear _caller;
  removeGoggles _caller;
  _caller addWeapon "col_negev";
  _caller addPrimaryWeaponItem "acc_pointer_IR";
  _caller addPrimaryWeaponItem "ACE_optic_Hamr_2D";
  _caller addPrimaryWeaponItem "150Rnd_762x54_Box";
  _caller forceAddUniform "bm4jun";
  _caller addVest "Cha_BM4_A_V_L";
  _caller addBackpack "col_Alice_bag";
  _caller addWeapon "Binocular";
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_epinephrine";};
  for "_i" from 1 to 3 do {_caller addItemToUniform "ACE_splint";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_morphine";};
  _caller addItemToUniform "ACE_salineIV_500";
  _caller addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 3 do {_caller addItemToUniform "ACE_tourniquet";};
  for "_i" from 1 to 7 do {_caller addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 7 do {_caller addItemToUniform "ACE_packingBandage";};
  _caller addItemToUniform "kat_Pulseoximeter";
  for "_i" from 1 to 2 do {_caller addItemToVest "150Rnd_762x54_Box_Tracer";};
  _caller addItemToVest "Chemlight_green";
  for "_i" from 1 to 2 do {_caller addItemToVest "HandGrenade";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellBlue";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellRed";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellGreen";};
  for "_i" from 1 to 3 do {_caller addItemToVest "SmokeShell";};
  for "_i" from 1 to 5 do {_caller addItemToBackpack "150Rnd_762x54_Box_Tracer";};
  _caller addHeadgear "colombia_col_casco_lwh_e";
  _caller addGoggles "shemag_tacticalglass";
  _caller linkItem "ItemMap";
  _caller linkItem "ItemCompass";
  _caller linkItem "ItemWatch";
  _caller linkItem "tf_anprc152_1";
  _caller linkItem "ItemGPS";
}, [false, false, false], true, "true"] call FCLA_Common_fnc_createLoadout;


_grenadierRiflemanAction = [_this select 0, "<t size='1.5' color='#ffff00'>Fusilero Granadero</t>", {
  removeAllWeapons _caller;
  removeAllItems _caller;
  removeAllAssignedItems _caller;
  removeUniform _caller;
  removeVest _caller;
  removeBackpack _caller;
  removeHeadgear _caller;
  removeGoggles _caller;
  _caller addWeapon "rhs_weap_m4_carryhandle_m203";
  _caller addPrimaryWeaponItem "optic_Hamr";
  _caller addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";
  _caller forceAddUniform "bm4jun";
  _caller addVest "Cha_BM4_A_V_L";
  _caller addBackpack "col_Alice_bag";
  _caller addWeapon "Binocular";
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_epinephrine";};
  for "_i" from 1 to 3 do {_caller addItemToUniform "ACE_splint";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_morphine";};
  _caller addItemToUniform "ACE_salineIV_500";
  _caller addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 3 do {_caller addItemToUniform "ACE_tourniquet";};
  for "_i" from 1 to 7 do {_caller addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 7 do {_caller addItemToUniform "ACE_packingBandage";};
  _caller addItemToUniform "kat_Pulseoximeter";
  _caller addItemToVest "ACE_HuntIR_monitor";
  _caller addItemToVest "ACE_EntrenchingTool";
  for "_i" from 1 to 6 do {_caller addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
  for "_i" from 1 to 2 do {_caller addItemToVest "HandGrenade";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellBlue";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellRed";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellGreen";};
  for "_i" from 1 to 3 do {_caller addItemToVest "SmokeShell";};
  _caller addItemToVest "Chemlight_green";
  for "_i" from 1 to 2 do {_caller addItemToBackpack "HandGrenade";};
  for "_i" from 1 to 2 do {_caller addItemToBackpack "SmokeShellBlue";};
  for "_i" from 1 to 2 do {_caller addItemToBackpack "SmokeShellRed";};
  for "_i" from 1 to 2 do {_caller addItemToBackpack "SmokeShellGreen";};
  for "_i" from 1 to 3 do {_caller addItemToBackpack "SmokeShell";};
  for "_i" from 1 to 7 do {_caller addItemToBackpack "1Rnd_HE_Grenade_shell";};
  for "_i" from 1 to 5 do {_caller addItemToBackpack "1Rnd_Smoke_Grenade_shell";};
  for "_i" from 1 to 5 do {_caller addItemToBackpack "1Rnd_SmokeRed_Grenade_shell";};
  for "_i" from 1 to 5 do {_caller addItemToBackpack "1Rnd_SmokeGreen_Grenade_shell";};
  for "_i" from 1 to 4 do {_caller addItemToBackpack "ACE_HuntIR_M203";};
  for "_i" from 1 to 3 do {_caller addItemToBackpack "1Rnd_SmokeBlue_Grenade_shell";};
  for "_i" from 1 to 5 do {_caller addItemToBackpack "ACE_40mm_Flare_white";};
  for "_i" from 1 to 4 do {_caller addItemToBackpack "ACE_40mm_Flare_red";};
  for "_i" from 1 to 4 do {_caller addItemToBackpack "ACE_40mm_Flare_green";};
  for "_i" from 1 to 5 do {_caller addItemToBackpack "rhs_mag_M433_HEDP";};
  _caller addHeadgear "BR_M88_N";
  _caller addGoggles "shemag_tacticalglass";
  _caller linkItem "ItemMap";
  _caller linkItem "ItemCompass";
  _caller linkItem "ItemWatch";
  _caller linkItem "tf_anprc152_1";
  _caller linkItem "ItemGPS";
}, [false, false, false], true, "true"] call FCLA_Common_fnc_createLoadout;


_paramedicAction = [_this select 0, "<t size='1.5' color='#ff0000'>Paramédico</t>", {
  // === EQUIPAMIENTO DEL PARAMÉDICO === //
}, [true, false, false], true, "true"] call FCLA_Common_fnc_createLoadout;


_combatMedicAction = [_this select 0, "<t size='1.5' color='#ff0000'>Médico de Combate</t>", {
  // === EQUIPAMIENTO DEL MÉDICO DE COMBATE === //
}, [true, false, false], true, "true"] call FCLA_Common_fnc_createLoadout;


_SelectiveShooter = [_this select 0, "<t size='1.5' color='#00ccff'>Tirador Selecto</t>", {
  removeAllWeapons _caller;
  removeAllItems _caller;
  removeAllAssignedItems _caller;
  removeUniform _caller;
  removeVest _caller;
  removeBackpack _caller;
  removeHeadgear _caller;
  removeGoggles _caller;
  _caller addWeapon "rhs_weap_m14_rail_wd";
  _caller addPrimaryWeaponItem "ACE_optic_SOS_PIP";
  _caller addPrimaryWeaponItem "rhsusf_20Rnd_762x51_m80_Mag";
  _caller addPrimaryWeaponItem "rhsusf_acc_m14_bipod";
  _caller forceAddUniform "bm4jun";
  _caller addVest "Cha_BM4_A_V_L";
  _caller addBackpack "col_Alice_bag";
  _caller addWeapon "Binocular";
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_epinephrine";};
  for "_i" from 1 to 3 do {_caller addItemToUniform "ACE_splint";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_morphine";};
  _caller addItemToUniform "ACE_salineIV_500";
  _caller addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 7 do {_caller addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 3 do {_caller addItemToUniform "ACE_tourniquet";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 7 do {_caller addItemToUniform "ACE_packingBandage";};
  _caller addItemToUniform "kat_Pulseoximeter";
  for "_i" from 1 to 6 do {_caller addItemToVest "rhsusf_20Rnd_762x51_m62_Mag";};
  for "_i" from 1 to 2 do {_caller addItemToVest "HandGrenade";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellBlue";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellRed";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellGreen";};
  for "_i" from 1 to 3 do {_caller addItemToVest "SmokeShell";};
  _caller addItemToVest "Chemlight_green";
  for "_i" from 1 to 4 do {_caller addItemToBackpack "rhsusf_20Rnd_762x51_m62_Mag";};
  for "_i" from 1 to 2 do {_caller addItemToBackpack "SmokeShellBlue";};
  for "_i" from 1 to 2 do {_caller addItemToBackpack "SmokeShellRed";};
  for "_i" from 1 to 2 do {_caller addItemToBackpack "SmokeShellGreen";};
  for "_i" from 1 to 3 do {_caller addItemToBackpack "SmokeShell";};
  _caller addItemToBackpack "HandGrenade";
  _caller addHeadgear "colombia_col_casco_lwh_e";
  _caller addGoggles "col_scarf2";
  _caller linkItem "ItemMap";
  _caller linkItem "ItemCompass";
  _caller linkItem "ItemWatch";
  _caller linkItem "tf_anprc152_1";
  _caller linkItem "ItemGPS";
}, [false, false, false], true, "true"] call FCLA_Common_fnc_createLoadout;


_VANTOperatorAction = [_this select 0, "<t size='1.5' color='#00ccff'>Operador VANT</t>", {
  // === EQUIPAMIENTO DEL OPERADOR VANT === //
}, [false, true, false], true, "true"] call FCLA_Common_fnc_createLoadout;


_radioOperatorAction = [_this select 0, "<t size='1.5' color='#00ccff'>Operador de Radio</t>", {
  removeAllWeapons _caller;
  removeAllItems _caller;
  removeAllAssignedItems _caller;
  removeUniform _caller;
  removeVest _caller;
  removeBackpack _caller;
  removeHeadgear _caller;
  removeGoggles _caller;
  _caller addWeapon "rhs_weap_m14_rail_wd";
  _caller addPrimaryWeaponItem "ACE_optic_SOS_PIP";
  _caller addPrimaryWeaponItem "rhsusf_20Rnd_762x51_m80_Mag";
  _caller addPrimaryWeaponItem "rhsusf_acc_m14_bipod";
  _caller forceAddUniform "bm4jun";
  _caller addVest "Cha_BM4_A_V_L";
  _caller addBackpack "col_Alice_bag";
  _caller addWeapon "Binocular";
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_epinephrine";};
  for "_i" from 1 to 3 do {_caller addItemToUniform "ACE_splint";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_morphine";};
  _caller addItemToUniform "ACE_salineIV_500";
  _caller addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 7 do {_caller addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 3 do {_caller addItemToUniform "ACE_tourniquet";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 7 do {_caller addItemToUniform "ACE_packingBandage";};
  _caller addItemToUniform "kat_Pulseoximeter";
  for "_i" from 1 to 6 do {_caller addItemToVest "rhsusf_20Rnd_762x51_m62_Mag";};
  for "_i" from 1 to 2 do {_caller addItemToVest "HandGrenade";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellBlue";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellRed";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellGreen";};
  for "_i" from 1 to 3 do {_caller addItemToVest "SmokeShell";};
  _caller addItemToVest "Chemlight_green";
  for "_i" from 1 to 4 do {_caller addItemToBackpack "rhsusf_20Rnd_762x51_m62_Mag";};
  for "_i" from 1 to 2 do {_caller addItemToBackpack "SmokeShellBlue";};
  for "_i" from 1 to 2 do {_caller addItemToBackpack "SmokeShellRed";};
  for "_i" from 1 to 2 do {_caller addItemToBackpack "SmokeShellGreen";};
  for "_i" from 1 to 3 do {_caller addItemToBackpack "SmokeShell";};
  _caller addItemToBackpack "HandGrenade";
  _caller addHeadgear "colombia_col_casco_lwh_e";
  _caller addGoggles "col_scarf2";
  _caller linkItem "ItemMap";
  _caller linkItem "ItemCompass";
  _caller linkItem "ItemWatch";
  _caller linkItem "tf_anprc152_1";
  _caller linkItem "ItemGPS";
}, [false, false, false], true, "true"] call FCLA_Common_fnc_createLoadout;

_AntiexplosivesAction = [_this select 0, "<t size='1.5' color='#00ccff'>Antiexplosivos</t>", {
  removeAllWeapons _caller;
  removeAllItems _caller;
  removeAllAssignedItems _caller;
  removeUniform _caller;
  removeVest _caller;
  removeBackpack _caller;
  removeHeadgear _caller;
  removeGoggles _caller;
  _caller addWeapon "col_galil_ace23";
  _caller addPrimaryWeaponItem "optic_Hamr";
  _caller addPrimaryWeaponItem "col_galil_35rnd_Mk318_SOST_mag";
  _caller addWeapon "ACE_VMH3";
  _caller forceAddUniform "bm4jun";
  _caller addVest "V_PlateCarrierIAGL_dgtl";
  _caller addWeapon "Binocular";
  for "_i" from 1 to 3 do {_caller addItemToUniform "ACE_splint";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_epinephrine";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_morphine";};
  _caller addItemToUniform "ACE_salineIV_500";
  _caller addItemToUniform "ACE_EarPlugs";
  for "_i" from 1 to 3 do {_caller addItemToUniform "ACE_tourniquet";};
  for "_i" from 1 to 7 do {_caller addItemToUniform "ACE_fieldDressing";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_elasticBandage";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 6 do {_caller addItemToUniform "ACE_packingBandage";};
  _caller addItemToUniform "kat_Pulseoximeter";
  for "_i" from 1 to 6 do {_caller addItemToVest "col_galil_35rnd_M196_Tracer_Red_mag";};
  _caller addItemToVest "Chemlight_green";
  for "_i" from 1 to 2 do {_caller addItemToVest "HandGrenade";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellBlue";};
  _caller addItemToVest "SmokeShellRed";
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellGreen";};
  for "_i" from 1 to 3 do {_caller addItemToVest "SmokeShell";};
  _caller addHeadgear "BR_M88_N";
  _caller addGoggles "shemag_tacticalglass";
  _caller linkItem "ItemMap";
  _caller linkItem "ItemCompass";
  _caller linkItem "ItemWatch";
  _caller linkItem "tf_anprc152_1";
}, [false, true, false], true, "true"] call FCLA_Common_fnc_createLoadout;

/* -------------------------- IMAGENES OPCIONALES -------------------------- */

(_this select 0) setUserActionText [_secondAction, "<t size='1.5' color='#fbd40b'>Segundo</t>", "<t size='1.5' color='#fbd40b'>Segundo</t><br/><img size='3' image='\FCLA_Interactions\Insignias\data\CDM.paa'/>"];
(_this select 0) setUserActionText [_riflemanAction, "<t size='1.5' color='#ffff00'>Fusilero</t>", "<t size='1.5' color='#ffff00'>Fusilero</t><br/><img size='4' image='\FCLA_Interactions\Insignias\data\CBI.paa'/>"];
(_this select 0) setUserActionText [_sergeantAction, "<t size='1.5' color='#fbd40b'>Sargento</t>", "<t size='1.5' color='#fbd40b'>Sargento</t><br/><img size='3' image='\FCLA_Interactions\Insignias\data\CDM.paa'/>"];
(_this select 0) setUserActionText [_paramedicAction, "<t size='1.5' color='#ff0000'>Paramédico</t>", "<t size='1.5' color='#ff0000'>Paramédico</t><br/><img size='4' image='\FCLA_Interactions\Insignias\data\CPM.paa'/>"];
(_this select 0) setUserActionText [_ATRiflemanAction, "<t size='1.5' color='#00ff00'>Fusilero AT</t>", "<t size='1.5' color='#00ff00'>Fusilero AT</t><br/><img size='4' image='\FCLA_Interactions\Insignias\data\CFA.paa'/>"];
(_this select 0) setUserActionText [_MachineGunnerAction, "<t size='1.5' color='#00ff00'>Ametrallador</t>", "<t size='1.5' color='#00ff00'>Ametrallador</t><br/><img size='4' image='\FCLA_Interactions\Insignias\data\CAL.paa'/>"];
(_this select 0) setUserActionText [_SelectiveShooter, "<t size='1.5' color='#00ccff'>Tirador Selecto</t>", "<t size='1.5' color='#00ccff'>Tirador Selecto</t><br/><br/><img size='3' image='\FCLA_Interactions\Insignias\data\CTS.paa'/>"];
(_this select 0) setUserActionText [_VANTOperatorAction, "<t size='1.5' color='#00ccff'>Operador VANT</t>", "<t size='1.5' color='#00ccff'>Operador VANT</t><br/><br/><img size='3' image='\FCLA_Interactions\Insignias\data\OPVNT.paa'/>"];
(_this select 0) setUserActionText [_combatMedicAction, "<t size='1.5' color='#ff0000'>Médico de Combate</t>", "<t size='1.5' color='#ff0000'>Médico de Combate</t><br/><img size='4' image='\FCLA_Interactions\Insignias\data\CMC.paa'/>"];
(_this select 0) setUserActionText [_equipParachuteAction, "<t size='1.2' color='#58D68D'>Equipar Paracaídas</t>", "<t size='1.2' color='#58D68D'>Equipar Paracaídas</t><br/><img size='2' image='a3\ui_f\data\IGUI\Cfg\Actions\take_ca.paa'/>"];
(_this select 0) setUserActionText [_radioOperatorAction, "<t size='1.5' color='#00ccff'>Operador de Radio</t>", "<t size='1.5' color='#00ccff'>Operador de Radio</t><br/><br/><img size='3' image='\FCLA_Interactions\Insignias\data\COR.paa'/>"];
(_this select 0) setUserActionText [_grenadierRiflemanAction, "<t size='1.5' color='#ffff00'>Fusilero Granadero</t>", "<t size='1.5' color='#ffff00'>Fusilero Granadero</t><br/><img size='4' image='\FCLA_Interactions\Insignias\data\CFG.paa'/>"];
(_this select 0) setUserActionText [_unequipParachuteAction, "<t size='1.2' color='#D65858'>Desequipar Paracaídas</t>", "<t size='1.2' color='#D65858'>Desequipar Paracaídas</t><br/><img size='2' image='a3\ui_f\data\IGUI\Cfg\Actions\take_ca.paa'/>"];
(_this select 0) setUserActionText [_AntiexplosivesAction, "<t size='1.5' color='#ffff00'>Antiexplosivos</t>", "<t size='1.5' color='#ffff00'>Antiexplosivos</t><br/><img size='4' image='\FCLA_Interactions\Insignias\data\CEE.paa'/>"];
