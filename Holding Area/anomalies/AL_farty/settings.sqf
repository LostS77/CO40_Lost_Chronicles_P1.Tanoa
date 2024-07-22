//AL_farty Settings go in here

/*
_marker				- string, the name of the marker placed where you want Farty to be
_class_name			- string, the name of the item you want as protective gear
_anomalyVSarea		- boolean, if is true a toxic field is generated along with the anomaly, if false only the toxic field is created
_radius				- number, the radius of the toxic field
_damage_value		- number, the amount of damage the units inside toxic area will take
_farty_trail		- boolean, if is true Farty will leave a trail of toxic puddles while moving
_random_puddles		- number, must be integer and must be bigger than 0, if is negative will be ignored, is the number of random puddles will be generated inside toxic field
*/
null = ["farty_1","H_PilotHelmetFighter_B",true,80,0.05,true,20] execVM "modules\anomalies\AL_farty\area_toxic_ini.sqf";
null = ["farty_2","H_PilotHelmetFighter_B",true,50,0.05,true,7] execVM "modules\anomalies\AL_farty\area_toxic_ini.sqf";
null = ["farty_3","H_PilotHelmetFighter_B",true,50,0.05,true,7] execVM "modules\anomalies\AL_farty\area_toxic_ini.sqf";
null = ["farty_4","H_PilotHelmetFighter_B",true,50,0.05,true,7] execVM "modules\anomalies\AL_farty\area_toxic_ini.sqf";
null = ["farty_5","H_PilotHelmetFighter_B",true,50,0.05,true,7] execVM "modules\anomalies\AL_farty\area_toxic_ini.sqf";
null = ["farty_6","H_PilotHelmetFighter_B",true,50,0.05,true,7] execVM "modules\anomalies\AL_farty\area_toxic_ini.sqf";