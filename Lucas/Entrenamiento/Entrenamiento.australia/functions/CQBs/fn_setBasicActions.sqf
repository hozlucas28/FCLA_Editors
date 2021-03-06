
/* ----------------------------------------------------------------------------
 * Author: hozlucas28
 *
 * Description:
 * Genera acciones para preparar y configurar el CQB (básico).
 *
 * Public: [No]
---------------------------------------------------------------------------- */

//Variable de referencia.
params ["_controller"];



/* ------------------------------- PREPARAR -------------------------------- */

_controller addAction ["<t size='1.35' color='#58D68D'>Preparar CQB</t>", {
  params ["_target", "_caller", "_actionId", "_arguments"];
  _isCQBInitialized = _target getVariable ["FCLA_CQB_Initialized", false];
  _target setVariable ["FCLA_Configuring_CQB", true, true];


  if (_isCQBInitialized) exitWith {
    ["PREPARACIÓN CQB",
     [
      ["TOOLBOX", "Limpiar CQB",
       [
        0,
        1,
        2,
        ["Si", "No"],
        nil
       ],
      false
      ]
     ],
    {
      (_this select 0) params ["_cleanUpCQB"];
      (_this select 1) params ["_target", "_caller", "_actionId", "_arguments"];
      _cleanUpCQB = if (_cleanUpCQB == 0) then {true;} else {false;};

      if (!_cleanUpCQB) exitWith {};
      [_target, [[31894.3, 24992.1, 0], 25, 25, 333, true, 10], [FCLA_Basic_CQB_Door_1, FCLA_Basic_CQB_Door_2, FCLA_Basic_CQB_Door_3, FCLA_Basic_CQB_Door_4, FCLA_Basic_CQB_Door_5]] spawn FCLA_Training_fnc_cleanUpCQB;

      ["PREPARACIÓN CQB",
       [
        ["TOOLBOX", "Rehénes",
         [
          0,
          1,
          2,
          ["Si", "No"],
          nil
         ],
        false
        ],
        ["TOOLBOX", ["Visión nocturna (IA)", "Si se activa la IA generada llevara unas gafas de visión nocturna equipadas."],
         [
          1,
          1,
          2,
          ["Si", "No"],
          nil
         ],
        false
        ],
        ["TOOLBOX", "Puertas bloqueadas",
         [
          0,
          1,
          2,
          ["Si", "No"],
          nil
         ],
        false
        ]
       ],
      {
        (_this select 0) params ["_spawnHostages", "_hasNVG", "_lockDoors"];
        (_this select 1) params ["_target", "_caller", "_actionId", "_arguments"];
        _hasNVG = if (_hasNVG == 0) then {true;} else {false;};
        _lockDoors = if (_spawnHostages == 0) then {1;} else {0;};
        _spawnHostages = if (_spawnHostages == 0) then {true;} else {false;};
        [_target, [FCLA_Basic_CQB_Door_1, FCLA_Basic_CQB_Door_2, FCLA_Basic_CQB_Door_3, FCLA_Basic_CQB_Door_4, FCLA_Basic_CQB_Door_5], _hasNVG, _lockDoors, _spawnHostages] spawn FCLA_Training_fnc_setUpBasicCQB;
      }, {((_this select 1) select 0) setVariable ["FCLA_Configuring_CQB", nil, true];}, [_target, _caller, _actionId, _arguments]] call ZEN_Dialog_fnc_Create;
    }, {((_this select 1) select 0) setVariable ["FCLA_Configuring_CQB", nil, true];}, [_target, _caller, _actionId, _arguments]] call ZEN_Dialog_fnc_Create;
  };


  ["PREPARACIÓN CQB",
   [
    ["TOOLBOX", "Rehénes",
     [
      0,
      1,
      2,
      ["Si", "No"],
      nil
     ],
    false
    ],
    ["TOOLBOX", ["Visión nocturna (IA)", "Si se activa la IA generada llevara unas gafas de visión nocturna equipadas."],
     [
      1,
      1,
      2,
      ["Si", "No"],
      nil
     ],
    false
    ],
    ["TOOLBOX", "Puertas bloqueadas",
     [
      0,
      1,
      2,
      ["Si", "No"],
      nil
     ],
    false
    ]
   ],
  {
    (_this select 0) params ["_spawnHostages", "_hasNVG", "_lockDoors"];
    (_this select 1) params ["_target", "_caller", "_actionId", "_arguments"];
    _hasNVG = if (_hasNVG == 0) then {true;} else {false;};
    _lockDoors = if (_spawnHostages == 0) then {1;} else {0;};
    _spawnHostages = if (_spawnHostages == 0) then {true;} else {false;};
    [_target, [FCLA_Basic_CQB_Door_1, FCLA_Basic_CQB_Door_2, FCLA_Basic_CQB_Door_3, FCLA_Basic_CQB_Door_4, FCLA_Basic_CQB_Door_5], _hasNVG, _lockDoors, _spawnHostages] spawn FCLA_Training_fnc_setUpBasicCQB;
  }, {((_this select 1) select 0) setVariable ["FCLA_Configuring_CQB", nil, true];}, [_target, _caller, _actionId, _arguments]] call ZEN_Dialog_fnc_Create;
}, [], 1.5, true, true, "", "!(_target getVariable ['FCLA_Configuring_CQB', false])", 2.5, false, "", ""];



/* --------------------------- REPRODUCIR SONIDO --------------------------- */

_controller addAction ["<t size='1.35' color='#D4D658'>Comiencen (sonido)</t>", {
  params ["_target", "_caller", "_actionId", "_arguments"];
  _soundObj = createSoundSource ["FCLA_SFX_Shooting_Range_Alarm", getPos _target, [], 0];
  _soundClass = getText (configFile >> "CfgVehicles" >> "FCLA_SFX_Shooting_Range_Alarm" >> "sound");
  _soundDuration = getNumber (configFile >> "CfgSFX" >> _soundClass >> "duration");
  [{deleteVehicle _this}, _soundObj, _soundDuration] call CBA_fnc_waitAndExecute;
}, [], 1.5, true, true, "", "true", 2.5, false, "", ""];
