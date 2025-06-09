class ItemEventSpawner extends Actor;

var() class<Actor> SpawnClass;
var() float SpawnDelay; // Delay in seconds (default 0, set to 10 for 10s delay)
var bool bPendingSpawn;

function Trigger(actor Other, pawn EventInstigator)
{
    if (SpawnDelay > 0)
    {
        bPendingSpawn = true;
        SetTimer(SpawnDelay, false);
    }
    else
    {
        DoSpawn();
    }
}

function Timer()
{
    if (bPendingSpawn)
        DoSpawn();
}

function DoSpawn()
{
    local Actor A;
    A = Spawn(SpawnClass,,, Location);
}

defaultproperties
{
    SpawnClass=class'Armor2'
    Tag=DP2
    bHidden=True
    bCollideActors=False
    bCollideWorld=False
    SpawnDelay=0.0 // Set to 10.0 for 10 seconds
}