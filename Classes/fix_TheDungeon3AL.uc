//=============================================================================
// TheDungeon]l[AL - lilfvb@gmail.com - Ulv 2025
//=============================================================================
class fix_TheDungeon3AL extends MapFix config(MapFixes);

var bool bTweaked;
var() config bool bEnabled;
var() config bool bDebug;

function BeginPlay()
{
	local string S;

    Super.BeginPlay();
    if (!bTweaked)
    {
        bTweaked = True;
		S = Left(Self, InStr(Self, "."));
        if (bEnabled && S~="AS-TheDungeon]L[AL")
        {
			
            spawnDungeon3Items();
        }
    }
}

function spawnDungeon3Items() {
	local ItemEventSpawner Spawner;

	// Spawn armor at boots 10 seconds after skull lock.
	Spawner = Spawn(class'ItemEventSpawner',,, vect(11218.932617, 11338.771484, 1018.700195));
	if (Spawner != None)
	{
		Spawner.SpawnClass = class'Armor2';
		Spawner.Tag = 'skullboom';
		Spawner.SpawnDelay = 10.0;
		Spawner.Rotation.Pitch = 12;
        Spawner.Rotation.Roll  = 3456;
        Spawner.Rotation.Yaw   = 15364;
	}
}

defaultproperties
{
     bEnabled=True
}