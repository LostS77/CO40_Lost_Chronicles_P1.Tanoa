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
        ["\A3\data_f\cl_basic.p3d", 1, 1, 1, 0], // Particle texture and params
        "", // Animation name (empty for none)
        "Billboard", // Particle shape
        1, // Animation phase
        10, // Animation speed
        [0, 0, 0], // Initial position
        [0, 0, 0.5], // Initial velocity
        0, // Rotation velocity
        1.275, // Weight
        1, // Volume
        0, // Rubbing
        [0.075], // Size over time
        [[1, 0.5, 0, 0.3], [1, 0.5, 0, 0.15], [1, 0.5, 0, 0]], // Color over time
        [0.1], // Animation speed over time
        1, // Random direction period
        1, // Random direction intensity
        "", // Optional animation frame index (empty for none)
        "", // Optional random frame animation index (empty for none)
        _pos // Particle position
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
            ["\A3\data_f\cl_basic.p3d", 1, 1, 1, 0], // Particle texture and params
            "", // Animation name (empty for none)
            "Billboard", // Particle shape
            1, // Animation phase
            10, // Animation speed
            [0, 0, 0], // Initial position
            [0, 0, 0.5], // Initial velocity
            0, // Rotation velocity
            1.275, // Weight
            1, // Volume
            0, // Rubbing
            [0.075], // Size over time
            [[1, 0.5, 0, 0.3], [1, 0.5, 0, 0.15], [1, 0.5, 0, 0]], // Color over time
            [0.1], // Animation speed over time
            1, // Random direction period
            1, // Random direction intensity
            "", // Optional animation frame index (empty for none)
            "", // Optional random frame animation index (empty for none)
            _offset // Particle position
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