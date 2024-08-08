private _return  = [];
params [
["_target",objNull,[objNull]],
["_dist",5,[0]]
];
scopeName "mainScope";

if(!isNull _target && _target isKindOf "House") then {
	private _selectionName = "";
	private _dir = getDir player;
	private _cameraVector = [positionCameraToWorld [0,0,0], positionCameraToWorld [0,0,1]] call BIS_fnc_vectorFromXtoY; // Get the current camera vector
	private _cameraPosition = eyePos player; // Starting point for the intersect line
	private _cameraPositionTrue = if(surfaceIsWater _cameraPosition) then {_cameraPosition} else {ASLtoATL _cameraPosition}; // Normalize the starting position
	private _finalPosition = [(( _cameraPosition select 0 ) + sin _dir * _dist ), ((_cameraPosition select 1) + cos _dir * _dist ), ( _cameraPosition select 2 )];
	//_finalPosition = [_cameraPosition, [_cameraVector call BIS_fnc_unitVector, _distance] call BIS_fnc_vectorMultiply] call BIS_fnc_vectorAdd; // Calculate the end position for the intersect line based on the camera vector
	private _finalPositionTrue = if(surfaceIsWater _finalPosition) then {_finalPosition} else {ASLtoATL _finalPosition}; // Normalize the final position of the intersect line
	private _intersects = [_target,"GEOM"] intersect [_cameraPositionTrue, _finalPositionTrue]; // Get the stuff the line intersects
	
	if(count _intersects > 0) then {

		private _door = (_intersects select 0) select 0;
		private _door = str(_door);
	
		if ((_door find "door") > 0 || (_door find "dvere") > 0 || _door in saf_mission_setting_breach_customDoorNames) then {
			private _selectionName_def = format ["%1_rot", (_intersects select 0) select 0];
			private _selectionName_jbad = format ["%1", (_intersects select 0) select 0];
			private _selectionName_dvere = _selectionName_jbad;
			private _selectionName_Map = _selectionName_jbad;
			private _n = 0; 
				if ((_door find "1") > 0) then  { _n = 1; } else {
					if ((_door find "2") > 0) then  { _n = 2; } else {
						if ((_door find "3") > 0) then  { _n = 3; } else {
							if ((_door find "4") > 0) then  { _n = 4; } else {
								if ((_door find "5") > 0) then  { _n = 5; } else {
									if ((_door find "6") > 0) then  { _n = 6; } else {
										if ((_door find "7") > 0) then  { _n = 7; } else {
											if ((_door find "8") > 0) then  { _n = 8; } else {
												if ((_door find "9") > 0) then  { _n = 9; };
											};
										};
									};
								};
							};
						};
					};
				};
				
			if ((_door find "dvere") < 1) then {
				_selectionName_dvere = format ["Dvere%1", _n];
			};
			if ((_door find "door_") < 1) then {
				_selectionName_Map = format ["door_%1_rot", _n];
			};
			
			//-->Manage door locking
			private _dS1 = _target getVariable [format ["bis_disabled_%1", _selectionName_def],-1];
			private _dS2 = _target getVariable [format ["bis_disabled_%1", _selectionName_jbad],-1];
			private _dS3 = _target getVariable [format ["bis_disabled_%1", _selectionName_dvere],-1];
			private _dS4 = _target getVariable [format ["bis_disabled_%1", _selectionName_Map],-1];
			private _break = if (saf_mission_setting_breach_closeFix > 0) then { true } else { false };
			{
				private _p = _target animationPhase _x;
				if (saf_mission_setting_breach_closeFix > 0) then { 
					if (_p > 0) then {
						_break = false;
					};
				} else {
					if (_p > 0) then {
						_break = true;
					};
				};
				
			} foreach [_selectionName_def,_selectionName_jbad,_selectionName_dvere,_selectionName_Map];
			if (_break) then {breakTo "mainScope";};
			if (_target in saf_mission_setting_breach_Buildings && _dS1 == -1 && _dS2 == -1 && _dS3 == -1 && _dS4 == -1) then {	
				[_target,_selectionName_def,_selectionName_jbad,_selectionName_dvere,_selectionName_Map,_dS1,_dS2,_ds3,_dS4] call SAF_fnc_breachLockDoor;
			} else {
				if (_target in saf_mission_setting_breach_Buildings) then {
					[_target,_selectionName_def,_selectionName_jbad,_selectionName_dvere,_selectionName_Map] call SAF_fnc_breachManageLockedDoor;
				};
			};
			
			_return  = [_target,[_selectionName_def,_selectionName_jbad,_selectionName_dvere,_selectionName_Map]];
		};
	};
};

_return;