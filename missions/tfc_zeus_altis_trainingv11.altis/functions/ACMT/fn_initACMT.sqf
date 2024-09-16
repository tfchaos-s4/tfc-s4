acmtTargets = [
  ACMT_Lane01_100_Right, ACMT_Lane01_100_Left, ACMT_Lane01_200_Right, ACMT_Lane01_200_Left,
  ACMT_Lane01_300_Right, ACMT_Lane01_300_Left, ACMT_Lane01_400_Right, ACMT_Lane01_400_Left,
  ACMT_Lane02_100_Right, ACMT_Lane02_100_Left, ACMT_Lane02_200_Right, ACMT_Lane02_200_Left,
  ACMT_Lane02_300_Right, ACMT_Lane02_300_Left, ACMT_Lane02_400_Right, ACMT_Lane02_400_Left,
  ACMT_Lane03_100_Right, ACMT_Lane03_100_Left, ACMT_Lane03_200_Right, ACMT_Lane03_200_Left,
  ACMT_Lane03_300_Right, ACMT_Lane03_300_Left, ACMT_Lane03_400_Right, ACMT_Lane03_400_Left,
  ACMT_Lane04_100_Right, ACMT_Lane04_100_Left, ACMT_Lane04_200_Right, ACMT_Lane04_200_Left,
  ACMT_Lane04_300_Right, ACMT_Lane04_300_Left, ACMT_Lane04_400_Right, ACMT_Lane04_400_Left,
  ACMT_Lane05_100_Right, ACMT_Lane05_100_Left, ACMT_Lane05_200_Right, ACMT_Lane05_200_Left,
  ACMT_Lane05_300_Right, ACMT_Lane05_300_Left, ACMT_Lane05_400_Right, ACMT_Lane05_400_Left
];

ACMT_Laptop_01 addAction
[
	"Start Lane #1",
	{
		[1, ACMT_Laptop_01] call TFC_fnc_startACMT;
    ACMT_Laptop_01 setVariable ["acmtStart", true, true];
	},
	nil,
	1.5,
	true,
	true,
	"",
	"!(_target getVariable [""acmtStart"", false])", // _target, _target, _originalTarget
	5,
	false,
	"",
	""
];

ACMT_Laptop_01 addAction
[
	"Stop Lane #1",
	{
		ACMT_Laptop_01 setVariable ["acmtStart", false, true];
	},
	nil,
	1.5,
	true,
	true,
	"",
	"(_target getVariable [""acmtStart"", false])", // _target, _target, _originalTarget
	5,
	false,
	"",
	""
];

ACMT_Laptop_02 addAction
[
	"Start Lane #2",
	{
		[2, ACMT_Laptop_02] call TFC_fnc_startACMT;
    ACMT_Laptop_02 setVariable ["acmtStart", true, true];
	},
	nil,
	1.5,
	true,
	true,
	"",
	"!(_target getVariable [""acmtStart"", false])", // _target, _target, _originalTarget
	5,
	false,
	"",
	""
];

ACMT_Laptop_02 addAction
[
	"Stop Lane #2",
	{
		ACMT_Laptop_02 setVariable ["acmtStart", false, true];
	},
	nil,
	1.5,
	true,
	true,
	"",
	"(_target getVariable [""acmtStart"", false])", // _target, _target, _originalTarget
	5,
	false,
	"",
	""
];

ACMT_Laptop_03 addAction
[
	"Start Lane #3",
	{
		[3, ACMT_Laptop_03] call TFC_fnc_startACMT;
    ACMT_Laptop_03 setVariable ["acmtStart", true, true];
	},
	nil,
	1.5,
	true,
	true,
	"",
	"!(_target getVariable [""acmtStart"", false])", // _target, _target, _originalTarget
	5,
	false,
	"",
	""
];

ACMT_Laptop_03 addAction
[
	"Stop Lane #3",
	{
		ACMT_Laptop_03 setVariable ["acmtStart", false, true];
	},
	nil,
	1.5,
	true,
	true,
	"",
	"(_target getVariable [""acmtStart"", false])", // _target, _target, _originalTarget
	5,
	false,
	"",
	""
];

ACMT_Laptop_04 addAction
[
	"Start Lane #4",
	{
		[4, ACMT_Laptop_04] call TFC_fnc_startACMT;
    ACMT_Laptop_04 setVariable ["acmtStart", true, true];
	},
	nil,
	1.5,
	true,
	true,
	"",
	"!(_target getVariable [""acmtStart"", false])", // _target, _target, _originalTarget
	5,
	false,
	"",
	""
];

ACMT_Laptop_04 addAction
[
	"Stop Lane #4",
	{
		ACMT_Laptop_04 setVariable ["acmtStart", false, true];
	},
	nil,
	1.5,
	true,
	true,
	"",
	"(_target getVariable [""acmtStart"", false])", // _target, _target, _originalTarget
	5,
	false,
	"",
	""
];

ACMT_Laptop_05 addAction
[
	"Start Lane #5",
	{
		[5, ACMT_Laptop_05] call TFC_fnc_startACMT;
    ACMT_Laptop_05 setVariable ["acmtStart", true, true];
	},
	nil,
	1.5,
	true,
	true,
	"",
	"!(_target getVariable [""acmtStart"", false])", // _target, _target, _originalTarget
	5,
	false,
	"",
	""
];

ACMT_Laptop_05 addAction
[
	"Stop Lane #5",
	{
		ACMT_Laptop_05 setVariable ["acmtStart", false, true];
	},
	nil,
	1.5,
	true,
	true,
	"",
	"(_target getVariable [""acmtStart"", false])", // _target, _target, _originalTarget
	5,
	false,
	"",
	""
];
