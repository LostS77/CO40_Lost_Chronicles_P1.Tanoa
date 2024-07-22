//#include "script_component.hpp"

#ifdef description
    class GVAR(settings) {
        #include "settings.hpp"
    };
#endif

/*
#ifdef description_XEH_PreInit
	class ANOMALIES {
		init = "'' call compile preprocessFileLineNumbers 'modules\anomalies\farty\preInit.sqf'";
		clientInit = "'' call compile preprocessFileLineNumbers 'modules\anomalies\farty\preInitClient.sqf'";
		serverInit = "'' call compile preprocessFileLineNumbers 'modules\anomalies\farty\preInitServer.sqf'";
	};
#endif
*/

/*
#ifdef description_XEH_PostInit
	class ANOMALIES {
		init = "'' call compile preprocessFileLineNumbers 'modules\anomalies\farty\postInit.sqf'";
		clientInit = "'' call compile preprocessFileLineNumbers 'modules\anomalies\farty\postInitClient.sqf'";
		serverInit = "'' call compile preprocessFileLineNumbers 'modules\anomalies\farty\postInitServer.sqf'";
	};
#endif
*/

#ifdef description_sounds
	#include "sounds.hpp"
#endif

#ifdef description_external_functions
	#include "functions\CfgFunctions.hpp"
#endif

//#undef ANOMALIES