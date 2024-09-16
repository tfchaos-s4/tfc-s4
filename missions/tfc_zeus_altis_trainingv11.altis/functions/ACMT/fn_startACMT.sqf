params [["_lane", 0], ["_laptop", objNull]];
if !(_lane > 0 && {_lane <= 5}) exitWith {};
if (isNull _laptop) exitWith {};

/*
laneN[] = Array of targets, type (SNAP, RAPID), range, position, number of bullets
*/
private _lane01 = [
  ACMT_Lane01_100_Right, ACMT_Lane01_100_Left, ACMT_Lane01_200_Right, ACMT_Lane01_200_Left,
  ACMT_Lane01_300_Right, ACMT_Lane01_300_Left, ACMT_Lane01_400_Right, ACMT_Lane01_400_Left
];

private _lane02 = [
  ACMT_Lane02_100_Right, ACMT_Lane02_100_Left, ACMT_Lane02_200_Right, ACMT_Lane02_200_Left,
  ACMT_Lane02_300_Right, ACMT_Lane02_300_Left, ACMT_Lane02_400_Right, ACMT_Lane02_400_Left
];

private _lane03 = [
  ACMT_Lane03_100_Right, ACMT_Lane03_100_Left, ACMT_Lane03_200_Right, ACMT_Lane03_200_Left,
  ACMT_Lane03_300_Right, ACMT_Lane03_300_Left, ACMT_Lane03_400_Right, ACMT_Lane03_400_Left
];

private _lane04 = [
  ACMT_Lane04_100_Right, ACMT_Lane04_100_Left, ACMT_Lane04_200_Right, ACMT_Lane04_200_Left,
  ACMT_Lane04_300_Right, ACMT_Lane04_300_Left, ACMT_Lane04_400_Right, ACMT_Lane04_400_Left
];

private _lane05 = [
  ACMT_Lane05_100_Right, ACMT_Lane05_100_Left, ACMT_Lane05_200_Right, ACMT_Lane05_200_Left,
  ACMT_Lane05_300_Right, ACMT_Lane05_300_Left, ACMT_Lane05_400_Right, ACMT_Lane05_400_Left
];

switch (_lane) do {
    case 1: {[_laptop, _lane01] spawn TFC_fnc_handleTargets;};
    case 2: {[_laptop, _lane02] spawn TFC_fnc_handleTargets;};
    case 3: {[_laptop, _lane03] spawn TFC_fnc_handleTargets;};
    case 4: {[_laptop, _lane04] spawn TFC_fnc_handleTargets;};
    case 5: {[_laptop, _lane05] spawn TFC_fnc_handleTargets;};
};
