//=============================================================================
// SaqqaraPE_beta4a1 - lilfvb@gmail.com - Ulv 2026
//=============================================================================
class fix_SaqqaraPE_beta4a1 extends MapFix config(MapFixes);

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
        if (bEnabled && S~="AS-SaqqaraPE_beta4a1")
        {
			
            spawnProjectItems();
        }
    }
}

function spawnProjectItems() {
	local Vector V;
    local Rotator R;
    local UT_Eightball RL;

	// Spawn rocketlauncher on bridge below panel shield switch.
	V.X = -422.773407;
    V.Y = 3849.777588;
    V.Z = -151.000000;
    R.Pitch = -332;
    R.Roll = 0;
    R.Yaw = -11696;
    RL = Spawn(class'UT_Eightball',,, V, R);
    RL.bRotatingPickup = False;
    RL.SetWeaponStay();
}

defaultproperties
{
     bEnabled=True
}