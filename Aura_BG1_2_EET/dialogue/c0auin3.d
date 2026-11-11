BEGIN C0AUIN3

CHAIN IF WEIGHT #-1 ~IsGabber("C0Aura")~ THEN C0AUIN3 a0
~自动机械立正待命。~
END 
+ ~OR(2)
AreaCheck("c0au01")
AreaCheck("ar4500")~ + ~升级。~ DO ~RemoveFamiliar()
Rest()
ReallyForceSpellRES("c0repair",Myself)~ + upgrades
+ ~AreaCheck("c0au01")
AreaCheck("ar4500")
CombatCounter(0)
HPPercentLT(Myself,100)~ + ~修理。~ + repair
+ ~!AreaCheck("c0au01")
!AreaCheck("ar4500")
Global("RepairCount","LOCALS",3)
CombatCounter(0)
HPPercentLT(Myself,100)~ + ~修理（3/3）。~ + repair
+ ~!AreaCheck("c0au01")
!AreaCheck("ar4500")Global("RepairCount","LOCALS",2)
CombatCounter(0)
HPPercentLT(Myself,100)~ + ~修理（2/3）。~ + repair
+ ~!AreaCheck("c0au01")
!AreaCheck("ar4500")Global("RepairCount","LOCALS",1)
CombatCounter(0)
HPPercentLT(Myself,100)~ + ~修理（1/3）。~ + repair
++ ~打开物品栏。~ DO ~StartStore("C0AUTINV",Lasttalkedtoby(Myself))~ EXIT
+ ~Global("Standby","LOCALS",0)~ + ~待命。~ DO ~SetGlobal("Standby","LOCALS",1)~ EXIT
+ ~Global("Standby","LOCALS",1)~ + ~跟随。~ DO ~SetGlobal("Standby","LOCALS",0)~ EXIT
++ ~拆解。~ DO ~Kill(Myself)~ EXIT
+ ~Global("SelfDefense","LOCALS",0)~ + ~关闭自卫协议。~ DO ~SetGlobal("SelfDefense","LOCALS",1)~ + disableAI
+ ~Global("SelfDefense","LOCALS",1)~ + ~开启自卫协议。~ DO ~SetGlobal("SelfDefense","LOCALS",0)~ + enableAI
++ ~离开~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2AutomatonControl","GLOBAL",1) IsGabber(Player1)~ THEN C0AUIN3 a0
~自动机械立正待命。~
END 
++ ~打开物品栏。~ DO ~StartStore("C0AUTINV",Lasttalkedtoby(Myself))~ EXIT
+ ~Global("Standby","LOCALS",0)~ + ~待命。~ DO ~SetGlobal("Standby","LOCALS",1)~ EXIT
+ ~Global("Standby","LOCALS",1)~ + ~跟随。~ DO ~SetGlobal("Standby","LOCALS",0)~ EXIT
++ ~拆解。~ DO ~Kill(Myself)~ EXIT
+ ~Global("SelfDefense","LOCALS",0)~ + ~关闭自卫协议。~ DO ~SetGlobal("SelfDefense","LOCALS",1)~ + disableAI
+ ~Global("SelfDefense","LOCALS",1)~ + ~开启自卫协议。~ DO ~SetGlobal("SelfDefense","LOCALS",0)~ + enableAI
++ ~离开~ EXIT

CHAIN C0AUIN3 repair
~正在修复损伤……~
DO ~FadeFromColor([30.0],0)~
= ~自动机械已完全修复。~
DO ~IncrementGlobal("RepairCount","LOCALS",-1) ReallyForceSpellRES("c0repair",Myself)~ EXIT

CHAIN C0AUIN3 upgrades
~若有必要的经验与资源，自动机械便可升级。你想做什么？~
END
+ ~OR(3)
!Global("C0AutoUpgradeOffense1","GLOBAL",3)
!Global("C0AutoUpgradeOffense2","GLOBAL",3)
!Global("C0AutoUpgradeOffense3","GLOBAL",3)~ + ~升级进攻。~ + UPGRADE-OFFENSE
+ ~Global("C0AutoUpgradeOffense1","GLOBAL",3)
Global("C0AutoUpgradeOffense2","GLOBAL",3)
Global("C0AutoUpgradeOffense3","GLOBAL",3)~ + ~升级进攻。~ + UPGRADE-OFFENSE-ALL
+ ~OR(3)
!Global("C0AutoUpgradeDefense1","GLOBAL",3)
!Global("C0AutoUpgradeDefense2","GLOBAL",3)
!Global("C0AutoUpgradeDefense3","GLOBAL",3)~ + ~升级防御。~ + UPGRADE-DEFENSE
+ ~Global("C0AutoUpgradeDefense1","GLOBAL",3)
Global("C0AutoUpgradeDefense2","GLOBAL",3)
Global("C0AutoUpgradeDefense3","GLOBAL",3)~ + ~升级防御。~ + UPGRADE-DEFENSE-ALL
+ ~OR(2)
PartyHasItem("c0abook1")
PartyHasItem("c0abook2")
OR(5)
!Global("C0AutoUpgradeSpecial1","GLOBAL",1)
!Global("C0AutoUpgradeSpecial2","GLOBAL",1)
!Global("C0AutoUpgradeSpecial3","GLOBAL",1)
!Global("C0AutoUpgradeSpecial4","GLOBAL",1)
!Global("C0AutoUpgradeSpecial5","GLOBAL",4)~ + ~特殊升级。~ + UPGRADE-SPECIAL
+ ~OR(2)
PartyHasItem("c0abook1")
PartyHasItem("c0abook2")
Global("C0AutoUpgradeSpecial1","GLOBAL",1)
Global("C0AutoUpgradeSpecial2","GLOBAL",1)
Global("C0AutoUpgradeSpecial3","GLOBAL",1)
Global("C0AutoUpgradeSpecial4","GLOBAL",1)
Global("C0AutoUpgradeSpecial5","GLOBAL",4)~ + ~特殊升级。~ + UPGRADE-SPECIAL-ALL
++ ~查看当前升级。~ + CHECK-UPGRADES
++ ~什么也不做。~ DO ~DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT

CHAIN C0AUIN3 upgrades2
~你还想做什么？~
END
+ ~OR(3)
!Global("C0AutoUpgradeOffense1","GLOBAL",3)
!Global("C0AutoUpgradeOffense2","GLOBAL",3)
!Global("C0AutoUpgradeOffense3","GLOBAL",3)~ + ~升级进攻。~ + UPGRADE-OFFENSE
+ ~Global("C0AutoUpgradeOffense1","GLOBAL",3)
Global("C0AutoUpgradeOffense2","GLOBAL",3)
Global("C0AutoUpgradeOffense3","GLOBAL",3)~ + ~升级进攻。~ + UPGRADE-OFFENSE-ALL
+ ~OR(3)
!Global("C0AutoUpgradeDefense1","GLOBAL",3)
!Global("C0AutoUpgradeDefense2","GLOBAL",3)
!Global("C0AutoUpgradeDefense3","GLOBAL",3)~ + ~升级防御。~ + UPGRADE-DEFENSE
+ ~Global("C0AutoUpgradeDefense1","GLOBAL",3)
Global("C0AutoUpgradeDefense2","GLOBAL",3)
Global("C0AutoUpgradeDefense3","GLOBAL",3)~ + ~升级防御。~ + UPGRADE-DEFENSE-ALL
+ ~OR(2)
PartyHasItem("c0abook1")
PartyHasItem("c0abook2")
OR(5)
!Global("C0AutoUpgradeSpecial1","GLOBAL",1)
!Global("C0AutoUpgradeSpecial2","GLOBAL",1)
!Global("C0AutoUpgradeSpecial3","GLOBAL",1)
!Global("C0AutoUpgradeSpecial4","GLOBAL",1)
!Global("C0AutoUpgradeSpecial5","GLOBAL",4)~ + ~特殊升级。~ + UPGRADE-SPECIAL
+ ~OR(2)
PartyHasItem("c0abook1")
PartyHasItem("c0abook2")
Global("C0AutoUpgradeSpecial1","GLOBAL",1)
Global("C0AutoUpgradeSpecial2","GLOBAL",1)
Global("C0AutoUpgradeSpecial3","GLOBAL",1)
Global("C0AutoUpgradeSpecial4","GLOBAL",1)
Global("C0AutoUpgradeSpecial5","GLOBAL",4)~ + ~特殊升级。~ + UPGRADE-SPECIAL-ALL
++ ~查看当前升级。~ + CHECK-UPGRADES
++ ~什么也不做。~ DO ~DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT

CHAIN C0AUIN3 UPGRADE-OFFENSE-ALL
~本机的进攻已完全优化。~
EXTERN C0AUIN3 upgrades2

CHAIN C0AUIN3 UPGRADE-DEFENSE-ALL
~本机的防御已完全优化。~
EXTERN C0AUIN3 upgrades2

CHAIN C0AUIN3 UPGRADE-SPECIAL-ALL
~本机已获得全部特殊升级。~
EXTERN C0AUIN3 upgrades2

CHAIN C0AUIN3 UPGRADE-OFFENSE
~本机可获得以下进攻升级：~
END
+ ~GlobalLT("C0AutoUpgradeOffense1","GLOBAL",1)~ + ~强化锋刃 II~ + UPGRADE-AUGMENTED-BLADE-1
+ ~Global("C0AutoUpgradeOffense1","GLOBAL",1)~ + ~强化锋刃 III~ + UPGRADE-AUGMENTED-BLADE-2
+ ~Global("C0AutoUpgradeOffense1","GLOBAL",2)~ + ~强化锋刃 IV~ + UPGRADE-AUGMENTED-BLADE-3
+ ~GlobalLT("C0AutoUpgradeOffense2","GLOBAL",1)~ + ~冲击武器 I~ + UPGRADE-WEAPON-IMPACT-1
+ ~Global("C0AutoUpgradeOffense2","GLOBAL",1)~ + ~冲击武器 II~ + UPGRADE-WEAPON-IMPACT-2
+ ~Global("C0AutoUpgradeOffense2","GLOBAL",2)~ + ~冲击武器 III~ + UPGRADE-WEAPON-IMPACT-3
+ ~GlobalLT("C0AutoUpgradeOffense3","GLOBAL",1)~ + ~锐锋 I~ + UPGRADE-KEEN-EDGE-1
+ ~Global("C0AutoUpgradeOffense3","GLOBAL",1)~ + ~锐锋 II~ + UPGRADE-KEEN-EDGE-2
+ ~Global("C0AutoUpgradeOffense3","GLOBAL",2)~ + ~锐锋 III~ + UPGRADE-KEEN-EDGE-3
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-DEFENSE
~本机可获得以下防御升级：~
END
+ ~GlobalLT("C0AutoUpgradeDefense1","GLOBAL",1)~ + ~强化装甲 I~ + UPGRADE-REINFORCED-PLATING-1
+ ~Global("C0AutoUpgradeDefense1","GLOBAL",1)~ + ~强化装甲 II~ + UPGRADE-REINFORCED-PLATING-2
+ ~Global("C0AutoUpgradeDefense1","GLOBAL",2)~ + ~强化装甲 III~ + UPGRADE-REINFORCED-PLATING-3
+ ~GlobalLT("C0AutoUpgradeDefense2","GLOBAL",1)~ + ~反魔法护盾 I~ + UPGRADE-ANTIMAGIC-SHIELDING-1
+ ~Global("C0AutoUpgradeDefense2","GLOBAL",1)~ + ~反魔法护盾 II~ + UPGRADE-ANTIMAGIC-SHIELDING-2
+ ~Global("C0AutoUpgradeDefense2","GLOBAL",2)~ + ~反魔法护盾 III~ + UPGRADE-ANTIMAGIC-SHIELDING-3
+ ~GlobalLT("C0AutoUpgradeDefense3","GLOBAL",1)~ + ~自修复奇术 I~ + UPGRADE-SELFREPAIRING-THAUMATURGY-1
+ ~Global("C0AutoUpgradeDefense3","GLOBAL",1)~ + ~自修复奇术 II~ + UPGRADE-SELFREPAIRING-THAUMATURGY-2
+ ~Global("C0AutoUpgradeDefense3","GLOBAL",2)~ + ~自修复奇术 III~ + UPGRADE-SELFREPAIRING-THAUMATURGY-3
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-SPECIAL
~本机可获得以下进攻升级：~
END
+ ~PartyHasItem("c0abook1") Global("C0AutoUpgradeSpecial5","GLOBAL",0)~ + ~奥术增幅 I~ + UPGRADE-ARCANE-1
+ ~PartyHasItem("c0abook1") Global("C0AutoUpgradeSpecial5","GLOBAL",1)~ + ~奥术增幅 II~ + UPGRADE-ARCANE-2
+ ~PartyHasItem("c0abook1") Global("C0AutoUpgradeSpecial5","GLOBAL",2)~ + ~奥术增幅 III~ + UPGRADE-ARCANE-3
+ ~PartyHasItem("c0abook1") Global("C0AutoUpgradeSpecial5","GLOBAL",3)~ + ~奥术增幅 IV~ + UPGRADE-ARCANE-4
+ ~PartyHasItem("c0abook2") GlobalLT("C0AutoUpgradeSpecial1","GLOBAL",1)~ + ~传送~ + UPGRADE-TELEPORT
+ ~PartyHasItem("c0abook2") GlobalLT("C0AutoUpgradeSpecial2","GLOBAL",1)~ + ~魔像缓慢~ + UPGRADE-SLOW
+ ~PartyHasItem("c0abook2") GlobalLT("C0AutoUpgradeSpecial3","GLOBAL",1)~ + ~魔像疾行~ + UPGRADE-HASTE
+ ~PartyHasItem("c0abook2") GlobalLT("C0AutoUpgradeSpecial4","GLOBAL",1)~ + ~毒气云~ + UPGRADE-GASCLOUD
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-AUGMENTED-BLADE-1
~强化锋刃 II：就所能伤害的敌人而言，本机的攻击视同 +2 武器。

需求：12 级奇械师，一件附魔等级 +2 的基础近战武器，附魔武器卷轴一张，5,000 金币。~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("sw2h11")~ + ~\[双手剑 +2\] 升级为强化锋刃 II。~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("sw2h11")
DestroyItem("sw2h11")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("ohsw1h55")~ + ~\[弯刀 +2\] 升级为强化锋刃 II。~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("ohsw1h55")
DestroyItem("ohsw1h55")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("ohsw1h53")~ + ~\[忍者刀 +2\] 升级为强化锋刃 II。~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("ohsw1h53")
DestroyItem("ohsw1h53")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("sw1h41")~ + ~\[长剑 +2\] 升级为强化锋刃 II。~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("sw1h41")
DestroyItem("sw1h41")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("sw1h55")~ + ~\[武士刀 +2\] 升级为强化锋刃 II。~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("sw1h55")
DestroyItem("sw1h55")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("sw1h42")~ + ~\[杂种剑 +2\] 升级为强化锋刃 II。~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("sw1h42")
DestroyItem("sw1h42")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("staf18")~ + ~\[长棍 +2\] 升级为强化锋刃 II。~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("staf18")
DestroyItem("staf18")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("ohsw1h51")~ + ~\[胁差 +2\] 升级为强化锋刃 II。~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("ohsw1h51")
DestroyItem("ohsw1h51")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
!PartyHasItem("sw1h09")
PartyHasItem("sw1h29")~ + ~\[短剑 +2\] 升级为强化锋刃 II。~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("sw1h29")
DestroyItem("sw1h29")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("sw1h09")~ + ~\[短剑 +2\] 升级为强化锋刃 II。~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("sw1h09")
DestroyItem("sw1h09")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
!PartyHasItem("ohblun51")
PartyHasItem("blun15")~ + ~\[晨星 +2\] 升级为强化锋刃 II。~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("blun15")
DestroyItem("blun15")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("ohblun51")~ + ~\[木棒 +2\] 升级为强化锋刃 II。~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("ohblun51")
DestroyItem("ohblun51")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("blun21")~ + ~\[钉头锤 +2\] 升级为强化锋刃 II。~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("blun21")
DestroyItem("blun21")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("hamm08")~ + ~\[战锤 +2\] 升级为强化锋刃 II。~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("hamm08")
DestroyItem("hamm08")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("halb17")~ + ~\[戟 +2\] 升级为强化锋刃 II。~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("halb17")
DestroyItem("halb17")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("blun13")~ + ~\[连枷 +2\] 升级为强化锋刃 II。~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("blun13")
DestroyItem("blun13")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("dagg15")~ + ~\[匕首 +2\] 升级为强化锋刃 II。~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("dagg15")
DestroyItem("dagg15")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl6m")
PartyGoldGT(4999)
PartyHasItem("ax1h11")~ + ~\[战斧 +2\] 升级为强化锋刃 II。~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",1)
TakePartyItem("ax1h11")
DestroyItem("ax1h11")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-AUGMENTED-BLADE-2
~强化锋刃 III：就所能伤害的敌人而言，本机的攻击视同 +3 武器。

需求：9 级奇械师，精金粉末一份，钻石两颗，附魔武器卷轴一张，7,500 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,15)
PartyHasItem("scrl6m")
PartyHasItem("dwdust")
PartyGoldGT(7499)
NumItemsPartyGT("misc42",1)~ + ~升级为强化锋刃 III。~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",2)
TakePartyItem("dwdust")
DestroyItem("dwdust")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyItemNum("misc42",2)
DestroyItem("misc42")
TakePartyGold(7500)
DestroyGold(7500)
SetGlobal("AugmentedBlade","LOCALS",1)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1c",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-AUGMENTED-BLADE-3
~强化锋刃 IV：就所能伤害的敌人而言，本机的攻击视同 +4 武器。

需求：24 级奇械师，秘银合金一份，盗贼石两颗，附魔武器卷轴一张，10,000 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,23)
PartyHasItem("scrl6m")
PartyHasItem("c0amith")
PartyGoldGT(9999)
NumItemsPartyGT("misc45",1)~ + ~升级为强化锋刃 IV。~ DO ~SetGlobal("C0AutoUpgradeOffense1","GLOBAL",3)
SetGlobal("AugmentedBlade","LOCALS",1)
TakePartyItem("c0amith")
DestroyItem("c0amith")
TakePartyItemNum("scrl6m",1)
DestroyItem("scrl6m")
TakePartyItemNum("misc45",2)
DestroyItem("misc45")
TakePartyGold(7500)
DestroyGold(7500)
CreateVisualEffectObject("icstreni",Myself)
ApplySpellRES("c0auto1d",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-WEAPON-IMPACT-1
~冲击武器 I：本机的钝击攻击造成额外 5% 钝击伤害，且其钝击攻击有 15% 几率使目标在对抗死亡豁免 -2 的检定失败时陷入震慑。

需求：9 级奇械师，战锤 +1 一把，敲击卷轴一张，5,000 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,8)
PartyHasItem("scrl91")
PartyHasItem("hamm02")
PartyGoldGT(4999)~ + ~升级为冲击武器 I。~ DO ~SetGlobal("C0AutoUpgradeOffense2","GLOBAL",1)
TakePartyItem("hamm02")
DestroyItem("hamm02")
TakePartyItemNum("scrl91",1)
DestroyItem("scrl91")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("WeaponImpact","LOCALS",1)
CreateVisualEffectObject("spcrtwpn",Myself)
ApplySpellRES("c0auto2a",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-WEAPON-IMPACT-2
~冲击武器 II：本机的钝击攻击造成额外 15% 钝击伤害，且其钝击攻击有 20% 几率使目标在对抗死亡豁免 -3 的检定失败时陷入震慑。

需求：13 级奇械师，战锤 +2 一把，钻石一颗，8,000 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,12)
PartyHasItem("misc42")
PartyHasItem("hamm08")
PartyGoldGT(7999)~ + ~升级为冲击武器 II。~ DO ~SetGlobal("C0AutoUpgradeOffense2","GLOBAL",2)
TakePartyItem("hamm08")
DestroyItem("hamm08")
TakePartyItemNum("misc42",1)
DestroyItem("misc42")
TakePartyGold(8000)
DestroyGold(8000)
SetGlobal("WeaponImpact","LOCALS",1)
CreateVisualEffectObject("spcrtwpn",Myself)
ApplySpellRES("c0auto2b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-WEAPON-IMPACT-3
~冲击武器 III：本机的钝击攻击造成额外 15% 钝击伤害，且其钝击攻击有 25% 几率使目标在对抗死亡豁免 -4 的检定失败时陷入震慑。

需求：18 级奇械师，战锤 +3 一把，毕格比粉碎掌卷轴一张，12,000 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,17)
PartyHasItem("scrlb2")
PartyHasItem("hamm12")
PartyGoldGT(11999)~ + ~升级为冲击武器 III。~ DO ~SetGlobal("C0AutoUpgradeOffense2","GLOBAL",3)
TakePartyItem("hamm12")
DestroyItem("hamm12")
TakePartyItemNum("scrlb2",1)
DestroyItem("scrlb2")
TakePartyGold(12000)
DestroyGold(12000)
SetGlobal("WeaponImpact","LOCALS",1)
CreateVisualEffectObject("spcrtwpn",Myself)
ApplySpellRES("c0auto2c",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-KEEN-EDGE-1
~锐锋 I：本机的刃类攻击造成额外 5% 挥砍伤害，且其挥砍攻击获得 +5% 暴击率。

需求：9 级奇械师，杂种剑 +1 一把，长剑 +1 一把，4,000 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,8)
PartyHasItem("sw1h02")
PartyHasItem("sw1h05")
PartyGoldGT(3999)~ + ~升级为锐锋 I。~ DO ~SetGlobal("C0AutoUpgradeOffense3","GLOBAL",1)
TakePartyItem("sw1h02")
DestroyItem("sw1h02")
TakePartyItem("sw1h05")
TakePartyGold(4000)
DestroyGold(4000)
DestroyItem("sw1h05")
SetGlobal("KeenEdge","LOCALS",1)
CreateVisualEffectObject("spflblad",Myself)
ApplySpellRES("c0auto3a",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-KEEN-EDGE-2
~锐锋 II：本机的刃类攻击造成额外 10% 挥砍伤害，且其挥砍攻击获得 +10% 暴击率。

需求：13 级奇械师，长剑 +2 一把，钻石一颗，8,000 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,12)
PartyHasItem("sw1h41")
PartyHasItem("misc42")
PartyGoldGT(7999)~ + ~升级为锐锋 II。~ DO ~SetGlobal("C0AutoUpgradeOffense3","GLOBAL",2)
TakePartyItem("sw1h41")
DestroyItem("sw1h41")
TakePartyItemNum("misc42",1)
DestroyItem("misc42")
TakePartyGold(8000)
DestroyGold(8000)
SetGlobal("KeenEdge","LOCALS",1)
CreateVisualEffectObject("spflblad",Myself)
ApplySpellRES("c0auto3b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-KEEN-EDGE-3
~锐锋 III：本机的刃类攻击造成额外 15% 挥砍伤害，且其挥砍攻击获得 +15% 暴击率。

需求：18 级奇械师，长剑 +3 一把，灾难黑刃卷轴一张，12,000 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,17)
PartyHasItem("sw1h73")
PartyHasItem("scrl9x")
PartyGoldGT(11999)~ + ~升级为锐锋 III。~ DO ~SetGlobal("C0AutoUpgradeOffense3","GLOBAL",3)
TakePartyItem("sw1h73")
DestroyItem("sw1h73")
TakePartyItemNum("scrl9x",1)
DestroyItem("scrl9x")
TakePartyGold(12000)
DestroyGold(12000)
SetGlobal("KeenEdge","LOCALS",1)
CreateVisualEffectObject("spflblad",Myself)
ApplySpellRES("c0auto3c",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-REINFORCED-PLATING-1
~强化装甲 I：本机防御等级 +2，并对所有伤害类型获得 5% 抗性。

需求：9 级奇械师，全身板甲一件，护甲卷轴一张，2,000 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,8)
PartyHasItem("plat04")
PartyHasItem("scrl67")
PartyGoldGT(1999)~ + ~升级为强化装甲 I。~ DO ~SetGlobal("C0AutoUpgradeDefense1","GLOBAL",1)
TakePartyItem("plat04")
DestroyItem("plat04")
TakePartyItemNum("scrl67",1)
DestroyItem("scrl67")
TakePartyGold(2000)
DestroyGold(2000)
SetGlobal("ReinforcedPlating","LOCALS",1)
CreateVisualEffectObject("icarmor",Myself)
ApplySpellRES("c0auto4a",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-REINFORCED-PLATING-2
~强化装甲 II：本机防御等级 +4，并对所有伤害类型获得 10% 抗性。

需求：12 级奇械师，全身板甲 +1 一件，防护普通武器卷轴一张，6,000 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("plat14")
PartyHasItem("scrl6t")
PartyGoldGT(5999)~ + ~升级为强化装甲 II。~ DO ~SetGlobal("C0AutoUpgradeDefense1","GLOBAL",2)
TakePartyItem("plat14")
DestroyItem("plat14")
TakePartyItemNum("scrl6t",1)
DestroyItem("scrl6t")
TakePartyGold(6000)
DestroyGold(6000)
SetGlobal("ReinforcedPlating","LOCALS",1)
CreateVisualEffectObject("icarmor",Myself)
ApplySpellRES("c0auto4b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-REINFORCED-PLATING-3
~强化装甲 III：本机防御等级 +6，并对所有伤害类型获得 15% 抗性。

需求：16 级奇械师，全身板甲 +2 一件，绝对免疫卷轴一张，10,000 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,15)
PartyHasItem("plat23")
PartyHasItem("scrl9p")
PartyGoldGT(9999)~ + ~升级为强化装甲 III。~ DO ~SetGlobal("C0AutoUpgradeDefense1","GLOBAL",3)
TakePartyItem("plat23")
DestroyItem("plat23")
TakePartyItemNum("scrl9p",1)
DestroyItem("scrl9p")
TakePartyGold(10000)
DestroyGold(10000)
SetGlobal("ReinforcedPlating","LOCALS",1)
CreateVisualEffectObject("icarmor",Myself)
ApplySpellRES("c0auto4c",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,15)
!PartyHasItem("plat23")
PartyHasItem("plat19")
PartyHasItem("scrl9p")
PartyGoldGT(9999)~ + ~升级为强化装甲 III。~ DO ~SetGlobal("C0AutoUpgradeDefense1","GLOBAL",3)
TakePartyItem("plat19")
DestroyItem("plat19")
TakePartyItemNum("scrl9p",1)
DestroyItem("scrl9p")
TakePartyGold(10000)
DestroyGold(10000)
SetGlobal("ReinforcedPlating","LOCALS",1)
CreateVisualEffectObject("icarmor",Myself)
ApplySpellRES("c0auto4c",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-ANTIMAGIC-SHIELDING-1
~反魔法护盾 I：本机所有豁免检定 +1，魔法抗性 +10%。

需求：12 级奇械师，魔法防护药水一瓶，4,000 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("potn34")
PartyGoldGT(3999)~ + ~升级为反魔法护盾 I。~ DO ~SetGlobal("C0AutoUpgradeDefense2","GLOBAL",1)
TakePartyItemNum("potn34",1)
DestroyItem("potn34")
TakePartyGold(4000)
DestroyGold(4000)
SetGlobal("AntimagicShielding","LOCALS",1)
CreateVisualEffectObject("magres2",Myself)
ApplySpellRES("c0auto5a",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-ANTIMAGIC-SHIELDING-2
~反魔法护盾 II：本机所有豁免检定 +2，魔法抗性 +20%。

需求：17 级奇械师，星光蓝宝石一颗，法术偏转卷轴一张，8,000 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,16)
PartyHasItem("scrl7v")
PartyHasItem("misc41")
PartyGoldGT(7999)~ + ~升级为反魔法护盾 II。~ DO ~SetGlobal("C0AutoUpgradeDefense2","GLOBAL",2)
TakePartyItemNum("scrl7v",1)
DestroyItem("scrl7v")
TakePartyItemNum("misc41",1)
DestroyItem("misc41")
TakePartyGold(8000)
DestroyGold(8000)
SetGlobal("AntimagicShielding","LOCALS",1)
CreateVisualEffectObject("magres2",Myself)
ApplySpellRES("c0auto5b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-ANTIMAGIC-SHIELDING-3
~反魔法护盾 III：本机所有豁免检定 +3，魔法抗性 +30%。

需求：23 级奇械师，星光蓝宝石两颗，防护魔法卷轴一张，法术陷阱卷轴一张，10,000 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,22)
PartyHasItem("scrl07")
PartyHasItem("scrl9l")
NumItemsPartyGT("misc41",1)
PartyGoldGT(9999)~ + ~升级为反魔法护盾 III。~ DO ~SetGlobal("C0AutoUpgradeDefense2","GLOBAL",3)
TakePartyItemNum("misc41",2)
DestroyItem("misc41")
TakePartyItemNum("scrl07",1)
DestroyItem("scrl07")
TakePartyItemNum("scrl9l",1)
DestroyItem("scrl9l")
TakePartyGold(10000)
DestroyGold(10000)
SetGlobal("AntimagicShielding","LOCALS",1)
CreateVisualEffectObject("magres2",Myself)
ApplySpellRES("c0auto5c",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-SELFREPAIRING-THAUMATURGY-1
~自修复奇术 I：本机生命值上限 +10，每 2 回合恢复 1 点生命值。

需求：13 级奇械师，翡翠一颗，再生药水一瓶，3,000 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,12)
PartyHasItem("misc43")
PartyHasItem("potn42")
PartyGoldGT(2999)~ + ~升级为自修复奇术 I。~ DO ~SetGlobal("C0AutoUpgradeDefense3","GLOBAL",1)
TakePartyItemNum("misc43",1)
DestroyItem("misc43")
TakePartyItemNum("potn42",1)
DestroyItem("potn42")
TakePartyGold(3000)
DestroyGold(3000)
SetGlobal("SelfRepairThaumaturgy","LOCALS",1)
CreateVisualEffectObject("icrmpari",Myself)
ApplySpellRES("c0auto6a",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-SELFREPAIRING-THAUMATURGY-2
~自修复奇术 II：本机生命值上限 +20，每回合恢复 1 点生命值。

需求：17 级奇械师，翡翠一颗，珍珠白艾恩石一颗，5,000 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,16)
PartyHasItem("misc43")
PartyHasItem("HELM18")
PartyGoldGT(4999)~ + ~升级为自修复奇术 II。~ DO ~SetGlobal("C0AutoUpgradeDefense3","GLOBAL",2)
TakePartyItem("HELM18")
DestroyItem("HELM18")
TakePartyItemNum("misc43",1)
DestroyItem("misc43")
TakePartyGold(5000)
DestroyGold(5000)
SetGlobal("SelfRepairThaumaturgy","LOCALS",1)
CreateVisualEffectObject("icrmpari",Myself)
ApplySpellRES("c0auto6b",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-SELFREPAIRING-THAUMATURGY-3
~自修复奇术 III：本机生命值上限 +30，每回合恢复 2 点生命值。

需求：22 级奇械师，翡翠两颗，再生之戒一枚，8,000 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,21)
PartyHasItem("ring31")
NumItemsPartyGT("misc43",1)
PartyGoldGT(7999)~ + ~升级为自修复奇术 III。~ DO ~SetGlobal("C0AutoUpgradeDefense3","GLOBAL",3)
TakePartyItem("ring31")
DestroyItem("ring31")
TakePartyItemNum("misc43",2)
DestroyItem("misc43")
DestroyItem("misc43")
TakePartyGold(8000)
DestroyGold(8000)
SetGlobal("SelfRepairThaumaturgy","LOCALS",1)
CreateVisualEffectObject("icrmpari",Myself)
ApplySpellRES("c0auto6c",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-TELEPORT
~传送：本机可随意传送到视野内任何地点。

需求：14 级奇械师，盗贼石一颗，2,000 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,13)
PartyHasItem("misc45")
PartyGoldGT(1999)~ + ~升级。~ DO ~SetGlobal("C0AutoUpgradeSpecial1","GLOBAL",1)
TakePartyItemNum("misc45",1)
DestroyItem("misc45")
TakePartyGold(2000)
DestroyGold(2000)
SetGlobal("Teleportation","LOCALS",1)
CreateVisualEffectObject("icrmpari",Myself)
AddSpecialAbility("c0auto7a")
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-SLOW
~魔像缓慢：本机每天可施放两次魔像缓慢。

需求：12 级奇械师，缓慢卷轴两张，4,000 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl1o")
PartyGoldGT(3999)~ + ~升级。~ DO ~SetGlobal("C0AutoUpgradeSpecial2","GLOBAL",1)
TakePartyItemNum("scrl1o",2)
DestroyItem("scrl1o")
TakePartyGold(4000)
DestroyGold(4000)
SetGlobal("GolemSlow","LOCALS",1)
CreateVisualEffectObject("icrmpari",Myself)
AddSpecialAbility("c0auto8a")
AddSpecialAbility("c0auto8a")
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-HASTE
~魔像疾行：本机每天可施放两次魔像疾行。

需求：12 级奇械师，疾速卷轴两张，4,000 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
PartyHasItem("scrl1h")
PartyGoldGT(3999)~ + ~升级。~ DO ~SetGlobal("C0AutoUpgradeSpecial3","GLOBAL",1)
TakePartyItemNum("scrl1h",2)
DestroyItem("scrl1h")
TakePartyGold(4000)
DestroyGold(4000)
SetGlobal("GolemHaste","LOCALS",1)
CreateVisualEffectObject("icrmpari",Myself)
AddSpecialAbility("c0auto9a")
AddSpecialAbility("c0auto9a")
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-GASCLOUD
~毒气云：本机每天可施放一次毒气云。

需求：16 级奇械师，死亡之雾卷轴一张，死云卷轴一张，6,000 金币~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,15)
PartyHasItem("scrl7r")
PartyHasItem("scrl2e")
PartyGoldGT(5999)~ + ~升级。~ DO ~SetGlobal("C0AutoUpgradeSpecial4","GLOBAL",1)
TakePartyItemNum("scrl7r",1)
DestroyItem("scrl7r")
TakePartyItemNum("scrl2e",1)
DestroyItem("scrl2e")
TakePartyGold(6000)
DestroyGold(6000)
SetGlobal("GasCloud","LOCALS",1)
CreateVisualEffectObject("icrmpari",Myself)
AddSpecialAbility("c0auto0a")
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-ARCANE-1
~奥术增幅 I：借助拉沃克的《伊玛斯卡魔像制造手册》研究资料，可为自动机械注入足够的魔力，使其能施放至多 2 级法术。

需求：11 级奇械师，2,000 金币。队伍中必须有至少 5 级法师。~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,11)
OR(6)
ClassLevelGT(Player1,WIZARD,5)
ClassLevelGT(Player2,WIZARD,5)
ClassLevelGT(Player3,WIZARD,5)
ClassLevelGT(Player4,WIZARD,5)
ClassLevelGT(Player5,WIZARD,5)
ClassLevelGT(Player6,WIZARD,5)
PartyGoldGT(1999)~ + ~升级。~ DO ~SetGlobal("C0AutoUpgradeSpecial5","GLOBAL",1)
TakePartyGold(2000)
DestroyGold(2000)
CreateVisualEffectObject("SPROTECT",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-ARCANE-2
~奥术增幅 II：借助拉沃克的《伊玛斯卡魔像制造手册》研究资料，可为自动机械注入足够的魔力，使其能施放至多 4 级法术。 

需求：16 级奇械师，5,000 金币。队伍中必须有至少 9 级法师。~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,15)
OR(6)
ClassLevelGT(Player1,WIZARD,9)
ClassLevelGT(Player2,WIZARD,9)
ClassLevelGT(Player3,WIZARD,9)
ClassLevelGT(Player4,WIZARD,9)
ClassLevelGT(Player5,WIZARD,9)
ClassLevelGT(Player6,WIZARD,9)
PartyGoldGT(4999)~ + ~升级。~ DO ~SetGlobal("C0AutoUpgradeSpecial5","GLOBAL",2)
TakePartyGold(5000)
DestroyGold(5000)
CreateVisualEffectObject("SPROTECT",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-ARCANE-3
~奥术增幅 III：借助拉沃克的《伊玛斯卡魔像制造手册》研究资料，可为自动机械注入足够的魔力，使其能施放至多 6 级法术。 

需求：22 级奇械师，10,000 金币。队伍中必须有至少 14 级法师。~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,21)
OR(6)
ClassLevelGT(Player1,WIZARD,14)
ClassLevelGT(Player2,WIZARD,14)
ClassLevelGT(Player3,WIZARD,14)
ClassLevelGT(Player4,WIZARD,14)
ClassLevelGT(Player5,WIZARD,14)
ClassLevelGT(Player6,WIZARD,14)
PartyGoldGT(0999)~ + ~升级。~ DO ~SetGlobal("C0AutoUpgradeSpecial5","GLOBAL",3)
TakePartyGold(10000)
DestroyGold(10000)
CreateVisualEffectObject("SPROTECT",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 UPGRADE-ARCANE-4
~奥术增幅 IV：借助拉沃克的《伊玛斯卡魔像制造手册》研究资料，可为自动机械注入足够的魔力，使其能施放至多 8 级法术。 

需求：28 级奇械师，20,000 金币。队伍中必须有至少 18 级法师。~
END
+ ~Kit(Lasttalkedtoby(Myself),C0AURA)
ClassLevelGT(Lasttalkedtoby(Myself),ROGUE,15)
OR(6)
ClassLevelGT(Player1,WIZARD,17)
ClassLevelGT(Player2,WIZARD,17)
ClassLevelGT(Player3,WIZARD,17)
ClassLevelGT(Player4,WIZARD,17)
ClassLevelGT(Player5,WIZARD,17)
ClassLevelGT(Player6,WIZARD,17)
PartyGoldGT(19999)~ + ~升级。~ DO ~SetGlobal("C0AutoUpgradeSpecial5","GLOBAL",4)
TakePartyGold(20000)
DestroyGold(20000)
CreateVisualEffectObject("SPROTECT",Myself)
DestroyAllDestructableEquipment()
SetGlobal("Upgraded","LOCALS",1)~ EXIT
++ ~返回。~ + upgrades2

CHAIN C0AUIN3 CHECK-UPGRADES
~本机当前拥有以下升级：~
== C0AUIN3 IF ~GlobalLT("C0AutoUpgradeOffense1","GLOBAL",1)~ THEN ~强化锋刃 I：攻击视同 +1 武器。~
== C0AUIN3 IF ~Global("C0AutoUpgradeOffense1","GLOBAL",1)~ THEN ~强化锋刃 II：攻击视同 +2 武器。~
== C0AUIN3 IF ~Global("C0AutoUpgradeOffense1","GLOBAL",2)~ THEN ~强化锋刃 III：攻击视同 +3 武器。~
== C0AUIN3 IF ~Global("C0AutoUpgradeOffense1","GLOBAL",3)~ THEN ~强化锋刃 IV：攻击视同 +4 武器。~
== C0AUIN3 IF ~Global("C0AutoUpgradeOffense2","GLOBAL",1)~ THEN ~冲击武器 I：钝击伤害 +5%。钝击攻击有 30% 几率使目标在对抗死亡豁免 -3 的检定失败时陷入震慑。~
== C0AUIN3 IF ~Global("C0AutoUpgradeOffense2","GLOBAL",2)~ THEN ~冲击武器 II：钝击伤害 +10%。钝击攻击有 35% 几率使目标在对抗死亡豁免 -4 的检定失败时陷入震慑。~
== C0AUIN3 IF ~Global("C0AutoUpgradeOffense2","GLOBAL",3)~ THEN ~冲击武器 III：钝击伤害 +15%。钝击攻击有 40% 几率使目标在对抗死亡豁免 -5 的检定失败时陷入震慑。~
== C0AUIN3 IF ~Global("C0AutoUpgradeOffense3","GLOBAL",1)~ THEN ~锐锋 I：挥砍伤害 +5%。挥砍攻击获得 +5% 暴击率。~
== C0AUIN3 IF ~Global("C0AutoUpgradeOffense3","GLOBAL",2)~ THEN ~锐锋 II：挥砍伤害 +10%。挥砍攻击获得 +10% 暴击率。~
== C0AUIN3 IF ~Global("C0AutoUpgradeOffense3","GLOBAL",3)~ THEN ~锐锋 III：挥砍伤害 +15%。挥砍攻击获得 +15% 暴击率。~
== C0AUIN3 IF ~Global("C0AutoUpgradeDefense1","GLOBAL",1)~ THEN ~强化装甲 I：防御等级 +2。伤害抗性 +5%。~
== C0AUIN3 IF ~Global("C0AutoUpgradeDefense1","GLOBAL",2)~ THEN ~强化装甲 II：防御等级 +4。伤害抗性 +10%。~
== C0AUIN3 IF ~Global("C0AutoUpgradeDefense1","GLOBAL",3)~ THEN ~强化装甲 III：防御等级 +6。伤害抗性 +15%。~
== C0AUIN3 IF ~Global("C0AutoUpgradeDefense2","GLOBAL",1)~ THEN ~反魔法护盾 I：豁免检定 +1。魔法抗性 +10%。~
== C0AUIN3 IF ~Global("C0AutoUpgradeDefense2","GLOBAL",2)~ THEN ~反魔法护盾 II：豁免检定 +2。魔法抗性 +20%。~
== C0AUIN3 IF ~Global("C0AutoUpgradeDefense2","GLOBAL",3)~ THEN ~反魔法护盾 III：豁免检定 +3。魔法抗性 +30%。~
== C0AUIN3 IF ~Global("C0AutoUpgradeDefense3","GLOBAL",1)~ THEN ~自修复奇术 I：生命值上限 +10。每 2 回合恢复 1 点生命值。~
== C0AUIN3 IF ~Global("C0AutoUpgradeDefense3","GLOBAL",2)~ THEN ~自修复奇术 II：生命值上限 +20。每回合恢复 1 点生命值。~
== C0AUIN3 IF ~Global("C0AutoUpgradeDefense3","GLOBAL",3)~ THEN ~自修复奇术 III：生命值上限 +30。每回合恢复 2 点生命值。~
== C0AUIN3 IF ~Global("C0AutoUpgradeSpecial1","GLOBAL",1)~ THEN ~传送：本机可随意传送到视野内任何地点。~
== C0AUIN3 IF ~Global("C0AutoUpgradeSpecial2","GLOBAL",1)~ THEN ~魔像缓慢：本机每天可施放两次魔像缓慢。~
== C0AUIN3 IF ~Global("C0AutoUpgradeSpecial3","GLOBAL",1)~ THEN ~魔像疾行：本机每天可施放两次魔像疾行。~
== C0AUIN3 IF ~Global("C0AutoUpgradeSpecial4","GLOBAL",1)~ THEN ~毒气云：本机每天可施放一次毒气云。~
== C0AUIN3 IF ~Global("C0AutoUpgradeSpecial5","GLOBAL",1)~ THEN ~奥术增幅 I：本机可施放至多 2 级法术。~
== C0AUIN3 IF ~Global("C0AutoUpgradeSpecial5","GLOBAL",2)~ THEN ~奥术增幅 II：本机可施放至多 4 级法术。~
== C0AUIN3 IF ~Global("C0AutoUpgradeSpecial5","GLOBAL",3)~ THEN ~奥术增幅 III：本机可施放至多 6 级法术。~
== C0AUIN3 IF ~Global("C0AutoUpgradeSpecial5","GLOBAL",4)~ THEN ~奥术增幅 IV：本机可施放至多 8 级法术。~
EXTERN C0AUIN3 upgrades2

CHAIN C0AUIN3 disableAI
~自卫协议已关闭。除跟随并保护其制造者外，自动机械不再主动行动。~
EXIT

CHAIN C0AUIN3 enableAI
~自卫协议已开启。自动机械会抵御一切敌意者对自身及其制造者的攻击。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2AutomatonControl","GLOBAL",0) !IsGabber("C0Aura")~ THEN C0AUIN3 b0
~自动机械无视你。~
EXIT

CHAIN IF WEIGHT #-1 ~!IsGabber("C0Aura") !IsGabber(Player1)~ THEN C0AUIN3 b0
~自动机械无视你。~
EXIT