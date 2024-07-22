/*
//#include "script_component.hpp"

#ifdef description
    class GVAR(settings) {
        #include "settings.hpp"
    };
#endif

#ifdef description_XEH_PreInit
	class ANOMALIES {
		init = "'' call compile preprocessFileLineNumbers 'modules\anomalies\preInit.sqf'";
		clientInit = "'' call compile preprocessFileLineNumbers 'modules\anomalies\preInitClient.sqf'";
		serverInit = "'' call compile preprocessFileLineNumbers 'modules\anomalies\preInitServer.sqf'";
	};
#endif

#ifdef description_XEH_PostInit
	class ANOMALIES {
		init = "'' call compile preprocessFileLineNumbers 'modules\gas\postInit.sqf'";
		clientInit = "'' call compile preprocessFileLineNumbers 'modules\anomalies\postInitClient.sqf'";
		serverInit = "'' call compile preprocessFileLineNumbers 'modules\anomalies\postInitServer.sqf'";
	};
#endif

#ifdef description_sounds
	#include "sounds.hpp"
#endif

#ifdef description_external_functions
	#include "functions\CfgFunctions.hpp"
#endif

//#undef ANOMALIES
*/

#include "farty\root.sqf"