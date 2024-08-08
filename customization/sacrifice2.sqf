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
        ["\A3\data_f\ParticleEffects\Fire\FireSmall", 16, 12, 8, 0], // Particle texture and params
        "", // Animation name (empty for none)
        "Billboard", // Particle shape
        1, // Animation phase
        10, // Animation speed
        [0, 0, 0], // Initial position offset
        [0, 0, 0.5], // Initial velocity to make flames rise
        0, // Rotation velocity
        1, // Weight (higher weight for upward movement)
        0.1, // Volume
        0.1, // Rubbing (helps simulate air resistance)
        [0.5, 2, 3, 5], // Size over time to create a flickering effect
        [[1, 0.8, 0.5, 0.8], [1, 0.6, 0.2, 0.6], [1, 0.2, 0, 0.2], [1, 0.1, 0, 0]], // Color over time to simulate burning out
        [0.1], // Animation speed over time
        1, // Random direction period
        0.1, // Random direction intensity to add some randomness to the flames
        "", // Optional animation frame index (empty for none)
        "", // Optional random frame animation index (empty for none)
        _pos // Particle position
    ];

    _particleEffect setDropInterval 0.005; // Faster drop interval for more intense effect

    _particleEffect
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