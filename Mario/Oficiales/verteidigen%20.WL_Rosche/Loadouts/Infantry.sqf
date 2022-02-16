
/********************************************************************************|
|                             LOADOUTS - INFANTERÍA                              |
|********************************************************************************/

_sergeantAction = [_this select 0, "<t size='1.5' color='#fbd40b'>Sargento</t>", {
  removeAllWeapons _caller;
  removeAllItems _caller;
  removeAllAssignedItems _caller;
  removeUniform _caller;
  removeVest _caller;
  removeBackpack _caller;
  removeHeadgear _caller;
  removeGoggles _caller;

  _caller addWeapon "BWA3_G36A2";
  _caller addPrimaryWeaponItem "BWA3_acc_VarioRay_irlaser_black";
  _caller addPrimaryWeaponItem "BWA3_30Rnd_556x45_G36";
  _caller addWeapon "BWA3_P8";
  _caller addHandgunItem "BWA3_15Rnd_9x19_P8";

  _caller forceAddUniform "BWA3_Uniform2_sleeves_Fleck";
  _caller addVest "BWA3_Vest_Leader_Fleck";
  _caller addBackpack "BWA3_AssaultPack_Fleck";

  _caller addWeapon "BWA3_Vector";

  for "_i" from 1 to 6 do {_caller addItemToUniform "ACE_packingBandage";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_quikclot";};
  for "_i" from 1 to 5 do {_caller addItemToUniform "ACE_elasticBandage";};
  _caller addItemToUniform "ACE_EarPlugs";
  _caller addItemToUniform "ACE_MapTools";
  _caller addItemToUniform "kat_crossPanel";
  _caller addItemToUniform "ACE_fieldDressing";
  _caller addItemToUniform "ACE_morphine";
  _caller addItemToUniform "ACE_tourniquet";
  _caller addItemToUniform "BWA3_15Rnd_9x19_P8";
  for "_i" from 1 to 5 do {_caller addItemToVest "ACE_packingBandage";};
  for "_i" from 1 to 5 do {_caller addItemToVest "ACE_quikclot";};
  for "_i" from 1 to 5 do {_caller addItemToVest "ACE_elasticBandage";};
  for "_i" from 1 to 5 do {_caller addItemToVest "ACE_fieldDressing";};
  for "_i" from 1 to 3 do {_caller addItemToVest "ACE_CableTie";};
  _caller addItemToVest "ACE_EntrenchingTool";
  _caller addItemToVest "ACE_salineIV_500";
  for "_i" from 1 to 3 do {_caller addItemToVest "ACE_morphine";};
  _caller addItemToVest "ACE_Flashlight_XL50";
  for "_i" from 1 to 3 do {_caller addItemToVest "ACE_epinephrine";};
  _caller addItemToVest "ACE_microDAGR";
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellBlue";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellGreen";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShellRed";};
  for "_i" from 1 to 2 do {_caller addItemToVest "SmokeShell";};
  for "_i" from 1 to 3 do {_caller addItemToVest "BWA3_30Rnd_556x45_G36";};
  for "_i" from 1 to 3 do {_caller addItemToVest "BWA3_30Rnd_556x45_G36_Tracer";};
  for "_i" from 1 to 5 do {_caller addItemToBackpack "ACE_splint";};
  for "_i" from 1 to 3 do {_caller addItemToBackpack "Chemlight_green";};
  for "_i" from 1 to 3 do {_caller addItemToBackpack "MiniGrenade";};
  for "_i" from 1 to 2 do {_caller addItemToBackpack "BWA3_15Rnd_9x19_P8";};
  _caller addHeadgear "BWA3_M92_Fleck";

  _caller linkItem "ItemMap";
  _caller linkItem "ItemCompass";
  _caller linkItem "ItemWatch";
  _caller linkItem "tf_anprc152_1";
  _caller linkItem "BWA3_ItemNaviPad";
  _caller linkItem "NVGoggles_INDEP";
}, [true, true, true], true, "true"] call FCLA_Common_fnc_createLoadout;


_secondAction = [_this select 0, "<t size='1.5' color='#fbd40b'>Segundo</t>", {
  // === EQUIPAMIENTO DEL SEGUNDO === //
}, [true, true, true], true, "true"] call FCLA_Common_fnc_createLoadout;


_riflemanAction = [_this select 0, "<t size='1.5' color='#ffff00'>Fusilero</t>", {
  // === EQUIPAMIENTO DEL FUSILERO === //
}, [false, false, false], true, "true"] call FCLA_Common_fnc_createLoadout;


_ATRiflemanAction = [_this select 0, "<t size='1.5' color='#00ff00'>Fusilero AT</t>", {
  // === EQUIPAMIENTO DEL FUSILERO AT === //
}, [false, false, false], true, "true"] call FCLA_Common_fnc_createLoadout;


_MachineGunnerAction = [_this select 0, "<t size='1.5' color='#00ff00'>Ametrallador</t>", {
  // === EQUIPAMIENTO DEL AMETRALLADOR === //
}, [false, false, false], true, "true"] call FCLA_Common_fnc_createLoadout;


_grenadierRiflemanAction = [_this select 0, "<t size='1.5' color='#ffff00'>Fusilero Granadero</t>", {
  // === EQUIPAMIENTO DEL FUSILERO GRANADERO === //
}, [false, false, false], true, "true"] call FCLA_Common_fnc_createLoadout;


_paramedicAction = [_this select 0, "<t size='1.5' color='#ff0000'>Paramédico</t>", {
  // === EQUIPAMIENTO DEL PARAMÉDICO === //
}, [true, false, false], true, "true"] call FCLA_Common_fnc_createLoadout;


_combatMedicAction = [_this select 0, "<t size='1.5' color='#ff0000'>Médico de Combate</t>", {
  // === EQUIPAMIENTO DEL MÉDICO DE COMBATE === //
}, [true, false, false], true, "true"] call FCLA_Common_fnc_createLoadout;


_SelectiveShooter = [_this select 0, "<t size='1.5' color='#00ccff'>Tirador Selecto</t>", {
  // === EQUIPAMIENTO DEL TIRADOR SELECTO === //
}, [false, false, false], true, "true"] call FCLA_Common_fnc_createLoadout;


_VANTOperatorAction = [_this select 0, "<t size='1.5' color='#00ccff'>Operador VANT</t>", {
  // === EQUIPAMIENTO DEL OPERADOR VANT === //
}, [false, true, false], true, "true"] call FCLA_Common_fnc_createLoadout;


_radioOperatorAction = [_this select 0, "<t size='1.5' color='#00ccff'>Operador de Radio</t>", {
  // === EQUIPAMIENTO DEL OPERADOR DE RADIO === //
}, [false, false, false], true, "true"] call FCLA_Common_fnc_createLoadout;



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
(_this select 0) setUserActionText [_radioOperatorAction, "<t size='1.5' color='#00ccff'>Operador de Radio</t>", "<t size='1.5' color='#00ccff'>Operador de Radio</t><br/><br/><img size='3' image='\FCLA_Interactions\Insignias\data\COR.paa'/>"];
(_this select 0) setUserActionText [_grenadierRiflemanAction, "<t size='1.5' color='#ffff00'>Fusilero Granadero</t>", "<t size='1.5' color='#ffff00'>Fusilero Granadero</t><br/><img size='4' image='\FCLA_Interactions\Insignias\data\CFG.paa'/>"];
