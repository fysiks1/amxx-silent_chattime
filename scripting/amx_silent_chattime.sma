#include <amxmodx>

public plugin_init()
{
	register_plugin("Silent Chattime", "0.1", "Fysiks")
	register_event("30", "eventIntermission","a")
	register_cvar("silent_chattime", "1")
}

public eventIntermission()
{
	if( get_cvar_num("silent_chattime") )
	{
		set_cvar_num("sv_voiceenable", 0)
	}
}

public plugin_end()
{
	set_cvar_num("sv_voiceenable", 1)
}
