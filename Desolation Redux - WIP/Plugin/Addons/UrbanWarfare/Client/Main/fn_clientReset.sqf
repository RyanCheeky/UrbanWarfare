
diag_log "<START>: PLAYER RESPAWN SETUP STARTED";

UrbanW_GameStarted = false;

call UW_fnc_showReport;

((findDisplay 12) displayCtrl 51) ctrlremovealleventhandlers "Draw";

if(count(_this) > 1) then {
	if((_this select 0) distance (_this select 1) < 100 ) then {
		player setPosATL (getMarkerPos "respawn_west");
	};
};
if((_this select 0) distance (getMarkerPos "respawn_west") > 300) then {
	player setPosATL (getMarkerPos "respawn	_west");
};
player removeAllEventHandlers "Respawn";
player removeAllEventHandlers "Fired";
player removeAllEventHandlers "Hit";

[] spawn UW_fnc_clientStart; 