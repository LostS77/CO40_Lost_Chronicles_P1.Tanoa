private ["_danger_close","_op_dir","_chased_units","_fct","_reldir","_avoid_poz","_fct_move"];
_danger_close = _this select 0;
_chased_units = (position _danger_close) nearEntities [["Civilian","SoldierGB","SoldierEB","SoldierWB"],25];
{
	_reldir = [_x, getPos _danger_close] call BIS_fnc_dirTo;
	_fct = [30,-30] call BIS_fnc_selectRandom;
	if (_reldir<180) then {_op_dir=_reldir+180 +_fct} else {_op_dir=_reldir-180+_fct};
	_avoid_poz = [getposATL _x,20+random 10, _op_dir] call BIS_fnc_relPos;
	_x doMove _avoid_poz;
	_x setSkill ["commanding", 1];
} foreach _chased_units;