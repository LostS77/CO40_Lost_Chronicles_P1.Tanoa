// by ALIAS

private ["_toxic_puddle","_sfx_puddle","_obj_puddle","_dir_puddle"];

if (!isServer) exitWith {};

_toxic_puddle = _this select 0;
_sfx_puddle	  = _this select 1;

if (!isNil{_toxic_puddle getVariable "activ"}) exitWith {};
_toxic_puddle setVariable ["activ",true,true];

_dir_puddle = getDir _toxic_puddle;
_img_puddle	=["modules\anomalies\farty\images\01_lake.paa","modules\anomalies\farty\images\02_lake.paa","modules\anomalies\farty\images\03_lake.paa","modules\anomalies\farty\images\04_lake.paa"] call BIS_fnc_selectRandom;
_obj_puddle = createVehicle ["BloodPool_01_Large_New_F",getPos _toxic_puddle, [], 0, "CAN_COLLIDE"];
deleteVehicle _toxic_puddle;
_obj_puddle setObjectMaterialglobal [0, "a3\characters_f_bootcamp\common\data\vrarmoremmisive.rvmat"];
_obj_puddle setObjectTextureGlobal [0,_img_puddle];
_obj_puddle setDir _dir_puddle;

if (_sfx_puddle) then {[[_obj_puddle],"modules\anomalies\farty\toxic_puddle.sqf"] remoteExec ["execVM",0,true]};