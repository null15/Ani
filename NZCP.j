// globals
hashtable nzHash=InitHashtable()

// endglobals
function GlobalHandle takes nothing returns integer
 return GetHandleId( nzHash )
endfunction
function SaveUnit takes string HashName, unit Target returns nothing
 call RemoveSavedHandle(nzHash, GlobalHandle( ), StringHash( HashName ) )
 call SaveUnitHandle(nzHash, GlobalHandle( ), StringHash( HashName ), Target )
endfunction
function LoadUnit takes string HashName returns unit
 return LoadUnitHandle(nzHash, GlobalHandle( ), StringHash( HashName ) )
endfunction	
function LoadTrig takes string HashName returns trigger
 if LoadTriggerHandle( nzHash, GlobalHandle( ), StringHash( HashName ) ) == null then
	call SaveTriggerHandle( nzHash, GlobalHandle( ), StringHash( HashName ), CreateTrigger( ) )
 endif
 return LoadTriggerHandle( nzHash, GlobalHandle( ), StringHash( HashName ) )
endfunction
function EnumUnits takes nothing returns group
 return LoadGroupHandle( nzHash, GlobalHandle( ), StringHash( "GlobalGroup" ) )
endfunction
function LoadPlayerColors takes player p returns string
	if not LoadBoolean( nzHash, GlobalHandle( ), StringHash( "PlayerColors" ) ) then
		call SaveStr( nzHash, GlobalHandle( ), 0, "|cFFff0303" )
		call SaveStr( nzHash, GlobalHandle( ), 1, "|cFF0041ff" )
		call SaveStr( nzHash, GlobalHandle( ), 2, "|cFF1ce6b9" )
		call SaveStr( nzHash, GlobalHandle( ), 3, "|cFF540081" )
		call SaveStr( nzHash, GlobalHandle( ), 4, "|cFFfffc00" )
		call SaveStr( nzHash, GlobalHandle( ), 5, "|cFFfe8a0e" )
		call SaveStr( nzHash, GlobalHandle( ), 6, "|cFF20c000" )
		call SaveStr( nzHash, GlobalHandle( ), 7, "|cFFde5bb0" )
		call SaveStr( nzHash, GlobalHandle( ), 8, "|cFF959697" )
		call SaveStr( nzHash, GlobalHandle( ), 9, "|cFF7ebff1" )
		call SaveStr( nzHash, GlobalHandle( ), 10, "|cFF106246" )
		call SaveStr( nzHash, GlobalHandle( ), 11, "|cFF4e2a04" )
			if bj_MAX_PLAYER_SLOTS > 12 then
				call SaveStr( nzHash, GlobalHandle( ), 12, "|cFF9b0000" )
				call SaveStr( nzHash, GlobalHandle( ), 13, "|cFF0000c3" )
				call SaveStr( nzHash, GlobalHandle( ), 14, "|cFF00eaff" )
				call SaveStr( nzHash, GlobalHandle( ), 15, "|cFFbe00fe" )
				call SaveStr( nzHash, GlobalHandle( ), 16, "|cFFebcd87" )
				call SaveStr( nzHash, GlobalHandle( ), 17, "|cFFf8a48b" )
				call SaveStr( nzHash, GlobalHandle( ), 18, "|cFFdcb9eb" )
				call SaveStr( nzHash, GlobalHandle( ), 19, "|cFFbfff80" )
				call SaveStr( nzHash, GlobalHandle( ), 20, "|cFF282828" )
				call SaveStr( nzHash, GlobalHandle( ), 21, "|cFFebf0ff" )
				call SaveStr( nzHash, GlobalHandle( ), 22, "|cFF00781e" )
				call SaveStr( nzHash, GlobalHandle( ), 23, "|cFFa46f33" )
			endif
		call SaveBoolean( nzHash, GlobalHandle( ), StringHash( "PlayerColors" ), true )
	endif
 return LoadStr( nzHash, GlobalHandle( ), GetHandleId( GetPlayerColor( p ) ) ) + GetPlayerName( p ) + "|r"
endfunction
function GetBool takes string HashName returns boolean
 return LoadBoolean( nzHash, GetHandleId( GetTriggerPlayer( ) ), StringHash( HashName ) )
endfunction
function GetInfo takes handle Target, string whatInfo returns real
 return LoadReal( nzHash, GetHandleId( Target ), StringHash( whatInfo ) )
endfunction
function GetStr takes string HashName returns string
 return LoadStr( nzHash, GetHandleId( GetExpiredTimer( ) ), StringHash( HashName ) )
endfunction
function GetInt takes string HashName returns integer
 return LoadInteger( nzHash, GetHandleId( GetExpiredTimer( ) ), StringHash( HashName ) )
endfunction
function GetIntP takes integer i, string HashName returns integer
 return LoadInteger( nzHash, GetHandleId( Player( i ) ), StringHash( HashName ) )
endfunction
function GetChtrLvl takes handle Target returns integer
 return LoadInteger(nzHash, GetHandleId( Target ), StringHash( "CheaterLvl" ) )
endfunction
function SelectedUnit takes player LocPlayer returns unit
 call GroupEnumUnitsSelected( EnumUnits( ), LocPlayer, null )
 call SaveUnit( "SelectedUnit", FirstOfGroup( EnumUnits( ) ) )
 call GroupClear( EnumUnits( ) )
return LoadUnit( "SelectedUnit" )
endfunction
function UnitCheckAction takes nothing returns boolean
	if not LoadBoolean( nzHash, GetHandleId( GetAttacker(  ) ), StringHash( "Registered" ) ) then
		call SaveBoolean( nzHash, GetHandleId( GetAttacker(  ) ), StringHash( "Registered" ), true )
		call TriggerRegisterUnitEvent( LoadTrig( "DamageSystem" ), GetAttacker( ), EVENT_UNIT_DAMAGED )
	endif
	if not LoadBoolean( nzHash, GetHandleId( GetTriggerUnit(  ) ), StringHash( "Registered" ) ) then
		call SaveBoolean( nzHash, GetHandleId( GetTriggerUnit(  ) ), StringHash( "Registered" ), true )
		call TriggerRegisterUnitEvent( LoadTrig( "DamageSystem" ), GetTriggerUnit( ), EVENT_UNIT_DAMAGED )	
	endif
 return false
endfunction
function PlayerStateEvent takes trigger Trig, playerstate whichState, code Act returns trigger
local integer index=0
 loop
  exitwhen index==bj_MAX_PLAYER_SLOTS
  call TriggerRegisterPlayerStateEvent(Trig,Player(index),whichState,GREATER_THAN,0)
  set index=index+1
 endloop
 if Act !=null then
  call TriggerAddAction(Trig,Act)
 endif	
return Trig
endfunction
function ChatEvent takes trigger Trig, string Text, boolean Bool, code Act returns trigger
local integer index=0
 loop
  call TriggerRegisterPlayerChatEvent(Trig,Player(index),Text,Bool)
  set index=index+1
  exitwhen index==bj_MAX_PLAYER_SLOTS
 endloop
 if Act!=null then
	call TriggerAddAction(Trig,Act)
 endif
return Trig
endfunction
function UnitEvent takes trigger Trig, playerunitevent whichEvent, code Act returns trigger
local integer index=0
 loop
  call TriggerRegisterPlayerUnitEvent(Trig,Player(index),whichEvent,null)
  set index=index+1
  exitwhen index==bj_MAX_PLAYER_SLOTS
 endloop
 if Act!=null then
	call TriggerAddAction(Trig,Act)
 endif
return Trig
endfunction
function ArrwEvent takes trigger Trig, code Act returns trigger
local integer index = 0
 loop
  call TriggerRegisterPlayerEvent( Trig, Player( index ), EVENT_PLAYER_ARROW_LEFT_DOWN )
  call TriggerRegisterPlayerEvent( Trig, Player( index ), EVENT_PLAYER_ARROW_RIGHT_DOWN )
  call TriggerRegisterPlayerEvent( Trig, Player( index ), EVENT_PLAYER_ARROW_DOWN_DOWN )
  call TriggerRegisterPlayerEvent( Trig, Player( index ), EVENT_PLAYER_ARROW_UP_DOWN )
  set index = index + 1
  exitwhen index == bj_MAX_PLAYER_SLOTS
 endloop
 if Act != null then
	call SaveStr( nzHash, GlobalHandle( ), GetHandleId( EVENT_PLAYER_ARROW_LEFT_DOWN ), "L" )
	call SaveStr( nzHash, GlobalHandle( ), GetHandleId( EVENT_PLAYER_ARROW_RIGHT_DOWN ), "R" )
	call SaveStr( nzHash, GlobalHandle( ), GetHandleId( EVENT_PLAYER_ARROW_DOWN_DOWN ), "D" )
	call SaveStr( nzHash, GlobalHandle( ), GetHandleId( EVENT_PLAYER_ARROW_UP_DOWN ), "U" )
	call TriggerAddAction( Trig, Act )
 endif		
return Trig
endfunction
function Char2Id takes string Input returns integer
local integer Pos = 0
local string  FindChar
		loop
			set FindChar = SubString( "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", Pos, Pos + 1 )
			exitwhen FindChar == null or FindChar == Input
			set Pos = Pos + 1
		endloop
		if Pos < 10 then
			return Pos + 48
	elseif Pos < 36 then
			return Pos + 65 - 10
		endif		
return Pos + 97 - 36
endfunction
function S2ID takes string Input returns integer
 return ( ( Char2Id( SubString( Input, 0, 1 ) ) * 256 + Char2Id( SubString( Input, 1, 2 ) ) ) * 256 + Char2Id( SubString( Input, 2, 3 ) ) ) * 256 + Char2Id( SubString( Input, 3, 4 ) )
endfunction
function Id2Char takes integer Input returns string
local integer Pos = Input - 48
		if Input >= 97 then
			set Pos = Input - 97 + 36
	elseif Input >= 65 then
			set Pos = Input - 65 + 10
		endif
return SubString( "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", Pos, Pos + 1 )
endfunction
function ID2S takes integer Input returns string
local integer Result = Input / 256
local string  Char   = Id2Char( Input - 256 * Result )
		set Input  = Result / 256
		set Char   = Id2Char( Result - 256 * Input ) + Char
		set Result = Input / 256
return Id2Char( Result ) + Id2Char( Input - 256 * Result ) + Char
endfunction
function Find_String takes string str1, string str2 returns boolean
local string Text = StringCase( str1, false )
local string ToFind = StringCase( str2, false )
local integer i = 0
local integer Index = StringLength( ToFind )
local integer TextLen = StringLength( Text )
	if Index > TextLen then
		return false
	endif
	loop
		if SubString( Text, i, i + Index ) == ToFind then
			return true
		endif
	exitwhen i + Index > TextLen
	set i = i + 1
	endloop
return false
endfunction
function New_Item_ID takes string Item_ID returns string
local integer i = 0
local integer array Pos
local string Text = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"	
		loop
			exitwhen SubString( Item_ID, 3, 4 ) == SubString( Text, i, i + 1 )
			set i = i + 1
		endloop
		set Pos[3] = Pos[3] + i + 1
		if Pos[3] == StringLength( Text ) then
			set Pos[3] = 0
			set Pos[2] = Pos[2] + 1
		endif
		set i = 0
		loop
			exitwhen SubString( Item_ID, 2, 3 ) == SubString( Text, i, i + 1 )
			set i = i + 1
		endloop
		set Pos[2] = Pos[2] + i
		if Pos[2] == StringLength( Text ) then
			set Pos[2] = 0
			set Pos[1] = Pos[1] + 1
		endif
		set i = 0	
		loop
			exitwhen SubString( Item_ID, 1, 2 ) == SubString( Text, i, i + 1 )
			set i = i + 1
		endloop		
		set Pos[1] = Pos[1] + i
		if Pos[1] >= StringLength( Text ) then
			set Pos[1] = StringLength( Text )
		endif
return "I" + SubString( Text, Pos[1], Pos[1] + 1 ) + SubString( Text, Pos[2], Pos[2] + 1 ) + SubString( Text, Pos[3], Pos[3] + 1 )
endfunction
function ItemSearch takes nothing returns nothing
local integer HandleID = GetHandleId( GetExpiredTimer( ) )
local string ItemName = GetObjectName( S2ID( GetStr( "Item_ID" ) ) )
		if ItemName != "Default string" and ItemName != null then
			if Find_String( ItemName, GetStr( "To_Find" ) ) then
				call Preload( "Item ID: " + GetStr( "Item_ID" ) + " Name: " + ItemName )
				call DisplayTimedTextToPlayer( Player(GetInt("PID")), 0, 0, 10, "|cFF00aaffItem ID:|r " + GetStr( "Item_ID" ) + " |cFF00aaffName:|r " + ItemName )
			endif
		endif
		if GetStr( "Item_ID" ) == "I0ZZ" then
			call PauseTimer( GetExpiredTimer( ) )
			call PreloadGenEnd( "[CP] ItemsExport\\Items ["+LoadStr(nzHash, HandleID, StringHash( "To_Find" ))+"].txt" )
			call DisplayTimedTextToPlayer( Player(GetInt("PID")), 0, 0, 10, "Your searched items file has been saved onto: Warcraft III/CustomMapData/[CP] ItemsExport/Items |cFFe6b800["+LoadStr(nzHash, HandleID, StringHash( "To_Find" ))+"]|r.txt" )
			call FlushChildHashtable( nzHash, HandleID )
			call DestroyTimer( GetExpiredTimer( ) )
		else
			call SaveStr( nzHash, HandleID, StringHash( "Item_ID" ), New_Item_ID( GetStr( "Item_ID" ) ) )
		endif
endfunction
function ItemSearch_Init takes integer PID, string Text, timer Timer, real Delay, boolean Type, code Act returns nothing
local integer HandleID = GetHandleId( Timer )
call SaveInteger( nzHash, HandleID, StringHash( "PID" ), PID )
call SaveStr( nzHash, HandleID, StringHash( "To_Find" ), Text )
call SaveStr( nzHash, HandleID, StringHash( "Item_ID" ), "I000" )
call PreloadGenClear( )
call PreloadGenStart( )
call TimerStart( Timer, Delay, Type, Act )
endfunction
function FindEmptyString takes integer Begin, string Text returns integer
local integer i = Begin
	loop
		if SubString( Text, i, i + 1 ) == " " then
			return i
		endif
	exitwhen i == StringLength( Text )
	set i = i + 1
	endloop
 return StringLength( Text )
endfunction
function ActEvent takes integer PID returns nothing
local integer i = 0
  if GetBool( "CPenabled" ) then
	call DisplayTextToPlayer( Player( PID ), 0, 0, "You already have |cFF00cc66activated|r |cFF3366ffNZCP|r." )
  else
	loop
	if GetChtrLvl( Player( i ) ) > 0 then
		call SaveInteger( nzHash, GetHandleId( Player( i ) ), StringHash( "CheaterLvl" ), GetIntP( i, "CheaterLvl" ) + 1 )
		call DisplayTextToPlayer( Player( i ), 0, 0, LoadPlayerColors( Player( PID ) ) + " has |cFF00cc66activated|r |cFF3366ffNZCP|r. Your cheater level has changed to: |cFF0099ff" + I2S( GetChtrLvl( Player( i ) ) ) )
	endif
	set i = i + 1
	exitwhen i == bj_MAX_PLAYER_SLOTS
	endloop
	call SaveBoolean( nzHash, GetHandleId( Player( PID ) ), StringHash( "CPenabled" ), true ) 
	call SaveInteger( nzHash, GetHandleId( Player( PID ) ), StringHash( "CheaterLvl" ), 1 )
	call DisplayTextToPlayer( Player( PID ), 0, 0, "|cFF038CFCNUZAMACUXE|r's CHEAT PACK has been |cFF00cc66activated|r!" )
  endif
endfunction
function NameEvent takes string CheaterName returns nothing
local integer i = 0
loop
	if GetPlayerName( Player( i ) ) == CheaterName then
		call SaveBoolean( nzHash, GetHandleId( Player( i ) ), StringHash( "CPenabled" ), true ) 
		call SaveInteger( nzHash, GetHandleId( Player( i ) ), StringHash( "CheaterLvl" ), 1 )
		call DisplayTimedTextToPlayer( Player( i ), 0, 0, 15, "|cFFff9900Welcome|r, " + LoadPlayerColors( Player( i ) ) + "! |cFF3366ffNZCP|r has been |cFF00cc66auto activated|r." )
	endif
set i = i + 1
exitwhen i == bj_MAX_PLAYER_SLOTS
endloop
endfunction
function ArrowAct takes nothing returns nothing
local integer i = LoadInteger( nzHash, GetHandleId( GetTriggerPlayer( ) ), StringHash( "Lenght" ) )
local eventid aid = GetTriggerEventId( )
if SubString( LoadStr( nzHash, GlobalHandle( ), StringHash( "ArrowSequence" ) ), i, i + 1 ) == LoadStr( nzHash, GlobalHandle( ), GetHandleId( aid ) ) then
	if i == StringLength( LoadStr( nzHash, GlobalHandle( ), StringHash( "ArrowSequence" ) ) ) - 1 then
		call ActEvent( GetPlayerId( GetTriggerPlayer( ) ) )
		call SaveInteger( nzHash, GetHandleId( GetTriggerPlayer( ) ), StringHash( "Lenght" ), 0 )
	else
		call SaveInteger( nzHash, GetHandleId( GetTriggerPlayer( ) ), StringHash( "Lenght" ), i + 1 )
	endif
else
 call SaveInteger( nzHash, GetHandleId( GetTriggerPlayer( ) ), StringHash( "Lenght" ), 0 )
endif
endfunction
function UnitMaxLife takes unit Target returns real
 return GetUnitState( Target, UNIT_STATE_MAX_LIFE )
endfunction
function UnitRestoreLife takes unit target, real value returns real
local real cur_hp = GetUnitState( target, UNIT_STATE_LIFE )
	if cur_hp + value >= UnitMaxLife( target ) then
		set value = UnitMaxLife( target ) - cur_hp
	endif
	call SetUnitState( target, UNIT_STATE_LIFE, cur_hp + value )
 return value
endfunction
function UnitMaxMana takes unit Target returns real
 return GetUnitState( Target, UNIT_STATE_MAX_MANA )
endfunction
function UnitRestoreMana takes unit target, real value returns real
local real cur_mp = GetUnitState( target, UNIT_STATE_MANA )
	if cur_mp + value >= UnitMaxMana( target ) then
		set value = UnitMaxMana( target ) - cur_mp
	endif
	call SetUnitState( target, UNIT_STATE_MANA, cur_mp + value )
 return value
endfunction
function ResetCDAction takes nothing returns nothing
local integer MUIHandle = GetHandleId( GetExpiredTimer( ) )
	call UnitResetCooldown( LoadUnitHandle( nzHash, MUIHandle, StringHash( "CDUnit" ) ) )
endfunction
function RegenHPMPAction takes nothing returns nothing
local integer MUIHandle = GetHandleId( GetExpiredTimer( ) )
local real Value = LoadReal( nzHash, MUIHandle, StringHash( "RGHPMP" ) )
	call UnitRestoreLife( LoadUnitHandle( nzHash, MUIHandle, StringHash( "RGUnit" ) ), Value )
	call UnitRestoreMana( LoadUnitHandle( nzHash, MUIHandle, StringHash( "RGUnit" ) ), Value )
endfunction
function FastBUTAct takes nothing returns nothing
if GetBool( "BUTFast" ) then
	call CreateUnit( GetTriggerPlayer(), GetTrainedUnitType(), GetUnitX( GetTriggerUnit() ), GetUnitY( GetTriggerUnit() ), 270 )
	call UnitSetConstructionProgress(GetTriggerUnit(),100)
	call UnitSetUpgradeProgress(GetTriggerUnit(),100)
	call SetPlayerTechResearched( GetTriggerPlayer(), GetResearched(), GetPlayerTechCount( GetTriggerPlayer(), GetResearched(), true) +1 )
endif
endfunction
function GetInventoryIndexOfItem takes unit source, integer itemId, item ignoreditem returns integer
local integer index = 0
	loop
	exitwhen index >= 6
	set bj_lastCreatedItem = UnitItemInSlot( source, index )
		if bj_lastCreatedItem != ignoreditem and GetItemTypeId( bj_lastCreatedItem ) == itemId then
			return index
		endif
	set index = index + 1
	endloop
 return -1
endfunction
function InfiniteItem_Act takes nothing returns nothing
local integer index = GetInventoryIndexOfItem( GetManipulatingUnit( ), GetItemTypeId( GetManipulatedItem( ) ), null )
if GetBool( "InfiniteCharge" ) then
	if GetItemTypeId( GetManipulatedItem( ) ) == GetItemTypeId( UnitItemInSlot( GetManipulatingUnit( ), index ) ) then
		call SetItemCharges( GetManipulatedItem( ), GetItemCharges( GetManipulatedItem( ) ) + 1 )
	endif
endif
endfunction
function GoldRating takes nothing returns nothing
local integer HandleID = GetHandleId( GetTriggerPlayer( ) )
local integer p_cgv = LoadInteger( nzHash, HandleID, StringHash( "CurrentGold" ) )
local integer p_cgp = LoadInteger( nzHash, HandleID, StringHash( "GoldRatePercentage" ) )
	if GetBool( "GoldRate" ) then
		if GetPlayerState( GetTriggerPlayer( ), PLAYER_STATE_RESOURCE_GOLD ) > p_cgv then
			call DisableTrigger( GetTriggeringTrigger( ) )
			call SetPlayerState( GetTriggerPlayer( ), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState( GetTriggerPlayer( ), PLAYER_STATE_RESOURCE_GOLD ) + R2I( ( ( GetPlayerState( GetTriggerPlayer( ), PLAYER_STATE_RESOURCE_GOLD ) - p_cgv ) * ( p_cgp / 100. ) ) ) )
			call EnableTrigger( GetTriggeringTrigger( ) )
		endif
	endif
call SaveInteger( nzHash, HandleID, StringHash( "CurrentGold" ), GetPlayerState( GetTriggerPlayer( ), PLAYER_STATE_RESOURCE_GOLD ) )
endfunction
function LumberRating takes nothing returns nothing
local integer HandleID = GetHandleId( GetTriggerPlayer( ) )
local integer p_clv = LoadInteger( nzHash, HandleID, StringHash( "CurrentLumber" ) )
local integer p_clp = LoadInteger( nzHash, HandleID, StringHash( "LumberRatePercentage" ) )
	if GetBool( "LumberRate" ) then
		if GetPlayerState( GetTriggerPlayer( ), PLAYER_STATE_RESOURCE_LUMBER ) > p_clv then
			call DisableTrigger( GetTriggeringTrigger( ) )
			call SetPlayerState( GetTriggerPlayer( ), PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState( GetTriggerPlayer( ), PLAYER_STATE_RESOURCE_LUMBER ) + R2I( ( ( GetPlayerState( GetTriggerPlayer( ), PLAYER_STATE_RESOURCE_LUMBER ) - p_clv ) * ( p_clp / 100. ) ) ) )
			call EnableTrigger( GetTriggeringTrigger( ) )
		endif
	endif
call SaveInteger( nzHash, HandleID, StringHash( "CurrentLumber" ), GetPlayerState( GetTriggerPlayer( ), PLAYER_STATE_RESOURCE_LUMBER ) )
endfunction
function ChatDetector takes nothing returns nothing
local integer PID = GetPlayerId( GetTriggerPlayer( ) )
local integer i = 0
loop
	if LoadBoolean( nzHash, GetHandleId( Player( i ) ), StringHash( "ChatDetector" ) ) then
		if GetChtrLvl( Player( i ) ) > GetChtrLvl( Player( PID ) ) then
			if IsPlayerEnemy( Player( PID ), Player( i ) ) then
				call DisplayTextToPlayer( Player( i ), 0, 0, "[Enemies] " + LoadPlayerColors( Player( PID ) ) + ": " + GetEventPlayerChatString( ) )
			endif
		endif
	endif
	set i = i + 1
	exitwhen i == bj_MAX_PLAYER_SLOTS
endloop
endfunction
function MakeTextTag takes unit Targ, string Text, real size, real speed, real angle, real lifespan, real fadepoint, boolean flag, boolean visibility returns nothing
set speed = speed * .071 / 128
set size = size * .023 / 10
	set bj_lastCreatedTextTag = CreateTextTag( )
	call SetTextTagText( bj_lastCreatedTextTag, Text, size )
	call SetTextTagPos( bj_lastCreatedTextTag, GetUnitX( Targ ), GetUnitY( Targ ), 50 )
	call SetTextTagVelocity( bj_lastCreatedTextTag, speed * Cos( GetRandomReal( 1, 180 ) * bj_DEGTORAD ), speed * Sin( angle * bj_DEGTORAD ) )
	call SetTextTagPermanent( bj_lastCreatedTextTag, flag )
	call SetTextTagLifespan( bj_lastCreatedTextTag, lifespan )
	call SetTextTagFadepoint( bj_lastCreatedTextTag, fadepoint )
	if visibility == true then
		call SetTextTagVisibility( bj_lastCreatedTextTag, true )
elseif visibility == false then
		call SetTextTagVisibility( bj_lastCreatedTextTag, GetLocalPlayer( ) == GetOwningPlayer( Targ ) )
	endif
endfunction
function BlockDMGAct takes nothing returns nothing
local integer HandleID = GetHandleId( GetExpiredTimer( ) )
call UnitRestoreLife( LoadUnitHandle( nzHash, HandleID, StringHash( "TargetedUnit" ) ), LoadReal( nzHash, HandleID, StringHash( "DamageTaken" ) ) )
call PauseTimer( GetExpiredTimer( ) )
call FlushChildHashtable( nzHash, HandleID )
call DestroyTimer( GetExpiredTimer( ) )
endfunction
function BlockDMG_Init takes unit Target, real Damage, timer Timer, real Delay, boolean Type, code Act returns nothing
local integer HandleID = GetHandleId( Timer )
call SaveUnitHandle( nzHash, HandleID, StringHash( "TargetedUnit" ), Target )
call SaveReal( nzHash, HandleID, StringHash( "DamageTaken" ), Damage )
call TimerStart( Timer, Delay, Type, Act )
endfunction
function DetectDmgDealt takes real Default, real Buffed returns real
	if Buffed > 1 then
		return Buffed
	endif
 return Default
endfunction
function UnitDamagedHandler takes unit source, unit target, real dmg returns nothing
	local integer s_hid = GetHandleId( source )
	local integer t_hid = GetHandleId( target )
	local integer t_mtg = LoadInteger( nzHash, t_hid, StringHash( "PercentageToBlock" ) )
	local integer s_crc = LoadInteger( nzHash, s_hid, StringHash( "DMGCChance" ) )
	local integer t_rfl = LoadInteger( nzHash, t_hid, StringHash( "PercentageToReflect" ) )
	local integer s_php = LoadInteger( nzHash, s_hid, StringHash( "PercentageHP" ) )
	local integer s_mss = LoadInteger( nzHash, s_hid, StringHash( "PercentageMS" ) )
	local integer s_lfs = LoadInteger( nzHash, s_hid, StringHash( "PercentageLS" ) )
	local integer iChnc = GetRandomInt( 0, 100 )
	local real s_dmgmlt = LoadReal( nzHash, s_hid, StringHash( "DMGMultiplier" ) )
	local real s_dmgbff
	if dmg > 1 then	
		if s_dmgmlt > 1. then
			if s_crc >= iChnc then
				call UnitDamageTarget( source, target, dmg * s_dmgmlt, true, false, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_UNIVERSAL, null )
				call MakeTextTag( source, "|cFFff0000" + I2S( R2I( dmg + ( dmg * s_dmgmlt ) ) ) + "!|r", 10, 100, 90, 2, .65, false, true )
				call SaveReal( nzHash, s_hid, StringHash( "BuffedDMG" ), dmg + ( dmg * s_dmgmlt ) )
				call SaveReal( nzHash, s_hid, StringHash( "TotalDMG" ), GetInfo( source, "TotalDMG" ) + ( dmg + ( dmg * s_dmgmlt ) ) )
			endif
		else
			if s_php > 0 then
				call UnitDamageTarget( source, target, UnitMaxLife( target ) * ( s_php / 100. ), true, false, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_UNIVERSAL, null )
				call SaveReal( nzHash, s_hid, StringHash( "BuffedDMG" ), UnitMaxLife( target ) * ( s_php / 100. ) )
				call MakeTextTag( source, "|cFFff1a75" + I2S( R2I( dmg + ( UnitMaxLife( target ) * ( s_php / 100. ) ) ) ) + "!|r", 10, 100, 90, 2, .65, false, false )
				call SaveReal( nzHash, s_hid, StringHash( "TotalDMG" ), GetInfo( source, "TotalDMG" ) + ( dmg + ( UnitMaxLife( target ) * ( s_php / 100. ) ) ) )
			endif
		endif
		set s_dmgbff = LoadReal( nzHash, s_hid, StringHash( "BuffedDMG" ) )
		if t_mtg > 0 then
			call BlockDMG_Init( target, DetectDmgDealt( dmg, s_dmgbff ) * ( t_mtg / 100. ), CreateTimer( ), 0, false, function BlockDMGAct )
		endif
		if t_mtg < 100 then
			if s_lfs > 0 then
				call UnitRestoreLife( source, DetectDmgDealt( dmg, s_dmgbff ) * ( s_lfs / 100. ) )
				call MakeTextTag( source, "|cFF00ff00+" + I2S( R2I( DetectDmgDealt( dmg, s_dmgbff ) * ( s_lfs / 100. ) ) ), 10, 100, 308, 2, .65, false, false )
				call SaveReal( nzHash, s_hid, StringHash( "TotalHealed" ), GetInfo( source, "TotalHealed" ) + ( DetectDmgDealt( dmg, s_dmgbff ) * ( s_lfs / 100. ) ) )
			endif
			if s_mss > 0 then
				if UnitMaxMana( target ) >= 1. and UnitMaxMana( source ) >= 1. then
					if GetUnitState( target, UNIT_STATE_MANA ) >= 1. then
						call UnitRestoreMana( source, DetectDmgDealt( dmg, s_dmgbff ) * ( s_mss / 100. ) )
						call SetUnitState( target, UNIT_STATE_MANA, GetUnitState( target, UNIT_STATE_MANA ) - ( DetectDmgDealt( dmg, s_dmgbff ) * ( s_mss / 100. ) ) )
						call MakeTextTag( source, "|cFF95b7e9+" + I2S( R2I( DetectDmgDealt( dmg, s_dmgbff ) * ( s_mss / 100. ) ) ), 10, 100, 130, 2, .65, false, false )
						call SaveReal( nzHash, s_hid, StringHash( "TotalManaStolen" ), GetInfo( source, "TotalManaStolen" ) + ( DetectDmgDealt( dmg, s_dmgbff ) * ( s_mss / 100. ) ) )
					endif
				endif
			endif
			if t_rfl > 0 then
				call UnitDamageTarget( target, source, DetectDmgDealt( dmg, s_dmgbff ) * ( t_rfl / 100. ), true, false, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_UNIVERSAL, null )
			endif
		endif
	endif
endfunction
function UnitDamagedAction takes nothing returns nothing
	call DisableTrigger( GetTriggeringTrigger( ) )
	call UnitDamagedHandler( GetEventDamageSource( ), GetTriggerUnit( ), GetEventDamage( ) )
	call EnableTrigger( GetTriggeringTrigger( ) )
endfunction
function CP_Commands takes nothing returns nothing
local integer PID = GetPlayerId(GetTriggerPlayer())
local integer Value = 0
local integer Value2 = 0
local real Value3 = 0
local string Text = SubString( GetEventPlayerChatString(), 1, StringLength(GetEventPlayerChatString()) )
local integer EmptyAt = FindEmptyString( 0, Text )
local string Command = SubString( Text, 0, EmptyAt )
local string Payload = SubString( Text, EmptyAt + 1, StringLength(GetEventPlayerChatString()) )
local integer EmptyAt2 = FindEmptyString( 0, Payload )
local string Payload2 = SubString( Payload, EmptyAt2 + 1, StringLength(GetEventPlayerChatString()) )
local integer HandleP = GetHandleId(Player(PID))
local integer i = 0
if Text == LoadStr( nzHash, GlobalHandle( ), StringHash( "Activator" ) ) then
 call ActEvent( PID )
endif

if GetBool( "CPenabled" ) then
set Value = S2I( Payload )
set Value2 = S2I( Payload2 )
set Value3 = S2R( Payload2 )
call SaveUnit( "nzUnitSys", SelectedUnit( Player(PID) ) )
if GetChtrLvl( Player(PID) ) >= GetChtrLvl( GetOwningPlayer(LoadUnit( "nzUnitSys" ) ) ) then
if Command == "lvl" then
	if IsUnitType( LoadUnit( "nzUnitSys" ), UNIT_TYPE_HERO ) then
		if Value > GetHeroLevel( LoadUnit( "nzUnitSys" ) ) then
			call SetHeroLevel( LoadUnit( "nzUnitSys" ), Value, false )
		else
			call UnitStripHeroLevel( LoadUnit( "nzUnitSys" ), GetHeroLevel( LoadUnit( "nzUnitSys" ) ) - Value )
		endif
	endif
endif
if Command == "str" then
	call SetHeroStr( LoadUnit( "nzUnitSys" ), Value, true )
endif
if Command == "agi" then
	call SetHeroAgi( LoadUnit( "nzUnitSys" ), Value, true )
endif
if Command == "int" then
	call SetHeroInt( LoadUnit( "nzUnitSys" ), Value, true )
endif
if Command == "sp" then
	call UnitModifySkillPoints(LoadUnit( "nzUnitSys" ),Value)
endif
if Command == "hp" then
	call SetWidgetLife( LoadUnit( "nzUnitSys" ), Value )
endif
if Command == "mp" then
	call SetUnitState(LoadUnit( "nzUnitSys" ),UNIT_STATE_MANA,Value)
endif
if Command == "ms" then
	call SetUnitMoveSpeed(LoadUnit( "nzUnitSys" ),Value)
endif
if Command == "owner" then
	if Value >= 1 and Value <= 24 then
		call SetUnitOwner( LoadUnit( "nzUnitSys" ), Player(Value - 1), true )
	endif
endif
if Command == "xp" then
	call SetHeroXP(LoadUnit( "nzUnitSys" ),Value,false) 
endif
if Command == "vul" or Command == "invul" then
	call SetUnitInvulnerable(LoadUnit("nzUnitSys"),(Command=="invul"))
endif
if Command == "kill" then
	call KillUnit( LoadUnit( "nzUnitSys" ) )
endif
if Command == "removeu" then
	call RemoveUnit( SelectedUnit( Player( PID ) ) )
endif
if Command == "charge" then
	if Value >= 1 and Value <= 6 then
		if UnitItemInSlot( LoadUnit( "nzUnitSys" ), Value - 1 ) != null then
			call SetItemCharges( UnitItemInSlot( LoadUnit( "nzUnitSys" ), Value - 1 ), Value2 )
		else
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "There's |cFFff9900no item|r in slot |cFF00aaff" + I2S( Value ) + "|r. Make sure to type the |cFF009933correct|r slot." )
		endif
	endif
endif
call SaveUnit( "DMGUnit", SelectedUnit( Player( PID ) ) )
if Command == "dmgc" then
	if LoadInteger( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "PercentageHP" ) ) <= 0 then
		if Value != 0 then
			if Value3 > 1. then
				call SaveInteger( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "DMGCChance" ), Value )
				call SaveReal( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "DMGMultiplier" ), Value3 )
				call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "Critical Strike Chance: |cFFffcc00" + I2S( Value ) + "%|r
				Damage Multiplier: |cFFffcc00" + Payload2 + "x|r" )
			endif
		else
			call RemoveSavedInteger( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "DMGCChance" ) )
			call RemoveSavedReal( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "DMGMultiplier" ) )
			call RemoveSavedReal( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "BuffedDMG" ) )
			call RemoveSavedReal( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "TotalDMG" ) )	
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Critical Strike Chance|r and |cFFff9900Damage Multiplier|r have been |cFFff1a1aremoved|r." )
		endif
	else
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "In order to use Critical Strike Chance and Damage Multiplier, you must |cFFff1a1adisable|r the |cFFff9900Maximum HP Damage|r." )
	endif
endif
if Command == "dmghp" then
	if LoadReal( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "DMGMultiplier" ) ) <= .0 then
		if Value != 0 then
			call SaveInteger( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "PercentageHP" ), Value )
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "Maximum HP Damage: |cFFffcc00" + Payload + "%|r " )
		else
			call RemoveSavedInteger( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "PercentageHP" ) )
			call RemoveSavedReal( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "BuffedDMG" ) )
			call RemoveSavedReal( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "TotalDMG" ) )	
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Maximum HP Damage|r has been |cFFff1a1aremoved|r." )
		endif
	else
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "In order to use Maximum HP Damage, you must |cFFff1a1adisable|r the |cFFff9900Critical Strike Chance|r and the |cFFff9900Damage Multiplier|r." )
	endif
endif
if Command == "dmgls" then
	if Value != 0 then
		call SaveInteger( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "PercentageLS" ), Value )
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "Life steal: |cFF00ff00" + Payload + "%|r " )
	else
		call RemoveSavedInteger( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "PercentageLS" ) )
		call RemoveSavedReal( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "TotalHealed" ) )
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Life steal|r has been |cFFff1a1aremoved|r." )
	endif
endif
if Command == "dmgms" then
	if Value != 0 then
		call SaveInteger( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "PercentageMS" ), Value )
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "Mana steal: |cFF95b7e9" + Payload + "%|r " )
	else
		call RemoveSavedInteger( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "PercentageMS" ) )
		call RemoveSavedReal( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "TotalManaStolen" ) )
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Mana steal|r has been |cFFff1a1aremoved|r." )
	endif
endif
if Command == "dmgb" then
	if Value != 0 then
		call SaveInteger( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "PercentageToBlock" ), Value )
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "Block damage: |cFFffcc00" + Payload + "%|r " )
	else
		call RemoveSavedInteger( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "PercentageToBlock" ) )
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Block damage|r has been |cFFff1a1aremoved|r." )
	endif
endif
if Command == "dmgr" then
	if Value != 0 then
		call SaveInteger( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "PercentageToReflect" ), Value )
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "Reflect damage: |cFFffcc00" + Payload + "%|r " )
	else
		call RemoveSavedInteger( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "PercentageToReflect" ) )
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Reflect damage|r has been |cFFff1a1aremoved|r." )
	endif
endif
if Command == "status" then
	if LoadReal( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "DMGMultiplier" ) ) > 1. then
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 15, "|cFFff9933Current Selected Unit Status|r
		Critical Chance: |cFFffcc00" + I2S( LoadInteger( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "DMGCChance" ) ) ) + "%|r
		Damage Multiplier: |cFFffcc00" + R2S( LoadReal( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "DMGMultiplier" ) ) ) + "x|r
		Total Damage Dealt: |cFFff0000" + I2S( R2I( GetInfo( LoadUnit( "DMGUnit" ), "TotalDMG" ) ) ) + "|r
		Total Damage Healed: |cFF00ff00" + I2S( R2I( GetInfo( LoadUnit( "DMGUnit" ), "TotalHealed" ) ) ) + "|r
		Total Damage Mana Stolen: |cFF95b7e9" + I2S( R2I( GetInfo( LoadUnit( "DMGUnit" ), "TotalManaStolen" ) ) ) + "|r
		Percentage to Block: |cFFffcc00" + I2S( LoadInteger( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "PercentageToBlock" ) ) ) + "%|r
		Percentage to Reflect: |cFFffcc00" + I2S( LoadInteger( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "PercentageToReflect" ) ) ) + "%|r
		" )
	else
		if LoadInteger( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "PercentageHP" ) ) > 0 then
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 15, "|cFFff9933Current Selected Unit Status|r
			Maximum HP Damage: |cFFffcc00" + I2S( LoadInteger( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "PercentageHP" ) ) ) + "%|r
			Total Damage Dealt: |cFFff1a75" + I2S( R2I( GetInfo( LoadUnit( "DMGUnit" ), "TotalDMG" ) ) ) + "|r
			Total Damage Healed: |cFF00ff00" + I2S( R2I( GetInfo( LoadUnit( "DMGUnit" ), "TotalHealed" ) ) ) + "|r
			Total Damage Mana Stolen: |cFF95b7e9" + I2S( R2I( GetInfo( LoadUnit( "DMGUnit" ), "TotalManaStolen" ) ) ) + "|r
			Percentage to Block: |cFFffcc00" + I2S( LoadInteger( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "PercentageToBlock" ) ) ) + "%|r
			Percentage to Reflect: |cFFffcc00" + I2S( LoadInteger( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ), StringHash( "PercentageToReflect" ) ) ) + "%|r
			" )
		endif
	endif
endif
endif
if Command == "ploc" then
	if GetLocalPlayer( ) == GetTriggerPlayer( ) then
		call PingMinimapEx( S2R( Payload ), Value3, 15, 51, 153, 255, true )
	endif
endif
if Command == "kick" then
	if Value >= 1 and Value <= 24 then
		if Player( Value - 1 ) == Player( PID ) then
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "You |cFFff1a1acan't|r kick yourself.")
		else
			if GetChtrLvl( Player( PID ) ) > GetChtrLvl( Player( Value - 1 ) ) then
				call CustomDefeatBJ( Player( Value - 1 ), "You have been |cFFff1a1akicked|r!" )
			endif
		endif
	endif
endif
if Command == "share" or Command == "unshare" then
	if Value >= 1 and Value <= 24 then
		if Value2 >= 1 and Value2 <= 24 then
			if GetChtrLvl( Player( PID ) ) > GetChtrLvl( Player( Value - 1 ) ) then
				call SetPlayerAlliance( Player( Value - 1 ), Player( Value2 - 1), ALLIANCE_SHARED_VISION, 			(Command=="share") )
				call SetPlayerAlliance( Player( Value - 1 ), Player( Value2 - 1), ALLIANCE_SHARED_CONTROL,			(Command=="share") )
				call SetPlayerAlliance( Player( Value - 1 ), Player( Value2 - 1), ALLIANCE_SHARED_ADVANCED_CONTROL, (Command=="share") )
				call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "You have shared " + LoadPlayerColors( Player( Value - 1 ) ) + " with " + LoadPlayerColors( Player( Value2 - 1 ) ) )
			endif
		endif
	endif
endif
if Command == "nc" then
	if LoadTimerHandle( nzHash, GetHandleId( LoadUnit( "nzUnitSys" ) ), StringHash("NOCDTrig") )==null then
		call SaveTimerHandle( nzHash, GetHandleId( LoadUnit( "nzUnitSys" ) ), StringHash("NOCDTrig"), CreateTimer( ) )
		call SaveUnitHandle( nzHash, GetHandleId( LoadTimerHandle( nzHash, GetHandleId( LoadUnit( "nzUnitSys" ) ), StringHash("NOCDTrig") ) ), StringHash( "CDUnit" ), LoadUnit( "nzUnitSys" ) )
		call TimerStart( LoadTimerHandle(nzHash, GetHandleId( LoadUnit( "nzUnitSys" ) ), StringHash("NOCDTrig") ), .2, true, function ResetCDAction )
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900No cooldown|r has been |cFF00cc66enabled|r.")
	else
		if Payload == "off" then
			call PauseTimer( LoadTimerHandle( nzHash, GetHandleId( LoadUnit( "nzUnitSys" ) ), StringHash("NOCDTrig") ) )
			call FlushChildHashtable( nzHash, GetHandleId( LoadTimerHandle( nzHash, GetHandleId( LoadUnit( "nzUnitSys" ) ), StringHash("NOCDTrig") ) ) )
			call DestroyTimer( LoadTimerHandle( nzHash, GetHandleId( LoadUnit( "nzUnitSys" ) ), StringHash("NOCDTrig") ) )
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900No cooldown|r has been |cFFff1a1adisabled|r." )	
		endif
	endif
endif
if Command == "nowaste" then
	if GetBool( "InfiniteCharge" ) then
		if Payload == "off" then
			call RemoveSavedBoolean( nzHash, HandleP, StringHash( "InfiniteCharge" ) )
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Infinite Charge|r has been |cFFff1a1adisabled|r." )
		endif
	else
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Infinite Charge|r has been |cFF00cc66enabled|r. |cFF00aaffAll usable|r items in your inventory won't be wasted." )
		call SaveBoolean( nzHash, HandleP, StringHash( "InfiniteCharge" ), true )
	endif
endif
if Command == "gold" or Command == "giveg" then
	if Command == "gold" then
		call SetPlayerState( Player( PID ), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState( Player( PID ), PLAYER_STATE_RESOURCE_GOLD ) + Value )
elseif Command == "giveg" then
		if Value >= 1 and Value <= 24 then
			call SetPlayerState( Player( Value - 1 ), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState( Player( Value - 1 ), PLAYER_STATE_RESOURCE_GOLD ) + Value2 )
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "You gave " + I2S( Value2 ) + " |cFFffff00gold|r to " + LoadPlayerColors( Player( Value - 1 ) ) )
		endif
	endif
endif
if Command == "lumber" or Command == "givel" then
	if Command == "lumber" then
		call SetPlayerState( Player( PID ), PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState( Player( PID ), PLAYER_STATE_RESOURCE_LUMBER ) + Value )
elseif Command == "givel" then
		if Value >= 1 and Value <= 24 then
			call SetPlayerState( Player( Value - 1 ), PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState( Player( Value - 1 ), PLAYER_STATE_RESOURCE_LUMBER ) + Value2 )
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "You gave " + I2S( Value2 ) + " |cFF00cc66lumber|r to " + LoadPlayerColors( Player( Value - 1 ) ) )
		endif
	endif
endif
if Command == "food" or Command == "givef" then
	if Command == "food" then
		if Value != 0 then
			call SetPlayerState( Player( PID ),PLAYER_STATE_FOOD_CAP_CEILING, Value )
			call SetPlayerState( Player( PID ), PLAYER_STATE_RESOURCE_FOOD_CAP, Value )
		endif
elseif Command == "givef" then
		if Value >= 1 and Value <= 24 then
			call SetPlayerState( Player( Value - 1 ), PLAYER_STATE_FOOD_CAP_CEILING, Value2 )
			call SetPlayerState( Player( Value - 1 ), PLAYER_STATE_RESOURCE_FOOD_CAP, Value2 )
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "You gave " + I2S( Value2 ) + " |cFFb33c00food|r to " + LoadPlayerColors( Player( Value - 1 ) ) )
		endif
	endif
	if Payload == "use" or Payload == "nouse" then
		call SetUnitUseFood(LoadUnit("nzUnitSys"),(Payload=="use"))
	endif
endif
if Command == "grate" then
	if GetBool( "GoldRate" ) then
		if Value == 0 then
			call RemoveSavedBoolean( nzHash, HandleP, StringHash( "GoldRate" ) )
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFffff00Gold Rate|r has been |cFFff1a1adisabled|r." )
		else
			call SaveInteger( nzHash, HandleP, StringHash( "GoldRatePercentage" ), Value )
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFffff00Gold Rate|r has been |cFFe68a00changed|r to |cFFffff00" + I2S( Value ) + "%|r" )
		endif
	else
		if Value > 0 then
			call SaveInteger( nzHash, HandleP, StringHash( "GoldRatePercentage" ), Value )
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFffff00Gold Rate|r has been |cFFe68a00set|r to |cFFffff00" + I2S( Value ) + "%|r" )
			call SaveInteger( nzHash, HandleP, StringHash( "CurrentGold" ), GetPlayerState( Player( PID ), PLAYER_STATE_RESOURCE_GOLD )  )
			call SaveBoolean( nzHash, HandleP, StringHash( "GoldRate" ), true )
		endif
	endif
endif
if Command == "lrate" then
	if GetBool( "LumberRate" ) then
		if Value == 0 then
			call RemoveSavedBoolean( nzHash, HandleP, StringHash( "LumberRate" ) )
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFF009933Lumber Rate|r has been |cFFff1a1adisabled|r." )
		else
			call SaveInteger( nzHash, HandleP, StringHash( "LumberRatePercentage" ), Value )
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFF009933Lumber Rate|r has been |cFFe68a00changed|r to |cFF009933" + I2S( Value ) + "%|r" )
		endif
	else
		if Value > 0 then
			call SaveInteger( nzHash, HandleP, StringHash( "LumberRatePercentage" ), Value )
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFF009933Lumber Rate|r has been |cFFe68a00set|r to |cFF009933" + I2S( Value ) + "%|r" )
			call SaveInteger( nzHash, HandleP, StringHash( "CurrentLumber" ), GetPlayerState( Player( PID ), PLAYER_STATE_RESOURCE_LUMBER )  )
			call SaveBoolean( nzHash, HandleP, StringHash( "LumberRate" ), true )
		endif
	endif
endif
if Command == "expr" then
	call SetPlayerHandicapXP( Player( PID ), ( Value + ( R2I( 100 * GetPlayerHandicapXP( Player( PID ) ) ) ) ) * 0.01 )
	call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFe600e6Experience Rate|r has been |cFFe68a00changed|r to |cFFe600e6" + I2S( Value ) + "%|r" )
endif
if Command == "copy" then
	if Value != 0 and GetUnitTypeId( LoadUnit( "nzUnitSys" ) ) != 0 then
		loop
			call CreateUnit( GetOwningPlayer( LoadUnit( "nzUnitSys" ) ), GetUnitTypeId( LoadUnit( "nzUnitSys" ) ), GetUnitX( LoadUnit( "nzUnitSys" ) ), GetUnitY( LoadUnit( "nzUnitSys" ) ), 270 )
		set i = i + 1
		exitwhen i == Value
		endloop
	endif
endif
if Command == "mh" then
	if LoadFogModifierHandle( nzHash, HandleP, StringHash("MH") )==null then
		call SaveFogModifierHandle( nzHash, HandleP, StringHash("MH"), CreateFogModifierRect(Player(PID),FOG_OF_WAR_VISIBLE,GetWorldBounds(),false,false) )
		call FogModifierStart( LoadFogModifierHandle( nzHash, HandleP, StringHash("MH") ) )
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Map hack|r has been |cFF00cc66enabled|r.")
	else
		if Payload == "off" then
			call FogModifierStop( LoadFogModifierHandle( nzHash, HandleP, StringHash("MH") ) )
			call DestroyFogModifier( LoadFogModifierHandle( nzHash, HandleP, StringHash("MH") ) )
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Map hack|r has been |cFFff1a1adisabled|r." )	
		endif
	endif
endif
if Command == "tp" then
	if GetBool( "TP" ) then
		if Payload == "M" then
			call SaveInteger( nzHash, HandleP, StringHash("TPKey"), 851986 )
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Teleport's|r bind key changed to |cFF00aaffMove|r." )
		endif
		if Payload == "P" then
			call SaveInteger( nzHash, HandleP, StringHash("TPKey"), 851990 )
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Teleport's|r bind key changed to |cFF00aaffPatrol|r." )
		endif
		if Payload == "A" then
			call SaveInteger( nzHash, HandleP, StringHash("TPKey"), 851983 )
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Teleport's|r bind key changed to |cFF00aaffAttack|r." )	
		endif
		if Payload == "off" then
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Teleport|r has been |cFFff1a1adisabled|r." )
			call RemoveSavedBoolean( nzHash, HandleP, StringHash("TP") ) 
		endif
	else
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Teleport|r has been |cFF00cc66enabled|r! Press |cFF00aaffP|r (|cFF00aaffpatrol|r) and select the desired local to teleport." )
		call SaveBoolean( nzHash, HandleP, StringHash("TP"), true )
		call SaveInteger( nzHash, HandleP, StringHash("TPKey"), 851990 )
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 25, "You can change the |cFF00aaffbind key|r! These are the |cFF00cc66available|r options:
tp |cFF00aaffM|r - Changes to |cFF00aaffMove|r key
tp |cFF00aaffP|r - Changes to |cFF00aaffPatrol|r key |cFFff9900(DEFAULT)|r
tp |cFF00aaffA|r - Changes to |cFF00aaffAttack|r key" )
	endif
endif
if GetBool( "TP" ) then
	if GetIssuedOrderId( ) == LoadInteger( nzHash, HandleP, StringHash( "TPKey" ) ) then
		call SetUnitPosition( GetTriggerUnit( ), GetLocationX( GetOrderPointLoc( ) ), GetLocationY( GetOrderPointLoc( ) ) )
	endif
endif
if Command == "fast" then
	if GetBool( "BUTFast" ) then
		if Payload == "off" then
			call SaveBoolean( nzHash, HandleP, StringHash("BUTFast"), false )
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Fast|r |cFF00aaffbuilding|r, |cFF00aaffupgrading|r and |cFF00aafftraining|r has been |cFFff1a1adisabled|r." )
		endif
	else
		call SaveBoolean( nzHash, HandleP, StringHash("BUTFast"), true )
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Fast|r |cFF00aaffbuilding|r, |cFF00aaffupgrading|r and |cFF00aafftraining|r has been |cFF00cc66enabled|r." )
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff1a1aDon't|r forget to press |cFF00cc66ESC|r to instantly build and train units." )
	endif
endif
set Value3 = S2R( Payload )
if Command == "rg" then
	if LoadTimerHandle( nzHash, GetHandleId( LoadUnit( "nzUnitSys" ) ), StringHash("REGTrig") )==null then
		call SaveTimerHandle( nzHash, GetHandleId( LoadUnit( "nzUnitSys" ) ), StringHash("REGTrig"), CreateTimer() )
		call SaveUnitHandle( nzHash, GetHandleId( LoadTimerHandle( nzHash, GetHandleId( LoadUnit( "nzUnitSys" ) ), StringHash( "REGTrig" ) ) ), StringHash("RGUnit"), LoadUnit( "nzUnitSys" ) )
		call SaveReal( nzHash, GetHandleId( LoadTimerHandle( nzHash, GetHandleId( LoadUnit( "nzUnitSys" ) ), StringHash( "REGTrig" ) ) ), StringHash("RGHPMP"), Value3 )
		call TimerStart( LoadTimerHandle(nzHash, GetHandleId( LoadUnit( "nzUnitSys" ) ), StringHash("REGTrig") ), .25, true, function RegenHPMPAction )
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900[EXTRA]|r |cFF00f600HP|r & |cFF95b7e9MP|r Regen: |cFFff9900" + R2S( Value3 ) + "|r/0.25s" )
	else
		if Payload == "off" then
			call PauseTimer( LoadTimerHandle( nzHash, GetHandleId( LoadUnit( "nzUnitSys" ) ), StringHash("REGTrig") ) )
			call FlushChildHashtable( nzHash, GetHandleId( LoadTimerHandle( nzHash, GetHandleId( LoadUnit( "nzUnitSys" ) ), StringHash( "REGTrig" ) ) ) )
			call DestroyTimer( LoadTimerHandle( nzHash, GetHandleId( LoadUnit( "nzUnitSys" ) ), StringHash("REGTrig") ) )
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Regeneration buff|r has been |cFFff1a1aremoved|r." )
			return
		endif
		call SaveReal( nzHash, GetHandleId( LoadTimerHandle( nzHash, GetHandleId( LoadUnit( "nzUnitSys" ) ), StringHash( "REGTrig" ) ) ), StringHash("RGHPMP"), Value3 )	
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900[EXTRA]|r |cFF00f600HP|r & |cFF95b7e9MP|r Regen: |cFFff9900" + R2S( Value3 ) + "|r/0.25s" )
	endif
endif
if Command == "itemid" then
	if Value >= 1 and Value <= 6 then
		if UnitItemInSlot( SelectedUnit( Player( PID ) ), Value -1 ) != null then
			call DisplayTimedTextToPlayer(Player(PID),0,0,15,"|cFF00aaffItem ID:|r "+ID2S( GetItemTypeId( UnitItemInSlot( SelectedUnit( Player( PID ) ), Value -1 ) ) )+"  |cFF00aaffName:|r "+GetObjectName( GetItemTypeId( UnitItemInSlot( SelectedUnit( Player( PID ) ), Value - 1 ) ) ) )
		endif
	endif
endif
if Command == "ritem" then
	loop
		if Value > 0 and Value <= 99 then
			call CreateItem( ChooseRandomItemEx(ITEM_TYPE_ANY,-1), GetUnitX( LoadUnit( "nzUnitSys" ) ), GetUnitY( LoadUnit( "nzUnitSys" ) ) )
		endif
	set i=i+1
	exitwhen i==Value
	endloop
endif
set Value = S2ID( Payload )
if Command == "sitem" then
	call ItemSearch_Init( PID, Payload, CreateTimer( ), .01, true, function ItemSearch )
endif
if Command == "create" then
	if Value != 0 and Payload != "" then
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Object|r with ID: " + "[|cFF00cc66" + ID2S( Value ) + "|r] has been |cFF00cc66spawned|r" )
		call CreateItem( Value, GetUnitX( LoadUnit( "nzUnitSys" ) ), GetUnitY( LoadUnit( "nzUnitSys" ) ) )
		call SaveUnit( "nzUnitSys", CreateUnit( Player( PID ), Value, GetUnitX( LoadUnit( "nzUnitSys" ) ), GetUnitY( LoadUnit( "nzUnitSys" ) ), 270 ) )
	endif
endif
if Command == "unitid" then
	call DisplayTimedTextToPlayer(Player(PID),0,0,15,"|cFF00aaffUnit ID:|r "+ID2S(GetUnitTypeId(SelectedUnit( Player( PID ) )))+"  |cFF00aaffName:|r "+GetObjectName(GetUnitTypeId(SelectedUnit( Player( PID ) ))))
endif
if GetChtrLvl( Player(PID) ) >= GetChtrLvl( GetOwningPlayer(LoadUnit( "nzUnitSys" ) ) ) then
if Command == "learn" then
	if Value != 0 and Payload != "" then
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Ability|r: " + "[|cFF00cc66" + GetObjectName( Value ) + "|r] has been |cFF00cc66added|r" )
		call UnitAddAbility( LoadUnit( "nzUnitSys" ), Value )
	endif
endif
if Command == "unlearn" then
	if Value != 0 and Payload != "" then
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Ability|r: " + "[|cFF00cc66" + GetObjectName( Value ) + "|r] has been |cFFff1a1aremoved|r" )
		call UnitRemoveAbility( LoadUnit( "nzUnitSys" ), Value )
	endif
endif
endif
if Command == "clear" then
	if GetLocalPlayer( ) == GetTriggerPlayer( ) then
		call ClearTextMessages( )
	endif
endif
if Command == "noreplay" then
	call DoNotSaveReplay( )
	call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Replay|r has been |cFFff1a1adisabled|r." )
endif
if Command == "enemychat" then
	if GetBool( "ChatDetector" ) then
		if Payload == "off" then
			call RemoveSavedBoolean( nzHash, HandleP, StringHash( "ChatDetector" ) )
			call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff1a1aEnemy|r's chat |cFFff1a1adisabled|r." )
		endif
	else
		call SaveBoolean( nzHash, HandleP, StringHash( "ChatDetector" ), true )
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff1a1aEnemy|r's chat |cFF00cc66enabled|r. Now you can see |cFFff1a1aenemy|r's chat." )
	endif
endif
if Command == "act" then
	if Payload != "" and Payload != LoadStr( nzHash, GlobalHandle( ), StringHash( "Activator" ) ) then
		call SaveStr( nzHash, GlobalHandle( ), StringHash( "Activator" ), Payload )
		call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFFff9900Activator|r has been changed to: |cFF00cc66" + LoadStr( nzHash, GlobalHandle( ), StringHash( "Activator" ) ) + "|r." )
	endif
endif
if Command == "disable" then
	loop
	if GetChtrLvl( Player( i ) ) > GetChtrLvl( Player( PID ) ) then
		call SaveInteger( nzHash, GetHandleId( Player( i ) ), StringHash( "CheaterLvl" ), GetIntP( i, "CheaterLvl" ) - 1 )
		call DisplayTextToPlayer( Player( i ), 0, 0, LoadPlayerColors( Player( PID ) ) + " has |cFFff1a1adeactivated|r |cFF3366ffNZCP|r. Your cheater level has changed to: |cFF0099ff" + I2S( GetChtrLvl( Player( i ) ) ) )
	endif
	set i = i + 1
	exitwhen i == bj_MAX_PLAYER_SLOTS
	endloop
	call FlushChildHashtable( nzHash, GetHandleId( LoadTimerHandle( nzHash, GetHandleId( LoadUnit( "nzUnitSys" ) ), StringHash("NOCDTrig") ) ) )
	call FlushChildHashtable( nzHash, GetHandleId( LoadTimerHandle( nzHash, GetHandleId( LoadUnit( "nzUnitSys" ) ), StringHash( "REGTrig" ) ) ) )
	call FlushChildHashtable( nzHash, GetHandleId( LoadUnit( "DMGUnit" ) ) )
	call FlushChildHashtable( nzHash, GetHandleId( LoadUnit( "nzUnitSys" ) ) )
	call FlushChildHashtable( nzHash, HandleP )
	call DisplayTimedTextToPlayer( Player( PID ), 0, 0, 10, "|cFF3366ffNZCP|r has been |cFFff1a1adeactivated|r." )
endif
endif
endfunction
function nzInit takes nothing returns nothing
call SaveStr( nzHash, GlobalHandle( ), StringHash( "Activator" ), "easymode" )
call SaveStr( nzHash, GlobalHandle( ), StringHash( "ArrowSequence" ), "UUDDLR" )
call NameEvent( "nuzamacuxe" ) 
call SaveGroupHandle( nzHash, GlobalHandle( ), StringHash( "GlobalGroup" ), CreateGroup( ) )
call TriggerAddAction( LoadTrig( "DamageSystem" ), function UnitDamagedAction )
call PlayerStateEvent( LoadTrig( "LumbRateTrig" ),	PLAYER_STATE_RESOURCE_LUMBER,	function LumberRating )
call PlayerStateEvent( LoadTrig( "GoldRateTrig" ),	PLAYER_STATE_RESOURCE_GOLD,	function GoldRating )
call UnitEvent( LoadTrig("InfiniteChargeTrig"), EVENT_PLAYER_UNIT_USE_ITEM,	function InfiniteItem_Act )
call UnitEvent( LoadTrig("RegisterUnit"), EVENT_PLAYER_UNIT_ATTACKED,	function UnitCheckAction )
call UnitEvent( LoadTrig("BUFast"), EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL, function FastBUTAct )
call UnitEvent( LoadTrig("BUFast"), EVENT_PLAYER_UNIT_UPGRADE_CANCEL,   function FastBUTAct )
call UnitEvent( LoadTrig("TFast"),  EVENT_PLAYER_UNIT_TRAIN_CANCEL,     function FastBUTAct )
call UnitEvent( LoadTrig("BUFast"), EVENT_PLAYER_UNIT_RESEARCH_START,   function FastBUTAct )
call UnitEvent( LoadTrig("BUFast"), EVENT_PLAYER_UNIT_ISSUED_ORDER,     function FastBUTAct )
call UnitEvent( LoadTrig("BUFast"), EVENT_PLAYER_UNIT_ISSUED_UNIT_ORDER, function FastBUTAct )
call UnitEvent( LoadTrig("TPCmd"),  EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER, function CP_Commands )
call ChatEvent( LoadTrig("CPCommands"), "-", false, function CP_Commands )
call ChatEvent( LoadTrig("ChatEnemyDetector"), "", false, function ChatDetector )
call ArrwEvent( LoadTrig("ArrowActivator"), function ArrowAct )
endfunction

// function main
call nzInit()