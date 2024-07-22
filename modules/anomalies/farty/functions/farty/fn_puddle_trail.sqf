private ["_obj_tox","_toxic_pos","_prob_create"];
_toxic_pos=_this select 0;
_prob_create = random 10;
if (_prob_create>8) then 
{
	sleep 10;
	_obj_tox = createVehicle ["BloodPool_01_Large_New_F",[getPos _toxic_pos select 0,getPos _toxic_pos select 1,0], [], 0, "CAN_COLLIDE"];
	_obj_tox setObjectMaterialglobal [0, "a3\characters_f_bootcamp\common\data\vrarmoremmisive.rvmat"];
	_aspect_puddle = ["modules\anomalies\farty\images\01_lake.paa","modules\anomalies\farty\images\02_lake.paa","modules\anomalies\farty\images\03_lake.paa","modules\anomalies\farty\images\04_lake.paa"] call BIS_fnc_selectRandom;
	_obj_tox setObjectTextureGlobal [0,_aspect_puddle];
	_obj_tox setdir (random 360);
	sleep 60;
	deleteVehicle _obj_tox;
};