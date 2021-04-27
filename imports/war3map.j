globals
//globals from TPTTSLinkedVariablesArray:
constant boolean LIBRARY_TPTTSLinkedVariablesArray=true
constant integer TPTTSLinkedVariablesArray___ARRAY_MAX= 51
//endglobals from TPTTSLinkedVariablesArray
//globals from TimerUtils:
constant boolean LIBRARY_TimerUtils=true
        //How to tweak timer utils:
        // USE_HASH_TABLE = true  (new blue)
        //  * SAFEST
        //  * SLOWEST (though hash tables are kind of fast)
        //
        // USE_HASH_TABLE = false, USE_FLEXIBLE_OFFSET = true  (orange)
        //  * kinda safe (except there is a limit in the number of timers)
        //  * ALMOST FAST
        //
        // USE_HASH_TABLE = false, USE_FLEXIBLE_OFFSET = false (red)
        //  * THE FASTEST (though is only  faster than the previous method
        //                  after using the optimizer on the map)
        //  * THE LEAST SAFE ( you may have to tweak OFSSET manually for it to
        //                     work)
        //
constant boolean TimerUtils__USE_HASH_TABLE= true
constant boolean TimerUtils__USE_FLEXIBLE_OFFSET= false

constant integer TimerUtils__OFFSET= 0x100000
integer TimerUtils__VOFFSET= TimerUtils__OFFSET
              
        //Timers to preload at map init:
constant integer TimerUtils__QUANTITY= 1024
        
        //Changing this  to something big will allow you to keep recycling
        // timers even when there are already AN INCREDIBLE AMOUNT of timers in
        // the stack. But it will make things far slower so that's probably a bad idea...
constant integer TimerUtils__ARRAY_SIZE= 8190

// processed:         integer array TimerUtils__data[TimerUtils__ARRAY_SIZE]
hashtable TimerUtils__ht
// processed:         timer array TimerUtils__tT[TimerUtils__ARRAY_SIZE]
integer TimerUtils__tN= 0
constant integer TimerUtils__HELD=0x28829022
        //use a totally random number here, the more improbable someone uses it, the better.
        
boolean TimerUtils__didinit= false
//endglobals from TimerUtils
//globals from TimerPutsTriggerToSleep:
constant boolean LIBRARY_TimerPutsTriggerToSleep=true
integer GlobalTV= 0
integer Wait= 0
constant boolean TimerPutsTriggerToSleep_USE_VARIABLE_ARRAY= false
        //연동 배열 변수 이용하려면 true로 설정
        
        
constant boolean TimerPutsTriggerToSleep_USE_AUTO_FLUSH_location= true
constant boolean TimerPutsTriggerToSleep_USE_AUTO_FLUSH_effect= false
constant boolean TimerPutsTriggerToSleep_USE_AUTO_FLUSH_lightning= false
constant boolean TimerPutsTriggerToSleep_USE_AUTO_FLUSH_force= false
constant boolean TimerPutsTriggerToSleep_USE_AUTO_FLUSH_group= false
        //대기가 종료될 때 핸들 소거가 자동으로 이루어지게 설정하는 부분입니다.
        //true: 자동 소거 활성, false: 자동 소거 비활성
//endglobals from TimerPutsTriggerToSleep
    // User-defined
unit udg_UNIT= null

    // Generated
sound gg_snd_Kujo_Jotaro_Start= null
sound gg_snd_Kujo_JotaroE1= null
sound gg_snd_Kujo_JotaroE2= null
sound gg_snd_Kujo_JotaroQ1= null
sound gg_snd_Kujo_JotaroQ2= null
sound gg_snd_Kujo_JotaroW1= null
sound gg_snd_Kujo_JotaroW2= null
sound gg_snd_Kujo_JotaroR1= null
sound gg_snd_Kujo_JotaroR2= null
sound gg_snd_Kujo_JotaroW3= null
sound gg_snd_Kujo_JotaroF1= null
sound gg_snd_Kujo_JotaroF2= null
sound gg_snd_Kujo_JotaroF3= null
sound gg_snd_Kujo_JotaroR3= null
trigger gg_trg_TimerPutsTriggerToSleep= null
trigger gg_trg_TPTTS_SubTrigs= null
trigger gg_trg_TPTTS_LinkedVariables= null
trigger gg_trg_TPTTS_LinkedVariables2= null
trigger gg_trg_TPTTS_LinkedVariables_Array= null
trigger gg_trg_TPTTS_Copy= null
trigger gg_trg_TPTTS_WhenEventId= null
trigger gg_trg_TPTTS_EmptyTrigVars= null
trigger gg_trg_TimerUtils= null
trigger gg_trg_UNIT_SELECT= null
trigger gg_trg_Ani= null
trigger gg_trg_SeeYA= null
trigger gg_trg_Int= null
trigger gg_trg_Defend_Setup= null
trigger gg_trg_Defend_Set1= null
trigger gg_trg_Defend_Set2= null
trigger gg_trg_Gangza= null
trigger gg_trg_Jaebachi= null
trigger gg_trg_Teleport= null
trigger gg_trg_Jotaro_Melee_Attack_1= null
trigger gg_trg_Jotaro_Melee_Attack_2= null
trigger gg_trg_Jotaro_Melee_Attack_3= null
trigger gg_trg_Jotaro_Q= null
trigger gg_trg_Jotaro_W= null
trigger gg_trg_Jotaro_E= null
trigger gg_trg_Jotaro_F= null
trigger gg_trg_Jotaro_R= null
unit gg_unit_hhou_0003= null
unit gg_unit_Hpal_0001= null
sound gg_snd_Kujo_JotaroR4= null
sound gg_snd_Kujo_JotaroQ201= null
sound gg_snd_Kujo_JotaroR301= null


//JASSHelper struct globals:
constant integer si__TimerPutsTriggerToSleep__TrigInfo=1
integer si__TimerPutsTriggerToSleep__TrigInfo_F=0
integer si__TimerPutsTriggerToSleep__TrigInfo_I=0
integer array si__TimerPutsTriggerToSleep__TrigInfo_V
region array s__TimerPutsTriggerToSleep__TrigInfo_Reg
trigger array s__TimerPutsTriggerToSleep__TrigInfo_Trig
trigger array s__TimerPutsTriggerToSleep__TrigInfo_TrigForCond
integer array s__TimerPutsTriggerToSleep__TrigInfo_toStage
triggeraction array s__TimerPutsTriggerToSleep__TrigInfo_Action
integer array s__TimerPutsTriggerToSleep__TrigInfo_TV
integer array s__TimerPutsTriggerToSleep__TrigInfo_prev
integer array s__TimerPutsTriggerToSleep__TrigInfo_post
integer s__TimerPutsTriggerToSleep__TrigInfo_last
boolean array s__TimerPutsTriggerToSleep__TrigInfo_GoThrough
hashtable s__TimerPutsTriggerToSleep__TrigInfo_HASH= InitHashtable()
constant integer si__TrigVariables=2
integer si__TrigVariables_F=0
integer si__TrigVariables_I=0
integer array si__TrigVariables_V
boolean s__TrigVariables_ThroughTimer= false
constant integer s__TrigVariables_HELD=0x28829022
integer array s__TrigVariables_NextGlobalTV
integer array s__TrigVariables_Stage
integer array s__TrigVariables_NextStage
trigger array s__TrigVariables_CurrentTrigger
eventid array s__TrigVariables_EventId
timer array s__TrigVariables_t
integer array s__TrigVariables_UserData
boolean array s__TrigVariables_Destructable
integer array s__TrigVariables_LearnedSkillLevel
string array s__TrigVariables_EventPlayerChatString
string array s__TrigVariables_EventPlayerChatStringMatched
real array s__TrigVariables_OrderPointX
real array s__TrigVariables_OrderPointY
real array s__TrigVariables_SpellTargetX
real array s__TrigVariables_SpellTargetY
unit array s__TrigVariables_TriggerUnit
unit array s__TrigVariables_Attacker
unit array s__TrigVariables_AttackedUnit
unit array s__TrigVariables_BuyingUnit
unit array s__TrigVariables_CancelledStructure
unit array s__TrigVariables_SpellAbilityUnit
unit array s__TrigVariables_ConstructingStructure
unit array s__TrigVariables_ConstructedStructure
unit array s__TrigVariables_DecayingUnit
unit array s__TrigVariables_DyingUnit
unit array s__TrigVariables_EnteringUnit
unit array s__TrigVariables_ManipulatingUnit
unit array s__TrigVariables_KillingUnit
unit array s__TrigVariables_LearningUnit
unit array s__TrigVariables_LeavingUnit
unit array s__TrigVariables_LevelingUnit
unit array s__TrigVariables_LoadedUnit
unit array s__TrigVariables_OrderedUnit
unit array s__TrigVariables_ChangingUnit
unit array s__TrigVariables_ResearchingUnit
unit array s__TrigVariables_RevivableUnit
unit array s__TrigVariables_RevivingUnit
unit array s__TrigVariables_SellingUnit
unit array s__TrigVariables_SoldUnit
unit array s__TrigVariables_SummonedUnit
unit array s__TrigVariables_SummoningUnit
unit array s__TrigVariables_OrderTargetUnit
unit array s__TrigVariables_SpellTargetUnit
unit array s__TrigVariables_EventTargetUnit
unit array s__TrigVariables_TrainedUnit
unit array s__TrigVariables_TransportUnit
unit array s__TrigVariables_DetectedUnit
unit array s__TrigVariables_Rescuer
unitstate array s__TrigVariables_EventUnitState
playerstate array s__TrigVariables_EventPlayerState
gamestate array s__TrigVariables_EventGameState
integer array s__TrigVariables_TrainedUnitType
integer array s__TrigVariables_IssuedOrderId
destructable array s__TrigVariables_DyingDestructable
destructable array s__TrigVariables_OrderTargetDestructable
destructable array s__TrigVariables_SpellTargetDestructable
item array s__TrigVariables_ManipulatedItem
item array s__TrigVariables_SoldItem
item array s__TrigVariables_OrderTargetItem
item array s__TrigVariables_SpellTargetItem
integer array s__TrigVariables_Researched
integer array s__TrigVariables_SpellAbilityId
integer array s__TrigVariables_LearnedSkill
player array s__TrigVariables_ChangingUnitPrevOwner
player array s__TrigVariables_TriggerPlayer
player array s__TrigVariables_EventDetectingPlayer
player array s__TrigVariables_WinningPlayer
dialog array s__TrigVariables_ClickedDialog
button array s__TrigVariables_ClickedButton
timer array s__TrigVariables_ExpiredTimer
real array s__TrigVariables_EventDamage
unit array s__TrigVariables_EventDamageSource
region array s__TrigVariables_TriggeringRegion
timer s__TrigVariables_TimerForExecuteTrigger= CreateTimer()
trigger array s__TrigVariables_RegisteredTrigger
integer s__TrigVariables_RegisteredCnt= 0
trigger s__TrigVariables_LastRgstTrig= null
boolean s__TrigVariables_RgstSeparately= false
hashtable s__TrigVariables_RgstHASH= InitHashtable()
integer array s__TrigVariables_last
integer s__TrigVariables_HiEveryone= 0
constant integer s__TrigVariables_G1= 295
constant integer s__TrigVariables_G2= 296
constant integer s__TrigVariables_G3= 297
constant integer s__TrigVariables_G4= 298
integer s__TrigVariables_thisForVoid= 0
trigger s__TrigVariables_trigForVoid= CreateTrigger()
constant integer s__TrigVariables_arraySize= 500
constant integer s__TrigVariables_offset= s__TrigVariables_arraySize + 2
constant integer s__TrigVariables_offsetplayer= s__TrigVariables_offset * 0
constant integer s__TrigVariables_offsetforce= s__TrigVariables_offset * 1
constant integer s__TrigVariables_offsetgroup= s__TrigVariables_offset * 2
constant integer s__TrigVariables_offsetitem= s__TrigVariables_offset * 3
constant integer s__TrigVariables_offseteffect= s__TrigVariables_offset * 4
constant integer s__TrigVariables_offsettimer= s__TrigVariables_offset * 5
constant integer s__TrigVariables_offsetunit= s__TrigVariables_offset * 6
constant integer s__TrigVariables_offsetlocation= s__TrigVariables_offset * 7
constant integer s__TrigVariables_offsetlightning= s__TrigVariables_offset * 8
constant integer s__TrigVariables_offsetinteger= s__TrigVariables_offset * 9
constant integer s__TrigVariables_offsetreal= s__TrigVariables_offset * 10
constant integer s__TrigVariables_offsetboolean= s__TrigVariables_offset * 11
constant integer s__TrigVariables_offsettexttag= s__TrigVariables_offset * 12
constant integer s__TrigVariables_offsetstring= s__TrigVariables_offset * 13
constant integer s__TrigVariables_offsetSize= s__TrigVariables_offset * 14
constant hashtable s__TrigVariables_HashMain= InitHashtable()
constant boolean s__TrigVariables_autoRemoveforce= true
constant boolean s__TrigVariables_autoRemovegroup= true
constant boolean s__TrigVariables_autoRemoveeffect= true
constant boolean s__TrigVariables_autoRemovelocation= true
constant boolean s__TrigVariables_autoRemovelightning= true
constant boolean s__TrigVariables_tempdebugunit= true
integer s__TrigVariables_thisTemp= 0
integer array s__TrigVariables_player
integer array s__TrigVariables_lastSetplayer
constant hashtable s__TrigVariables_Hashplayer= InitHashtable()
integer array s__TrigVariables_force
integer array s__TrigVariables_lastSetforce
constant hashtable s__TrigVariables_Hashforce= InitHashtable()
integer array s__TrigVariables_group
integer array s__TrigVariables_lastSetgroup
constant hashtable s__TrigVariables_Hashgroup= InitHashtable()
integer array s__TrigVariables_item
integer array s__TrigVariables_lastSetitem
constant hashtable s__TrigVariables_Hashitem= InitHashtable()
integer array s__TrigVariables_effect
integer array s__TrigVariables_lastSeteffect
constant hashtable s__TrigVariables_Hasheffect= InitHashtable()
integer array s__TrigVariables_timer
integer array s__TrigVariables_lastSettimer
constant hashtable s__TrigVariables_Hashtimer= InitHashtable()
integer array s__TrigVariables_unit
integer array s__TrigVariables_lastSetunit
constant hashtable s__TrigVariables_Hashunit= InitHashtable()
integer array s__TrigVariables_location
integer array s__TrigVariables_lastSetlocation
constant hashtable s__TrigVariables_Hashlocation= InitHashtable()
integer array s__TrigVariables_lightning
integer array s__TrigVariables_lastSetlightning
constant hashtable s__TrigVariables_Hashlightning= InitHashtable()
integer array s__TrigVariables_integer
integer array s__TrigVariables_lastSetinteger
constant hashtable s__TrigVariables_Hashinteger= InitHashtable()
integer array s__TrigVariables_real
integer array s__TrigVariables_lastSetreal
constant hashtable s__TrigVariables_Hashreal= InitHashtable()
integer array s__TrigVariables_boolean
integer array s__TrigVariables_lastSetboolean
constant hashtable s__TrigVariables_Hashboolean= InitHashtable()
integer array s__TrigVariables_texttag
integer array s__TrigVariables_lastSettexttag
constant hashtable s__TrigVariables_Hashtexttag= InitHashtable()
integer array s__TrigVariables_string
integer array s__TrigVariables_lastSetstring
constant hashtable s__TrigVariables_Hashstring= InitHashtable()
integer s__TrigVariables_Body= 0
integer s__TrigVariables_Copy= 0
constant integer si__playerforCall=3
constant integer si__forceforCall=4
constant integer si__groupforCall=5
constant integer si__itemforCall=6
constant integer si__effectforCall=7
constant integer si__timerforCall=8
constant integer si__unitforCall=9
constant integer si__locationforCall=10
constant integer si__lightningforCall=11
constant integer si__integerforCall=12
constant integer si__realforCall=13
constant integer si__booleanforCall=14
constant integer si__texttagforCall=15
constant integer si__stringforCall=16
integer array s__TimerUtils__data
timer array s__TimerUtils__tT
trigger array s__s__TrigVariables_tEventId
trigger array s__s__TrigVariables_tCopyByEventId
trigger array s__s__TrigVariables_tEmptyTrigVars
trigger st__TimerPutsTriggerToSleep__TrigInfo_onDestroy
trigger st__TimerPutsTriggerToSleep__TrigInfo_create
trigger st__TimerPutsTriggerToSleep__TrigInfo_destroy
trigger st__TrigVariables_ExecuteTrigger
trigger st__TrigVariables_onDestroy
trigger st__TrigVariables_DeleteAllTriggers
trigger st__TrigVariables_setVoid
trigger st__TrigVariables_LVforCreate
trigger st__TrigVariables_Setplayer
trigger st__TrigVariables_Getplayer
trigger st__TrigVariables_Setforce
trigger st__TrigVariables_Getforce
trigger st__TrigVariables_Setgroup
trigger st__TrigVariables_Getgroup
trigger st__TrigVariables_Setitem
trigger st__TrigVariables_Getitem
trigger st__TrigVariables_Seteffect
trigger st__TrigVariables_Geteffect
trigger st__TrigVariables_Settimer
trigger st__TrigVariables_Gettimer
trigger st__TrigVariables_Setunit
trigger st__TrigVariables_Getunit
trigger st__TrigVariables_Setlocation
trigger st__TrigVariables_Getlocation
trigger st__TrigVariables_Setlightning
trigger st__TrigVariables_Getlightning
trigger st__TrigVariables_Setinteger
trigger st__TrigVariables_Getinteger
trigger st__TrigVariables_Setreal
trigger st__TrigVariables_Getreal
trigger st__TrigVariables_Setboolean
trigger st__TrigVariables_Getboolean
trigger st__TrigVariables_Settexttag
trigger st__TrigVariables_Gettexttag
trigger st__TrigVariables_Setstring
trigger st__TrigVariables_Getstring
trigger st__TrigVariables_destroy
trigger array st___prototype6
integer f__arg_integer1
integer f__arg_integer2
player f__arg_player1
force f__arg_force1
group f__arg_group1
item f__arg_item1
effect f__arg_effect1
timer f__arg_timer1
unit f__arg_unit1
location f__arg_location1
lightning f__arg_lightning1
real f__arg_real1
boolean f__arg_boolean1
texttag f__arg_texttag1
string f__arg_string1
integer f__arg_this
integer f__result_integer
player f__result_player
force f__result_force
group f__result_group
item f__result_item
effect f__result_effect
timer f__result_timer
unit f__result_unit
location f__result_location
lightning f__result_lightning
real f__result_real
boolean f__result_boolean
texttag f__result_texttag
string f__result_string

endglobals


//Generated method caller for TimerPutsTriggerToSleep__TrigInfo.onDestroy
function sc__TimerPutsTriggerToSleep__TrigInfo_onDestroy takes integer this returns nothing
            call TriggerRemoveAction(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this], s__TimerPutsTriggerToSleep__TrigInfo_Action[this])
            if s__TimerPutsTriggerToSleep__TrigInfo_Reg[this] != null then
                call RemoveRegion(s__TimerPutsTriggerToSleep__TrigInfo_Reg[this])
            endif
            call RemoveSavedInteger(s__TimerPutsTriggerToSleep__TrigInfo_HASH, 0, GetHandleId(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this]))
            call DestroyTrigger(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this])
            call DestroyTrigger(s__TimerPutsTriggerToSleep__TrigInfo_TrigForCond[this])
            set s__TimerPutsTriggerToSleep__TrigInfo_post[s__TimerPutsTriggerToSleep__TrigInfo_prev[this]]=s__TimerPutsTriggerToSleep__TrigInfo_post[this]
            set s__TimerPutsTriggerToSleep__TrigInfo_prev[s__TimerPutsTriggerToSleep__TrigInfo_post[this]]=s__TimerPutsTriggerToSleep__TrigInfo_prev[this]
            set s__TimerPutsTriggerToSleep__TrigInfo_prev[this]=0
            set s__TimerPutsTriggerToSleep__TrigInfo_post[this]=0
endfunction

//Generated method caller for TimerPutsTriggerToSleep__TrigInfo.create
function sc__TimerPutsTriggerToSleep__TrigInfo_create takes nothing returns integer
    call TriggerEvaluate(st__TimerPutsTriggerToSleep__TrigInfo_create)
 return f__result_integer
endfunction

//Generated allocator of TimerPutsTriggerToSleep__TrigInfo
function s__TimerPutsTriggerToSleep__TrigInfo__allocate takes nothing returns integer
 local integer this=si__TimerPutsTriggerToSleep__TrigInfo_F
    if (this!=0) then
        set si__TimerPutsTriggerToSleep__TrigInfo_F=si__TimerPutsTriggerToSleep__TrigInfo_V[this]
    else
        set si__TimerPutsTriggerToSleep__TrigInfo_I=si__TimerPutsTriggerToSleep__TrigInfo_I+1
        set this=si__TimerPutsTriggerToSleep__TrigInfo_I
    endif
    if (this>8190) then
        return 0
    endif

   set s__TimerPutsTriggerToSleep__TrigInfo_Reg[this]= null
   set s__TimerPutsTriggerToSleep__TrigInfo_Trig[this]= CreateTrigger()
   set s__TimerPutsTriggerToSleep__TrigInfo_TrigForCond[this]= CreateTrigger()
    set si__TimerPutsTriggerToSleep__TrigInfo_V[this]=-1
 return this
endfunction

//Generated destructor of TimerPutsTriggerToSleep__TrigInfo
function sc__TimerPutsTriggerToSleep__TrigInfo_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__TimerPutsTriggerToSleep__TrigInfo_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__TimerPutsTriggerToSleep__TrigInfo_onDestroy)
    set si__TimerPutsTriggerToSleep__TrigInfo_V[this]=si__TimerPutsTriggerToSleep__TrigInfo_F
    set si__TimerPutsTriggerToSleep__TrigInfo_F=this
endfunction

//Generated method caller for TrigVariables.ExecuteTrigger
function sc__TrigVariables_ExecuteTrigger takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__TrigVariables_ExecuteTrigger)
endfunction

//Generated method caller for TrigVariables.onDestroy
function sc__TrigVariables_onDestroy takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__TrigVariables_onDestroy)
endfunction

//Generated method caller for TrigVariables.DeleteAllTriggers
function sc__TrigVariables_DeleteAllTriggers takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__TrigVariables_DeleteAllTriggers)
endfunction

//Generated method caller for TrigVariables.setVoid
function sc__TrigVariables_setVoid takes integer this returns nothing
                set s__TrigVariables_thisForVoid=this
                call TriggerEvaluate(s__TrigVariables_trigForVoid)
endfunction

//Generated method caller for TrigVariables.LVforCreate
function sc__TrigVariables_LVforCreate takes integer this returns nothing
                set s__TrigVariables_player[this]=this
                set s__TrigVariables_force[this]=this
                set s__TrigVariables_group[this]=this
                set s__TrigVariables_item[this]=this
                set s__TrigVariables_effect[this]=this
                set s__TrigVariables_timer[this]=this
                set s__TrigVariables_unit[this]=this
                set s__TrigVariables_location[this]=this
                set s__TrigVariables_lightning[this]=this
                set s__TrigVariables_integer[this]=this
                set s__TrigVariables_real[this]=this
                set s__TrigVariables_boolean[this]=this
endfunction

//Generated method caller for TrigVariables.Setplayer
function sc__TrigVariables_Setplayer takes integer this,integer i,player x returns nothing
    set f__arg_this=this
    set f__arg_integer1=i
    set f__arg_player1=x
    call TriggerEvaluate(st__TrigVariables_Setplayer)
endfunction

//Generated method caller for TrigVariables.Getplayer
function sc__TrigVariables_Getplayer takes integer this,integer i returns player
                return LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, this * s__TrigVariables_arraySize + i)
endfunction

//Generated method caller for TrigVariables.Setforce
function sc__TrigVariables_Setforce takes integer this,integer i,force x returns nothing
    set f__arg_this=this
    set f__arg_integer1=i
    set f__arg_force1=x
    call TriggerEvaluate(st__TrigVariables_Setforce)
endfunction

//Generated method caller for TrigVariables.Getforce
function sc__TrigVariables_Getforce takes integer this,integer i returns force
                return LoadForceHandle(s__TrigVariables_Hashforce, 0, this * s__TrigVariables_arraySize + i)
endfunction

//Generated method caller for TrigVariables.Setgroup
function sc__TrigVariables_Setgroup takes integer this,integer i,group x returns nothing
    set f__arg_this=this
    set f__arg_integer1=i
    set f__arg_group1=x
    call TriggerEvaluate(st__TrigVariables_Setgroup)
endfunction

//Generated method caller for TrigVariables.Getgroup
function sc__TrigVariables_Getgroup takes integer this,integer i returns group
                return LoadGroupHandle(s__TrigVariables_Hashgroup, 0, this * s__TrigVariables_arraySize + i)
endfunction

//Generated method caller for TrigVariables.Setitem
function sc__TrigVariables_Setitem takes integer this,integer i,item x returns nothing
    set f__arg_this=this
    set f__arg_integer1=i
    set f__arg_item1=x
    call TriggerEvaluate(st__TrigVariables_Setitem)
endfunction

//Generated method caller for TrigVariables.Getitem
function sc__TrigVariables_Getitem takes integer this,integer i returns item
                return LoadItemHandle(s__TrigVariables_Hashitem, 0, this * s__TrigVariables_arraySize + i)
endfunction

//Generated method caller for TrigVariables.Seteffect
function sc__TrigVariables_Seteffect takes integer this,integer i,effect x returns nothing
    set f__arg_this=this
    set f__arg_integer1=i
    set f__arg_effect1=x
    call TriggerEvaluate(st__TrigVariables_Seteffect)
endfunction

//Generated method caller for TrigVariables.Geteffect
function sc__TrigVariables_Geteffect takes integer this,integer i returns effect
                return LoadEffectHandle(s__TrigVariables_Hasheffect, 0, this * s__TrigVariables_arraySize + i)
endfunction

//Generated method caller for TrigVariables.Settimer
function sc__TrigVariables_Settimer takes integer this,integer i,timer x returns nothing
    set f__arg_this=this
    set f__arg_integer1=i
    set f__arg_timer1=x
    call TriggerEvaluate(st__TrigVariables_Settimer)
endfunction

//Generated method caller for TrigVariables.Gettimer
function sc__TrigVariables_Gettimer takes integer this,integer i returns timer
                return LoadTimerHandle(s__TrigVariables_Hashtimer, 0, this * s__TrigVariables_arraySize + i)
endfunction

//Generated method caller for TrigVariables.Setunit
function sc__TrigVariables_Setunit takes integer this,integer i,unit x returns nothing
    set f__arg_this=this
    set f__arg_integer1=i
    set f__arg_unit1=x
    call TriggerEvaluate(st__TrigVariables_Setunit)
endfunction

//Generated method caller for TrigVariables.Getunit
function sc__TrigVariables_Getunit takes integer this,integer i returns unit
                return LoadUnitHandle(s__TrigVariables_Hashunit, 0, this * s__TrigVariables_arraySize + i)
endfunction

//Generated method caller for TrigVariables.Setlocation
function sc__TrigVariables_Setlocation takes integer this,integer i,location x returns nothing
    set f__arg_this=this
    set f__arg_integer1=i
    set f__arg_location1=x
    call TriggerEvaluate(st__TrigVariables_Setlocation)
endfunction

//Generated method caller for TrigVariables.Getlocation
function sc__TrigVariables_Getlocation takes integer this,integer i returns location
                return LoadLocationHandle(s__TrigVariables_Hashlocation, 0, this * s__TrigVariables_arraySize + i)
endfunction

//Generated method caller for TrigVariables.Setlightning
function sc__TrigVariables_Setlightning takes integer this,integer i,lightning x returns nothing
    set f__arg_this=this
    set f__arg_integer1=i
    set f__arg_lightning1=x
    call TriggerEvaluate(st__TrigVariables_Setlightning)
endfunction

//Generated method caller for TrigVariables.Getlightning
function sc__TrigVariables_Getlightning takes integer this,integer i returns lightning
                return LoadLightningHandle(s__TrigVariables_Hashlightning, 0, this * s__TrigVariables_arraySize + i)
endfunction

//Generated method caller for TrigVariables.Setinteger
function sc__TrigVariables_Setinteger takes integer this,integer i,integer x returns nothing
    set f__arg_this=this
    set f__arg_integer1=i
    set f__arg_integer2=x
    call TriggerEvaluate(st__TrigVariables_Setinteger)
endfunction

//Generated method caller for TrigVariables.Getinteger
function sc__TrigVariables_Getinteger takes integer this,integer i returns integer
                return LoadInteger(s__TrigVariables_Hashinteger, 0, this * s__TrigVariables_arraySize + i)
endfunction

//Generated method caller for TrigVariables.Setreal
function sc__TrigVariables_Setreal takes integer this,integer i,real x returns nothing
    set f__arg_this=this
    set f__arg_integer1=i
    set f__arg_real1=x
    call TriggerEvaluate(st__TrigVariables_Setreal)
endfunction

//Generated method caller for TrigVariables.Getreal
function sc__TrigVariables_Getreal takes integer this,integer i returns real
                return LoadReal(s__TrigVariables_Hashreal, 0, this * s__TrigVariables_arraySize + i)
endfunction

//Generated method caller for TrigVariables.Setboolean
function sc__TrigVariables_Setboolean takes integer this,integer i,boolean x returns nothing
    set f__arg_this=this
    set f__arg_integer1=i
    set f__arg_boolean1=x
    call TriggerEvaluate(st__TrigVariables_Setboolean)
endfunction

//Generated method caller for TrigVariables.Getboolean
function sc__TrigVariables_Getboolean takes integer this,integer i returns boolean
                return LoadBoolean(s__TrigVariables_Hashboolean, 0, this * s__TrigVariables_arraySize + i)
endfunction

//Generated method caller for TrigVariables.Settexttag
function sc__TrigVariables_Settexttag takes integer this,integer i,texttag x returns nothing
    set f__arg_this=this
    set f__arg_integer1=i
    set f__arg_texttag1=x
    call TriggerEvaluate(st__TrigVariables_Settexttag)
endfunction

//Generated method caller for TrigVariables.Gettexttag
function sc__TrigVariables_Gettexttag takes integer this,integer i returns texttag
                return LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, this * s__TrigVariables_arraySize + i)
endfunction

//Generated method caller for TrigVariables.Setstring
function sc__TrigVariables_Setstring takes integer this,integer i,string x returns nothing
    set f__arg_this=this
    set f__arg_integer1=i
    set f__arg_string1=x
    call TriggerEvaluate(st__TrigVariables_Setstring)
endfunction

//Generated method caller for TrigVariables.Getstring
function sc__TrigVariables_Getstring takes integer this,integer i returns string
                return LoadStr(s__TrigVariables_Hashstring, 0, this * s__TrigVariables_arraySize + i)
endfunction

//Generated allocator of TrigVariables
function s__TrigVariables__allocate takes nothing returns integer
 local integer this=si__TrigVariables_F
    if (this!=0) then
        set si__TrigVariables_F=si__TrigVariables_V[this]
    else
        set si__TrigVariables_I=si__TrigVariables_I+1
        set this=si__TrigVariables_I
    endif
    if (this>8190) then
        return 0
    endif

   set s__TrigVariables_NextGlobalTV[this]= s__TrigVariables_HELD
   set s__TrigVariables_Stage[this]= s__TrigVariables_HELD
   set s__TrigVariables_last[this]= 0
   set s__TrigVariables_lastSetplayer[this]= - 1
   set s__TrigVariables_lastSetforce[this]= - 1
   set s__TrigVariables_lastSetgroup[this]= - 1
   set s__TrigVariables_lastSetitem[this]= - 1
   set s__TrigVariables_lastSeteffect[this]= - 1
   set s__TrigVariables_lastSettimer[this]= - 1
   set s__TrigVariables_lastSetunit[this]= - 1
   set s__TrigVariables_lastSetlocation[this]= - 1
   set s__TrigVariables_lastSetlightning[this]= - 1
   set s__TrigVariables_lastSetinteger[this]= - 1
   set s__TrigVariables_lastSetreal[this]= - 1
   set s__TrigVariables_lastSetboolean[this]= - 1
   set s__TrigVariables_lastSettexttag[this]= - 1
   set s__TrigVariables_lastSetstring[this]= - 1
    set si__TrigVariables_V[this]=-1
 return this
endfunction

//Generated destructor of TrigVariables
function sc__TrigVariables_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__TrigVariables_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__TrigVariables_onDestroy)
    set si__TrigVariables_V[this]=si__TrigVariables_F
    set si__TrigVariables_F=this
endfunction
function sc___prototype6_execute takes integer i returns nothing

    call TriggerExecute(st___prototype6[i])
endfunction
function sc___prototype6_evaluate takes integer i returns nothing

    call TriggerEvaluate(st___prototype6[i])

endfunction






































































































//*********************************************************************
//* TimerUtils (red+blue+orange flavors for 1.24b+) 2.0
//* ----------
//*
//*  To implement it , create a custom text trigger called TimerUtils
//* and paste the contents of this script there.
//*
//*  To copy from a map to another, copy the trigger holding this
//* library to your map.
//*
//* (requires vJass)   More scripts: htt://www.wc3c.net
//*
//* For your timer needs:
//*  * Attaching
//*  * Recycling (with double-free protection)
//*
//* set t=NewTimer()      : Get a timer (alternative to CreateTimer)
//* set t=NewTimerEx(x)   : Get a timer (alternative to CreateTimer), call
//*                            Initialize timer data as x, instead of 0.
//*
//* ReleaseTimer(t)       : Relese a timer (alt to DestroyTimer)
//* SetTimerData(t,2)     : Attach value 2 to timer
//* GetTimerData(t)       : Get the timer's value.
//*                         You can assume a timer's value is 0
//*                         after NewTimer.
//*
//* Multi-flavor:
//*    Set USE_HASH_TABLE to true if you don't want to complicate your life.
//*
//* If you like speed and giberish try learning about the other flavors.
//*
//********************************************************************

//================================================================

    //==================================================================================================
    
    

    //It is dependent on jasshelper's recent inlining optimization in order to perform correctly.
    function SetTimerData takes timer t,integer value returns nothing

            // new blue
            call SaveInteger(TimerUtils__ht, 0, GetHandleId(t), value)
            

















    endfunction

    function GetTimerData takes timer t returns integer

            // new blue
            return LoadInteger(TimerUtils__ht, 0, GetHandleId(t))
            

















    endfunction

    //==========================================================================================

    //==========================================================================================
    // I needed to decide between duplicating code ignoring the "Once and only once" rule
    // and using the ugly textmacros. I guess textmacros won.
    //

    function NewTimerEx takes integer value returns timer
        if ( TimerUtils__tN == 0 ) then
            if ( not TimerUtils__didinit ) then
                //This extra if shouldn't represent a major performance drawback
                //because QUANTITY rule is not supposed to be broken every day. 
                call TriggerEvaluate(st___prototype6[(1)]) // INLINED!!
                set TimerUtils__tN=TimerUtils__tN - 1
            else
                //If this happens then the QUANTITY rule has already been broken, try to fix the
                // issue, else fail.
// NO_DEBUG:                 debug call BJDebugMsg("NewTimer: Warning, Exceeding TimerUtils_QUANTITY, make sure all timers are getting recycled correctly")
                set s__TimerUtils__tT[0]= CreateTimer()
















            endif
        else
            set TimerUtils__tN=TimerUtils__tN - 1
        endif
        call SaveInteger(TimerUtils__ht, 0, GetHandleId((s__TimerUtils__tT[TimerUtils__tN] )), ( value)) // INLINED!!
     return s__TimerUtils__tT[TimerUtils__tN]
    endfunction
    
    function NewTimer takes nothing returns timer
        return NewTimerEx(0)
    endfunction


    //==========================================================================================
    function ReleaseTimer takes timer t returns nothing
        if ( t == null ) then
// NO_DEBUG:             debug call BJDebugMsg("Warning: attempt to release a null timer")
            return
        endif
        if ( TimerUtils__tN == TimerUtils__ARRAY_SIZE ) then
// NO_DEBUG:             debug call BJDebugMsg("Warning: Timer stack is full, destroying timer!!")
// NO_DEBUG: 
            //stack is full, the map already has much more troubles than the chance of bug
            call DestroyTimer(t)
        else
            call PauseTimer(t)
            if ( (LoadInteger(TimerUtils__ht, 0, GetHandleId((t)))) == TimerUtils__HELD ) then // INLINED!!
// NO_DEBUG:                 debug call BJDebugMsg("Warning: ReleaseTimer: Double free!")
                return
            endif
            call SaveInteger(TimerUtils__ht, 0, GetHandleId((t )), ( TimerUtils__HELD)) // INLINED!!
            set s__TimerUtils__tT[TimerUtils__tN]= t
            set TimerUtils__tN=TimerUtils__tN + 1
        endif
    endfunction

    function TimerUtils__init takes nothing returns nothing
     local integer i=0
     local integer o=- 1
     local boolean oops= false
        if ( TimerUtils__didinit ) then
            return
        else
            set TimerUtils__didinit=true
        endif
     

            set TimerUtils__ht=InitHashtable()
            loop
                exitwhen ( i == TimerUtils__QUANTITY )
                set s__TimerUtils__tT[i]= CreateTimer()
                call SaveInteger(TimerUtils__ht, 0, GetHandleId((s__TimerUtils__tT[i] )), ( TimerUtils__HELD)) // INLINED!!
                set i=i + 1
            endloop
            set TimerUtils__tN=TimerUtils__QUANTITY












































    endfunction


//**********************************************************************//
//*                                                                    *//
//*                 Timer Puts Trigger To Sleep v1.8                   *//
//*                                       Made by Porory               *//
//*                                          2017. 01. 25.             *//
//*                                                                    *//
//**********************************************************************//
        //public constant boolean         USE_NAME_ALPHABET = true  <<기능 삭제
    
        
//textmacro instance: TPTTS_SubTrigs()
        
        
        function s__TimerPutsTriggerToSleep__TrigInfo_Actions takes integer this returns nothing
            set s__TrigVariables_Stage[GlobalTV]=s__TimerPutsTriggerToSleep__TrigInfo_toStage[this]
            if s__TrigVariables_last[GlobalTV] == this then
                set s__TrigVariables_last[GlobalTV]=s__TimerPutsTriggerToSleep__TrigInfo_prev[this]
            endif
            call sc__TimerPutsTriggerToSleep__TrigInfo_deallocate(this)
            call PauseTimer(s__TrigVariables_t[GlobalTV])
            call sc__TrigVariables_ExecuteTrigger(GlobalTV)
        endfunction
        
        function s__TimerPutsTriggerToSleep__TrigInfo_APCondition takes nothing returns boolean
            local integer this= LoadInteger(s__TimerPutsTriggerToSleep__TrigInfo_HASH, 0, GetHandleId(GetTriggeringTrigger()))
            local integer PreTV= GlobalTV
            set GlobalTV=s__TimerPutsTriggerToSleep__TrigInfo_TV[this]
            set Wait=GlobalTV
            if TriggerEvaluate(s__TimerPutsTriggerToSleep__TrigInfo_TrigForCond[this]) then
                call s__TimerPutsTriggerToSleep__TrigInfo_Actions(this)
            endif
            set GlobalTV=PreTV
            set Wait=GlobalTV
            return true
        endfunction
        
        function s__TimerPutsTriggerToSleep__TrigInfo_RegisterPost takes integer this,boolexpr filter returns nothing
            call TriggerAddCondition(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this], Condition(function s__TimerPutsTriggerToSleep__TrigInfo_APCondition))
            call TriggerAddCondition(s__TimerPutsTriggerToSleep__TrigInfo_TrigForCond[this], filter)
            set s__TimerPutsTriggerToSleep__TrigInfo_prev[this]=s__TimerPutsTriggerToSleep__TrigInfo_last
            set s__TimerPutsTriggerToSleep__TrigInfo_post[s__TimerPutsTriggerToSleep__TrigInfo_prev[this]]=this
            set s__TimerPutsTriggerToSleep__TrigInfo_last=this
        endfunction
            
                
        function s__TimerPutsTriggerToSleep__TrigInfo_RegisterEnterRect takes rect whichRect,boolexpr filter returns integer
            local integer this= sc__TimerPutsTriggerToSleep__TrigInfo_create()
            set s__TimerPutsTriggerToSleep__TrigInfo_Reg[this]=CreateRegion()
            call RegionAddRect(s__TimerPutsTriggerToSleep__TrigInfo_Reg[this], whichRect)
            call TriggerRegisterEnterRegion(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this], s__TimerPutsTriggerToSleep__TrigInfo_Reg[this], null)
            call s__TimerPutsTriggerToSleep__TrigInfo_RegisterPost(this,filter)
            return this
        endfunction
        function s__TimerPutsTriggerToSleep__TrigInfo_RegisterUnitEvent takes unit whichUnit,unitevent whichEvent,boolexpr filter returns integer
            local integer this= sc__TimerPutsTriggerToSleep__TrigInfo_create()
            call TriggerRegisterUnitEvent(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this], whichUnit, whichEvent)
            call s__TimerPutsTriggerToSleep__TrigInfo_RegisterPost(this,filter)
            return this
        endfunction
        function s__TimerPutsTriggerToSleep__TrigInfo_RegisterLeaveRect takes rect whichRect,boolexpr filter returns integer
            local integer this= sc__TimerPutsTriggerToSleep__TrigInfo_create()
            set s__TimerPutsTriggerToSleep__TrigInfo_Reg[this]=CreateRegion()
            call RegionAddRect(s__TimerPutsTriggerToSleep__TrigInfo_Reg[this], whichRect)
            call TriggerRegisterLeaveRegion(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this], s__TimerPutsTriggerToSleep__TrigInfo_Reg[this], null)
            call s__TimerPutsTriggerToSleep__TrigInfo_RegisterPost(this,filter)
            return this
        endfunction
        function s__TimerPutsTriggerToSleep__TrigInfo_RegisterPlayerStateEvent takes player whichPlayer,playerstate whichState,limitop opcode,real limitval,boolexpr filter returns integer
            local integer this= sc__TimerPutsTriggerToSleep__TrigInfo_create()
            call TriggerRegisterPlayerStateEvent(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this], whichPlayer, whichState, opcode, limitval)
            call s__TimerPutsTriggerToSleep__TrigInfo_RegisterPost(this,filter)
            return this
        endfunction
        function s__TimerPutsTriggerToSleep__TrigInfo_RegisterPlayerUnitEvent takes player whichPlayer,playerunitevent whichPlayerUnitEvent,boolexpr filter returns integer
            local integer this= sc__TimerPutsTriggerToSleep__TrigInfo_create()
            call TriggerRegisterPlayerUnitEvent(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this], whichPlayer, whichPlayerUnitEvent, null)
            call s__TimerPutsTriggerToSleep__TrigInfo_RegisterPost(this,filter)
            return this
        endfunction
        function s__TimerPutsTriggerToSleep__TrigInfo_RegisterAnyUnitEvent takes playerunitevent whichPlayerUnitEvent,boolexpr filter returns integer
            local integer this= sc__TimerPutsTriggerToSleep__TrigInfo_create()
            local integer i= 0
            loop
                call TriggerRegisterPlayerUnitEvent(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this], Player(i), whichPlayerUnitEvent, null)
                set i=i + 1
                exitwhen i >= 16
            endloop
            call s__TimerPutsTriggerToSleep__TrigInfo_RegisterPost(this,filter)
            return this
        endfunction
        function s__TimerPutsTriggerToSleep__TrigInfo_RegisterTimerExpireEvent takes timer t,boolexpr filter returns integer
            local integer this= sc__TimerPutsTriggerToSleep__TrigInfo_create()
            call TriggerRegisterTimerExpireEvent(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this], t)
            call s__TimerPutsTriggerToSleep__TrigInfo_RegisterPost(this,filter)
            return this
        endfunction
        function s__TimerPutsTriggerToSleep__TrigInfo_RegisterUnitInRange takes unit whichUnit,real range,boolexpr filter returns integer
            local integer this= sc__TimerPutsTriggerToSleep__TrigInfo_create()
            call TriggerRegisterUnitInRange(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this], whichUnit, range, null)
            call s__TimerPutsTriggerToSleep__TrigInfo_RegisterPost(this,filter)
            return this
        endfunction
        function s__TimerPutsTriggerToSleep__TrigInfo_RegisterUnitStateEvent takes unit whichUnit,unitstate whichState,limitop opcode,real limitval,boolexpr filter returns integer
            local integer this= sc__TimerPutsTriggerToSleep__TrigInfo_create()
            call TriggerRegisterUnitStateEvent(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this], whichUnit, whichState, opcode, limitval)
            call s__TimerPutsTriggerToSleep__TrigInfo_RegisterPost(this,filter)
            return this
        endfunction
        
        function s__TimerPutsTriggerToSleep__TrigInfo_SetInfo takes integer tv,integer tostage returns nothing
            local integer this= s__TimerPutsTriggerToSleep__TrigInfo_last
            set s__TimerPutsTriggerToSleep__TrigInfo_toStage[this]=tostage
            set s__TimerPutsTriggerToSleep__TrigInfo_TV[this]=tv
            
        endfunction
        
        function s__TimerPutsTriggerToSleep__TrigInfo_DeleteAll takes integer fromWhat returns nothing
            local integer this= fromWhat
            local integer temp
            loop
                exitwhen this == 0
                set temp=s__TimerPutsTriggerToSleep__TrigInfo_prev[this]
                call sc__TimerPutsTriggerToSleep__TrigInfo_deallocate(this)
                set this=temp
            endloop
            set this=0
            set s__TimerPutsTriggerToSleep__TrigInfo_prev[this]=0
            set s__TimerPutsTriggerToSleep__TrigInfo_post[this]=0
        endfunction
        
        function s__TimerPutsTriggerToSleep__TrigInfo_onDestroy takes integer this returns nothing
            call TriggerRemoveAction(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this], s__TimerPutsTriggerToSleep__TrigInfo_Action[this])
            if s__TimerPutsTriggerToSleep__TrigInfo_Reg[this] != null then
                call RemoveRegion(s__TimerPutsTriggerToSleep__TrigInfo_Reg[this])
            endif
            call RemoveSavedInteger(s__TimerPutsTriggerToSleep__TrigInfo_HASH, 0, GetHandleId(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this]))
            call DestroyTrigger(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this])
            call DestroyTrigger(s__TimerPutsTriggerToSleep__TrigInfo_TrigForCond[this])
            set s__TimerPutsTriggerToSleep__TrigInfo_post[s__TimerPutsTriggerToSleep__TrigInfo_prev[this]]=s__TimerPutsTriggerToSleep__TrigInfo_post[this]
            set s__TimerPutsTriggerToSleep__TrigInfo_prev[s__TimerPutsTriggerToSleep__TrigInfo_post[this]]=s__TimerPutsTriggerToSleep__TrigInfo_prev[this]
            set s__TimerPutsTriggerToSleep__TrigInfo_prev[this]=0
            set s__TimerPutsTriggerToSleep__TrigInfo_post[this]=0
        endfunction

//Generated destructor of TimerPutsTriggerToSleep__TrigInfo
function s__TimerPutsTriggerToSleep__TrigInfo_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__TimerPutsTriggerToSleep__TrigInfo_V[this]!=-1) then
        return
    endif
    call s__TimerPutsTriggerToSleep__TrigInfo_onDestroy(this)
    set si__TimerPutsTriggerToSleep__TrigInfo_V[this]=si__TimerPutsTriggerToSleep__TrigInfo_F
    set si__TimerPutsTriggerToSleep__TrigInfo_F=this
endfunction
        
        function s__TimerPutsTriggerToSleep__TrigInfo_create takes nothing returns integer
            local integer this= s__TimerPutsTriggerToSleep__TrigInfo__allocate()
            call SaveInteger(s__TimerPutsTriggerToSleep__TrigInfo_HASH, 0, GetHandleId(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this]), this)
            return this
        endfunction
    
//end of: TPTTS_SubTrigs()
    
        
        
        //location OrderPointLoc //= null
        //location SpellTargetLoc //= null
        
        
        //readonly widget OrderTarget //= null
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        function s__TrigVariables_OrderPointLoc takes integer this returns location
            return Location(s__TrigVariables_OrderPointX[this], s__TrigVariables_OrderPointY[this])
        endfunction
        function s__TrigVariables_SpellTargetLoc takes integer this returns location
            return Location(s__TrigVariables_SpellTargetX[this], s__TrigVariables_SpellTargetY[this])
        endfunction
        
        function s__TrigVariables_SetUserData takes integer this,integer i returns nothing
            set s__TrigVariables_UserData[this]=i
        endfunction
        
        function s__TrigVariables_GetUserData takes integer this returns integer
            return s__TrigVariables_UserData[this]
        endfunction
        
        function s__TrigVariables_Flush takes integer this returns nothing
            if s__TrigVariables_t[this] == null then
                return
            endif
            set s__TrigVariables_HiEveryone=this
            call TriggerEvaluate(s__s__TrigVariables_tEmptyTrigVars[GetHandleId(s__TrigVariables_EventId[this])])



            call ReleaseTimer(s__TrigVariables_t[this])
            set s__TrigVariables_t[this]=null
            call sc__TrigVariables_DeleteAllTriggers(this)
            call sc__TrigVariables_deallocate(this)
        endfunction
        
        function s__TrigVariables_TimerAutoFlush takes nothing returns nothing
            local integer this= (LoadInteger(TimerUtils__ht, 0, GetHandleId((GetExpiredTimer())))) // INLINED!!
            call s__TrigVariables_Flush(this)
        endfunction
        
        
        function s__TrigVariables_ExecuteTriggerResetGlobalTV takes nothing returns nothing
            set GlobalTV=0
            set Wait=GlobalTV
        endfunction
        function s__TrigVariables_ExecuteTrigger takes integer this returns nothing
            local integer PreGlobalTV= GlobalTV
            set s__TrigVariables_ThroughTimer=true
            set GlobalTV=this
            set Wait=GlobalTV
            set s__TrigVariables_Destructable[this]=true
            call TriggerExecute(s__TrigVariables_CurrentTrigger[this])
            set s__TrigVariables_ThroughTimer=false
            if s__TrigVariables_Destructable[this] then
                call s__TrigVariables_Flush(this)
            endif
            set GlobalTV=PreGlobalTV
            set Wait=GlobalTV
            call TimerStart(s__TrigVariables_TimerForExecuteTrigger, 0, false, function s__TrigVariables_ExecuteTriggerResetGlobalTV)
        endfunction
            
        function s__TrigVariables_TimerExecuteTrigger takes nothing returns nothing
            local integer this= (LoadInteger(TimerUtils__ht, 0, GetHandleId((GetExpiredTimer())))) // INLINED!!
            set s__TrigVariables_Stage[this]=s__TrigVariables_NextStage[this]
            call s__TrigVariables_ExecuteTrigger(this)
        endfunction
        
        function s__TrigVariables_SleepForStage takes integer this,real dur,integer stage returns nothing
            if s__TrigVariables_t[this] == null then
                return
            endif
            set s__TrigVariables_NextStage[this]=stage
            set s__TrigVariables_Destructable[this]=false
            //set ThroughTimer = false
            call TimerStart(s__TrigVariables_t[this], dur, false, function s__TrigVariables_TimerExecuteTrigger)
        endfunction
        
        function s__TrigVariables_SleepForStageNext takes integer this,real dur returns nothing
            call s__TrigVariables_SleepForStage(this,dur , s__TrigVariables_Stage[this] + 1)
        endfunction
        
        function s__TrigVariables_SleepForStagePrev takes integer this,real dur returns nothing
            call s__TrigVariables_SleepForStage(this,dur , s__TrigVariables_Stage[this] - 1)
        endfunction
        
        function s__TrigVariables_SleepForStageAdd takes integer this,real dur,integer add returns nothing
            call s__TrigVariables_SleepForStage(this,dur , s__TrigVariables_Stage[this] + add)
        endfunction
        function s__TrigVariables_SettingVariables takes nothing returns integer
            local integer this
            local eventid EVENT
            
            set s__TrigVariables_ThroughTimer=true
            
            set this=s__TrigVariables__allocate()
            set GlobalTV=this
            set Wait=GlobalTV
            
            set s__TrigVariables_EventId[this]=GetTriggerEventId()
            set s__TrigVariables_t[this]=NewTimerEx(this)
            set s__TrigVariables_CurrentTrigger[this]=GetTriggeringTrigger()
            
            //To find misuses
            call TimerStart(s__TrigVariables_t[this], 0, false, function s__TrigVariables_TimerAutoFlush)
            set s__TrigVariables_HiEveryone=this
            call TriggerEvaluate(s__s__TrigVariables_tEventId[GetHandleId(s__TrigVariables_EventId[this])])
            call sc__TrigVariables_LVforCreate(this)
            return this
        endfunction
        
        function s__TrigVariables_SettingEx takes integer stage returns nothing
            local integer this
            local eventid EVENT
            
            if GlobalTV != 0 and s__TrigVariables_Stage[GlobalTV] == s__TrigVariables_HELD then
                set s__TrigVariables_Stage[GlobalTV]=stage
                return
            elseif s__TrigVariables_ThroughTimer then
                return
            endif
            
            set this=s__TrigVariables_SettingVariables()
            set s__TrigVariables_Stage[this]=stage
        endfunction
        
        function s__TrigVariables_Setting takes nothing returns nothing
            call s__TrigVariables_SettingEx(1)
        endfunction
        
            
        function s__TrigVariables_SettingIn takes nothing returns nothing
            local integer TempGlobalTV
            if GlobalTV == 0 then
                set TempGlobalTV=GlobalTV
                call s__TrigVariables_SettingVariables()
                set s__TrigVariables_NextGlobalTV[GlobalTV]=TempGlobalTV
            elseif s__TrigVariables_CurrentTrigger[GlobalTV] != GetTriggeringTrigger() then
                set TempGlobalTV=GlobalTV
                call s__TrigVariables_SettingVariables()
                set s__TrigVariables_NextGlobalTV[GlobalTV]=TempGlobalTV
            endif
        endfunction
        
        function s__TrigVariables_SettingOut takes nothing returns nothing
            local integer temp
            if s__TrigVariables_NextGlobalTV[GlobalTV] != s__TrigVariables_HELD then
                set temp=s__TrigVariables_NextGlobalTV[GlobalTV]
                set s__TrigVariables_NextGlobalTV[GlobalTV]=s__TrigVariables_HELD
                set GlobalTV=temp
                set Wait=GlobalTV
            else
                set s__TrigVariables_ThroughTimer=false
            endif
        endfunction
        
        function s__TrigVariables_RegisterSettingOutCallback takes nothing returns nothing
            local timer tm= GetExpiredTimer()
            local trigger trig= LoadTriggerHandle(s__TrigVariables_RgstHASH, 0, GetHandleId(tm))
            call TriggerAddAction(trig, function s__TrigVariables_SettingOut)
            set trig=null
            call RemoveSavedHandle(s__TrigVariables_RgstHASH, 0, GetHandleId(tm))
            call DestroyTimer(tm)
            set tm=null
        endfunction
        function s__TrigVariables_RegisterTimerPutsTriggerToSleep takes trigger t returns nothing
            local timer tm
            if s__TrigVariables_LastRgstTrig == t then
                return
            endif
            set s__TrigVariables_LastRgstTrig=t
            call TriggerAddAction(t, function s__TrigVariables_SettingIn)
            if s__TrigVariables_RgstSeparately then
                set tm=CreateTimer()
                call SaveTriggerHandle(s__TrigVariables_RgstHASH, 0, GetHandleId(tm), t)
                call TimerStart(tm, 0, false, function s__TrigVariables_RegisterSettingOutCallback)
                set tm=null
            else
                set s__TrigVariables_RegisteredTrigger[s__TrigVariables_RegisteredCnt]=t
                set s__TrigVariables_RegisteredCnt=s__TrigVariables_RegisteredCnt + 1
            endif
        endfunction
        
        function s__TrigVariables_RegisterInitTimer takes nothing returns nothing
            local integer i= 0
            loop
                exitwhen i >= s__TrigVariables_RegisteredCnt
                
                call TriggerAddAction(s__TrigVariables_RegisteredTrigger[i], function s__TrigVariables_SettingOut)
                set s__TrigVariables_RegisteredTrigger[i]=null
                
                set i=i + 1
            endloop
            set s__TrigVariables_RegisteredCnt=0
            set s__TrigVariables_LastRgstTrig=null
            set s__TrigVariables_RgstSeparately=true
        endfunction
        
        function s__TrigVariables_InitTimer takes nothing returns nothing
            call DestroyTimer(GetExpiredTimer())
            call s__TrigVariables_RegisterInitTimer()
        endfunction
        
        function s__TrigVariables_onInit takes nothing returns nothing
            call TimerStart(CreateTimer(), 0, false, function s__TrigVariables_InitTimer)
        endfunction
        
        
        function s__TrigVariables_onDestroy takes integer this returns nothing
            set s__TrigVariables_CurrentTrigger[this]=null
            set s__TrigVariables_EventId[this]=null
            set s__TrigVariables_UserData[this]=0
            set s__TrigVariables_Destructable[this]=false
            call sc__TrigVariables_setVoid(this)
        endfunction

//Generated destructor of TrigVariables
function s__TrigVariables_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__TrigVariables_V[this]!=-1) then
        return
    endif
    call s__TrigVariables_onDestroy(this)
    set si__TrigVariables_V[this]=si__TrigVariables_F
    set si__TrigVariables_F=this
endfunction
        function s__TrigVariables_SleepTVForStage takes integer tv,real timeout,integer stage returns nothing
            call s__TrigVariables_SleepForStage((tv),timeout , stage)
        endfunction
//Implemented from module TPTTS_ExpireTrigs:
        
        
        function s__TrigVariables_RegisterEnterRect takes integer this,rect whichRect,boolexpr filter,integer tostage returns nothing
            set s__TimerPutsTriggerToSleep__TrigInfo_last=s__TrigVariables_last[this]
            set s__TrigVariables_last[this]=s__TimerPutsTriggerToSleep__TrigInfo_RegisterEnterRect(whichRect , filter)
            call s__TimerPutsTriggerToSleep__TrigInfo_SetInfo(this , tostage)
        endfunction
        function s__TrigVariables_RegisterUnitEvent takes integer this,unit whichUnit,unitevent whichEvent,boolexpr filter,integer tostage returns nothing
            set s__TimerPutsTriggerToSleep__TrigInfo_last=s__TrigVariables_last[this]
            set s__TrigVariables_last[this]=s__TimerPutsTriggerToSleep__TrigInfo_RegisterUnitEvent(whichUnit , whichEvent , filter)
            call s__TimerPutsTriggerToSleep__TrigInfo_SetInfo(this , tostage)
        endfunction
        function s__TrigVariables_RegisterLeaveRect takes integer this,rect whichRect,boolexpr filter,integer tostage returns nothing
            set s__TimerPutsTriggerToSleep__TrigInfo_last=s__TrigVariables_last[this]
            set s__TrigVariables_last[this]=s__TimerPutsTriggerToSleep__TrigInfo_RegisterLeaveRect(whichRect , filter)
            call s__TimerPutsTriggerToSleep__TrigInfo_SetInfo(this , tostage)
        endfunction
        function s__TrigVariables_RegisterPlayerStateEvent takes integer this,player whichPlayer,playerstate whichState,limitop opcode,real limitval,boolexpr filter,integer tostage returns nothing
            set s__TimerPutsTriggerToSleep__TrigInfo_last=s__TrigVariables_last[this]
            set s__TrigVariables_last[this]=s__TimerPutsTriggerToSleep__TrigInfo_RegisterPlayerStateEvent(whichPlayer , whichState , opcode , limitval , filter)
            call s__TimerPutsTriggerToSleep__TrigInfo_SetInfo(this , tostage)
        endfunction
        function s__TrigVariables_RegisterPlayerUnitEvent takes integer this,player whichPlayer,playerunitevent whichPlayerUnitEvent,boolexpr filter,integer tostage returns nothing
            set s__TimerPutsTriggerToSleep__TrigInfo_last=s__TrigVariables_last[this]
            set s__TrigVariables_last[this]=s__TimerPutsTriggerToSleep__TrigInfo_RegisterPlayerUnitEvent(whichPlayer , whichPlayerUnitEvent , filter)
            call s__TimerPutsTriggerToSleep__TrigInfo_SetInfo(this , tostage)
        endfunction
        function s__TrigVariables_RegisterAnyUnitEvent takes integer this,playerunitevent whichPlayerUnitEvent,boolexpr filter,integer tostage returns nothing
            set s__TimerPutsTriggerToSleep__TrigInfo_last=s__TrigVariables_last[this]
            set s__TrigVariables_last[this]=s__TimerPutsTriggerToSleep__TrigInfo_RegisterAnyUnitEvent(whichPlayerUnitEvent , filter)
            call s__TimerPutsTriggerToSleep__TrigInfo_SetInfo(this , tostage)
        endfunction
        function s__TrigVariables_RegisterTimerExpireEvent takes integer this,timer t,boolexpr filter,integer tostage returns nothing
            set s__TimerPutsTriggerToSleep__TrigInfo_last=s__TrigVariables_last[this]
            set s__TrigVariables_last[this]=s__TimerPutsTriggerToSleep__TrigInfo_RegisterTimerExpireEvent(t , filter)
            call s__TimerPutsTriggerToSleep__TrigInfo_SetInfo(this , tostage)
        endfunction
        function s__TrigVariables_RegisterUnitInRange takes integer this,unit whichUnit,real range,boolexpr filter,integer tostage returns nothing
            set s__TimerPutsTriggerToSleep__TrigInfo_last=s__TrigVariables_last[this]
            set s__TrigVariables_last[this]=s__TimerPutsTriggerToSleep__TrigInfo_RegisterUnitInRange(whichUnit , range , filter)
            call s__TimerPutsTriggerToSleep__TrigInfo_SetInfo(this , tostage)
        endfunction
        function s__TrigVariables_RegisterUnitStateEvent takes integer this,unit whichUnit,unitstate whichState,limitop opcode,real limitval,boolexpr filter,integer tostage returns nothing
            set s__TimerPutsTriggerToSleep__TrigInfo_last=s__TrigVariables_last[this]
            set s__TrigVariables_last[this]=s__TimerPutsTriggerToSleep__TrigInfo_RegisterUnitStateEvent(whichUnit , whichState , opcode , limitval , filter)
            call s__TimerPutsTriggerToSleep__TrigInfo_SetInfo(this , tostage)
        endfunction
        
        function s__TrigVariables_DeleteAllTriggers takes integer this returns nothing
            call s__TimerPutsTriggerToSleep__TrigInfo_DeleteAll(s__TrigVariables_last[this])
            set s__TrigVariables_last[this]=0
        endfunction
        
//Implemented from module TPTTS_WhenEventId:
            

        function s__TrigVariables_WhenEventId_0 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        //if EVENT == EVENT_GAME_VICTORY then
            set s__TrigVariables_WinningPlayer[this]=GetTriggerPlayer()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_4 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        //elseif EVENT == EVENT_GAME_TIMER_EXPIRED then
            set s__TrigVariables_ExpiredTimer[this]=GetExpiredTimer()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_5 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        //elseif EVENT == EVENT_GAME_ENTER_REGION then
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
            set s__TrigVariables_TriggeringRegion[this]=GetTriggeringRegion()
            set s__TrigVariables_EnteringUnit[this]=GetEnteringUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_6 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        //elseif EVENT == EVENT_GAME_LEAVE_REGION then
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
            set s__TrigVariables_TriggeringRegion[this]=GetTriggeringRegion()
            set s__TrigVariables_LeavingUnit[this]=GetLeavingUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_3 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        //elseif EVENT == EVENT_PLAYER_STATE_LIMIT then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_EventPlayerState[this]=GetEventPlayerState()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_G2 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        
        //elseif EVENT == EVENT_PLAYER_ALLIANCE_CHANGED   or/*
        //*/ EVENT == EVENT_PLAYER_DEFEAT             or/*
        //*/ EVENT == EVENT_PLAYER_VICTORY            or/*
        //*/ EVENT == EVENT_PLAYER_LEAVE              or/*
        //*/ EVENT == EVENT_PLAYER_END_CINEMATIC      then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_16 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        //elseif EVENT == EVENT_PLAYER_CHAT then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_EventPlayerChatString[this]=GetEventPlayerChatString()
            set s__TrigVariables_EventPlayerChatStringMatched[this]=GetEventPlayerChatStringMatched()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_G1 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        
        
        
            ///! runtextmacro EVENT_COMPARE_UNIT("HIDDEN")
            ///! runtextmacro EVENT_COMPARE_UNIT("SELECTED")
            ///! runtextmacro EVENT_COMPARE_UNIT("DESELECTED")
            ///! runtextmacro EVENT_COMPARE_UNIT("UPGRADE_START")
            ///! runtextmacro EVENT_COMPARE_UNIT("UPGRADE_CANCEL")
            ///! runtextmacro EVENT_COMPARE_UNIT("UPGRADE_FINISH")
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_18 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("ATTACKED")
            //elseif EVENT == EVENT_PLAYER_UNIT_ATTACKED or EVENT == EVENT_UNIT_ATTACKED then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("ATTACKED")
            set s__TrigVariables_Attacker[this]=GetAttacker()
            set s__TrigVariables_AttackedUnit[this]=GetTriggerUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_19 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("RESCUED")
            //elseif EVENT == EVENT_PLAYER_UNIT_RESCUED or EVENT == EVENT_UNIT_RESCUED then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("RESCUED")
            set s__TrigVariables_Rescuer[this]=GetRescuer()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_20 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("DEATH")
            //elseif EVENT == EVENT_PLAYER_UNIT_DEATH or EVENT == EVENT_UNIT_DEATH then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("DEATH")
            set s__TrigVariables_KillingUnit[this]=GetKillingUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_21 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("DECAY")
            //elseif EVENT == EVENT_PLAYER_UNIT_DECAY or EVENT == EVENT_UNIT_DECAY then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("DECAY")
            set s__TrigVariables_DecayingUnit[this]=GetDecayingUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_22 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("DETECTED")
            //elseif EVENT == EVENT_PLAYER_UNIT_DETECTED or EVENT == EVENT_UNIT_DETECTED then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("DETECTED")
            set s__TrigVariables_DetectedUnit[this]=GetDetectedUnit()
            set s__TrigVariables_EventDetectingPlayer[this]=GetEventDetectingPlayer()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_26 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
            //elseif EVENT == EVENT_PLAYER_UNIT_CONSTRUCT_START then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
            set s__TrigVariables_ConstructingStructure[this]=GetConstructingStructure()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_27 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("CONSTRUCT_CANCEL")
            //elseif EVENT == EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL or EVENT == EVENT_UNIT_CONSTRUCT_CANCEL then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("CONSTRUCT_CANCEL")
            set s__TrigVariables_CancelledStructure[this]=GetCancelledStructure()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_28 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("CONSTRUCT_FINISH")
            //elseif EVENT == EVENT_PLAYER_UNIT_CONSTRUCT_FINISH or EVENT == EVENT_UNIT_CONSTRUCT_FINISH then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("CONSTRUCT_FINISH")
            set s__TrigVariables_ConstructedStructure[this]=GetConstructedStructure()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_32 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("TRAIN_START")
            //elseif EVENT == EVENT_PLAYER_UNIT_TRAIN_START or EVENT == EVENT_UNIT_TRAIN_START then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("TRAIN_START")
            set s__TrigVariables_TrainedUnitType[this]=GetTrainedUnitType()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_33 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("TRAIN_CANCEL")
            //elseif EVENT == EVENT_PLAYER_UNIT_TRAIN_CANCEL or EVENT == EVENT_UNIT_TRAIN_CANCEL then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("TRAIN_CANCEL")
            set s__TrigVariables_TrainedUnitType[this]=GetTrainedUnitType()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_34 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("TRAIN_FINISH")
            //elseif EVENT == EVENT_PLAYER_UNIT_TRAIN_FINISH or EVENT == EVENT_UNIT_TRAIN_FINISH then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("TRAIN_FINISH")
            set s__TrigVariables_TrainedUnit[this]=GetTrainedUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_35 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("RESEARCH_START")
            //elseif EVENT == EVENT_PLAYER_UNIT_RESEARCH_START or EVENT == EVENT_UNIT_RESEARCH_START then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("RESEARCH_START")
            set s__TrigVariables_Researched[this]=GetResearched()
            set s__TrigVariables_ResearchingUnit[this]=GetResearchingUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_36 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("RESEARCH_CANCEL")
            //elseif EVENT == EVENT_PLAYER_UNIT_RESEARCH_CANCEL or EVENT == EVENT_UNIT_RESEARCH_CANCEL then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("RESEARCH_CANCEL")
            set s__TrigVariables_Researched[this]=GetResearched()
            set s__TrigVariables_ResearchingUnit[this]=GetResearchingUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_37 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("RESEARCH_FINISH")
            //elseif EVENT == EVENT_PLAYER_UNIT_RESEARCH_FINISH or EVENT == EVENT_UNIT_RESEARCH_FINISH then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("RESEARCH_FINISH")
            set s__TrigVariables_Researched[this]=GetResearched()
            set s__TrigVariables_ResearchingUnit[this]=GetResearchingUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_38 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("ISSUED_ORDER")
            //elseif EVENT == EVENT_PLAYER_UNIT_ISSUED_ORDER or EVENT == EVENT_UNIT_ISSUED_ORDER then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("ISSUED_ORDER")
            set s__TrigVariables_IssuedOrderId[this]=GetIssuedOrderId()
            set s__TrigVariables_OrderedUnit[this]=GetOrderedUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_39 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("ISSUED_POINT_ORDER")
            //elseif EVENT == EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER or EVENT == EVENT_UNIT_ISSUED_POINT_ORDER then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("ISSUED_POINT_ORDER")
            set s__TrigVariables_IssuedOrderId[this]=GetIssuedOrderId()
            set s__TrigVariables_OrderPointX[this]=GetOrderPointX()
            set s__TrigVariables_OrderPointY[this]=GetOrderPointY()
            set s__TrigVariables_OrderedUnit[this]=GetOrderedUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_40 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("ISSUED_TARGET_ORDER")
            //elseif EVENT == EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER or EVENT == EVENT_UNIT_ISSUED_TARGET_ORDER then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("ISSUED_TARGET_ORDER")
            set s__TrigVariables_IssuedOrderId[this]=GetIssuedOrderId()
            //set OrderTarget            = GetOrderTarget()
            set s__TrigVariables_OrderedUnit[this]=GetOrderedUnit()
            set s__TrigVariables_OrderTargetUnit[this]=GetOrderTargetUnit()
            set s__TrigVariables_OrderTargetDestructable[this]=GetOrderTargetDestructable()
            set s__TrigVariables_OrderTargetItem[this]=GetOrderTargetItem()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_47 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("SUMMON")
            //elseif EVENT == EVENT_PLAYER_UNIT_SUMMON or EVENT == EVENT_UNIT_SUMMON then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("SUMMON")
            set s__TrigVariables_SummonedUnit[this]=GetSummonedUnit()
            set s__TrigVariables_SummoningUnit[this]=GetSummoningUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_48 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("DROP_ITEM")
            //elseif EVENT == EVENT_PLAYER_UNIT_DROP_ITEM or EVENT == EVENT_UNIT_DROP_ITEM then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("DROP_ITEM")
            set s__TrigVariables_ManipulatedItem[this]=GetManipulatedItem()
            set s__TrigVariables_ManipulatingUnit[this]=GetManipulatingUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_49 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("PICKUP_ITEM")
            //elseif EVENT == EVENT_PLAYER_UNIT_PICKUP_ITEM or EVENT == EVENT_UNIT_PICKUP_ITEM then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("PICKUP_ITEM")
            set s__TrigVariables_ManipulatedItem[this]=GetManipulatedItem()
            set s__TrigVariables_ManipulatingUnit[this]=GetManipulatingUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_50 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("USE_ITEM")
            //elseif EVENT == EVENT_PLAYER_UNIT_USE_ITEM or EVENT == EVENT_UNIT_USE_ITEM then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("USE_ITEM")
            set s__TrigVariables_ManipulatedItem[this]=GetManipulatedItem()
            set s__TrigVariables_ManipulatingUnit[this]=GetManipulatingUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_277 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("USE_ITEM")
            //elseif EVENT == EVENT_PLAYER_UNIT_USE_ITEM or EVENT == EVENT_UNIT_USE_ITEM then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("USE_ITEM")
            set s__TrigVariables_ManipulatedItem[this]=GetManipulatedItem()
            set s__TrigVariables_ManipulatingUnit[this]=GetManipulatingUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_51 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("LOADED")
            //elseif EVENT == EVENT_PLAYER_UNIT_LOADED or EVENT == EVENT_UNIT_LOADED then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("LOADED")
            set s__TrigVariables_LoadedUnit[this]=GetLoadedUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_41 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
            
//textmacro instance: EVENT_COMPARE_HERO("LEVEL")
            //elseif EVENT == EVENT_PLAYER_HERO_LEVEL or EVENT == EVENT_UNIT_HERO_LEVEL then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_HERO("LEVEL")
            set s__TrigVariables_LevelingUnit[this]=GetLevelingUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_42 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_HERO("SKILL")
            //elseif EVENT == EVENT_PLAYER_HERO_SKILL or EVENT == EVENT_UNIT_HERO_SKILL then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_HERO("SKILL")
            set s__TrigVariables_LearnedSkill[this]=GetLearnedSkill()
            set s__TrigVariables_LearnedSkillLevel[this]=GetLearnedSkillLevel()
            set s__TrigVariables_LearningUnit[this]=GetLearningUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_43 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_HERO("REVIVABLE")
            //elseif EVENT == EVENT_PLAYER_HERO_REVIVABLE or EVENT == EVENT_UNIT_HERO_REVIVABLE then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_HERO("REVIVABLE")
            set s__TrigVariables_RevivableUnit[this]=GetRevivableUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_44 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_HERO("REVIVE_START")
            //elseif EVENT == EVENT_PLAYER_HERO_REVIVE_START or EVENT == EVENT_UNIT_HERO_REVIVE_START then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_HERO("REVIVE_START")
            set s__TrigVariables_RevivingUnit[this]=GetRevivingUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_45 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_HERO("REVIVE_CANCEL")
            //elseif EVENT == EVENT_PLAYER_HERO_REVIVE_CANCEL or EVENT == EVENT_UNIT_HERO_REVIVE_CANCEL then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_HERO("REVIVE_CANCEL")
            set s__TrigVariables_RevivingUnit[this]=GetRevivingUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_46 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_HERO("REVIVE_FINISH")
            //elseif EVENT == EVENT_PLAYER_HERO_REVIVE_FINISH or EVENT == EVENT_UNIT_HERO_REVIVE_FINISH then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_HERO("REVIVE_FINISH")
            set s__TrigVariables_RevivingUnit[this]=GetRevivingUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_52 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        //elseif EVENT == EVENT_UNIT_DAMAGED then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
            set s__TrigVariables_EventDamage[this]=GetEventDamage()
            set s__TrigVariables_EventDamageSource[this]=GetEventDamageSource()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_60 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        //elseif EVENT == EVENT_UNIT_ACQUIRED_TARGET then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
            set s__TrigVariables_EventTargetUnit[this]=GetEventTargetUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_61 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        //elseif EVENT == EVENT_UNIT_TARGET_IN_RANGE then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_92 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        //elseif EVENT == EVENT_DIALOG_BUTTON_CLICK then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_ClickedButton[this]=GetClickedButton()
            set s__TrigVariables_ClickedDialog[this]=GetClickedDialog()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_G3 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        
        
        
        //elseif EVENT == EVENT_UNIT_SPELL_CHANNEL        or /*
        //*/ EVENT == EVENT_UNIT_SPELL_CAST           or /*
        //*/ EVENT == EVENT_UNIT_SPELL_EFFECT         or /*
        //*/ EVENT == EVENT_UNIT_SPELL_FINISH         or /*
        //*/ EVENT == EVENT_UNIT_SPELL_ENDCAST        or /*
        //*/ EVENT == EVENT_PLAYER_UNIT_SPELL_CHANNEL or /*
        //*/ EVENT == EVENT_PLAYER_UNIT_SPELL_CAST    or /*
        //*/ EVENT == EVENT_PLAYER_UNIT_SPELL_EFFECT  or /*
        //*/ EVENT == EVENT_PLAYER_UNIT_SPELL_FINISH  or /*
        //*/ EVENT == EVENT_PLAYER_UNIT_SPELL_ENDCAST then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
            set s__TrigVariables_SpellAbilityUnit[this]=GetSpellAbilityUnit()
            set s__TrigVariables_SpellAbilityId[this]=GetSpellAbilityId()
            set s__TrigVariables_SpellTargetX[this]=GetSpellTargetX()
            set s__TrigVariables_SpellTargetY[this]=GetSpellTargetY()
            set s__TrigVariables_SpellTargetDestructable[this]=GetSpellTargetDestructable()
            set s__TrigVariables_SpellTargetItem[this]=GetSpellTargetItem()
            set s__TrigVariables_SpellTargetUnit[this]=GetSpellTargetUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_G4 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        
        
        //elseif EVENT == EVENT_PLAYER_ARROW_LEFT_DOWN  or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_LEFT_UP    or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_RIGHT_DOWN or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_RIGHT_UP   or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_DOWN_DOWN  or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_DOWN_UP    or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_UP_DOWN    or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_UP_UP      then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_270 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("CHANGE_OWNER")
            //elseif EVENT == EVENT_PLAYER_UNIT_CHANGE_OWNER or EVENT == EVENT_UNIT_CHANGE_OWNER then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("CHANGE_OWNER")
            set s__TrigVariables_ChangingUnitPrevOwner[this]=GetChangingUnitPrevOwner()
            set s__TrigVariables_ChangingUnit[this]=GetChangingUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_269 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("SELL")
            //elseif EVENT == EVENT_PLAYER_UNIT_SELL or EVENT == EVENT_UNIT_SELL then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("SELL")
            set s__TrigVariables_SellingUnit[this]=GetSellingUnit()
            set s__TrigVariables_SoldUnit[this]=GetSoldUnit()
            set s__TrigVariables_BuyingUnit[this]=GetBuyingUnit()
            return false
        endfunction
        function s__TrigVariables_WhenEventId_271 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT("SELL_ITEM")
            //elseif EVENT == EVENT_PLAYER_UNIT_SELL_ITEM or EVENT == EVENT_UNIT_SELL_ITEM then
            set s__TrigVariables_TriggerPlayer[this]=GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT("SELL_ITEM")
            set s__TrigVariables_SoldItem[this]=GetSoldItem()
            return false
        endfunction
        
        function s__TrigVariables_InitWhenEventId takes nothing returns nothing
            
//textmacro instance: InitEventIdTrig("G1")
                set s__s__TrigVariables_tEventId[s__TrigVariables_G1]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[s__TrigVariables_G1], Condition(function s__TrigVariables_WhenEventId_G1))
//end of: InitEventIdTrig("G1")
            set s__s__TrigVariables_tEventId[23]= s__s__TrigVariables_tEventId[s__TrigVariables_G1]
            set s__s__TrigVariables_tEventId[24]= s__s__TrigVariables_tEventId[s__TrigVariables_G1]
            set s__s__TrigVariables_tEventId[25]= s__s__TrigVariables_tEventId[s__TrigVariables_G1]
            set s__s__TrigVariables_tEventId[29]= s__s__TrigVariables_tEventId[s__TrigVariables_G1]
            set s__s__TrigVariables_tEventId[30]= s__s__TrigVariables_tEventId[s__TrigVariables_G1]
            set s__s__TrigVariables_tEventId[31]= s__s__TrigVariables_tEventId[s__TrigVariables_G1]
            set s__s__TrigVariables_tEventId[66]= s__s__TrigVariables_tEventId[s__TrigVariables_G1]
            set s__s__TrigVariables_tEventId[67]= s__s__TrigVariables_tEventId[s__TrigVariables_G1]
            set s__s__TrigVariables_tEventId[78]= s__s__TrigVariables_tEventId[s__TrigVariables_G1]
//textmacro instance: InitEventIdTrig("G2")
                set s__s__TrigVariables_tEventId[s__TrigVariables_G2]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[s__TrigVariables_G2], Condition(function s__TrigVariables_WhenEventId_G2))
//end of: InitEventIdTrig("G2")
            set s__s__TrigVariables_tEventId[13]= s__s__TrigVariables_tEventId[s__TrigVariables_G2]
            set s__s__TrigVariables_tEventId[14]= s__s__TrigVariables_tEventId[s__TrigVariables_G2]
            set s__s__TrigVariables_tEventId[15]= s__s__TrigVariables_tEventId[s__TrigVariables_G2]
            set s__s__TrigVariables_tEventId[17]= s__s__TrigVariables_tEventId[s__TrigVariables_G2]
//textmacro instance: InitEventIdTrig("G3")
                set s__s__TrigVariables_tEventId[s__TrigVariables_G3]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[s__TrigVariables_G3], Condition(function s__TrigVariables_WhenEventId_G3))
//end of: InitEventIdTrig("G3")
            set s__s__TrigVariables_tEventId[272]= s__s__TrigVariables_tEventId[s__TrigVariables_G3]
            set s__s__TrigVariables_tEventId[273]= s__s__TrigVariables_tEventId[s__TrigVariables_G3]
            set s__s__TrigVariables_tEventId[274]= s__s__TrigVariables_tEventId[s__TrigVariables_G3]
            set s__s__TrigVariables_tEventId[275]= s__s__TrigVariables_tEventId[s__TrigVariables_G3]
            set s__s__TrigVariables_tEventId[276]= s__s__TrigVariables_tEventId[s__TrigVariables_G3]
            set s__s__TrigVariables_tEventId[289]= s__s__TrigVariables_tEventId[s__TrigVariables_G3]
            set s__s__TrigVariables_tEventId[290]= s__s__TrigVariables_tEventId[s__TrigVariables_G3]
            set s__s__TrigVariables_tEventId[291]= s__s__TrigVariables_tEventId[s__TrigVariables_G3]
            set s__s__TrigVariables_tEventId[292]= s__s__TrigVariables_tEventId[s__TrigVariables_G3]
            set s__s__TrigVariables_tEventId[293]= s__s__TrigVariables_tEventId[s__TrigVariables_G3]
//textmacro instance: InitEventIdTrig("G4")
                set s__s__TrigVariables_tEventId[s__TrigVariables_G4]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[s__TrigVariables_G4], Condition(function s__TrigVariables_WhenEventId_G4))
//end of: InitEventIdTrig("G4")
            set s__s__TrigVariables_tEventId[261]= s__s__TrigVariables_tEventId[s__TrigVariables_G4]
            set s__s__TrigVariables_tEventId[262]= s__s__TrigVariables_tEventId[s__TrigVariables_G4]
            set s__s__TrigVariables_tEventId[263]= s__s__TrigVariables_tEventId[s__TrigVariables_G4]
            set s__s__TrigVariables_tEventId[264]= s__s__TrigVariables_tEventId[s__TrigVariables_G4]
            set s__s__TrigVariables_tEventId[265]= s__s__TrigVariables_tEventId[s__TrigVariables_G4]
            set s__s__TrigVariables_tEventId[266]= s__s__TrigVariables_tEventId[s__TrigVariables_G4]
            set s__s__TrigVariables_tEventId[267]= s__s__TrigVariables_tEventId[s__TrigVariables_G4]
            set s__s__TrigVariables_tEventId[268]= s__s__TrigVariables_tEventId[s__TrigVariables_G4]
//textmacro instance: InitEventIdTrig("0")
                set s__s__TrigVariables_tEventId[0]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[0], Condition(function s__TrigVariables_WhenEventId_0))
//end of: InitEventIdTrig("0")
//textmacro instance: InitEventIdTrig("3")
                set s__s__TrigVariables_tEventId[3]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[3], Condition(function s__TrigVariables_WhenEventId_3))
//end of: InitEventIdTrig("3")
//textmacro instance: InitEventIdTrig("4")
                set s__s__TrigVariables_tEventId[4]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[4], Condition(function s__TrigVariables_WhenEventId_4))
//end of: InitEventIdTrig("4")
//textmacro instance: InitEventIdTrig("5")
                set s__s__TrigVariables_tEventId[5]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[5], Condition(function s__TrigVariables_WhenEventId_5))
//end of: InitEventIdTrig("5")
//textmacro instance: InitEventIdTrig("6")
                set s__s__TrigVariables_tEventId[6]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[6], Condition(function s__TrigVariables_WhenEventId_6))
//end of: InitEventIdTrig("6")
//textmacro instance: InitEventIdTrig("16")
                set s__s__TrigVariables_tEventId[16]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[16], Condition(function s__TrigVariables_WhenEventId_16))
//end of: InitEventIdTrig("16")
//textmacro instance: InitEventIdTrigDouble("18","62")
                set s__s__TrigVariables_tEventId[18]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[18], Condition(function s__TrigVariables_WhenEventId_18))
                set s__s__TrigVariables_tEventId[62]= s__s__TrigVariables_tEventId[18]
//end of: InitEventIdTrigDouble("18","62")
//textmacro instance: InitEventIdTrigDouble("19","63")
                set s__s__TrigVariables_tEventId[19]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[19], Condition(function s__TrigVariables_WhenEventId_19))
                set s__s__TrigVariables_tEventId[63]= s__s__TrigVariables_tEventId[19]
//end of: InitEventIdTrigDouble("19","63")
//textmacro instance: InitEventIdTrigDouble("20","53")
                set s__s__TrigVariables_tEventId[20]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[20], Condition(function s__TrigVariables_WhenEventId_20))
                set s__s__TrigVariables_tEventId[53]= s__s__TrigVariables_tEventId[20]
//end of: InitEventIdTrigDouble("20","53")
//textmacro instance: InitEventIdTrigDouble("21","54")
                set s__s__TrigVariables_tEventId[21]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[21], Condition(function s__TrigVariables_WhenEventId_21))
                set s__s__TrigVariables_tEventId[54]= s__s__TrigVariables_tEventId[21]
//end of: InitEventIdTrigDouble("21","54")
//textmacro instance: InitEventIdTrigDouble("22","55")
                set s__s__TrigVariables_tEventId[22]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[22], Condition(function s__TrigVariables_WhenEventId_22))
                set s__s__TrigVariables_tEventId[55]= s__s__TrigVariables_tEventId[22]
//end of: InitEventIdTrigDouble("22","55")
//textmacro instance: InitEventIdTrig("26")
                set s__s__TrigVariables_tEventId[26]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[26], Condition(function s__TrigVariables_WhenEventId_26))
//end of: InitEventIdTrig("26")
//textmacro instance: InitEventIdTrigDouble("27","64")
                set s__s__TrigVariables_tEventId[27]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[27], Condition(function s__TrigVariables_WhenEventId_27))
                set s__s__TrigVariables_tEventId[64]= s__s__TrigVariables_tEventId[27]
//end of: InitEventIdTrigDouble("27","64")
//textmacro instance: InitEventIdTrigDouble("28","65")
                set s__s__TrigVariables_tEventId[28]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[28], Condition(function s__TrigVariables_WhenEventId_28))
                set s__s__TrigVariables_tEventId[65]= s__s__TrigVariables_tEventId[28]
//end of: InitEventIdTrigDouble("28","65")
//textmacro instance: InitEventIdTrigDouble("32","69")
                set s__s__TrigVariables_tEventId[32]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[32], Condition(function s__TrigVariables_WhenEventId_32))
                set s__s__TrigVariables_tEventId[69]= s__s__TrigVariables_tEventId[32]
//end of: InitEventIdTrigDouble("32","69")
//textmacro instance: InitEventIdTrigDouble("33","70")
                set s__s__TrigVariables_tEventId[33]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[33], Condition(function s__TrigVariables_WhenEventId_33))
                set s__s__TrigVariables_tEventId[70]= s__s__TrigVariables_tEventId[33]
//end of: InitEventIdTrigDouble("33","70")
//textmacro instance: InitEventIdTrigDouble("34","71")
                set s__s__TrigVariables_tEventId[34]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[34], Condition(function s__TrigVariables_WhenEventId_34))
                set s__s__TrigVariables_tEventId[71]= s__s__TrigVariables_tEventId[34]
//end of: InitEventIdTrigDouble("34","71")
//textmacro instance: InitEventIdTrigDouble("35","72")
                set s__s__TrigVariables_tEventId[35]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[35], Condition(function s__TrigVariables_WhenEventId_35))
                set s__s__TrigVariables_tEventId[72]= s__s__TrigVariables_tEventId[35]
//end of: InitEventIdTrigDouble("35","72")
//textmacro instance: InitEventIdTrigDouble("36","73")
                set s__s__TrigVariables_tEventId[36]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[36], Condition(function s__TrigVariables_WhenEventId_36))
                set s__s__TrigVariables_tEventId[73]= s__s__TrigVariables_tEventId[36]
//end of: InitEventIdTrigDouble("36","73")
//textmacro instance: InitEventIdTrigDouble("37","74")
                set s__s__TrigVariables_tEventId[37]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[37], Condition(function s__TrigVariables_WhenEventId_37))
                set s__s__TrigVariables_tEventId[74]= s__s__TrigVariables_tEventId[37]
//end of: InitEventIdTrigDouble("37","74")
//textmacro instance: InitEventIdTrigDouble("38","75")
                set s__s__TrigVariables_tEventId[38]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[38], Condition(function s__TrigVariables_WhenEventId_38))
                set s__s__TrigVariables_tEventId[75]= s__s__TrigVariables_tEventId[38]
//end of: InitEventIdTrigDouble("38","75")
//textmacro instance: InitEventIdTrigDouble("39","76")
                set s__s__TrigVariables_tEventId[39]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[39], Condition(function s__TrigVariables_WhenEventId_39))
                set s__s__TrigVariables_tEventId[76]= s__s__TrigVariables_tEventId[39]
//end of: InitEventIdTrigDouble("39","76")
//textmacro instance: InitEventIdTrigDouble("41","77")
                set s__s__TrigVariables_tEventId[41]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[41], Condition(function s__TrigVariables_WhenEventId_41))
                set s__s__TrigVariables_tEventId[77]= s__s__TrigVariables_tEventId[41]
//end of: InitEventIdTrigDouble("41","77")
//textmacro instance: InitEventIdTrigDouble("40","78")
                set s__s__TrigVariables_tEventId[40]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[40], Condition(function s__TrigVariables_WhenEventId_40))
                set s__s__TrigVariables_tEventId[78]= s__s__TrigVariables_tEventId[40]
//end of: InitEventIdTrigDouble("40","78")
//textmacro instance: InitEventIdTrigDouble("42","79")
                set s__s__TrigVariables_tEventId[42]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[42], Condition(function s__TrigVariables_WhenEventId_42))
                set s__s__TrigVariables_tEventId[79]= s__s__TrigVariables_tEventId[42]
//end of: InitEventIdTrigDouble("42","79")
//textmacro instance: InitEventIdTrigDouble("43","80")
                set s__s__TrigVariables_tEventId[43]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[43], Condition(function s__TrigVariables_WhenEventId_43))
                set s__s__TrigVariables_tEventId[80]= s__s__TrigVariables_tEventId[43]
//end of: InitEventIdTrigDouble("43","80")
//textmacro instance: InitEventIdTrigDouble("44","81")
                set s__s__TrigVariables_tEventId[44]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[44], Condition(function s__TrigVariables_WhenEventId_44))
                set s__s__TrigVariables_tEventId[81]= s__s__TrigVariables_tEventId[44]
//end of: InitEventIdTrigDouble("44","81")
//textmacro instance: InitEventIdTrigDouble("45","82")
                set s__s__TrigVariables_tEventId[45]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[45], Condition(function s__TrigVariables_WhenEventId_45))
                set s__s__TrigVariables_tEventId[82]= s__s__TrigVariables_tEventId[45]
//end of: InitEventIdTrigDouble("45","82")
//textmacro instance: InitEventIdTrigDouble("46","83")
                set s__s__TrigVariables_tEventId[46]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[46], Condition(function s__TrigVariables_WhenEventId_46))
                set s__s__TrigVariables_tEventId[83]= s__s__TrigVariables_tEventId[46]
//end of: InitEventIdTrigDouble("46","83")
//textmacro instance: InitEventIdTrigDouble("47","84")
                set s__s__TrigVariables_tEventId[47]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[47], Condition(function s__TrigVariables_WhenEventId_47))
                set s__s__TrigVariables_tEventId[84]= s__s__TrigVariables_tEventId[47]
//end of: InitEventIdTrigDouble("47","84")
//textmacro instance: InitEventIdTrigDouble("48","85")
                set s__s__TrigVariables_tEventId[48]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[48], Condition(function s__TrigVariables_WhenEventId_48))
                set s__s__TrigVariables_tEventId[85]= s__s__TrigVariables_tEventId[48]
//end of: InitEventIdTrigDouble("48","85")
//textmacro instance: InitEventIdTrigDouble("49","86")
                set s__s__TrigVariables_tEventId[49]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[49], Condition(function s__TrigVariables_WhenEventId_49))
                set s__s__TrigVariables_tEventId[86]= s__s__TrigVariables_tEventId[49]
//end of: InitEventIdTrigDouble("49","86")
//textmacro instance: InitEventIdTrigDouble("50","87")
                set s__s__TrigVariables_tEventId[50]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[50], Condition(function s__TrigVariables_WhenEventId_50))
                set s__s__TrigVariables_tEventId[87]= s__s__TrigVariables_tEventId[50]
//end of: InitEventIdTrigDouble("50","87")
//textmacro instance: InitEventIdTrigDouble("51","88")
                set s__s__TrigVariables_tEventId[51]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[51], Condition(function s__TrigVariables_WhenEventId_51))
                set s__s__TrigVariables_tEventId[88]= s__s__TrigVariables_tEventId[51]
//end of: InitEventIdTrigDouble("51","88")
//textmacro instance: InitEventIdTrigDouble("269","286")
                set s__s__TrigVariables_tEventId[269]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[269], Condition(function s__TrigVariables_WhenEventId_269))
                set s__s__TrigVariables_tEventId[286]= s__s__TrigVariables_tEventId[269]
//end of: InitEventIdTrigDouble("269","286")
//textmacro instance: InitEventIdTrigDouble("270","287")
                set s__s__TrigVariables_tEventId[270]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[270], Condition(function s__TrigVariables_WhenEventId_270))
                set s__s__TrigVariables_tEventId[287]= s__s__TrigVariables_tEventId[270]
//end of: InitEventIdTrigDouble("270","287")
//textmacro instance: InitEventIdTrigDouble("271","288")
                set s__s__TrigVariables_tEventId[271]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[271], Condition(function s__TrigVariables_WhenEventId_271))
                set s__s__TrigVariables_tEventId[288]= s__s__TrigVariables_tEventId[271]
//end of: InitEventIdTrigDouble("271","288")
//textmacro instance: InitEventIdTrigDouble("277","294")
                set s__s__TrigVariables_tEventId[277]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[277], Condition(function s__TrigVariables_WhenEventId_277))
                set s__s__TrigVariables_tEventId[294]= s__s__TrigVariables_tEventId[277]
//end of: InitEventIdTrigDouble("277","294")
//textmacro instance: InitEventIdTrig("52")
                set s__s__TrigVariables_tEventId[52]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[52], Condition(function s__TrigVariables_WhenEventId_52))
//end of: InitEventIdTrig("52")
//textmacro instance: InitEventIdTrig("60")
                set s__s__TrigVariables_tEventId[60]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[60], Condition(function s__TrigVariables_WhenEventId_60))
//end of: InitEventIdTrig("60")
//textmacro instance: InitEventIdTrig("61")
                set s__s__TrigVariables_tEventId[61]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[61], Condition(function s__TrigVariables_WhenEventId_61))
//end of: InitEventIdTrig("61")
//textmacro instance: InitEventIdTrig("92")
                set s__s__TrigVariables_tEventId[92]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEventId[92], Condition(function s__TrigVariables_WhenEventId_92))
//end of: InitEventIdTrig("92")
        endfunction
        function s__TrigVariables_TPTTS_WhenEventId___onInit takes nothing returns nothing
            //call ExecuteFunc("thistype.InitWhenEventId")
            call s__TrigVariables_InitWhenEventId()
        endfunction
        
        
//Implemented from module TPTTS_LinkedVariables:
        
            function s__TrigVariables_addFuncForVoid takes code func returns nothing
                local code dddd= func
                call TriggerAddCondition(s__TrigVariables_trigForVoid, Condition(dddd))
            endfunction
            function s__TrigVariables_setVoid takes integer this returns nothing
                set s__TrigVariables_thisForVoid=this
                call TriggerEvaluate(s__TrigVariables_trigForVoid)
            endfunction
            function s__TrigVariables_LVforCreate takes integer this returns nothing
                set s__TrigVariables_player[this]=this
                set s__TrigVariables_force[this]=this
                set s__TrigVariables_group[this]=this
                set s__TrigVariables_item[this]=this
                set s__TrigVariables_effect[this]=this
                set s__TrigVariables_timer[this]=this
                set s__TrigVariables_unit[this]=this
                set s__TrigVariables_location[this]=this
                set s__TrigVariables_lightning[this]=this
                set s__TrigVariables_integer[this]=this
                set s__TrigVariables_real[this]=this
                set s__TrigVariables_boolean[this]=this
            endfunction
        constant function s__TrigVariables_I2I takes integer i returns integer
            return i
        endfunction
        function s__TrigVariables_locationDelete takes location x returns nothing
            call RemoveLocation(x)
        endfunction
        function s__TrigVariables_effectDelete takes effect x returns nothing
            call DestroyEffect(x)
        endfunction
        function s__TrigVariables_lightningDelete takes lightning x returns nothing
            if x != null then
                call DestroyLightning(x)
            endif
        endfunction
        function s__TrigVariables_groupDelete takes group x returns nothing
            call DestroyGroup(x)
        endfunction
        function s__TrigVariables_forceDelete takes force x returns nothing
            call DestroyForce(x)
        endfunction
			
            //static if TimerPutsTriggerToSleep_USE_NAME_ALPHABET then
            function s__TrigVariables__get_playerA takes integer this returns player
                return (LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, (this) * s__TrigVariables_arraySize + (0))) // INLINED!!
            endfunction
            function s__TrigVariables__get_playerB takes integer this returns player
                return (LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, (this) * s__TrigVariables_arraySize + (1))) // INLINED!!
            endfunction
            function s__TrigVariables__get_playerC takes integer this returns player
                return (LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, (this) * s__TrigVariables_arraySize + (2))) // INLINED!!
            endfunction
            function s__TrigVariables__get_playerD takes integer this returns player
                return (LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, (this) * s__TrigVariables_arraySize + (3))) // INLINED!!
            endfunction
            function s__TrigVariables__get_playerE takes integer this returns player
                return (LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, (this) * s__TrigVariables_arraySize + (4))) // INLINED!!
            endfunction
            function s__TrigVariables__get_playerF takes integer this returns player
                return (LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, (this) * s__TrigVariables_arraySize + (5))) // INLINED!!
            endfunction
            function s__TrigVariables__get_playerG takes integer this returns player
                return (LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, (this) * s__TrigVariables_arraySize + (6))) // INLINED!!
            endfunction
            function s__TrigVariables__get_playerH takes integer this returns player
                return (LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, (this) * s__TrigVariables_arraySize + (7))) // INLINED!!
            endfunction
            function s__TrigVariables__get_playerI takes integer this returns player
                return (LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, (this) * s__TrigVariables_arraySize + (8))) // INLINED!!
            endfunction
            function s__TrigVariables__get_playerJ takes integer this returns player
                return (LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, (this) * s__TrigVariables_arraySize + (9))) // INLINED!!
            endfunction
            function s__TrigVariables__get_playerK takes integer this returns player
                return (LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, (this) * s__TrigVariables_arraySize + (10))) // INLINED!!
            endfunction
            function s__TrigVariables__get_playerL takes integer this returns player
                return (LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, (this) * s__TrigVariables_arraySize + (11))) // INLINED!!
            endfunction
            function s__TrigVariables__get_playerM takes integer this returns player
                return (LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, (this) * s__TrigVariables_arraySize + (12))) // INLINED!!
            endfunction
            function s__TrigVariables__get_playerN takes integer this returns player
                return (LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, (this) * s__TrigVariables_arraySize + (13))) // INLINED!!
            endfunction
            function s__TrigVariables__get_playerO takes integer this returns player
                return (LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, (this) * s__TrigVariables_arraySize + (14))) // INLINED!!
            endfunction
            function s__TrigVariables__get_playerP takes integer this returns player
                return (LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, (this) * s__TrigVariables_arraySize + (15))) // INLINED!!
            endfunction

            function s__TrigVariables__set_playerA takes integer this,player which returns nothing
                call sc__TrigVariables_Setplayer(this,0 , which)
            endfunction
            function s__TrigVariables__set_playerB takes integer this,player which returns nothing
                call sc__TrigVariables_Setplayer(this,1 , which)
            endfunction
            function s__TrigVariables__set_playerC takes integer this,player which returns nothing
                call sc__TrigVariables_Setplayer(this,2 , which)
            endfunction
            function s__TrigVariables__set_playerD takes integer this,player which returns nothing
                call sc__TrigVariables_Setplayer(this,3 , which)
            endfunction
            function s__TrigVariables__set_playerE takes integer this,player which returns nothing
                call sc__TrigVariables_Setplayer(this,4 , which)
            endfunction
            function s__TrigVariables__set_playerF takes integer this,player which returns nothing
                call sc__TrigVariables_Setplayer(this,5 , which)
            endfunction
            function s__TrigVariables__set_playerG takes integer this,player which returns nothing
                call sc__TrigVariables_Setplayer(this,6 , which)
            endfunction
            function s__TrigVariables__set_playerH takes integer this,player which returns nothing
                call sc__TrigVariables_Setplayer(this,7 , which)
            endfunction
            function s__TrigVariables__set_playerI takes integer this,player which returns nothing
                call sc__TrigVariables_Setplayer(this,8 , which)
            endfunction
            function s__TrigVariables__set_playerJ takes integer this,player which returns nothing
                call sc__TrigVariables_Setplayer(this,9 , which)
            endfunction
            function s__TrigVariables__set_playerK takes integer this,player which returns nothing
                call sc__TrigVariables_Setplayer(this,10 , which)
            endfunction
            function s__TrigVariables__set_playerL takes integer this,player which returns nothing
                call sc__TrigVariables_Setplayer(this,11 , which)
            endfunction
            function s__TrigVariables__set_playerM takes integer this,player which returns nothing
                call sc__TrigVariables_Setplayer(this,12 , which)
            endfunction
            function s__TrigVariables__set_playerN takes integer this,player which returns nothing
                call sc__TrigVariables_Setplayer(this,13 , which)
            endfunction
            function s__TrigVariables__set_playerO takes integer this,player which returns nothing
                call sc__TrigVariables_Setplayer(this,14 , which)
            endfunction
            function s__TrigVariables__set_playerP takes integer this,player which returns nothing
                call sc__TrigVariables_Setplayer(this,15 , which)
            endfunction
            //endif
            
            function s__TrigVariables_getIndicatorplayer takes integer this,integer id returns integer
                return LoadInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetplayer + id + 2) - 2
            endfunction
            function s__TrigVariables_setIndicatorplayer takes integer this,integer id,integer value returns nothing
                call SaveInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetplayer + id + 2, value + 2)
            endfunction
            function s__TrigVariables_remIndicatorplayer takes integer this,integer id returns nothing
                call RemoveSavedInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetplayer + id + 2)
            endfunction

            function s__TrigVariables_LinkedVariables_player___StateSetUsedplayer takes integer this,integer id returns nothing
                if (LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetplayer + (id) + 2) - 2) == - 2 then // INLINED!!
                    call SaveInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetplayer + (id ) + 2, ( s__TrigVariables_lastSetplayer[this]) + 2) // INLINED!!
                    set s__TrigVariables_lastSetplayer[this]=id
                endif
            endfunction
            function s__TrigVariables_SetplayerNaive takes integer this,integer i,player x returns nothing
                call SavePlayerHandle(s__TrigVariables_Hashplayer, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Setplayer takes integer this,integer i,player x returns nothing
                call s__TrigVariables_LinkedVariables_player___StateSetUsedplayer(this,i)
                call RemoveSavedHandle(s__TrigVariables_Hashplayer, 0, this * s__TrigVariables_arraySize + i)
                call SavePlayerHandle(s__TrigVariables_Hashplayer, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Getplayer takes integer this,integer i returns player
                return LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, this * s__TrigVariables_arraySize + i)
            endfunction
            function s__TrigVariables_Remplayer takes integer this,integer i returns nothing
                call RemoveSavedHandle(s__TrigVariables_Hashplayer, 0, this * s__TrigVariables_arraySize + i)
            endfunction












            function s__TrigVariables_SetplayerBy takes integer this,integer i,player x returns nothing
                call s__TrigVariables_Setplayer(this,i , x)
            endfunction

            function s__TrigVariables_GetplayerBy takes integer this,integer i returns player
                return (LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, (this) * s__TrigVariables_arraySize + (i))) // INLINED!!
            endfunction
            function s__TrigVariables_setVoidplayer takes nothing returns nothing
                local integer this= s__TrigVariables_thisForVoid
                local integer i
                local integer k
                if s__TrigVariables_lastSetplayer[this] == - 1 then
                    return
                endif
                set i=s__TrigVariables_lastSetplayer[this]
                loop
                    exitwhen i == - 1



                    call RemoveSavedHandle(s__TrigVariables_Hashplayer, 0, (this) * s__TrigVariables_arraySize + (i)) // INLINED!!
                    set k=(LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetplayer + (i) + 2) - 2) // INLINED!!
                    call RemoveSavedInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetplayer + (i) + 2) // INLINED!!
                    set i=k
                endloop
                //set lastSetplayer = 1
            endfunction
            function s__TrigVariables_LinkedVariables_player___onInit takes nothing returns nothing
                call s__TrigVariables_addFuncForVoid(function s__TrigVariables_setVoidplayer)
            endfunction
			
            //static if TimerPutsTriggerToSleep_USE_NAME_ALPHABET then
            function s__TrigVariables__get_forceA takes integer this returns force
                return (LoadForceHandle(s__TrigVariables_Hashforce, 0, (this) * s__TrigVariables_arraySize + (0))) // INLINED!!
            endfunction
            function s__TrigVariables__get_forceB takes integer this returns force
                return (LoadForceHandle(s__TrigVariables_Hashforce, 0, (this) * s__TrigVariables_arraySize + (1))) // INLINED!!
            endfunction
            function s__TrigVariables__get_forceC takes integer this returns force
                return (LoadForceHandle(s__TrigVariables_Hashforce, 0, (this) * s__TrigVariables_arraySize + (2))) // INLINED!!
            endfunction
            function s__TrigVariables__get_forceD takes integer this returns force
                return (LoadForceHandle(s__TrigVariables_Hashforce, 0, (this) * s__TrigVariables_arraySize + (3))) // INLINED!!
            endfunction
            function s__TrigVariables__get_forceE takes integer this returns force
                return (LoadForceHandle(s__TrigVariables_Hashforce, 0, (this) * s__TrigVariables_arraySize + (4))) // INLINED!!
            endfunction
            function s__TrigVariables__get_forceF takes integer this returns force
                return (LoadForceHandle(s__TrigVariables_Hashforce, 0, (this) * s__TrigVariables_arraySize + (5))) // INLINED!!
            endfunction
            function s__TrigVariables__get_forceG takes integer this returns force
                return (LoadForceHandle(s__TrigVariables_Hashforce, 0, (this) * s__TrigVariables_arraySize + (6))) // INLINED!!
            endfunction
            function s__TrigVariables__get_forceH takes integer this returns force
                return (LoadForceHandle(s__TrigVariables_Hashforce, 0, (this) * s__TrigVariables_arraySize + (7))) // INLINED!!
            endfunction
            function s__TrigVariables__get_forceI takes integer this returns force
                return (LoadForceHandle(s__TrigVariables_Hashforce, 0, (this) * s__TrigVariables_arraySize + (8))) // INLINED!!
            endfunction
            function s__TrigVariables__get_forceJ takes integer this returns force
                return (LoadForceHandle(s__TrigVariables_Hashforce, 0, (this) * s__TrigVariables_arraySize + (9))) // INLINED!!
            endfunction
            function s__TrigVariables__get_forceK takes integer this returns force
                return (LoadForceHandle(s__TrigVariables_Hashforce, 0, (this) * s__TrigVariables_arraySize + (10))) // INLINED!!
            endfunction
            function s__TrigVariables__get_forceL takes integer this returns force
                return (LoadForceHandle(s__TrigVariables_Hashforce, 0, (this) * s__TrigVariables_arraySize + (11))) // INLINED!!
            endfunction
            function s__TrigVariables__get_forceM takes integer this returns force
                return (LoadForceHandle(s__TrigVariables_Hashforce, 0, (this) * s__TrigVariables_arraySize + (12))) // INLINED!!
            endfunction
            function s__TrigVariables__get_forceN takes integer this returns force
                return (LoadForceHandle(s__TrigVariables_Hashforce, 0, (this) * s__TrigVariables_arraySize + (13))) // INLINED!!
            endfunction
            function s__TrigVariables__get_forceO takes integer this returns force
                return (LoadForceHandle(s__TrigVariables_Hashforce, 0, (this) * s__TrigVariables_arraySize + (14))) // INLINED!!
            endfunction
            function s__TrigVariables__get_forceP takes integer this returns force
                return (LoadForceHandle(s__TrigVariables_Hashforce, 0, (this) * s__TrigVariables_arraySize + (15))) // INLINED!!
            endfunction

            function s__TrigVariables__set_forceA takes integer this,force which returns nothing
                call sc__TrigVariables_Setforce(this,0 , which)
            endfunction
            function s__TrigVariables__set_forceB takes integer this,force which returns nothing
                call sc__TrigVariables_Setforce(this,1 , which)
            endfunction
            function s__TrigVariables__set_forceC takes integer this,force which returns nothing
                call sc__TrigVariables_Setforce(this,2 , which)
            endfunction
            function s__TrigVariables__set_forceD takes integer this,force which returns nothing
                call sc__TrigVariables_Setforce(this,3 , which)
            endfunction
            function s__TrigVariables__set_forceE takes integer this,force which returns nothing
                call sc__TrigVariables_Setforce(this,4 , which)
            endfunction
            function s__TrigVariables__set_forceF takes integer this,force which returns nothing
                call sc__TrigVariables_Setforce(this,5 , which)
            endfunction
            function s__TrigVariables__set_forceG takes integer this,force which returns nothing
                call sc__TrigVariables_Setforce(this,6 , which)
            endfunction
            function s__TrigVariables__set_forceH takes integer this,force which returns nothing
                call sc__TrigVariables_Setforce(this,7 , which)
            endfunction
            function s__TrigVariables__set_forceI takes integer this,force which returns nothing
                call sc__TrigVariables_Setforce(this,8 , which)
            endfunction
            function s__TrigVariables__set_forceJ takes integer this,force which returns nothing
                call sc__TrigVariables_Setforce(this,9 , which)
            endfunction
            function s__TrigVariables__set_forceK takes integer this,force which returns nothing
                call sc__TrigVariables_Setforce(this,10 , which)
            endfunction
            function s__TrigVariables__set_forceL takes integer this,force which returns nothing
                call sc__TrigVariables_Setforce(this,11 , which)
            endfunction
            function s__TrigVariables__set_forceM takes integer this,force which returns nothing
                call sc__TrigVariables_Setforce(this,12 , which)
            endfunction
            function s__TrigVariables__set_forceN takes integer this,force which returns nothing
                call sc__TrigVariables_Setforce(this,13 , which)
            endfunction
            function s__TrigVariables__set_forceO takes integer this,force which returns nothing
                call sc__TrigVariables_Setforce(this,14 , which)
            endfunction
            function s__TrigVariables__set_forceP takes integer this,force which returns nothing
                call sc__TrigVariables_Setforce(this,15 , which)
            endfunction
            //endif
            
            function s__TrigVariables_getIndicatorforce takes integer this,integer id returns integer
                return LoadInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetforce + id + 2) - 2
            endfunction
            function s__TrigVariables_setIndicatorforce takes integer this,integer id,integer value returns nothing
                call SaveInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetforce + id + 2, value + 2)
            endfunction
            function s__TrigVariables_remIndicatorforce takes integer this,integer id returns nothing
                call RemoveSavedInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetforce + id + 2)
            endfunction

            function s__TrigVariables_LinkedVariables_force__StateSetUsedforce takes integer this,integer id returns nothing
                if (LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetforce + (id) + 2) - 2) == - 2 then // INLINED!!
                    call SaveInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetforce + (id ) + 2, ( s__TrigVariables_lastSetforce[this]) + 2) // INLINED!!
                    set s__TrigVariables_lastSetforce[this]=id
                endif
            endfunction
            function s__TrigVariables_SetforceNaive takes integer this,integer i,force x returns nothing
                call SaveForceHandle(s__TrigVariables_Hashforce, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Setforce takes integer this,integer i,force x returns nothing
                call s__TrigVariables_LinkedVariables_force__StateSetUsedforce(this,i)
                call RemoveSavedHandle(s__TrigVariables_Hashforce, 0, this * s__TrigVariables_arraySize + i)
                call SaveForceHandle(s__TrigVariables_Hashforce, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Getforce takes integer this,integer i returns force
                return LoadForceHandle(s__TrigVariables_Hashforce, 0, this * s__TrigVariables_arraySize + i)
            endfunction
            function s__TrigVariables_Remforce takes integer this,integer i returns nothing
                call RemoveSavedHandle(s__TrigVariables_Hashforce, 0, this * s__TrigVariables_arraySize + i)
            endfunction

            function s__TrigVariables_SetforceAutoRemove takes integer this,integer i,force x returns nothing
                call DestroyForce(((LoadForceHandle(s__TrigVariables_Hashforce, 0, (this) * s__TrigVariables_arraySize + (i))))) // INLINED!!
                call s__TrigVariables_Setforce(this,i , x)
            endfunction
            function s__TrigVariables_SetforceBy takes integer this,integer i,force x returns nothing
                call s__TrigVariables_SetforceAutoRemove(this,i , x)
            endfunction
            function s__TrigVariables_SetLLV2forceAutoRemove takes integer this,integer i,force x returns nothing
                call s__TrigVariables_SetforceAutoRemove(this,i , x)
            endfunction





            function s__TrigVariables_GetforceBy takes integer this,integer i returns force
                return (LoadForceHandle(s__TrigVariables_Hashforce, 0, (this) * s__TrigVariables_arraySize + (i))) // INLINED!!
            endfunction
            function s__TrigVariables_setVoidforce takes nothing returns nothing
                local integer this= s__TrigVariables_thisForVoid
                local integer i
                local integer k
                if s__TrigVariables_lastSetforce[this] == - 1 then
                    return
                endif
                set i=s__TrigVariables_lastSetforce[this]
                loop
                    exitwhen i == - 1



                    call RemoveSavedHandle(s__TrigVariables_Hashforce, 0, (this) * s__TrigVariables_arraySize + (i)) // INLINED!!
                    set k=(LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetforce + (i) + 2) - 2) // INLINED!!
                    call RemoveSavedInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetforce + (i) + 2) // INLINED!!
                    set i=k
                endloop
                //set lastSetforce = 1
            endfunction
            function s__TrigVariables_LinkedVariables_force__onInit takes nothing returns nothing
                call s__TrigVariables_addFuncForVoid(function s__TrigVariables_setVoidforce)
            endfunction
			
            //static if TimerPutsTriggerToSleep_USE_NAME_ALPHABET then
            function s__TrigVariables__get_groupA takes integer this returns group
                return (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, (this) * s__TrigVariables_arraySize + (0))) // INLINED!!
            endfunction
            function s__TrigVariables__get_groupB takes integer this returns group
                return (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, (this) * s__TrigVariables_arraySize + (1))) // INLINED!!
            endfunction
            function s__TrigVariables__get_groupC takes integer this returns group
                return (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, (this) * s__TrigVariables_arraySize + (2))) // INLINED!!
            endfunction
            function s__TrigVariables__get_groupD takes integer this returns group
                return (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, (this) * s__TrigVariables_arraySize + (3))) // INLINED!!
            endfunction
            function s__TrigVariables__get_groupE takes integer this returns group
                return (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, (this) * s__TrigVariables_arraySize + (4))) // INLINED!!
            endfunction
            function s__TrigVariables__get_groupF takes integer this returns group
                return (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, (this) * s__TrigVariables_arraySize + (5))) // INLINED!!
            endfunction
            function s__TrigVariables__get_groupG takes integer this returns group
                return (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, (this) * s__TrigVariables_arraySize + (6))) // INLINED!!
            endfunction
            function s__TrigVariables__get_groupH takes integer this returns group
                return (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, (this) * s__TrigVariables_arraySize + (7))) // INLINED!!
            endfunction
            function s__TrigVariables__get_groupI takes integer this returns group
                return (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, (this) * s__TrigVariables_arraySize + (8))) // INLINED!!
            endfunction
            function s__TrigVariables__get_groupJ takes integer this returns group
                return (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, (this) * s__TrigVariables_arraySize + (9))) // INLINED!!
            endfunction
            function s__TrigVariables__get_groupK takes integer this returns group
                return (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, (this) * s__TrigVariables_arraySize + (10))) // INLINED!!
            endfunction
            function s__TrigVariables__get_groupL takes integer this returns group
                return (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, (this) * s__TrigVariables_arraySize + (11))) // INLINED!!
            endfunction
            function s__TrigVariables__get_groupM takes integer this returns group
                return (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, (this) * s__TrigVariables_arraySize + (12))) // INLINED!!
            endfunction
            function s__TrigVariables__get_groupN takes integer this returns group
                return (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, (this) * s__TrigVariables_arraySize + (13))) // INLINED!!
            endfunction
            function s__TrigVariables__get_groupO takes integer this returns group
                return (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, (this) * s__TrigVariables_arraySize + (14))) // INLINED!!
            endfunction
            function s__TrigVariables__get_groupP takes integer this returns group
                return (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, (this) * s__TrigVariables_arraySize + (15))) // INLINED!!
            endfunction

            function s__TrigVariables__set_groupA takes integer this,group which returns nothing
                call sc__TrigVariables_Setgroup(this,0 , which)
            endfunction
            function s__TrigVariables__set_groupB takes integer this,group which returns nothing
                call sc__TrigVariables_Setgroup(this,1 , which)
            endfunction
            function s__TrigVariables__set_groupC takes integer this,group which returns nothing
                call sc__TrigVariables_Setgroup(this,2 , which)
            endfunction
            function s__TrigVariables__set_groupD takes integer this,group which returns nothing
                call sc__TrigVariables_Setgroup(this,3 , which)
            endfunction
            function s__TrigVariables__set_groupE takes integer this,group which returns nothing
                call sc__TrigVariables_Setgroup(this,4 , which)
            endfunction
            function s__TrigVariables__set_groupF takes integer this,group which returns nothing
                call sc__TrigVariables_Setgroup(this,5 , which)
            endfunction
            function s__TrigVariables__set_groupG takes integer this,group which returns nothing
                call sc__TrigVariables_Setgroup(this,6 , which)
            endfunction
            function s__TrigVariables__set_groupH takes integer this,group which returns nothing
                call sc__TrigVariables_Setgroup(this,7 , which)
            endfunction
            function s__TrigVariables__set_groupI takes integer this,group which returns nothing
                call sc__TrigVariables_Setgroup(this,8 , which)
            endfunction
            function s__TrigVariables__set_groupJ takes integer this,group which returns nothing
                call sc__TrigVariables_Setgroup(this,9 , which)
            endfunction
            function s__TrigVariables__set_groupK takes integer this,group which returns nothing
                call sc__TrigVariables_Setgroup(this,10 , which)
            endfunction
            function s__TrigVariables__set_groupL takes integer this,group which returns nothing
                call sc__TrigVariables_Setgroup(this,11 , which)
            endfunction
            function s__TrigVariables__set_groupM takes integer this,group which returns nothing
                call sc__TrigVariables_Setgroup(this,12 , which)
            endfunction
            function s__TrigVariables__set_groupN takes integer this,group which returns nothing
                call sc__TrigVariables_Setgroup(this,13 , which)
            endfunction
            function s__TrigVariables__set_groupO takes integer this,group which returns nothing
                call sc__TrigVariables_Setgroup(this,14 , which)
            endfunction
            function s__TrigVariables__set_groupP takes integer this,group which returns nothing
                call sc__TrigVariables_Setgroup(this,15 , which)
            endfunction
            //endif
            
            function s__TrigVariables_getIndicatorgroup takes integer this,integer id returns integer
                return LoadInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetgroup + id + 2) - 2
            endfunction
            function s__TrigVariables_setIndicatorgroup takes integer this,integer id,integer value returns nothing
                call SaveInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetgroup + id + 2, value + 2)
            endfunction
            function s__TrigVariables_remIndicatorgroup takes integer this,integer id returns nothing
                call RemoveSavedInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetgroup + id + 2)
            endfunction

            function s__TrigVariables_LinkedVariables_group___StateSetUsedgroup takes integer this,integer id returns nothing
                if (LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetgroup + (id) + 2) - 2) == - 2 then // INLINED!!
                    call SaveInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetgroup + (id ) + 2, ( s__TrigVariables_lastSetgroup[this]) + 2) // INLINED!!
                    set s__TrigVariables_lastSetgroup[this]=id
                endif
            endfunction
            function s__TrigVariables_SetgroupNaive takes integer this,integer i,group x returns nothing
                call SaveGroupHandle(s__TrigVariables_Hashgroup, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Setgroup takes integer this,integer i,group x returns nothing
                call s__TrigVariables_LinkedVariables_group___StateSetUsedgroup(this,i)
                call RemoveSavedHandle(s__TrigVariables_Hashgroup, 0, this * s__TrigVariables_arraySize + i)
                call SaveGroupHandle(s__TrigVariables_Hashgroup, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Getgroup takes integer this,integer i returns group
                return LoadGroupHandle(s__TrigVariables_Hashgroup, 0, this * s__TrigVariables_arraySize + i)
            endfunction
            function s__TrigVariables_Remgroup takes integer this,integer i returns nothing
                call RemoveSavedHandle(s__TrigVariables_Hashgroup, 0, this * s__TrigVariables_arraySize + i)
            endfunction

            function s__TrigVariables_SetgroupAutoRemove takes integer this,integer i,group x returns nothing
                call DestroyGroup(((LoadGroupHandle(s__TrigVariables_Hashgroup, 0, (this) * s__TrigVariables_arraySize + (i))))) // INLINED!!
                call s__TrigVariables_Setgroup(this,i , x)
            endfunction
            function s__TrigVariables_SetgroupBy takes integer this,integer i,group x returns nothing
                call s__TrigVariables_SetgroupAutoRemove(this,i , x)
            endfunction
            function s__TrigVariables_SetLLV3groupAutoRemove takes integer this,integer i,group x returns nothing
                call s__TrigVariables_SetgroupAutoRemove(this,i , x)
            endfunction





            function s__TrigVariables_GetgroupBy takes integer this,integer i returns group
                return (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, (this) * s__TrigVariables_arraySize + (i))) // INLINED!!
            endfunction
            function s__TrigVariables_setVoidgroup takes nothing returns nothing
                local integer this= s__TrigVariables_thisForVoid
                local integer i
                local integer k
                if s__TrigVariables_lastSetgroup[this] == - 1 then
                    return
                endif
                set i=s__TrigVariables_lastSetgroup[this]
                loop
                    exitwhen i == - 1



                    call RemoveSavedHandle(s__TrigVariables_Hashgroup, 0, (this) * s__TrigVariables_arraySize + (i)) // INLINED!!
                    set k=(LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetgroup + (i) + 2) - 2) // INLINED!!
                    call RemoveSavedInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetgroup + (i) + 2) // INLINED!!
                    set i=k
                endloop
                //set lastSetgroup = 1
            endfunction
            function s__TrigVariables_LinkedVariables_group___onInit takes nothing returns nothing
                call s__TrigVariables_addFuncForVoid(function s__TrigVariables_setVoidgroup)
            endfunction
			
            //static if TimerPutsTriggerToSleep_USE_NAME_ALPHABET then
            function s__TrigVariables__get_itemA takes integer this returns item
                return (LoadItemHandle(s__TrigVariables_Hashitem, 0, (this) * s__TrigVariables_arraySize + (0))) // INLINED!!
            endfunction
            function s__TrigVariables__get_itemB takes integer this returns item
                return (LoadItemHandle(s__TrigVariables_Hashitem, 0, (this) * s__TrigVariables_arraySize + (1))) // INLINED!!
            endfunction
            function s__TrigVariables__get_itemC takes integer this returns item
                return (LoadItemHandle(s__TrigVariables_Hashitem, 0, (this) * s__TrigVariables_arraySize + (2))) // INLINED!!
            endfunction
            function s__TrigVariables__get_itemD takes integer this returns item
                return (LoadItemHandle(s__TrigVariables_Hashitem, 0, (this) * s__TrigVariables_arraySize + (3))) // INLINED!!
            endfunction
            function s__TrigVariables__get_itemE takes integer this returns item
                return (LoadItemHandle(s__TrigVariables_Hashitem, 0, (this) * s__TrigVariables_arraySize + (4))) // INLINED!!
            endfunction
            function s__TrigVariables__get_itemF takes integer this returns item
                return (LoadItemHandle(s__TrigVariables_Hashitem, 0, (this) * s__TrigVariables_arraySize + (5))) // INLINED!!
            endfunction
            function s__TrigVariables__get_itemG takes integer this returns item
                return (LoadItemHandle(s__TrigVariables_Hashitem, 0, (this) * s__TrigVariables_arraySize + (6))) // INLINED!!
            endfunction
            function s__TrigVariables__get_itemH takes integer this returns item
                return (LoadItemHandle(s__TrigVariables_Hashitem, 0, (this) * s__TrigVariables_arraySize + (7))) // INLINED!!
            endfunction
            function s__TrigVariables__get_itemI takes integer this returns item
                return (LoadItemHandle(s__TrigVariables_Hashitem, 0, (this) * s__TrigVariables_arraySize + (8))) // INLINED!!
            endfunction
            function s__TrigVariables__get_itemJ takes integer this returns item
                return (LoadItemHandle(s__TrigVariables_Hashitem, 0, (this) * s__TrigVariables_arraySize + (9))) // INLINED!!
            endfunction
            function s__TrigVariables__get_itemK takes integer this returns item
                return (LoadItemHandle(s__TrigVariables_Hashitem, 0, (this) * s__TrigVariables_arraySize + (10))) // INLINED!!
            endfunction
            function s__TrigVariables__get_itemL takes integer this returns item
                return (LoadItemHandle(s__TrigVariables_Hashitem, 0, (this) * s__TrigVariables_arraySize + (11))) // INLINED!!
            endfunction
            function s__TrigVariables__get_itemM takes integer this returns item
                return (LoadItemHandle(s__TrigVariables_Hashitem, 0, (this) * s__TrigVariables_arraySize + (12))) // INLINED!!
            endfunction
            function s__TrigVariables__get_itemN takes integer this returns item
                return (LoadItemHandle(s__TrigVariables_Hashitem, 0, (this) * s__TrigVariables_arraySize + (13))) // INLINED!!
            endfunction
            function s__TrigVariables__get_itemO takes integer this returns item
                return (LoadItemHandle(s__TrigVariables_Hashitem, 0, (this) * s__TrigVariables_arraySize + (14))) // INLINED!!
            endfunction
            function s__TrigVariables__get_itemP takes integer this returns item
                return (LoadItemHandle(s__TrigVariables_Hashitem, 0, (this) * s__TrigVariables_arraySize + (15))) // INLINED!!
            endfunction

            function s__TrigVariables__set_itemA takes integer this,item which returns nothing
                call sc__TrigVariables_Setitem(this,0 , which)
            endfunction
            function s__TrigVariables__set_itemB takes integer this,item which returns nothing
                call sc__TrigVariables_Setitem(this,1 , which)
            endfunction
            function s__TrigVariables__set_itemC takes integer this,item which returns nothing
                call sc__TrigVariables_Setitem(this,2 , which)
            endfunction
            function s__TrigVariables__set_itemD takes integer this,item which returns nothing
                call sc__TrigVariables_Setitem(this,3 , which)
            endfunction
            function s__TrigVariables__set_itemE takes integer this,item which returns nothing
                call sc__TrigVariables_Setitem(this,4 , which)
            endfunction
            function s__TrigVariables__set_itemF takes integer this,item which returns nothing
                call sc__TrigVariables_Setitem(this,5 , which)
            endfunction
            function s__TrigVariables__set_itemG takes integer this,item which returns nothing
                call sc__TrigVariables_Setitem(this,6 , which)
            endfunction
            function s__TrigVariables__set_itemH takes integer this,item which returns nothing
                call sc__TrigVariables_Setitem(this,7 , which)
            endfunction
            function s__TrigVariables__set_itemI takes integer this,item which returns nothing
                call sc__TrigVariables_Setitem(this,8 , which)
            endfunction
            function s__TrigVariables__set_itemJ takes integer this,item which returns nothing
                call sc__TrigVariables_Setitem(this,9 , which)
            endfunction
            function s__TrigVariables__set_itemK takes integer this,item which returns nothing
                call sc__TrigVariables_Setitem(this,10 , which)
            endfunction
            function s__TrigVariables__set_itemL takes integer this,item which returns nothing
                call sc__TrigVariables_Setitem(this,11 , which)
            endfunction
            function s__TrigVariables__set_itemM takes integer this,item which returns nothing
                call sc__TrigVariables_Setitem(this,12 , which)
            endfunction
            function s__TrigVariables__set_itemN takes integer this,item which returns nothing
                call sc__TrigVariables_Setitem(this,13 , which)
            endfunction
            function s__TrigVariables__set_itemO takes integer this,item which returns nothing
                call sc__TrigVariables_Setitem(this,14 , which)
            endfunction
            function s__TrigVariables__set_itemP takes integer this,item which returns nothing
                call sc__TrigVariables_Setitem(this,15 , which)
            endfunction
            //endif
            
            function s__TrigVariables_getIndicatoritem takes integer this,integer id returns integer
                return LoadInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetitem + id + 2) - 2
            endfunction
            function s__TrigVariables_setIndicatoritem takes integer this,integer id,integer value returns nothing
                call SaveInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetitem + id + 2, value + 2)
            endfunction
            function s__TrigVariables_remIndicatoritem takes integer this,integer id returns nothing
                call RemoveSavedInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetitem + id + 2)
            endfunction

            function s__TrigVariables_LinkedVariables_item__StateSetUseditem takes integer this,integer id returns nothing
                if (LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetitem + (id) + 2) - 2) == - 2 then // INLINED!!
                    call SaveInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetitem + (id ) + 2, ( s__TrigVariables_lastSetitem[this]) + 2) // INLINED!!
                    set s__TrigVariables_lastSetitem[this]=id
                endif
            endfunction
            function s__TrigVariables_SetitemNaive takes integer this,integer i,item x returns nothing
                call SaveItemHandle(s__TrigVariables_Hashitem, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Setitem takes integer this,integer i,item x returns nothing
                call s__TrigVariables_LinkedVariables_item__StateSetUseditem(this,i)
                call RemoveSavedHandle(s__TrigVariables_Hashitem, 0, this * s__TrigVariables_arraySize + i)
                call SaveItemHandle(s__TrigVariables_Hashitem, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Getitem takes integer this,integer i returns item
                return LoadItemHandle(s__TrigVariables_Hashitem, 0, this * s__TrigVariables_arraySize + i)
            endfunction
            function s__TrigVariables_Remitem takes integer this,integer i returns nothing
                call RemoveSavedHandle(s__TrigVariables_Hashitem, 0, this * s__TrigVariables_arraySize + i)
            endfunction












            function s__TrigVariables_SetitemBy takes integer this,integer i,item x returns nothing
                call s__TrigVariables_Setitem(this,i , x)
            endfunction

            function s__TrigVariables_GetitemBy takes integer this,integer i returns item
                return (LoadItemHandle(s__TrigVariables_Hashitem, 0, (this) * s__TrigVariables_arraySize + (i))) // INLINED!!
            endfunction
            function s__TrigVariables_setVoiditem takes nothing returns nothing
                local integer this= s__TrigVariables_thisForVoid
                local integer i
                local integer k
                if s__TrigVariables_lastSetitem[this] == - 1 then
                    return
                endif
                set i=s__TrigVariables_lastSetitem[this]
                loop
                    exitwhen i == - 1



                    call RemoveSavedHandle(s__TrigVariables_Hashitem, 0, (this) * s__TrigVariables_arraySize + (i)) // INLINED!!
                    set k=(LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetitem + (i) + 2) - 2) // INLINED!!
                    call RemoveSavedInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetitem + (i) + 2) // INLINED!!
                    set i=k
                endloop
                //set lastSetitem = 1
            endfunction
            function s__TrigVariables_LinkedVariables_item__onInit takes nothing returns nothing
                call s__TrigVariables_addFuncForVoid(function s__TrigVariables_setVoiditem)
            endfunction
			
            //static if TimerPutsTriggerToSleep_USE_NAME_ALPHABET then
            function s__TrigVariables__get_effectA takes integer this returns effect
                return (LoadEffectHandle(s__TrigVariables_Hasheffect, 0, (this) * s__TrigVariables_arraySize + (0))) // INLINED!!
            endfunction
            function s__TrigVariables__get_effectB takes integer this returns effect
                return (LoadEffectHandle(s__TrigVariables_Hasheffect, 0, (this) * s__TrigVariables_arraySize + (1))) // INLINED!!
            endfunction
            function s__TrigVariables__get_effectC takes integer this returns effect
                return (LoadEffectHandle(s__TrigVariables_Hasheffect, 0, (this) * s__TrigVariables_arraySize + (2))) // INLINED!!
            endfunction
            function s__TrigVariables__get_effectD takes integer this returns effect
                return (LoadEffectHandle(s__TrigVariables_Hasheffect, 0, (this) * s__TrigVariables_arraySize + (3))) // INLINED!!
            endfunction
            function s__TrigVariables__get_effectE takes integer this returns effect
                return (LoadEffectHandle(s__TrigVariables_Hasheffect, 0, (this) * s__TrigVariables_arraySize + (4))) // INLINED!!
            endfunction
            function s__TrigVariables__get_effectF takes integer this returns effect
                return (LoadEffectHandle(s__TrigVariables_Hasheffect, 0, (this) * s__TrigVariables_arraySize + (5))) // INLINED!!
            endfunction
            function s__TrigVariables__get_effectG takes integer this returns effect
                return (LoadEffectHandle(s__TrigVariables_Hasheffect, 0, (this) * s__TrigVariables_arraySize + (6))) // INLINED!!
            endfunction
            function s__TrigVariables__get_effectH takes integer this returns effect
                return (LoadEffectHandle(s__TrigVariables_Hasheffect, 0, (this) * s__TrigVariables_arraySize + (7))) // INLINED!!
            endfunction
            function s__TrigVariables__get_effectI takes integer this returns effect
                return (LoadEffectHandle(s__TrigVariables_Hasheffect, 0, (this) * s__TrigVariables_arraySize + (8))) // INLINED!!
            endfunction
            function s__TrigVariables__get_effectJ takes integer this returns effect
                return (LoadEffectHandle(s__TrigVariables_Hasheffect, 0, (this) * s__TrigVariables_arraySize + (9))) // INLINED!!
            endfunction
            function s__TrigVariables__get_effectK takes integer this returns effect
                return (LoadEffectHandle(s__TrigVariables_Hasheffect, 0, (this) * s__TrigVariables_arraySize + (10))) // INLINED!!
            endfunction
            function s__TrigVariables__get_effectL takes integer this returns effect
                return (LoadEffectHandle(s__TrigVariables_Hasheffect, 0, (this) * s__TrigVariables_arraySize + (11))) // INLINED!!
            endfunction
            function s__TrigVariables__get_effectM takes integer this returns effect
                return (LoadEffectHandle(s__TrigVariables_Hasheffect, 0, (this) * s__TrigVariables_arraySize + (12))) // INLINED!!
            endfunction
            function s__TrigVariables__get_effectN takes integer this returns effect
                return (LoadEffectHandle(s__TrigVariables_Hasheffect, 0, (this) * s__TrigVariables_arraySize + (13))) // INLINED!!
            endfunction
            function s__TrigVariables__get_effectO takes integer this returns effect
                return (LoadEffectHandle(s__TrigVariables_Hasheffect, 0, (this) * s__TrigVariables_arraySize + (14))) // INLINED!!
            endfunction
            function s__TrigVariables__get_effectP takes integer this returns effect
                return (LoadEffectHandle(s__TrigVariables_Hasheffect, 0, (this) * s__TrigVariables_arraySize + (15))) // INLINED!!
            endfunction

            function s__TrigVariables__set_effectA takes integer this,effect which returns nothing
                call sc__TrigVariables_Seteffect(this,0 , which)
            endfunction
            function s__TrigVariables__set_effectB takes integer this,effect which returns nothing
                call sc__TrigVariables_Seteffect(this,1 , which)
            endfunction
            function s__TrigVariables__set_effectC takes integer this,effect which returns nothing
                call sc__TrigVariables_Seteffect(this,2 , which)
            endfunction
            function s__TrigVariables__set_effectD takes integer this,effect which returns nothing
                call sc__TrigVariables_Seteffect(this,3 , which)
            endfunction
            function s__TrigVariables__set_effectE takes integer this,effect which returns nothing
                call sc__TrigVariables_Seteffect(this,4 , which)
            endfunction
            function s__TrigVariables__set_effectF takes integer this,effect which returns nothing
                call sc__TrigVariables_Seteffect(this,5 , which)
            endfunction
            function s__TrigVariables__set_effectG takes integer this,effect which returns nothing
                call sc__TrigVariables_Seteffect(this,6 , which)
            endfunction
            function s__TrigVariables__set_effectH takes integer this,effect which returns nothing
                call sc__TrigVariables_Seteffect(this,7 , which)
            endfunction
            function s__TrigVariables__set_effectI takes integer this,effect which returns nothing
                call sc__TrigVariables_Seteffect(this,8 , which)
            endfunction
            function s__TrigVariables__set_effectJ takes integer this,effect which returns nothing
                call sc__TrigVariables_Seteffect(this,9 , which)
            endfunction
            function s__TrigVariables__set_effectK takes integer this,effect which returns nothing
                call sc__TrigVariables_Seteffect(this,10 , which)
            endfunction
            function s__TrigVariables__set_effectL takes integer this,effect which returns nothing
                call sc__TrigVariables_Seteffect(this,11 , which)
            endfunction
            function s__TrigVariables__set_effectM takes integer this,effect which returns nothing
                call sc__TrigVariables_Seteffect(this,12 , which)
            endfunction
            function s__TrigVariables__set_effectN takes integer this,effect which returns nothing
                call sc__TrigVariables_Seteffect(this,13 , which)
            endfunction
            function s__TrigVariables__set_effectO takes integer this,effect which returns nothing
                call sc__TrigVariables_Seteffect(this,14 , which)
            endfunction
            function s__TrigVariables__set_effectP takes integer this,effect which returns nothing
                call sc__TrigVariables_Seteffect(this,15 , which)
            endfunction
            //endif
            
            function s__TrigVariables_getIndicatoreffect takes integer this,integer id returns integer
                return LoadInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offseteffect + id + 2) - 2
            endfunction
            function s__TrigVariables_setIndicatoreffect takes integer this,integer id,integer value returns nothing
                call SaveInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offseteffect + id + 2, value + 2)
            endfunction
            function s__TrigVariables_remIndicatoreffect takes integer this,integer id returns nothing
                call RemoveSavedInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offseteffect + id + 2)
            endfunction

            function s__TrigVariables_LinkedVariables_effect___StateSetUsedeffect takes integer this,integer id returns nothing
                if (LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offseteffect + (id) + 2) - 2) == - 2 then // INLINED!!
                    call SaveInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offseteffect + (id ) + 2, ( s__TrigVariables_lastSeteffect[this]) + 2) // INLINED!!
                    set s__TrigVariables_lastSeteffect[this]=id
                endif
            endfunction
            function s__TrigVariables_SeteffectNaive takes integer this,integer i,effect x returns nothing
                call SaveEffectHandle(s__TrigVariables_Hasheffect, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Seteffect takes integer this,integer i,effect x returns nothing
                call s__TrigVariables_LinkedVariables_effect___StateSetUsedeffect(this,i)
                call RemoveSavedHandle(s__TrigVariables_Hasheffect, 0, this * s__TrigVariables_arraySize + i)
                call SaveEffectHandle(s__TrigVariables_Hasheffect, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Geteffect takes integer this,integer i returns effect
                return LoadEffectHandle(s__TrigVariables_Hasheffect, 0, this * s__TrigVariables_arraySize + i)
            endfunction
            function s__TrigVariables_Remeffect takes integer this,integer i returns nothing
                call RemoveSavedHandle(s__TrigVariables_Hasheffect, 0, this * s__TrigVariables_arraySize + i)
            endfunction

            function s__TrigVariables_SeteffectAutoRemove takes integer this,integer i,effect x returns nothing
                call DestroyEffect(((LoadEffectHandle(s__TrigVariables_Hasheffect, 0, (this) * s__TrigVariables_arraySize + (i))))) // INLINED!!
                call s__TrigVariables_Seteffect(this,i , x)
            endfunction
            function s__TrigVariables_SeteffectBy takes integer this,integer i,effect x returns nothing
                call s__TrigVariables_SeteffectAutoRemove(this,i , x)
            endfunction
            function s__TrigVariables_SetLLV3effectAutoRemove takes integer this,integer i,effect x returns nothing
                call s__TrigVariables_SeteffectAutoRemove(this,i , x)
            endfunction





            function s__TrigVariables_GeteffectBy takes integer this,integer i returns effect
                return (LoadEffectHandle(s__TrigVariables_Hasheffect, 0, (this) * s__TrigVariables_arraySize + (i))) // INLINED!!
            endfunction
            function s__TrigVariables_setVoideffect takes nothing returns nothing
                local integer this= s__TrigVariables_thisForVoid
                local integer i
                local integer k
                if s__TrigVariables_lastSeteffect[this] == - 1 then
                    return
                endif
                set i=s__TrigVariables_lastSeteffect[this]
                loop
                    exitwhen i == - 1



                    call RemoveSavedHandle(s__TrigVariables_Hasheffect, 0, (this) * s__TrigVariables_arraySize + (i)) // INLINED!!
                    set k=(LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offseteffect + (i) + 2) - 2) // INLINED!!
                    call RemoveSavedInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offseteffect + (i) + 2) // INLINED!!
                    set i=k
                endloop
                //set lastSeteffect = 1
            endfunction
            function s__TrigVariables_LinkedVariables_effect___onInit takes nothing returns nothing
                call s__TrigVariables_addFuncForVoid(function s__TrigVariables_setVoideffect)
            endfunction
			
            //static if TimerPutsTriggerToSleep_USE_NAME_ALPHABET then
            function s__TrigVariables__get_timerA takes integer this returns timer
                return (LoadTimerHandle(s__TrigVariables_Hashtimer, 0, (this) * s__TrigVariables_arraySize + (0))) // INLINED!!
            endfunction
            function s__TrigVariables__get_timerB takes integer this returns timer
                return (LoadTimerHandle(s__TrigVariables_Hashtimer, 0, (this) * s__TrigVariables_arraySize + (1))) // INLINED!!
            endfunction
            function s__TrigVariables__get_timerC takes integer this returns timer
                return (LoadTimerHandle(s__TrigVariables_Hashtimer, 0, (this) * s__TrigVariables_arraySize + (2))) // INLINED!!
            endfunction
            function s__TrigVariables__get_timerD takes integer this returns timer
                return (LoadTimerHandle(s__TrigVariables_Hashtimer, 0, (this) * s__TrigVariables_arraySize + (3))) // INLINED!!
            endfunction
            function s__TrigVariables__get_timerE takes integer this returns timer
                return (LoadTimerHandle(s__TrigVariables_Hashtimer, 0, (this) * s__TrigVariables_arraySize + (4))) // INLINED!!
            endfunction
            function s__TrigVariables__get_timerF takes integer this returns timer
                return (LoadTimerHandle(s__TrigVariables_Hashtimer, 0, (this) * s__TrigVariables_arraySize + (5))) // INLINED!!
            endfunction
            function s__TrigVariables__get_timerG takes integer this returns timer
                return (LoadTimerHandle(s__TrigVariables_Hashtimer, 0, (this) * s__TrigVariables_arraySize + (6))) // INLINED!!
            endfunction
            function s__TrigVariables__get_timerH takes integer this returns timer
                return (LoadTimerHandle(s__TrigVariables_Hashtimer, 0, (this) * s__TrigVariables_arraySize + (7))) // INLINED!!
            endfunction
            function s__TrigVariables__get_timerI takes integer this returns timer
                return (LoadTimerHandle(s__TrigVariables_Hashtimer, 0, (this) * s__TrigVariables_arraySize + (8))) // INLINED!!
            endfunction
            function s__TrigVariables__get_timerJ takes integer this returns timer
                return (LoadTimerHandle(s__TrigVariables_Hashtimer, 0, (this) * s__TrigVariables_arraySize + (9))) // INLINED!!
            endfunction
            function s__TrigVariables__get_timerK takes integer this returns timer
                return (LoadTimerHandle(s__TrigVariables_Hashtimer, 0, (this) * s__TrigVariables_arraySize + (10))) // INLINED!!
            endfunction
            function s__TrigVariables__get_timerL takes integer this returns timer
                return (LoadTimerHandle(s__TrigVariables_Hashtimer, 0, (this) * s__TrigVariables_arraySize + (11))) // INLINED!!
            endfunction
            function s__TrigVariables__get_timerM takes integer this returns timer
                return (LoadTimerHandle(s__TrigVariables_Hashtimer, 0, (this) * s__TrigVariables_arraySize + (12))) // INLINED!!
            endfunction
            function s__TrigVariables__get_timerN takes integer this returns timer
                return (LoadTimerHandle(s__TrigVariables_Hashtimer, 0, (this) * s__TrigVariables_arraySize + (13))) // INLINED!!
            endfunction
            function s__TrigVariables__get_timerO takes integer this returns timer
                return (LoadTimerHandle(s__TrigVariables_Hashtimer, 0, (this) * s__TrigVariables_arraySize + (14))) // INLINED!!
            endfunction
            function s__TrigVariables__get_timerP takes integer this returns timer
                return (LoadTimerHandle(s__TrigVariables_Hashtimer, 0, (this) * s__TrigVariables_arraySize + (15))) // INLINED!!
            endfunction

            function s__TrigVariables__set_timerA takes integer this,timer which returns nothing
                call sc__TrigVariables_Settimer(this,0 , which)
            endfunction
            function s__TrigVariables__set_timerB takes integer this,timer which returns nothing
                call sc__TrigVariables_Settimer(this,1 , which)
            endfunction
            function s__TrigVariables__set_timerC takes integer this,timer which returns nothing
                call sc__TrigVariables_Settimer(this,2 , which)
            endfunction
            function s__TrigVariables__set_timerD takes integer this,timer which returns nothing
                call sc__TrigVariables_Settimer(this,3 , which)
            endfunction
            function s__TrigVariables__set_timerE takes integer this,timer which returns nothing
                call sc__TrigVariables_Settimer(this,4 , which)
            endfunction
            function s__TrigVariables__set_timerF takes integer this,timer which returns nothing
                call sc__TrigVariables_Settimer(this,5 , which)
            endfunction
            function s__TrigVariables__set_timerG takes integer this,timer which returns nothing
                call sc__TrigVariables_Settimer(this,6 , which)
            endfunction
            function s__TrigVariables__set_timerH takes integer this,timer which returns nothing
                call sc__TrigVariables_Settimer(this,7 , which)
            endfunction
            function s__TrigVariables__set_timerI takes integer this,timer which returns nothing
                call sc__TrigVariables_Settimer(this,8 , which)
            endfunction
            function s__TrigVariables__set_timerJ takes integer this,timer which returns nothing
                call sc__TrigVariables_Settimer(this,9 , which)
            endfunction
            function s__TrigVariables__set_timerK takes integer this,timer which returns nothing
                call sc__TrigVariables_Settimer(this,10 , which)
            endfunction
            function s__TrigVariables__set_timerL takes integer this,timer which returns nothing
                call sc__TrigVariables_Settimer(this,11 , which)
            endfunction
            function s__TrigVariables__set_timerM takes integer this,timer which returns nothing
                call sc__TrigVariables_Settimer(this,12 , which)
            endfunction
            function s__TrigVariables__set_timerN takes integer this,timer which returns nothing
                call sc__TrigVariables_Settimer(this,13 , which)
            endfunction
            function s__TrigVariables__set_timerO takes integer this,timer which returns nothing
                call sc__TrigVariables_Settimer(this,14 , which)
            endfunction
            function s__TrigVariables__set_timerP takes integer this,timer which returns nothing
                call sc__TrigVariables_Settimer(this,15 , which)
            endfunction
            //endif
            
            function s__TrigVariables_getIndicatortimer takes integer this,integer id returns integer
                return LoadInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsettimer + id + 2) - 2
            endfunction
            function s__TrigVariables_setIndicatortimer takes integer this,integer id,integer value returns nothing
                call SaveInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsettimer + id + 2, value + 2)
            endfunction
            function s__TrigVariables_remIndicatortimer takes integer this,integer id returns nothing
                call RemoveSavedInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsettimer + id + 2)
            endfunction

            function s__TrigVariables_LinkedVariables_timer__StateSetUsedtimer takes integer this,integer id returns nothing
                if (LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsettimer + (id) + 2) - 2) == - 2 then // INLINED!!
                    call SaveInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsettimer + (id ) + 2, ( s__TrigVariables_lastSettimer[this]) + 2) // INLINED!!
                    set s__TrigVariables_lastSettimer[this]=id
                endif
            endfunction
            function s__TrigVariables_SettimerNaive takes integer this,integer i,timer x returns nothing
                call SaveTimerHandle(s__TrigVariables_Hashtimer, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Settimer takes integer this,integer i,timer x returns nothing
                call s__TrigVariables_LinkedVariables_timer__StateSetUsedtimer(this,i)
                call RemoveSavedHandle(s__TrigVariables_Hashtimer, 0, this * s__TrigVariables_arraySize + i)
                call SaveTimerHandle(s__TrigVariables_Hashtimer, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Gettimer takes integer this,integer i returns timer
                return LoadTimerHandle(s__TrigVariables_Hashtimer, 0, this * s__TrigVariables_arraySize + i)
            endfunction
            function s__TrigVariables_Remtimer takes integer this,integer i returns nothing
                call RemoveSavedHandle(s__TrigVariables_Hashtimer, 0, this * s__TrigVariables_arraySize + i)
            endfunction












            function s__TrigVariables_SettimerBy takes integer this,integer i,timer x returns nothing
                call s__TrigVariables_Settimer(this,i , x)
            endfunction

            function s__TrigVariables_GettimerBy takes integer this,integer i returns timer
                return (LoadTimerHandle(s__TrigVariables_Hashtimer, 0, (this) * s__TrigVariables_arraySize + (i))) // INLINED!!
            endfunction
            function s__TrigVariables_setVoidtimer takes nothing returns nothing
                local integer this= s__TrigVariables_thisForVoid
                local integer i
                local integer k
                if s__TrigVariables_lastSettimer[this] == - 1 then
                    return
                endif
                set i=s__TrigVariables_lastSettimer[this]
                loop
                    exitwhen i == - 1



                    call RemoveSavedHandle(s__TrigVariables_Hashtimer, 0, (this) * s__TrigVariables_arraySize + (i)) // INLINED!!
                    set k=(LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsettimer + (i) + 2) - 2) // INLINED!!
                    call RemoveSavedInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsettimer + (i) + 2) // INLINED!!
                    set i=k
                endloop
                //set lastSettimer = 1
            endfunction
            function s__TrigVariables_LinkedVariables_timer__onInit takes nothing returns nothing
                call s__TrigVariables_addFuncForVoid(function s__TrigVariables_setVoidtimer)
            endfunction
			
            //static if TimerPutsTriggerToSleep_USE_NAME_ALPHABET then
            function s__TrigVariables__get_unitA takes integer this returns unit
                return (LoadUnitHandle(s__TrigVariables_Hashunit, 0, (this) * s__TrigVariables_arraySize + (0))) // INLINED!!
            endfunction
            function s__TrigVariables__get_unitB takes integer this returns unit
                return (LoadUnitHandle(s__TrigVariables_Hashunit, 0, (this) * s__TrigVariables_arraySize + (1))) // INLINED!!
            endfunction
            function s__TrigVariables__get_unitC takes integer this returns unit
                return (LoadUnitHandle(s__TrigVariables_Hashunit, 0, (this) * s__TrigVariables_arraySize + (2))) // INLINED!!
            endfunction
            function s__TrigVariables__get_unitD takes integer this returns unit
                return (LoadUnitHandle(s__TrigVariables_Hashunit, 0, (this) * s__TrigVariables_arraySize + (3))) // INLINED!!
            endfunction
            function s__TrigVariables__get_unitE takes integer this returns unit
                return (LoadUnitHandle(s__TrigVariables_Hashunit, 0, (this) * s__TrigVariables_arraySize + (4))) // INLINED!!
            endfunction
            function s__TrigVariables__get_unitF takes integer this returns unit
                return (LoadUnitHandle(s__TrigVariables_Hashunit, 0, (this) * s__TrigVariables_arraySize + (5))) // INLINED!!
            endfunction
            function s__TrigVariables__get_unitG takes integer this returns unit
                return (LoadUnitHandle(s__TrigVariables_Hashunit, 0, (this) * s__TrigVariables_arraySize + (6))) // INLINED!!
            endfunction
            function s__TrigVariables__get_unitH takes integer this returns unit
                return (LoadUnitHandle(s__TrigVariables_Hashunit, 0, (this) * s__TrigVariables_arraySize + (7))) // INLINED!!
            endfunction
            function s__TrigVariables__get_unitI takes integer this returns unit
                return (LoadUnitHandle(s__TrigVariables_Hashunit, 0, (this) * s__TrigVariables_arraySize + (8))) // INLINED!!
            endfunction
            function s__TrigVariables__get_unitJ takes integer this returns unit
                return (LoadUnitHandle(s__TrigVariables_Hashunit, 0, (this) * s__TrigVariables_arraySize + (9))) // INLINED!!
            endfunction
            function s__TrigVariables__get_unitK takes integer this returns unit
                return (LoadUnitHandle(s__TrigVariables_Hashunit, 0, (this) * s__TrigVariables_arraySize + (10))) // INLINED!!
            endfunction
            function s__TrigVariables__get_unitL takes integer this returns unit
                return (LoadUnitHandle(s__TrigVariables_Hashunit, 0, (this) * s__TrigVariables_arraySize + (11))) // INLINED!!
            endfunction
            function s__TrigVariables__get_unitM takes integer this returns unit
                return (LoadUnitHandle(s__TrigVariables_Hashunit, 0, (this) * s__TrigVariables_arraySize + (12))) // INLINED!!
            endfunction
            function s__TrigVariables__get_unitN takes integer this returns unit
                return (LoadUnitHandle(s__TrigVariables_Hashunit, 0, (this) * s__TrigVariables_arraySize + (13))) // INLINED!!
            endfunction
            function s__TrigVariables__get_unitO takes integer this returns unit
                return (LoadUnitHandle(s__TrigVariables_Hashunit, 0, (this) * s__TrigVariables_arraySize + (14))) // INLINED!!
            endfunction
            function s__TrigVariables__get_unitP takes integer this returns unit
                return (LoadUnitHandle(s__TrigVariables_Hashunit, 0, (this) * s__TrigVariables_arraySize + (15))) // INLINED!!
            endfunction

            function s__TrigVariables__set_unitA takes integer this,unit which returns nothing
                call sc__TrigVariables_Setunit(this,0 , which)
            endfunction
            function s__TrigVariables__set_unitB takes integer this,unit which returns nothing
                call sc__TrigVariables_Setunit(this,1 , which)
            endfunction
            function s__TrigVariables__set_unitC takes integer this,unit which returns nothing
                call sc__TrigVariables_Setunit(this,2 , which)
            endfunction
            function s__TrigVariables__set_unitD takes integer this,unit which returns nothing
                call sc__TrigVariables_Setunit(this,3 , which)
            endfunction
            function s__TrigVariables__set_unitE takes integer this,unit which returns nothing
                call sc__TrigVariables_Setunit(this,4 , which)
            endfunction
            function s__TrigVariables__set_unitF takes integer this,unit which returns nothing
                call sc__TrigVariables_Setunit(this,5 , which)
            endfunction
            function s__TrigVariables__set_unitG takes integer this,unit which returns nothing
                call sc__TrigVariables_Setunit(this,6 , which)
            endfunction
            function s__TrigVariables__set_unitH takes integer this,unit which returns nothing
                call sc__TrigVariables_Setunit(this,7 , which)
            endfunction
            function s__TrigVariables__set_unitI takes integer this,unit which returns nothing
                call sc__TrigVariables_Setunit(this,8 , which)
            endfunction
            function s__TrigVariables__set_unitJ takes integer this,unit which returns nothing
                call sc__TrigVariables_Setunit(this,9 , which)
            endfunction
            function s__TrigVariables__set_unitK takes integer this,unit which returns nothing
                call sc__TrigVariables_Setunit(this,10 , which)
            endfunction
            function s__TrigVariables__set_unitL takes integer this,unit which returns nothing
                call sc__TrigVariables_Setunit(this,11 , which)
            endfunction
            function s__TrigVariables__set_unitM takes integer this,unit which returns nothing
                call sc__TrigVariables_Setunit(this,12 , which)
            endfunction
            function s__TrigVariables__set_unitN takes integer this,unit which returns nothing
                call sc__TrigVariables_Setunit(this,13 , which)
            endfunction
            function s__TrigVariables__set_unitO takes integer this,unit which returns nothing
                call sc__TrigVariables_Setunit(this,14 , which)
            endfunction
            function s__TrigVariables__set_unitP takes integer this,unit which returns nothing
                call sc__TrigVariables_Setunit(this,15 , which)
            endfunction
            //endif
            
            function s__TrigVariables_getIndicatorunit takes integer this,integer id returns integer
                return LoadInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetunit + id + 2) - 2
            endfunction
            function s__TrigVariables_setIndicatorunit takes integer this,integer id,integer value returns nothing
                call SaveInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetunit + id + 2, value + 2)
            endfunction
            function s__TrigVariables_remIndicatorunit takes integer this,integer id returns nothing
                call RemoveSavedInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetunit + id + 2)
            endfunction

            function s__TrigVariables_LinkedVariables_unit___StateSetUsedunit takes integer this,integer id returns nothing
                if (LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetunit + (id) + 2) - 2) == - 2 then // INLINED!!
                    call SaveInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetunit + (id ) + 2, ( s__TrigVariables_lastSetunit[this]) + 2) // INLINED!!
                    set s__TrigVariables_lastSetunit[this]=id
                endif
            endfunction
            function s__TrigVariables_SetunitNaive takes integer this,integer i,unit x returns nothing
                call SaveUnitHandle(s__TrigVariables_Hashunit, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Setunit takes integer this,integer i,unit x returns nothing
                call s__TrigVariables_LinkedVariables_unit___StateSetUsedunit(this,i)
                call RemoveSavedHandle(s__TrigVariables_Hashunit, 0, this * s__TrigVariables_arraySize + i)
                call SaveUnitHandle(s__TrigVariables_Hashunit, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Getunit takes integer this,integer i returns unit
                return LoadUnitHandle(s__TrigVariables_Hashunit, 0, this * s__TrigVariables_arraySize + i)
            endfunction
            function s__TrigVariables_Remunit takes integer this,integer i returns nothing
                call RemoveSavedHandle(s__TrigVariables_Hashunit, 0, this * s__TrigVariables_arraySize + i)
            endfunction












            function s__TrigVariables_SetunitBy takes integer this,integer i,unit x returns nothing
                call s__TrigVariables_Setunit(this,i , x)
            endfunction

            function s__TrigVariables_GetunitBy takes integer this,integer i returns unit
                return (LoadUnitHandle(s__TrigVariables_Hashunit, 0, (this) * s__TrigVariables_arraySize + (i))) // INLINED!!
            endfunction
            function s__TrigVariables_setVoidunit takes nothing returns nothing
                local integer this= s__TrigVariables_thisForVoid
                local integer i
                local integer k
                if s__TrigVariables_lastSetunit[this] == - 1 then
                    return
                endif
                set i=s__TrigVariables_lastSetunit[this]
                loop
                    exitwhen i == - 1



                    call RemoveSavedHandle(s__TrigVariables_Hashunit, 0, (this) * s__TrigVariables_arraySize + (i)) // INLINED!!
                    set k=(LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetunit + (i) + 2) - 2) // INLINED!!
                    call RemoveSavedInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetunit + (i) + 2) // INLINED!!
                    set i=k
                endloop
                //set lastSetunit = 1
            endfunction
            function s__TrigVariables_LinkedVariables_unit___onInit takes nothing returns nothing
                call s__TrigVariables_addFuncForVoid(function s__TrigVariables_setVoidunit)
            endfunction
			
            //static if TimerPutsTriggerToSleep_USE_NAME_ALPHABET then
            function s__TrigVariables__get_locationA takes integer this returns location
                return (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, (this) * s__TrigVariables_arraySize + (0))) // INLINED!!
            endfunction
            function s__TrigVariables__get_locationB takes integer this returns location
                return (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, (this) * s__TrigVariables_arraySize + (1))) // INLINED!!
            endfunction
            function s__TrigVariables__get_locationC takes integer this returns location
                return (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, (this) * s__TrigVariables_arraySize + (2))) // INLINED!!
            endfunction
            function s__TrigVariables__get_locationD takes integer this returns location
                return (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, (this) * s__TrigVariables_arraySize + (3))) // INLINED!!
            endfunction
            function s__TrigVariables__get_locationE takes integer this returns location
                return (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, (this) * s__TrigVariables_arraySize + (4))) // INLINED!!
            endfunction
            function s__TrigVariables__get_locationF takes integer this returns location
                return (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, (this) * s__TrigVariables_arraySize + (5))) // INLINED!!
            endfunction
            function s__TrigVariables__get_locationG takes integer this returns location
                return (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, (this) * s__TrigVariables_arraySize + (6))) // INLINED!!
            endfunction
            function s__TrigVariables__get_locationH takes integer this returns location
                return (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, (this) * s__TrigVariables_arraySize + (7))) // INLINED!!
            endfunction
            function s__TrigVariables__get_locationI takes integer this returns location
                return (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, (this) * s__TrigVariables_arraySize + (8))) // INLINED!!
            endfunction
            function s__TrigVariables__get_locationJ takes integer this returns location
                return (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, (this) * s__TrigVariables_arraySize + (9))) // INLINED!!
            endfunction
            function s__TrigVariables__get_locationK takes integer this returns location
                return (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, (this) * s__TrigVariables_arraySize + (10))) // INLINED!!
            endfunction
            function s__TrigVariables__get_locationL takes integer this returns location
                return (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, (this) * s__TrigVariables_arraySize + (11))) // INLINED!!
            endfunction
            function s__TrigVariables__get_locationM takes integer this returns location
                return (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, (this) * s__TrigVariables_arraySize + (12))) // INLINED!!
            endfunction
            function s__TrigVariables__get_locationN takes integer this returns location
                return (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, (this) * s__TrigVariables_arraySize + (13))) // INLINED!!
            endfunction
            function s__TrigVariables__get_locationO takes integer this returns location
                return (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, (this) * s__TrigVariables_arraySize + (14))) // INLINED!!
            endfunction
            function s__TrigVariables__get_locationP takes integer this returns location
                return (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, (this) * s__TrigVariables_arraySize + (15))) // INLINED!!
            endfunction

            function s__TrigVariables__set_locationA takes integer this,location which returns nothing
                call sc__TrigVariables_Setlocation(this,0 , which)
            endfunction
            function s__TrigVariables__set_locationB takes integer this,location which returns nothing
                call sc__TrigVariables_Setlocation(this,1 , which)
            endfunction
            function s__TrigVariables__set_locationC takes integer this,location which returns nothing
                call sc__TrigVariables_Setlocation(this,2 , which)
            endfunction
            function s__TrigVariables__set_locationD takes integer this,location which returns nothing
                call sc__TrigVariables_Setlocation(this,3 , which)
            endfunction
            function s__TrigVariables__set_locationE takes integer this,location which returns nothing
                call sc__TrigVariables_Setlocation(this,4 , which)
            endfunction
            function s__TrigVariables__set_locationF takes integer this,location which returns nothing
                call sc__TrigVariables_Setlocation(this,5 , which)
            endfunction
            function s__TrigVariables__set_locationG takes integer this,location which returns nothing
                call sc__TrigVariables_Setlocation(this,6 , which)
            endfunction
            function s__TrigVariables__set_locationH takes integer this,location which returns nothing
                call sc__TrigVariables_Setlocation(this,7 , which)
            endfunction
            function s__TrigVariables__set_locationI takes integer this,location which returns nothing
                call sc__TrigVariables_Setlocation(this,8 , which)
            endfunction
            function s__TrigVariables__set_locationJ takes integer this,location which returns nothing
                call sc__TrigVariables_Setlocation(this,9 , which)
            endfunction
            function s__TrigVariables__set_locationK takes integer this,location which returns nothing
                call sc__TrigVariables_Setlocation(this,10 , which)
            endfunction
            function s__TrigVariables__set_locationL takes integer this,location which returns nothing
                call sc__TrigVariables_Setlocation(this,11 , which)
            endfunction
            function s__TrigVariables__set_locationM takes integer this,location which returns nothing
                call sc__TrigVariables_Setlocation(this,12 , which)
            endfunction
            function s__TrigVariables__set_locationN takes integer this,location which returns nothing
                call sc__TrigVariables_Setlocation(this,13 , which)
            endfunction
            function s__TrigVariables__set_locationO takes integer this,location which returns nothing
                call sc__TrigVariables_Setlocation(this,14 , which)
            endfunction
            function s__TrigVariables__set_locationP takes integer this,location which returns nothing
                call sc__TrigVariables_Setlocation(this,15 , which)
            endfunction
            //endif
            
            function s__TrigVariables_getIndicatorlocation takes integer this,integer id returns integer
                return LoadInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetlocation + id + 2) - 2
            endfunction
            function s__TrigVariables_setIndicatorlocation takes integer this,integer id,integer value returns nothing
                call SaveInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetlocation + id + 2, value + 2)
            endfunction
            function s__TrigVariables_remIndicatorlocation takes integer this,integer id returns nothing
                call RemoveSavedInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetlocation + id + 2)
            endfunction

            function s__TrigVariables_LinkedVariables_location__StateSetUsedlocation takes integer this,integer id returns nothing
                if (LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetlocation + (id) + 2) - 2) == - 2 then // INLINED!!
                    call SaveInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetlocation + (id ) + 2, ( s__TrigVariables_lastSetlocation[this]) + 2) // INLINED!!
                    set s__TrigVariables_lastSetlocation[this]=id
                endif
            endfunction
            function s__TrigVariables_SetlocationNaive takes integer this,integer i,location x returns nothing
                call SaveLocationHandle(s__TrigVariables_Hashlocation, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Setlocation takes integer this,integer i,location x returns nothing
                call s__TrigVariables_LinkedVariables_location__StateSetUsedlocation(this,i)
                call RemoveSavedHandle(s__TrigVariables_Hashlocation, 0, this * s__TrigVariables_arraySize + i)
                call SaveLocationHandle(s__TrigVariables_Hashlocation, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Getlocation takes integer this,integer i returns location
                return LoadLocationHandle(s__TrigVariables_Hashlocation, 0, this * s__TrigVariables_arraySize + i)
            endfunction
            function s__TrigVariables_Remlocation takes integer this,integer i returns nothing
                call RemoveSavedHandle(s__TrigVariables_Hashlocation, 0, this * s__TrigVariables_arraySize + i)
            endfunction

            function s__TrigVariables_SetlocationAutoRemove takes integer this,integer i,location x returns nothing
                call RemoveLocation(((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, (this) * s__TrigVariables_arraySize + (i))))) // INLINED!!
                call s__TrigVariables_Setlocation(this,i , x)
            endfunction
            function s__TrigVariables_SetlocationBy takes integer this,integer i,location x returns nothing
                call s__TrigVariables_SetlocationAutoRemove(this,i , x)
            endfunction
            function s__TrigVariables_SetLLV5locationAutoRemove takes integer this,integer i,location x returns nothing
                call s__TrigVariables_SetlocationAutoRemove(this,i , x)
            endfunction





            function s__TrigVariables_GetlocationBy takes integer this,integer i returns location
                return (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, (this) * s__TrigVariables_arraySize + (i))) // INLINED!!
            endfunction
            function s__TrigVariables_setVoidlocation takes nothing returns nothing
                local integer this= s__TrigVariables_thisForVoid
                local integer i
                local integer k
                if s__TrigVariables_lastSetlocation[this] == - 1 then
                    return
                endif
                set i=s__TrigVariables_lastSetlocation[this]
                loop
                    exitwhen i == - 1

                        call RemoveLocation(((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, (this) * s__TrigVariables_arraySize + (i))))) // INLINED!!

                    call RemoveSavedHandle(s__TrigVariables_Hashlocation, 0, (this) * s__TrigVariables_arraySize + (i)) // INLINED!!
                    set k=(LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetlocation + (i) + 2) - 2) // INLINED!!
                    call RemoveSavedInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetlocation + (i) + 2) // INLINED!!
                    set i=k
                endloop
                //set lastSetlocation = 1
            endfunction
            function s__TrigVariables_LinkedVariables_location__onInit takes nothing returns nothing
                call s__TrigVariables_addFuncForVoid(function s__TrigVariables_setVoidlocation)
            endfunction
			
            //static if TimerPutsTriggerToSleep_USE_NAME_ALPHABET then
            function s__TrigVariables__get_lightningA takes integer this returns lightning
                return (LoadLightningHandle(s__TrigVariables_Hashlightning, 0, (this) * s__TrigVariables_arraySize + (0))) // INLINED!!
            endfunction
            function s__TrigVariables__get_lightningB takes integer this returns lightning
                return (LoadLightningHandle(s__TrigVariables_Hashlightning, 0, (this) * s__TrigVariables_arraySize + (1))) // INLINED!!
            endfunction
            function s__TrigVariables__get_lightningC takes integer this returns lightning
                return (LoadLightningHandle(s__TrigVariables_Hashlightning, 0, (this) * s__TrigVariables_arraySize + (2))) // INLINED!!
            endfunction
            function s__TrigVariables__get_lightningD takes integer this returns lightning
                return (LoadLightningHandle(s__TrigVariables_Hashlightning, 0, (this) * s__TrigVariables_arraySize + (3))) // INLINED!!
            endfunction
            function s__TrigVariables__get_lightningE takes integer this returns lightning
                return (LoadLightningHandle(s__TrigVariables_Hashlightning, 0, (this) * s__TrigVariables_arraySize + (4))) // INLINED!!
            endfunction
            function s__TrigVariables__get_lightningF takes integer this returns lightning
                return (LoadLightningHandle(s__TrigVariables_Hashlightning, 0, (this) * s__TrigVariables_arraySize + (5))) // INLINED!!
            endfunction
            function s__TrigVariables__get_lightningG takes integer this returns lightning
                return (LoadLightningHandle(s__TrigVariables_Hashlightning, 0, (this) * s__TrigVariables_arraySize + (6))) // INLINED!!
            endfunction
            function s__TrigVariables__get_lightningH takes integer this returns lightning
                return (LoadLightningHandle(s__TrigVariables_Hashlightning, 0, (this) * s__TrigVariables_arraySize + (7))) // INLINED!!
            endfunction
            function s__TrigVariables__get_lightningI takes integer this returns lightning
                return (LoadLightningHandle(s__TrigVariables_Hashlightning, 0, (this) * s__TrigVariables_arraySize + (8))) // INLINED!!
            endfunction
            function s__TrigVariables__get_lightningJ takes integer this returns lightning
                return (LoadLightningHandle(s__TrigVariables_Hashlightning, 0, (this) * s__TrigVariables_arraySize + (9))) // INLINED!!
            endfunction
            function s__TrigVariables__get_lightningK takes integer this returns lightning
                return (LoadLightningHandle(s__TrigVariables_Hashlightning, 0, (this) * s__TrigVariables_arraySize + (10))) // INLINED!!
            endfunction
            function s__TrigVariables__get_lightningL takes integer this returns lightning
                return (LoadLightningHandle(s__TrigVariables_Hashlightning, 0, (this) * s__TrigVariables_arraySize + (11))) // INLINED!!
            endfunction
            function s__TrigVariables__get_lightningM takes integer this returns lightning
                return (LoadLightningHandle(s__TrigVariables_Hashlightning, 0, (this) * s__TrigVariables_arraySize + (12))) // INLINED!!
            endfunction
            function s__TrigVariables__get_lightningN takes integer this returns lightning
                return (LoadLightningHandle(s__TrigVariables_Hashlightning, 0, (this) * s__TrigVariables_arraySize + (13))) // INLINED!!
            endfunction
            function s__TrigVariables__get_lightningO takes integer this returns lightning
                return (LoadLightningHandle(s__TrigVariables_Hashlightning, 0, (this) * s__TrigVariables_arraySize + (14))) // INLINED!!
            endfunction
            function s__TrigVariables__get_lightningP takes integer this returns lightning
                return (LoadLightningHandle(s__TrigVariables_Hashlightning, 0, (this) * s__TrigVariables_arraySize + (15))) // INLINED!!
            endfunction

            function s__TrigVariables__set_lightningA takes integer this,lightning which returns nothing
                call sc__TrigVariables_Setlightning(this,0 , which)
            endfunction
            function s__TrigVariables__set_lightningB takes integer this,lightning which returns nothing
                call sc__TrigVariables_Setlightning(this,1 , which)
            endfunction
            function s__TrigVariables__set_lightningC takes integer this,lightning which returns nothing
                call sc__TrigVariables_Setlightning(this,2 , which)
            endfunction
            function s__TrigVariables__set_lightningD takes integer this,lightning which returns nothing
                call sc__TrigVariables_Setlightning(this,3 , which)
            endfunction
            function s__TrigVariables__set_lightningE takes integer this,lightning which returns nothing
                call sc__TrigVariables_Setlightning(this,4 , which)
            endfunction
            function s__TrigVariables__set_lightningF takes integer this,lightning which returns nothing
                call sc__TrigVariables_Setlightning(this,5 , which)
            endfunction
            function s__TrigVariables__set_lightningG takes integer this,lightning which returns nothing
                call sc__TrigVariables_Setlightning(this,6 , which)
            endfunction
            function s__TrigVariables__set_lightningH takes integer this,lightning which returns nothing
                call sc__TrigVariables_Setlightning(this,7 , which)
            endfunction
            function s__TrigVariables__set_lightningI takes integer this,lightning which returns nothing
                call sc__TrigVariables_Setlightning(this,8 , which)
            endfunction
            function s__TrigVariables__set_lightningJ takes integer this,lightning which returns nothing
                call sc__TrigVariables_Setlightning(this,9 , which)
            endfunction
            function s__TrigVariables__set_lightningK takes integer this,lightning which returns nothing
                call sc__TrigVariables_Setlightning(this,10 , which)
            endfunction
            function s__TrigVariables__set_lightningL takes integer this,lightning which returns nothing
                call sc__TrigVariables_Setlightning(this,11 , which)
            endfunction
            function s__TrigVariables__set_lightningM takes integer this,lightning which returns nothing
                call sc__TrigVariables_Setlightning(this,12 , which)
            endfunction
            function s__TrigVariables__set_lightningN takes integer this,lightning which returns nothing
                call sc__TrigVariables_Setlightning(this,13 , which)
            endfunction
            function s__TrigVariables__set_lightningO takes integer this,lightning which returns nothing
                call sc__TrigVariables_Setlightning(this,14 , which)
            endfunction
            function s__TrigVariables__set_lightningP takes integer this,lightning which returns nothing
                call sc__TrigVariables_Setlightning(this,15 , which)
            endfunction
            //endif
            
            function s__TrigVariables_getIndicatorlightning takes integer this,integer id returns integer
                return LoadInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetlightning + id + 2) - 2
            endfunction
            function s__TrigVariables_setIndicatorlightning takes integer this,integer id,integer value returns nothing
                call SaveInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetlightning + id + 2, value + 2)
            endfunction
            function s__TrigVariables_remIndicatorlightning takes integer this,integer id returns nothing
                call RemoveSavedInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetlightning + id + 2)
            endfunction

            function s__TrigVariables_LinkedVariables_lightning___StateSetUsedlightning takes integer this,integer id returns nothing
                if (LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetlightning + (id) + 2) - 2) == - 2 then // INLINED!!
                    call SaveInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetlightning + (id ) + 2, ( s__TrigVariables_lastSetlightning[this]) + 2) // INLINED!!
                    set s__TrigVariables_lastSetlightning[this]=id
                endif
            endfunction
            function s__TrigVariables_SetlightningNaive takes integer this,integer i,lightning x returns nothing
                call SaveLightningHandle(s__TrigVariables_Hashlightning, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Setlightning takes integer this,integer i,lightning x returns nothing
                call s__TrigVariables_LinkedVariables_lightning___StateSetUsedlightning(this,i)
                call RemoveSavedHandle(s__TrigVariables_Hashlightning, 0, this * s__TrigVariables_arraySize + i)
                call SaveLightningHandle(s__TrigVariables_Hashlightning, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Getlightning takes integer this,integer i returns lightning
                return LoadLightningHandle(s__TrigVariables_Hashlightning, 0, this * s__TrigVariables_arraySize + i)
            endfunction
            function s__TrigVariables_Remlightning takes integer this,integer i returns nothing
                call RemoveSavedHandle(s__TrigVariables_Hashlightning, 0, this * s__TrigVariables_arraySize + i)
            endfunction

            function s__TrigVariables_SetlightningAutoRemove takes integer this,integer i,lightning x returns nothing
                call s__TrigVariables_lightningDelete((LoadLightningHandle(s__TrigVariables_Hashlightning, 0, (this) * s__TrigVariables_arraySize + (i)))) // INLINED!!
                call s__TrigVariables_Setlightning(this,i , x)
            endfunction
            function s__TrigVariables_SetlightningBy takes integer this,integer i,lightning x returns nothing
                call s__TrigVariables_SetlightningAutoRemove(this,i , x)
            endfunction
            function s__TrigVariables_SetLLV5lightningAutoRemove takes integer this,integer i,lightning x returns nothing
                call s__TrigVariables_SetlightningAutoRemove(this,i , x)
            endfunction





            function s__TrigVariables_GetlightningBy takes integer this,integer i returns lightning
                return (LoadLightningHandle(s__TrigVariables_Hashlightning, 0, (this) * s__TrigVariables_arraySize + (i))) // INLINED!!
            endfunction
            function s__TrigVariables_setVoidlightning takes nothing returns nothing
                local integer this= s__TrigVariables_thisForVoid
                local integer i
                local integer k
                if s__TrigVariables_lastSetlightning[this] == - 1 then
                    return
                endif
                set i=s__TrigVariables_lastSetlightning[this]
                loop
                    exitwhen i == - 1



                    call RemoveSavedHandle(s__TrigVariables_Hashlightning, 0, (this) * s__TrigVariables_arraySize + (i)) // INLINED!!
                    set k=(LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetlightning + (i) + 2) - 2) // INLINED!!
                    call RemoveSavedInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetlightning + (i) + 2) // INLINED!!
                    set i=k
                endloop
                //set lastSetlightning = 1
            endfunction
            function s__TrigVariables_LinkedVariables_lightning___onInit takes nothing returns nothing
                call s__TrigVariables_addFuncForVoid(function s__TrigVariables_setVoidlightning)
            endfunction
			
            //static if TimerPutsTriggerToSleep_USE_NAME_ALPHABET then
            function s__TrigVariables__get_integerA takes integer this returns integer
                return (LoadInteger(s__TrigVariables_Hashinteger, 0, (this) * s__TrigVariables_arraySize + (0))) // INLINED!!
            endfunction
            function s__TrigVariables__get_integerB takes integer this returns integer
                return (LoadInteger(s__TrigVariables_Hashinteger, 0, (this) * s__TrigVariables_arraySize + (1))) // INLINED!!
            endfunction
            function s__TrigVariables__get_integerC takes integer this returns integer
                return (LoadInteger(s__TrigVariables_Hashinteger, 0, (this) * s__TrigVariables_arraySize + (2))) // INLINED!!
            endfunction
            function s__TrigVariables__get_integerD takes integer this returns integer
                return (LoadInteger(s__TrigVariables_Hashinteger, 0, (this) * s__TrigVariables_arraySize + (3))) // INLINED!!
            endfunction
            function s__TrigVariables__get_integerE takes integer this returns integer
                return (LoadInteger(s__TrigVariables_Hashinteger, 0, (this) * s__TrigVariables_arraySize + (4))) // INLINED!!
            endfunction
            function s__TrigVariables__get_integerF takes integer this returns integer
                return (LoadInteger(s__TrigVariables_Hashinteger, 0, (this) * s__TrigVariables_arraySize + (5))) // INLINED!!
            endfunction
            function s__TrigVariables__get_integerG takes integer this returns integer
                return (LoadInteger(s__TrigVariables_Hashinteger, 0, (this) * s__TrigVariables_arraySize + (6))) // INLINED!!
            endfunction
            function s__TrigVariables__get_integerH takes integer this returns integer
                return (LoadInteger(s__TrigVariables_Hashinteger, 0, (this) * s__TrigVariables_arraySize + (7))) // INLINED!!
            endfunction
            function s__TrigVariables__get_integerI takes integer this returns integer
                return (LoadInteger(s__TrigVariables_Hashinteger, 0, (this) * s__TrigVariables_arraySize + (8))) // INLINED!!
            endfunction
            function s__TrigVariables__get_integerJ takes integer this returns integer
                return (LoadInteger(s__TrigVariables_Hashinteger, 0, (this) * s__TrigVariables_arraySize + (9))) // INLINED!!
            endfunction
            function s__TrigVariables__get_integerK takes integer this returns integer
                return (LoadInteger(s__TrigVariables_Hashinteger, 0, (this) * s__TrigVariables_arraySize + (10))) // INLINED!!
            endfunction
            function s__TrigVariables__get_integerL takes integer this returns integer
                return (LoadInteger(s__TrigVariables_Hashinteger, 0, (this) * s__TrigVariables_arraySize + (11))) // INLINED!!
            endfunction
            function s__TrigVariables__get_integerM takes integer this returns integer
                return (LoadInteger(s__TrigVariables_Hashinteger, 0, (this) * s__TrigVariables_arraySize + (12))) // INLINED!!
            endfunction
            function s__TrigVariables__get_integerN takes integer this returns integer
                return (LoadInteger(s__TrigVariables_Hashinteger, 0, (this) * s__TrigVariables_arraySize + (13))) // INLINED!!
            endfunction
            function s__TrigVariables__get_integerO takes integer this returns integer
                return (LoadInteger(s__TrigVariables_Hashinteger, 0, (this) * s__TrigVariables_arraySize + (14))) // INLINED!!
            endfunction
            function s__TrigVariables__get_integerP takes integer this returns integer
                return (LoadInteger(s__TrigVariables_Hashinteger, 0, (this) * s__TrigVariables_arraySize + (15))) // INLINED!!
            endfunction

            function s__TrigVariables__set_integerA takes integer this,integer which returns nothing
                call sc__TrigVariables_Setinteger(this,0 , which)
            endfunction
            function s__TrigVariables__set_integerB takes integer this,integer which returns nothing
                call sc__TrigVariables_Setinteger(this,1 , which)
            endfunction
            function s__TrigVariables__set_integerC takes integer this,integer which returns nothing
                call sc__TrigVariables_Setinteger(this,2 , which)
            endfunction
            function s__TrigVariables__set_integerD takes integer this,integer which returns nothing
                call sc__TrigVariables_Setinteger(this,3 , which)
            endfunction
            function s__TrigVariables__set_integerE takes integer this,integer which returns nothing
                call sc__TrigVariables_Setinteger(this,4 , which)
            endfunction
            function s__TrigVariables__set_integerF takes integer this,integer which returns nothing
                call sc__TrigVariables_Setinteger(this,5 , which)
            endfunction
            function s__TrigVariables__set_integerG takes integer this,integer which returns nothing
                call sc__TrigVariables_Setinteger(this,6 , which)
            endfunction
            function s__TrigVariables__set_integerH takes integer this,integer which returns nothing
                call sc__TrigVariables_Setinteger(this,7 , which)
            endfunction
            function s__TrigVariables__set_integerI takes integer this,integer which returns nothing
                call sc__TrigVariables_Setinteger(this,8 , which)
            endfunction
            function s__TrigVariables__set_integerJ takes integer this,integer which returns nothing
                call sc__TrigVariables_Setinteger(this,9 , which)
            endfunction
            function s__TrigVariables__set_integerK takes integer this,integer which returns nothing
                call sc__TrigVariables_Setinteger(this,10 , which)
            endfunction
            function s__TrigVariables__set_integerL takes integer this,integer which returns nothing
                call sc__TrigVariables_Setinteger(this,11 , which)
            endfunction
            function s__TrigVariables__set_integerM takes integer this,integer which returns nothing
                call sc__TrigVariables_Setinteger(this,12 , which)
            endfunction
            function s__TrigVariables__set_integerN takes integer this,integer which returns nothing
                call sc__TrigVariables_Setinteger(this,13 , which)
            endfunction
            function s__TrigVariables__set_integerO takes integer this,integer which returns nothing
                call sc__TrigVariables_Setinteger(this,14 , which)
            endfunction
            function s__TrigVariables__set_integerP takes integer this,integer which returns nothing
                call sc__TrigVariables_Setinteger(this,15 , which)
            endfunction
            //endif
            
            function s__TrigVariables_getIndicatorinteger takes integer this,integer id returns integer
                return LoadInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetinteger + id + 2) - 2
            endfunction
            function s__TrigVariables_setIndicatorinteger takes integer this,integer id,integer value returns nothing
                call SaveInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetinteger + id + 2, value + 2)
            endfunction
            function s__TrigVariables_remIndicatorinteger takes integer this,integer id returns nothing
                call RemoveSavedInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetinteger + id + 2)
            endfunction

            function s__TrigVariables_LinkedVariables_integer__StateSetUsedinteger takes integer this,integer id returns nothing
                if (LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetinteger + (id) + 2) - 2) == - 2 then // INLINED!!
                    call SaveInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetinteger + (id ) + 2, ( s__TrigVariables_lastSetinteger[this]) + 2) // INLINED!!
                    set s__TrigVariables_lastSetinteger[this]=id
                endif
            endfunction
            function s__TrigVariables_SetintegerNaive takes integer this,integer i,integer x returns nothing
                call SaveInteger(s__TrigVariables_Hashinteger, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Setinteger takes integer this,integer i,integer x returns nothing
                call s__TrigVariables_LinkedVariables_integer__StateSetUsedinteger(this,i)
                call RemoveSavedInteger(s__TrigVariables_Hashinteger, 0, this * s__TrigVariables_arraySize + i)
                call SaveInteger(s__TrigVariables_Hashinteger, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Getinteger takes integer this,integer i returns integer
                return LoadInteger(s__TrigVariables_Hashinteger, 0, this * s__TrigVariables_arraySize + i)
            endfunction
            function s__TrigVariables_Reminteger takes integer this,integer i returns nothing
                call RemoveSavedInteger(s__TrigVariables_Hashinteger, 0, this * s__TrigVariables_arraySize + i)
            endfunction












            function s__TrigVariables_SetintegerBy takes integer this,integer i,integer x returns nothing
                call s__TrigVariables_Setinteger(this,i , x)
            endfunction

            function s__TrigVariables_GetintegerBy takes integer this,integer i returns integer
                return (LoadInteger(s__TrigVariables_Hashinteger, 0, (this) * s__TrigVariables_arraySize + (i))) // INLINED!!
            endfunction
            function s__TrigVariables_setVoidinteger takes nothing returns nothing
                local integer this= s__TrigVariables_thisForVoid
                local integer i
                local integer k
                if s__TrigVariables_lastSetinteger[this] == - 1 then
                    return
                endif
                set i=s__TrigVariables_lastSetinteger[this]
                loop
                    exitwhen i == - 1



                    call RemoveSavedInteger(s__TrigVariables_Hashinteger, 0, (this) * s__TrigVariables_arraySize + (i)) // INLINED!!
                    set k=(LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetinteger + (i) + 2) - 2) // INLINED!!
                    call RemoveSavedInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetinteger + (i) + 2) // INLINED!!
                    set i=k
                endloop
                //set lastSetinteger = 1
            endfunction
            function s__TrigVariables_LinkedVariables_integer__onInit takes nothing returns nothing
                call s__TrigVariables_addFuncForVoid(function s__TrigVariables_setVoidinteger)
            endfunction
			
            //static if TimerPutsTriggerToSleep_USE_NAME_ALPHABET then
            function s__TrigVariables__get_realA takes integer this returns real
                return (LoadReal(s__TrigVariables_Hashreal, 0, (this) * s__TrigVariables_arraySize + (0))) // INLINED!!
            endfunction
            function s__TrigVariables__get_realB takes integer this returns real
                return (LoadReal(s__TrigVariables_Hashreal, 0, (this) * s__TrigVariables_arraySize + (1))) // INLINED!!
            endfunction
            function s__TrigVariables__get_realC takes integer this returns real
                return (LoadReal(s__TrigVariables_Hashreal, 0, (this) * s__TrigVariables_arraySize + (2))) // INLINED!!
            endfunction
            function s__TrigVariables__get_realD takes integer this returns real
                return (LoadReal(s__TrigVariables_Hashreal, 0, (this) * s__TrigVariables_arraySize + (3))) // INLINED!!
            endfunction
            function s__TrigVariables__get_realE takes integer this returns real
                return (LoadReal(s__TrigVariables_Hashreal, 0, (this) * s__TrigVariables_arraySize + (4))) // INLINED!!
            endfunction
            function s__TrigVariables__get_realF takes integer this returns real
                return (LoadReal(s__TrigVariables_Hashreal, 0, (this) * s__TrigVariables_arraySize + (5))) // INLINED!!
            endfunction
            function s__TrigVariables__get_realG takes integer this returns real
                return (LoadReal(s__TrigVariables_Hashreal, 0, (this) * s__TrigVariables_arraySize + (6))) // INLINED!!
            endfunction
            function s__TrigVariables__get_realH takes integer this returns real
                return (LoadReal(s__TrigVariables_Hashreal, 0, (this) * s__TrigVariables_arraySize + (7))) // INLINED!!
            endfunction
            function s__TrigVariables__get_realI takes integer this returns real
                return (LoadReal(s__TrigVariables_Hashreal, 0, (this) * s__TrigVariables_arraySize + (8))) // INLINED!!
            endfunction
            function s__TrigVariables__get_realJ takes integer this returns real
                return (LoadReal(s__TrigVariables_Hashreal, 0, (this) * s__TrigVariables_arraySize + (9))) // INLINED!!
            endfunction
            function s__TrigVariables__get_realK takes integer this returns real
                return (LoadReal(s__TrigVariables_Hashreal, 0, (this) * s__TrigVariables_arraySize + (10))) // INLINED!!
            endfunction
            function s__TrigVariables__get_realL takes integer this returns real
                return (LoadReal(s__TrigVariables_Hashreal, 0, (this) * s__TrigVariables_arraySize + (11))) // INLINED!!
            endfunction
            function s__TrigVariables__get_realM takes integer this returns real
                return (LoadReal(s__TrigVariables_Hashreal, 0, (this) * s__TrigVariables_arraySize + (12))) // INLINED!!
            endfunction
            function s__TrigVariables__get_realN takes integer this returns real
                return (LoadReal(s__TrigVariables_Hashreal, 0, (this) * s__TrigVariables_arraySize + (13))) // INLINED!!
            endfunction
            function s__TrigVariables__get_realO takes integer this returns real
                return (LoadReal(s__TrigVariables_Hashreal, 0, (this) * s__TrigVariables_arraySize + (14))) // INLINED!!
            endfunction
            function s__TrigVariables__get_realP takes integer this returns real
                return (LoadReal(s__TrigVariables_Hashreal, 0, (this) * s__TrigVariables_arraySize + (15))) // INLINED!!
            endfunction

            function s__TrigVariables__set_realA takes integer this,real which returns nothing
                call sc__TrigVariables_Setreal(this,0 , which)
            endfunction
            function s__TrigVariables__set_realB takes integer this,real which returns nothing
                call sc__TrigVariables_Setreal(this,1 , which)
            endfunction
            function s__TrigVariables__set_realC takes integer this,real which returns nothing
                call sc__TrigVariables_Setreal(this,2 , which)
            endfunction
            function s__TrigVariables__set_realD takes integer this,real which returns nothing
                call sc__TrigVariables_Setreal(this,3 , which)
            endfunction
            function s__TrigVariables__set_realE takes integer this,real which returns nothing
                call sc__TrigVariables_Setreal(this,4 , which)
            endfunction
            function s__TrigVariables__set_realF takes integer this,real which returns nothing
                call sc__TrigVariables_Setreal(this,5 , which)
            endfunction
            function s__TrigVariables__set_realG takes integer this,real which returns nothing
                call sc__TrigVariables_Setreal(this,6 , which)
            endfunction
            function s__TrigVariables__set_realH takes integer this,real which returns nothing
                call sc__TrigVariables_Setreal(this,7 , which)
            endfunction
            function s__TrigVariables__set_realI takes integer this,real which returns nothing
                call sc__TrigVariables_Setreal(this,8 , which)
            endfunction
            function s__TrigVariables__set_realJ takes integer this,real which returns nothing
                call sc__TrigVariables_Setreal(this,9 , which)
            endfunction
            function s__TrigVariables__set_realK takes integer this,real which returns nothing
                call sc__TrigVariables_Setreal(this,10 , which)
            endfunction
            function s__TrigVariables__set_realL takes integer this,real which returns nothing
                call sc__TrigVariables_Setreal(this,11 , which)
            endfunction
            function s__TrigVariables__set_realM takes integer this,real which returns nothing
                call sc__TrigVariables_Setreal(this,12 , which)
            endfunction
            function s__TrigVariables__set_realN takes integer this,real which returns nothing
                call sc__TrigVariables_Setreal(this,13 , which)
            endfunction
            function s__TrigVariables__set_realO takes integer this,real which returns nothing
                call sc__TrigVariables_Setreal(this,14 , which)
            endfunction
            function s__TrigVariables__set_realP takes integer this,real which returns nothing
                call sc__TrigVariables_Setreal(this,15 , which)
            endfunction
            //endif
            
            function s__TrigVariables_getIndicatorreal takes integer this,integer id returns integer
                return LoadInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetreal + id + 2) - 2
            endfunction
            function s__TrigVariables_setIndicatorreal takes integer this,integer id,integer value returns nothing
                call SaveInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetreal + id + 2, value + 2)
            endfunction
            function s__TrigVariables_remIndicatorreal takes integer this,integer id returns nothing
                call RemoveSavedInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetreal + id + 2)
            endfunction

            function s__TrigVariables_LinkedVariables_real___StateSetUsedreal takes integer this,integer id returns nothing
                if (LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetreal + (id) + 2) - 2) == - 2 then // INLINED!!
                    call SaveInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetreal + (id ) + 2, ( s__TrigVariables_lastSetreal[this]) + 2) // INLINED!!
                    set s__TrigVariables_lastSetreal[this]=id
                endif
            endfunction
            function s__TrigVariables_SetrealNaive takes integer this,integer i,real x returns nothing
                call SaveReal(s__TrigVariables_Hashreal, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Setreal takes integer this,integer i,real x returns nothing
                call s__TrigVariables_LinkedVariables_real___StateSetUsedreal(this,i)
                call RemoveSavedReal(s__TrigVariables_Hashreal, 0, this * s__TrigVariables_arraySize + i)
                call SaveReal(s__TrigVariables_Hashreal, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Getreal takes integer this,integer i returns real
                return LoadReal(s__TrigVariables_Hashreal, 0, this * s__TrigVariables_arraySize + i)
            endfunction
            function s__TrigVariables_Remreal takes integer this,integer i returns nothing
                call RemoveSavedReal(s__TrigVariables_Hashreal, 0, this * s__TrigVariables_arraySize + i)
            endfunction












            function s__TrigVariables_SetrealBy takes integer this,integer i,real x returns nothing
                call s__TrigVariables_Setreal(this,i , x)
            endfunction

            function s__TrigVariables_GetrealBy takes integer this,integer i returns real
                return (LoadReal(s__TrigVariables_Hashreal, 0, (this) * s__TrigVariables_arraySize + (i))) // INLINED!!
            endfunction
            function s__TrigVariables_setVoidreal takes nothing returns nothing
                local integer this= s__TrigVariables_thisForVoid
                local integer i
                local integer k
                if s__TrigVariables_lastSetreal[this] == - 1 then
                    return
                endif
                set i=s__TrigVariables_lastSetreal[this]
                loop
                    exitwhen i == - 1



                    call RemoveSavedReal(s__TrigVariables_Hashreal, 0, (this) * s__TrigVariables_arraySize + (i)) // INLINED!!
                    set k=(LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetreal + (i) + 2) - 2) // INLINED!!
                    call RemoveSavedInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetreal + (i) + 2) // INLINED!!
                    set i=k
                endloop
                //set lastSetreal = 1
            endfunction
            function s__TrigVariables_LinkedVariables_real___onInit takes nothing returns nothing
                call s__TrigVariables_addFuncForVoid(function s__TrigVariables_setVoidreal)
            endfunction
			
            //static if TimerPutsTriggerToSleep_USE_NAME_ALPHABET then
            function s__TrigVariables__get_booleanA takes integer this returns boolean
                return (LoadBoolean(s__TrigVariables_Hashboolean, 0, (this) * s__TrigVariables_arraySize + (0))) // INLINED!!
            endfunction
            function s__TrigVariables__get_booleanB takes integer this returns boolean
                return (LoadBoolean(s__TrigVariables_Hashboolean, 0, (this) * s__TrigVariables_arraySize + (1))) // INLINED!!
            endfunction
            function s__TrigVariables__get_booleanC takes integer this returns boolean
                return (LoadBoolean(s__TrigVariables_Hashboolean, 0, (this) * s__TrigVariables_arraySize + (2))) // INLINED!!
            endfunction
            function s__TrigVariables__get_booleanD takes integer this returns boolean
                return (LoadBoolean(s__TrigVariables_Hashboolean, 0, (this) * s__TrigVariables_arraySize + (3))) // INLINED!!
            endfunction
            function s__TrigVariables__get_booleanE takes integer this returns boolean
                return (LoadBoolean(s__TrigVariables_Hashboolean, 0, (this) * s__TrigVariables_arraySize + (4))) // INLINED!!
            endfunction
            function s__TrigVariables__get_booleanF takes integer this returns boolean
                return (LoadBoolean(s__TrigVariables_Hashboolean, 0, (this) * s__TrigVariables_arraySize + (5))) // INLINED!!
            endfunction
            function s__TrigVariables__get_booleanG takes integer this returns boolean
                return (LoadBoolean(s__TrigVariables_Hashboolean, 0, (this) * s__TrigVariables_arraySize + (6))) // INLINED!!
            endfunction
            function s__TrigVariables__get_booleanH takes integer this returns boolean
                return (LoadBoolean(s__TrigVariables_Hashboolean, 0, (this) * s__TrigVariables_arraySize + (7))) // INLINED!!
            endfunction
            function s__TrigVariables__get_booleanI takes integer this returns boolean
                return (LoadBoolean(s__TrigVariables_Hashboolean, 0, (this) * s__TrigVariables_arraySize + (8))) // INLINED!!
            endfunction
            function s__TrigVariables__get_booleanJ takes integer this returns boolean
                return (LoadBoolean(s__TrigVariables_Hashboolean, 0, (this) * s__TrigVariables_arraySize + (9))) // INLINED!!
            endfunction
            function s__TrigVariables__get_booleanK takes integer this returns boolean
                return (LoadBoolean(s__TrigVariables_Hashboolean, 0, (this) * s__TrigVariables_arraySize + (10))) // INLINED!!
            endfunction
            function s__TrigVariables__get_booleanL takes integer this returns boolean
                return (LoadBoolean(s__TrigVariables_Hashboolean, 0, (this) * s__TrigVariables_arraySize + (11))) // INLINED!!
            endfunction
            function s__TrigVariables__get_booleanM takes integer this returns boolean
                return (LoadBoolean(s__TrigVariables_Hashboolean, 0, (this) * s__TrigVariables_arraySize + (12))) // INLINED!!
            endfunction
            function s__TrigVariables__get_booleanN takes integer this returns boolean
                return (LoadBoolean(s__TrigVariables_Hashboolean, 0, (this) * s__TrigVariables_arraySize + (13))) // INLINED!!
            endfunction
            function s__TrigVariables__get_booleanO takes integer this returns boolean
                return (LoadBoolean(s__TrigVariables_Hashboolean, 0, (this) * s__TrigVariables_arraySize + (14))) // INLINED!!
            endfunction
            function s__TrigVariables__get_booleanP takes integer this returns boolean
                return (LoadBoolean(s__TrigVariables_Hashboolean, 0, (this) * s__TrigVariables_arraySize + (15))) // INLINED!!
            endfunction

            function s__TrigVariables__set_booleanA takes integer this,boolean which returns nothing
                call sc__TrigVariables_Setboolean(this,0 , which)
            endfunction
            function s__TrigVariables__set_booleanB takes integer this,boolean which returns nothing
                call sc__TrigVariables_Setboolean(this,1 , which)
            endfunction
            function s__TrigVariables__set_booleanC takes integer this,boolean which returns nothing
                call sc__TrigVariables_Setboolean(this,2 , which)
            endfunction
            function s__TrigVariables__set_booleanD takes integer this,boolean which returns nothing
                call sc__TrigVariables_Setboolean(this,3 , which)
            endfunction
            function s__TrigVariables__set_booleanE takes integer this,boolean which returns nothing
                call sc__TrigVariables_Setboolean(this,4 , which)
            endfunction
            function s__TrigVariables__set_booleanF takes integer this,boolean which returns nothing
                call sc__TrigVariables_Setboolean(this,5 , which)
            endfunction
            function s__TrigVariables__set_booleanG takes integer this,boolean which returns nothing
                call sc__TrigVariables_Setboolean(this,6 , which)
            endfunction
            function s__TrigVariables__set_booleanH takes integer this,boolean which returns nothing
                call sc__TrigVariables_Setboolean(this,7 , which)
            endfunction
            function s__TrigVariables__set_booleanI takes integer this,boolean which returns nothing
                call sc__TrigVariables_Setboolean(this,8 , which)
            endfunction
            function s__TrigVariables__set_booleanJ takes integer this,boolean which returns nothing
                call sc__TrigVariables_Setboolean(this,9 , which)
            endfunction
            function s__TrigVariables__set_booleanK takes integer this,boolean which returns nothing
                call sc__TrigVariables_Setboolean(this,10 , which)
            endfunction
            function s__TrigVariables__set_booleanL takes integer this,boolean which returns nothing
                call sc__TrigVariables_Setboolean(this,11 , which)
            endfunction
            function s__TrigVariables__set_booleanM takes integer this,boolean which returns nothing
                call sc__TrigVariables_Setboolean(this,12 , which)
            endfunction
            function s__TrigVariables__set_booleanN takes integer this,boolean which returns nothing
                call sc__TrigVariables_Setboolean(this,13 , which)
            endfunction
            function s__TrigVariables__set_booleanO takes integer this,boolean which returns nothing
                call sc__TrigVariables_Setboolean(this,14 , which)
            endfunction
            function s__TrigVariables__set_booleanP takes integer this,boolean which returns nothing
                call sc__TrigVariables_Setboolean(this,15 , which)
            endfunction
            //endif
            
            function s__TrigVariables_getIndicatorboolean takes integer this,integer id returns integer
                return LoadInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetboolean + id + 2) - 2
            endfunction
            function s__TrigVariables_setIndicatorboolean takes integer this,integer id,integer value returns nothing
                call SaveInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetboolean + id + 2, value + 2)
            endfunction
            function s__TrigVariables_remIndicatorboolean takes integer this,integer id returns nothing
                call RemoveSavedInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetboolean + id + 2)
            endfunction

            function s__TrigVariables_LinkedVariables_boolean__StateSetUsedboolean takes integer this,integer id returns nothing
                if (LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetboolean + (id) + 2) - 2) == - 2 then // INLINED!!
                    call SaveInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetboolean + (id ) + 2, ( s__TrigVariables_lastSetboolean[this]) + 2) // INLINED!!
                    set s__TrigVariables_lastSetboolean[this]=id
                endif
            endfunction
            function s__TrigVariables_SetbooleanNaive takes integer this,integer i,boolean x returns nothing
                call SaveBoolean(s__TrigVariables_Hashboolean, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Setboolean takes integer this,integer i,boolean x returns nothing
                call s__TrigVariables_LinkedVariables_boolean__StateSetUsedboolean(this,i)
                call RemoveSavedBoolean(s__TrigVariables_Hashboolean, 0, this * s__TrigVariables_arraySize + i)
                call SaveBoolean(s__TrigVariables_Hashboolean, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Getboolean takes integer this,integer i returns boolean
                return LoadBoolean(s__TrigVariables_Hashboolean, 0, this * s__TrigVariables_arraySize + i)
            endfunction
            function s__TrigVariables_Remboolean takes integer this,integer i returns nothing
                call RemoveSavedBoolean(s__TrigVariables_Hashboolean, 0, this * s__TrigVariables_arraySize + i)
            endfunction












            function s__TrigVariables_SetbooleanBy takes integer this,integer i,boolean x returns nothing
                call s__TrigVariables_Setboolean(this,i , x)
            endfunction

            function s__TrigVariables_GetbooleanBy takes integer this,integer i returns boolean
                return (LoadBoolean(s__TrigVariables_Hashboolean, 0, (this) * s__TrigVariables_arraySize + (i))) // INLINED!!
            endfunction
            function s__TrigVariables_setVoidboolean takes nothing returns nothing
                local integer this= s__TrigVariables_thisForVoid
                local integer i
                local integer k
                if s__TrigVariables_lastSetboolean[this] == - 1 then
                    return
                endif
                set i=s__TrigVariables_lastSetboolean[this]
                loop
                    exitwhen i == - 1



                    call RemoveSavedBoolean(s__TrigVariables_Hashboolean, 0, (this) * s__TrigVariables_arraySize + (i)) // INLINED!!
                    set k=(LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetboolean + (i) + 2) - 2) // INLINED!!
                    call RemoveSavedInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetboolean + (i) + 2) // INLINED!!
                    set i=k
                endloop
                //set lastSetboolean = 1
            endfunction
            function s__TrigVariables_LinkedVariables_boolean__onInit takes nothing returns nothing
                call s__TrigVariables_addFuncForVoid(function s__TrigVariables_setVoidboolean)
            endfunction
			
            //static if TimerPutsTriggerToSleep_USE_NAME_ALPHABET then
            function s__TrigVariables__get_texttagA takes integer this returns texttag
                return (LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, (this) * s__TrigVariables_arraySize + (0))) // INLINED!!
            endfunction
            function s__TrigVariables__get_texttagB takes integer this returns texttag
                return (LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, (this) * s__TrigVariables_arraySize + (1))) // INLINED!!
            endfunction
            function s__TrigVariables__get_texttagC takes integer this returns texttag
                return (LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, (this) * s__TrigVariables_arraySize + (2))) // INLINED!!
            endfunction
            function s__TrigVariables__get_texttagD takes integer this returns texttag
                return (LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, (this) * s__TrigVariables_arraySize + (3))) // INLINED!!
            endfunction
            function s__TrigVariables__get_texttagE takes integer this returns texttag
                return (LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, (this) * s__TrigVariables_arraySize + (4))) // INLINED!!
            endfunction
            function s__TrigVariables__get_texttagF takes integer this returns texttag
                return (LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, (this) * s__TrigVariables_arraySize + (5))) // INLINED!!
            endfunction
            function s__TrigVariables__get_texttagG takes integer this returns texttag
                return (LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, (this) * s__TrigVariables_arraySize + (6))) // INLINED!!
            endfunction
            function s__TrigVariables__get_texttagH takes integer this returns texttag
                return (LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, (this) * s__TrigVariables_arraySize + (7))) // INLINED!!
            endfunction
            function s__TrigVariables__get_texttagI takes integer this returns texttag
                return (LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, (this) * s__TrigVariables_arraySize + (8))) // INLINED!!
            endfunction
            function s__TrigVariables__get_texttagJ takes integer this returns texttag
                return (LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, (this) * s__TrigVariables_arraySize + (9))) // INLINED!!
            endfunction
            function s__TrigVariables__get_texttagK takes integer this returns texttag
                return (LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, (this) * s__TrigVariables_arraySize + (10))) // INLINED!!
            endfunction
            function s__TrigVariables__get_texttagL takes integer this returns texttag
                return (LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, (this) * s__TrigVariables_arraySize + (11))) // INLINED!!
            endfunction
            function s__TrigVariables__get_texttagM takes integer this returns texttag
                return (LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, (this) * s__TrigVariables_arraySize + (12))) // INLINED!!
            endfunction
            function s__TrigVariables__get_texttagN takes integer this returns texttag
                return (LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, (this) * s__TrigVariables_arraySize + (13))) // INLINED!!
            endfunction
            function s__TrigVariables__get_texttagO takes integer this returns texttag
                return (LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, (this) * s__TrigVariables_arraySize + (14))) // INLINED!!
            endfunction
            function s__TrigVariables__get_texttagP takes integer this returns texttag
                return (LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, (this) * s__TrigVariables_arraySize + (15))) // INLINED!!
            endfunction

            function s__TrigVariables__set_texttagA takes integer this,texttag which returns nothing
                call sc__TrigVariables_Settexttag(this,0 , which)
            endfunction
            function s__TrigVariables__set_texttagB takes integer this,texttag which returns nothing
                call sc__TrigVariables_Settexttag(this,1 , which)
            endfunction
            function s__TrigVariables__set_texttagC takes integer this,texttag which returns nothing
                call sc__TrigVariables_Settexttag(this,2 , which)
            endfunction
            function s__TrigVariables__set_texttagD takes integer this,texttag which returns nothing
                call sc__TrigVariables_Settexttag(this,3 , which)
            endfunction
            function s__TrigVariables__set_texttagE takes integer this,texttag which returns nothing
                call sc__TrigVariables_Settexttag(this,4 , which)
            endfunction
            function s__TrigVariables__set_texttagF takes integer this,texttag which returns nothing
                call sc__TrigVariables_Settexttag(this,5 , which)
            endfunction
            function s__TrigVariables__set_texttagG takes integer this,texttag which returns nothing
                call sc__TrigVariables_Settexttag(this,6 , which)
            endfunction
            function s__TrigVariables__set_texttagH takes integer this,texttag which returns nothing
                call sc__TrigVariables_Settexttag(this,7 , which)
            endfunction
            function s__TrigVariables__set_texttagI takes integer this,texttag which returns nothing
                call sc__TrigVariables_Settexttag(this,8 , which)
            endfunction
            function s__TrigVariables__set_texttagJ takes integer this,texttag which returns nothing
                call sc__TrigVariables_Settexttag(this,9 , which)
            endfunction
            function s__TrigVariables__set_texttagK takes integer this,texttag which returns nothing
                call sc__TrigVariables_Settexttag(this,10 , which)
            endfunction
            function s__TrigVariables__set_texttagL takes integer this,texttag which returns nothing
                call sc__TrigVariables_Settexttag(this,11 , which)
            endfunction
            function s__TrigVariables__set_texttagM takes integer this,texttag which returns nothing
                call sc__TrigVariables_Settexttag(this,12 , which)
            endfunction
            function s__TrigVariables__set_texttagN takes integer this,texttag which returns nothing
                call sc__TrigVariables_Settexttag(this,13 , which)
            endfunction
            function s__TrigVariables__set_texttagO takes integer this,texttag which returns nothing
                call sc__TrigVariables_Settexttag(this,14 , which)
            endfunction
            function s__TrigVariables__set_texttagP takes integer this,texttag which returns nothing
                call sc__TrigVariables_Settexttag(this,15 , which)
            endfunction
            //endif
            
            function s__TrigVariables_getIndicatortexttag takes integer this,integer id returns integer
                return LoadInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsettexttag + id + 2) - 2
            endfunction
            function s__TrigVariables_setIndicatortexttag takes integer this,integer id,integer value returns nothing
                call SaveInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsettexttag + id + 2, value + 2)
            endfunction
            function s__TrigVariables_remIndicatortexttag takes integer this,integer id returns nothing
                call RemoveSavedInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsettexttag + id + 2)
            endfunction

            function s__TrigVariables_LinkedVariables_texttag___StateSetUsedtexttag takes integer this,integer id returns nothing
                if (LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsettexttag + (id) + 2) - 2) == - 2 then // INLINED!!
                    call SaveInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsettexttag + (id ) + 2, ( s__TrigVariables_lastSettexttag[this]) + 2) // INLINED!!
                    set s__TrigVariables_lastSettexttag[this]=id
                endif
            endfunction
            function s__TrigVariables_SettexttagNaive takes integer this,integer i,texttag x returns nothing
                call SaveTextTagHandle(s__TrigVariables_Hashtexttag, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Settexttag takes integer this,integer i,texttag x returns nothing
                call s__TrigVariables_LinkedVariables_texttag___StateSetUsedtexttag(this,i)
                call RemoveSavedHandle(s__TrigVariables_Hashtexttag, 0, this * s__TrigVariables_arraySize + i)
                call SaveTextTagHandle(s__TrigVariables_Hashtexttag, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Gettexttag takes integer this,integer i returns texttag
                return LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, this * s__TrigVariables_arraySize + i)
            endfunction
            function s__TrigVariables_Remtexttag takes integer this,integer i returns nothing
                call RemoveSavedHandle(s__TrigVariables_Hashtexttag, 0, this * s__TrigVariables_arraySize + i)
            endfunction












            function s__TrigVariables_SettexttagBy takes integer this,integer i,texttag x returns nothing
                call s__TrigVariables_Settexttag(this,i , x)
            endfunction

            function s__TrigVariables_GettexttagBy takes integer this,integer i returns texttag
                return (LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, (this) * s__TrigVariables_arraySize + (i))) // INLINED!!
            endfunction
            function s__TrigVariables_setVoidtexttag takes nothing returns nothing
                local integer this= s__TrigVariables_thisForVoid
                local integer i
                local integer k
                if s__TrigVariables_lastSettexttag[this] == - 1 then
                    return
                endif
                set i=s__TrigVariables_lastSettexttag[this]
                loop
                    exitwhen i == - 1



                    call RemoveSavedHandle(s__TrigVariables_Hashtexttag, 0, (this) * s__TrigVariables_arraySize + (i)) // INLINED!!
                    set k=(LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsettexttag + (i) + 2) - 2) // INLINED!!
                    call RemoveSavedInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsettexttag + (i) + 2) // INLINED!!
                    set i=k
                endloop
                //set lastSettexttag = 1
            endfunction
            function s__TrigVariables_LinkedVariables_texttag___onInit takes nothing returns nothing
                call s__TrigVariables_addFuncForVoid(function s__TrigVariables_setVoidtexttag)
            endfunction
			
            //static if TimerPutsTriggerToSleep_USE_NAME_ALPHABET then
            function s__TrigVariables__get_stringA takes integer this returns string
                return (LoadStr(s__TrigVariables_Hashstring, 0, (this) * s__TrigVariables_arraySize + (0))) // INLINED!!
            endfunction
            function s__TrigVariables__get_stringB takes integer this returns string
                return (LoadStr(s__TrigVariables_Hashstring, 0, (this) * s__TrigVariables_arraySize + (1))) // INLINED!!
            endfunction
            function s__TrigVariables__get_stringC takes integer this returns string
                return (LoadStr(s__TrigVariables_Hashstring, 0, (this) * s__TrigVariables_arraySize + (2))) // INLINED!!
            endfunction
            function s__TrigVariables__get_stringD takes integer this returns string
                return (LoadStr(s__TrigVariables_Hashstring, 0, (this) * s__TrigVariables_arraySize + (3))) // INLINED!!
            endfunction
            function s__TrigVariables__get_stringE takes integer this returns string
                return (LoadStr(s__TrigVariables_Hashstring, 0, (this) * s__TrigVariables_arraySize + (4))) // INLINED!!
            endfunction
            function s__TrigVariables__get_stringF takes integer this returns string
                return (LoadStr(s__TrigVariables_Hashstring, 0, (this) * s__TrigVariables_arraySize + (5))) // INLINED!!
            endfunction
            function s__TrigVariables__get_stringG takes integer this returns string
                return (LoadStr(s__TrigVariables_Hashstring, 0, (this) * s__TrigVariables_arraySize + (6))) // INLINED!!
            endfunction
            function s__TrigVariables__get_stringH takes integer this returns string
                return (LoadStr(s__TrigVariables_Hashstring, 0, (this) * s__TrigVariables_arraySize + (7))) // INLINED!!
            endfunction
            function s__TrigVariables__get_stringI takes integer this returns string
                return (LoadStr(s__TrigVariables_Hashstring, 0, (this) * s__TrigVariables_arraySize + (8))) // INLINED!!
            endfunction
            function s__TrigVariables__get_stringJ takes integer this returns string
                return (LoadStr(s__TrigVariables_Hashstring, 0, (this) * s__TrigVariables_arraySize + (9))) // INLINED!!
            endfunction
            function s__TrigVariables__get_stringK takes integer this returns string
                return (LoadStr(s__TrigVariables_Hashstring, 0, (this) * s__TrigVariables_arraySize + (10))) // INLINED!!
            endfunction
            function s__TrigVariables__get_stringL takes integer this returns string
                return (LoadStr(s__TrigVariables_Hashstring, 0, (this) * s__TrigVariables_arraySize + (11))) // INLINED!!
            endfunction
            function s__TrigVariables__get_stringM takes integer this returns string
                return (LoadStr(s__TrigVariables_Hashstring, 0, (this) * s__TrigVariables_arraySize + (12))) // INLINED!!
            endfunction
            function s__TrigVariables__get_stringN takes integer this returns string
                return (LoadStr(s__TrigVariables_Hashstring, 0, (this) * s__TrigVariables_arraySize + (13))) // INLINED!!
            endfunction
            function s__TrigVariables__get_stringO takes integer this returns string
                return (LoadStr(s__TrigVariables_Hashstring, 0, (this) * s__TrigVariables_arraySize + (14))) // INLINED!!
            endfunction
            function s__TrigVariables__get_stringP takes integer this returns string
                return (LoadStr(s__TrigVariables_Hashstring, 0, (this) * s__TrigVariables_arraySize + (15))) // INLINED!!
            endfunction

            function s__TrigVariables__set_stringA takes integer this,string which returns nothing
                call sc__TrigVariables_Setstring(this,0 , which)
            endfunction
            function s__TrigVariables__set_stringB takes integer this,string which returns nothing
                call sc__TrigVariables_Setstring(this,1 , which)
            endfunction
            function s__TrigVariables__set_stringC takes integer this,string which returns nothing
                call sc__TrigVariables_Setstring(this,2 , which)
            endfunction
            function s__TrigVariables__set_stringD takes integer this,string which returns nothing
                call sc__TrigVariables_Setstring(this,3 , which)
            endfunction
            function s__TrigVariables__set_stringE takes integer this,string which returns nothing
                call sc__TrigVariables_Setstring(this,4 , which)
            endfunction
            function s__TrigVariables__set_stringF takes integer this,string which returns nothing
                call sc__TrigVariables_Setstring(this,5 , which)
            endfunction
            function s__TrigVariables__set_stringG takes integer this,string which returns nothing
                call sc__TrigVariables_Setstring(this,6 , which)
            endfunction
            function s__TrigVariables__set_stringH takes integer this,string which returns nothing
                call sc__TrigVariables_Setstring(this,7 , which)
            endfunction
            function s__TrigVariables__set_stringI takes integer this,string which returns nothing
                call sc__TrigVariables_Setstring(this,8 , which)
            endfunction
            function s__TrigVariables__set_stringJ takes integer this,string which returns nothing
                call sc__TrigVariables_Setstring(this,9 , which)
            endfunction
            function s__TrigVariables__set_stringK takes integer this,string which returns nothing
                call sc__TrigVariables_Setstring(this,10 , which)
            endfunction
            function s__TrigVariables__set_stringL takes integer this,string which returns nothing
                call sc__TrigVariables_Setstring(this,11 , which)
            endfunction
            function s__TrigVariables__set_stringM takes integer this,string which returns nothing
                call sc__TrigVariables_Setstring(this,12 , which)
            endfunction
            function s__TrigVariables__set_stringN takes integer this,string which returns nothing
                call sc__TrigVariables_Setstring(this,13 , which)
            endfunction
            function s__TrigVariables__set_stringO takes integer this,string which returns nothing
                call sc__TrigVariables_Setstring(this,14 , which)
            endfunction
            function s__TrigVariables__set_stringP takes integer this,string which returns nothing
                call sc__TrigVariables_Setstring(this,15 , which)
            endfunction
            //endif
            
            function s__TrigVariables_getIndicatorstring takes integer this,integer id returns integer
                return LoadInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetstring + id + 2) - 2
            endfunction
            function s__TrigVariables_setIndicatorstring takes integer this,integer id,integer value returns nothing
                call SaveInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetstring + id + 2, value + 2)
            endfunction
            function s__TrigVariables_remIndicatorstring takes integer this,integer id returns nothing
                call RemoveSavedInteger(s__TrigVariables_HashMain, 0, this * s__TrigVariables_offsetSize + s__TrigVariables_offsetstring + id + 2)
            endfunction

            function s__TrigVariables_LinkedVariables_string__StateSetUsedstring takes integer this,integer id returns nothing
                if (LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetstring + (id) + 2) - 2) == - 2 then // INLINED!!
                    call SaveInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetstring + (id ) + 2, ( s__TrigVariables_lastSetstring[this]) + 2) // INLINED!!
                    set s__TrigVariables_lastSetstring[this]=id
                endif
            endfunction
            function s__TrigVariables_SetstringNaive takes integer this,integer i,string x returns nothing
                call SaveStr(s__TrigVariables_Hashstring, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Setstring takes integer this,integer i,string x returns nothing
                call s__TrigVariables_LinkedVariables_string__StateSetUsedstring(this,i)
                call RemoveSavedString(s__TrigVariables_Hashstring, 0, this * s__TrigVariables_arraySize + i)
                call SaveStr(s__TrigVariables_Hashstring, 0, this * s__TrigVariables_arraySize + i, x)
            endfunction
            function s__TrigVariables_Getstring takes integer this,integer i returns string
                return LoadStr(s__TrigVariables_Hashstring, 0, this * s__TrigVariables_arraySize + i)
            endfunction
            function s__TrigVariables_Remstring takes integer this,integer i returns nothing
                call RemoveSavedString(s__TrigVariables_Hashstring, 0, this * s__TrigVariables_arraySize + i)
            endfunction












            function s__TrigVariables_SetstringBy takes integer this,integer i,string x returns nothing
                call s__TrigVariables_Setstring(this,i , x)
            endfunction

            function s__TrigVariables_GetstringBy takes integer this,integer i returns string
                return (LoadStr(s__TrigVariables_Hashstring, 0, (this) * s__TrigVariables_arraySize + (i))) // INLINED!!
            endfunction
            function s__TrigVariables_setVoidstring takes nothing returns nothing
                local integer this= s__TrigVariables_thisForVoid
                local integer i
                local integer k
                if s__TrigVariables_lastSetstring[this] == - 1 then
                    return
                endif
                set i=s__TrigVariables_lastSetstring[this]
                loop
                    exitwhen i == - 1



                    call RemoveSavedString(s__TrigVariables_Hashstring, 0, (this) * s__TrigVariables_arraySize + (i)) // INLINED!!
                    set k=(LoadInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetstring + (i) + 2) - 2) // INLINED!!
                    call RemoveSavedInteger(s__TrigVariables_HashMain, 0, (this) * s__TrigVariables_offsetSize + s__TrigVariables_offsetstring + (i) + 2) // INLINED!!
                    set i=k
                endloop
                //set lastSetstring = 1
            endfunction
            function s__TrigVariables_LinkedVariables_string__onInit takes nothing returns nothing
                call s__TrigVariables_addFuncForVoid(function s__TrigVariables_setVoidstring)
            endfunction
        
        





















































































































































































































































































































































































































































































































































































































































































































































































































































































































        
//Implemented from module TPTTS_CopyByEventId:
            

        function s__TrigVariables_CopyByEventId_0 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
        //if EVENT == EVENT_GAME_VICTORY then
            set s__TrigVariables_WinningPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_4 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
        //elseif EVENT == EVENT_GAME_TIMER_EXPIRED then
            set s__TrigVariables_ExpiredTimer[this]=s__TrigVariables_ExpiredTimer[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_5 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
        //elseif EVENT == EVENT_GAME_ENTER_REGION then
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
            set s__TrigVariables_TriggeringRegion[this]=s__TrigVariables_TriggeringRegion[s__TrigVariables_Body]
            set s__TrigVariables_EnteringUnit[this]=s__TrigVariables_EnteringUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_6 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
        //elseif EVENT == EVENT_GAME_LEAVE_REGION then
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
            set s__TrigVariables_TriggeringRegion[this]=s__TrigVariables_TriggeringRegion[s__TrigVariables_Body]
            set s__TrigVariables_LeavingUnit[this]=s__TrigVariables_LeavingUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_3 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
        //elseif EVENT == EVENT_PLAYER_STATE_LIMIT then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_EventPlayerState[this]=s__TrigVariables_EventPlayerState[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_G2 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
        
        //elseif EVENT == EVENT_PLAYER_ALLIANCE_CHANGED   or/*
        //*/ EVENT == EVENT_PLAYER_DEFEAT             or/*
        //*/ EVENT == EVENT_PLAYER_VICTORY            or/*
        //*/ EVENT == EVENT_PLAYER_LEAVE              or/*
        //*/ EVENT == EVENT_PLAYER_END_CINEMATIC      then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_16 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
        //elseif EVENT == EVENT_PLAYER_CHAT then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_EventPlayerChatString[this]=s__TrigVariables_EventPlayerChatString[s__TrigVariables_Body]
            set s__TrigVariables_EventPlayerChatStringMatched[this]=s__TrigVariables_EventPlayerChatStringMatched[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_G1 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
        
        
        
            ///! runtextmacro EVENT_COMPARE_UNIT_DataCopy("HIDDEN")
            ///! runtextmacro EVENT_COMPARE_UNIT_DataCopy("SELECTED")
            ///! runtextmacro EVENT_COMPARE_UNIT_DataCopy("DESELECTED")
            ///! runtextmacro EVENT_COMPARE_UNIT_DataCopy("UPGRADE_START")
            ///! runtextmacro EVENT_COMPARE_UNIT_DataCopy("UPGRADE_CANCEL")
            ///! runtextmacro EVENT_COMPARE_UNIT_DataCopy("UPGRADE_FINISH")
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_18 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("ATTACKED")
            //elseif EVENT == EVENT_PLAYER_UNIT_ATTACKED or EVENT == EVENT_UNIT_ATTACKED then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("ATTACKED")
            set s__TrigVariables_Attacker[this]=s__TrigVariables_Attacker[s__TrigVariables_Body]
            set s__TrigVariables_AttackedUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_19 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("RESCUED")
            //elseif EVENT == EVENT_PLAYER_UNIT_RESCUED or EVENT == EVENT_UNIT_RESCUED then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("RESCUED")
            set s__TrigVariables_Rescuer[this]=s__TrigVariables_Rescuer[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_20 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("DEATH")
            //elseif EVENT == EVENT_PLAYER_UNIT_DEATH or EVENT == EVENT_UNIT_DEATH then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("DEATH")
            set s__TrigVariables_KillingUnit[this]=s__TrigVariables_KillingUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_21 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("DECAY")
            //elseif EVENT == EVENT_PLAYER_UNIT_DECAY or EVENT == EVENT_UNIT_DECAY then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("DECAY")
            set s__TrigVariables_DecayingUnit[this]=s__TrigVariables_DecayingUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_22 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("DETECTED")
            //elseif EVENT == EVENT_PLAYER_UNIT_DETECTED or EVENT == EVENT_UNIT_DETECTED then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("DETECTED")
            set s__TrigVariables_DetectedUnit[this]=s__TrigVariables_DetectedUnit[s__TrigVariables_Body]
            set s__TrigVariables_EventDetectingPlayer[this]=s__TrigVariables_EventDetectingPlayer[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_26 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
            //elseif EVENT == EVENT_PLAYER_UNIT_CONSTRUCT_START then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
            set s__TrigVariables_ConstructingStructure[this]=s__TrigVariables_ConstructingStructure[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_27 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("CONSTRUCT_CANCEL")
            //elseif EVENT == EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL or EVENT == EVENT_UNIT_CONSTRUCT_CANCEL then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("CONSTRUCT_CANCEL")
            set s__TrigVariables_CancelledStructure[this]=s__TrigVariables_CancelledStructure[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_28 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("CONSTRUCT_FINISH")
            //elseif EVENT == EVENT_PLAYER_UNIT_CONSTRUCT_FINISH or EVENT == EVENT_UNIT_CONSTRUCT_FINISH then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("CONSTRUCT_FINISH")
            set s__TrigVariables_ConstructedStructure[this]=s__TrigVariables_ConstructedStructure[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_32 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("TRAIN_START")
            //elseif EVENT == EVENT_PLAYER_UNIT_TRAIN_START or EVENT == EVENT_UNIT_TRAIN_START then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("TRAIN_START")
            set s__TrigVariables_TrainedUnitType[this]=s__TrigVariables_TrainedUnitType[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_33 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("TRAIN_CANCEL")
            //elseif EVENT == EVENT_PLAYER_UNIT_TRAIN_CANCEL or EVENT == EVENT_UNIT_TRAIN_CANCEL then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("TRAIN_CANCEL")
            set s__TrigVariables_TrainedUnitType[this]=s__TrigVariables_TrainedUnitType[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_34 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("TRAIN_FINISH")
            //elseif EVENT == EVENT_PLAYER_UNIT_TRAIN_FINISH or EVENT == EVENT_UNIT_TRAIN_FINISH then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("TRAIN_FINISH")
            set s__TrigVariables_TrainedUnit[this]=s__TrigVariables_TrainedUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_35 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("RESEARCH_START")
            //elseif EVENT == EVENT_PLAYER_UNIT_RESEARCH_START or EVENT == EVENT_UNIT_RESEARCH_START then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("RESEARCH_START")
            set s__TrigVariables_Researched[this]=s__TrigVariables_Researched[s__TrigVariables_Body]
            set s__TrigVariables_ResearchingUnit[this]=s__TrigVariables_ResearchingUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_36 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("RESEARCH_CANCEL")
            //elseif EVENT == EVENT_PLAYER_UNIT_RESEARCH_CANCEL or EVENT == EVENT_UNIT_RESEARCH_CANCEL then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("RESEARCH_CANCEL")
            set s__TrigVariables_Researched[this]=s__TrigVariables_Researched[s__TrigVariables_Body]
            set s__TrigVariables_ResearchingUnit[this]=s__TrigVariables_ResearchingUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_37 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("RESEARCH_FINISH")
            //elseif EVENT == EVENT_PLAYER_UNIT_RESEARCH_FINISH or EVENT == EVENT_UNIT_RESEARCH_FINISH then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("RESEARCH_FINISH")
            set s__TrigVariables_Researched[this]=s__TrigVariables_Researched[s__TrigVariables_Body]
            set s__TrigVariables_ResearchingUnit[this]=s__TrigVariables_ResearchingUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_38 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("ISSUED_ORDER")
            //elseif EVENT == EVENT_PLAYER_UNIT_ISSUED_ORDER or EVENT == EVENT_UNIT_ISSUED_ORDER then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("ISSUED_ORDER")
            set s__TrigVariables_IssuedOrderId[this]=s__TrigVariables_IssuedOrderId[s__TrigVariables_Body]
            set s__TrigVariables_OrderedUnit[this]=s__TrigVariables_OrderedUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_39 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("ISSUED_POINT_ORDER")
            //elseif EVENT == EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER or EVENT == EVENT_UNIT_ISSUED_POINT_ORDER then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("ISSUED_POINT_ORDER")
            set s__TrigVariables_IssuedOrderId[this]=s__TrigVariables_IssuedOrderId[s__TrigVariables_Body]
            set s__TrigVariables_OrderPointX[this]=s__TrigVariables_OrderPointX[s__TrigVariables_Body]
            set s__TrigVariables_OrderPointY[this]=s__TrigVariables_OrderPointY[s__TrigVariables_Body]
            set s__TrigVariables_OrderedUnit[this]=s__TrigVariables_OrderedUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_40 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("ISSUED_TARGET_ORDER")
            //elseif EVENT == EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER or EVENT == EVENT_UNIT_ISSUED_TARGET_ORDER then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("ISSUED_TARGET_ORDER")
            set s__TrigVariables_IssuedOrderId[this]=s__TrigVariables_IssuedOrderId[s__TrigVariables_Body]
            //set OrderTarget            = Body.OrderTarget
            set s__TrigVariables_OrderedUnit[this]=s__TrigVariables_OrderedUnit[s__TrigVariables_Body]
            set s__TrigVariables_OrderTargetUnit[this]=s__TrigVariables_OrderTargetUnit[s__TrigVariables_Body]
            set s__TrigVariables_OrderTargetDestructable[this]=s__TrigVariables_OrderTargetDestructable[s__TrigVariables_Body]
            set s__TrigVariables_OrderTargetItem[this]=s__TrigVariables_OrderTargetItem[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_47 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("SUMMON")
            //elseif EVENT == EVENT_PLAYER_UNIT_SUMMON or EVENT == EVENT_UNIT_SUMMON then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("SUMMON")
            set s__TrigVariables_SummonedUnit[this]=s__TrigVariables_SummonedUnit[s__TrigVariables_Body]
            set s__TrigVariables_SummoningUnit[this]=s__TrigVariables_SummoningUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_48 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("DROP_ITEM")
            //elseif EVENT == EVENT_PLAYER_UNIT_DROP_ITEM or EVENT == EVENT_UNIT_DROP_ITEM then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("DROP_ITEM")
            set s__TrigVariables_ManipulatedItem[this]=s__TrigVariables_ManipulatedItem[s__TrigVariables_Body]
            set s__TrigVariables_ManipulatingUnit[this]=s__TrigVariables_ManipulatingUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_49 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("PICKUP_ITEM")
            //elseif EVENT == EVENT_PLAYER_UNIT_PICKUP_ITEM or EVENT == EVENT_UNIT_PICKUP_ITEM then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("PICKUP_ITEM")
            set s__TrigVariables_ManipulatedItem[this]=s__TrigVariables_ManipulatedItem[s__TrigVariables_Body]
            set s__TrigVariables_ManipulatingUnit[this]=s__TrigVariables_ManipulatingUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_50 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("USE_ITEM")
            //elseif EVENT == EVENT_PLAYER_UNIT_USE_ITEM or EVENT == EVENT_UNIT_USE_ITEM then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("USE_ITEM")
            set s__TrigVariables_ManipulatedItem[this]=s__TrigVariables_ManipulatedItem[s__TrigVariables_Body]
            set s__TrigVariables_ManipulatingUnit[this]=s__TrigVariables_ManipulatingUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_277 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("USE_ITEM")
            //elseif EVENT == EVENT_PLAYER_UNIT_USE_ITEM or EVENT == EVENT_UNIT_USE_ITEM then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("USE_ITEM")
            set s__TrigVariables_ManipulatedItem[this]=s__TrigVariables_ManipulatedItem[s__TrigVariables_Body]
            set s__TrigVariables_ManipulatingUnit[this]=s__TrigVariables_ManipulatingUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_51 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("LOADED")
            //elseif EVENT == EVENT_PLAYER_UNIT_LOADED or EVENT == EVENT_UNIT_LOADED then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("LOADED")
            set s__TrigVariables_LoadedUnit[this]=s__TrigVariables_LoadedUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_41 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
            
//textmacro instance: EVENT_COMPARE_HERO_DataCopy("LEVEL")
            //elseif EVENT == EVENT_PLAYER_HERO_LEVEL or EVENT == EVENT_UNIT_HERO_LEVEL then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_HERO_DataCopy("LEVEL")
            set s__TrigVariables_LevelingUnit[this]=s__TrigVariables_LevelingUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_42 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_HERO_DataCopy("SKILL")
            //elseif EVENT == EVENT_PLAYER_HERO_SKILL or EVENT == EVENT_UNIT_HERO_SKILL then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_HERO_DataCopy("SKILL")
            set s__TrigVariables_LearnedSkill[this]=s__TrigVariables_LearnedSkill[s__TrigVariables_Body]
            set s__TrigVariables_LearnedSkillLevel[this]=s__TrigVariables_LearnedSkillLevel[s__TrigVariables_Body]
            set s__TrigVariables_LearningUnit[this]=s__TrigVariables_LearningUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_43 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_HERO_DataCopy("REVIVABLE")
            //elseif EVENT == EVENT_PLAYER_HERO_REVIVABLE or EVENT == EVENT_UNIT_HERO_REVIVABLE then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_HERO_DataCopy("REVIVABLE")
            set s__TrigVariables_RevivableUnit[this]=s__TrigVariables_RevivableUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_44 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_HERO_DataCopy("REVIVE_START")
            //elseif EVENT == EVENT_PLAYER_HERO_REVIVE_START or EVENT == EVENT_UNIT_HERO_REVIVE_START then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_HERO_DataCopy("REVIVE_START")
            set s__TrigVariables_RevivingUnit[this]=s__TrigVariables_RevivingUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_45 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_HERO_DataCopy("REVIVE_CANCEL")
            //elseif EVENT == EVENT_PLAYER_HERO_REVIVE_CANCEL or EVENT == EVENT_UNIT_HERO_REVIVE_CANCEL then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_HERO_DataCopy("REVIVE_CANCEL")
            set s__TrigVariables_RevivingUnit[this]=s__TrigVariables_RevivingUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_46 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_HERO_DataCopy("REVIVE_FINISH")
            //elseif EVENT == EVENT_PLAYER_HERO_REVIVE_FINISH or EVENT == EVENT_UNIT_HERO_REVIVE_FINISH then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_HERO_DataCopy("REVIVE_FINISH")
            set s__TrigVariables_RevivingUnit[this]=s__TrigVariables_RevivingUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_52 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
        //elseif EVENT == EVENT_UNIT_DAMAGED then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
            set s__TrigVariables_EventDamage[this]=s__TrigVariables_EventDamage[s__TrigVariables_Body]
            set s__TrigVariables_EventDamageSource[this]=s__TrigVariables_EventDamageSource[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_60 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
        //elseif EVENT == EVENT_UNIT_ACQUIRED_TARGET then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
            set s__TrigVariables_EventTargetUnit[this]=s__TrigVariables_EventTargetUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_61 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
        //elseif EVENT == EVENT_UNIT_TARGET_IN_RANGE then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_92 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
        //elseif EVENT == EVENT_DIALOG_BUTTON_CLICK then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_ClickedButton[this]=s__TrigVariables_ClickedButton[s__TrigVariables_Body]
            set s__TrigVariables_ClickedDialog[this]=s__TrigVariables_ClickedDialog[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_G3 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
        
        
        
        //elseif EVENT == EVENT_UNIT_SPELL_CHANNEL        or /*
        //*/ EVENT == EVENT_UNIT_SPELL_CAST           or /*
        //*/ EVENT == EVENT_UNIT_SPELL_EFFECT         or /*
        //*/ EVENT == EVENT_UNIT_SPELL_FINISH         or /*
        //*/ EVENT == EVENT_UNIT_SPELL_ENDCAST        or /*
        //*/ EVENT == EVENT_PLAYER_UNIT_SPELL_CHANNEL or /*
        //*/ EVENT == EVENT_PLAYER_UNIT_SPELL_CAST    or /*
        //*/ EVENT == EVENT_PLAYER_UNIT_SPELL_EFFECT  or /*
        //*/ EVENT == EVENT_PLAYER_UNIT_SPELL_FINISH  or /*
        //*/ EVENT == EVENT_PLAYER_UNIT_SPELL_ENDCAST then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
            set s__TrigVariables_SpellAbilityUnit[this]=s__TrigVariables_SpellAbilityUnit[s__TrigVariables_Body]
            set s__TrigVariables_SpellAbilityId[this]=s__TrigVariables_SpellAbilityId[s__TrigVariables_Body]
            set s__TrigVariables_SpellTargetX[this]=s__TrigVariables_SpellTargetX[s__TrigVariables_Body]
            set s__TrigVariables_SpellTargetY[this]=s__TrigVariables_SpellTargetY[s__TrigVariables_Body]
            set s__TrigVariables_SpellTargetDestructable[this]=s__TrigVariables_SpellTargetDestructable[s__TrigVariables_Body]
            set s__TrigVariables_SpellTargetItem[this]=s__TrigVariables_SpellTargetItem[s__TrigVariables_Body]
            set s__TrigVariables_SpellTargetUnit[this]=s__TrigVariables_SpellTargetUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_G4 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
        
        
        //elseif EVENT == EVENT_PLAYER_ARROW_LEFT_DOWN  or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_LEFT_UP    or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_RIGHT_DOWN or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_RIGHT_UP   or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_DOWN_DOWN  or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_DOWN_UP    or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_UP_DOWN    or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_UP_UP      then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_270 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("CHANGE_OWNER")
            //elseif EVENT == EVENT_PLAYER_UNIT_CHANGE_OWNER or EVENT == EVENT_UNIT_CHANGE_OWNER then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("CHANGE_OWNER")
            set s__TrigVariables_ChangingUnitPrevOwner[this]=s__TrigVariables_ChangingUnitPrevOwner[s__TrigVariables_Body]
            set s__TrigVariables_ChangingUnit[this]=s__TrigVariables_ChangingUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_269 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("SELL")
            //elseif EVENT == EVENT_PLAYER_UNIT_SELL or EVENT == EVENT_UNIT_SELL then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("SELL")
            set s__TrigVariables_SellingUnit[this]=s__TrigVariables_SellingUnit[s__TrigVariables_Body]
            set s__TrigVariables_SoldUnit[this]=s__TrigVariables_SoldUnit[s__TrigVariables_Body]
            set s__TrigVariables_BuyingUnit[this]=s__TrigVariables_BuyingUnit[s__TrigVariables_Body]
            return false
        endfunction
        function s__TrigVariables_CopyByEventId_271 takes nothing returns boolean
            local integer this= s__TrigVariables_Copy
//textmacro instance: EVENT_COMPARE_UNIT_DataCopy("SELL_ITEM")
            //elseif EVENT == EVENT_PLAYER_UNIT_SELL_ITEM or EVENT == EVENT_UNIT_SELL_ITEM then
            set s__TrigVariables_TriggerPlayer[this]=s__TrigVariables_TriggerPlayer[s__TrigVariables_Body]
            set s__TrigVariables_TriggerUnit[this]=s__TrigVariables_TriggerUnit[s__TrigVariables_Body]
//end of: EVENT_COMPARE_UNIT_DataCopy("SELL_ITEM")
            set s__TrigVariables_SoldItem[this]=s__TrigVariables_SoldItem[s__TrigVariables_Body]
            return false
        endfunction
        
        //Announced already by CopyByEventId
        //static constant integer G1 = 295
        //static constant integer G2 = 296
        //static constant integer G3 = 297
        //static constant integer G4 = 298
        function s__TrigVariables_CopyDataByEventId takes boolean bb returns boolean
            local integer this= s__TrigVariables_Copy
            set s__TrigVariables_EventId[this]=s__TrigVariables_EventId[s__TrigVariables_Body]
            call TriggerEvaluate(s__s__TrigVariables_tCopyByEventId[GetHandleId(s__TrigVariables_EventId[s__TrigVariables_Body])])
            return false
        endfunction
        function s__TrigVariables_InitCopyByEventId takes nothing returns nothing
            
//textmacro instance: InitCopyByEventIdTrig("G1")
                set s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G1]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G1], Condition(function s__TrigVariables_CopyByEventId_G1))
//end of: InitCopyByEventIdTrig("G1")
            set s__s__TrigVariables_tCopyByEventId[23]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G1]
            set s__s__TrigVariables_tCopyByEventId[24]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G1]
            set s__s__TrigVariables_tCopyByEventId[25]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G1]
            set s__s__TrigVariables_tCopyByEventId[29]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G1]
            set s__s__TrigVariables_tCopyByEventId[30]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G1]
            set s__s__TrigVariables_tCopyByEventId[31]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G1]
            set s__s__TrigVariables_tCopyByEventId[66]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G1]
            set s__s__TrigVariables_tCopyByEventId[67]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G1]
            set s__s__TrigVariables_tCopyByEventId[78]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G1]
//textmacro instance: InitCopyByEventIdTrig("G2")
                set s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G2]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G2], Condition(function s__TrigVariables_CopyByEventId_G2))
//end of: InitCopyByEventIdTrig("G2")
            set s__s__TrigVariables_tCopyByEventId[13]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G2]
            set s__s__TrigVariables_tCopyByEventId[14]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G2]
            set s__s__TrigVariables_tCopyByEventId[15]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G2]
            set s__s__TrigVariables_tCopyByEventId[17]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G2]
//textmacro instance: InitCopyByEventIdTrig("G3")
                set s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G3]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G3], Condition(function s__TrigVariables_CopyByEventId_G3))
//end of: InitCopyByEventIdTrig("G3")
            set s__s__TrigVariables_tCopyByEventId[272]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G3]
            set s__s__TrigVariables_tCopyByEventId[273]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G3]
            set s__s__TrigVariables_tCopyByEventId[274]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G3]
            set s__s__TrigVariables_tCopyByEventId[275]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G3]
            set s__s__TrigVariables_tCopyByEventId[276]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G3]
            set s__s__TrigVariables_tCopyByEventId[289]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G3]
            set s__s__TrigVariables_tCopyByEventId[290]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G3]
            set s__s__TrigVariables_tCopyByEventId[291]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G3]
            set s__s__TrigVariables_tCopyByEventId[292]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G3]
            set s__s__TrigVariables_tCopyByEventId[293]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G3]
//textmacro instance: InitCopyByEventIdTrig("G4")
                set s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G4]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G4], Condition(function s__TrigVariables_CopyByEventId_G4))
//end of: InitCopyByEventIdTrig("G4")
            set s__s__TrigVariables_tCopyByEventId[261]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G4]
            set s__s__TrigVariables_tCopyByEventId[262]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G4]
            set s__s__TrigVariables_tCopyByEventId[263]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G4]
            set s__s__TrigVariables_tCopyByEventId[264]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G4]
            set s__s__TrigVariables_tCopyByEventId[265]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G4]
            set s__s__TrigVariables_tCopyByEventId[266]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G4]
            set s__s__TrigVariables_tCopyByEventId[267]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G4]
            set s__s__TrigVariables_tCopyByEventId[268]= s__s__TrigVariables_tCopyByEventId[s__TrigVariables_G4]
//textmacro instance: InitCopyByEventIdTrig("0")
                set s__s__TrigVariables_tCopyByEventId[0]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[0], Condition(function s__TrigVariables_CopyByEventId_0))
//end of: InitCopyByEventIdTrig("0")
//textmacro instance: InitCopyByEventIdTrig("3")
                set s__s__TrigVariables_tCopyByEventId[3]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[3], Condition(function s__TrigVariables_CopyByEventId_3))
//end of: InitCopyByEventIdTrig("3")
//textmacro instance: InitCopyByEventIdTrig("4")
                set s__s__TrigVariables_tCopyByEventId[4]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[4], Condition(function s__TrigVariables_CopyByEventId_4))
//end of: InitCopyByEventIdTrig("4")
//textmacro instance: InitCopyByEventIdTrig("5")
                set s__s__TrigVariables_tCopyByEventId[5]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[5], Condition(function s__TrigVariables_CopyByEventId_5))
//end of: InitCopyByEventIdTrig("5")
//textmacro instance: InitCopyByEventIdTrig("6")
                set s__s__TrigVariables_tCopyByEventId[6]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[6], Condition(function s__TrigVariables_CopyByEventId_6))
//end of: InitCopyByEventIdTrig("6")
//textmacro instance: InitCopyByEventIdTrig("16")
                set s__s__TrigVariables_tCopyByEventId[16]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[16], Condition(function s__TrigVariables_CopyByEventId_16))
//end of: InitCopyByEventIdTrig("16")
//textmacro instance: InitCopyByEventIdTrigDouble("18","62")
                set s__s__TrigVariables_tCopyByEventId[18]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[18], Condition(function s__TrigVariables_CopyByEventId_18))
                set s__s__TrigVariables_tCopyByEventId[62]= s__s__TrigVariables_tCopyByEventId[18]
//end of: InitCopyByEventIdTrigDouble("18","62")
//textmacro instance: InitCopyByEventIdTrigDouble("19","63")
                set s__s__TrigVariables_tCopyByEventId[19]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[19], Condition(function s__TrigVariables_CopyByEventId_19))
                set s__s__TrigVariables_tCopyByEventId[63]= s__s__TrigVariables_tCopyByEventId[19]
//end of: InitCopyByEventIdTrigDouble("19","63")
//textmacro instance: InitCopyByEventIdTrigDouble("20","53")
                set s__s__TrigVariables_tCopyByEventId[20]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[20], Condition(function s__TrigVariables_CopyByEventId_20))
                set s__s__TrigVariables_tCopyByEventId[53]= s__s__TrigVariables_tCopyByEventId[20]
//end of: InitCopyByEventIdTrigDouble("20","53")
//textmacro instance: InitCopyByEventIdTrigDouble("21","54")
                set s__s__TrigVariables_tCopyByEventId[21]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[21], Condition(function s__TrigVariables_CopyByEventId_21))
                set s__s__TrigVariables_tCopyByEventId[54]= s__s__TrigVariables_tCopyByEventId[21]
//end of: InitCopyByEventIdTrigDouble("21","54")
//textmacro instance: InitCopyByEventIdTrigDouble("22","55")
                set s__s__TrigVariables_tCopyByEventId[22]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[22], Condition(function s__TrigVariables_CopyByEventId_22))
                set s__s__TrigVariables_tCopyByEventId[55]= s__s__TrigVariables_tCopyByEventId[22]
//end of: InitCopyByEventIdTrigDouble("22","55")
//textmacro instance: InitCopyByEventIdTrig("26")
                set s__s__TrigVariables_tCopyByEventId[26]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[26], Condition(function s__TrigVariables_CopyByEventId_26))
//end of: InitCopyByEventIdTrig("26")
//textmacro instance: InitCopyByEventIdTrigDouble("27","64")
                set s__s__TrigVariables_tCopyByEventId[27]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[27], Condition(function s__TrigVariables_CopyByEventId_27))
                set s__s__TrigVariables_tCopyByEventId[64]= s__s__TrigVariables_tCopyByEventId[27]
//end of: InitCopyByEventIdTrigDouble("27","64")
//textmacro instance: InitCopyByEventIdTrigDouble("28","65")
                set s__s__TrigVariables_tCopyByEventId[28]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[28], Condition(function s__TrigVariables_CopyByEventId_28))
                set s__s__TrigVariables_tCopyByEventId[65]= s__s__TrigVariables_tCopyByEventId[28]
//end of: InitCopyByEventIdTrigDouble("28","65")
//textmacro instance: InitCopyByEventIdTrigDouble("32","69")
                set s__s__TrigVariables_tCopyByEventId[32]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[32], Condition(function s__TrigVariables_CopyByEventId_32))
                set s__s__TrigVariables_tCopyByEventId[69]= s__s__TrigVariables_tCopyByEventId[32]
//end of: InitCopyByEventIdTrigDouble("32","69")
//textmacro instance: InitCopyByEventIdTrigDouble("33","70")
                set s__s__TrigVariables_tCopyByEventId[33]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[33], Condition(function s__TrigVariables_CopyByEventId_33))
                set s__s__TrigVariables_tCopyByEventId[70]= s__s__TrigVariables_tCopyByEventId[33]
//end of: InitCopyByEventIdTrigDouble("33","70")
//textmacro instance: InitCopyByEventIdTrigDouble("34","71")
                set s__s__TrigVariables_tCopyByEventId[34]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[34], Condition(function s__TrigVariables_CopyByEventId_34))
                set s__s__TrigVariables_tCopyByEventId[71]= s__s__TrigVariables_tCopyByEventId[34]
//end of: InitCopyByEventIdTrigDouble("34","71")
//textmacro instance: InitCopyByEventIdTrigDouble("35","72")
                set s__s__TrigVariables_tCopyByEventId[35]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[35], Condition(function s__TrigVariables_CopyByEventId_35))
                set s__s__TrigVariables_tCopyByEventId[72]= s__s__TrigVariables_tCopyByEventId[35]
//end of: InitCopyByEventIdTrigDouble("35","72")
//textmacro instance: InitCopyByEventIdTrigDouble("36","73")
                set s__s__TrigVariables_tCopyByEventId[36]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[36], Condition(function s__TrigVariables_CopyByEventId_36))
                set s__s__TrigVariables_tCopyByEventId[73]= s__s__TrigVariables_tCopyByEventId[36]
//end of: InitCopyByEventIdTrigDouble("36","73")
//textmacro instance: InitCopyByEventIdTrigDouble("37","74")
                set s__s__TrigVariables_tCopyByEventId[37]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[37], Condition(function s__TrigVariables_CopyByEventId_37))
                set s__s__TrigVariables_tCopyByEventId[74]= s__s__TrigVariables_tCopyByEventId[37]
//end of: InitCopyByEventIdTrigDouble("37","74")
//textmacro instance: InitCopyByEventIdTrigDouble("38","75")
                set s__s__TrigVariables_tCopyByEventId[38]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[38], Condition(function s__TrigVariables_CopyByEventId_38))
                set s__s__TrigVariables_tCopyByEventId[75]= s__s__TrigVariables_tCopyByEventId[38]
//end of: InitCopyByEventIdTrigDouble("38","75")
//textmacro instance: InitCopyByEventIdTrigDouble("39","76")
                set s__s__TrigVariables_tCopyByEventId[39]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[39], Condition(function s__TrigVariables_CopyByEventId_39))
                set s__s__TrigVariables_tCopyByEventId[76]= s__s__TrigVariables_tCopyByEventId[39]
//end of: InitCopyByEventIdTrigDouble("39","76")
//textmacro instance: InitCopyByEventIdTrigDouble("41","77")
                set s__s__TrigVariables_tCopyByEventId[41]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[41], Condition(function s__TrigVariables_CopyByEventId_41))
                set s__s__TrigVariables_tCopyByEventId[77]= s__s__TrigVariables_tCopyByEventId[41]
//end of: InitCopyByEventIdTrigDouble("41","77")
//textmacro instance: InitCopyByEventIdTrigDouble("40","78")
                set s__s__TrigVariables_tCopyByEventId[40]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[40], Condition(function s__TrigVariables_CopyByEventId_40))
                set s__s__TrigVariables_tCopyByEventId[78]= s__s__TrigVariables_tCopyByEventId[40]
//end of: InitCopyByEventIdTrigDouble("40","78")
//textmacro instance: InitCopyByEventIdTrigDouble("42","79")
                set s__s__TrigVariables_tCopyByEventId[42]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[42], Condition(function s__TrigVariables_CopyByEventId_42))
                set s__s__TrigVariables_tCopyByEventId[79]= s__s__TrigVariables_tCopyByEventId[42]
//end of: InitCopyByEventIdTrigDouble("42","79")
//textmacro instance: InitCopyByEventIdTrigDouble("43","80")
                set s__s__TrigVariables_tCopyByEventId[43]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[43], Condition(function s__TrigVariables_CopyByEventId_43))
                set s__s__TrigVariables_tCopyByEventId[80]= s__s__TrigVariables_tCopyByEventId[43]
//end of: InitCopyByEventIdTrigDouble("43","80")
//textmacro instance: InitCopyByEventIdTrigDouble("44","81")
                set s__s__TrigVariables_tCopyByEventId[44]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[44], Condition(function s__TrigVariables_CopyByEventId_44))
                set s__s__TrigVariables_tCopyByEventId[81]= s__s__TrigVariables_tCopyByEventId[44]
//end of: InitCopyByEventIdTrigDouble("44","81")
//textmacro instance: InitCopyByEventIdTrigDouble("45","82")
                set s__s__TrigVariables_tCopyByEventId[45]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[45], Condition(function s__TrigVariables_CopyByEventId_45))
                set s__s__TrigVariables_tCopyByEventId[82]= s__s__TrigVariables_tCopyByEventId[45]
//end of: InitCopyByEventIdTrigDouble("45","82")
//textmacro instance: InitCopyByEventIdTrigDouble("46","83")
                set s__s__TrigVariables_tCopyByEventId[46]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[46], Condition(function s__TrigVariables_CopyByEventId_46))
                set s__s__TrigVariables_tCopyByEventId[83]= s__s__TrigVariables_tCopyByEventId[46]
//end of: InitCopyByEventIdTrigDouble("46","83")
//textmacro instance: InitCopyByEventIdTrigDouble("47","84")
                set s__s__TrigVariables_tCopyByEventId[47]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[47], Condition(function s__TrigVariables_CopyByEventId_47))
                set s__s__TrigVariables_tCopyByEventId[84]= s__s__TrigVariables_tCopyByEventId[47]
//end of: InitCopyByEventIdTrigDouble("47","84")
//textmacro instance: InitCopyByEventIdTrigDouble("48","85")
                set s__s__TrigVariables_tCopyByEventId[48]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[48], Condition(function s__TrigVariables_CopyByEventId_48))
                set s__s__TrigVariables_tCopyByEventId[85]= s__s__TrigVariables_tCopyByEventId[48]
//end of: InitCopyByEventIdTrigDouble("48","85")
//textmacro instance: InitCopyByEventIdTrigDouble("49","86")
                set s__s__TrigVariables_tCopyByEventId[49]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[49], Condition(function s__TrigVariables_CopyByEventId_49))
                set s__s__TrigVariables_tCopyByEventId[86]= s__s__TrigVariables_tCopyByEventId[49]
//end of: InitCopyByEventIdTrigDouble("49","86")
//textmacro instance: InitCopyByEventIdTrigDouble("50","87")
                set s__s__TrigVariables_tCopyByEventId[50]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[50], Condition(function s__TrigVariables_CopyByEventId_50))
                set s__s__TrigVariables_tCopyByEventId[87]= s__s__TrigVariables_tCopyByEventId[50]
//end of: InitCopyByEventIdTrigDouble("50","87")
//textmacro instance: InitCopyByEventIdTrigDouble("51","88")
                set s__s__TrigVariables_tCopyByEventId[51]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[51], Condition(function s__TrigVariables_CopyByEventId_51))
                set s__s__TrigVariables_tCopyByEventId[88]= s__s__TrigVariables_tCopyByEventId[51]
//end of: InitCopyByEventIdTrigDouble("51","88")
//textmacro instance: InitCopyByEventIdTrigDouble("269","286")
                set s__s__TrigVariables_tCopyByEventId[269]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[269], Condition(function s__TrigVariables_CopyByEventId_269))
                set s__s__TrigVariables_tCopyByEventId[286]= s__s__TrigVariables_tCopyByEventId[269]
//end of: InitCopyByEventIdTrigDouble("269","286")
//textmacro instance: InitCopyByEventIdTrigDouble("270","287")
                set s__s__TrigVariables_tCopyByEventId[270]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[270], Condition(function s__TrigVariables_CopyByEventId_270))
                set s__s__TrigVariables_tCopyByEventId[287]= s__s__TrigVariables_tCopyByEventId[270]
//end of: InitCopyByEventIdTrigDouble("270","287")
//textmacro instance: InitCopyByEventIdTrigDouble("271","288")
                set s__s__TrigVariables_tCopyByEventId[271]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[271], Condition(function s__TrigVariables_CopyByEventId_271))
                set s__s__TrigVariables_tCopyByEventId[288]= s__s__TrigVariables_tCopyByEventId[271]
//end of: InitCopyByEventIdTrigDouble("271","288")
//textmacro instance: InitCopyByEventIdTrigDouble("277","294")
                set s__s__TrigVariables_tCopyByEventId[277]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[277], Condition(function s__TrigVariables_CopyByEventId_277))
                set s__s__TrigVariables_tCopyByEventId[294]= s__s__TrigVariables_tCopyByEventId[277]
//end of: InitCopyByEventIdTrigDouble("277","294")
//textmacro instance: InitCopyByEventIdTrig("52")
                set s__s__TrigVariables_tCopyByEventId[52]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[52], Condition(function s__TrigVariables_CopyByEventId_52))
//end of: InitCopyByEventIdTrig("52")
//textmacro instance: InitCopyByEventIdTrig("60")
                set s__s__TrigVariables_tCopyByEventId[60]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[60], Condition(function s__TrigVariables_CopyByEventId_60))
//end of: InitCopyByEventIdTrig("60")
//textmacro instance: InitCopyByEventIdTrig("61")
                set s__s__TrigVariables_tCopyByEventId[61]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[61], Condition(function s__TrigVariables_CopyByEventId_61))
//end of: InitCopyByEventIdTrig("61")
//textmacro instance: InitCopyByEventIdTrig("92")
                set s__s__TrigVariables_tCopyByEventId[92]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tCopyByEventId[92], Condition(function s__TrigVariables_CopyByEventId_92))
//end of: InitCopyByEventIdTrig("92")
        endfunction
        function s__TrigVariables_TPTTS_CopyByEventId__onInit takes nothing returns nothing
            //call ExecuteFunc("thistype.InitCopyByEventId")
            call s__TrigVariables_InitCopyByEventId()
        endfunction
        
//Implemented from module TPTTS_CopyVariables:
        //Already announced in CopyByEventId
        //thistype Body = 0
            
        
//textmacro instance: CopyVariables("player")
            function s__TrigVariables_CopyDataplayer2 takes nothing returns boolean
                local integer this= s__TrigVariables_Copy
                local integer i
                local integer k
                if s__TrigVariables_lastSetplayer[s__TrigVariables_Body] == - 1 then
                    return false
                endif
                set i=s__TrigVariables_lastSetplayer[s__TrigVariables_Body]
                loop
                    exitwhen i == - 1
                    call s__TrigVariables_Setplayer(this,i , (LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, ((s__TrigVariables_Body )) * s__TrigVariables_arraySize + (( i))))) // INLINED!!
                    set i=(LoadInteger(s__TrigVariables_HashMain, 0, ((s__TrigVariables_Body)) * s__TrigVariables_offsetSize + s__TrigVariables_offsetplayer + (i) + 2) - 2) // INLINED!!
                endloop

                return false
            endfunction
                
            function s__TrigVariables_CopyDataplayer takes boolean bb returns boolean
                call ForForce(bj_FORCE_PLAYER[0], function s__TrigVariables_CopyDataplayer2)
                return false
            endfunction
//end of: CopyVariables("player")
//textmacro instance: CopyVariables("force")
            function s__TrigVariables_CopyDataforce2 takes nothing returns boolean
                local integer this= s__TrigVariables_Copy
                local integer i
                local integer k
                if s__TrigVariables_lastSetforce[s__TrigVariables_Body] == - 1 then
                    return false
                endif
                set i=s__TrigVariables_lastSetforce[s__TrigVariables_Body]
                loop
                    exitwhen i == - 1
                    call s__TrigVariables_Setforce(this,i , (LoadForceHandle(s__TrigVariables_Hashforce, 0, ((s__TrigVariables_Body )) * s__TrigVariables_arraySize + (( i))))) // INLINED!!
                    set i=(LoadInteger(s__TrigVariables_HashMain, 0, ((s__TrigVariables_Body)) * s__TrigVariables_offsetSize + s__TrigVariables_offsetforce + (i) + 2) - 2) // INLINED!!
                endloop

                return false
            endfunction
                
            function s__TrigVariables_CopyDataforce takes boolean bb returns boolean
                call ForForce(bj_FORCE_PLAYER[0], function s__TrigVariables_CopyDataforce2)
                return false
            endfunction
//end of: CopyVariables("force")
//textmacro instance: CopyVariables("group")
            function s__TrigVariables_CopyDatagroup2 takes nothing returns boolean
                local integer this= s__TrigVariables_Copy
                local integer i
                local integer k
                if s__TrigVariables_lastSetgroup[s__TrigVariables_Body] == - 1 then
                    return false
                endif
                set i=s__TrigVariables_lastSetgroup[s__TrigVariables_Body]
                loop
                    exitwhen i == - 1
                    call s__TrigVariables_Setgroup(this,i , (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, ((s__TrigVariables_Body )) * s__TrigVariables_arraySize + (( i))))) // INLINED!!
                    set i=(LoadInteger(s__TrigVariables_HashMain, 0, ((s__TrigVariables_Body)) * s__TrigVariables_offsetSize + s__TrigVariables_offsetgroup + (i) + 2) - 2) // INLINED!!
                endloop

                return false
            endfunction
                
            function s__TrigVariables_CopyDatagroup takes boolean bb returns boolean
                call ForForce(bj_FORCE_PLAYER[0], function s__TrigVariables_CopyDatagroup2)
                return false
            endfunction
//end of: CopyVariables("group")
//textmacro instance: CopyVariables("item")
            function s__TrigVariables_CopyDataitem2 takes nothing returns boolean
                local integer this= s__TrigVariables_Copy
                local integer i
                local integer k
                if s__TrigVariables_lastSetitem[s__TrigVariables_Body] == - 1 then
                    return false
                endif
                set i=s__TrigVariables_lastSetitem[s__TrigVariables_Body]
                loop
                    exitwhen i == - 1
                    call s__TrigVariables_Setitem(this,i , (LoadItemHandle(s__TrigVariables_Hashitem, 0, ((s__TrigVariables_Body )) * s__TrigVariables_arraySize + (( i))))) // INLINED!!
                    set i=(LoadInteger(s__TrigVariables_HashMain, 0, ((s__TrigVariables_Body)) * s__TrigVariables_offsetSize + s__TrigVariables_offsetitem + (i) + 2) - 2) // INLINED!!
                endloop

                return false
            endfunction
                
            function s__TrigVariables_CopyDataitem takes boolean bb returns boolean
                call ForForce(bj_FORCE_PLAYER[0], function s__TrigVariables_CopyDataitem2)
                return false
            endfunction
//end of: CopyVariables("item")
//textmacro instance: CopyVariables("effect")
            function s__TrigVariables_CopyDataeffect2 takes nothing returns boolean
                local integer this= s__TrigVariables_Copy
                local integer i
                local integer k
                if s__TrigVariables_lastSeteffect[s__TrigVariables_Body] == - 1 then
                    return false
                endif
                set i=s__TrigVariables_lastSeteffect[s__TrigVariables_Body]
                loop
                    exitwhen i == - 1
                    call s__TrigVariables_Seteffect(this,i , (LoadEffectHandle(s__TrigVariables_Hasheffect, 0, ((s__TrigVariables_Body )) * s__TrigVariables_arraySize + (( i))))) // INLINED!!
                    set i=(LoadInteger(s__TrigVariables_HashMain, 0, ((s__TrigVariables_Body)) * s__TrigVariables_offsetSize + s__TrigVariables_offseteffect + (i) + 2) - 2) // INLINED!!
                endloop

                return false
            endfunction
                
            function s__TrigVariables_CopyDataeffect takes boolean bb returns boolean
                call ForForce(bj_FORCE_PLAYER[0], function s__TrigVariables_CopyDataeffect2)
                return false
            endfunction
//end of: CopyVariables("effect")
//textmacro instance: CopyVariables("timer")
            function s__TrigVariables_CopyDatatimer2 takes nothing returns boolean
                local integer this= s__TrigVariables_Copy
                local integer i
                local integer k
                if s__TrigVariables_lastSettimer[s__TrigVariables_Body] == - 1 then
                    return false
                endif
                set i=s__TrigVariables_lastSettimer[s__TrigVariables_Body]
                loop
                    exitwhen i == - 1
                    call s__TrigVariables_Settimer(this,i , (LoadTimerHandle(s__TrigVariables_Hashtimer, 0, ((s__TrigVariables_Body )) * s__TrigVariables_arraySize + (( i))))) // INLINED!!
                    set i=(LoadInteger(s__TrigVariables_HashMain, 0, ((s__TrigVariables_Body)) * s__TrigVariables_offsetSize + s__TrigVariables_offsettimer + (i) + 2) - 2) // INLINED!!
                endloop

                return false
            endfunction
                
            function s__TrigVariables_CopyDatatimer takes boolean bb returns boolean
                call ForForce(bj_FORCE_PLAYER[0], function s__TrigVariables_CopyDatatimer2)
                return false
            endfunction
//end of: CopyVariables("timer")
//textmacro instance: CopyVariables("unit")
            function s__TrigVariables_CopyDataunit2 takes nothing returns boolean
                local integer this= s__TrigVariables_Copy
                local integer i
                local integer k
                if s__TrigVariables_lastSetunit[s__TrigVariables_Body] == - 1 then
                    return false
                endif
                set i=s__TrigVariables_lastSetunit[s__TrigVariables_Body]
                loop
                    exitwhen i == - 1
                    call s__TrigVariables_Setunit(this,i , (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((s__TrigVariables_Body )) * s__TrigVariables_arraySize + (( i))))) // INLINED!!
                    set i=(LoadInteger(s__TrigVariables_HashMain, 0, ((s__TrigVariables_Body)) * s__TrigVariables_offsetSize + s__TrigVariables_offsetunit + (i) + 2) - 2) // INLINED!!
                endloop

                return false
            endfunction
                
            function s__TrigVariables_CopyDataunit takes boolean bb returns boolean
                call ForForce(bj_FORCE_PLAYER[0], function s__TrigVariables_CopyDataunit2)
                return false
            endfunction
//end of: CopyVariables("unit")
//textmacro instance: CopyVariables("location")
            function s__TrigVariables_CopyDatalocation2 takes nothing returns boolean
                local integer this= s__TrigVariables_Copy
                local integer i
                local integer k
                if s__TrigVariables_lastSetlocation[s__TrigVariables_Body] == - 1 then
                    return false
                endif
                set i=s__TrigVariables_lastSetlocation[s__TrigVariables_Body]
                loop
                    exitwhen i == - 1
                    call s__TrigVariables_Setlocation(this,i , (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((s__TrigVariables_Body )) * s__TrigVariables_arraySize + (( i))))) // INLINED!!
                    set i=(LoadInteger(s__TrigVariables_HashMain, 0, ((s__TrigVariables_Body)) * s__TrigVariables_offsetSize + s__TrigVariables_offsetlocation + (i) + 2) - 2) // INLINED!!
                endloop

                return false
            endfunction
                
            function s__TrigVariables_CopyDatalocation takes boolean bb returns boolean
                call ForForce(bj_FORCE_PLAYER[0], function s__TrigVariables_CopyDatalocation2)
                return false
            endfunction
//end of: CopyVariables("location")
//textmacro instance: CopyVariables("lightning")
            function s__TrigVariables_CopyDatalightning2 takes nothing returns boolean
                local integer this= s__TrigVariables_Copy
                local integer i
                local integer k
                if s__TrigVariables_lastSetlightning[s__TrigVariables_Body] == - 1 then
                    return false
                endif
                set i=s__TrigVariables_lastSetlightning[s__TrigVariables_Body]
                loop
                    exitwhen i == - 1
                    call s__TrigVariables_Setlightning(this,i , (LoadLightningHandle(s__TrigVariables_Hashlightning, 0, ((s__TrigVariables_Body )) * s__TrigVariables_arraySize + (( i))))) // INLINED!!
                    set i=(LoadInteger(s__TrigVariables_HashMain, 0, ((s__TrigVariables_Body)) * s__TrigVariables_offsetSize + s__TrigVariables_offsetlightning + (i) + 2) - 2) // INLINED!!
                endloop

                return false
            endfunction
                
            function s__TrigVariables_CopyDatalightning takes boolean bb returns boolean
                call ForForce(bj_FORCE_PLAYER[0], function s__TrigVariables_CopyDatalightning2)
                return false
            endfunction
//end of: CopyVariables("lightning")
//textmacro instance: CopyVariables("integer")
            function s__TrigVariables_CopyDatainteger2 takes nothing returns boolean
                local integer this= s__TrigVariables_Copy
                local integer i
                local integer k
                if s__TrigVariables_lastSetinteger[s__TrigVariables_Body] == - 1 then
                    return false
                endif
                set i=s__TrigVariables_lastSetinteger[s__TrigVariables_Body]
                loop
                    exitwhen i == - 1
                    call s__TrigVariables_Setinteger(this,i , (LoadInteger(s__TrigVariables_Hashinteger, 0, ((s__TrigVariables_Body )) * s__TrigVariables_arraySize + (( i))))) // INLINED!!
                    set i=(LoadInteger(s__TrigVariables_HashMain, 0, ((s__TrigVariables_Body)) * s__TrigVariables_offsetSize + s__TrigVariables_offsetinteger + (i) + 2) - 2) // INLINED!!
                endloop

                return false
            endfunction
                
            function s__TrigVariables_CopyDatainteger takes boolean bb returns boolean
                call ForForce(bj_FORCE_PLAYER[0], function s__TrigVariables_CopyDatainteger2)
                return false
            endfunction
//end of: CopyVariables("integer")
//textmacro instance: CopyVariables("real")
            function s__TrigVariables_CopyDatareal2 takes nothing returns boolean
                local integer this= s__TrigVariables_Copy
                local integer i
                local integer k
                if s__TrigVariables_lastSetreal[s__TrigVariables_Body] == - 1 then
                    return false
                endif
                set i=s__TrigVariables_lastSetreal[s__TrigVariables_Body]
                loop
                    exitwhen i == - 1
                    call s__TrigVariables_Setreal(this,i , (LoadReal(s__TrigVariables_Hashreal, 0, ((s__TrigVariables_Body )) * s__TrigVariables_arraySize + (( i))))) // INLINED!!
                    set i=(LoadInteger(s__TrigVariables_HashMain, 0, ((s__TrigVariables_Body)) * s__TrigVariables_offsetSize + s__TrigVariables_offsetreal + (i) + 2) - 2) // INLINED!!
                endloop

                return false
            endfunction
                
            function s__TrigVariables_CopyDatareal takes boolean bb returns boolean
                call ForForce(bj_FORCE_PLAYER[0], function s__TrigVariables_CopyDatareal2)
                return false
            endfunction
//end of: CopyVariables("real")
//textmacro instance: CopyVariables("boolean")
            function s__TrigVariables_CopyDataboolean2 takes nothing returns boolean
                local integer this= s__TrigVariables_Copy
                local integer i
                local integer k
                if s__TrigVariables_lastSetboolean[s__TrigVariables_Body] == - 1 then
                    return false
                endif
                set i=s__TrigVariables_lastSetboolean[s__TrigVariables_Body]
                loop
                    exitwhen i == - 1
                    call s__TrigVariables_Setboolean(this,i , (LoadBoolean(s__TrigVariables_Hashboolean, 0, ((s__TrigVariables_Body )) * s__TrigVariables_arraySize + (( i))))) // INLINED!!
                    set i=(LoadInteger(s__TrigVariables_HashMain, 0, ((s__TrigVariables_Body)) * s__TrigVariables_offsetSize + s__TrigVariables_offsetboolean + (i) + 2) - 2) // INLINED!!
                endloop

                return false
            endfunction
                
            function s__TrigVariables_CopyDataboolean takes boolean bb returns boolean
                call ForForce(bj_FORCE_PLAYER[0], function s__TrigVariables_CopyDataboolean2)
                return false
            endfunction
//end of: CopyVariables("boolean")
//textmacro instance: CopyVariables("texttag")
            function s__TrigVariables_CopyDatatexttag2 takes nothing returns boolean
                local integer this= s__TrigVariables_Copy
                local integer i
                local integer k
                if s__TrigVariables_lastSettexttag[s__TrigVariables_Body] == - 1 then
                    return false
                endif
                set i=s__TrigVariables_lastSettexttag[s__TrigVariables_Body]
                loop
                    exitwhen i == - 1
                    call s__TrigVariables_Settexttag(this,i , (LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, ((s__TrigVariables_Body )) * s__TrigVariables_arraySize + (( i))))) // INLINED!!
                    set i=(LoadInteger(s__TrigVariables_HashMain, 0, ((s__TrigVariables_Body)) * s__TrigVariables_offsetSize + s__TrigVariables_offsettexttag + (i) + 2) - 2) // INLINED!!
                endloop

                return false
            endfunction
                
            function s__TrigVariables_CopyDatatexttag takes boolean bb returns boolean
                call ForForce(bj_FORCE_PLAYER[0], function s__TrigVariables_CopyDatatexttag2)
                return false
            endfunction
//end of: CopyVariables("texttag")
//textmacro instance: CopyVariables("string")
            function s__TrigVariables_CopyDatastring2 takes nothing returns boolean
                local integer this= s__TrigVariables_Copy
                local integer i
                local integer k
                if s__TrigVariables_lastSetstring[s__TrigVariables_Body] == - 1 then
                    return false
                endif
                set i=s__TrigVariables_lastSetstring[s__TrigVariables_Body]
                loop
                    exitwhen i == - 1
                    call s__TrigVariables_Setstring(this,i , (LoadStr(s__TrigVariables_Hashstring, 0, ((s__TrigVariables_Body )) * s__TrigVariables_arraySize + (( i))))) // INLINED!!
                    set i=(LoadInteger(s__TrigVariables_HashMain, 0, ((s__TrigVariables_Body)) * s__TrigVariables_offsetSize + s__TrigVariables_offsetstring + (i) + 2) - 2) // INLINED!!
                endloop

                return false
            endfunction
                
            function s__TrigVariables_CopyDatastring takes boolean bb returns boolean
                call ForForce(bj_FORCE_PLAYER[0], function s__TrigVariables_CopyDatastring2)
                return false
            endfunction
//end of: CopyVariables("string")
        
        function s__TrigVariables_CopyDataAll takes integer this,boolean bb returns boolean
            call s__TrigVariables_CopyDataplayer(false)
            call s__TrigVariables_CopyDataforce(false)
            call s__TrigVariables_CopyDatagroup(false)
            call s__TrigVariables_CopyDataitem(false)
            call s__TrigVariables_CopyDataeffect(false)
            call s__TrigVariables_CopyDatatimer(false)
            call s__TrigVariables_CopyDataunit(false)
            call s__TrigVariables_CopyDatalocation(false)
            call s__TrigVariables_CopyDatalightning(false)
            call s__TrigVariables_CopyDatainteger(false)
            call s__TrigVariables_CopyDatareal(false)
            call s__TrigVariables_CopyDataboolean(false)
            call s__TrigVariables_CopyDatatexttag(false)
            call s__TrigVariables_CopyDatastring(false)
            call s__TrigVariables_CopyDataByEventId(false)
            return false
        endfunction
        
        
        function s__TrigVariables_CopyCreate takes integer this returns boolean
            local integer temp= GlobalTV
            if s__TrigVariables_Copy != 0 then
                call s__TrigVariables_Flush(s__TrigVariables_Copy)
            endif
            set s__TrigVariables_Copy=s__TrigVariables_SettingVariables()
            set GlobalTV=temp
            set Wait=GlobalTV
            set s__TrigVariables_Body=this
            return false
        endfunction
        function s__TrigVariables_CopyDataOptions takes boolean bb returns nothing
        endfunction
        function s__TrigVariables_CopyExecuteTrigger takes integer this,trigger tTemp returns nothing
            local integer temp
            if s__TrigVariables_Copy == 0 then
                return
            endif
            set temp=GlobalTV
            set GlobalTV=s__TrigVariables_Copy
            set Wait=GlobalTV
            set s__TrigVariables_CurrentTrigger[GlobalTV]=tTemp
            //call TriggerExecute(tTemp)
            call s__TrigVariables_ExecuteTrigger(GlobalTV)
            set s__TrigVariables_Copy=0
            set GlobalTV=temp
            set Wait=GlobalTV
            set s__TrigVariables_ThroughTimer=true
        endfunction
        
//Implemented from module TPTTS_EmptyTrigVars:
        //static thistype HiEveryone = 0
        //Already announced
            

        function s__TrigVariables_EmptyTrigVars_0 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        //if EVENT == EVENT_GAME_VICTORY then
            set s__TrigVariables_WinningPlayer[this]=null //GetTriggerPlayer()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_4 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        //elseif EVENT == EVENT_GAME_TIMER_EXPIRED then
            set s__TrigVariables_ExpiredTimer[this]=null //GetExpiredTimer()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_5 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        //elseif EVENT == EVENT_GAME_ENTER_REGION then
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
            set s__TrigVariables_TriggeringRegion[this]=null //GetTriggeringRegion()
            set s__TrigVariables_EnteringUnit[this]=null //GetEnteringUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_6 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        //elseif EVENT == EVENT_GAME_LEAVE_REGION then
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
            set s__TrigVariables_TriggeringRegion[this]=null //GetTriggeringRegion()
            set s__TrigVariables_LeavingUnit[this]=null //GetLeavingUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_3 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        //elseif EVENT == EVENT_PLAYER_STATE_LIMIT then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_EventPlayerState[this]=null //GetEventPlayerState()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_G2 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        
        //elseif EVENT == EVENT_PLAYER_ALLIANCE_CHANGED   or/*
        //*/ EVENT == EVENT_PLAYER_DEFEAT             or/*
        //*/ EVENT == EVENT_PLAYER_VICTORY            or/*
        //*/ EVENT == EVENT_PLAYER_LEAVE              or/*
        //*/ EVENT == EVENT_PLAYER_END_CINEMATIC      then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_16 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        //elseif EVENT == EVENT_PLAYER_CHAT then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_EventPlayerChatString[this]=null //GetEventPlayerChatString()
            set s__TrigVariables_EventPlayerChatStringMatched[this]=null //GetEventPlayerChatStringMatched()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_G1 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        
        
        
            ///! runtextmacro EVENT_COMPARE_UNIT_Empty("HIDDEN")
            ///! runtextmacro EVENT_COMPARE_UNIT_Empty("SELECTED")
            ///! runtextmacro EVENT_COMPARE_UNIT_Empty("DESELECTED")
            ///! runtextmacro EVENT_COMPARE_UNIT_Empty("UPGRADE_START")
            ///! runtextmacro EVENT_COMPARE_UNIT_Empty("UPGRADE_CANCEL")
            ///! runtextmacro EVENT_COMPARE_UNIT_Empty("UPGRADE_FINISH")
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_18 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("ATTACKED")
            //elseif EVENT == EVENT_PLAYER_UNIT_ATTACKED or EVENT == EVENT_UNIT_ATTACKED then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("ATTACKED")
            set s__TrigVariables_Attacker[this]=null //GetAttacker()
            set s__TrigVariables_AttackedUnit[this]=null //GetTriggerUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_19 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("RESCUED")
            //elseif EVENT == EVENT_PLAYER_UNIT_RESCUED or EVENT == EVENT_UNIT_RESCUED then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("RESCUED")
            set s__TrigVariables_Rescuer[this]=null //GetRescuer()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_20 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("DEATH")
            //elseif EVENT == EVENT_PLAYER_UNIT_DEATH or EVENT == EVENT_UNIT_DEATH then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("DEATH")
            set s__TrigVariables_KillingUnit[this]=null //GetKillingUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_21 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("DECAY")
            //elseif EVENT == EVENT_PLAYER_UNIT_DECAY or EVENT == EVENT_UNIT_DECAY then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("DECAY")
            set s__TrigVariables_DecayingUnit[this]=null //GetDecayingUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_22 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("DETECTED")
            //elseif EVENT == EVENT_PLAYER_UNIT_DETECTED or EVENT == EVENT_UNIT_DETECTED then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("DETECTED")
            set s__TrigVariables_DetectedUnit[this]=null //GetDetectedUnit()
            set s__TrigVariables_EventDetectingPlayer[this]=null //GetEventDetectingPlayer()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_26 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
            //elseif EVENT == EVENT_PLAYER_UNIT_CONSTRUCT_START then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
            set s__TrigVariables_ConstructingStructure[this]=null //GetConstructingStructure()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_27 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("CONSTRUCT_CANCEL")
            //elseif EVENT == EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL or EVENT == EVENT_UNIT_CONSTRUCT_CANCEL then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("CONSTRUCT_CANCEL")
            set s__TrigVariables_CancelledStructure[this]=null //GetCancelledStructure()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_28 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("CONSTRUCT_FINISH")
            //elseif EVENT == EVENT_PLAYER_UNIT_CONSTRUCT_FINISH or EVENT == EVENT_UNIT_CONSTRUCT_FINISH then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("CONSTRUCT_FINISH")
            set s__TrigVariables_ConstructedStructure[this]=null //GetConstructedStructure()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_32 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("TRAIN_START")
            //elseif EVENT == EVENT_PLAYER_UNIT_TRAIN_START or EVENT == EVENT_UNIT_TRAIN_START then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("TRAIN_START")
            set s__TrigVariables_TrainedUnitType[this]=0 //GetTrainedUnitType()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_33 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("TRAIN_CANCEL")
            //elseif EVENT == EVENT_PLAYER_UNIT_TRAIN_CANCEL or EVENT == EVENT_UNIT_TRAIN_CANCEL then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("TRAIN_CANCEL")
            set s__TrigVariables_TrainedUnitType[this]=0 //GetTrainedUnitType()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_34 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("TRAIN_FINISH")
            //elseif EVENT == EVENT_PLAYER_UNIT_TRAIN_FINISH or EVENT == EVENT_UNIT_TRAIN_FINISH then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("TRAIN_FINISH")
            set s__TrigVariables_TrainedUnit[this]=null //GetTrainedUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_35 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("RESEARCH_START")
            //elseif EVENT == EVENT_PLAYER_UNIT_RESEARCH_START or EVENT == EVENT_UNIT_RESEARCH_START then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("RESEARCH_START")
            set s__TrigVariables_Researched[this]=0 //GetResearched()
            set s__TrigVariables_ResearchingUnit[this]=null //GetResearchingUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_36 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("RESEARCH_CANCEL")
            //elseif EVENT == EVENT_PLAYER_UNIT_RESEARCH_CANCEL or EVENT == EVENT_UNIT_RESEARCH_CANCEL then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("RESEARCH_CANCEL")
            set s__TrigVariables_Researched[this]=0 //GetResearched()
            set s__TrigVariables_ResearchingUnit[this]=null //GetResearchingUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_37 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("RESEARCH_FINISH")
            //elseif EVENT == EVENT_PLAYER_UNIT_RESEARCH_FINISH or EVENT == EVENT_UNIT_RESEARCH_FINISH then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("RESEARCH_FINISH")
            set s__TrigVariables_Researched[this]=0 //GetResearched()
            set s__TrigVariables_ResearchingUnit[this]=null //GetResearchingUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_38 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("ISSUED_ORDER")
            //elseif EVENT == EVENT_PLAYER_UNIT_ISSUED_ORDER or EVENT == EVENT_UNIT_ISSUED_ORDER then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("ISSUED_ORDER")
            set s__TrigVariables_IssuedOrderId[this]=0 //GetIssuedOrderId()
            set s__TrigVariables_OrderedUnit[this]=null //GetOrderedUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_39 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("ISSUED_POINT_ORDER")
            //elseif EVENT == EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER or EVENT == EVENT_UNIT_ISSUED_POINT_ORDER then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("ISSUED_POINT_ORDER")
            set s__TrigVariables_IssuedOrderId[this]=0 //GetIssuedOrderId()
            set s__TrigVariables_OrderPointX[this]=0. //GetOrderPointX()
            set s__TrigVariables_OrderPointY[this]=0. //GetOrderPointY()
            set s__TrigVariables_OrderedUnit[this]=null //GetOrderedUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_40 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("ISSUED_TARGET_ORDER")
            //elseif EVENT == EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER or EVENT == EVENT_UNIT_ISSUED_TARGET_ORDER then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("ISSUED_TARGET_ORDER")
            set s__TrigVariables_IssuedOrderId[this]=0 //GetIssuedOrderId()
            //set OrderTarget            = null//GetOrderTarget()
            set s__TrigVariables_OrderedUnit[this]=null //GetOrderedUnit()
            set s__TrigVariables_OrderTargetUnit[this]=null //GetOrderTargetUnit()
            set s__TrigVariables_OrderTargetDestructable[this]=null //GetOrderTargetDestructable()
            set s__TrigVariables_OrderTargetItem[this]=null //GetOrderTargetItem()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_47 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("SUMMON")
            //elseif EVENT == EVENT_PLAYER_UNIT_SUMMON or EVENT == EVENT_UNIT_SUMMON then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("SUMMON")
            set s__TrigVariables_SummonedUnit[this]=null //GetSummonedUnit()
            set s__TrigVariables_SummoningUnit[this]=null //GetSummoningUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_48 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("DROP_ITEM")
            //elseif EVENT == EVENT_PLAYER_UNIT_DROP_ITEM or EVENT == EVENT_UNIT_DROP_ITEM then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("DROP_ITEM")
            set s__TrigVariables_ManipulatedItem[this]=null //GetManipulatedItem()
            set s__TrigVariables_ManipulatingUnit[this]=null //GetManipulatingUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_49 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("PICKUP_ITEM")
            //elseif EVENT == EVENT_PLAYER_UNIT_PICKUP_ITEM or EVENT == EVENT_UNIT_PICKUP_ITEM then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("PICKUP_ITEM")
            set s__TrigVariables_ManipulatedItem[this]=null //GetManipulatedItem()
            set s__TrigVariables_ManipulatingUnit[this]=null //GetManipulatingUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_50 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("USE_ITEM")
            //elseif EVENT == EVENT_PLAYER_UNIT_USE_ITEM or EVENT == EVENT_UNIT_USE_ITEM then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("USE_ITEM")
            set s__TrigVariables_ManipulatedItem[this]=null //GetManipulatedItem()
            set s__TrigVariables_ManipulatingUnit[this]=null //GetManipulatingUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_277 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("USE_ITEM")
            //elseif EVENT == EVENT_PLAYER_UNIT_USE_ITEM or EVENT == EVENT_UNIT_USE_ITEM then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("USE_ITEM")
            set s__TrigVariables_ManipulatedItem[this]=null //GetManipulatedItem()
            set s__TrigVariables_ManipulatingUnit[this]=null //GetManipulatingUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_51 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("LOADED")
            //elseif EVENT == EVENT_PLAYER_UNIT_LOADED or EVENT == EVENT_UNIT_LOADED then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("LOADED")
            set s__TrigVariables_LoadedUnit[this]=null //GetLoadedUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_41 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
            
//textmacro instance: EVENT_COMPARE_HERO_Empty("LEVEL")
            //elseif EVENT == EVENT_PLAYER_HERO_LEVEL or EVENT == EVENT_UNIT_HERO_LEVEL then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_HERO_Empty("LEVEL")
            set s__TrigVariables_LevelingUnit[this]=null //GetLevelingUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_42 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_HERO_Empty("SKILL")
            //elseif EVENT == EVENT_PLAYER_HERO_SKILL or EVENT == EVENT_UNIT_HERO_SKILL then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_HERO_Empty("SKILL")
            set s__TrigVariables_LearnedSkill[this]=0 //GetLearnedSkill()
            set s__TrigVariables_LearnedSkillLevel[this]=0 //GetLearnedSkillLevel()
            set s__TrigVariables_LearningUnit[this]=null //GetLearningUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_43 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_HERO_Empty("REVIVABLE")
            //elseif EVENT == EVENT_PLAYER_HERO_REVIVABLE or EVENT == EVENT_UNIT_HERO_REVIVABLE then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_HERO_Empty("REVIVABLE")
            set s__TrigVariables_RevivableUnit[this]=null //GetRevivableUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_44 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_HERO_Empty("REVIVE_START")
            //elseif EVENT == EVENT_PLAYER_HERO_REVIVE_START or EVENT == EVENT_UNIT_HERO_REVIVE_START then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_HERO_Empty("REVIVE_START")
            set s__TrigVariables_RevivingUnit[this]=null //GetRevivingUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_45 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_HERO_Empty("REVIVE_CANCEL")
            //elseif EVENT == EVENT_PLAYER_HERO_REVIVE_CANCEL or EVENT == EVENT_UNIT_HERO_REVIVE_CANCEL then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_HERO_Empty("REVIVE_CANCEL")
            set s__TrigVariables_RevivingUnit[this]=null //GetRevivingUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_46 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_HERO_Empty("REVIVE_FINISH")
            //elseif EVENT == EVENT_PLAYER_HERO_REVIVE_FINISH or EVENT == EVENT_UNIT_HERO_REVIVE_FINISH then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_HERO_Empty("REVIVE_FINISH")
            set s__TrigVariables_RevivingUnit[this]=null //GetRevivingUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_52 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        //elseif EVENT == EVENT_UNIT_DAMAGED then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
            set s__TrigVariables_EventDamage[this]=0. //GetEventDamage()
            set s__TrigVariables_EventDamageSource[this]=null //GetEventDamageSource()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_60 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        //elseif EVENT == EVENT_UNIT_ACQUIRED_TARGET then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
            set s__TrigVariables_EventTargetUnit[this]=null //GetEventTargetUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_61 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        //elseif EVENT == EVENT_UNIT_TARGET_IN_RANGE then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_92 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        //elseif EVENT == EVENT_DIALOG_BUTTON_CLICK then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_ClickedButton[this]=null //GetClickedButton()
            set s__TrigVariables_ClickedDialog[this]=null //GetClickedDialog()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_G3 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        
        
        
        //elseif EVENT == EVENT_UNIT_SPELL_CHANNEL        or /*
        //*/ EVENT == EVENT_UNIT_SPELL_CAST           or /*
        //*/ EVENT == EVENT_UNIT_SPELL_EFFECT         or /*
        //*/ EVENT == EVENT_UNIT_SPELL_FINISH         or /*
        //*/ EVENT == EVENT_UNIT_SPELL_ENDCAST        or /*
        //*/ EVENT == EVENT_PLAYER_UNIT_SPELL_CHANNEL or /*
        //*/ EVENT == EVENT_PLAYER_UNIT_SPELL_CAST    or /*
        //*/ EVENT == EVENT_PLAYER_UNIT_SPELL_EFFECT  or /*
        //*/ EVENT == EVENT_PLAYER_UNIT_SPELL_FINISH  or /*
        //*/ EVENT == EVENT_PLAYER_UNIT_SPELL_ENDCAST then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
            set s__TrigVariables_SpellAbilityUnit[this]=null //GetSpellAbilityUnit()
            set s__TrigVariables_SpellAbilityId[this]=0 //GetSpellAbilityId()
            set s__TrigVariables_SpellTargetX[this]=0. //GetSpellTargetX()
            set s__TrigVariables_SpellTargetY[this]=0. //GetSpellTargetY()
            set s__TrigVariables_SpellTargetDestructable[this]=null //GetSpellTargetDestructable()
            set s__TrigVariables_SpellTargetItem[this]=null //GetSpellTargetItem()
            set s__TrigVariables_SpellTargetUnit[this]=null //GetSpellTargetUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_G4 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
        
        
        //elseif EVENT == EVENT_PLAYER_ARROW_LEFT_DOWN  or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_LEFT_UP    or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_RIGHT_DOWN or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_RIGHT_UP   or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_DOWN_DOWN  or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_DOWN_UP    or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_UP_DOWN    or /*
        //*/ EVENT == EVENT_PLAYER_ARROW_UP_UP      then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_270 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("CHANGE_OWNER")
            //elseif EVENT == EVENT_PLAYER_UNIT_CHANGE_OWNER or EVENT == EVENT_UNIT_CHANGE_OWNER then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("CHANGE_OWNER")
            set s__TrigVariables_ChangingUnitPrevOwner[this]=null //GetChangingUnitPrevOwner()
            set s__TrigVariables_ChangingUnit[this]=null //GetChangingUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_269 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("SELL")
            //elseif EVENT == EVENT_PLAYER_UNIT_SELL or EVENT == EVENT_UNIT_SELL then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("SELL")
            set s__TrigVariables_SellingUnit[this]=null //GetSellingUnit()
            set s__TrigVariables_SoldUnit[this]=null //GetSoldUnit()
            set s__TrigVariables_BuyingUnit[this]=null //GetBuyingUnit()
            return false
        endfunction
        function s__TrigVariables_EmptyTrigVars_271 takes nothing returns boolean
            local integer this= s__TrigVariables_HiEveryone
//textmacro instance: EVENT_COMPARE_UNIT_Empty("SELL_ITEM")
            //elseif EVENT == EVENT_PLAYER_UNIT_SELL_ITEM or EVENT == EVENT_UNIT_SELL_ITEM then
            set s__TrigVariables_TriggerPlayer[this]=null //GetTriggerPlayer()
            set s__TrigVariables_TriggerUnit[this]=null //GetTriggerUnit()
//end of: EVENT_COMPARE_UNIT_Empty("SELL_ITEM")
            set s__TrigVariables_SoldItem[this]=null //GetSoldItem()
            return false
        endfunction
        
        //Announced already by CopyByEventId
        //static constant integer G1 = 295
        //static constant integer G2 = 296
        //static constant integer G3 = 297
        //static constant integer G4 = 298
        function s__TrigVariables_InitEmptyTrigVars takes nothing returns nothing
            
//textmacro instance: InitEmptyTrigVarsTrig("G1")
                set s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G1]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G1], Condition(function s__TrigVariables_EmptyTrigVars_G1))
//end of: InitEmptyTrigVarsTrig("G1")
            set s__s__TrigVariables_tEmptyTrigVars[23]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G1]
            set s__s__TrigVariables_tEmptyTrigVars[24]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G1]
            set s__s__TrigVariables_tEmptyTrigVars[25]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G1]
            set s__s__TrigVariables_tEmptyTrigVars[29]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G1]
            set s__s__TrigVariables_tEmptyTrigVars[30]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G1]
            set s__s__TrigVariables_tEmptyTrigVars[31]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G1]
            set s__s__TrigVariables_tEmptyTrigVars[66]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G1]
            set s__s__TrigVariables_tEmptyTrigVars[67]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G1]
            set s__s__TrigVariables_tEmptyTrigVars[78]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G1]
//textmacro instance: InitEmptyTrigVarsTrig("G2")
                set s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G2]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G2], Condition(function s__TrigVariables_EmptyTrigVars_G2))
//end of: InitEmptyTrigVarsTrig("G2")
            set s__s__TrigVariables_tEmptyTrigVars[13]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G2]
            set s__s__TrigVariables_tEmptyTrigVars[14]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G2]
            set s__s__TrigVariables_tEmptyTrigVars[15]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G2]
            set s__s__TrigVariables_tEmptyTrigVars[17]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G2]
//textmacro instance: InitEmptyTrigVarsTrig("G3")
                set s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G3]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G3], Condition(function s__TrigVariables_EmptyTrigVars_G3))
//end of: InitEmptyTrigVarsTrig("G3")
            set s__s__TrigVariables_tEmptyTrigVars[272]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G3]
            set s__s__TrigVariables_tEmptyTrigVars[273]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G3]
            set s__s__TrigVariables_tEmptyTrigVars[274]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G3]
            set s__s__TrigVariables_tEmptyTrigVars[275]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G3]
            set s__s__TrigVariables_tEmptyTrigVars[276]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G3]
            set s__s__TrigVariables_tEmptyTrigVars[289]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G3]
            set s__s__TrigVariables_tEmptyTrigVars[290]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G3]
            set s__s__TrigVariables_tEmptyTrigVars[291]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G3]
            set s__s__TrigVariables_tEmptyTrigVars[292]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G3]
            set s__s__TrigVariables_tEmptyTrigVars[293]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G3]
//textmacro instance: InitEmptyTrigVarsTrig("G4")
                set s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G4]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G4], Condition(function s__TrigVariables_EmptyTrigVars_G4))
//end of: InitEmptyTrigVarsTrig("G4")
            set s__s__TrigVariables_tEmptyTrigVars[261]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G4]
            set s__s__TrigVariables_tEmptyTrigVars[262]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G4]
            set s__s__TrigVariables_tEmptyTrigVars[263]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G4]
            set s__s__TrigVariables_tEmptyTrigVars[264]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G4]
            set s__s__TrigVariables_tEmptyTrigVars[265]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G4]
            set s__s__TrigVariables_tEmptyTrigVars[266]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G4]
            set s__s__TrigVariables_tEmptyTrigVars[267]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G4]
            set s__s__TrigVariables_tEmptyTrigVars[268]= s__s__TrigVariables_tEmptyTrigVars[s__TrigVariables_G4]
//textmacro instance: InitEmptyTrigVarsTrig("0")
                set s__s__TrigVariables_tEmptyTrigVars[0]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[0], Condition(function s__TrigVariables_EmptyTrigVars_0))
//end of: InitEmptyTrigVarsTrig("0")
//textmacro instance: InitEmptyTrigVarsTrig("3")
                set s__s__TrigVariables_tEmptyTrigVars[3]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[3], Condition(function s__TrigVariables_EmptyTrigVars_3))
//end of: InitEmptyTrigVarsTrig("3")
//textmacro instance: InitEmptyTrigVarsTrig("4")
                set s__s__TrigVariables_tEmptyTrigVars[4]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[4], Condition(function s__TrigVariables_EmptyTrigVars_4))
//end of: InitEmptyTrigVarsTrig("4")
//textmacro instance: InitEmptyTrigVarsTrig("5")
                set s__s__TrigVariables_tEmptyTrigVars[5]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[5], Condition(function s__TrigVariables_EmptyTrigVars_5))
//end of: InitEmptyTrigVarsTrig("5")
//textmacro instance: InitEmptyTrigVarsTrig("6")
                set s__s__TrigVariables_tEmptyTrigVars[6]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[6], Condition(function s__TrigVariables_EmptyTrigVars_6))
//end of: InitEmptyTrigVarsTrig("6")
//textmacro instance: InitEmptyTrigVarsTrig("16")
                set s__s__TrigVariables_tEmptyTrigVars[16]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[16], Condition(function s__TrigVariables_EmptyTrigVars_16))
//end of: InitEmptyTrigVarsTrig("16")
//textmacro instance: InitEmptyTrigVarsTrigDouble("18","62")
                set s__s__TrigVariables_tEmptyTrigVars[18]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[18], Condition(function s__TrigVariables_EmptyTrigVars_18))
                set s__s__TrigVariables_tEmptyTrigVars[62]= s__s__TrigVariables_tEmptyTrigVars[18]
//end of: InitEmptyTrigVarsTrigDouble("18","62")
//textmacro instance: InitEmptyTrigVarsTrigDouble("19","63")
                set s__s__TrigVariables_tEmptyTrigVars[19]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[19], Condition(function s__TrigVariables_EmptyTrigVars_19))
                set s__s__TrigVariables_tEmptyTrigVars[63]= s__s__TrigVariables_tEmptyTrigVars[19]
//end of: InitEmptyTrigVarsTrigDouble("19","63")
//textmacro instance: InitEmptyTrigVarsTrigDouble("20","53")
                set s__s__TrigVariables_tEmptyTrigVars[20]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[20], Condition(function s__TrigVariables_EmptyTrigVars_20))
                set s__s__TrigVariables_tEmptyTrigVars[53]= s__s__TrigVariables_tEmptyTrigVars[20]
//end of: InitEmptyTrigVarsTrigDouble("20","53")
//textmacro instance: InitEmptyTrigVarsTrigDouble("21","54")
                set s__s__TrigVariables_tEmptyTrigVars[21]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[21], Condition(function s__TrigVariables_EmptyTrigVars_21))
                set s__s__TrigVariables_tEmptyTrigVars[54]= s__s__TrigVariables_tEmptyTrigVars[21]
//end of: InitEmptyTrigVarsTrigDouble("21","54")
//textmacro instance: InitEmptyTrigVarsTrigDouble("22","55")
                set s__s__TrigVariables_tEmptyTrigVars[22]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[22], Condition(function s__TrigVariables_EmptyTrigVars_22))
                set s__s__TrigVariables_tEmptyTrigVars[55]= s__s__TrigVariables_tEmptyTrigVars[22]
//end of: InitEmptyTrigVarsTrigDouble("22","55")
//textmacro instance: InitEmptyTrigVarsTrig("26")
                set s__s__TrigVariables_tEmptyTrigVars[26]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[26], Condition(function s__TrigVariables_EmptyTrigVars_26))
//end of: InitEmptyTrigVarsTrig("26")
//textmacro instance: InitEmptyTrigVarsTrigDouble("27","64")
                set s__s__TrigVariables_tEmptyTrigVars[27]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[27], Condition(function s__TrigVariables_EmptyTrigVars_27))
                set s__s__TrigVariables_tEmptyTrigVars[64]= s__s__TrigVariables_tEmptyTrigVars[27]
//end of: InitEmptyTrigVarsTrigDouble("27","64")
//textmacro instance: InitEmptyTrigVarsTrigDouble("28","65")
                set s__s__TrigVariables_tEmptyTrigVars[28]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[28], Condition(function s__TrigVariables_EmptyTrigVars_28))
                set s__s__TrigVariables_tEmptyTrigVars[65]= s__s__TrigVariables_tEmptyTrigVars[28]
//end of: InitEmptyTrigVarsTrigDouble("28","65")
//textmacro instance: InitEmptyTrigVarsTrigDouble("32","69")
                set s__s__TrigVariables_tEmptyTrigVars[32]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[32], Condition(function s__TrigVariables_EmptyTrigVars_32))
                set s__s__TrigVariables_tEmptyTrigVars[69]= s__s__TrigVariables_tEmptyTrigVars[32]
//end of: InitEmptyTrigVarsTrigDouble("32","69")
//textmacro instance: InitEmptyTrigVarsTrigDouble("33","70")
                set s__s__TrigVariables_tEmptyTrigVars[33]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[33], Condition(function s__TrigVariables_EmptyTrigVars_33))
                set s__s__TrigVariables_tEmptyTrigVars[70]= s__s__TrigVariables_tEmptyTrigVars[33]
//end of: InitEmptyTrigVarsTrigDouble("33","70")
//textmacro instance: InitEmptyTrigVarsTrigDouble("34","71")
                set s__s__TrigVariables_tEmptyTrigVars[34]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[34], Condition(function s__TrigVariables_EmptyTrigVars_34))
                set s__s__TrigVariables_tEmptyTrigVars[71]= s__s__TrigVariables_tEmptyTrigVars[34]
//end of: InitEmptyTrigVarsTrigDouble("34","71")
//textmacro instance: InitEmptyTrigVarsTrigDouble("35","72")
                set s__s__TrigVariables_tEmptyTrigVars[35]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[35], Condition(function s__TrigVariables_EmptyTrigVars_35))
                set s__s__TrigVariables_tEmptyTrigVars[72]= s__s__TrigVariables_tEmptyTrigVars[35]
//end of: InitEmptyTrigVarsTrigDouble("35","72")
//textmacro instance: InitEmptyTrigVarsTrigDouble("36","73")
                set s__s__TrigVariables_tEmptyTrigVars[36]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[36], Condition(function s__TrigVariables_EmptyTrigVars_36))
                set s__s__TrigVariables_tEmptyTrigVars[73]= s__s__TrigVariables_tEmptyTrigVars[36]
//end of: InitEmptyTrigVarsTrigDouble("36","73")
//textmacro instance: InitEmptyTrigVarsTrigDouble("37","74")
                set s__s__TrigVariables_tEmptyTrigVars[37]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[37], Condition(function s__TrigVariables_EmptyTrigVars_37))
                set s__s__TrigVariables_tEmptyTrigVars[74]= s__s__TrigVariables_tEmptyTrigVars[37]
//end of: InitEmptyTrigVarsTrigDouble("37","74")
//textmacro instance: InitEmptyTrigVarsTrigDouble("38","75")
                set s__s__TrigVariables_tEmptyTrigVars[38]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[38], Condition(function s__TrigVariables_EmptyTrigVars_38))
                set s__s__TrigVariables_tEmptyTrigVars[75]= s__s__TrigVariables_tEmptyTrigVars[38]
//end of: InitEmptyTrigVarsTrigDouble("38","75")
//textmacro instance: InitEmptyTrigVarsTrigDouble("39","76")
                set s__s__TrigVariables_tEmptyTrigVars[39]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[39], Condition(function s__TrigVariables_EmptyTrigVars_39))
                set s__s__TrigVariables_tEmptyTrigVars[76]= s__s__TrigVariables_tEmptyTrigVars[39]
//end of: InitEmptyTrigVarsTrigDouble("39","76")
//textmacro instance: InitEmptyTrigVarsTrigDouble("41","77")
                set s__s__TrigVariables_tEmptyTrigVars[41]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[41], Condition(function s__TrigVariables_EmptyTrigVars_41))
                set s__s__TrigVariables_tEmptyTrigVars[77]= s__s__TrigVariables_tEmptyTrigVars[41]
//end of: InitEmptyTrigVarsTrigDouble("41","77")
//textmacro instance: InitEmptyTrigVarsTrigDouble("40","78")
                set s__s__TrigVariables_tEmptyTrigVars[40]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[40], Condition(function s__TrigVariables_EmptyTrigVars_40))
                set s__s__TrigVariables_tEmptyTrigVars[78]= s__s__TrigVariables_tEmptyTrigVars[40]
//end of: InitEmptyTrigVarsTrigDouble("40","78")
//textmacro instance: InitEmptyTrigVarsTrigDouble("42","79")
                set s__s__TrigVariables_tEmptyTrigVars[42]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[42], Condition(function s__TrigVariables_EmptyTrigVars_42))
                set s__s__TrigVariables_tEmptyTrigVars[79]= s__s__TrigVariables_tEmptyTrigVars[42]
//end of: InitEmptyTrigVarsTrigDouble("42","79")
//textmacro instance: InitEmptyTrigVarsTrigDouble("43","80")
                set s__s__TrigVariables_tEmptyTrigVars[43]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[43], Condition(function s__TrigVariables_EmptyTrigVars_43))
                set s__s__TrigVariables_tEmptyTrigVars[80]= s__s__TrigVariables_tEmptyTrigVars[43]
//end of: InitEmptyTrigVarsTrigDouble("43","80")
//textmacro instance: InitEmptyTrigVarsTrigDouble("44","81")
                set s__s__TrigVariables_tEmptyTrigVars[44]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[44], Condition(function s__TrigVariables_EmptyTrigVars_44))
                set s__s__TrigVariables_tEmptyTrigVars[81]= s__s__TrigVariables_tEmptyTrigVars[44]
//end of: InitEmptyTrigVarsTrigDouble("44","81")
//textmacro instance: InitEmptyTrigVarsTrigDouble("45","82")
                set s__s__TrigVariables_tEmptyTrigVars[45]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[45], Condition(function s__TrigVariables_EmptyTrigVars_45))
                set s__s__TrigVariables_tEmptyTrigVars[82]= s__s__TrigVariables_tEmptyTrigVars[45]
//end of: InitEmptyTrigVarsTrigDouble("45","82")
//textmacro instance: InitEmptyTrigVarsTrigDouble("46","83")
                set s__s__TrigVariables_tEmptyTrigVars[46]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[46], Condition(function s__TrigVariables_EmptyTrigVars_46))
                set s__s__TrigVariables_tEmptyTrigVars[83]= s__s__TrigVariables_tEmptyTrigVars[46]
//end of: InitEmptyTrigVarsTrigDouble("46","83")
//textmacro instance: InitEmptyTrigVarsTrigDouble("47","84")
                set s__s__TrigVariables_tEmptyTrigVars[47]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[47], Condition(function s__TrigVariables_EmptyTrigVars_47))
                set s__s__TrigVariables_tEmptyTrigVars[84]= s__s__TrigVariables_tEmptyTrigVars[47]
//end of: InitEmptyTrigVarsTrigDouble("47","84")
//textmacro instance: InitEmptyTrigVarsTrigDouble("48","85")
                set s__s__TrigVariables_tEmptyTrigVars[48]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[48], Condition(function s__TrigVariables_EmptyTrigVars_48))
                set s__s__TrigVariables_tEmptyTrigVars[85]= s__s__TrigVariables_tEmptyTrigVars[48]
//end of: InitEmptyTrigVarsTrigDouble("48","85")
//textmacro instance: InitEmptyTrigVarsTrigDouble("49","86")
                set s__s__TrigVariables_tEmptyTrigVars[49]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[49], Condition(function s__TrigVariables_EmptyTrigVars_49))
                set s__s__TrigVariables_tEmptyTrigVars[86]= s__s__TrigVariables_tEmptyTrigVars[49]
//end of: InitEmptyTrigVarsTrigDouble("49","86")
//textmacro instance: InitEmptyTrigVarsTrigDouble("50","87")
                set s__s__TrigVariables_tEmptyTrigVars[50]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[50], Condition(function s__TrigVariables_EmptyTrigVars_50))
                set s__s__TrigVariables_tEmptyTrigVars[87]= s__s__TrigVariables_tEmptyTrigVars[50]
//end of: InitEmptyTrigVarsTrigDouble("50","87")
//textmacro instance: InitEmptyTrigVarsTrigDouble("51","88")
                set s__s__TrigVariables_tEmptyTrigVars[51]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[51], Condition(function s__TrigVariables_EmptyTrigVars_51))
                set s__s__TrigVariables_tEmptyTrigVars[88]= s__s__TrigVariables_tEmptyTrigVars[51]
//end of: InitEmptyTrigVarsTrigDouble("51","88")
//textmacro instance: InitEmptyTrigVarsTrigDouble("269","286")
                set s__s__TrigVariables_tEmptyTrigVars[269]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[269], Condition(function s__TrigVariables_EmptyTrigVars_269))
                set s__s__TrigVariables_tEmptyTrigVars[286]= s__s__TrigVariables_tEmptyTrigVars[269]
//end of: InitEmptyTrigVarsTrigDouble("269","286")
//textmacro instance: InitEmptyTrigVarsTrigDouble("270","287")
                set s__s__TrigVariables_tEmptyTrigVars[270]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[270], Condition(function s__TrigVariables_EmptyTrigVars_270))
                set s__s__TrigVariables_tEmptyTrigVars[287]= s__s__TrigVariables_tEmptyTrigVars[270]
//end of: InitEmptyTrigVarsTrigDouble("270","287")
//textmacro instance: InitEmptyTrigVarsTrigDouble("271","288")
                set s__s__TrigVariables_tEmptyTrigVars[271]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[271], Condition(function s__TrigVariables_EmptyTrigVars_271))
                set s__s__TrigVariables_tEmptyTrigVars[288]= s__s__TrigVariables_tEmptyTrigVars[271]
//end of: InitEmptyTrigVarsTrigDouble("271","288")
//textmacro instance: InitEmptyTrigVarsTrigDouble("277","294")
                set s__s__TrigVariables_tEmptyTrigVars[277]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[277], Condition(function s__TrigVariables_EmptyTrigVars_277))
                set s__s__TrigVariables_tEmptyTrigVars[294]= s__s__TrigVariables_tEmptyTrigVars[277]
//end of: InitEmptyTrigVarsTrigDouble("277","294")
//textmacro instance: InitEmptyTrigVarsTrig("52")
                set s__s__TrigVariables_tEmptyTrigVars[52]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[52], Condition(function s__TrigVariables_EmptyTrigVars_52))
//end of: InitEmptyTrigVarsTrig("52")
//textmacro instance: InitEmptyTrigVarsTrig("60")
                set s__s__TrigVariables_tEmptyTrigVars[60]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[60], Condition(function s__TrigVariables_EmptyTrigVars_60))
//end of: InitEmptyTrigVarsTrig("60")
//textmacro instance: InitEmptyTrigVarsTrig("61")
                set s__s__TrigVariables_tEmptyTrigVars[61]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[61], Condition(function s__TrigVariables_EmptyTrigVars_61))
//end of: InitEmptyTrigVarsTrig("61")
//textmacro instance: InitEmptyTrigVarsTrig("92")
                set s__s__TrigVariables_tEmptyTrigVars[92]= CreateTrigger()
                call TriggerAddCondition(s__s__TrigVariables_tEmptyTrigVars[92], Condition(function s__TrigVariables_EmptyTrigVars_92))
//end of: InitEmptyTrigVarsTrig("92")
        endfunction
        function s__TrigVariables_TPTTS_EmptyTrigVars__onInit takes nothing returns nothing
            //call ExecuteFunc("thistype.InitEmptyTrigVars")
            call s__TrigVariables_InitEmptyTrigVars()
        endfunction
        
    constant function CurrentTV takes nothing returns integer
        return GlobalTV
    endfunction
    constant function NullCondition takes nothing returns boolean
        return true
    endfunction
    
        
    

//===========================================================================
// 
// 흰세계
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Sat Oct 17 13:47:51 2020
//   Map Author: 알려지지 않음
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************


function InitGlobals takes nothing returns nothing
endfunction

//***************************************************************************
//*
//*  Sounds
//*
//***************************************************************************

function InitSounds takes nothing returns nothing
    set gg_snd_Kujo_Jotaro_Start=CreateSound("Sound\\Kujo Jotaro_Start.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_Kujo_Jotaro_Start, 4716)
    call SetSoundChannel(gg_snd_Kujo_Jotaro_Start, 0)
    call SetSoundVolume(gg_snd_Kujo_Jotaro_Start, 127)
    call SetSoundPitch(gg_snd_Kujo_Jotaro_Start, 1.0)
    set gg_snd_Kujo_JotaroE1=CreateSound("Sound\\Kujo JotaroE1.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_Kujo_JotaroE1, 1440)
    call SetSoundChannel(gg_snd_Kujo_JotaroE1, 0)
    call SetSoundVolume(gg_snd_Kujo_JotaroE1, 127)
    call SetSoundPitch(gg_snd_Kujo_JotaroE1, 1.0)
    set gg_snd_Kujo_JotaroE2=CreateSound("Sound\\Kujo JotaroE2.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_Kujo_JotaroE2, 3708)
    call SetSoundChannel(gg_snd_Kujo_JotaroE2, 0)
    call SetSoundVolume(gg_snd_Kujo_JotaroE2, 127)
    call SetSoundPitch(gg_snd_Kujo_JotaroE2, 1.0)
    set gg_snd_Kujo_JotaroQ1=CreateSound("Sound\\Kujo JotaroQ1.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_Kujo_JotaroQ1, 792)
    call SetSoundChannel(gg_snd_Kujo_JotaroQ1, 0)
    call SetSoundVolume(gg_snd_Kujo_JotaroQ1, 127)
    call SetSoundPitch(gg_snd_Kujo_JotaroQ1, 1.0)
    set gg_snd_Kujo_JotaroQ2=CreateSound("Sound\\Kujo JotaroQ2.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_Kujo_JotaroQ2, 540)
    call SetSoundChannel(gg_snd_Kujo_JotaroQ2, 0)
    call SetSoundVolume(gg_snd_Kujo_JotaroQ2, 127)
    call SetSoundPitch(gg_snd_Kujo_JotaroQ2, 1.0)
    set gg_snd_Kujo_JotaroW1=CreateSound("Sound\\Kujo JotaroW1.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_Kujo_JotaroW1, 684)
    call SetSoundChannel(gg_snd_Kujo_JotaroW1, 0)
    call SetSoundVolume(gg_snd_Kujo_JotaroW1, 127)
    call SetSoundPitch(gg_snd_Kujo_JotaroW1, 1.0)
    set gg_snd_Kujo_JotaroW2=CreateSound("Sound\\Kujo JotaroW2.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_Kujo_JotaroW2, 1692)
    call SetSoundChannel(gg_snd_Kujo_JotaroW2, 0)
    call SetSoundVolume(gg_snd_Kujo_JotaroW2, 127)
    call SetSoundPitch(gg_snd_Kujo_JotaroW2, 1.0)
    set gg_snd_Kujo_JotaroR1=CreateSound("Sound\\Kujo JotaroR1.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_Kujo_JotaroR1, 3636)
    call SetSoundChannel(gg_snd_Kujo_JotaroR1, 0)
    call SetSoundVolume(gg_snd_Kujo_JotaroR1, 127)
    call SetSoundPitch(gg_snd_Kujo_JotaroR1, 1.0)
    set gg_snd_Kujo_JotaroR2=CreateSound("Sound\\Kujo JotaroR2.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_Kujo_JotaroR2, 2016)
    call SetSoundChannel(gg_snd_Kujo_JotaroR2, 0)
    call SetSoundVolume(gg_snd_Kujo_JotaroR2, 127)
    call SetSoundPitch(gg_snd_Kujo_JotaroR2, 1.0)
    set gg_snd_Kujo_JotaroW3=CreateSound("Sound\\Kujo JotaroW3.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_Kujo_JotaroW3, 1260)
    call SetSoundChannel(gg_snd_Kujo_JotaroW3, 0)
    call SetSoundVolume(gg_snd_Kujo_JotaroW3, 127)
    call SetSoundPitch(gg_snd_Kujo_JotaroW3, 1.0)
    set gg_snd_Kujo_JotaroF1=CreateSound("Sound\\Kujo JotaroF1.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_Kujo_JotaroF1, 1044)
    call SetSoundChannel(gg_snd_Kujo_JotaroF1, 0)
    call SetSoundVolume(gg_snd_Kujo_JotaroF1, 127)
    call SetSoundPitch(gg_snd_Kujo_JotaroF1, 1.0)
    set gg_snd_Kujo_JotaroF2=CreateSound("Sound\\Kujo JotaroF2.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_Kujo_JotaroF2, 576)
    call SetSoundChannel(gg_snd_Kujo_JotaroF2, 0)
    call SetSoundVolume(gg_snd_Kujo_JotaroF2, 127)
    call SetSoundPitch(gg_snd_Kujo_JotaroF2, 1.0)
    set gg_snd_Kujo_JotaroF3=CreateSound("Sound\\Kujo JotaroF3.mp3", false, false, false, 10, 10, "DefaultEAXON")
    call SetSoundDuration(gg_snd_Kujo_JotaroF3, 612)
    call SetSoundChannel(gg_snd_Kujo_JotaroF3, 0)
    call SetSoundVolume(gg_snd_Kujo_JotaroF3, 127)
    call SetSoundPitch(gg_snd_Kujo_JotaroF3, 1.0)
    set gg_snd_Kujo_JotaroR3=CreateSound("Sound\\Kujo JotaroR3.mp3", false, true, false, 10, 10, "DefaultEAXON")
    call SetSoundDuration(gg_snd_Kujo_JotaroR3, 2340)
    call SetSoundChannel(gg_snd_Kujo_JotaroR3, 0)
    call SetSoundVolume(gg_snd_Kujo_JotaroR3, 127)
    call SetSoundPitch(gg_snd_Kujo_JotaroR3, 1.2)
    call SetSoundDistances(gg_snd_Kujo_JotaroR3, 1500.0, 2000.0)
    call SetSoundDistanceCutoff(gg_snd_Kujo_JotaroR3, 1800.0)
    call SetSoundConeAngles(gg_snd_Kujo_JotaroR3, 0.0, 0.0, 127)
    call SetSoundConeOrientation(gg_snd_Kujo_JotaroR3, 0.0, 0.0, 0.0)
    set gg_snd_Kujo_JotaroR4=CreateSound("Sound\\Kujo JotaroR4.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_Kujo_JotaroR4, 252)
    call SetSoundChannel(gg_snd_Kujo_JotaroR4, 0)
    call SetSoundVolume(gg_snd_Kujo_JotaroR4, 127)
    call SetSoundPitch(gg_snd_Kujo_JotaroR4, 1.0)
    set gg_snd_Kujo_JotaroQ201=CreateSound("Sound\\Kujo JotaroQ2.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_Kujo_JotaroQ201, 540)
    call SetSoundChannel(gg_snd_Kujo_JotaroQ201, 0)
    call SetSoundVolume(gg_snd_Kujo_JotaroQ201, 127)
    call SetSoundPitch(gg_snd_Kujo_JotaroQ201, 1.0)
    set gg_snd_Kujo_JotaroR301=CreateSound("Sound\\Kujo JotaroR3.mp3", false, false, false, 10, 10, "")
    call SetSoundDuration(gg_snd_Kujo_JotaroR301, 2340)
    call SetSoundChannel(gg_snd_Kujo_JotaroR301, 0)
    call SetSoundVolume(gg_snd_Kujo_JotaroR301, 127)
    call SetSoundPitch(gg_snd_Kujo_JotaroR301, 1.0)
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateBuildingsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_hhou_0003=CreateUnit(p, 'hhou', - 1216.0, 960.0, 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set gg_unit_Hpal_0001=CreateUnit(p, 'Hpal', - 1065.6, - 890.6, 265.974)
endfunction

//===========================================================================
function CreateUnitsForPlayer1 takes nothing returns nothing
    local player p= Player(1)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u=CreateUnit(p, 'ugho', - 786.6, - 143.4, 232.698)
    set u=CreateUnit(p, 'ugho', 520.0, - 963.3, 282.302)
    set u=CreateUnit(p, 'ugho', 918.8, - 1279.3, 1.505)
    set u=CreateUnit(p, 'ugho', - 221.0, - 863.5, 222.936)
    set u=CreateUnit(p, 'ugho', - 885.5, - 962.6, 329.929)
    set u=CreateUnit(p, 'ugho', - 633.5, 508.0, 2.977)
    set u=CreateUnit(p, 'ugho', - 69.8, 22.3, 176.567)
    set u=CreateUnit(p, 'ugho', 842.1, - 345.5, 354.990)
    set u=CreateUnit(p, 'ugho', 711.0, 248.2, 108.449)
    set u=CreateUnit(p, 'ugho', 12.5, 786.4, 169.898)
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
    call CreateBuildingsForPlayer0()
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0()
    call CreateUnitsForPlayer1()
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateBuildingsForPlayer0() // INLINED!!
    call CreatePlayerUnits()
endfunction

//***************************************************************************
//*
//*  Custom Script Code
//*
//***************************************************************************
//TESH.scrollpos=36
//TESH.alwaysfold=0
//마시님께 받은 넉백함수

function KBHFunc takes nothing returns nothing
 local timer t= GetExpiredTimer()
 local unit target= LoadUnitHandle(bj_lastCreatedHashtable, GetHandleId(t), StringHash("target"))
 local effect e
 local string S= LoadStr(bj_lastCreatedHashtable, GetHandleId(t), StringHash("S"))
local real R=LoadReal(bj_lastCreatedHashtable, GetHandleId(t), StringHash("d"))
local boolean f= LoadBoolean(bj_lastCreatedHashtable, GetHandleId(t), StringHash("f"))


  
  if LoadReal(bj_lastCreatedHashtable, GetHandleId(t), StringHash("in")) < LoadReal(bj_lastCreatedHashtable, GetHandleId(t), StringHash("out")) then
    if S != null then
        set e=AddSpecialEffectTarget(S, target, "chest")
    call DestroyEffect(e)
    endif
    if f == false then
if IsTerrainPathable(GetUnitX(target) + CosBJ(LoadReal(bj_lastCreatedHashtable, GetHandleId(t), StringHash("ang"))) * R, GetUnitY(target) + SinBJ(LoadReal(bj_lastCreatedHashtable, GetHandleId(t), StringHash("ang"))) * R, PATHING_TYPE_WALKABILITY) == false then

    call SetUnitPosition(target, GetUnitX(target) + R * CosBJ(LoadReal(bj_lastCreatedHashtable, GetHandleId(t), StringHash("ang"))), GetUnitY(target) + R * SinBJ(LoadReal(bj_lastCreatedHashtable, GetHandleId(t), StringHash("ang"))))

    endif
    else
if IsTerrainPathable(GetUnitX(target) + CosBJ(LoadReal(bj_lastCreatedHashtable, GetHandleId(t), StringHash("ang"))) * R, GetUnitY(target) + SinBJ(LoadReal(bj_lastCreatedHashtable, GetHandleId(t), StringHash("ang"))) * R, PATHING_TYPE_WALKABILITY) == false then
    call SetUnitX(target, GetUnitX(target) + R * CosBJ(LoadReal(bj_lastCreatedHashtable, GetHandleId(t), StringHash("ang"))))
    call SetUnitY(target, GetUnitY(target) + R * SinBJ(LoadReal(bj_lastCreatedHashtable, GetHandleId(t), StringHash("ang"))))
    endif
    endif
    call SaveReal(bj_lastCreatedHashtable, GetHandleId(t), StringHash("in"), LoadReal(bj_lastCreatedHashtable, GetHandleId(t), StringHash("in")) + 1)
     
    call SaveReal(bj_lastCreatedHashtable, GetHandleId(t), StringHash("d"), R + LoadReal(bj_lastCreatedHashtable, GetHandleId(t), StringHash("AS")))
  
  else
    call FlushChildHashtable(bj_lastCreatedHashtable, GetHandleId(t))
    call ReleaseTimer(t)
 
  endif
  set S=null
  set e=null
  set target=null
  set t=null
endfunction

function KBH takes unit target,real dis,real dur,real Angle,string S,boolean F returns nothing
 local timer t= (NewTimerEx(0)) // INLINED!!
 local real timeout= 0.04
 local real R= ( 2 * dis ) / ( 25 * dur + 1 )
  call SaveUnitHandle(bj_lastCreatedHashtable, GetHandleId(t), StringHash("target"), target)
  call SaveReal(bj_lastCreatedHashtable, GetHandleId(t), StringHash("ang"), Angle)
  call SaveBoolean(bj_lastCreatedHashtable, GetHandleId(t), StringHash("f"), F)
  call SaveReal(bj_lastCreatedHashtable, GetHandleId(t), StringHash("d"), R)
  call SaveReal(bj_lastCreatedHashtable, GetHandleId(t), StringHash("AS"), R / ( 25 * dur ) * - 1)
  call SaveReal(bj_lastCreatedHashtable, GetHandleId(t), StringHash("in"), 0)
  call SaveReal(bj_lastCreatedHashtable, GetHandleId(t), StringHash("out"), dur / timeout)
  call SaveStr(bj_lastCreatedHashtable, GetHandleId(t), StringHash("S"), S)
 
  call TimerStart(t, timeout, true, function KBHFunc)
  set target=null
  set t=null
  set S=null
endfunction


//은루님께 받은 마시님의 진동 함수

function NDFunc takes nothing returns nothing
 local timer t= GetExpiredTimer()
 local player P= LoadPlayerHandle(bj_lastCreatedHashtable, GetHandleId(t), StringHash("P"))
   call DestroyTrigger(GetTriggeringTrigger())
    call CameraClearNoiseForPlayer(P)
    call FlushChildHashtable(bj_lastCreatedHashtable, GetHandleId(t))
    call DestroyTimer(t)
  
  set P=null
  set t=null
endfunction

  
  function ND takes player P,real R,real R2 returns nothing
 local timer t= CreateTimer()
 local real timeout= R
  call SavePlayerHandle(bj_lastCreatedHashtable, GetHandleId(t), StringHash("P"), P)
  call CameraSetEQNoiseForPlayer(P, R2)
  call TimerStart(t, timeout, false, function NDFunc)
  set t=null
  set P=null
  endfunction
//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: TimerPutsTriggerToSleep
//===========================================================================

//===========================================================================
// Trigger: TPTTS SubTrigs
//===========================================================================
//TESH.scrollpos=157
//TESH.alwaysfold=0
// Trigger: TPTTS LinkedVariables
//===========================================================================
//TESH.scrollpos=21
//TESH.alwaysfold=0

        
//textmacro instance: DeclareLinkedVariables("player",      "PlayerHandle",      "Handle",    "2" ,"null" )
        
            function s__playerforCall__getindex takes integer this,integer i returns player
                return (LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, ((this )) * s__TrigVariables_arraySize + (( i)))) // INLINED!!
            endfunction
            function s__playerforCall__setindex takes integer this,integer i,player x returns nothing
                call s__TrigVariables_Setplayer((this ),( i ) , ( x)) // INLINED!!
            endfunction
//end of: DeclareLinkedVariables("player",      "PlayerHandle",      "Handle",    "2" ,"null" )
//textmacro instance: DeclareLinkedVariables("force",       "ForceHandle",       "Handle",    "2" ,"null" )
        
            function s__forceforCall__getindex takes integer this,integer i returns force
                return (LoadForceHandle(s__TrigVariables_Hashforce, 0, ((this )) * s__TrigVariables_arraySize + (( i)))) // INLINED!!
            endfunction
            function s__forceforCall__setindex takes integer this,integer i,force x returns nothing
                call s__TrigVariables_SetforceAutoRemove((this ),( i ) , ( x)) // INLINED!!
            endfunction
//end of: DeclareLinkedVariables("force",       "ForceHandle",       "Handle",    "2" ,"null" )
//textmacro instance: DeclareLinkedVariables("group",       "GroupHandle",       "Handle",    "3" ,"null" )
        
            function s__groupforCall__getindex takes integer this,integer i returns group
                return (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, ((this )) * s__TrigVariables_arraySize + (( i)))) // INLINED!!
            endfunction
            function s__groupforCall__setindex takes integer this,integer i,group x returns nothing
                call s__TrigVariables_SetgroupAutoRemove((this ),( i ) , ( x)) // INLINED!!
            endfunction
//end of: DeclareLinkedVariables("group",       "GroupHandle",       "Handle",    "3" ,"null" )
//textmacro instance: DeclareLinkedVariables("item",        "ItemHandle",        "Handle",    "3" ,"null" )
        
            function s__itemforCall__getindex takes integer this,integer i returns item
                return (LoadItemHandle(s__TrigVariables_Hashitem, 0, ((this )) * s__TrigVariables_arraySize + (( i)))) // INLINED!!
            endfunction
            function s__itemforCall__setindex takes integer this,integer i,item x returns nothing
                call s__TrigVariables_Setitem((this ),( i ) , ( x)) // INLINED!!
            endfunction
//end of: DeclareLinkedVariables("item",        "ItemHandle",        "Handle",    "3" ,"null" )
//textmacro instance: DeclareLinkedVariables("effect",      "EffectHandle",      "Handle",    "3" ,"null" )
        
            function s__effectforCall__getindex takes integer this,integer i returns effect
                return (LoadEffectHandle(s__TrigVariables_Hasheffect, 0, ((this )) * s__TrigVariables_arraySize + (( i)))) // INLINED!!
            endfunction
            function s__effectforCall__setindex takes integer this,integer i,effect x returns nothing
                call s__TrigVariables_SeteffectAutoRemove((this ),( i ) , ( x)) // INLINED!!
            endfunction
//end of: DeclareLinkedVariables("effect",      "EffectHandle",      "Handle",    "3" ,"null" )
//textmacro instance: DeclareLinkedVariables("timer",       "TimerHandle",       "Handle",    "3" ,"null" )
        
            function s__timerforCall__getindex takes integer this,integer i returns timer
                return (LoadTimerHandle(s__TrigVariables_Hashtimer, 0, ((this )) * s__TrigVariables_arraySize + (( i)))) // INLINED!!
            endfunction
            function s__timerforCall__setindex takes integer this,integer i,timer x returns nothing
                call s__TrigVariables_Settimer((this ),( i ) , ( x)) // INLINED!!
            endfunction
//end of: DeclareLinkedVariables("timer",       "TimerHandle",       "Handle",    "3" ,"null" )
//textmacro instance: DeclareLinkedVariables("unit",        "UnitHandle",        "Handle",    "5" ,"null" )
        
            function s__unitforCall__getindex takes integer this,integer i returns unit
                return (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((this )) * s__TrigVariables_arraySize + (( i)))) // INLINED!!
            endfunction
            function s__unitforCall__setindex takes integer this,integer i,unit x returns nothing
                call s__TrigVariables_Setunit((this ),( i ) , ( x)) // INLINED!!
            endfunction
//end of: DeclareLinkedVariables("unit",        "UnitHandle",        "Handle",    "5" ,"null" )
//textmacro instance: DeclareLinkedVariables("location",    "LocationHandle",    "Handle",    "5" ,"null" )
        
            function s__locationforCall__getindex takes integer this,integer i returns location
                return (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((this )) * s__TrigVariables_arraySize + (( i)))) // INLINED!!
            endfunction
            function s__locationforCall__setindex takes integer this,integer i,location x returns nothing
                call s__TrigVariables_SetlocationAutoRemove((this ),( i ) , ( x)) // INLINED!!
            endfunction
//end of: DeclareLinkedVariables("location",    "LocationHandle",    "Handle",    "5" ,"null" )
//textmacro instance: DeclareLinkedVariables("lightning",   "LightningHandle",   "Handle",    "5" ,"null" )
        
            function s__lightningforCall__getindex takes integer this,integer i returns lightning
                return (LoadLightningHandle(s__TrigVariables_Hashlightning, 0, ((this )) * s__TrigVariables_arraySize + (( i)))) // INLINED!!
            endfunction
            function s__lightningforCall__setindex takes integer this,integer i,lightning x returns nothing
                call s__TrigVariables_SetlightningAutoRemove((this ),( i ) , ( x)) // INLINED!!
            endfunction
//end of: DeclareLinkedVariables("lightning",   "LightningHandle",   "Handle",    "5" ,"null" )
//textmacro instance: DeclareLinkedVariables("integer",     "Integer",           "Integer",   "6" ,"0"    )
        
            function s__integerforCall__getindex takes integer this,integer i returns integer
                return (LoadInteger(s__TrigVariables_Hashinteger, 0, ((this )) * s__TrigVariables_arraySize + (( i)))) // INLINED!!
            endfunction
            function s__integerforCall__setindex takes integer this,integer i,integer x returns nothing
                call s__TrigVariables_Setinteger((this ),( i ) , ( x)) // INLINED!!
            endfunction
//end of: DeclareLinkedVariables("integer",     "Integer",           "Integer",   "6" ,"0"    )
//textmacro instance: DeclareLinkedVariables("real",        "Real",              "Real",      "6" ,"0."   )
        
            function s__realforCall__getindex takes integer this,integer i returns real
                return (LoadReal(s__TrigVariables_Hashreal, 0, ((this )) * s__TrigVariables_arraySize + (( i)))) // INLINED!!
            endfunction
            function s__realforCall__setindex takes integer this,integer i,real x returns nothing
                call s__TrigVariables_Setreal((this ),( i ) , (( x)*1.0)) // INLINED!!
            endfunction
//end of: DeclareLinkedVariables("real",        "Real",              "Real",      "6" ,"0."   )
//textmacro instance: DeclareLinkedVariables("boolean",     "Boolean",           "Boolean",   "6" ,"false")
        
            function s__booleanforCall__getindex takes integer this,integer i returns boolean
                return (LoadBoolean(s__TrigVariables_Hashboolean, 0, ((this )) * s__TrigVariables_arraySize + (( i)))) // INLINED!!
            endfunction
            function s__booleanforCall__setindex takes integer this,integer i,boolean x returns nothing
                call s__TrigVariables_Setboolean((this ),( i ) , ( x)) // INLINED!!
            endfunction
//end of: DeclareLinkedVariables("boolean",     "Boolean",           "Boolean",   "6" ,"false")
//textmacro instance: DeclareLinkedVariables("texttag",     "TextTagHandle",     "Handle",    "6" ,"null" )
        
            function s__texttagforCall__getindex takes integer this,integer i returns texttag
                return (LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, ((this )) * s__TrigVariables_arraySize + (( i)))) // INLINED!!
            endfunction
            function s__texttagforCall__setindex takes integer this,integer i,texttag x returns nothing
                call s__TrigVariables_Settexttag((this ),( i ) , ( x)) // INLINED!!
            endfunction
//end of: DeclareLinkedVariables("texttag",     "TextTagHandle",     "Handle",    "6" ,"null" )
//textmacro instance: DeclareLinkedVariables("string",      "Str",               "String",    "6" ,"null" )
        
            function s__stringforCall__getindex takes integer this,integer i returns string
                return (LoadStr(s__TrigVariables_Hashstring, 0, ((this )) * s__TrigVariables_arraySize + (( i)))) // INLINED!!
            endfunction
            function s__stringforCall__setindex takes integer this,integer i,string x returns nothing
                call s__TrigVariables_Setstring((this ),( i ) , ( x)) // INLINED!!
            endfunction
//end of: DeclareLinkedVariables("string",      "Str",               "String",    "6" ,"null" )


// Trigger: TPTTS LinkedVariables2
//===========================================================================
//TESH.scrollpos=165
//TESH.alwaysfold=0
// Trigger: TPTTS LinkedVariables Array
//===========================================================================
//TESH.scrollpos=27
//TESH.alwaysfold=0
// Trigger: TPTTS Copy
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
    
    
// Trigger: TPTTS WhenEventId
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
// Trigger: TPTTS EmptyTrigVars
//===========================================================================
//TESH.scrollpos=383
//TESH.alwaysfold=0
// Trigger: TimerUtils
//===========================================================================
//TESH.scrollpos=222
//TESH.alwaysfold=0
//===========================================================================
// Trigger: UNIT SELECT
//===========================================================================
function Trig_UNIT_SELECT_Actions takes nothing returns nothing
    set udg_UNIT=GetTriggerUnit()
endfunction

//===========================================================================
function InitTrig_UNIT_SELECT takes nothing returns nothing
    set gg_trg_UNIT_SELECT=CreateTrigger()
    call TriggerRegisterPlayerSelectionEventBJ(gg_trg_UNIT_SELECT, Player(0), true)
    call TriggerAddAction(gg_trg_UNIT_SELECT, function Trig_UNIT_SELECT_Actions)
endfunction

//===========================================================================
// Trigger: Ani
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0


function Trig_Ani_Actions takes nothing returns nothing

     call SetUnitAnimationByIndex(udg_UNIT, S2I(GetEventPlayerChatString()))
    
endfunction

//===========================================================================
function InitTrig_Ani takes nothing returns nothing
local integer i= 0
    set gg_trg_Ani=CreateTrigger()

    loop
    exitwhen i == 50
    call TriggerRegisterPlayerChatEvent(gg_trg_Ani, Player(0), I2S(i), true)
    set i=i + 1
    endloop
    
    call TriggerAddAction(gg_trg_Ani, function Trig_Ani_Actions)

endfunction

//===========================================================================
// Trigger: SeeYA
//===========================================================================
function Trig_SeeYA_Conditions takes nothing returns boolean
    if ( not ( S2I(SubStringBJ(GetEventPlayerChatString(), 1, 3)) >= 90 ) ) then
        return false
    endif
    if ( not ( S2I(SubStringBJ(GetEventPlayerChatString(), 1, 3)) <= 200 ) ) then
        return false
    endif
    return true
endfunction

function Trig_SeeYA_Actions takes nothing returns nothing
    call SetCameraFieldForPlayer(GetTriggerPlayer(), CAMERA_FIELD_TARGET_DISTANCE, ( 20.00 * S2R(SubStringBJ(GetEventPlayerChatString(), 1, 3)) ), 0.00)
endfunction

//===========================================================================
function InitTrig_SeeYA takes nothing returns nothing
    set gg_trg_SeeYA=CreateTrigger()
    call TriggerRegisterPlayerChatEvent(gg_trg_SeeYA, Player(0), "", false)
    call TriggerAddCondition(gg_trg_SeeYA, Condition(function Trig_SeeYA_Conditions))
    call TriggerAddAction(gg_trg_SeeYA, function Trig_SeeYA_Actions)
endfunction

//===========================================================================
// Trigger: Int
//===========================================================================
function Trig_Int_Actions takes nothing returns nothing
    call CreateFogModifierRectBJ(true, Player(0), FOG_OF_WAR_VISIBLE, GetPlayableMapRect())
    call CreateFogModifierRectBJ(true, Player(1), FOG_OF_WAR_VISIBLE, GetPlayableMapRect())
    call SetCameraFieldForPlayer(Player(0), CAMERA_FIELD_TARGET_DISTANCE, 3000.00, 0)
    call SetCameraFieldForPlayer(Player(1), CAMERA_FIELD_TARGET_DISTANCE, 3000.00, 0)
    call SetCameraFieldForPlayer(Player(2), CAMERA_FIELD_TARGET_DISTANCE, 3000.00, 0)
    call SetCameraFieldForPlayer(Player(3), CAMERA_FIELD_TARGET_DISTANCE, 3000.00, 0)
    call SetCameraFieldForPlayer(Player(4), CAMERA_FIELD_TARGET_DISTANCE, 3000.00, 0)
    call SetCameraFieldForPlayer(Player(5), CAMERA_FIELD_TARGET_DISTANCE, 3000.00, 0)
    call SetCameraFieldForPlayer(Player(6), CAMERA_FIELD_TARGET_DISTANCE, 3000.00, 0)
    call SetCameraFieldForPlayer(Player(7), CAMERA_FIELD_TARGET_DISTANCE, 3000.00, 0)
    call SetTimeOfDay(12.00)
    call SetTimeOfDayScalePercentBJ(0.00)
    call InitHashtableBJ()
    call SelectUnitForPlayerSingle(gg_unit_Hpal_0001, Player(0))
    call SetPlayerAbilityAvailableBJ(false, 'Aspb', GetOwningPlayer(gg_unit_Hpal_0001))
endfunction

//===========================================================================
function InitTrig_Int takes nothing returns nothing
    set gg_trg_Int=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_Int, 0.00)
    call TriggerAddAction(gg_trg_Int, function Trig_Int_Actions)
endfunction

//===========================================================================
// Trigger: Defend Setup
//===========================================================================
function Trig_Defend_Setup_Func002A takes nothing returns nothing
    call TriggerRegisterUnitEvent(gg_trg_Defend_Set2, GetEnumUnit(), EVENT_UNIT_DAMAGED)
endfunction

function Trig_Defend_Setup_Actions takes nothing returns nothing
    call TriggerRegisterEnterRectSimple(gg_trg_Defend_Set1, GetPlayableMapRect())
    call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()), function Trig_Defend_Setup_Func002A)
endfunction

//===========================================================================
function InitTrig_Defend_Setup takes nothing returns nothing
    set gg_trg_Defend_Setup=CreateTrigger()
    call TriggerAddAction(gg_trg_Defend_Setup, function Trig_Defend_Setup_Actions)
endfunction

//===========================================================================
// Trigger: Defend Set1
//===========================================================================
function Trig_Defend_Set1_Actions takes nothing returns nothing
    call TriggerRegisterUnitEvent(gg_trg_Defend_Set2, GetEnteringUnit(), EVENT_UNIT_DAMAGED)
endfunction

//===========================================================================
function InitTrig_Defend_Set1 takes nothing returns nothing
    set gg_trg_Defend_Set1=CreateTrigger()
    call TriggerAddAction(gg_trg_Defend_Set1, function Trig_Defend_Set1_Actions)
endfunction

//===========================================================================
// Trigger: Defend Set2
//===========================================================================
function Trig_Defend_Set2_Conditions takes nothing returns boolean
    if ( not ( GetEventDamage() > 0.01 ) ) then
        return false
    endif
    return true
endfunction

function Trig_Defend_Set2_Actions takes nothing returns nothing
    call CreateTextTagUnitBJ(I2S(R2I(GetEventDamage())), GetTriggerUnit(), - 30.00, 10.00, 100.00, 100.00, 100.00, 0)
    call SetTextTagVelocityBJ(GetLastCreatedTextTag(), 160.00, 90.00)
    call SetTextTagPermanentBJ(GetLastCreatedTextTag(), false)
    call SetTextTagLifespanBJ(GetLastCreatedTextTag(), 1.40)
    call SetTextTagFadepointBJ(GetLastCreatedTextTag(), 0.40)
endfunction

//===========================================================================
function InitTrig_Defend_Set2 takes nothing returns nothing
    set gg_trg_Defend_Set2=CreateTrigger()
    call TriggerAddCondition(gg_trg_Defend_Set2, Condition(function Trig_Defend_Set2_Conditions))
    call TriggerAddAction(gg_trg_Defend_Set2, function Trig_Defend_Set2_Actions)
endfunction

//===========================================================================
// Trigger: Gangza
//===========================================================================
function Trig_Gangza_Actions takes nothing returns nothing
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=25
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        call DisplayTextToForce(GetPlayersAll(), "TRIGSTR_017")
        set bj_forLoopAIndex=bj_forLoopAIndex + 1
    endloop
    call PlaySoundBJ(gg_snd_Kujo_Jotaro_Start)
endfunction

//===========================================================================
function InitTrig_Gangza takes nothing returns nothing
    set gg_trg_Gangza=CreateTrigger()
    call TriggerRegisterPlayerEventEndCinematic(gg_trg_Gangza, Player(0))
    call TriggerAddAction(gg_trg_Gangza, function Trig_Gangza_Actions)
endfunction

//===========================================================================
// Trigger: Jaebachi
//===========================================================================
function Trig_Jaebachi_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'AHtc' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Jaebachi_Func002Func001C takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetEnumUnit()) == 'ugho' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Jaebachi_Func002A takes nothing returns nothing
    if ( Trig_Jaebachi_Func002Func001C() ) then
        call SetUnitPositionLoc(GetEnumUnit(), GetRandomLocInRect(GetPlayableMapRect()))
    else
    endif
endfunction

function Trig_Jaebachi_Actions takes nothing returns nothing
    call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()), function Trig_Jaebachi_Func002A)
endfunction

//===========================================================================
function InitTrig_Jaebachi takes nothing returns nothing
    set gg_trg_Jaebachi=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Jaebachi, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Jaebachi, Condition(function Trig_Jaebachi_Conditions))
    call TriggerAddAction(gg_trg_Jaebachi, function Trig_Jaebachi_Actions)
endfunction

//===========================================================================
// Trigger: Teleport
//===========================================================================
function Trig_Teleport_Conditions takes nothing returns boolean
    if ( not ( GetIssuedOrderIdBJ() == String2OrderIdBJ("patrol") ) ) then
        return false
    endif
    return true
endfunction

function Trig_Teleport_Actions takes nothing returns nothing
    call SetUnitX(gg_unit_Hpal_0001, GetLocationX(GetOrderPointLoc()))
    call SetUnitY(gg_unit_Hpal_0001, GetLocationY(GetOrderPointLoc()))
    call IssueImmediateOrderBJ(gg_unit_Hpal_0001, "holdposition")
endfunction

//===========================================================================
function InitTrig_Teleport takes nothing returns nothing
    set gg_trg_Teleport=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Teleport, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
    call TriggerAddCondition(gg_trg_Teleport, Condition(function Trig_Teleport_Conditions))
    call TriggerAddAction(gg_trg_Teleport, function Trig_Teleport_Actions)
endfunction

//===========================================================================
// Trigger: Jotaro Melee Attack 1
//===========================================================================
function Trig_Jotaro_Melee_Attack_1_Func003A takes nothing returns nothing
    call TriggerRegisterUnitEvent(gg_trg_Jotaro_Melee_Attack_3, GetEnumUnit(), EVENT_UNIT_DAMAGED)
endfunction

function Trig_Jotaro_Melee_Attack_1_Actions takes nothing returns nothing
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()), function Trig_Jotaro_Melee_Attack_1_Func003A)
endfunction

//===========================================================================
function InitTrig_Jotaro_Melee_Attack_1 takes nothing returns nothing
    set gg_trg_Jotaro_Melee_Attack_1=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_Jotaro_Melee_Attack_1, 0.00)
    call TriggerAddAction(gg_trg_Jotaro_Melee_Attack_1, function Trig_Jotaro_Melee_Attack_1_Actions)
endfunction

//===========================================================================
// Trigger: Jotaro Melee Attack 2
//===========================================================================
function Trig_Jotaro_Melee_Attack_2_Actions takes nothing returns nothing
    call TriggerRegisterUnitEvent(gg_trg_Jotaro_Melee_Attack_3, GetEnteringUnit(), EVENT_UNIT_DAMAGED)
endfunction

//===========================================================================
function InitTrig_Jotaro_Melee_Attack_2 takes nothing returns nothing
    set gg_trg_Jotaro_Melee_Attack_2=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Jotaro_Melee_Attack_2, GetPlayableMapRect())
    call TriggerAddAction(gg_trg_Jotaro_Melee_Attack_2, function Trig_Jotaro_Melee_Attack_2_Actions)
endfunction

//===========================================================================
// Trigger: Jotaro Melee Attack 3
//
// 평타 시 이펙트 생성하는 내용의 트리거.
// 지도 시험하는 데 평타가 너무 심심해서 이번에도 넣어줬습니다/
// 어색해 !!!!!!!!!!!!!!!!!!!!
//===========================================================================
function Trig_Jotaro_Melee_Attack_3_Conditions takes nothing returns boolean
    if ( not ( GetUnitTypeId(GetEventDamageSource()) == 'Hpal' ) ) then
        return false
    endif
    if ( not ( UnitHasBuffBJ(GetTriggerUnit(), 'Bssd') == true ) ) then
        return false
    endif
    return true
endfunction

function Trig_Jotaro_Melee_Attack_3_Actions takes nothing returns nothing
    call s__TrigVariables_SettingEx(1) // INLINED!!
                        if s__TrigVariables_Stage[GlobalTV] == 1 then
    call s__TrigVariables_Setunit(GlobalTV,0 , GetEventDamageSource())
    call s__TrigVariables_Setunit(GlobalTV,1 , GetTriggerUnit())
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,0 , GetUnitLoc((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , GetUnitLoc((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))))) // INLINED!!
    call s__TrigVariables_Setreal(GlobalTV,0 , AngleBetweenPoints((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))))) // INLINED!!
    call ND(GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) , 0.15 , 20) // INLINED!!
    call SetUnitAnimation((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), "stand hit") // INLINED!!
    call SetUnitFacingToFaceUnitTimed((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 0) // INLINED!!
    call UnitRemoveBuffBJ('Bssd', GetTriggerUnit())
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.00)
                        elseif s__TrigVariables_Stage[GlobalTV] == 2 then
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect qqqqq.mdx", (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), "chest")) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 100.00, (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h000', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call s__TrigVariables_Setunit(GlobalTV,2 , GetLastCreatedUnit())
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), 16)
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.50)
                        elseif s__TrigVariables_Stage[GlobalTV] <= 7 then
    call SetUnitVertexColorBJ((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))), 100, 100, 100, ( ( I2R(s__TrigVariables_Stage[GlobalTV]) - 2.00 ) * 20.00 )) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.02)
                        else
    call RemoveUnit((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2)))) // INLINED!!
    call s__TrigVariables_Flush(GlobalTV)
                        endif
endfunction

//===========================================================================
function InitTrig_Jotaro_Melee_Attack_3 takes nothing returns nothing
    set gg_trg_Jotaro_Melee_Attack_3=CreateTrigger()
    call s__TrigVariables_RegisterTimerPutsTriggerToSleep(gg_trg_Jotaro_Melee_Attack_3)
    call TriggerAddCondition(gg_trg_Jotaro_Melee_Attack_3, Condition(function Trig_Jotaro_Melee_Attack_3_Conditions))
    call TriggerAddAction(gg_trg_Jotaro_Melee_Attack_3, function Trig_Jotaro_Melee_Attack_3_Actions)
endfunction

//===========================================================================
// Trigger: Jotaro Q
//
// 필살기 곡선 이동으로 떼워버리기
// 록1X값 * (1-시간) * (1-시간) + 록2X값 * 시간 * 시간 + 록3X값 * 2 * 시간 * (1-시간)
// 카쿄인 전에서 외친 내가 심판한다 ! 는 임팩트가 너무 강해 사갓테로 !로 썼어용..
//===========================================================================
function Trig_Jotaro_Q_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A002' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Jotaro_Q_Func032A takes nothing returns nothing
    call SetUnitManaBJ(GetEnumUnit(), ( GetUnitStateSwap(UNIT_STATE_MANA, GetEnumUnit()) + 5.00 ))
    if GetUnitStateSwap(UNIT_STATE_MANA, GetEnumUnit()) >= 100.00 then
    call GroupRemoveUnitSimple(GetEnumUnit(), (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1)))) // INLINED!!
    call RemoveUnit(GetEnumUnit())
    else
    call SetUnitVertexColorBJ(GetEnumUnit(), 100, 100, 100, GetUnitStateSwap(UNIT_STATE_MANA, GetEnumUnit()))
    endif
endfunction

function Trig_Jotaro_Q_Func062002003001 takes nothing returns boolean
    return ( IsUnitAliveBJ(GetFilterUnit()) == true )
endfunction

function Trig_Jotaro_Q_Func062002003002 takes nothing returns boolean
    return ( IsUnitEnemy(GetFilterUnit(), GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) == true ) // INLINED!!
endfunction

function Trig_Jotaro_Q_Func062002003 takes nothing returns boolean
    return GetBooleanAnd((IsUnitAliveBJ(GetFilterUnit()) == true), (IsUnitEnemy(GetFilterUnit(), GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) == true)) // INLINED!!
endfunction

function Trig_Jotaro_Q_Func063A takes nothing returns nothing
    call SetUnitAnimation(GetEnumUnit(), "stand hit")
    call UnitDamageTargetBJ((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), GetEnumUnit(), 300.00, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect qqqqq.mdx", GetEnumUnit(), "chest"))
endfunction

function Trig_Jotaro_Q_Actions takes nothing returns nothing
    call s__TrigVariables_SettingEx(1) // INLINED!!
                        if s__TrigVariables_Stage[GlobalTV] == 1 then
    call s__TrigVariables_Setunit(GlobalTV,0 , GetTriggerUnit())
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,0 , GetUnitLoc((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , GetSpellTargetLoc())
    call s__TrigVariables_Setreal(GlobalTV,0 , AngleBetweenPoints((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))))) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 300.00, (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call s__TrigVariables_SetgroupAutoRemove(GlobalTV,1 , CreateGroup())
    call PlaySoundOnUnitBJ(gg_snd_Kujo_JotaroQ1, 100, (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call IssueTargetOrderBJ(gg_unit_hhou_0003, "magicleash", (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.00)
                        elseif s__TrigVariables_Stage[GlobalTV] == 2 then
    call SetUnitAnimationByIndex((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 3) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl", (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), "origin")) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,2 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 250.00, ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))) - 150.00 ))) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectLoc("Model\\Effect Dark Portal Target Blue.mdx", (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))))) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectLoc("Abilities\\Spells\\Items\\TomeOfRetraining\\TomeOfRetrainingCaster.mdl", (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))))) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,3 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), - 400.00, ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))) + 135.00 ))) // INLINED!!
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=15
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        call s__TrigVariables_Setreal(GlobalTV,1 , ( - 0.20 + ( I2R(GetForLoopIndexA()) * 0.10 ) ))
        call s__TrigVariables_Setlocation(GlobalTV,0 , Location(( ( GetLocationX((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2)))) * ( ( 1 - (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) ) * ( 1 - (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) ) ) ) + ( ( GetLocationX((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1)))) * ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) * (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) ) ) + ( GetLocationX((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (3)))) * ( 2.00 * ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) * ( 1 - (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) ) ) ) ) ) ), ( ( GetLocationY((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2)))) * ( ( 1 - (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) ) * ( 1 - (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) ) ) ) + ( ( GetLocationY((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1)))) * ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) * (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) ) ) + ( GetLocationY((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (3)))) * ( 2.00 * ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) * ( 1 - (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) ) ) ) ) ) ))) // INLINED!!
        call CreateNUnitsAtLoc(1, 'h000', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
        call s__TrigVariables_Setunit(GlobalTV,((GetForLoopIndexA())) , GetLastCreatedUnit()) // INLINED!!
        call SetUnitManaBJ(GetLastCreatedUnit(), 30.00)
        call SetUnitVertexColorBJ(GetLastCreatedUnit(), 100, 100, 100, 100.00)
        call SetUnitAnimationByIndex(GetLastCreatedUnit(), 18)
        call SetUnitTimeScalePercent(GetLastCreatedUnit(), 150.00)
        call SetUnitX(GetLastCreatedUnit(), GetLocationX((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
        call SetUnitY(GetLastCreatedUnit(), GetLocationY((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
        set bj_forLoopAIndex=bj_forLoopAIndex + 1
    endloop
    call s__TrigVariables_Setreal(GlobalTV,1 , 0.00)
    call SetUnitVertexColorBJ((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 100, 100, 100, 0.00) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.00)
                        elseif s__TrigVariables_Stage[GlobalTV] <= 29 then
    if s__TrigVariables_Stage[GlobalTV] <= 14 then
    call s__TrigVariables_Setreal(GlobalTV,1 , ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) + 0.10 )) // INLINED!!
    call s__TrigVariables_Setlocation(GlobalTV,0 , Location(( ( GetLocationX((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2)))) * ( ( 1 - (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) ) * ( 1 - (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) ) ) ) + ( ( GetLocationX((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1)))) * ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) * (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) ) ) + ( GetLocationX((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (3)))) * ( 2.00 * ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) * ( 1 - (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) ) ) ) ) ) ), ( ( GetLocationY((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2)))) * ( ( 1 - (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) ) * ( 1 - (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) ) ) ) + ( ( GetLocationY((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1)))) * ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) * (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) ) ) + ( GetLocationY((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (3)))) * ( 2.00 * ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) * ( 1 - (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) ) ) ) ) ) ))) // INLINED!!
    call SetUnitX((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), GetLocationX((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call SetUnitY((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), GetLocationY((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    endif
    call GroupAddUnitSimple((LoadUnitHandle(s__TrigVariables_Hashunit, 0, (GlobalTV) * s__TrigVariables_arraySize + (( s__TrigVariables_Stage[GlobalTV] - 1 )))), (LoadGroupHandle(s__TrigVariables_Hashgroup, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1)))) // INLINED!!
    call SetUnitTimeScalePercent((LoadUnitHandle(s__TrigVariables_Hashunit, 0, (GlobalTV) * s__TrigVariables_arraySize + (( s__TrigVariables_Stage[GlobalTV] - 1 )))), 0.00) // INLINED!!
    call ForGroupBJ((LoadGroupHandle(s__TrigVariables_Hashgroup, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), function Trig_Jotaro_Q_Func032A) // INLINED!!
    if s__TrigVariables_Stage[GlobalTV] == 12 then
    call ND(GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) , 0.15 , 50) // INLINED!!
    call PlaySoundOnUnitBJ(gg_snd_Kujo_JotaroQ2, 100, (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,0 , GetUnitLoc((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,4 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 300.00, (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect TX_White2.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 175.00, 100, 100)
    call SetUnitVertexColorBJ(GetLastCreatedUnit(), 100, 100, 100, 25.00)
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 125.00, 0.00)
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), 0)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (4))), ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))) + 180.00 )) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Holy Stomp.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 125.00, 0.00)
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), 0)
    call SetUnitScalePercent(GetLastCreatedUnit(), 125.00, 100, 100)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (4))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl", GetLastCreatedUnit(), "origin"))
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Dust Wave Ice.mdx", GetLastCreatedUnit(), "origin"))
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Hit Wave.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 150.00, 100, 100)
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 125.00, 0.00)
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), 0)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (4))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Dust Wave Ice.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 250.00, 100, 100)
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 125.00, 0.00)
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), 0)
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,4 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 450.00, (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call s__TrigVariables_SetgroupAutoRemove(GlobalTV,0 , GetUnitsInRangeOfLocMatching(300.00, (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (4))), Condition(function Trig_Jotaro_Q_Func062002003))) // INLINED!!
    call ForGroupBJ((LoadGroupHandle(s__TrigVariables_Hashgroup, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), function Trig_Jotaro_Q_Func063A) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (4))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Fire Works Dragon Head2.mdx", GetLastCreatedUnit(), "origin"))
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Interceptor Shell Explosion.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 200.00, 100, 100)
    call SetUnitVertexColorBJ(GetLastCreatedUnit(), 100, 100, 100, 75.00)
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 125.00, 0.00)
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), 0)
    call CreateNUnitsAtLoc(1, 'h09P', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (4))), GetRandomDirectionDeg()) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Air Cannon.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 125.00, 0.00)
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), GetRandomInt(0, 180))
    call CreateNUnitsAtLoc(1, 'h09P', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (4))), GetRandomDirectionDeg()) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Air Cannon.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 150.00, 100, 100)
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 125.00, 0.00)
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), GetRandomInt(0, 180))
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (4))), ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))) + 205.00 )) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Nitu.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 200.00, 100, 100)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (4))), ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))) - 205.00 )) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Nitu.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 200.00, 100, 100)
    elseif s__TrigVariables_Stage[GlobalTV] == 13 then
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,3 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), - 500.00, ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))) + 120.00 ))) // INLINED!!
    endif
    call s__TrigVariables_SleepForStageNext(GlobalTV,( .015 ))
                        elseif s__TrigVariables_Stage[GlobalTV] == 30 then
    call KBH((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) , - 150.00 , 0.40 , (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))) , "Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl" , false) // INLINED!!
    call SetUnitTimeScalePercent((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 100.00) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.00)
                        elseif s__TrigVariables_Stage[GlobalTV] <= 40 then
    if s__TrigVariables_Stage[GlobalTV] == 33 then
    call IssueImmediateOrderBJ(gg_unit_hhou_0003, "stop")
    endif
    call SetUnitVertexColorBJ((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 100, 100, 100, ( ( I2R(s__TrigVariables_Stage[GlobalTV]) - 31.00 ) * 10.00 )) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.05)
                        else
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , GetUnitLoc((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))))) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), bj_UNIT_FACING) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect TX_Shunshenzhishu.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 200.00, 0.00)
    call SetUnitScalePercent(GetLastCreatedUnit(), 150.00, 100, 100)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), bj_UNIT_FACING) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Canying.mdx", GetLastCreatedUnit(), "origin"))
    call RemoveUnit((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1)))) // INLINED!!
    call s__TrigVariables_Flush(GlobalTV)
                        endif
endfunction

//===========================================================================
function InitTrig_Jotaro_Q takes nothing returns nothing
    set gg_trg_Jotaro_Q=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Jotaro_Q, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call s__TrigVariables_RegisterTimerPutsTriggerToSleep(gg_trg_Jotaro_Q)
    call TriggerAddCondition(gg_trg_Jotaro_Q, Condition(function Trig_Jotaro_Q_Conditions))
    call TriggerAddAction(gg_trg_Jotaro_Q, function Trig_Jotaro_Q_Actions)
endfunction

//===========================================================================
// Trigger: Jotaro W
//
// 빚의 영수증이다
//===========================================================================
function Trig_Jotaro_W_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A005' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Jotaro_W_Func040002003001 takes nothing returns boolean
    return ( IsUnitAliveBJ(GetFilterUnit()) == true )
endfunction

function Trig_Jotaro_W_Func040002003002 takes nothing returns boolean
    return ( IsUnitEnemy(GetFilterUnit(), GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) == true ) // INLINED!!
endfunction

function Trig_Jotaro_W_Func040002003 takes nothing returns boolean
    return GetBooleanAnd((IsUnitAliveBJ(GetFilterUnit()) == true), (IsUnitEnemy(GetFilterUnit(), GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) == true)) // INLINED!!
endfunction

function Trig_Jotaro_W_Func041A takes nothing returns nothing
    call SetUnitAnimation(GetEnumUnit(), "stand hit")
    call UnitDamageTargetBJ((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), GetEnumUnit(), 475.00, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect qqqqq.mdx", GetEnumUnit(), "chest"))
endfunction

function Trig_Jotaro_W_Actions takes nothing returns nothing
    call s__TrigVariables_SettingEx(1) // INLINED!!
                        if s__TrigVariables_Stage[GlobalTV] == 1 then
    call s__TrigVariables_Setunit(GlobalTV,0 , GetTriggerUnit())
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,0 , GetUnitLoc((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , GetSpellTargetLoc())
    call s__TrigVariables_Setreal(GlobalTV,0 , AngleBetweenPoints((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))))) // INLINED!!
    call PlaySoundOnUnitBJ(gg_snd_Kujo_JotaroW1, 100, (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call IssueTargetOrderBJ(gg_unit_hhou_0003, "magicleash", (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.00)
                        elseif s__TrigVariables_Stage[GlobalTV] == 2 then
    call SetUnitAnimationByIndex((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 5) // INLINED!!
    call SetUnitTimeScalePercent((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 75.00) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl", (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), "origin")) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,2 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), - 300.00, (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h000', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call s__TrigVariables_Setunit(GlobalTV,1 , GetLastCreatedUnit())
    call SetUnitAnimationByIndex((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 4) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Abilities\\Spells\\Human\\Invisibility\\InvisibilityTarget.mdl", (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), "hand left")) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect 6th Element.mdx", (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), "hand left")) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectLoc("Model\\Effect Dark Portal Target Blue.mdx", (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))))) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.00)
                        elseif s__TrigVariables_Stage[GlobalTV] <= 12 then
    if ModuloInteger(s__TrigVariables_Stage[GlobalTV], 4) == 0 then
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Power Charge White.mdx", (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), "hand left")) // INLINED!!
    endif
    call s__TrigVariables_Setreal(GlobalTV,1 , GetRandomReal(0.00, 100.00))
    call SetUnitScalePercent((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), GetRandomReal(100.00, 125.00), 100, 100) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.03)
                        elseif s__TrigVariables_Stage[GlobalTV] == 13 then
    call PlaySoundOnUnitBJ(gg_snd_Kujo_JotaroW2, 100, (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call PlaySoundOnUnitBJ(gg_snd_Kujo_JotaroW3, 100, (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call KBH((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) , 550 , 0.06 , (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))) , "Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl" , false) // INLINED!!
    call SetUnitScalePercent((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 100.00, 100, 100) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectLoc("Model\\Effect Fuzzy Stomp.mdx", (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))))) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectLoc("Abilities\\Spells\\Human\\ThunderClap\\ThunderClapCaster.mdl", (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))))) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,( .067 ))
                        elseif s__TrigVariables_Stage[GlobalTV] == 14 then
    call ND(GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) , 0.15 , 50) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 400.00, (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call s__TrigVariables_SetgroupAutoRemove(GlobalTV,0 , GetUnitsInRangeOfLocMatching(350.00, (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), Condition(function Trig_Jotaro_W_Func040002003))) // INLINED!!
    call ForGroupBJ((LoadGroupHandle(s__TrigVariables_Hashgroup, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), function Trig_Jotaro_W_Func041A) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), GetRandomDirectionDeg()) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Dust Wave Rune.mdx", GetLastCreatedUnit(), "origin"))
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Hit Wave.mdx", GetLastCreatedUnit(), "origin"))
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Holy Stomp.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 150.00, 100, 100)
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 20.00, 0.00)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Dash Sfx.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 37.50, 100, 100)
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 200.00, 0.00)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), GetRandomDirectionDeg()) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect AZ_Hit New Orange.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 225.00, 0.00)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Dota2 War Stomp Caster.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), 0)
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 225.00, 0.00)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))) + 180.00 )) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Nitu.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 175.00, 100, 100)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))) + 180.00 )) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Gran Rey Cero by Deckai Orange.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 225.00, 0.00)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Archor Claw Target.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 200.00, 100, 100)
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 225.00, 0.00)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Dust Wave Rune.mdx", GetLastCreatedUnit(), "origin"))
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Hit Wave.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 150.00, 100, 100)
    call SetUnitVertexColorBJ(GetLastCreatedUnit(), 100, 100, 100, 50.00)
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 225.00, 0.00)
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), 0)
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 550.00, (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Dust Wave Rune.mdx", GetLastCreatedUnit(), "origin"))
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Hit Wave.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 175.00, 100, 100)
    call SetUnitVertexColorBJ(GetLastCreatedUnit(), 100, 100, 100, 50.00)
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 225.00, 0.00)
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), 0)
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.20)
                        elseif s__TrigVariables_Stage[GlobalTV] == 15 then
    call IssueImmediateOrderBJ(gg_unit_hhou_0003, "stop")
    call SetUnitTimeScalePercent((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 100.00) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.50)
                        else
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , GetUnitLoc((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))))) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), bj_UNIT_FACING) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect TX_Shunshenzhishu.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 200.00, 0.00)
    call SetUnitScalePercent(GetLastCreatedUnit(), 150.00, 100, 100)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), bj_UNIT_FACING) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Canying.mdx", GetLastCreatedUnit(), "origin"))
    call RemoveUnit((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1)))) // INLINED!!
    call s__TrigVariables_Flush(GlobalTV)
                        endif
endfunction

//===========================================================================
function InitTrig_Jotaro_W takes nothing returns nothing
    set gg_trg_Jotaro_W=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Jotaro_W, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call s__TrigVariables_RegisterTimerPutsTriggerToSleep(gg_trg_Jotaro_W)
    call TriggerAddCondition(gg_trg_Jotaro_W, Condition(function Trig_Jotaro_W_Conditions))
    call TriggerAddAction(gg_trg_Jotaro_W, function Trig_Jotaro_W_Actions)
endfunction

//===========================================================================
// Trigger: Jotaro E
//
// 더, 더, 더.. 달보다 더 높이
// 하이거 댄 더 문
//===========================================================================
function Trig_Jotaro_E_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A001' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Jotaro_E_Func069002003001 takes nothing returns boolean
    return ( IsUnitAliveBJ(GetFilterUnit()) == true )
endfunction

function Trig_Jotaro_E_Func069002003002 takes nothing returns boolean
    return ( IsUnitEnemy(GetFilterUnit(), GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) == true ) // INLINED!!
endfunction

function Trig_Jotaro_E_Func069002003 takes nothing returns boolean
    return GetBooleanAnd((IsUnitAliveBJ(GetFilterUnit()) == true), (IsUnitEnemy(GetFilterUnit(), GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) == true)) // INLINED!!
endfunction

function Trig_Jotaro_E_Func070A takes nothing returns nothing
    local location a= GetUnitLoc(GetEnumUnit())
    local location b= PolarProjectionBJ(( a ), ( 105.00 - ( DistanceBetweenPoints((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))), ( a )) / 6.00 ) ), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call SetUnitX(GetEnumUnit(), GetLocationX(( b )))
    call SetUnitY(GetEnumUnit(), GetLocationY(( b )))
    call DestroyEffectBJ(AddSpecialEffectLoc("Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl", ( a )))
    call RemoveLocation(( a ))
    call RemoveLocation(( b ))
    set a=null
    set b=null
    call SetUnitAnimation(GetEnumUnit(), "stand hit")
    call UnitDamageTargetBJ((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), GetEnumUnit(), 100.00, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect qqqqq.mdx", GetEnumUnit(), "chest"))
endfunction

function Trig_Jotaro_E_Actions takes nothing returns nothing
    call s__TrigVariables_SettingEx(1) // INLINED!!
                        if s__TrigVariables_Stage[GlobalTV] == 1 then
    call s__TrigVariables_Setunit(GlobalTV,0 , GetTriggerUnit())
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,0 , GetUnitLoc((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , GetSpellTargetLoc())
    call s__TrigVariables_Setreal(GlobalTV,0 , AngleBetweenPoints((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))))) // INLINED!!
    call PlaySoundOnUnitBJ(gg_snd_Kujo_JotaroE1, 100, (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call AddSpecialEffectTargetUnitBJ("origin", (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), "Model\\Effect AZ_D0801.mdx") // INLINED!!
    call IssueTargetOrderBJ(gg_unit_hhou_0003, "magicleash", (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call s__TrigVariables_Seteffect(GlobalTV,0 , AddSpecialEffectTarget("Model\\Effect Mana Drain Caster x6.mdx", (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), "origin")) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), GetRandomDirectionDeg()) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Sprint_Cast_Base.mdx", GetLastCreatedUnit(), "origin"))
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Devil Slam.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 125.00, 100, 100)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), GetRandomDirectionDeg()) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl", GetLastCreatedUnit(), "origin"))
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.00)
                        elseif s__TrigVariables_Stage[GlobalTV] == 2 then
    call ND(GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) , 0.15 , 50) // INLINED!!
    call SetUnitAnimationByIndex((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 8) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,2 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), - 300.00, (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h000', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call s__TrigVariables_Setunit(GlobalTV,1 , GetLastCreatedUnit())
    call SetUnitAnimationByIndex((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 1) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Abilities\\Spells\\Human\\Invisibility\\InvisibilityTarget.mdl", (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), "hand right")) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Abilities\\Spells\\Human\\Invisibility\\InvisibilityTarget.mdl", (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), "hand left")) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))), GetRandomDirectionDeg()) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect [Sepll]Linasun _T2_Blast Blue.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 125.00, 100, 100)
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.30)
                        elseif s__TrigVariables_Stage[GlobalTV] == 3 then
    call SetUnitTimeScalePercent((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 15.00) // INLINED!!
    call SetUnitAnimationByIndex((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 9) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))), bj_UNIT_FACING) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Black Blink.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 150.00, 0.00)
    call DestroyEffectBJ(AddSpecialEffectLoc("Model\\Effect Black Blink.mdx", (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))))) // INLINED!!
    call KBH((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) , DistanceBetweenPoints((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1)))) , 0.20 , (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))) , "Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl" , false) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.00)
                        elseif s__TrigVariables_Stage[GlobalTV] <= 13 then
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,2 , GetUnitLoc((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))))) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h000', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call SetUnitVertexColorBJ(GetLastCreatedUnit(), 100.00, 100.00, 100, 50.00)
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), 20)
    call UnitApplyTimedLife(GetLastCreatedUnit(), 'Bmec', 1)
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.02)
                        elseif s__TrigVariables_Stage[GlobalTV] == 14 then
    call PlaySoundOnUnitBJ(gg_snd_Kujo_JotaroE2, 100, (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call SetUnitAnimationByIndex((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 3) // INLINED!!
    call SetUnitTimeScalePercent((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 100.00) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h000', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call s__TrigVariables_Setunit(GlobalTV,2 , GetLastCreatedUnit())
    call SetUnitVertexColorBJ(GetLastCreatedUnit(), 100, 100, 100, 50.00)
    call SetUnitTimeScalePercent(GetLastCreatedUnit(), 75.00)
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), 3)
    call CreateNUnitsAtLoc(1, 'h000', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call s__TrigVariables_Setunit(GlobalTV,3 , GetLastCreatedUnit())
    call SetUnitVertexColorBJ(GetLastCreatedUnit(), 100, 100, 100, 50.00)
    call SetUnitTimeScalePercent(GetLastCreatedUnit(), 115.00)
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), 3)
    call s__TrigVariables_Seteffect(GlobalTV,1 , AddSpecialEffectTarget("Model\\Effect Star Platinum Ora Ora Rush.mdx", (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), "origin")) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.00)
                        elseif s__TrigVariables_Stage[GlobalTV] <= 64 then
    call CameraSetEQNoiseForPlayer(GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), ( I2R(s__TrigVariables_Stage[GlobalTV]) / 2.00 )) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , GetUnitLoc((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))))) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,2 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 10.00, (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
                        if ModuloInteger(s__TrigVariables_Stage[GlobalTV], 4) == 0 then
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,3 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 500.00, (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call s__TrigVariables_SetgroupAutoRemove(GlobalTV,0 , GetUnitsInRangeOfLocMatching(350.00, (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (3))), Condition(function Trig_Jotaro_E_Func069002003))) // INLINED!!
    call ForGroupBJ((LoadGroupHandle(s__TrigVariables_Hashgroup, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), function Trig_Jotaro_E_Func070A) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h09P', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), GetRandomDirectionDeg()) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Sprint_Cast_Base.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 10.00, 0.00)
    call SetUnitVertexColorBJ(GetLastCreatedUnit(), 100, 100, 100, 25.00)
    call SetUnitScalePercent(GetLastCreatedUnit(), 125.00, 100, 100)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Dash Sfx.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 200.00, 0.00)
    call SetUnitVertexColorBJ(GetLastCreatedUnit(), 25.00, 50.00, 75.00, 0)
    call SetUnitScalePercent(GetLastCreatedUnit(), 50.00, 100, 100)
                        endif
    call SetUnitX((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), GetLocationX((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))))) // INLINED!!
    call SetUnitY((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), GetLocationY((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))))) // INLINED!!
    call SetUnitX((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))), GetLocationX((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))))) // INLINED!!
    call SetUnitY((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))), GetLocationY((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))))) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))), - 10.00, (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call SetUnitX((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (3))), GetLocationX((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))))) // INLINED!!
    call SetUnitY((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (3))), GetLocationY((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))))) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))), ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))) + GetRandomReal(10.00, - 10.00) )) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect BY_Wood_Eff_Ord_DanGe_Dus_Kuosan_1_1_1.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), GetRandomReal(75.00, 125.00), 100, 100)
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,2 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 125.00, (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
                        if ModuloInteger(s__TrigVariables_Stage[GlobalTV], 2) == 0 then
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))) + 180.00 )) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl", GetLastCreatedUnit(), "origin"))
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), 0)
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 200.00, 0.00)
    call SetUnitScalePercent(GetLastCreatedUnit(), GetRandomReal(125.00, 175.00), 100, 100)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))), GetRandomDirectionDeg()) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl", GetLastCreatedUnit(), "origin"))
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), GetRandomInt(0, 180))
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 200.00, 0.00)
    call SetUnitScalePercent(GetLastCreatedUnit(), 150.00, 100, 100)
    call SetUnitVertexColorBJ(GetLastCreatedUnit(), 100, 100, 100, 100.00)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))), GetRandomDirectionDeg()) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect LB_hdg.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), GetRandomInt(0, 180))
    call SetUnitScalePercent(GetLastCreatedUnit(), GetRandomReal(75.00, 125.00), 100, 100)
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 200.00, 0.00)
    call SetUnitVertexColorBJ(GetLastCreatedUnit(), 100, 100, 100, 50.00)
                        endif
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,2 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), GetRandomReal(150.00, 200.00), ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))) + GetRandomReal(- 50.00, 50.00) ))) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))), GetRandomDirectionDeg()) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Hit Wave.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), GetRandomInt(0, 180))
    call SetUnitScalePercent(GetLastCreatedUnit(), GetRandomReal(125.00, 175.00), 100, 100)
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 200.00, 0.00)
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=2
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))), ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))) + GetRandomReal(- 15.00, 15.00) )) // INLINED!!
        call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect AZ-Slash-White.mdx", GetLastCreatedUnit(), "origin"))
        call SetUnitAnimationByIndex(GetLastCreatedUnit(), GetRandomInt(75, 105))
        call SetUnitScalePercent(GetLastCreatedUnit(), GetRandomReal(100.00, 150.00), 100, 100)
        call SetUnitVertexColorBJ(GetLastCreatedUnit(), 100, 100, 100, 90.00)
        call SetUnitFlyHeightBJ(GetLastCreatedUnit(), GetRandomReal(125.00, 275.00), 0.00)
        set bj_forLoopAIndex=bj_forLoopAIndex + 1
    endloop
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect AZ_D0804.mdx", GetLastCreatedUnit(), "origin"))
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))), ( (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))) + GetRandomReal(- 15.00, 15.00) )) // INLINED!!
    call KBH(GetLastCreatedUnit() , GetRandomReal(150.00, 400.00) , 0.20 , GetRandomDirectionDeg() , "" , true)
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Ora Ora Font.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 200.00, 0.00)
    call SetUnitScalePercent(GetLastCreatedUnit(), GetRandomReal(100.00, 150.00), 100, 100)
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.05)
                        elseif s__TrigVariables_Stage[GlobalTV] == 65 then
    call SetUnitAnimationByIndex((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 4) // INLINED!!
    call SetUnitTimeScalePercent((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 75.00) // INLINED!!
    call KBH((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) , - 300.00 , 0.50 , (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))) , "Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl" , false) // INLINED!!
    call DestroyEffectBJ((LoadEffectHandle(s__TrigVariables_Hasheffect, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call DestroyEffectBJ((LoadEffectHandle(s__TrigVariables_Hasheffect, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1)))) // INLINED!!
    call RemoveUnit((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2)))) // INLINED!!
    call RemoveUnit((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (3)))) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.00)
                        elseif s__TrigVariables_Stage[GlobalTV] <= 75 then
                        if s__TrigVariables_Stage[GlobalTV] == 69 then
    call CameraClearNoiseForPlayer(GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call IssueImmediateOrderBJ(gg_unit_hhou_0003, "stop")
    call SetUnitTimeScalePercent((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 100.00) // INLINED!!
                        endif
    call SetUnitVertexColorBJ((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 100, 100, 100, ( ( I2R(s__TrigVariables_Stage[GlobalTV]) - 65.00 ) * 10.00 )) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.06)
                        else
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2))), - 600.00, (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), bj_UNIT_FACING) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect TX_Shunshenzhishu.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 200.00, 0.00)
    call SetUnitScalePercent(GetLastCreatedUnit(), 150.00, 100, 100)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), bj_UNIT_FACING) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Canying.mdx", GetLastCreatedUnit(), "origin"))
    call RemoveUnit((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1)))) // INLINED!!
    call s__TrigVariables_Flush(GlobalTV)
                        endif
endfunction

//===========================================================================
function InitTrig_Jotaro_E takes nothing returns nothing
    set gg_trg_Jotaro_E=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Jotaro_E, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call s__TrigVariables_RegisterTimerPutsTriggerToSleep(gg_trg_Jotaro_E)
    call TriggerAddCondition(gg_trg_Jotaro_E, Condition(function Trig_Jotaro_E_Conditions))
    call TriggerAddAction(gg_trg_Jotaro_E, function Trig_Jotaro_E_Actions)
endfunction

//===========================================================================
// Trigger: Jotaro F
//
// 나는 판데란 엘리멘탈이다. 나를 경배하라.
//===========================================================================
function Trig_Jotaro_F_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A004' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Jotaro_F_Func024002003001 takes nothing returns boolean
    return ( IsUnitAliveBJ(GetFilterUnit()) == true )
endfunction

function Trig_Jotaro_F_Func024002003002 takes nothing returns boolean
    return ( IsUnitEnemy(GetFilterUnit(), GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) == true ) // INLINED!!
endfunction

function Trig_Jotaro_F_Func024002003 takes nothing returns boolean
    return GetBooleanAnd((IsUnitAliveBJ(GetFilterUnit()) == true), (IsUnitEnemy(GetFilterUnit(), GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) == true)) // INLINED!!
endfunction

function Trig_Jotaro_F_Func025A takes nothing returns nothing
    call SetUnitAnimation(GetEnumUnit(), "stand hit")
    call UnitDamageTargetBJ((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), GetEnumUnit(), 200.00, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect qqqqq.mdx", GetEnumUnit(), "chest"))
endfunction

function Trig_Jotaro_F_Func051002003001 takes nothing returns boolean
    return ( IsUnitAliveBJ(GetFilterUnit()) == true )
endfunction

function Trig_Jotaro_F_Func051002003002 takes nothing returns boolean
    return ( IsUnitEnemy(GetFilterUnit(), GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) == true ) // INLINED!!
endfunction

function Trig_Jotaro_F_Func051002003 takes nothing returns boolean
    return GetBooleanAnd((IsUnitAliveBJ(GetFilterUnit()) == true), (IsUnitEnemy(GetFilterUnit(), GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) == true)) // INLINED!!
endfunction

function Trig_Jotaro_F_Func052A takes nothing returns nothing
    call SetUnitAnimation(GetEnumUnit(), "stand hit")
    call UnitDamageTargetBJ((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), GetEnumUnit(), 200.00, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect qqqqq.mdx", GetEnumUnit(), "chest"))
endfunction

function Trig_Jotaro_F_Actions takes nothing returns nothing
    call s__TrigVariables_SettingEx(1) // INLINED!!
                        if s__TrigVariables_Stage[GlobalTV] == 1 then
    call s__TrigVariables_Setunit(GlobalTV,0 , GetTriggerUnit())
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,0 , GetUnitLoc((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , GetSpellTargetLoc())
    call s__TrigVariables_Setreal(GlobalTV,0 , AngleBetweenPoints((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))))) // INLINED!!
    call PlaySoundOnUnitBJ(gg_snd_Kujo_JotaroF1, 100, (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call IssueTargetOrderBJ(gg_unit_hhou_0003, "magicleash", (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.00)
                        elseif s__TrigVariables_Stage[GlobalTV] == 2 then
    call SetUnitAnimationByIndex((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 7) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl", (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), "origin")) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), - 200.00, (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h000', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call s__TrigVariables_Setunit(GlobalTV,1 , GetLastCreatedUnit())
    call SetUnitAnimationByIndex((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 16) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.13)
                        elseif s__TrigVariables_Stage[GlobalTV] == 3 then
    call PlaySoundOnUnitBJ(gg_snd_Kujo_JotaroF2, 100, (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call PlaySoundOnUnitBJ(gg_snd_Kujo_JotaroQ201, 100, (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call ND(GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) , 0.15 , 50) // INLINED!!
    call KBH((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))) , 350.00 , 0.13 , (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))) , "Abilities\\Weapons\\AncientProtectorMissile\\AncientProtectorMissile.mdl" , false) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 400.00, (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call s__TrigVariables_SetgroupAutoRemove(GlobalTV,0 , GetUnitsInRangeOfLocMatching(300.00, (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), Condition(function Trig_Jotaro_F_Func024002003))) // INLINED!!
    call ForGroupBJ((LoadGroupHandle(s__TrigVariables_Hashgroup, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), function Trig_Jotaro_F_Func025A) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 300.00, (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), GetRandomDirectionDeg()) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl", GetLastCreatedUnit(), "origin"))
    call DestroyEffectBJ(AddSpecialEffectTarget("Abilities\\Spells\\Human\\ThunderClap\\ThunderClapCaster.mdl", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 150.00, 100, 100)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl", GetLastCreatedUnit(), "origin"))
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), 0)
    call SetUnitScalePercent(GetLastCreatedUnit(), 200.00, 100, 100)
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 150.00, 0.00)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Detroit Smash Effect CasterArt.mdx", GetLastCreatedUnit(), "origin"))
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Archor Claw Target.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 150.00, 0.00)
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=3
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        call CreateNUnitsAtLoc(1, 'h09P', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), GetRandomDirectionDeg()) // INLINED!!
        call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Air Cannon.mdx", GetLastCreatedUnit(), "origin"))
        call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 150.00, 0.00)
        call SetUnitAnimationByIndex(GetLastCreatedUnit(), GetRandomInt(0, 180))
        call SetUnitScalePercent(GetLastCreatedUnit(), GetRandomReal(150.00, 250.00), 100, 100)
        set bj_forLoopAIndex=bj_forLoopAIndex + 1
    endloop
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.20)
                        elseif s__TrigVariables_Stage[GlobalTV] == 4 then
    call SetUnitAnimationByIndex((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 8) // INLINED!!
    call SetUnitTimeScalePercent((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 200.00) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.25)
                        elseif s__TrigVariables_Stage[GlobalTV] == 5 then
    call PlaySoundOnUnitBJ(gg_snd_Kujo_JotaroF3, 100, (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call PlaySoundOnUnitBJ(gg_snd_Kujo_JotaroR301, 100, (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call ND(GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) , 0.15 , 50) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 400.00, (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call s__TrigVariables_SetgroupAutoRemove(GlobalTV,0 , GetUnitsInRangeOfLocMatching(300.00, (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), Condition(function Trig_Jotaro_F_Func051002003))) // INLINED!!
    call ForGroupBJ((LoadGroupHandle(s__TrigVariables_Hashgroup, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), function Trig_Jotaro_F_Func052A) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), GetRandomDirectionDeg()) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Dust Wave Rune.mdx", GetLastCreatedUnit(), "origin"))
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Fuzzy Stomp.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 150.00, 100, 100)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), GetRandomDirectionDeg()) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Howling2.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 200.00, 100, 100)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Devil Slam Light.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 150.00, 0.00)
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), 0)
    call SetUnitScalePercent(GetLastCreatedUnit(), 175.00, 100, 100)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Evilwave Blue.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 75.00, 100, 100)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Dust Wave Ice.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), 0)
    call SetUnitScalePercent(GetLastCreatedUnit(), 200.00, 100, 100)
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 150.00, 0.00)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), (LoadReal(s__TrigVariables_Hashreal, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Mythic_Conflagrate Blue.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), 0)
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 150.00, 0.00)
    call SetUnitScalePercent(GetLastCreatedUnit(), 200.00, 100, 100)
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=3
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        call CreateNUnitsAtLoc(1, 'h09P', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), GetRandomDirectionDeg()) // INLINED!!
        call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect LB_hdg.mdx", GetLastCreatedUnit(), "origin"))
        call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 150.00, 0.00)
        call SetUnitAnimationByIndex(GetLastCreatedUnit(), GetRandomInt(0, 180))
        call SetUnitScalePercent(GetLastCreatedUnit(), GetRandomReal(50.00, 75.00), 100, 100)
        call SetUnitVertexColorBJ(GetLastCreatedUnit(), 50.00, 75.00, 100, 50.00)
        set bj_forLoopAIndex=bj_forLoopAIndex + 1
    endloop
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Shinratensei Blue.mdx", GetLastCreatedUnit(), "origin"))
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.20)
                        elseif s__TrigVariables_Stage[GlobalTV] <= 15 then
    if s__TrigVariables_Stage[GlobalTV] == 10 then
    call IssueImmediateOrderBJ(gg_unit_hhou_0003, "stop")
    endif
    call SetUnitVertexColorBJ((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 100, 100, 100, ( ( I2R(s__TrigVariables_Stage[GlobalTV]) - 5.00 ) * 10.00 )) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.02)
                        else
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , GetUnitLoc((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))))) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), bj_UNIT_FACING) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect TX_Shunshenzhishu.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 200.00, 0.00)
    call SetUnitScalePercent(GetLastCreatedUnit(), 150.00, 100, 100)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), bj_UNIT_FACING) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Canying.mdx", GetLastCreatedUnit(), "origin"))
    call RemoveUnit((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1)))) // INLINED!!
    call s__TrigVariables_Flush(GlobalTV)
                        endif
endfunction

//===========================================================================
function InitTrig_Jotaro_F takes nothing returns nothing
    set gg_trg_Jotaro_F=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Jotaro_F, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call s__TrigVariables_RegisterTimerPutsTriggerToSleep(gg_trg_Jotaro_F)
    call TriggerAddCondition(gg_trg_Jotaro_F, Condition(function Trig_Jotaro_F_Conditions))
    call TriggerAddAction(gg_trg_Jotaro_F, function Trig_Jotaro_F_Actions)
endfunction

//===========================================================================
// Trigger: Jotaro R
//
// 내가 시간을 멈춰따
// 그리고 탈출해따
// 뒤졌다 넌
//===========================================================================
function Trig_Jotaro_R_Conditions takes nothing returns boolean
    if ( not ( GetSpellAbilityId() == 'A000' ) ) then
        return false
    endif
    return true
endfunction

function Trig_Jotaro_R_Func070002003001 takes nothing returns boolean
    return ( IsUnitAliveBJ(GetFilterUnit()) == true )
endfunction

function Trig_Jotaro_R_Func070002003002 takes nothing returns boolean
    return ( IsUnitEnemy(GetFilterUnit(), GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) == true ) // INLINED!!
endfunction

function Trig_Jotaro_R_Func070002003 takes nothing returns boolean
    return GetBooleanAnd((IsUnitAliveBJ(GetFilterUnit()) == true), (IsUnitEnemy(GetFilterUnit(), GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) == true)) // INLINED!!
endfunction

function Trig_Jotaro_R_Func077A takes nothing returns nothing
    local location a= GetUnitLoc(GetEnumUnit())
    local location b= PolarProjectionBJ(( a ), GetRandomReal(25.00, 50.00), GetRandomDirectionDeg())
    call SetUnitAnimation(GetEnumUnit(), "stand hit")
    call SetUnitX(GetEnumUnit(), GetLocationX(( b )))
    call SetUnitY(GetEnumUnit(), GetLocationY(( b )))
    call UnitDamageTargetBJ((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), GetEnumUnit(), 50.00, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL) // INLINED!!
    if ModuloInteger(s__TrigVariables_Stage[GlobalTV], 2) == 0 then
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect qqqqq.mdx", GetEnumUnit(), "chest"))
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect AZ_D0804.mdx", GetEnumUnit(), "origin"))
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), ( a ), GetRandomDirectionDeg()) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Punch Slam.mdx", GetLastCreatedUnit(), "origin"))
    call DestroyEffectBJ(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\WarStomp\\WarStompCaster.mdl", GetLastCreatedUnit(), "origin"))
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 150.00, 0.00)
    call SetUnitAnimationByIndex(GetLastCreatedUnit(), GetRandomInt(45, 135))
    call SetUnitVertexColorBJ(GetLastCreatedUnit(), 100, 100, 100, 100.00)
    endif
    call RemoveLocation(( a ))
    call RemoveLocation(( b ))
    set a=null
    set b=null
endfunction

function Trig_Jotaro_R_Actions takes nothing returns nothing
    call s__TrigVariables_SettingEx(1) // INLINED!!
                        if s__TrigVariables_Stage[GlobalTV] == 1 then
    call s__TrigVariables_Setunit(GlobalTV,0 , GetTriggerUnit())
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,0 , GetUnitLoc((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call PlaySoundOnUnitBJ(gg_snd_Kujo_JotaroR1, 100, (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call IssueTargetOrderBJ(gg_unit_hhou_0003, "magicleash", (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.00)
                        elseif s__TrigVariables_Stage[GlobalTV] == 2 then
    call SetUnitAnimationByIndex((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 9) // INLINED!!
    call SetUnitTimeScalePercent((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 115.00) // INLINED!!
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , PolarProjectionBJ((LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 150.00, ( GetUnitFacing((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) - 135.00 ))) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h000', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), GetUnitFacing((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call s__TrigVariables_Setunit(GlobalTV,1 , GetLastCreatedUnit())
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Super Shiny Thingy.mdx", (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), "chest")) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Charm\\CharmTarget.mdl", GetLastCreatedUnit(), "origin"))
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), GetRandomDirectionDeg()) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect AZ_LCDark_E.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 300.00, 100, 100)
    call s__TrigVariables_SleepForStageNext(GlobalTV,1.00)
                        elseif s__TrigVariables_Stage[GlobalTV] == 3 then
    call SetUnitTimeScalePercent((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 100.00) // INLINED!!
    call SetUnitAnimationByIndex((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 5) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Baise-Magic-Shousuo.mdx", (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), "chest")) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), GetRandomDirectionDeg()) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect AZ_Lina(2)_T1_MagicMatrix.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitVertexColorBJ(GetLastCreatedUnit(), 100, 100, 100, 25.00)
    call SetUnitScalePercent(GetLastCreatedUnit(), 300.00, 100, 100)
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.30)
                        elseif s__TrigVariables_Stage[GlobalTV] == 4 then
    call ND(GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) , 0.15 , 50) // INLINED!!
    call IssueImmediateOrderBJ(gg_unit_hhou_0003, "stop")
    call SetUnitTimeScalePercent((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), 100.00) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectLoc("Model\\Effect Blue-Zhendi-Ghost-Big.mdx", (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call s__TrigVariables_Seteffect(GlobalTV,0 , AddSpecialEffectLoc("Model\\Effect AZ_MFZ01.mdx", (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call s__TrigVariables_Seteffect(GlobalTV,1 , AddSpecialEffectLoc("Model\\Effect Antimagic Zone Sky.mdx", (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call s__TrigVariables_Seteffect(GlobalTV,2 , AddSpecialEffectLoc("Model\\Effect Dota2 Tranquility.mdx", (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))))) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), GetRandomDirectionDeg()) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Blue-Hourglass-Mofa.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 200.00, 0.00)
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.00)
                        elseif s__TrigVariables_Stage[GlobalTV] <= 14 then
    call SetUnitVertexColorBJ((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), 100, 100, 100, ( ( I2R(s__TrigVariables_Stage[GlobalTV]) - 4.00 ) * 10.00 )) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.02)
                        elseif s__TrigVariables_Stage[GlobalTV] == 15 then
    call s__TrigVariables_SetlocationAutoRemove(GlobalTV,1 , GetUnitLoc((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))))) // INLINED!!
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), bj_UNIT_FACING) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect TX_Shunshenzhishu.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitFlyHeightBJ(GetLastCreatedUnit(), 200.00, 0.00)
    call SetUnitScalePercent(GetLastCreatedUnit(), 150.00, 100, 100)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1))), bj_UNIT_FACING) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Canying.mdx", GetLastCreatedUnit(), "origin"))
    call RemoveUnit((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1)))) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,3.00)
                        elseif s__TrigVariables_Stage[GlobalTV] == 16 then
    call PlaySoundOnUnitBJ(gg_snd_Kujo_JotaroR2, 100, (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.80)
                        elseif s__TrigVariables_Stage[GlobalTV] == 17 then
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), GetRandomDirectionDeg()) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Blue-Texiao-Xuanzhuan.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 200.00, 100, 100)
    call CreateNUnitsAtLoc(1, 'h09O', GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))), (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), GetRandomDirectionDeg()) // INLINED!!
    call DestroyEffectBJ(AddSpecialEffectTarget("Model\\Effect Blue-Texiao-Xuanzhuan.mdx", GetLastCreatedUnit(), "origin"))
    call SetUnitScalePercent(GetLastCreatedUnit(), 150.00, 100, 100)
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.30)
                        elseif s__TrigVariables_Stage[GlobalTV] == 18 then
    call ND(GetOwningPlayer((LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) , 0.15 , 50) // INLINED!!
    call DestroyEffectBJ((LoadEffectHandle(s__TrigVariables_Hasheffect, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call DestroyEffectBJ((LoadEffectHandle(s__TrigVariables_Hasheffect, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (1)))) // INLINED!!
    call DestroyEffectBJ((LoadEffectHandle(s__TrigVariables_Hasheffect, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (2)))) // INLINED!!
    call s__TrigVariables_SetgroupAutoRemove(GlobalTV,0 , GetUnitsInRangeOfLocMatching(675.00, (LoadLocationHandle(s__TrigVariables_Hashlocation, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), Condition(function Trig_Jotaro_R_Func070002003))) // INLINED!!
    if CountUnitsInGroup((LoadGroupHandle(s__TrigVariables_Hashgroup, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) != 0 then // INLINED!!
    call PlaySoundOnUnitBJ(gg_snd_Kujo_JotaroR4, 100, (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    call PlaySoundOnUnitBJ(gg_snd_Kujo_JotaroR3, 100, (LoadUnitHandle(s__TrigVariables_Hashunit, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0)))) // INLINED!!
    endif
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.10)
                        elseif s__TrigVariables_Stage[GlobalTV] <= 28 then
    call ForGroupBJ((LoadGroupHandle(s__TrigVariables_Hashgroup, 0, ((GlobalTV)) * s__TrigVariables_arraySize + (0))), function Trig_Jotaro_R_Func077A) // INLINED!!
    call s__TrigVariables_SleepForStageNext(GlobalTV,0.02)
                        else
    call s__TrigVariables_Flush(GlobalTV)
                        endif
endfunction

//===========================================================================
function InitTrig_Jotaro_R takes nothing returns nothing
    set gg_trg_Jotaro_R=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Jotaro_R, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call s__TrigVariables_RegisterTimerPutsTriggerToSleep(gg_trg_Jotaro_R)
    call TriggerAddCondition(gg_trg_Jotaro_R, Condition(function Trig_Jotaro_R_Conditions))
    call TriggerAddAction(gg_trg_Jotaro_R, function Trig_Jotaro_R_Actions)
endfunction

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    //Function not found: call InitTrig_TimerPutsTriggerToSleep()
    //Function not found: call InitTrig_TPTTS_SubTrigs()
    //Function not found: call InitTrig_TPTTS_LinkedVariables()
    //Function not found: call InitTrig_TPTTS_LinkedVariables2()
    //Function not found: call InitTrig_TPTTS_LinkedVariables_Array()
    //Function not found: call InitTrig_TPTTS_Copy()
    //Function not found: call InitTrig_TPTTS_WhenEventId()
    //Function not found: call InitTrig_TPTTS_EmptyTrigVars()
    //Function not found: call InitTrig_TimerUtils()
    call InitTrig_UNIT_SELECT()
    call InitTrig_Ani()
    call InitTrig_SeeYA()
    call InitTrig_Int()
    call InitTrig_Defend_Setup()
    call InitTrig_Defend_Set1()
    call InitTrig_Defend_Set2()
    call InitTrig_Gangza()
    call InitTrig_Jaebachi()
    call InitTrig_Teleport()
    call InitTrig_Jotaro_Melee_Attack_1()
    call InitTrig_Jotaro_Melee_Attack_2()
    call InitTrig_Jotaro_Melee_Attack_3()
    call InitTrig_Jotaro_Q()
    call InitTrig_Jotaro_W()
    call InitTrig_Jotaro_E()
    call InitTrig_Jotaro_F()
    call InitTrig_Jotaro_R()
endfunction

//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_Defend_Setup)
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), true)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)

    // Player 1
    call SetPlayerStartLocation(Player(1), 1)
    call ForcePlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_ORC)
    call SetPlayerRaceSelectable(Player(1), true)
    call SetPlayerController(Player(1), MAP_CONTROL_COMPUTER)

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_002
    call SetPlayerTeam(Player(0), 0)

    // Force: TRIGSTR_016
    call SetPlayerTeam(Player(1), 1)

endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 1280.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 1536.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 1280.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 1024.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 1280.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 1024.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 1280.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 1536.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("LordaeronSummerDay")
    call SetAmbientNightSound("LordaeronSummerNight")
    call SetMapMusic("Music", true, 0)
    call InitSounds()
    call CreateAllUnits()
    call InitBlizzard()

    call ExecuteFunc("jasshelper__init889")

    call InitGlobals()
    call InitCustomTriggers()
    call ConditionalTriggerExecute(gg_trg_Defend_Setup) // INLINED!!

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName("TRIGSTR_003")
    call SetMapDescription("TRIGSTR_005")
    call SetPlayers(2)
    call SetTeams(2)
    call SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)

    call DefineStartLocation(0, - 1024.0, - 896.0)
    call DefineStartLocation(1, 0.0, - 640.0)

    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
endfunction




//All initializer functions called in proper order:

//Functions for BigArrays:
function sa__TimerPutsTriggerToSleep__TrigInfo_onDestroy takes nothing returns boolean
local integer this=f__arg_this
            call TriggerRemoveAction(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this], s__TimerPutsTriggerToSleep__TrigInfo_Action[this])
            if s__TimerPutsTriggerToSleep__TrigInfo_Reg[this] != null then
                call RemoveRegion(s__TimerPutsTriggerToSleep__TrigInfo_Reg[this])
            endif
            call RemoveSavedInteger(s__TimerPutsTriggerToSleep__TrigInfo_HASH, 0, GetHandleId(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this]))
            call DestroyTrigger(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this])
            call DestroyTrigger(s__TimerPutsTriggerToSleep__TrigInfo_TrigForCond[this])
            set s__TimerPutsTriggerToSleep__TrigInfo_post[s__TimerPutsTriggerToSleep__TrigInfo_prev[this]]=s__TimerPutsTriggerToSleep__TrigInfo_post[this]
            set s__TimerPutsTriggerToSleep__TrigInfo_prev[s__TimerPutsTriggerToSleep__TrigInfo_post[this]]=s__TimerPutsTriggerToSleep__TrigInfo_prev[this]
            set s__TimerPutsTriggerToSleep__TrigInfo_prev[this]=0
            set s__TimerPutsTriggerToSleep__TrigInfo_post[this]=0
   return true
endfunction
function sa__TimerPutsTriggerToSleep__TrigInfo_create takes nothing returns boolean

            local integer this= s__TimerPutsTriggerToSleep__TrigInfo__allocate()
            call SaveInteger(s__TimerPutsTriggerToSleep__TrigInfo_HASH, 0, GetHandleId(s__TimerPutsTriggerToSleep__TrigInfo_Trig[this]), this)
set f__result_integer= this
   return true
endfunction
function sa__TrigVariables_ExecuteTrigger takes nothing returns boolean
local integer this=f__arg_this
            local integer PreGlobalTV= GlobalTV
            set s__TrigVariables_ThroughTimer=true
            set GlobalTV=this
            set Wait=GlobalTV
            set s__TrigVariables_Destructable[this]=true
            call TriggerExecute(s__TrigVariables_CurrentTrigger[this])
            set s__TrigVariables_ThroughTimer=false
            if s__TrigVariables_Destructable[this] then
                call s__TrigVariables_Flush(this)
            endif
            set GlobalTV=PreGlobalTV
            set Wait=GlobalTV
            call TimerStart(s__TrigVariables_TimerForExecuteTrigger, 0, false, function s__TrigVariables_ExecuteTriggerResetGlobalTV)
   return true
endfunction
function sa__TrigVariables_onDestroy takes nothing returns boolean
local integer this=f__arg_this
            set s__TrigVariables_CurrentTrigger[this]=null
            set s__TrigVariables_EventId[this]=null
            set s__TrigVariables_UserData[this]=0
            set s__TrigVariables_Destructable[this]=false
            call sc__TrigVariables_setVoid(this)
   return true
endfunction
function sa__TrigVariables_DeleteAllTriggers takes nothing returns boolean
local integer this=f__arg_this
            call s__TimerPutsTriggerToSleep__TrigInfo_DeleteAll(s__TrigVariables_last[this])
            set s__TrigVariables_last[this]=0
   return true
endfunction
function sa__TrigVariables_setVoid takes nothing returns boolean
local integer this=f__arg_this
                set s__TrigVariables_thisForVoid=this
                call TriggerEvaluate(s__TrigVariables_trigForVoid)
   return true
endfunction
function sa__TrigVariables_LVforCreate takes nothing returns boolean
local integer this=f__arg_this
                set s__TrigVariables_player[this]=this
                set s__TrigVariables_force[this]=this
                set s__TrigVariables_group[this]=this
                set s__TrigVariables_item[this]=this
                set s__TrigVariables_effect[this]=this
                set s__TrigVariables_timer[this]=this
                set s__TrigVariables_unit[this]=this
                set s__TrigVariables_location[this]=this
                set s__TrigVariables_lightning[this]=this
                set s__TrigVariables_integer[this]=this
                set s__TrigVariables_real[this]=this
                set s__TrigVariables_boolean[this]=this
   return true
endfunction
function sa__TrigVariables_Setplayer takes nothing returns boolean
local integer this=f__arg_this
local integer i=f__arg_integer1
local player x=f__arg_player1
                call s__TrigVariables_LinkedVariables_player___StateSetUsedplayer(this,i)
                call RemoveSavedHandle(s__TrigVariables_Hashplayer, 0, this * s__TrigVariables_arraySize + i)
                call SavePlayerHandle(s__TrigVariables_Hashplayer, 0, this * s__TrigVariables_arraySize + i, x)
   return true
endfunction
function sa__TrigVariables_Getplayer takes nothing returns boolean
local integer this=f__arg_this
local integer i=f__arg_integer1
set f__result_player= LoadPlayerHandle(s__TrigVariables_Hashplayer, 0, this * s__TrigVariables_arraySize + i)
   return true
endfunction
function sa__TrigVariables_Setforce takes nothing returns boolean
    call s__TrigVariables_Setforce(f__arg_this,f__arg_integer1,f__arg_force1)
   return true
endfunction
function sa__TrigVariables_Getforce takes nothing returns boolean
local integer this=f__arg_this
local integer i=f__arg_integer1
set f__result_force= LoadForceHandle(s__TrigVariables_Hashforce, 0, this * s__TrigVariables_arraySize + i)
   return true
endfunction
function sa__TrigVariables_Setgroup takes nothing returns boolean
    call s__TrigVariables_Setgroup(f__arg_this,f__arg_integer1,f__arg_group1)
   return true
endfunction
function sa__TrigVariables_Getgroup takes nothing returns boolean
local integer this=f__arg_this
local integer i=f__arg_integer1
set f__result_group= LoadGroupHandle(s__TrigVariables_Hashgroup, 0, this * s__TrigVariables_arraySize + i)
   return true
endfunction
function sa__TrigVariables_Setitem takes nothing returns boolean
    call s__TrigVariables_Setitem(f__arg_this,f__arg_integer1,f__arg_item1)
   return true
endfunction
function sa__TrigVariables_Getitem takes nothing returns boolean
local integer this=f__arg_this
local integer i=f__arg_integer1
set f__result_item= LoadItemHandle(s__TrigVariables_Hashitem, 0, this * s__TrigVariables_arraySize + i)
   return true
endfunction
function sa__TrigVariables_Seteffect takes nothing returns boolean
    call s__TrigVariables_Seteffect(f__arg_this,f__arg_integer1,f__arg_effect1)
   return true
endfunction
function sa__TrigVariables_Geteffect takes nothing returns boolean
local integer this=f__arg_this
local integer i=f__arg_integer1
set f__result_effect= LoadEffectHandle(s__TrigVariables_Hasheffect, 0, this * s__TrigVariables_arraySize + i)
   return true
endfunction
function sa__TrigVariables_Settimer takes nothing returns boolean
    call s__TrigVariables_Settimer(f__arg_this,f__arg_integer1,f__arg_timer1)
   return true
endfunction
function sa__TrigVariables_Gettimer takes nothing returns boolean
local integer this=f__arg_this
local integer i=f__arg_integer1
set f__result_timer= LoadTimerHandle(s__TrigVariables_Hashtimer, 0, this * s__TrigVariables_arraySize + i)
   return true
endfunction
function sa__TrigVariables_Setunit takes nothing returns boolean
    call s__TrigVariables_Setunit(f__arg_this,f__arg_integer1,f__arg_unit1)
   return true
endfunction
function sa__TrigVariables_Getunit takes nothing returns boolean
local integer this=f__arg_this
local integer i=f__arg_integer1
set f__result_unit= LoadUnitHandle(s__TrigVariables_Hashunit, 0, this * s__TrigVariables_arraySize + i)
   return true
endfunction
function sa__TrigVariables_Setlocation takes nothing returns boolean
    call s__TrigVariables_Setlocation(f__arg_this,f__arg_integer1,f__arg_location1)
   return true
endfunction
function sa__TrigVariables_Getlocation takes nothing returns boolean
local integer this=f__arg_this
local integer i=f__arg_integer1
set f__result_location= LoadLocationHandle(s__TrigVariables_Hashlocation, 0, this * s__TrigVariables_arraySize + i)
   return true
endfunction
function sa__TrigVariables_Setlightning takes nothing returns boolean
    call s__TrigVariables_Setlightning(f__arg_this,f__arg_integer1,f__arg_lightning1)
   return true
endfunction
function sa__TrigVariables_Getlightning takes nothing returns boolean
local integer this=f__arg_this
local integer i=f__arg_integer1
set f__result_lightning= LoadLightningHandle(s__TrigVariables_Hashlightning, 0, this * s__TrigVariables_arraySize + i)
   return true
endfunction
function sa__TrigVariables_Setinteger takes nothing returns boolean
local integer this=f__arg_this
local integer i=f__arg_integer1
local integer x=f__arg_integer2
                call s__TrigVariables_LinkedVariables_integer__StateSetUsedinteger(this,i)
                call RemoveSavedInteger(s__TrigVariables_Hashinteger, 0, this * s__TrigVariables_arraySize + i)
                call SaveInteger(s__TrigVariables_Hashinteger, 0, this * s__TrigVariables_arraySize + i, x)
   return true
endfunction
function sa__TrigVariables_Getinteger takes nothing returns boolean
local integer this=f__arg_this
local integer i=f__arg_integer1
set f__result_integer= LoadInteger(s__TrigVariables_Hashinteger, 0, this * s__TrigVariables_arraySize + i)
   return true
endfunction
function sa__TrigVariables_Setreal takes nothing returns boolean
local integer this=f__arg_this
local integer i=f__arg_integer1
local real x=f__arg_real1
                call s__TrigVariables_LinkedVariables_real___StateSetUsedreal(this,i)
                call RemoveSavedReal(s__TrigVariables_Hashreal, 0, this * s__TrigVariables_arraySize + i)
                call SaveReal(s__TrigVariables_Hashreal, 0, this * s__TrigVariables_arraySize + i, x)
   return true
endfunction
function sa__TrigVariables_Getreal takes nothing returns boolean
local integer this=f__arg_this
local integer i=f__arg_integer1
set f__result_real= LoadReal(s__TrigVariables_Hashreal, 0, this * s__TrigVariables_arraySize + i)
   return true
endfunction
function sa__TrigVariables_Setboolean takes nothing returns boolean
local integer this=f__arg_this
local integer i=f__arg_integer1
local boolean x=f__arg_boolean1
                call s__TrigVariables_LinkedVariables_boolean__StateSetUsedboolean(this,i)
                call RemoveSavedBoolean(s__TrigVariables_Hashboolean, 0, this * s__TrigVariables_arraySize + i)
                call SaveBoolean(s__TrigVariables_Hashboolean, 0, this * s__TrigVariables_arraySize + i, x)
   return true
endfunction
function sa__TrigVariables_Getboolean takes nothing returns boolean
local integer this=f__arg_this
local integer i=f__arg_integer1
set f__result_boolean= LoadBoolean(s__TrigVariables_Hashboolean, 0, this * s__TrigVariables_arraySize + i)
   return true
endfunction
function sa__TrigVariables_Settexttag takes nothing returns boolean
    call s__TrigVariables_Settexttag(f__arg_this,f__arg_integer1,f__arg_texttag1)
   return true
endfunction
function sa__TrigVariables_Gettexttag takes nothing returns boolean
local integer this=f__arg_this
local integer i=f__arg_integer1
set f__result_texttag= LoadTextTagHandle(s__TrigVariables_Hashtexttag, 0, this * s__TrigVariables_arraySize + i)
   return true
endfunction
function sa__TrigVariables_Setstring takes nothing returns boolean
local integer this=f__arg_this
local integer i=f__arg_integer1
local string x=f__arg_string1
                call s__TrigVariables_LinkedVariables_string__StateSetUsedstring(this,i)
                call RemoveSavedString(s__TrigVariables_Hashstring, 0, this * s__TrigVariables_arraySize + i)
                call SaveStr(s__TrigVariables_Hashstring, 0, this * s__TrigVariables_arraySize + i, x)
   return true
endfunction
function sa__TrigVariables_Getstring takes nothing returns boolean
local integer this=f__arg_this
local integer i=f__arg_integer1
set f__result_string= LoadStr(s__TrigVariables_Hashstring, 0, this * s__TrigVariables_arraySize + i)
   return true
endfunction
function sa___prototype6_TimerUtils__init takes nothing returns boolean

     local integer i=0
     local integer o=- 1
     local boolean oops= false
        if ( TimerUtils__didinit ) then
    return true
        else
            set TimerUtils__didinit=true
        endif
            set TimerUtils__ht=InitHashtable()
            loop
                exitwhen ( i == TimerUtils__QUANTITY )
                set s__TimerUtils__tT[i]= CreateTimer()
                call SaveInteger(TimerUtils__ht, 0, GetHandleId((s__TimerUtils__tT[i] )), ( TimerUtils__HELD)) // INLINED!!
                set i=i + 1
            endloop
            set TimerUtils__tN=TimerUtils__QUANTITY
    return true
endfunction

function jasshelper__init889 takes nothing returns nothing
    set st__TimerPutsTriggerToSleep__TrigInfo_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__TimerPutsTriggerToSleep__TrigInfo_onDestroy,Condition( function sa__TimerPutsTriggerToSleep__TrigInfo_onDestroy))
    set st__TimerPutsTriggerToSleep__TrigInfo_create=CreateTrigger()
    call TriggerAddCondition(st__TimerPutsTriggerToSleep__TrigInfo_create,Condition( function sa__TimerPutsTriggerToSleep__TrigInfo_create))
    set st__TrigVariables_ExecuteTrigger=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_ExecuteTrigger,Condition( function sa__TrigVariables_ExecuteTrigger))
    set st__TrigVariables_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_onDestroy,Condition( function sa__TrigVariables_onDestroy))
    set st__TrigVariables_DeleteAllTriggers=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_DeleteAllTriggers,Condition( function sa__TrigVariables_DeleteAllTriggers))
    set st__TrigVariables_setVoid=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_setVoid,Condition( function sa__TrigVariables_setVoid))
    set st__TrigVariables_LVforCreate=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_LVforCreate,Condition( function sa__TrigVariables_LVforCreate))
    set st__TrigVariables_Setplayer=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Setplayer,Condition( function sa__TrigVariables_Setplayer))
    set st__TrigVariables_Getplayer=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Getplayer,Condition( function sa__TrigVariables_Getplayer))
    set st__TrigVariables_Setforce=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Setforce,Condition( function sa__TrigVariables_Setforce))
    set st__TrigVariables_Getforce=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Getforce,Condition( function sa__TrigVariables_Getforce))
    set st__TrigVariables_Setgroup=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Setgroup,Condition( function sa__TrigVariables_Setgroup))
    set st__TrigVariables_Getgroup=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Getgroup,Condition( function sa__TrigVariables_Getgroup))
    set st__TrigVariables_Setitem=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Setitem,Condition( function sa__TrigVariables_Setitem))
    set st__TrigVariables_Getitem=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Getitem,Condition( function sa__TrigVariables_Getitem))
    set st__TrigVariables_Seteffect=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Seteffect,Condition( function sa__TrigVariables_Seteffect))
    set st__TrigVariables_Geteffect=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Geteffect,Condition( function sa__TrigVariables_Geteffect))
    set st__TrigVariables_Settimer=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Settimer,Condition( function sa__TrigVariables_Settimer))
    set st__TrigVariables_Gettimer=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Gettimer,Condition( function sa__TrigVariables_Gettimer))
    set st__TrigVariables_Setunit=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Setunit,Condition( function sa__TrigVariables_Setunit))
    set st__TrigVariables_Getunit=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Getunit,Condition( function sa__TrigVariables_Getunit))
    set st__TrigVariables_Setlocation=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Setlocation,Condition( function sa__TrigVariables_Setlocation))
    set st__TrigVariables_Getlocation=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Getlocation,Condition( function sa__TrigVariables_Getlocation))
    set st__TrigVariables_Setlightning=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Setlightning,Condition( function sa__TrigVariables_Setlightning))
    set st__TrigVariables_Getlightning=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Getlightning,Condition( function sa__TrigVariables_Getlightning))
    set st__TrigVariables_Setinteger=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Setinteger,Condition( function sa__TrigVariables_Setinteger))
    set st__TrigVariables_Getinteger=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Getinteger,Condition( function sa__TrigVariables_Getinteger))
    set st__TrigVariables_Setreal=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Setreal,Condition( function sa__TrigVariables_Setreal))
    set st__TrigVariables_Getreal=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Getreal,Condition( function sa__TrigVariables_Getreal))
    set st__TrigVariables_Setboolean=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Setboolean,Condition( function sa__TrigVariables_Setboolean))
    set st__TrigVariables_Getboolean=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Getboolean,Condition( function sa__TrigVariables_Getboolean))
    set st__TrigVariables_Settexttag=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Settexttag,Condition( function sa__TrigVariables_Settexttag))
    set st__TrigVariables_Gettexttag=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Gettexttag,Condition( function sa__TrigVariables_Gettexttag))
    set st__TrigVariables_Setstring=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Setstring,Condition( function sa__TrigVariables_Setstring))
    set st__TrigVariables_Getstring=CreateTrigger()
    call TriggerAddCondition(st__TrigVariables_Getstring,Condition( function sa__TrigVariables_Getstring))
    set st___prototype6[1]=CreateTrigger()
    call TriggerAddAction(st___prototype6[1],function sa___prototype6_TimerUtils__init)
    call TriggerAddCondition(st___prototype6[1],Condition(function sa___prototype6_TimerUtils__init))


call ExecuteFunc("TimerUtils__init")
//------------------------------------
call ExecuteFunc("s__TrigVariables_TPTTS_WhenEventId___onInit")
call ExecuteFunc("s__TrigVariables_LinkedVariables_player___onInit")
call ExecuteFunc("s__TrigVariables_LinkedVariables_force__onInit")
call ExecuteFunc("s__TrigVariables_LinkedVariables_group___onInit")
call ExecuteFunc("s__TrigVariables_LinkedVariables_item__onInit")
call ExecuteFunc("s__TrigVariables_LinkedVariables_effect___onInit")
call ExecuteFunc("s__TrigVariables_LinkedVariables_timer__onInit")
call ExecuteFunc("s__TrigVariables_LinkedVariables_unit___onInit")
call ExecuteFunc("s__TrigVariables_LinkedVariables_location__onInit")
call ExecuteFunc("s__TrigVariables_LinkedVariables_lightning___onInit")
call ExecuteFunc("s__TrigVariables_LinkedVariables_integer__onInit")
call ExecuteFunc("s__TrigVariables_LinkedVariables_real___onInit")
call ExecuteFunc("s__TrigVariables_LinkedVariables_boolean__onInit")
call ExecuteFunc("s__TrigVariables_LinkedVariables_texttag___onInit")
call ExecuteFunc("s__TrigVariables_LinkedVariables_string__onInit")
call ExecuteFunc("s__TrigVariables_TPTTS_CopyByEventId__onInit")
call ExecuteFunc("s__TrigVariables_TPTTS_EmptyTrigVars__onInit")
call ExecuteFunc("s__TrigVariables_onInit")
//------------------------------------

endfunction

