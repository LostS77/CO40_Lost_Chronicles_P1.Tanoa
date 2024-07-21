#include "script_component.hpp"

#ifdef description_external_functions
	#include "functions\CfgFunctions.hpp"
#endif

#ifdef description_XEH_PostInit
	class COMPONENT {
		serverInit = "'' call compile preprocessFileLineNumbers 'modules\anomalies\AL_farty\postInitServer.sqf'";
	};
#endif

//#ifdef description
//    class GVAR(settings) {
//        #include "settings.hpp"
//    };
//#endif

#undef COMPONENT
