private ["_sfx_puddle","_img_puddle","_poz_puddle","_location_mark","_obj_puddle"];
_location_mark = _this select 0;
_sfx_puddle	=[true,false] call BIS_fnc_selectRandom;
_img_puddle	=["modules\anomalies\farty\images\01_lake.paa","modules\anomalies\farty\images\02_lake.paa","modules\anomalies\farty\images\03_lake.paa","modules\anomalies\farty\images\04_lake.paa"] call BIS_fnc_selectRandom;
_poz_puddle = [getmarkerpos _location_mark,random _radius_toxic,random 360] call BIS_fnc_relPos;
_obj_puddle = "BloodPool_01_Large_New_F" createVehicle _poz_puddle;
_obj_puddle setObjectMaterialglobal [0, "a3\characters_f_bootcamp\common\data\vrarmoremmisive.rvmat"];
_obj_puddle setObjectTextureGlobal [0,_img_puddle];
_obj_puddle setDir (random 360);
if (_sfx_puddle) then {[[_obj_puddle],"modules\anomalies\farty\images\toxic_puddle.sqf"] remoteExec ["execVM",0,true]}