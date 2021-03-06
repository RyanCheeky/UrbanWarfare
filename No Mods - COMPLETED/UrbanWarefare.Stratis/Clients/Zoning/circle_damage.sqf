_outside = false;
_messageTime = -1;
while{alive player} do {
	_position = (getMarkerPos "BRMini_SafeZone");
	_size = (getMarkerSize "BRMini_SafeZone") select 0;
	if("Blue_Zone" in AllMapMarkers) then {
		_position = (getMarkerPos "Blue_Zone");
		_size = (getMarkerSize "Blue_Zone") select 0;
	};
	if((player distance _position) > _size) then {
		if(!_outside) then {
			_outside = true;
			_messageTime = time;
			["YOU ARE OUTSIDE THE PLAY AREA!",0,0.7,5,0] spawn BIS_fnc_dynamicText;
		} else {
			if((time-6) > _messageTime) then {
				_messageTime = time;
				_damage = (damage player + (1/10));
				if(_damage >= 1) then {
					player setVariable["circleKill",true,true];
				} else {
					["YOU ARE STILL OUTSIDE THE PLAY AREA!",0,0.7,5,0] spawn BIS_fnc_dynamicText;
				};
				player setDamage _damage;
			};
		};
	};
	if((player distance _position) < _size && _outside) then {
		_outside = false;
		_messageTime = -1;
		["YOU ARE BACK INSIDE THE PLAY AREA!",0,0.7,5,0] spawn BIS_fnc_dynamicText;
	};
};