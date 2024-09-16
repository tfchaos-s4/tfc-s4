TFC_Medical_Laptop_01 setVariable [
  "availableStretchers",
  [
    TFC_Medical_Stretcher_01, TFC_Medical_Stretcher_02, TFC_Medical_Stretcher_03,
  	TFC_Medical_Stretcher_04, TFC_Medical_Stretcher_05, TFC_Medical_Stretcher_06
  ],
  true
];

TFC_Medical_Laptop_01 addAction
[
	"Spawn patient [easy]",
	{
		[TFC_Medical_Laptop_01, 1] call TFC_fnc_spawnPatient;
	},
	nil,
	1.5,
	true,
	true,
	"",
	"true", // _target, _target, _originalTarget
	5,
	false,
	"",
	""
];

TFC_Medical_Laptop_01 addAction
[
	"Spawn patient [medium]",
	{
		[TFC_Medical_Laptop_01, 2] call TFC_fnc_spawnPatient;
	},
	nil,
	1.5,
	true,
	true,
	"",
	"true", // _target, _target, _originalTarget
	5,
	false,
	"",
	""
];

TFC_Medical_Laptop_01 addAction
[
	"Spawn patient [hard]",
	{
		[TFC_Medical_Laptop_01, 3] call TFC_fnc_spawnPatient;
	},
	nil,
	1.5,
	true,
	true,
	"",
	"true", // _target, _target, _originalTarget
	5,
	false,
	"",
	""
];

TFC_Medical_Laptop_01 addAction
[
	"Clear patients",
	{
    [TFC_Medical_Laptop_01] call TFC_fnc_clearPatient;
	},
	nil,
	1.5,
	true,
	true,
	"",
	"true", // _target, _target, _originalTarget
	5,
	false,
	"",
	""
];
