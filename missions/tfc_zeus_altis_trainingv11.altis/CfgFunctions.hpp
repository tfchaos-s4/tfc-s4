class CfgFunctions
{
	class TFC
	{
		class ACMT
		{
			class initACMT      {file="functions\ACMT\fn_initACMT.sqf";};
			class startACMT     {file="functions\ACMT\fn_startACMT.sqf";};
			class handleTargets {file="functions\ACMT\fn_handleTargets.sqf";};
			class cleanupACMT   {file="functions\ACMT\fn_cleanupACMT.sqf";};
		};

		class Dialog
		{
			class locationLbAdd {file="dialogs\functions\fn_locationLbAdd.sqf";};
		};

		class Medical
		{
			class clearPatient   {file="functions\medical\fn_clearPatient.sqf";};
			class damagePatient {file="functions\medical\fn_damagePatient.sqf";};
			class initMedical   {file="functions\medical\fn_initMedical.sqf";};
			class spawnPatient  {file="functions\medical\fn_spawnPatient.sqf";};
		};
	};
};
