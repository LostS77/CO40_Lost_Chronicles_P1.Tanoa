null = ["strigoi_1", 100, true, 0.1, 75] execvm "modules\AL_strigoi\strigoi.sqf";
null = ["strigoi_2", 500, true, 0.1, 75] execvm "modules\AL_strigoi\strigoi.sqf";
null = ["strigoi_3", 500, true, 0.1, 75] execvm "modules\AL_strigoi\strigoi.sqf";

/*
null = [marker,mobile_anomaly,device_detector,damage_protect,anti_burper_device] execVM "modules\AL_burpy\alias_burper.sqf";
marker				- string, name fo the marker where you want to place the anomaly
mobile_anomaly		- boolean, if true the anomaly will change location over time, otherwise they stay in the same location where they were initially placed
device_detector		- string, classname of the object you want to act as a anomaly detector
damage_protect		- string, classname of the object you want to function as protective gear so a unit will be un-harmed by anomaly when in proximity
						* if empty no protection will be provided
anti_burper_device	- string, class name of the object which will act as a Burper neutralizer, if this item/vehicle is in 10 m range from Burper it will make Burper disappear
*/

null = ["my_first_burp_1",true,"MineDetector","B_AssaultPack_blk","O_Truck_03_device_F"] execVM "modules\AL_burpy\alias_burper.sqf";
null = ["my_first_burp_2",true,"MineDetector","B_AssaultPack_blk","O_Truck_03_device_F"] execVM "modules\AL_burpy\alias_burper.sqf";
null = ["my_first_burp_3",true,"MineDetector","B_AssaultPack_blk","O_Truck_03_device_F"] execVM "modules\AL_burpy\alias_burper.sqf";
