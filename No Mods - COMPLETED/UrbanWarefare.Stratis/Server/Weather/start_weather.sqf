/*
	File: start_weather.sqf
	Description: Realistic Weather Simulation for BRGH
	Created By: Lystic
	Date: 10/20/2014
	Parameters: n/a
	Returns: n/a
*/
scriptName "Server_Lightning_Loop";

BR_ServerRainValue = [0,0];
publicVariable "BR_ServerRainValue";

_startingOverCast = random(1) max 0.1;
_startingRain = random(1) max 0.1;
_startingWindStrength = random(1);
_startingWindForce = random(1);
_startingWindDir = random(360);
_startingWindGusts = random(1);

_hour = floor(random(24));
_min = floor(random(60));
[[2011,1,6,_hour,_min]] call BIS_fnc_setDate;

_startingOverCast call BIS_fnc_setOvercast;
0 setRain _startingRain;
setWind [random(15),random(15)];
0 setWindStr _startingWindStrength;
0 setWindDir _startingWindDir;
0 setWindForce _startingWindForce;	
0 setGusts _startingWindGusts;

diag_log format["BR WEATHER overcast: %1", _startingOverCast];
diag_log format["BR WEATHER rain: %1", _startingRain];
diag_log format["BR WEATHER wind: %1", _startingWindStrength];
diag_log format["BR WEATHER force: %1", _startingWindForce];
diag_log format["BR WEATHER gusts: %1", _startingWindGusts];

[] spawn {
	scriptName "Server_Weather_Sync";
	while{true} do {
		if(!BRMini_ServerOn) exitWith {};
		uiSleep 5;
		BR_ServerRainValue = [rain,gusts];
		publicVariable "BR_ServerRainValue";
	};
};

if(overcast <= 0.7) exitWith {
	diag_log format["BR WEATHER: Exiting Weather. Overcast: %1",overcast];
};
diag_log format["BR WEATHER: Handling Weather. Overcast: %1 Rain: %2",overcast,rain];

while{true} do {
	waitUntil{rain > 0.85 || !BRMini_ServerOn};
	if(!BRMini_ServerOn) exitWith {};
	_x = allPlayers select floor(random(count(allPlayers)));
	_xC = random(1600)-800;
	_yC = random(1600)-800;
	_pos = getposatl _x;
	_xC = (_pos select 0) + _xC;
	_yC = (_pos select 1) + _yC;
	_pos set[0,_xC];
	_pos set[1,_yC];
	_pos set[2,0];
	BR_LS_PVAR = _pos;
	publicVariable "BR_LS_PVAR";
	uiSleep (7.5 + (4 - (3*rain)) - random(1));
};