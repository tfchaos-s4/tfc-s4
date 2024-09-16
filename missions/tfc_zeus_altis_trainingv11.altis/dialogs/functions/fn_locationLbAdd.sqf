#define IDD_TELEPORT_MENU 9800000
#define IDC_LIST_BOX 9800001

private _listBox = ((uiNamespace getVariable "TFC_Teleport_Menu") displayCtrl IDC_LIST_BOX);

private _locations = getArray (missionConfigFile >> "teleport_locations" >> "allLocations");

if (_locations isEqualTo []) exitWith {hint "Unable to find locations";};


player setVariable ["cameraCoords", [0,0,0]];

//add the items to the dropdown menu
{
	_item = _listBox lbAdd format ["%1", (_x select 0)];
	_listBox lbSetData [_item, (_x select 1)];
} forEach _locations;

//add LBSelChanged eventhandlers
[_listBox] spawn
{
	params ["_listBox"];
	_listBox ctrlAddEventHandler ["LBSelChanged",
		{
			params ["_control", "_selectedIndex"];
			player setPos (getMarkerPos [(_control lbData (lbCurSel _control)), true]);
			player setVariable ["cameraCoords", getMarkerPos (_control lbData (lbCurSel _control))];
		}
	];
};

[] spawn
{
	private _radius = 350;   // circle radius
	private _angle = 180;    // starting angle
	private _altitude = 120; // camera altitude
	private _dir = 0;        // direction of camera movement 0: anti-clockwise, 1: clockwise
	private _speed = 0.25;   // lower is faster
	private _coords = [(player getVariable "cameraCoords"), _radius, _angle] call BIS_fnc_relPos;
	_coords set [2, _altitude];
	private _camera = "camera" camCreate _coords;
	_camera cameraEffect ["INTERNAL","BACK"];
	_camera camPrepareFOV 0.700;
	_camera camPrepareTarget (player getVariable "cameraCoords");
	_camera camCommitPrepared 0;

	while {!(isNull (uiNamespace getVariable "TFC_Teleport_Menu"))} do {
		_coords = [(player getVariable "cameraCoords"), _radius, _angle] call BIS_fnc_relPos;
		_coords set [2, _altitude];

		_camera camPreparePos _coords;
		_camera camPrepareTarget (player getVariable "cameraCoords");
		_camera camCommitPrepared _speed;

		waitUntil {camCommitted _camera};

		_camera camPreparePos _coords;
		_camera camPrepareTarget (player getVariable "cameraCoords");
		_camera camCommitPrepared 0;

		_angle = if (_dir == 0) then {_angle - 1} else {_angle + 1};
	};
	_camera cameraEffect ["terminate", "back"];
	camDestroy _camera;
	player allowDamage  true;
	player enableSimulation true;
};
