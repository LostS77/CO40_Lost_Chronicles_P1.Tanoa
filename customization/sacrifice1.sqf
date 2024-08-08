// Sacrifice 1

// Parameters: unit to affect
params ["_unit"];

// Get the position of the AI unit
_unitPos = getPos _unit;

// Function to create fire effect
private _createFire = {
	params ["_pos"];
	// Create multiple fire objects around the position
	//_fire1 = createVehicle ["FirePlace_burning_F", _pos, [], 0, "CAN_COLLIDE"];
	_fire1 = "#particlesource" createVehicleLocal _pos;
	_fire1 setParticleClass "MediumFire";
	_fire2 = createVehicle ["FirePlace_burning_F", [_pos select 0 + 1, _pos select 1, _pos select 2], [], 0, "CAN_COLLIDE"];
	_fire3 = createVehicle ["FirePlace_burning_F", [_pos select 0 - 1, _pos select 1, _pos select 2], [], 0, "CAN_COLLIDE"];
	_fire4 = createVehicle ["FirePlace_burning_F", [_pos select 0, _pos select 1 + 1, _pos select 2], [], 0, "CAN_COLLIDE"];
	_fire5 = createVehicle ["FirePlace_burning_F", [_pos select 0, _pos select 1 - 1, _pos select 2], [], 0, "CAN_COLLIDE"];
	[_fire1, _fire2, _fire3, _fire4, _fire5]
};

// Create fire effects on the AI unit
_fires = [_unitPos] call _createFire;

// Wait for 5 seconds
sleep 5;

//Delete the fire effects
{ deleteVehicle _x } forEach _fires;

// Delete the AI unit
deleteVehicle _unit;

// Create bones at the AI unit's position
_bones = createVehicle ["Land_Bones_F", _unitPos, [], 0, "NONE"];