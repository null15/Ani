How to fix new choice taken maps:

First: Go to DamageEngine, at the end of file comment out the `hook . . . PreSetup`

Second: Go to Hinata Category, then Mana Drain, on `Events`, disable it.

Third: Go to category Modules, then UnitDex and find `TriggerRegisterVariableEvent` and comment it out.

Four: Go to `MapInit2` and remove this line `call ExecuteFunc("jasshelper__initstructs514804781")`

Five: Go to header of map, add these lines:

integer array bannsCount
player array teamCaptain
player array captain
unitpool randomPool= CreateUnitPool()
trigger gg_trg_At_0s

Six: Add NZCP `endglobals` part into map header (w3x).

Done, rest is KB3D warnings that they probably has no effect.



Note:/ You might have to disable the new heroes in the GUI, as they have wrong IDs.