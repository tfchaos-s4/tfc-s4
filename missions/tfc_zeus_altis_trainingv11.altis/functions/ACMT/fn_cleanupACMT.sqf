params [["_laptop", null], ["_lane", []], ["_targetEVH", -1]];

if (isNull _laptop || {_lane isEqualTo []} || {_targetEVH isEqualTo -1}) exitWith {hint "TFC_fnc_cleanupACMT: bad data passed"};

waitUntil {
  !(_laptop getVariable ["acmtStart", false]);
};

private _totalHits = 0;

{
    _totalHits = _totalHits + (_x getVariable ["numHits", 0]);
    _x removeAllEventHandlers "HitPart";
} forEach _lane;

hint format ["Canidate score: %1/64", _totalHits];
