INTERJECT L#NSCLE 5 C0AuraL#NSAMA5
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~朱伊布列克斯，那是个恶魔！典籍里称他为软泥之主。可我还没听说过有侏儒信他！~
EXTERN L#NSCLE 6

I_C_T L#NSCHIL 2 C0AuraL#NSCHIL2
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~哇，还真挺舒服的。连味道都没有。~
END

I_C_T L#NSBEH 10 C0AuraL#NSBEH10
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~你知道，他这话有道理。刚才那问题问得有点不顾人情，<CHARNAME>。~
END

I_C_T L#NSNYM 0 C0AuraL#NSNYM2
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~尼姆……？这名字听着耳熟……~
== L#NSNYM ~或许是该认得。你是奥瑞莉亚·格利默夏恩，对吧？没错，你跟你祖母像得惊人。~
== C0AURA2J ~你……你认识我祖母密涅瓦？对……我想起来了。她在书里写过你。你在多恩深窟。~
== L#NSNYM ~说得对。我明白自己在那几本书里没被写成什么好话，但我希望你有足够的智慧分清事实与故事。不管那少数几篇提到我名字的故事怎么说，我不过是个本分的商人。~
== C0AURA2J ~……~
== C0AURA2J ~你可知道——~
== L#NSNYM ~你若想打听你祖母的下落，只怕我并无此等消息。若我真知道，自然也会开个价卖给你。我们不过泛泛之交，仅此而已。我在此地纯粹是为了生意。~
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraOLBasilisks","GLOBAL",1)~ THEN C0AURA2J AURA-BASILISK
~呀，石化蜥蜴的脚印。真恶心。~ [C0BLANK]
DO ~SetGlobal("C0AuraOLBasilisks","GLOBAL",2)~
== C0AURA2J IF ~HasItemEquiped("c0auiden",Myself)~ THEN ~不过没事。我的护目镜是单向反光镜片。戴着它对付石化蜥蜴毫无问题……只要它们不冲上来咬我。~
== C0AURA2J IF ~HasItem("c0auiden",Myself) !HasItemEquiped("c0auiden",Myself)~ THEN ~不过没事。记得我护目镜是单向反光镜片吗？这种时候就派上用场了。~
== C0AURA2J IF ~!HasItem("c0auiden",Myself)~ THEN ~这下怪了。我把护目镜放哪儿了……？~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraOLLightpiercer","GLOBAL",1)~ THEN C0AURA2J AURA-LIGHTPIERCER
~哦哦哦……这支箭真了不起！它的魔法能量就像星星一样往外散！~ [C0BLANK]
DO ~SetGlobal("C0AuraOLLightpiercer","GLOBAL",2)~
== C0AURA2J ~我能……我能用一下吗？求你了——~
END
  ++ ~尽管拿去。我相信它跟你用的那把弓很配。~ + AURA-LIGHTPIERCER-1
  ++ ~好吧。只是别拿它不当回事！~ + AURA-LIGHTPIERCER-1
  ++ ~不，这东西我自己另有打算。~ + AURA-LIGHTPIERCER-2

CHAIN C0AURA2J AURA-LIGHTPIERCER-1
~好耶！哦，这一定会很有意思！~
DO ~TakePartyItem("L#NSARR") XEquipItem("L#NSARR",Myself,SLOT_AMMO0,EQUIP)~ EXIT

CHAIN C0AURA2J AURA-LIGHTPIERCER-2
~唉……~
EXIT