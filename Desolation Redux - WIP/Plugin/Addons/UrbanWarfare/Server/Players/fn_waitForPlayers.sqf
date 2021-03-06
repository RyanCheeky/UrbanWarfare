scriptName "Wait_For_Players";
_countPlayers = {
	_count = 0;
	{
		if(_x getVariable ["JoinedGame",false]) then {_count = _count + 1;};
	} forEach playableUnits;
	_count;
};

while{true} do {
	_players = call _countPlayers;
	if(_players >= UrbanW_Min_Players) exitWith {};
	while{true} do {
		if(_players >= UrbanW_Min_Players) exitWith {};
		UR_DT_PVAR = [format[(localize "str_UW_waitingFor") + " %1 " + (localize "str_UW_morePlayers") + "!",UrbanW_Min_Players - _players],0,0.45,5,0];
		publicVariable "UR_DT_PVAR";
		_time = time + 30;
		waitUntil{_players != (call _countPlayers) || time >= _time};
		_players = call _countPlayers;
	};
};	
diag_log "<WAIT4PLRS>: MINIMUM PLAYER COUNT REACHED";
uiSleep 30;