//=============================================================================
// TheProjectEXT5 - lilfvb@gmail.com - Ulv 2026
//=============================================================================
class fix_TheProjectEXT5 extends MapFix config(MapFixes);

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
        if (bEnabled && S~="AS-TheProjectEXT5")
        {
			
            spawnProjectItems();
        }
    }
}

function spawnProjectItems() {
	local Vector V;
    local Rotator R;
    local UT_Eightball RL;
    local RocketPack RP;

	// Spawn rocketlauncher on bridge below panel shield switch.
	V.X = -1227.281006;
    V.Y = -5216.093750;
    V.Z = 1007.294189;
    R.Pitch = 0;
    R.Roll = 0;
    R.Yaw = -48884;
    RL = Spawn(class'UT_Eightball',,, V, R);
    RL.bRotatingPickup = False;
    RL.SetWeaponStay();

    // Spawn rocketlauncher ammo pack near panel shield switch.
    V.X = -1232.739258;
    V.Y = -5205.072266;
    V.Z = 1268.972900;
    R.Pitch = 0;
    R.Roll = 0;
    R.Yaw = 0;
	RP = Spawn(class'RocketPack',,, V, R);
}

defaultproperties
{
     bEnabled=True
}