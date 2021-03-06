/*
	File: reset.sqf
	Description: Server reset for BRGH
	Created By: PlayerUnknown & Lystic
	Date: 10/20/2014
	Parameters: n/a
	Returns: n/a
*/
DIAG_LOG "<RESET>: CLEANING UP MAP";
call BRGH_fnc_mapCleanup;

DIAG_LOG "<RESET>: WAITING FOR THREADS";
if(typename _this == typename []) then {
	{waitUntil{scriptDone _x};} forEach (_this select 0);
	{waitUntil{completedFSM _x};} forEach (_this select 1);
};

DIAG_LOG "<RESET>: RESETING VARIABLES";
BRMini_GameStarted = false;
BRMini_ZoneStarted = false; 
BRMini_InGame = false;
BRMini_ServerOn = true; 

call BRGH_fnc_resetQuads;

DIAG_LOG "<RESET>: STARTING SERVER";
[] spawn BRGH_fnc_serverStart;