{
	deleteVehicle _x;
} forEach (allMissionObjects "C_Quadbike_01_F");

{
	_quad = "C_Quadbike_01_F" createVehicle (_x select 0);
	_quad setposatl (_x select 0);
	_quad setDir (_x select 1);
	_quad allowDamage false;
	clearItemCargoGlobal _quad;
} forEach UrbanW_QuadData;