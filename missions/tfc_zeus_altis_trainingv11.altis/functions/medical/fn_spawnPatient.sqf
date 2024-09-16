/*
*	Author: TFC
*	Creation date: 11/16/2019
*	Last edited: 11/16/19
*
*	Params
*	[difficulty] Integer (1 - 3)
*/
params [["_laptop", objNull], ["_difficulty", 1]];

if (_laptop isEqualTo objNull) exitWith {"No laptop found"};

if (_laptop getVariable ["availableStretchers", []] isEqualTo []) then {
	[_laptop] call TFC_fnc_clearPatient;
};

private _stretchers = _laptop getVariable ["availableStretchers", []];
private _stretcher = selectRandom _stretchers;
_stretchers deleteAt (_stretchers find _stretcher);
_laptop setVariable ["availableStretchers", _stretchers, true];

private _patientGroup = createGroup WEST;

private _patient = _patientGroup createUnit["B_Soldier_unarmed_F", [0,0,0], [], 0, "NONE"];
 removeAllWeapons _patient;
 removeUniform _patient;
 removeVest _patient;
 removeAllItems _patient;
 removeAllAssignedItems _patient;
_patient switchMove "AinjPpneMstpSnonWnonDnon";
_patient disableAI "MOVE";

_patient attachTo [_stretcher, [0, 0.25, 0.25]];

sleep 0.5; //A (roughly) half second delay. This makes sure damage is applied.
[_patient, _difficulty] call TFC_fnc_damagePatient;
