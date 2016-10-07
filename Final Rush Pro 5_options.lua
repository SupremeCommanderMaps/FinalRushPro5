options =
{
	{
		default = 3,
		label = "Game Mode",
		help = "Game Mode",
		key = 'opt_gamemode',
		pref = 'opt_gamemode',
		values = {
			{text = "Normal", help = "Normal", key = 0, },
			{text = "Paragon Wars", help = "Paragon Wars", key = 1, },
			{text = "Survival Versus", help = "Survival Versus", key = 2, },
			{text = "Survival Easy", help = "Survival Easy", key = 3, },
			{text = "Survival Normal", help = "Survival Standard", key = 4, },
			{text = "Survival Hard", help = "Survival Hard", key = 5, },
			{text = "Survival Insane", help = "Survival Insane", key = 6, },
		},
	},
	{
		default = 10,
		label = "Prebuilt Tents",
		help = "Disable or Set the number of Prebuilt Engineering Tents",
		key = 'opt_tents',
		pref = 'opt_tents',
		values = {
			{text = "Disabled", help = "Spawn with NO tents", key = 0, },
			{text = "1", help = "Spawn with ONE tents", key = 1, },
			{text = "2", help = "Spawn with TWO tents", key = 2, },
			{text = "3", help = "Spawn with THREE tents", key = 3, },
			{text = "4", help = "Spawn with FOUR tents", key = 4, },
			{text = "5", help = "Spawn with FIVE tents", key = 5, },
			{text = "6", help = "Spawn with SIX tents", key = 6, },
			{text = "7", help = "Spawn with SEVEN tents", key = 7, },
			{text = "8", help = "Spawn with EIGHT tents", key = 8, },
			{text = "9", help = "Spawn with NINE tents", key = 9, },
		},
	},
	{
		default = 7,
		label = "Auto Reclaim",
		help = "Auto Reclaim",
		key = 'opt_AutoReclaim',
		pref = 'opt_AutoReclaim',
		values = {
			{text = "Disabled (Wreckages On)", help = "Disabled", key = 0, },
			{text = "10 percent", help = "10 percent", key = 10, },
			{text = "15 percent", help = "15 percent", key = 15, },
			{text = "20 percent", help = "20 percent", key = 20, },
			{text = "30 percent", help = "30 percent", key = 30, },
			{text = "40 percent", help = "40 percent", key = 40, },
			{text = "50 percent", help = "50 percent", key = 50, },
			{text = "75 percent", help = "75 percent", key = 75, },
			{text = "100 percent", help = "100 percent", key = 100, },
			{text = "over 9000 percent", help = "You know you want it", key = 9001, },
		},
	},
	{
		default = 1,
		label = "Spawn Delay",
		help = "Extra time before the first enemies start spawning",
		key = 'opt_FinalRushSpawnDelay',
		pref = 'opt_FinalRushSpawnDelay',
		values = {
			{text = "Disabled", help = "Disabled", key = 0, },
			{text = "30 seconds", help = "30 seconds", key = 30, },
			{text = "1 minute", help = "1 minute", key = 60, },
			{text = "2 minutes", help = "2 minutes", key = 120, },
			{text = "3 minutes", help = "3 minutes", key = 180, },
			{text = "5 minutes", help = "5 minutes", key = 300, },
			{text = "7 minutes", help = "7 minutes", key = 420, },
			{text = "10 minutes", help = "10 minutes", key = 600, },
			{text = "15 minutes", help = "15 minutes", key = 900, },
			{text = "24 hours", help = "Welcome to SimCity", key = 86400, },
		},
	},
	{
		default = 2,
		label = "Aggression Tracking",
		help = "Aggressive players get more units. If artilery is not disabled, the extra units will mainly be artilery. Things that generate agression: reaching tech 2, reaching tech 3, creating your first experimental, building mexes, building massfabs, building nukes, building arty and walking your ACU to the center.",
		key = 'opt_FinalRushAggression',
		pref = 'opt_FinalRushAggression',
		values = {
			{text = "Disabled", help = "Disabled", key = 0, },
			{text = "Enabled", help = "Enabled", key = 1, },
		},
	},
	{
		default = 1,
		label = "Player Air",
		help = "The degree to which air should be enabled for the players",
		key = 'opt_FinalRushAir',
		pref = 'opt_FinalRushAir',
		values = {
			{text = "Disabled", help = "No air units at all", key = 0, },
			{text = "Scouts and Transports", help = "Scouts and transports only", key = 1, },
			{text = "Enabled", help = "All air units are enabled", key = 2, },
		},
	},
	{
		default = 2,
		label = "Player Navy",
		help = "Enable or disable navy building for the players",
		key = 'opt_FinalRushNavy',
		pref = 'opt_FinalRushNavy',
		values = {
			{text = "Disabled", help = "Disabled", key = 0, },
			{text = "Enabled", help = "Enabled", key = 1, },
		},
	},
	{
		default = 1,
		label = "Player Teleportation",
		help = "Player Teleportation",
		key = 'opt_Teleport',
		pref = 'opt_Teleport',
		values = {
			{text = "Enabled", help = "Enabled", key = 0, },
			{text = "Disabled", help = "Disabled", key = 1, },
		},
	},
	{
		default = 1,
		label = "Player Tech Delay",
		help = "Players start with only tech 1. Higher tech tiers get unlocked at the specified interval. This does not effect the spawned enemy units.",
		key = 'opt_timeunlocked',
		pref = 'opt_timeunlocked',
		values = {
			{text = "Disabled", help = "Disabled", key = 0, },
			{text = "1 minute", help = "1 minute", key = 60, },
			{text = "2 minutes", help = "2 minutes", key = 120, },
			{text = "3 minutes", help = "3 minutes", key = 180, },
			{text = "5 minutes", help = "5 minutes", key = 300, },
			{text = "10 minutes", help = "10 minutes", key = 600, },
			{text = "15 minutes", help = "15 minutes", key = 900, },
			{text = "20 minutes", help = "20 minutes", key = 1200, },
			{text = "24 hours", help = "Who needs tech anyway", key = 86400, },
		},
	},
	{
		default = 1,
		label = "Enemy T2 MMLs",
		help = "T2 MMLs",
		key = 'opt_t2tml',
		pref = 'opt_t2tml',
		values = {
			{text = "Enabled", help = "Enabled", key = 0, },
			{text = "Disabled", help = "Disabled", key = 1, },
		},
	},
	{
		default = 1,
		label = "Enemy Mobile T3 Artillery",
		help = "Mobile T3 Artillery",
		key = 'opt_t3arty',
		pref = 'opt_t3arty',
		values = {
			{text = "Enabled", help = "Disabled", key = 0, },
			{text = "Disabled", help = "Disabled", key = 1, },
		},
	},
	{
		default = 1,
		label = "Enemy Sniper Bots",
		help = "Sniper Bots",
		key = 'opt_snipers',
		pref = 'opt_snipers',
		values = {
			{text = "Enabled", help = "Disabled", key = 0, },
			{text = "Disabled", help = "Disabled", key = 1, },
		},
	},
};