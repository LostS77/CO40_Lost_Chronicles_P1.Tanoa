class breach_safplug
{

		file = "modules\sushi_scripts\breach\fncs";
		class breachGetSettings { preInit = 1; };
		class breachPostInit { postInit = 1; };
		
		class breachFiredEh {};
		class breachGetTargetDoors {};
		class breachOpenDoor {};
		
		class breachGetBldDoorArr {};
		class breachLockDoor {};
		class breachManageLockedDoor {};
		class breachCheckDoor {};
		class breachCheckLock {};
		class breachDoorIsChecked {};
		class breachPickLock {};
		class breachSetExplosive {};
		class breachHasExplosives {};
		class breachDetonate {};
		class breachStun {};
};