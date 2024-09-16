params [["_laptop", objNull]];

if (_laptop isEqualTo objNull) exitWith {hint "No laptop found"};
{
    if (typeOf _x == "B_Soldier_unarmed_F") then {
      deleteVehicle _x;
    };
} forEach (_laptop nearEntities ["Man", 25]);

_laptop setVariable [
  "availableStretchers",
  [
    TFC_Medical_Stretcher_01, TFC_Medical_Stretcher_02, TFC_Medical_Stretcher_03,
  	TFC_Medical_Stretcher_04, TFC_Medical_Stretcher_05, TFC_Medical_Stretcher_06
  ],
  true
];
