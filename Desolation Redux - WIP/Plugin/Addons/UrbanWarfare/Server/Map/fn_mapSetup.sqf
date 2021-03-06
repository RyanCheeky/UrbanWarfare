_tempSize = 280;
_nextZoneCenter = getMarkerPos "UrbanW_SafeZone";

_steps = floor ((2 * pi * _tempSize) / 10);
_radStep = 360 / _steps;
_data = [];
for [{_j = 0}, {_j < 360}, {_j = _j + _radStep}] do {
	_pos2 = [_nextZoneCenter, _tempSize, _j] call BIS_fnc_relPos;
	_pos2 set [2, 0];
	_data set[count(_data),["UserTexture10m_F",_pos2,_j,"#(argb,8,8,3)color(0,0,0,0.6)"]];
	_data set[count(_data),["UserTexture10m_F",_pos2,(_j + 180),"#(argb,8,8,3)color(0,0,0,0.6)"]];
};
UR_DRAWBLACKZONE = _data;
publicVariable "UR_DRAWBLACKZONE";