/*
*	Author: TFC
*	Creation date: 11/16/2019
*	Last edited: 11/16/19
*
*	Params
*	[patient]		 Object
*	[difficulty] Integer (1 - 3)
*/
params
[["_patient", objNull], ["_difficulty", 1]];

private _bodyPartsArray =
[
	"head", "body", "hand_l", "hand_l", "hand_r", "leg_l", "leg_r" //All the body parts that can be damaged.
];

private _woundTypeArray =
[
	"bullet", "grenade", "explosive", "shell", "vehiclecrash", "backblast", "stab", "punch", "falling", "unknown" //All posible wound types.
];

switch _difficulty do
{
	case 1:
	{
		private _damage = 0.3;
		for "_i" from 1 to 3 do
		{
			private _bodyPart = selectRandom _bodyPartsArray;
			private _woundType = selectRandom _woundTypeArray;
			[_patient, _damage, _bodyPart, _woundType] call ace_medical_fnc_addDamageToUnit;
			//hint format["Damge: %1, Body part: %2, Wound type: %3", _damage, _bodyPart, _woundType]; //For debugging
		};
	};
	case 2:
	{
		private _damage = 0.5;
		for "_i" from 1 to 4 do
		{
			private _bodyPart = selectRandom _bodyPartsArray;
			private _woundType = selectRandom _woundTypeArray;
			[_patient, _damage, _bodyPart, _woundType] call ace_medical_fnc_addDamageToUnit;
			//hint format["Damge: %1, Body part: %2, Wound type: %3", _damage, _bodyPart, _woundType]; //For debugging
		};
	};
	case 3:
	{

		private _damage = 0.7;
		for "_i" from 1 to 7 do
		{
			private _damage = random(0.7);
			private _bodyPart = selectRandom _bodyPartsArray;
			private _woundType = selectRandom _woundTypeArray;
			[_patient, _damage, _bodyPart, _woundType] call ace_medical_fnc_addDamageToUnit;
			//hint format["Damge: %1, Body part: %2, Wound type: %3", _damage, _bodyPart, _woundType]; //For debugging
		};
	};
};
