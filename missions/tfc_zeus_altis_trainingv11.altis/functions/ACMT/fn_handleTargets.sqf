params [["_laptop", null], ["_lane", []]];
if (_lane isEqualTo [] || {isNull _laptop}) exitWith {};

_targetEVH = 0;
{
  _x setVariable ["numHits", 0, true];
  _targetEVH = _x addEventHandler ["HitPart", {
	(_this select 0) params ["_target", "_shooter", "_projectile", "_position", "_velocity", "_selection", "_ammo", "_vector", "_radius", "_surfaceType", "_isDirect"];
    _target setVariable ["numHits", (_target getVariable ["numHits", 0]) + 1, true];
  }];
} forEach _lane;

[_laptop, _lane, _targetEVH] spawn TFC_fnc_cleanupACMT;
