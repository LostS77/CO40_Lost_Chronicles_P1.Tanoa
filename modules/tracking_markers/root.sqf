#include "script_component.hpp"

#ifdef description_XEH_PreInit
	class COMPONENT {
		clientInit = "'' call compile preprocessFileLineNumbers 'modules\tracking_markers\preInitClient.sqf'";
	};
#endif

#ifdef description_XEH_PostInit
	class COMPONENT {
		serverInit = "'' call compile preprocessFileLineNumbers 'modules\tracking_markers\postInitServer.sqf'";
	};
#endif

#ifdef description_external_functions
	#include "functions\CfgFunctions.hpp"
#endif

#undef COMPONENT
