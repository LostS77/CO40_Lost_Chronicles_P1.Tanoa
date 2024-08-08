#include "..\cfg\cfgDefines.cpp"
if ( SAF_MISSION_SET(breach_useBreach) < 1 ) exitWith {};
[] spawn {
	private _langFile = format["modules\sushi_scripts\breach\locale\%1.sqf",SAF_app_lang];

	call compile preProcessFileLineNumbers _langFile;

	waitUntil { time > 3 };
	private _zeroes = ["dvere","dvere1l","dvere1r","dvere2l","dvere2r","dvere_spodni_r","dvere_spodni_l","dvere_vrchni","vrata1","vrata2","vratal1","vratar1","vratal2","vratar2","vratal3","vratar3"];
	private _ones = ["door","door_1_1","door_1_2","door_2_1","door_2_2","dvere1","dvere2","dvere3","dvere4","dvere5","dvere6","dvere7","dvere8","dvere9","dvere10","dvere11","dvere12","dvere13","dvere14","doorl","doorr","door_01","door01_a","door_02","door02_a","door_03","door_04","door_05","door_06","door_1a","door_1","door_2"];
	private _twos = ["door_1_rot","door_3_rot","door_2_rot","door_4_rot","door_5_rot","door_6_rot","door_7_rot"];
	//-->Handle buildings
	{
		private _arr = _x;
		private _zone = _arr select 0;
		private _locAll = _arr select 1;
		private _closeDoors = _arr select 2;

		private _center = getMarkerPos _zone;
		private _size = markerSize _zone;
		private _rX = _size select 0;
		private _rY = _size select 1;
		private _r = ((_rX + _rY) /2);

		private _buildingsArr = nearestObjects [_center,["house","Cargo_Patrol_base_F","Cargo_Tower_base_F","Cargo_HQ_base_F"],_r];
		if (count _buildingsArr > 0) then {
			{
				SAF_MISSION_SET(breach_Buildings) pushBack _x;
				SAF_MISSION_SET(breach_BuildingsOpt) pushBack [_x,_locAll];

				if (_closeDoors > 0) then {
					 _y = _x;
					 {_y animate [format ["%1", _x], SAF_MISSION_SET(breach_closeFix)]} foreach _zeroes;
					 {_y animate [format ["%1", _x], SAF_MISSION_SET(breach_closeFix)]} foreach _ones;
					 {_y animate [format ["%1", _x], SAF_MISSION_SET(breach_closeFix)]} foreach _twos;
					 {_y animate [format ["%1", _x], SAF_MISSION_SET(breach_closeFix)]} foreach SAF_MISSION_SET(breach_customDoorNames);
				};
			} foreach _buildingsArr;
		};

	} foreach SAF_MISSION_SET(breach_Zones);

	//-->Handle gun breach
	if (SAF_MISSION_SET(breach_allowGunBreach) > 0 && !isDedicated) then {
		//-->Add event handler
		player addEventHandler ["FIRED",saf_fnc_breachFiredEh];
	};

	//-->Handle other actions

	if (SAF_MISSION_SET(breach_allowLockPick) > 0 && !isDedicated) then {
	private _cond = " _doorArr = if (cursorTarget isKindOf 'house') then { [cursorTarget,1] call saf_fnc_breachGetTargetDoors } else { [] }; count _doorArr > 0";
	private _actionTxt = format["<t color='%1'>%2</t>",SAF_app_colorBase,SAF_STR_BREACH_CHECK];
	player addAction [_actionTxt,{ [] call SAF_fnc_breachCheckLock; },[],5,false,true,"",_cond];

	private _cond = "_doorStatus = 0; if (('ToolKit' in items player || 'ACE_key_lockpick' in items player) && cursorTarget isKindOf 'house' ) then { _doorArr = if (cursorTarget isKindOf 'house') then { [cursorTarget,1] call saf_fnc_breachGetTargetDoors } else { [] }; _doorStatus =  if (count _doorArr > 0) then { [] call SAF_fnc_breachCheckDoor } else { 0 }; _doorStatus = if(_doorStatus == 1) then { [] call SAF_fnc_breachDoorIsChecked } else { 0 }; };  _doorStatus == 1";
	//private _actionTxt = format["<t color='%1'>%2</t>",SAF_app_colorBase,SAF_STR_BREACH_PICKLOCK];
	private _actionTxt = format["<t color='#D8DE1F'>%1</t>",SAF_STR_BREACH_PICKLOCK];
	player addAction [_actionTxt,SAF_fnc_breachPickLock,[],5,false,true,"",_cond];
	};

	if (SAF_MISSION_SET(breach_allowExplosiveBreach) > 0 && !isDedicated) then {
	private _cond = "_doorStatus = 1; if ( cursorTarget isKindOf 'house' ) then { if ([player] call SAF_fnc_breachHasExplosives) then {_doorArr = if (cursorTarget isKindOf 'house') then { [cursorTarget,1] call saf_fnc_breachGetTargetDoors } else { [] }; _doorStatus =  if (count _doorArr > 0) then { [[],true] call SAF_fnc_breachCheckDoor } else { 1 }; }; }; _doorStatus == 0";
	private _actionTxt = format["<t color='%1'>%2</t>",SAF_app_colorBase,SAF_STR_BREACH_PLANT];
	player addAction [_actionTxt,SAF_fnc_breachSetExplosive,[],5,false,true,"",_cond];
	};
};