private ["_markern","_nm","_object_anom_burp","_markerstr","_damage_protect"];

if (!isServer) exitwith {};

_marker_anom_burp		= _this select 0;
_mobile_anomaly			= _this select 1;
_device_detector		= _this select 2;
_damage_protect			= _this select 3;
_anti_burper_device		= _this select 4;

_object_anom_burp = "Land_HelipadEmpty_F" createVehicle [getmarkerPos _marker_anom_burp select 0,getmarkerPos _marker_anom_burp select 1,2];
_balta_sang = createVehicle ["BloodSplatter_01_Medium_New_F",[getmarkerPos _marker_anom_burp select 0,getmarkerPos _marker_anom_burp select 1,0], [], random 8, "CAN_COLLIDE"];
_balta_sang setdir (random 360);

if (_anti_burper_device	!="") then {
	anti_burper = _anti_burper_device; publicVariable "anti_burper";
	[_object_anom_burp,_anti_burper_device] execvm "modules\AL_burpy\remove_burper.sqf";
};

if (_device_detector !="") then {
	detection_smugg = true; publicVariable "detection_smugg";
	detectiv_tool = _device_detector; publicVariable "detectiv_tool"; [_object_anom_burp] execvm "modules\AL_burpy\ai_avoid_burper.sqf";
} else {detection_smugg = false; publicVariable "detection_smugg"; [_object_anom_burp] execvm "modules\AL_burpy\ai_avoid_burper_vizible.sqf"};

if (_damage_protect !="") then {obj_prot_burper=_damage_protect; publicVariable "obj_prot_burper"};

[_object_anom_burp] execvm "modules\AL_burpy\damage_trap.sqf";
[[_object_anom_burp],"modules\AL_burpy\alias_burper_sfx.sqf"] remoteExec ["execVM",0,true];

if (_mobile_anomaly) then {
	while {alive _object_anom_burp} do 
	{
		_poz_ini_burp = getposatl _object_anom_burp;
		_new_poz = [_poz_ini_burp,0.1,1,1,0,-1,0] call BIS_fnc_findSafePos;
		_object_anom_burp setPos [_new_poz select 0,_new_poz select 1, _poz_ini_burp select 2];
		sleep 60 + random 60;
	};
};