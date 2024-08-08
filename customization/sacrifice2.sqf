// fireEffect.sqf

// Parameters: unit to affect
params ["_unit"];

// Get the position of the AI unit
_unitPos = getPos _unit;

// Function to create fire particle effects
private _createFireParticles = {
    params ["_pos"];

    // Define a custom particle effect
    private _particleEffect = "#particlesource" createVehicleLocal _pos;

    _particleEffect setParticleParams [
        ["\A3\data_f\cl_basic.p3d", 1, 1, 1, 0],
        "", "Billboard", 1, 10,
        [0, 0, 0],     // initial position
        [0, 0, 0.5],   // initial velocity
        0, 1.275, 1, 0, 0.075,
        [0.1, 0.5, 1.2], // size over time
        [[1,0.5,0,0.3], [1,0.5,0,0.15], [1,0.5,0,0]], // color over time
        [0.1],         // animation speed
        1, 1, "", "", _pos
    ];

    _particleEffect setDropInterval 0.01;

    // Repeat the process for additional fires if needed
    private _particleEffects = [_particleEffect];

    // Create additional fire particle effects around the position
    for "_i" from 1 to 4 do {
        _offset = switch (_i) do {
            case 1: {[_pos select 0 + 1, _pos select 1, _pos select 2]};
            case 2: {[_pos select 0 - 1, _pos select 1, _pos select 2]};
            case 3: {[_pos select 0, _pos select 1 + 1, _pos select 2]};
            case 4: {[_pos select 0, _pos select 1 - 1, _pos select 2]};
        };

        _particleEffect = "#particlesource" createVehicleLocal _offset;
        _particleEffect setParticleParams [
            ["\A3\data_f\cl_basic.p3d", 1, 1, 1, 0],
            "", "Billboard", 1, 10,
            [0, 0, 0],
            [0, 0, 0.5],
            0, 1.275, 1, 0, 0.075,
            [0.1, 0.5, 1.2],
            [[1,0.5,0,0.3], [1,0.5,0,0.15], [1,0.5,0,0]],
            [0.1],
            1, 1, "", "", _offset
        ];
        _particleEffect setDropInterval 0.01;
        _particleEffects pushBack _particleEffect;
    };

    _particleEffects
};

// Create fire particle effects on the AI unit
_fires = [_unitPos] call _createFireParticles;

// Apply damage to the AI unit
_unit setDamage 1;

// Wait for 5 seconds
sleep 5;

// Delete the fire particle effects
{ deleteVehicle _x } forEach _fires;

// Delete the AI unit
deleteVehicle _unit;

// Create bones at the AI unit's position
_bones = createVehicle ["Land_Bones_F", _unitPos, [], 0, "NONE"];