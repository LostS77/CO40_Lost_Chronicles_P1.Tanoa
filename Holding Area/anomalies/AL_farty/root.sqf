//#include "script_component.hpp"

#ifdef description_sounds
	#include "sounds.hpp"
#endif

/*
#ifdef description_XEH_PreInit
	class COMPONENT {
		init = "'' call compile preprocessFileLineNumbers 'modules\anomalies\AL_farty\preInit.sqf'";
	};
#endif
*/

#ifdef description_XEH_PostInit
	class ALFARTY {
		init = "'' call compile preprocessFileLineNumbers 'modules\anomalies\AL_farty\init.sqf'";
	};
#endif

//#ifdef description_external_functions
//	#include "CfgFunctions.hpp"
//#endif

//#undef COMPONENT