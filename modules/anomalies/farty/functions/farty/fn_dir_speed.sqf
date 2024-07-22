private ["_fart_move","_object_to_move","_dir_move","_press_implicit_x","_press_implicit_y","_tolerance","_multiplier"];
_object_to_move = _this select 0;
_dir_move 		= _this select 1; // direction
_tolerance 		= _this select 2; // abatere de la directie
_multiplier 	= _this select 3; // multiplicator viteza deplasare

//_dir_move = _dir_move+([random _tolerance,random -_tolerance] call BIS_fnc_selectRandom);

_fart_move = ["01_anomaly_move","02_anomaly_move"] call BIS_fnc_selectRandom;

if (_dir_move<=90) then {
	_press_implicit_x = linearConversion [0, 90,_dir_move, 0, 1, true];
	_press_implicit_y = 1-_press_implicit_x;
};
if ((_dir_move>90)and(_dir_move<180)) then {
	_dir_move = _dir_move-90;
	_press_implicit_x = linearConversion [0, 90,_dir_move, 1, 0, true];
	_press_implicit_y = _press_implicit_x-1;
};
if ((_dir_move>180)and(_dir_move<270)) then {
	_dir_move = _dir_move-180;
	_press_implicit_x = linearConversion [0, 90,_dir_move, 0, -1, true];
	_press_implicit_y = (-1*_press_implicit_x)-1;
};
if ((_dir_move>270)and(_dir_move<360)) then {
	_dir_move = _dir_move-270;
	_press_implicit_x = linearConversion [0, 90,_dir_move, -1, 0, true];
	_press_implicit_y = 1+_press_implicit_x;
};
_object_to_move setVelocity [_press_implicit_x*_multiplier,_press_implicit_y*_multiplier,3];
sleep 0.3;
[_object_to_move,[_fart_move,200]] remoteExec ["say3d"];