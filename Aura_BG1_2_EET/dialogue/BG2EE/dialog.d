BEGIN BC0AURA2
BEGIN C0AUR25J
BEGIN C0AURA2J
BEGIN C0AURA2
BEGIN C0AURA25
BEGIN C0AURA2P
BEGIN C0AUR25P
BEGIN C0AU01TK
BEGIN C0ATHF1
BEGIN C0ATHF2
BEGIN C0ATHF3
BEGIN C0ATHF4
BEGIN C0AGOL02
BEGIN C0AGOL03
BEGIN C0AKOKO
BEGIN C0APICO
BEGIN C0AMAGN
BEGIN C0ABOOK3
BEGIN C0AREES
BEGIN C0AASCL
BEGIN C0AASCS
BEGIN C0AQMAN
BEGIN C0AQDAD
BEGIN C0AQTHF
BEGIN C0AQINSP
BEGIN C0AQINS2
BEGIN C0AQINT1
BEGIN C0AQINT2
BEGIN C0AQINT3
BEGIN C0AQMON1
BEGIN C0AQMON2
BEGIN C0MUFFY2
BEGIN C0TAMIA
BEGIN C0KORSH
BEGIN C0KORSHB
BEGIN C0DEDAL
BEGIN C0AKID1
BEGIN C0AKID2
BEGIN C0AKID3
BEGIN C0AKID4
BEGIN C0AFIR01
BEGIN C0AFIR05
BEGIN C0AFRITZ
BEGIN C0AEX1
BEGIN C0AUKARI
BEGIN C0AYUKI
BEGIN C0AICE01
BEGIN C0AJUNO
BEGIN C0ALUNA
BEGIN C0CARNIF
BEGIN C0AGNO03
BEGIN C0AGNO04
BEGIN C0AGNO05
BEGIN C0AGNO06
BEGIN C0AMISC8
BEGIN C0AUSPE1
BEGIN BC0AUR25
BEGIN C0AU25WR
BEGIN C0ACERI
BEGIN C0ACERI2
BEGIN C0LIRO
BEGIN C0LIRO2
BEGIN C0AUIMIX

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBImixAngry","GLOBAL",1)~ THEN C0AUIMIX IMIX
~你……！你身上带着我那愚蠢、死去的子嗣被盗的本质！你要用你的神血来偿，神裔！~ [C0BLANK]
DO ~SetGlobal("C0AuraToBImixAngry","GLOBAL",2)
ReallyForceSpell(Myself,WARRIOR_HARDINESS)
ReallyForceSpell(Myself,WARRIOR_GREATER_WHIRLWIND)
ReallyForceSpell(Myself,WARRIOR_CRITICAL_STRIKE)
ReallyForceSpellRES("C0AQEF12",Myself)~ EXIT


CHAIN IF WEIGHT #-1 ~IsGabber("C0Aura")~ THEN C0AMISC8 SUNSHOOTERLENS
~把镜片装到太阳射手上面？~ [C0BLANK]
END
+ ~HasItem("c0amisc8",Myself)~ + ~装上精准镜片~ DO ~
EquipMostDamagingMelee()
SetInterrupt(FALSE)
PlaySound("C0AUBOW")
DestroyItem("c0amisc8")
ApplySpellRES("C0AQEF26",Myself)
EquipRanged()
SetSequence(8)
SetInterrupt(TRUE)~ EXIT
++ ~离开~ EXIT

CHAIN IF WEIGHT #-1 ~GlobalLT("C0KokoGiveFish","GLOBAL",2)~ THEN C0AKOKO a1
~*喵*~ [CAT01]
= IF ~Global("C0KokoGiveFish","GLOBAL",1)
GlobalTimerExpired("C0KokoGiveFishTimer","GLOBAL")~ THEN ~（那猫在你脚边蹭来蹭去。）~
END
+ ~Global("C0KokoGiveFish","GLOBAL",1)
GlobalTimerExpired("C0KokoGiveFishTimer","GLOBAL")~ + ~怎么了，饿了？想吃东西？~ EXTERN C0AKOKO a1.2
+ ~Global("C0KokoGiveFish","GLOBAL",1)
GlobalTimerExpired("C0KokoGiveFishTimer","GLOBAL")~ + ~走开。我现在没什么给你的。~ EXTERN C0AKOKO a1.2
+ ~!IsGabber("C0Aura")
InParty("C0Aura")
!Dead("C0Aura")
Range("C0Aura",15)
!Global("C0AuraKnowBG1","GLOBAL",1)
Global("C0AuraBG1Koko","GLOBAL",0)~ + ~嘿……这不就是陪你去龙矛堡的那只猫吗？~ DO ~SetGlobal("C0AuraBG1Koko","GLOBAL",1)~ EXTERN C0AURA2J a1.1
+ ~!IsGabber("C0Aura")
!InParty("C0Aura")
!Dead("C0Aura")
Range("C0Aura",15)
!Global("C0AuraKnowBG1","GLOBAL",1)
Global("C0AuraBG1Koko","GLOBAL",0)~ + ~嘿……这不就是陪你去龙矛堡的那只猫吗？~ DO ~SetGlobal("C0AuraBG1Koko","GLOBAL",1)~ EXTERN C0AURA2P a1.1
IF ~~ EXIT

CHAIN C0AURA2J a1.1
~对！我们打赢十字军之后……发生了那么多事，可可酱还是回来了。我想我们一起待的那些时间让我们有了感情。~
= ~他似乎很喜欢这间工坊，所以我就把他留在这儿，任他爱干什么干什么。有时他会下楼在家里追老鼠，可我觉得塔特的小猫不太喜欢他。~
END
IF ~Global("C0KokoGiveFish","GLOBAL",1)~ EXTERN C0AKOKO a1.2
IF ~!Global("C0KokoGiveFish","GLOBAL",1)~ EXIT

CHAIN C0AURA2P a1.1
~对！我们打赢十字军之后……发生了那么多事，可可酱还是回来了。我想我们一起待的那些时间让我们有了感情。~
= ~他似乎很喜欢这间工坊，所以我就把他留在这儿，任他爱干什么干什么。有时他会下楼在家里追老鼠，可我觉得塔特的小猫不太喜欢他。~
END
IF ~Global("C0KokoGiveFish","GLOBAL",1)
GlobalTimerExpired("C0KokoGiveFishTimer","GLOBAL")~ EXTERN C0AKOKO a1.2
IF ~OR(2)
!Global("C0KokoGiveFish","GLOBAL",1)
GlobalTimerNotExpired("C0KokoGiveFishTimer","GLOBAL")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",1)~ THEN C0APICO begin.0
~啊哈！你在这儿，你这个小混蛋！~ [C0BLANK]
DO ~SetGlobal("C0AuraBegin","GLOBAL",2)~
== MAJAN IF ~InMyArea("MAJAN")
!Dead("MAJAN")~ THEN ~天哪！那只猫又跑出来了？我好像刚看见有什么东西冲出门去。~
== C0AKOKO ~*喵！*~ [CAT01]
END
++ ~我猜这只猫是你的？~ EXTERN C0APICO begin.1
++ ~下次把这蠢害虫看紧点！~ EXTERN C0APICO begin.1

CHAIN C0APICO begin.1
~太、太对不起了，<PRO_SIRMAAM>！他总想逃出去……~
== C0AKOKO ~*喵——！*~ [CAT01]
== C0APICO ~一天五次。一天。五次！你不是想跳出窗户，就是设法把门闩拨开、顺着梯子爬下去。你连对生拇指都没有，到底怎么做到的？~
== C0AKOKO ~*哈欠*~ [CAT01]
== C0APICO ~哦，等你主人回来你就等着。*咳* 恕罪，<PRO_SIRMAAM>，我这就把他带回去。~
END
++ ~别在意。~ + begin.2
++ ~我以前在哪儿见过这只猫……~ DO ~SetGlobal("C0AuraKnowsBG1","GLOBAL",1)~ + begin.2
++ ~把这东西从我这儿弄走。~ + begin.2

CHAIN C0APICO begin.2
~我这就从他手上接过来……坏猫！张嘴……好了。也别再叼着铜线到处跑了，好吗？~
== C0APICO IF ~InMyArea("MAJAN")
!Dead("MAJAN")~ THEN ~阿姨，真抱歉这么吵。~
== MAJAN IF ~InMyArea("MAJAN")
!Dead("MAJAN")~ THEN ~不碍事，亲爱的。你回屋去吧。~
== C0APICO ~好，等奥拉小姐回家，你要挨一顿大训！走，回工坊去，可可，快走！~
DO ~SetGlobal("C0AuraBegin","GLOBAL",2)
	TakePartyItem("C0AUCAT2")
	DestroyItem("C0AUCAT2")
	Wait(1)
	ClearAllActions()
	StartCutSceneMode()
	StartCutScene("c0acut1")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",2)
Global("C0AuraMajanTalk","GLOBAL",0)~ THEN MAJAN MAJANSEN
~天哪，家里多了亲戚和客人就是热闹。真抱歉让你看这出，亲爱的。平常这儿没这么吵。~
DO ~SetGlobal("C0AuraMajanTalk","GLOBAL",1)~
== JANJ IF ~IsValidForPartyDialog("JAN")~ THEN ~妈，那不是皮可堂哥吗？我看他从埃什普塔当鞋匠回来了。还在工坊里！我不在时没想到那屋子会有人用。~
== MAJAN ~你看，我们近来有个客人。那猫是她的。她出门办事去了，可一直住在后面那间工坊。~
END
++ ~你侄子提到了奥拉。她莫非是兰坦来的奇械师？粉头发、护目镜、肩上顶着只金属松鼠？~ DO ~SetGlobal("C0AuraKnowsBG1","GLOBAL",1)~ + MAJANSEN-BG1
+ ~!InParty("JAN")~ + ~你们后面那是间什么工坊？~ + MAJANSEN-1a
+ ~InParty("JAN")~ + ~你们后面那是间什么工坊？~ + MAJANSEN-1b
++ ~我得走了。失陪。~ + MAJANSEN-0

CHAIN MAJAN MAJANSEN-0
~当然，我不再占用你的时间。愿你有个美好的<DAYNIGHTALL>。~
EXIT

CHAIN MAJAN MAJANSEN-1a
~哦，那只是我儿子扬用来弄他各种小装置的一间屋子。他不在时里面通常静得像老鼠，可我们这位客人住进来后，我们把屋子清出了点地方。~
EXTERN MAJAN MAJANSEN-2

CHAIN MAJAN MAJANSEN-1b
~哦，那只是扬用来弄他各种小装置的一间屋子。他不在时里面通常静得像老鼠，可我们这位客人住进来后，我们把屋子清出了点地方。~
== JANJ IF ~IsValidForPartyDialog("JAN")~ THEN ~母亲！你把我的东西清了？希望你没把根茎炼化器扔了。我在这上头可花了不少功夫。~
== MAJAN ~没有，没有，大部分东西都还在原处。你做的那些东西她很感兴趣。她做的是类似的手艺。~
EXTERN MAJAN MAJANSEN-2

CHAIN MAJAN MAJANSEN-2
~你看，她是从兰坦来的。那是个满是聪明发明家和奇械师的岛国，能跟她作伴、把工坊借给她，真是意外的荣幸。~
END
+ ~OR(2)
BeenInParty("C0Aura")
Global("EndOfBG1","GLOBAL",0)~ + ~你侄子说她的名字是奥拉？我想我也许认识她。~ DO ~SetGlobal("C0AuraKnowsBG1","GLOBAL",1)~ + MAJANSEN-2a
+ ~OR(2)
BeenInParty("C0Aura")
Global("EndOfBG1","GLOBAL",0)~ + ~我就觉得那猫看着眼熟……~ DO ~SetGlobal("C0AuraKnowsBG1","GLOBAL",1)~ + MAJANSEN-2b
++ ~你这位客人是谁？~ + MAJANSEN-3
++ ~我得走了。失陪。~ + MAJANSEN-0

CHAIN MAJAN MAJANSEN-BG1
~是，一点没错。她出自格利默夏恩家——兰坦一个极有声望的姓氏。你莫非是她的朋友？~
END
+ ~!Global("AnomenRomanceActive","GLOBAL",2)
!Global("RasaadRomanceActive","GLOBAL",2)
!Global("DornRomanceActive","GLOBAL",2)
!Global("HexxatRomanceActive","GLOBAL",2)
Global("C0AuraMatch","GLOBAL",1)~ + ~其实不止是朋友。我们曾……很亲近。~ DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",1)~ + MAJANSEN-4
++ ~是，我是。~ + MAJANSEN-4
++ ~不完全算，可我确实认识她。~ + MAJANSEN-4

CHAIN MAJAN MAJANSEN-2a
~是，是，她叫这个名字。她出自格利默夏恩家——兰坦一个极有声望的姓氏。你莫非是她的朋友？~
END
+ ~!Global("AnomenRomanceActive","GLOBAL",2)
!Global("RasaadRomanceActive","GLOBAL",2)
!Global("DornRomanceActive","GLOBAL",2)
!Global("HexxatRomanceActive","GLOBAL",2)
Global("C0AuraMatch","GLOBAL",1)~ + ~其实不止是朋友。我们曾……很亲近。~ DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",1)~ + MAJANSEN-4
++ ~是，我是。~ + MAJANSEN-4
++ ~不完全算，可我确实认识她。~ + MAJANSEN-4

CHAIN MAJAN MAJANSEN-2b
~哦，你认识那位年轻小姐？她叫奥拉，出自格利默夏恩家——兰坦一个极有声望的姓氏。你莫非是她的朋友？~
END
+ ~!Global("AnomenRomanceActive","GLOBAL",2)
!Global("RasaadRomanceActive","GLOBAL",2)
!Global("DornRomanceActive","GLOBAL",2)
!Global("HexxatRomanceActive","GLOBAL",2)
Global("C0AuraMatch","GLOBAL",1)~ + ~其实不止是朋友。我们曾……很亲近。~ DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",1)~ + MAJANSEN-4
++ ~是，我是。~ + MAJANSEN-4
++ ~不完全算，可我确实认识她。~ + MAJANSEN-4

CHAIN MAJAN MAJANSEN-3
~她叫奥拉，属格利默夏恩一族。兰坦极有声望的姓氏。就连我们这儿的一些装置，也得归功于他们的手艺。她也是个可爱的姑娘。我们都很高兴她在这儿。~
END
+ ~OR(2)
BeenInParty("C0Aura")
Global("EndOfBG1","GLOBAL",0)~ + ~我想我认识她。我们曾在剑湾一起旅行过一阵。~ DO ~SetGlobal("C0AuraKnowsBG1","GLOBAL",1)~ + MAJANSEN-4
+ ~!BeenInParty("C0Aura")~ + ~这样的人认识一下会有用。她现在在哪儿？~ + MAJANSEN-5
++ ~这挺有意思，可我真得走了。失陪。~ + MAJANSEN-0

CHAIN MAJAN MAJANSEN-4
~哎呀，这不是挺巧？我猜你大概想见她、叙叙旧，对吧？~
EXTERN MAJAN MAJANSEN-5

CHAIN MAJAN MAJANSEN-5
~看这时间……嗯，若一切如常，我说她该快回来了。你若沿着本区往步道走一段，很有可能半路碰上她。~
DO ~SetGlobal("C0AuraBegin","GLOBAL",3)~
END
++ ~谢谢帮忙。我去找她。~ + MAJANSEN-6
++ ~那我晚点再来。~ + MAJANSEN-6

CHAIN MAJAN MAJANSEN-6
~当然，你现在去吧。希望你别太费劲找那位亲爱的姑娘。她挺显眼。~
DO ~~ EXIT

EXTEND_BOTTOM MAJAN 7
+ ~Global("C0AuraBegin","GLOBAL",2) !InParty("JAN")~ + ~能跟我说说后面那间工坊吗？~ + MAJANSEN-1a
+ ~Global("C0AuraBegin","GLOBAL",2) InParty("JAN")~ + ~能跟我说说后面那间工坊吗？~ + MAJANSEN-1b
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",10)
Global("C0AuraMaReminder","GLOBAL",0)~ THEN MAJAN MAJANSEN
~啊，<CHARNAME>！你若找奥拉，她回家了。她这会儿在工坊等你。~
DO ~SetGlobal("C0AuraMaReminder","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~Class(Myself,MAGE)
Kit(Myself,TRUECLASS)~ THEN C0ABOOK3 PYROMANCY
~记下书中内容后，它猛地烧了起来。~
DO ~AddKit(C0PYROM)
CreateVisualEffectObject("ICFIRSDI",Myself)
DestroyItem("C0ABOOK3")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KokoGiveFish","GLOBAL",2)~ THEN C0AKOKO a1.2
~*期待地喵叫*~ [CAT02]
DO ~SetGlobal("C0KokoGiveFish","GLOBAL",2)~
END
+ ~PartyHasItem("C0AFISH1")~ + ~来，吃这条蓝鳍金枪鱼。~ DO ~TakePartyItem("C0AFISH1") DestroyItem("C0AFISH1") SetGlobal("C0KokoFishType","GLOBAL",1) SetGlobalTimer("C0KokoGivesGift","GLOBAL",ONE_DAY)~ + a1.3
+ ~PartyHasItem("C0AFISH2")~ + ~来，吃这条暗鳞鲈。~ DO ~TakePartyItem("C0AFISH2") DestroyItem("C0AFISH2") SetGlobal("C0KokoFishType","GLOBAL",2) SetGlobalTimer("C0KokoGivesGift","GLOBAL",ONE_DAY)~ + a1.3
+ ~PartyHasItem("C0AFISH3")~ + ~来，吃这条条纹羊头鲷。~ DO ~TakePartyItem("C0AFISH3") DestroyItem("C0AFISH3") SetGlobal("C0KokoFishType","GLOBAL",3) SetGlobalTimer("C0KokoGivesGift","GLOBAL",ONE_DAY)~ + a1.3
+ ~PartyHasItem("C0AFISH4")~ + ~来，吃这条紫晶鳗。~ DO ~TakePartyItem("C0AFISH4") DestroyItem("C0AFISH4") SetGlobal("C0KokoFishType","GLOBAL",4) SetGlobalTimer("C0KokoGivesGift","GLOBAL",ONE_DAY)~ + a1.3
+ ~PartyHasItem("C0AFISH5")~ + ~来，吃这条王后刀鱼。~ DO ~TakePartyItem("C0AFISH5") DestroyItem("C0AFISH5") SetGlobal("C0KokoFishType","GLOBAL",5) SetGlobalTimer("C0KokoGivesGift","GLOBAL",ONE_DAY)~ + a1.3
+ ~PartyHasItem("L#NIFIS")~ + ~来，吃这条老鱼。~ DO ~ActionOverride(LastTalkedToBy,ApplyDamage(Myself,1,PIERCING))~ + a1.oldfish
++ ~我很想喂你，可我没东西给你。这城里哪儿能买到鱼……？~ EXIT
++ ~走开！嘘！~ EXIT

CHAIN C0AKOKO a1.3
~喵！*咀嚼咀嚼*~
= ~*呼噜*……~
DO ~SetGlobal("C0KokoGiveFish","GLOBAL",3) EscapeAreaObject("Door0600")~ EXIT

CHAIN C0AKOKO a1.oldfish
~（那猫迅速嗅了一下，随即用爪子挠你，还投来轻蔑的目光。）

*嘶——！*~
DO ~RunAwayFromNoLeaveArea(LastTalkedToBy,25)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KokoGiveFish","GLOBAL",3)~ THEN C0AKOKO a1.4
~喵！

（那猫亲昵地蹭你的腿，还在你脚边丢下个亮闪闪的东西。）~ [CAT02]
DO ~SetGlobal("C0KokoGiveFish","GLOBAL",2)~
END
IF ~Global("C0KokoFishType","GLOBAL",1)~ DO ~SetGlobal("C0KokoFishType","GLOBAL",0) GiveItemCreate("misc41",Player1,1,0,0)~ EXIT
IF ~Global("C0KokoFishType","GLOBAL",2)~ DO ~SetGlobal("C0KokoFishType","GLOBAL",0) GiveItemCreate("misc45",Player1,1,0,0)~ EXIT
IF ~Global("C0KokoFishType","GLOBAL",3)~ DO ~SetGlobal("C0KokoFishType","GLOBAL",0) GiveItemCreate("ring07",Player1,1,0,0)~ EXIT
IF ~Global("C0KokoFishType","GLOBAL",4)~ DO ~SetGlobal("C0KokoFishType","GLOBAL",0) GiveItemCreate("c0aston1",Player1,3,0,0)~ EXIT
IF ~Global("C0KokoFishType","GLOBAL",5)~ DO ~SetGlobal("C0KokoFishType","GLOBAL",0) GiveItemCreate("c0aring1",Player1,1,0,0)~ EXIT

// QUEST 1

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",1)~ THEN C0APICO QUEST1-PICO
~哦，奥拉小姐！恕罪，我没留意，没认出你来。~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",2)~
	== C0AURA2J ~皮可！你在这儿做什么？~
	== C0APICO ~就四处走走，小姐。我在替阿姨跑些差事，可比我预想的完得早，所以一直在找些能淘零碎东西的地方。~
	== C0AURA2J ~零碎东西，比如……你手里那是什么，皮可？你盯着它那么专注，我以为你要撞上我了。~
	== C0APICO ~这个？呃……只是个玩具，小姐。别笑，我一直喜欢收集这类特别的娃娃。我从没见过这样的，所以非得带回家。~
	== C0AURA2J ~我能仔细看看吗？~
	== C0APICO ~当然，小姐。~
	== C0AURA2J ~这*确实*做得极好……等等，要不是我弄错，这是兰坦的手艺！你从哪儿弄来的，皮可？~
	== C0APICO ~我在沃金步道一个新摊子上淘的，小姐。其实现在想起来，那摊贩是个跟你差不多年纪的侏儒。~
	== C0AURA2J ~嗯，真的？那他一定也是兰坦人。你知道他名字吗？~
	== C0APICO ~我想他叫里斯。棕发棕须，穿蓝上衣。小姐，你若有兴趣见他，他现在该还在步道，多数早晨也在。~
	DO ~EscapeArea()~
	== C0AURA2J ~我还真想去看看，若他真在做兰坦的手艺……我已好久没跟故乡的人面对面说话了。~
	== C0AURA2J ~若有空，你觉得我们能不能过去看看，<CHARNAME>？~
	END
		++ ~当然。有空我们就去看看。~ EXTERN C0AURA2J QUEST1-PICO-1
		++ ~我没兴趣买玩具。~ EXTERN C0AURA2J QUEST1-PICO-2

CHAIN C0AURA2J QUEST1-PICO-1
~谢谢，<CHARNAME>。我知道这是小事，可听说了之后，我忍不住好奇。~
EXIT

CHAIN C0AURA2J QUEST1-PICO-2
~我知道，我知道。这大概不是什么要紧事。可我真想看看这儿是否真有我家乡的手艺。我们若晚点路过步道，也许能快看一眼？~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",3)~ THEN C0AREES QUEST1-REESE
~……这个看着像个娃娃，可它能自己跳舞！你看，把钥匙插进去拧，四五圈就够了，然后……~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",4)~
== C0AKID3 ~哦——哦……~
== C0AKID1 ~里斯先生！能给我们看那辆带马车的小马吗？~
== C0AREES ~那个？嗯，你既然坚持……那么，请让条路。好了，现在我要用钥匙，然后……看它跑！~
== C0AKID2 ~哇！它真能自己动！像魔法一样。~
== C0AREES ~不，不是魔法，小伙子。这是一件极妙的发条装置，用复杂的零件和逻辑拼起来的。~
== C0AKID4 ~里斯先生，这些了不起的玩具都是你自己做的吗？~
== C0AREES ~我希望我能担这份荣耀，亲爱的，可不能。零件是我拼的，可这些都是我老师设计的，卡——嗯，我想你会觉得他名字太拗口，就叫他“麦格叔叔”吧。~
== C0AKID4 ~我们哪天能见到麦格叔叔吗？我想知道他做的一切！~
== C0AREES ~嗯……我怕他的腿不如从前有力了。他不大出工坊。可我会告诉他你的兴趣，小伙子。那么，谁想仔细看看这位可爱姑娘？~
== C0AKID3 ~我……我真想要那个娃娃……可我没钱……~
== C0AREES ~别担心，好姑娘。麦格叔叔希望这些作品能让像你这样的小孩开心。它就归你了——要修就回来。~
== C0AKID3 ~谢——谢谢你……~
== C0AREES ~那么，这个玩具骑士怎么样？看这颜色，还配一匹勇敢的坐骑！~
== C0AKID1 ~我，我！我要那个！~
== C0AURA2J ~<CHARNAME>，那些是兰坦的手艺！我隔这么远都看得出。~
END
++ ~真的？那可真巧。~ EXTERN C0AURA2J QUEST1-1
++ ~那侏儒也是像你一样的兰坦发明家？~ EXTERN C0AURA2J QUEST1-1
++ ~你想跟那位聊聊吗？~ EXTERN C0AURA2J QUEST1-1

CHAIN C0AURA2J QUEST1-1
~我好久没机会跟故乡的人说话了。而且那些玩具……不是简单的东西。“麦格叔叔”一定是位手艺大师。我……想问他几个问题，若可以。~
== C0AREES ~好了，小家伙们，今天我就这些了。明天再来，也许我再给你们看点别的。~
== C0AKID2 ~再见，里斯先生！~
DO ~ActionOverride("C0AKID1",EscapeArea())
ActionOverride("C0AKID2",EscapeArea())
ActionOverride("C0AKID3",EscapeArea())
ActionOverride("C0AKID4",EscapeArea())~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",4)~ THEN C0AREES QUEST1
~抱歉，我今天要收摊了。你要什么，得明天再来。~
END
IF ~!InParty("C0Aura")~ EXIT
IF ~InParty("C0Aura")~ DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",5)~ EXTERN C0AURA2J QUEST1.1

CHAIN C0AURA2J QUEST1.1
~Ciao！若不碍事，我希望能有机会聊聊。~
== C0AREES ~哦！这句问候我没想到会在这儿听到。你一定是从故乡来的，sonina。为另一个兰坦人，我当然能腾出些时间。~
== C0AURA2J ~谢谢！我是奥瑞莉亚·格利默夏恩，请叫我奥拉。这是我的朋友兼领队，<CHARNAME>。我们听说了你了不起的手艺，希望能见见你。~
== C0AREES ~格利默夏恩……你可以叫我里斯·斯普罗克特。你怎么会来这儿？~
== C0AURA2J ~嗯，就是旅行、向外邦求学……顺道交些朋友。你呢，soroni？~
== C0AREES ~我……呃，你可以说我在此地谋了生。我一直跟着我老师马格努森教授学。你可以说我是他的学生兼看护。~
== C0AURA2J ~马格努森……？听着耳熟……等等，他就是“麦格叔叔”？你卖的手艺是他做的？~
== C0AREES ~就是他。他跟你我一样是故乡人。我多年前来此求教，他收留了我。我帮他卖些手艺换点钱，别的时候帮他做研究。~
== C0AURA2J ~“研究”……你教授专精哪些东西？~
== C0AREES ~啊，列他不专精的还容易些。你找不到他没点知识的领域，工程、炼金、植物学……嗯，任何跟科学或数学理论相关的。他是无人可比的专家。~
== C0AURA2J ~这么一位故乡的显赫人物，竟在这儿……你觉得我见他合适吗？~
== C0AREES ~教授不常见客，可他其实相当可亲。我确定他若看见另一个兰坦人，会乐意尽量腾时间给你。我们住在贫民区后巷……等等，你若有地图……~
DO ~RevealAreaOnMap("C0AUR1")~
== C0AREES ~那地方主要住下层人，陌生人不大经过。不知道路的人大概不会特意去。我该回去了，我现在得走，可我会盼着在家见到你，sonina。再会！~
DO ~EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",5)~ THEN C0AREES QUEST1
~教授在另一间屋。~
EXIT

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)
Global("C0AuraBG2Quest1","GLOBAL",5)~ THEN C0AMAGN magnus1
~啊！我听到客人了？我把眼镜放哪儿了……哎，这儿！让我好好看看你……~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",6)~
== C0AMAGN ~嗯，我想我不认得你。你不是新来的送货<PRO_GIRLBOY>吧？不，我看你没带我在等的东西。~
END
++ ~我是<CHARNAME>。你的助手里斯跟我说了这地方。~ + magnus1.1a
+ ~InParty("C0Aura")~ + ~是我这位朋友想来见你。~ EXTERN C0AURA2J magnus1.2
++ ~说话当心，老头。我不是送货的<PRO_GIRLBOY>。~ + magnus1.1b

CHAIN C0AMAGN magnus1.1a
~是里斯说的，是吧？你一提我倒想起来了，他确实说过什么……说有位兰坦奇械师跟你一起，想见我，嗯？~
END
IF ~IsValidForPartyDialog("C0Aura")~ EXTERN C0AURA2J magnus1.2
IF ~!IsValidForPartyDialog("C0Aura")~ EXTERN C0AMAGN magnus1.3

CHAIN C0AMAGN magnus1.1b
~没有？嗯……想起来，里斯确实提过我也许该预备些客人……说有位兰坦奇械师想见我，嗯？~
END
IF ~IsValidForPartyDialog("C0Aura")~ EXTERN C0AURA2J magnus1.2
IF ~!IsValidForPartyDialog("C0Aura")~ EXTERN C0AMAGN magnus1.3

CHAIN C0AURA2J magnus1.2
~哦，那就是我，先生。我是奥瑞莉亚，属格利默夏恩一族。~
== C0AMAGN ~格利默夏恩，嗯？好家族。几代人出了不少有才华的工匠。我可以假定你也有米德文沃克的血吧？看鼻子就知道。~
== C0AURA2J ~你……你说得对，先生！我母亲是米德文沃克家的人。啊哈哈……光看鼻子就这么容易看出来？~
== C0AMAGN ~嗯，那形状错不了。我从没见过那一族有谁破过这个型。~
EXTERN C0AMAGN magnus1.4

CHAIN C0AMAGN magnus1.3
~不过，你身边似乎没见到这类人……相信我，我一眼就认得出我的亲族。可惜，下次来访你若能带他们来，我一定想见见。~
EXTERN C0AMAGN magnus1.4

CHAIN C0AMAGN magnus1.4
~总之……欢迎，欢迎来我家！我该跟你握手，可这一小时我手指泡在些挺脏的实验里了。~
== C0AMAGN ~哦对，我该报上名字。咳咳……卡里迪乌斯·C·马格努森，科学家兼发明家。原籍兰坦，可这半世纪我都把安姆当作家。~
END
IF ~IsValidForPartyDialog("C0Aura")~ EXTERN C0AURA2J magnus1.5
IF ~!IsValidForPartyDialog("C0Aura")~ EXTERN C0AMAGN magnus1.6

CHAIN C0AURA2J magnus1.5
~卡里迪乌斯·马格……抱歉，先生，可不知为何，我竟觉得你的名字不熟。~
== C0AMAGN ~不熟？嗯……没关系，亲爱的。以我们族里的人来说，你显得相当年轻，所以也不意外。我如今只是个安度晚年的老头。~
EXTERN C0AMAGN magnus1.6

CHAIN C0AMAGN magnus1.6
~在阿斯卡特拉，发明家没什么出路，更别说在穷区，可这简陋住处已是我能弄到的最好，我只能尽力过活。我的手艺至少还能以“麦格叔叔”的名头给孩子做玩具换几个钱，够糊口了。~
= ~话虽如此，你若属于冒险那类人，我这儿也许有些对你有价值的东西。我自己也许从没长期上路，可我是跨学科研究者，我的某些造物也许对你这类行当有用。~
= ~我怕我拿不出什么像样的欢迎，可你尽可把这儿当自己家，尽管我这小工作间挺小。还有这么多活要干，我不能闲着，可若有我能为你做的，请一定告诉我。~
EXIT

CHAIN IF ~RandomNum(4,1)
!NumTimesTalkedTo(0)~ THEN C0AMAGN QUEST1.1
~让我看看……我若，嗯……用醚……对，那该——呃，你需要什么吗？~ [C0A1101]
END
++ ~你有东西卖吗？~ + MAGN-SHOP
++ ~我能问你几个问题吗？~ + MAGN-QUESTIONS
++ ~现在不行。~ EXIT

CHAIN IF ~RandomNum(4,2)
!NumTimesTalkedTo(0)~ THEN C0AMAGN QUEST1.1
~我想再加十二盎司乳化剂就该成了……啊，是你！请随意，当自己家。~ [C0A1102]
END
++ ~你有东西卖吗？~ + MAGN-SHOP
++ ~我能问你几个问题吗？~ + MAGN-QUESTIONS
++ ~现在不行。~ EXIT

CHAIN IF ~RandomNum(4,3)
!NumTimesTalkedTo(0)~ THEN C0AMAGN QUEST1.1
~里斯，孩子，你见我那罐 157 号配方了吗？我发誓我放在……哦，恕罪。你需要什么吗？~ [C0A1103]
END
++ ~你有东西卖吗？~ + MAGN-SHOP
++ ~我能问你几个问题吗？~ + MAGN-QUESTIONS
++ ~现在不行。~ EXIT

CHAIN IF ~RandomNum(4,4)
!NumTimesTalkedTo(0)~ THEN C0AMAGN QUEST1.1
~贡德在上，若我还在年轻时候，我会亲自测试这些装置有没有毛病……呃，别在意老人的絮叨。我在听着……多半在。~ [C0A1104]
END
++ ~你有东西卖吗？~ + MAGN-SHOP
++ ~我能问你几个问题吗？~ + MAGN-QUESTIONS
++ ~现在不行。~ EXIT

CHAIN C0AMAGN MAGN-SHOP
~我这儿放着几个原型，正需要测试，你若感兴趣。只是小心——大多是实验性的。若真出了意外，一定回来告诉我。呃，前提是没要你的命、没把你弄残。~
END
++ ~让我看看你有什么。~ DO ~StartStore("C0AMAGN",LastTalkedToBy(Myself))~ EXIT
++ ~也许晚点。~ EXIT

CHAIN C0AMAGN MAGN-QUESTIONS
~问题？问题，对。你当然可以问，我的<GIRLBOY>。~
END
  + ~GlobalGT("C0AuraBG2Quest1","GLOBAL",53)
     Global("C0AuraMagnReese","GLOBAL",0)~ + ~你知道里斯是奥库卢斯派来监视你的人吗？~ DO ~SetGlobal("C0AuraMagnReese","GLOBAL",1)~ + MAGN-REESE
  + ~GlobalGT("C0AuraBG2Quest1","GLOBAL",48)
     Global("C0AuraMagnDisciples","GLOBAL",0)~ + ~我注意到，那些来自因特里图斯的侏儒提到“门徒”时你挺生气。这背后有故事吗？~ DO ~SetGlobal("C0AuraMagnDisciples","GLOBAL",1)~ + MAGN-DISCIPLES
  ++ ~其实，我更想看看你卖什么。~ + MAGN-SHOP
  ++ ~也许晚点。~ EXIT

CHAIN C0AMAGN MAGN-QUESTIONS2
~那么，你还有别的想问吗？~
END
  + ~GlobalGT("C0AuraBG2Quest1","GLOBAL",53)
     Global("C0AuraMagnReese","GLOBAL",0)~ + ~你知道里斯是奥库卢斯派来监视你的人吗？~ DO ~SetGlobal("C0AuraMagnReese","GLOBAL",1)~ + MAGN-REESE
  + ~GlobalGT("C0AuraBG2Quest1","GLOBAL",48)
     Global("C0AuraMagnDisciples","GLOBAL",0)~ + ~我注意到，那些来自因特里图斯的侏儒提到“门徒”时你挺生气。这背后有故事吗？~ DO ~SetGlobal("C0AuraMagnDisciples","GLOBAL",1)~ + MAGN-DISCIPLES
  ++ ~其实，我更想看看你卖什么。~ + MAGN-SHOP
  ++ ~也许晚点。~ EXIT

CHAIN C0AMAGN MAGN-REESE
~他告诉你了，嗯？嗯，我当然知道，自然。我流亡之后，就料到迟早会有他那样的人出现。~
= ~毕竟，一个聪明的兰坦年轻人碰巧在这贫民窟里发现我，这概率也太巧，不像单纯的巧合，你不觉得？更别说，凭我掌握的知识，艾罗奇绝不可能就这么放任我这些年无人看管。他们若不派人盯着我，我倒要觉得受辱了。~
= ~我知道，我也猜他聪明得早想到了，只是我们彼此从没明说。再说，有个能干的助手在身边对我更方便，而他纵是奥库卢斯的人，也仍是个渴望学习的年轻人。我相信他留下的决定不只是出于职责。~
EXTERN C0AMAGN MAGN-QUESTIONS2

CHAIN C0AMAGN MAGN-DISCIPLES
~啊……你不必为那事费心，我的<GIRLBOY>，不过告诉你大概也无妨。我还在桑巴尔学院当教授时，自然指导过许多年轻兰坦人。其中有两个……一对兄妹，才华足够做我的门生。~
== C0AMAGN ~他们叫戴达罗斯和格拉菲拉·迪内尔斯特兰德，后来都成了大工坊的高阶奇械师。戴达罗斯精于机械与无生命造物，掌管第十一工坊；而格拉菲拉……她像我一样着迷于生命及其运作，一向跟我更近，是第四工坊的领袖。~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~戴达罗斯和格拉菲拉？他们是我父亲那边的远亲……戴达罗斯叔叔是我父亲的同母异父兄弟，也是帮我造太阳射手的人。格拉菲拉姑母我只记得一点点……我年幼时她就去世了，可我记得她待人温和，常疼我。~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~我从不知道她是第四工坊的首席奇械师……也不知道那工坊是为什么建的。第四工坊的撤除，和她的死有关吗……？~
== C0AMAGN IF ~InParty("C0Aura")~ THEN ~我怕我在这事上算不上权威，亲爱的。我自己也所知甚少……只知道如今没有活着的亲历者见证她出了什么事，而惨剧之后不久，艾罗奇就把对生命实验的限制改成了彻底禁止。~
== C0AMAGN ~我猜格拉菲拉大概卷进了某个最终失控的计划，她的死，以及第四工坊成为兰坦人间的禁忌话题，彼此相关……可那都是过去了。我不想再想。~
EXTERN C0AMAGN MAGN-QUESTIONS2

CHAIN IF ~True()~ THEN C0AASCS GILBERT
~我向您问候，朋友。您是需要药水或医药？~
END
+ ~Global("C0AuraBG2Quest1","GLOBAL",35)~ + ~我要见阿斯克勒庇俄斯。他家在哪儿？~ + QUEST1-35
+ ~Global("C0AuraBG2Quest1","GLOBAL",13)~ + ~关于那人和他父亲……~ + GILBERT-QUEST
++ ~让我看看你有什么。~ DO ~StartStore("c0aascs",LastTalkedToBy)~ EXIT
++ ~这些药水都是你自己做的吗？~ + GILBERT-ASK
++ ~不，谢谢。~ EXIT

CHAIN C0AASCS GILBERT-ASK
~不是我，不。我的导师阿斯克勒庇俄斯，全阿斯卡特拉最好的医师兼药师，所有药水都是他亲手熬的。我向你保证，品质与效力无人能及。~
END
++ ~这么有本事的人，为什么让你在这种地方卖他的东西？~ + GILBERT-ASK-1
++ ~那我想看看你有什么。~ DO ~StartStore("c0aascs",LastTalkedToBy)~ EXIT
++ ~我明白了。可我现在不需要药水。~ EXIT

CHAIN C0AASCS GILBERT-ASK-1
~阿斯克勒庇俄斯大师……至少可以说，挺特别。他不在乎城里富裕的地方，宁可在这区干活，这里最需要医师。~
= ~他性子孤僻，可你若在对的时候来，会在这儿见到他亲自照料需要他手艺的人。不过多数日子他待在家里研究、制解药，由我把药提供给穷人。~
END
++ ~那我想看看你有什么。~ DO ~StartStore("c0aascs",LastTalkedToBy)~ EXIT
++ ~我明白了。可我现在不需要药水。~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",7)~ THEN C0AREES QUEST1-BEGIN
~哦，你走前，万一……“泰坦”这个词对你有特别意义吗？~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",8)~
END
++ ~泰坦？你是说那些巨人？~ + QUEST1-BEGIN-1
++ ~没什么要紧的，没有。怎么了？~ + QUEST1-BEGIN-2

CHAIN C0AREES QUEST1-BEGIN-1
~那通常是这意思……可若你只想到这个，那么……~
EXTERN C0AREES QUEST1-BEGIN-2

CHAIN C0AREES QUEST1-BEGIN-2
~我只是好奇，可若完全没印象，那就当我没问。~
END
IF ~InParty("C0Aura")~ THEN EXTERN C0AREES QUEST1-BEGIN-3
IF ~!InParty("C0Aura")~ THEN EXTERN C0AREES QUEST1-BEGIN-4

CHAIN C0AREES QUEST1-BEGIN-3
~你呢，奥瑞莉亚小姐？我猜你不知道？~
== C0AURA2J ~“泰坦”……你知道，我觉得近来听过有人用这词，可……我想不起来，抱歉。~
== C0AREES ~我明白了。~
EXTERN C0AREES QUEST1-BEGIN-4

CHAIN C0AREES QUEST1-BEGIN-4
~我只是想确认一下，可你若不知道，那也许最好。抱歉耽搁你了。~
DO ~AddJournalEntry(%Quest1_Entry_1%,QUEST)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",9)~ THEN C0AQMAN QUEST-MAN
~父亲！父亲，求你起来，至少让我背你！离这儿不会太远了，我们再走一段就能找到！~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",10)~
== C0AQMAN ~哦，你！求你帮我背我父亲！他病得很重，我得送他去医者那儿！~
END
  ++ ~你为什么往这边走？神殿区在另一头。~ + QUEST-MAN-1
  ++ ~好。你要去哪儿？~ + QUEST-MAN-2
  ++ ~这不关我的事。你自己背他。~ + QUEST-MAN-0

CHAIN C0AQMAN QUEST-MAN-0
~你这残忍的……该死！父亲，撑着，我保证把你送到医者那儿！~
DO ~ActionOverride("C0AQDAD",DestroySelf())
EscapeArea()~ EXIT

CHAIN C0AQMAN QUEST-MAN-1
~祭司们……他们治不了他的病！他出了毛病，只有一个人也许能帮。~
EXTERN C0AQMAN QUEST-MAN-2

CHAIN C0AQMAN QUEST-MAN-2
~“阿斯克勒庇俄斯”……我听说有位叫阿斯克勒庇俄斯的医者住在贫民区后巷，是个能治任何病、无论多凶险的奇迹手！求你，你得帮我把我父亲送到他那儿！~
END
  ++ ~好。把他抬起来，我们一起背。~ + QUEST-MAN-3
  ++ ~找别人吧。我忙。~ + QUEST-MAN-0

CHAIN C0AQMAN QUEST-MAN-3
~谢谢你，<PRO_SIRMAAM>！快，没时间可浪费！~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0AMOV01")
ActionOverride("C0AQDAD",DestroySelf())
EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",10)~ THEN C0AASCL QUEST-ASCLEPIOS
~诊断完成。你父亲中了一种不寻常的毒，已进入血流、扩散全身。~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",11)~
== C0AQMAN ~毒——毒？！可连祭司都束手无策……求你，先生，你一定治得了他！~
== C0AASCL ~治疗要时间，可你既然把他送到我这儿，他的命已脱离危险。退后，让我动手。~
DO ~StartCutSceneMode()
Wait(2)
ForceSpell("C0AQDAD",CLERIC_NEUTRALIZE_POISON)
Wait(2)
StartDialogNoSet(Myself)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",11)~ THEN C0AASCL QUEST-ASCLEPIOS-2
~从要害侵入的毒已清除。剩下只等身体自然排出残余的污液。~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",12)~
== C0AQMAN ~那……他会没事了？~
== C0AASCL ~我建议让他先在此歇息，直到能走动。按方喂药，接下来一周仔细观察他的状况。以后我亲自复查他恢复得如何。~
== C0AQMAN ~明白了，先生。谢谢你，先生！~
== C0AASCL ~吉尔伯特，你该知道所需药剂的配法。剩下的交给你。~
== C0AASCS ~是，师父。~
DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride("C0AASCL",EscapeArea())
Wait(3)
StartDialogNoSet(Myself)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",12)~ THEN C0AASCS QUEST-ASCLEPIOS-3
~别担心，好人。我师父的医术在全安姆无人能及。你父亲一周内就会痊愈。~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",13)~
== C0AQMAN ~我只能信你，先生……真惭愧，我几乎没什么能酬谢你……~
== C0AASCS ~不必付钱。我师父做事是为事本身，我也尽力帮助有需要的人。不过你若不介意，我想知道一件事。你父亲怎么变成这样的？~
== C0AQMAN ~他，嗯……~
== C0AASCS ~若是私事，你不必解释。~
== C0AQMAN ~不不，先生。只是……我自己也在琢磨。我父亲身体一向不好，到了这年纪只会越来越差。近来我根本想不到，情况居然好转了一阵，父亲好起来了……然后忽然就这样了。我就是不明白……他怎么会中毒？~
== C0AASCS ~确实奇怪……若容我问，他身体究竟何时开始好转，好转得多快？~
== C0AQMAN ~让我想想……嗯，一定是这一个月内。我自己都不敢信……有一天，他就是起得更早、吃得下整餐，还常出去散步。那么突然，像神在开恩。~
== C0AASCS ~那期间他见过别的医者吗？或服过什么特别的药？~
== C0AQMAN ~他……他不肯说，先生。我也问了……他只说他有个人要感谢……可我不知道他什么意思。~
== C0AASCS ~我明白了……朋友，若这话听着刺耳，请原谅，可这么迅速又意外的康复……不寻常。这样的奇迹不会无缘无故发生。~
== C0AASCS ~请别惊慌，可这事让我心里不安……这样的话，有件事我必须做。~
== C0AQMAN ~神啊！你在做什么？停下！~ [HIT_01A1]
== C0AASCS ~放松。我只是取一点血样。涂上治疗药膏血就会停。~
== C0AQMAN ~我——我明白了……那么……~
== C0AQMAN ~先生，我父亲……他会没事吗？他还有毛病吗？我还能做什么帮上忙？~
== C0AASCS ~嗯……你若放心把你父亲交给我照料，那我请你回家一趟，检查你父亲的东西里有没有异常。也许是某种不熟悉的药，或任何可疑买卖的书面记录。~
== C0AASCS ~这些症状显然不是自然疾病引起的，所以我只能怀疑是某种恶性的复合物作祟。任何能支持我判断的证据，都可能给我们进一步治疗的依据。~
== C0AQMAN ~我……我这就回去，把家里上上下下搜一遍找怪东西，先生。这期间请尽量照料我父亲！~
DO ~EscapeArea()~ EXIT

CHAIN C0AASCS GILBERT-QUEST
~是……可怜的小子。我完全明白他的痛苦，对父亲的苦无能为力。我会尽力，可除非我们进一步知道具体病因，我怕什么都说不准。~
= ~我只能尽力。有我师父阿斯克勒庇俄斯的传授，我相信机会总比没有好。~
END
  ++ ~我能帮上什么吗？~ + GILBERT-QUEST-1
  ++ ~我要买些药水。~ DO ~StartStore("c0aascs",LastTalkedToBy)~ EXIT
  ++ ~那祝你好运。我得走了。~ EXIT

CHAIN C0AASCS GILBERT-QUEST-1
~我不该对与这事没什么关系的人提出难办的要求……可你好心把这人送来，也许愿意再多做点。~
= ~据我所知……有一条线索可以跟。纯属猜测，可传言说一种叫泰坦的奇迹药已在这城的黑市流传。~ 
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~泰坦……又是那个词。~
== C0AASCS IF ~InParty("C0Aura")~ ~你知道它？~
== C0AURA2J IF ~InParty("C0Aura")~ ~不久前有人跟我们提过有叫这个名字的东西，可……我们只知道这些。~
== C0AASCS ~我明白了。那你跟我一样一无所知。~
END
  ++ ~这看着可疑。你为什么没跟那人的儿子提？~ + GILBERT-QUEST-2
  ++ ~你知道这传言有几分真吗？~ + GILBERT-QUEST-2

CHAIN C0AASCS GILBERT-QUEST-2
~我说过，这只是传言，而且是近来的。更别说若牵涉黑道，真相背后大概是极大的危险。~
= ~这事不过是毫无根据的猜测，我不能就这么把理论摆到一个平民面前。尤其在他那么绝望的时候……我怕他会因此做出什么事。~
END
  ++ ~说得有理。可你相信这个“泰坦”可能牵涉其中吗？~ + GILBERT-QUEST-3
  ++ ~我不怕跟黑市打交道。我能做什么？~ + GILBERT-QUEST-4

CHAIN C0AASCS GILBERT-QUEST-3
~若真有这种物质，那我怀疑这不明疾病的突然出现不会是什么巧合。话虽如此……~
EXTERN C0AASCS GILBERT-QUEST-4

CHAIN C0AASCS GILBERT-QUEST-4
~我怕我不知道你该怎么查明真相。也许黑市的人，或别的黑道组织——若你敢跟他们说话——能让你多知道些，尽管那无疑危险。~
== JANJ IF ~InParty("Jan")~ THEN ~“泰坦”，嗯？好几辈子以前，我还曾想成为泰坦……不过，若说的是非法药物，我想城里有些销赃人一定听过，这类消息传得像毒藤引起的疹子一样快。也许我们弄到一点，我倒能看看它……就为好奇……~
== JAHEIRAJ IF ~InParty("Jaheira")~ THEN ~这种事上，铜冠酒馆的伯纳德无疑有些消息可以透露。不过我不信他蠢到自己经手这东西，所以他最多能指个正确方向。~
== YOSHJ IF ~InParty("Yoshimo")
!Global("WorkingForBodhi","GLOBAL",1)~ THEN ~这“泰坦”……朋友，我们相识前不久，我在这城里似乎听过相关的事。不过凭我的常识，我明智地跟这类东西保持手不沾。可我们那位“朋友”盖兰·贝尔，凭他的门路也许知道内情。问他许是稳妥的一步。~
== EDWINJ IF ~InParty("Edwin")
!Global("WorkingForBodhi","GLOBAL",1)~ THEN ~嗯。声称如此之大的东西也许值得研究……自己弄些“泰坦”来也许对我们有利。影贼无疑知道内情。我们该去问他们。~
== C0AASCS ~朋友，我能说的就这些。我不要求你去冒险，可你若查出什么，请告诉我。若发现更多信息，我也许能为这病人做点什么。~
DO ~AddJournalEntry(%Quest1_Entry_2%,QUEST)
SetGlobal("C0AuraBG2Quest1AskTitan","GLOBAL",1)
SetGlobal("C0AuraBG2Quest1","GLOBAL",14)~ EXIT

EXTEND_TOP GAELAN 42 49 51
+ ~Global("C0AuraBG2Quest1","GLOBAL",14) Global("C0AuraBG2Quest1AskTitan","GLOBAL",1)~ + ~我好奇你知不知道哪儿能弄到泰坦。~ DO ~SetGlobal("C0AuraBG2Quest1AskTitan","GLOBAL",2)~ EXTERN GAELAN GAELAN-TITAN
END

EXTEND_TOP BERNARD 31
+ ~Global("C0AuraBG2Quest1","GLOBAL",14) Global("C0AuraBG2Quest1AskTitan","GLOBAL",1)~ + ~我好奇你知不知道哪儿能弄到泰坦。~ DO ~SetGlobal("C0AuraBG2Quest1AskTitan","GLOBAL",2)~ EXTERN BERNARD BERNARD-TITAN
END

EXTEND_TOP BMTHIEF 0 4
+ ~Global("C0AuraBG2Quest1","GLOBAL",14) Global("C0AuraBG2Quest1AskTitan","GLOBAL",1)~ + ~我好奇你知不知道哪儿能弄到泰坦。~ DO ~SetGlobal("C0AuraBG2Quest1AskTitan","GLOBAL",2)~ EXTERN BMTHIEF BMTHIEF-TITAN
END

CHAIN BERNARD BERNARD-TITAN
~泰坦……我知道，是啊，可我要敢碰那毒药，愿神劈了我。听着，朋友。我们这儿确实卖过些不合法东西，我不否认……可我见过服了泰坦进来的人，不管它声称给什么……后果都不值，我跟你保证。~
= ~你若真这么不在乎自己的命，我听说墓园区夜里有些交易。这也算合适，反正沾这买卖的人最后都会到那儿去，不管怎么去的。~
EXIT

CHAIN BMTHIEF BMTHIEF-TITAN
~泰坦……？啊，我明白了……你要的是那个，是吗？~
= ~可惜，影贼不做泰坦，我的<PRO_LADYLORD>。我不久前确实手上有过一份那古怪调配物，可上面下令，落到我们手里的都要销毁。看来高层觉得好处不值那代价。~
= ~话虽如此，你若因某种原因坚持要弄到手……我听说他们夜里在墓园区做这买卖。我怕这是我给的最好线索了。~
EXIT

CHAIN GAELAN GAELAN-TITAN
~泰坦？我<PRO_LADYLORD>，那你可找错人了，我保证。我跟我雇主确实经手些见不得人的买卖，无疑。可连我们也看得出哪笔投资是烂的。~
= ~那东西对你有害。也许睡街头的人绝望到会试一口，可日子久了连他们也会后悔。所以你看，我没法给你弄到，若你问的是这个。~
END
  ++ ~我只想知道你知不知道哪儿能弄到。~ + GAELAN-TITAN-1
  ++ ~我为什么需要是我自己的事。我只要消息。~ + GAELAN-TITAN-1
  ++ ~我在设法阻止这买卖。你若没参与，就不该有意见。~ + GAELAN-TITAN-1

CHAIN GAELAN GAELAN-TITAN-1
~*叹* 嗯……雇主没说这事要保密，所以我想……我可以给你指个方向。~
= ~嗯……让我想想。我自己没见过那东西，可我记起阿勒德里安说过墓园区有常年的交易。我告诉他别跟那些人打交道，可若他说的是真的，那我估摸你夜里去那儿能找到一个卖家。~
= ~这点消息免费，可我再跟你说一遍，我<PRO_LADYLORD>。你最好忘了听过那东西存在。这买卖从头到尾都是烂事。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",14)~ THEN C0AQTHF QUEST1-TITAN-SELLER
~你看我干什么，伙计？这虽是墓园，可没说不能站在这儿吧？~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",15)~
END
  ++ ~当然没有。不过卖非法调配物的规矩，倒是有……~ EXTERN C0AQTHF QUEST1-TITAN-SELLER-1
  ++ ~我知道你在这儿干什么，“伙计”。泰坦。我要一份。~ EXTERN C0AQTHF QUEST1-TITAN-SELLER-2
  ++ ~抱歉打扰你。~ EXIT

CHAIN C0AQTHF QUEST1-TITAN-SELLER-1
~什么？我可不怎么喜欢你话里的意思，伙计。~
END
  ++ ~别把我当傻子。神志清醒的人不会无缘无故夜里站在这地方。我知道你身上带什么，我要一些。~ EXTERN C0AQTHF QUEST1-TITAN-SELLER-2
  ++ ~好，那我跟你说清楚。我来买泰坦，而你要卖给我。~ EXTERN C0AQTHF QUEST1-TITAN-SELLER-2

CHAIN C0AQTHF QUEST1-TITAN-SELLER-2
~原来你是冲着那东西来的，嗯？那你运气不好，伙计。你也许二道听说了这东西，可我们卖泰坦有个主规矩。“只有‘真正急需’的人才买得到”。~
= ~你不瘦，也不病到干不了活。看来你各方面都过得不错。没那东西你也活得下去，所以不卖你。~
END
  ++ ~“没那东西也活得下去”？真好笑，你卖的东西正在害死人。~ + QUEST1-TITAN-SELLER-3
  ++ ~听着。我没耐心跟你磨嘴，所以你要么把泰坦给我，要么我让你后悔没给。~ + QUEST1-TITAN-SELLER-3A

CHAIN C0AQTHF QUEST1-TITAN-SELLER-3
~你到底在说什么鬼话？我干的事没害着谁。嗯，他们的钱袋也许瘦一点，可他们是自愿换的。~
END
  ++ ~这话去跟肖恩的父亲说。就因为你给他的东西，他差点死了！~ + QUEST1-TITAN-SELLER-4

CHAIN C0AQTHF QUEST1-TITAN-SELLER-3A
~伊尔马特在上，人为这种东西能干出什么事来……唉。~
= ~听着。我看得出你是认真的，我若不改主意，大概也会变成这儿的尸体之一。可我仍是有责任、有人要养的人。所以我可以稍微破点规矩，把我手上的泰坦给你，可你得多付点。~
END
  ++ ~好。你要多少？~ + QUEST1-TITAN-SELLER-3B
  ++ ~“你在意的人”？看来你不在乎害别人在意的人。~ + QUEST1-TITAN-SELLER-3
  ++ ~算了。我直接从不冷不死的你手上拿。~ DO ~Enemy()~ EXIT

CHAIN C0AQTHF QUEST1-TITAN-SELLER-3B
~那么，这么办。平常普通老百姓来交易，还有讲价的余地。可你看着不像缺钱，又硬逼着我弄泰坦，我要涨到一千。你以为市面上最新的大玩意儿便宜好弄？再想想。~
END
  + ~PartyGoldGT(999)~ + ~一千就一千。给你。~ DO ~TakePartyGold(1000)~ + QUEST1-TITAN-SELLER-3C
  ++ ~你卖肖恩父亲时，也这么交易、省掉了他会死那部分？~ + QUEST1-TITAN-SELLER-4
  ++ ~我能想到更好的交易。结局是你死。~ DO ~Enemy()~ EXIT

CHAIN C0AQTHF QUEST1-TITAN-SELLER-3C
~跟你做生意真愉快。跟你说一声，这是一次性的，别指望再在这儿见到我。~
DO ~GiveItem("c0atitn",Player1) EscapeArea()~ EXIT

CHAIN C0AQTHF QUEST1-TITAN-SELLER-4
~肖恩的父亲……什么？你说他差点死了？~
DO ~SetGlobal("C0AuraBG2Quest1RoyTalk","GLOBAL",1)~
= ~听——听着，朋友。你全弄错了。肖恩跟我小时候是最好的伙伴。我自己日子有点难，所以一直跟本地帮派打零工糊口，可我绝没想过害他老爹！~
= ~肖恩一直怕他父亲因病早死，所以我一直免费给他一点泰坦，帮他好起来。泰坦……我以为它创造奇迹。哪怕一点点，也能让你不再生病。~
= ~肖恩的父亲要得不多，所以没人发现我从货里偷偷扣。我叫他别告诉肖恩，因为我不想让他知道我替黑市干活。可现在你说这东西，它……~
END
  ++ ~泰坦有毒。它让人一时更健康更强，然后从里面慢慢把人杀死。~ + QUEST1-TITAN-SELLER-5

CHAIN C0AQTHF QUEST1-TITAN-SELLER-5
~该死！我早该知道好得不真实。帮派说这东西捞金比黑莲花还快，大家都能靠利润发财。我真不敢信，听说影贼自己不铺这货时，我就该觉出不对！~
= ~对不起，伙计。我真的很抱歉。我看这垃圾卖得那么快就贪了，可我若知道它真在害死人，一个铜板也不会收！~
END
  ++ ~你该道歉的不是我。肖恩父亲的事，你欠他一个解释。~ + QUEST1-TITAN-SELLER-6

CHAIN C0AQTHF QUEST1-TITAN-SELLER-6
~你说得对。我得去跟他谈。哪怕他大概永远不会原谅我干的事。~
EXTERN C0AQTHF QUEST1-TITAN-SELLER-7

CHAIN C0AQTHF QUEST1-TITAN-SELLER-7
~听着……我不知道你要泰坦做什么，可只要不是拿去害别人，我手上的就归你。你一定是在设法了结这买卖，否则不会跟我说这些。~
DO ~GiveItem("c0atitn",Player1)~
= ~我不干这行了。反正也待不久，他们一听说我没拿回钱就白送了货……大概这样最好。我知道我挣的是脏钱，可也许我能用它离开这城，回去过正常日子。~
= ~谢谢你让我睁眼，伙计。你若查出这些泰坦都是从哪儿来的，希望你能把这全停了。~
DO ~EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",16)~ THEN C0AQINSP INSPECTOR-AEGISFIELD
~你，站住。以议会之名，我要求你……等等，我认得你，对吧？~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",17)~
END
  ++ ~埃吉斯菲尔德督察。好久不见。~ + INSPECTOR-AEGISFIELD-1
  ++ ~剥皮杀人案时我们见过。~ + INSPECTOR-AEGISFIELD-1

CHAIN C0AQINSP INSPECTOR-AEGISFIELD-1
~啊，我想起来了。见到你真好。那案子我一直感激你的帮助，那是我大概永远忘不掉的一案，尽管我很想忘。~
= ~若容我问，你在这儿做什么？后巷很少是访客来的地方。~
END
  ++ ~我也正想问你同样的话。~ + INSPECTOR-AEGISFIELD-2
  ++ ~我来找人。~ + INSPECTOR-AEGISFIELD-3

CHAIN C0AQINSP INSPECTOR-AEGISFIELD-2
~你看，我来此是对本地居民和进入此区的人做特别检查。近来较穷的区出现了相当不寻常的中毒案，我自可靠来源听说，起因也许是一种非法物质。~
= ~上头不常在乎这里人的福祉，可不管他们意图如何，他们下令彻底调查这传言是否属实。无疑他们怕它传到富人贵人身上，想趁早除掉威胁。~
END
  + ~PartyHasItem("c0atitn")~ + ~你说的是这东西，就在这儿？~ + INSPECTOR-AEGISFIELD-4
  ++ ~我猜你也得搜我？~ + INSPECTOR-AEGISFIELD-5

CHAIN C0AQINSP INSPECTOR-AEGISFIELD-3
~我明白了。也许是那位医师，或者北边那屋里的兰坦侏儒？虽听着不客气，可我知道的值得一提的只有他们。~
EXTERN C0AQINSP INSPECTOR-AEGISFIELD-2

CHAIN C0AQINSP INSPECTOR-AEGISFIELD-4
~就……就这个？你为什么会有这个，又为什么给我看？你明白这是证物，这意味着我至少得审问你，若不该拘押你？~
END
  ++ ~说来话长，督察。放心，我无意使用或散布它。我也在查这事。~ + INSPECTOR-AEGISFIELD-6
  ++ ~我给你看，是为了证明它存在，也为了让你确信我没藏什么。~ + INSPECTOR-AEGISFIELD-6

CHAIN C0AQINSP INSPECTOR-AEGISFIELD-5
~检查*所有*过路人本是我的职责……可爱你之前的作为赢得了我的信任，所以我若干脆给你个无疑之惠，也许对我们双方都好。~
EXTERN C0AQINSP INSPECTOR-AEGISFIELD-7

CHAIN C0AQINSP INSPECTOR-AEGISFIELD-6
~我明白了。不过我该请你去见首席督察、把你所知的说出来……我觉得我们这班人在处理这案子上几乎毫无用处。~
EXTERN C0AQINSP INSPECTOR-AEGISFIELD-7

CHAIN C0AQINSP INSPECTOR-AEGISFIELD-7
~在这案子影响到高位者之前，我的上头固执地拒绝以应有的严重程度对待，而我们中少数跟我一样担忧的人，已摸黑近一个月毫无结果。加上我见过病患的某些状况……我宁可尽快解决这问题，不管用什么手段。~
= ~你已解决过一桩麻烦案子，虽然这话也许超出我的职权，但我觉得让你按自己的方式自由调查，比把双方时间浪费在常规程序上更让我有信心。不过小心。别的督察无疑会经过这儿，他们可没有你我这份交情。~
= ~那么，我在此的任务已完成，我得回去开始写报告。再会。~
DO ~EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",16)~ THEN C0AQINS2 INSPECTOR-NEW
~站住！依议会之命，所有进后巷的人都要彻底搜查，以防非法物质流通。~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",18)~
END
  ++ ~这都是怎么回事？~ + INSPECTOR-NEW-1

CHAIN C0AQINS2 INSPECTOR-NEW-1
~我们获悉，一种潜在的新型危险复合物正在这些贫民区散布。议会不容它传到贵族身上，所以在潜在威胁查明前，谁都不许不经检查通过。放下武器，打开背包，掏空口袋！什么都要搜！~
END
IF ~InParty("C0Aura")~ EXTERN C0AQINS2 INSPECTOR-NEW-2
IF ~!InParty("C0Aura")~ EXTERN C0AQINS2 INSPECTOR-NEW-3

CHAIN C0AQINS2 INSPECTOR-NEW-2
~我从这侏儒开始！你带的这一堆东西显然可疑。把你带的一切都给我看，现在！~
== C0AURA2J ~我？可是我……~
== C0AQINS2 ~闭嘴！任何拒绝检查的举动，我立刻拘留你、带你回去审问！照我说的做！~
END
  ++ ~你什么也别想干。离她远点。~ EXTERN C0AQINS2 INSPECTOR-NEW-4
  ++ ~你敢碰我们任何一个，你会后悔。~ EXTERN C0AQINS2 INSPECTOR-NEW-4

CHAIN C0AQINS2 INSPECTOR-NEW-3
~搜查中若发现任何可疑物品，你就跟我回总部受审！配合的话这就——~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
CreateCreature("c0arees1",[464.1011],S)
ActionOverride("c0arees",MoveToPoint([433.1314]))
ActionOverride("c0arees",Wait(2))
ActionOverride("C0arees",StartDialogNoSet(Player1))~ EXIT

CHAIN C0AQINS2 INSPECTOR-NEW-4
~你若参与违抗法律要求，我就把你们全抓起来！现在快点——~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
CreateCreature("c0arees1",[464.1011],S)
ActionOverride("c0arees",MoveToPoint([433.1314]))
ActionOverride("c0arees",Wait(2))
ActionOverride("C0arees",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",17)~ THEN C0AREES REESE-AEGISFIELD
~你总算回来了！我以为督察会找你麻烦，正打算帮忙，可看来你自己有些友善的门路。看来我白担心了。~
EXTERN C0AREES REESE-INSPECTOR-2-3

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",18)~ THEN C0AREES REESE-INSPECTOR
~住手……！马上停下，警官！这些人获准通过此处，不该受这种……骚扰！~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",19)~
== C0AQINS2 ~你以为你是谁，侏儒？~
== C0AREES ~我是……我是谁不重要。可我相信你读了这份东西，一切就清楚了。~
== C0AQINS2 ~呸，这是什么破烂？你若在浪费我时间，那你就……~
== C0AQINS2 ~……那就……~
== C0AQINS2 ~这是……可这——~
== C0AREES ~现在清楚了吧？这些人是受我师父卡里迪乌斯教授雇用的，来协助你被指派的同一任务，督察。你放他们平安离开，对我们大家都有好处。~
== C0AQINS2 ~我……可……呃。我无权争辩这个。好，你们……你们都可以过。我……为这麻烦道歉。~
== C0AREES ~不用道歉，督察。~
DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride("C0AQINS2",EscapeArea())
Wait(4)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",19)~ THEN C0AREES REESE-INSPECTOR-2
~抱歉。非法调配物的事让戒备收紧，贫民区尤其。这事发生前我们没机会警告你。~
END
  ++ ~你给他看了什么？~ + REESE-INSPECTOR-2-1
  ++ ~谢谢帮忙。~ + REESE-INSPECTOR-2-2
  ++ ~我要见教授。~ + REESE-INSPECTOR-2-3

CHAIN C0AREES REESE-INSPECTOR-2-1
~说来……话长。教授仍跟几个有权势的官员有联系，靠这个我们有些预防措施，万一有当局用错眼光审视我们。~
EXTERN C0AREES REESE-INSPECTOR-2-3

CHAIN C0AREES REESE-INSPECTOR-2-2
~不麻烦。你在努力解决泰坦的问题，所以教授和我随时尽力帮忙。~
EXTERN C0AREES REESE-INSPECTOR-2-3

CHAIN C0AREES REESE-INSPECTOR-2-3
~你若来见教授，直接去他家。他正跟一位客人会谈，可打断也没问题。~
= ~不过我有个要紧差事，所以不会马上跟你回去。祝你好运。~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",20) EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",21)~ THEN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS
~……当真？在你说出来之前，我自己都没留意到。~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",22)~
== C0AASCL ~谁也不能指望凭自己的头脑看尽一切可能，教授。再来点杜松酒？~
== C0AMAGN ~不，不，我想我该克制。我的肝不如从前。不过多谢你拿这么贵的东西招待我。据小吉尔伯特说，你自己的财务并不特别稳定。~
== C0AASCL ~吉尔伯特太替我操心了。我只是喜欢把钱花在研究相关的事上。不过我相信偶尔享受些奢侈品是健康的态度。~
== C0AASCL ~我自己想再来一杯，你若不在意。~
== C0AMAGN ~朋友，你也该顾顾自己的健康。毕竟你也不年轻了……哦，看来有几张熟面孔回来了。~
== C0AMAGN ~过来坐，亲爱的<PRO_GIRLBOY>。我刚在跟一位好友做研究。涉及你听说正在调查的神秘泰坦溶液，所以你这时候来正好。~
== C0AASCL ~据我所知，你们就是我的学徒吉尔伯特讲过泰坦传言的冒险者。容我自我介绍。我是阿斯克勒庇俄斯，医生、药师兼医药研究者。我跟卡里迪乌斯教授相识几个月了。~
END
  ++ ~据我所听，你算是个奇迹医者。~ EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS-1
  ++ ~医生？我以为治病之术一般交给祭司之流。~ EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS-2
  ++ ~你若是药师，我有东西给你看。我身上有一份泰坦样本。~ DO ~TakePartyItem("C0ATITN") DestroyItem("C0ATITN")~ EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS-4

CHAIN C0AASCL QUEST1-MAGNUS-ASCLEPIOS-1
~我不是信奇迹那类人。你听到的关于我行医的说法，不过是……在这样贫困的社会里，这类本事有其必要。医者的活计极被需要，所以人们把我的作为看作救星之举。可我不觉得我的工作真有什么了不起。~
EXTERN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS-3

CHAIN C0AASCL QUEST1-MAGNUS-ASCLEPIOS-2
~那是真的。普通人确实更愿求神恩介入，而不愿碰医药那些古怪陌生的复杂东西。我不怪他们。不过，当信仰之力对一些人失效时，我希望我的本事能成。这是我想提供的微薄服务。~
EXTERN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS-3

CHAIN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS-3
~我亲爱的阿斯克勒庇俄斯，你太低估自己了。你对身体运作的理解超出我见过的任何研究者。对没有你那些年学识的人，你所做的确实堪称奇迹。~
== C0AASCL ~那只是知识，任何有时间、肯钻研的人都能掌握。真不值得称赞。我唯一在意的是，凭我所知的能成就什么。~
END
  ++ ~你既懂这么多医药，也许你能认出我这份泰坦样本。~ DO ~TakePartyItem("C0ATITN") DestroyItem("C0ATITN")~ EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS-4

CHAIN C0AASCL QUEST1-MAGNUS-ASCLEPIOS-4
~让我看看……所以，这就是传言的泰坦调配物？真有意思。~
== C0AMAGN ~朋友，递过来我也看看。嗯……你来之前不久，那病重之人的儿子不是也带了一瓶给你学徒吗？我们得把那份的残渣跟这份比对。~
== C0AASCL ~那是最简单的办法。幸好那年轻人把这拿到我眼前。~
== C0AMAGN ~我们把这拿到我的工作台立刻做些测试。啊，我的<PRO_GIRLBOY>，请坐着喝点茶或杜松酒等着。这可能要一阵。~
== C0AURA2J IF ~InParty("C0AURA")~ THEN ~我能帮忙吗，教授？我也……想多了解这神秘药物。~
== C0AMAGN IF ~InParty("C0AURA")~ THEN ~我领情，好姑娘，可我觉得不明智。我有些设备跟你大概熟悉的相比相当陈旧。这么急的事上，最好交给我们。~
== C0AURA2J IF ~InParty("C0AURA")~ THEN ~哦，我……我明白了。~
== C0AMAGN ~那么，我想第一步是看它们对沸液的受热反应。我这就把火点上……~
DO ~ClearAllActions()
StartCutSceneMode()
FadeToColor([30.0],0)
ActionOverride("C0AASCL",MoveToPoint([242.185]))
MoveToPoint([228.241])
Wait(2)
FadeFromColor([30.0],0)
ActionOverride("C0AASCL",MoveToPoint([439.355]))
ActionOverride("C0AASCL",Face(W))
MoveToPoint([442.289])
Face(SW)
Wait(1)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",22)~ THEN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS2
~嗯，这比预想的费时间。我好久没被如此严峻地拷问过了，阿斯克勒庇俄斯。既令人担忧，又叫人兴奋。~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",23)~
== C0AASCL ~我同意。可考虑到事情的严重，我想我们该直入要点。~
== C0AMAGN ~是，当然。那么，该怎么说呢，我的<PRO_GIRLBOY>……嗯，简单说，我们其实查出了不少。只是不全都是好消息。~
END
  ++ ~我没指望好消息。你们查出了什么要紧的？~ + QUEST1-MAGNUS-ASCLEPIOS2-1
  ++ ~你们至少知道怎么治它的效力吗？~ + QUEST1-MAGNUS-ASCLEPIOS2-2
  ++ ~直接说重点。~ + QUEST1-MAGNUS-ASCLEPIOS2-3

CHAIN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS2-1
~很多，我的<PRO_GIRLBOY>。若要细到每一处，我们也许得待到季末。可我猜你更想要简明的版本，对吧？~
EXTERN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS2-3

CHAIN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS2-2
~嗯……不幸的是，那仍要些时间。单分析这药的成分就花了这么久，我怕找到解药不会是容易事。~
EXTERN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS2-3

CHAIN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS2-3
~阿斯克勒庇俄斯，朋友。这是你的专长，我想解释最好交给你。~
== C0AASCL ~如你所愿。~
== C0AASCL ~在我把你弄糊涂之前，我得问。你对生理学懂多少？~
END
  + ~CheckStatGT(Player1,16,INT)~ + ~我赌我懂得够跟上。~ EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-4
  + ~CheckStatGT(Player1,16,INT)~ + ~一点，可我不会自称专家。~ EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-4
  ++ ~我怕懂得不多。~ EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-5
  + ~!CheckStatGT(Player1,16,INT)~ + ~生理……什么？~ EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-5

CHAIN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-4
~那我尽力讲得清楚些。~
EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-6

CHAIN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-5
~那我试着用能找到的最简单的说法解释。~
EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-6

CHAIN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-6
~我相信要真正领会这……“泰坦”的性质，多少得有点理解，所以这事上我以医者身份提供我的知识。~
= ~关于凡人之躯，某些研究者有过一种……设想。简单说，我们许多人相信，我们只发挥出真正潜能的一部分，人体内有一种力量，远超正常极限。~
= ~为确保身体不会因过度使用其能力而自毁，人本无法动这力量，可有时在真正绝望的关头，它会无意间被短暂解锁。~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~我也听过这个……叫“歇斯底里之力”，身体把自己逼到绝对极限，你做出本该被认为不可能的事。可能是生死关头，为自己，或为你所爱的人……~
== C0AASCL ~我说的不是单纯靠艰苦训练得来的力气。我说的是能让一个凡人展现远超预期的壮举的东西。这样的例子太罕见，常被当作道听途说，当作心灵被处境压力影响时的感官错觉。~
= ~当然，光是知道这种潜能存在，就引出了能否自行解锁这份力量的研究。而这就是我们这神秘调配物登场之处。~
= ~泰坦不是毒药。它虽有大缺陷，本意却是造福饮者，在一段时间内增强、强化其身体。毛病出在身体无法驾驭骤然获得的力量。~
END
  ++ ~我不明白。那它跟可靠的力气药水之类有什么不同？~ + QUEST1-MAGNUS-ASCLEPIOS2-7
  ++ ~那身体承受不住这力量时，会怎样？~ + QUEST1-MAGNUS-ASCLEPIOS2-8
  ++ ~这些都挺有意思，可我需要知道的是怎么办。~ + QUEST1-MAGNUS-ASCLEPIOS2-9

CHAIN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-7
~合理之问。寻常药水取自外补或魔法。其效力短暂，效力散去，你就回到从前。~
= ~可泰坦不从外力给你力量。你从中得到的潜能，全出自你自己身体的造就。这药是为让你超越极限而制的——连同它的后果。~
EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-8

CHAIN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-8
~因为你违背了身体为自身健康设下的极限，戒断症状极重。你的心脏与肌肉被迫以本不该有的方式运作，之后无法恢复常态。~
EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-9

CHAIN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-9
~若只是效力退去后身体衰弱，治愈病患会是艰苦但可行的过程。然而，没那么简单。~
== C0AMAGN ~这就引到阿斯克勒庇俄斯今天为何来找我，我的<PRO_GIRLBOY>。据他对那位戒断中可怜人的研究，看来一旦服下泰坦，你的身体就把它当作呼吸一样生存必需之物。~
== C0AMAGN ~用过一次的人会被逼着再服，否则就受难以想象的痛苦，是的，再服也许能暂时缓解症状……可不管他们选择沉溺还是戒断，它的影响终将带他们走向死亡。~
== C0AASCL ~找出缓解效力的办法最要紧，可那是我们的角色。虽然不该由我来指点你现在的路，但我相信铲除这问题的源头该是你的首要之务。~
END
  ++ ~你们俩试着找解药，我去处理散布泰坦的人。~ EXTERN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-10
  ++ ~看来我别无选择，只能去查这东西的来源线索。~ EXTERN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS2-11

CHAIN C0AASCL QUEST1-MAGNUS-ASCLEPIOS2-10
~解药的事你不必忧心。身为医生，这类事是我的职责，不做到我不会停。~
EXTERN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS2-11

CHAIN C0AMAGN QUEST1-MAGNUS-ASCLEPIOS2-11
~研究相关的事交给我们，我的<PRO_GIRLBOY>。你得阻止问题恶化，否则对已受影响的人就太迟了。~
== C0AASCL ~教授，我得回家继续我的工作。一旦发现任何值得注意的，我第一个让你知道。~
== C0AASCL ~再会，祝你好运。~
DO ~ActionOverride("C0AMAGN",MoveToPoint([237.201]) EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",23)~ THEN C0AQTHF QUEST1-22
~你在这儿，伙计！看来我找对地方了。~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",24)~
END
 ++ ~你怎么找到我的？~ + QUEST1-22-1
 ++ ~你在找我？~ + QUEST1-22-2
 ++ ~让开。我没时间。~ + QUEST1-22-3

CHAIN C0AQTHF QUEST1-22-1
~我四处问了。你……不那么难找，你知道。像你这样的人不常经过后巷。~
EXTERN C0AQTHF QUEST1-22-4

CHAIN C0AQTHF QUEST1-22-2
~是啊，伙计。我有件要紧事，我想你该听。~
EXTERN C0AQTHF QUEST1-22-4

CHAIN C0AQTHF QUEST1-22-3
~不，不，听着伙计。我有话要说，我知道它值得你花时间。~
EXTERN C0AQTHF QUEST1-22-4

CHAIN C0AQTHF QUEST1-22-4
~我越想越觉得……嗯，我想光我给你那瓶泰坦，算不上什么线索。所以我，呃……对我从前的老板们挖了挖，想找出更有用的东西。~
= ~其实没多少。可他们中有个人不大留心自己的记事本，所以我翻开瞄了一眼。看来他们定期在深夜跟一些穿红衣的侏儒接头取货。~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~“穿红衣的侏儒”……？你……你知道他们是谁吗？~
== C0AQTHF ~抱歉，我不知道。上头的人从不放心把有用消息告诉我，怕我做买卖时被抓。可我估摸我知道他们会去哪儿。~
END
++ ~哪儿？~ + QUEST1-22-5

CHAIN C0AQTHF QUEST1-22-5
~他们在桥区南侧接头，就在海姆神殿外头。我不知道他们怎么想的，在那样的地方聚会……也许觉得看着不那么可疑，或者以为没人会想到去那儿找。~
= ~我就这些了，可我希望它能引出点什么。我打算在任何人发现我告密前离开这城，所以你大概不会再见到我了，伙计。祝你好运。~
DO ~AddJournalEntry(%Quest1_Entry_5%,QUEST) EscapeArea()~ EXIT 

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",24)~ THEN C0AQINT2 QUEST1-INTERITUS
~你迟到了。~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",25)~
== C0ATHF2 ~我想我们没有。~
== C0AQINT2 ~三分四十三秒。~
== C0ATHF2 ~那又怎样？唉，我永远不懂你们侏儒和你们那些荒唐的执念。不过我一点不在乎。我猜你带着新的泰坦货。~
== C0AQINT2 ~最新、最先进的配方已制出……只是尚未测试。我带来了。我相信你带着你客户的状况书面报告。~
== C0ATHF2 ~都在这儿。不知道你要这个干什么，可只要意味着我们口袋里的钱更多，就无所谓。~
== C0AQINT2 ~除了你销售所得，你还会拿到报酬。我们只要求你胜任黑市的运作。~
END
  ++ ~（静观其变）~ EXTERN C0ATHF2 QUEST1-INTERITUS-1
  ++ ~（打断会面）~ DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
FaceObject(Player1)
Wait(1)
ActionOverride("C0ATHF2",FaceObject(Player1))
SmallWait(5)
ActionOverride("C0ATHF1",FaceObject(Player1))
ActionOverride("C0ATHF3",FaceObject(Player1))
ActionOverride("C0ATHF4",FaceObject(Player1))
Wait(1)
ActionOverride("C0ATHF2",StartDialogNoSet(Player1))~ EXIT

CHAIN C0ATHF2 QUEST1-INTERITUS-1
~是，是。你放心，这买卖利润疯狂，我们一定拿出最好表现。我们合作这短短时间里挣的，比我们谁一辈子见的都多。~
== C0ATHF2 ~我估摸很快连影贼也不敢再看低我们。他们要么给我们翅膀下个舒坦位置，要么我们自己在黑道里建个小角落，继续扩我们的生意。~
== C0AQINT2 ~你在这地界的进一步野心，是你自己要去解决的事。我们只要结果，只要结果无瑕，你就继续获利。~
== C0ATHF2 ~我听着都好得很，伙计。我没想到你们外乡人这么好合作。~
== C0AQINT2 ~我相信当局不会追查到任何指向你的泰坦证据？~
== C0ATHF2 ~别担心。我们做得周全。他们眼下只是怀疑。等他们拿到真线索，我们早完事了。~
== C0AQINT2 ~……~
== C0AQINT2 ~是吗？那也许你能跟我解释一下，那是谁。~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
FaceObject(Player1)
Wait(1)
ActionOverride("C0ATHF2",FaceObject(Player1))
SmallWait(5)
ActionOverride("C0ATHF1",FaceObject(Player1))
ActionOverride("C0ATHF3",FaceObject(Player1))
ActionOverride("C0ATHF4",FaceObject(Player1))
Wait(1)
ActionOverride("C0ATHF2",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",25)~ THEN C0ATHF2 QUEST1-INTERITUS-2
~嗯？什——什么？！~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",26)~
== C0ATHF3 ~等等，这帮人看着眼熟……~
== C0ATHF1 IF ~InParty("C0Aura")~ THEN ~不就是我们在巷子里逮到的那个侏儒？~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~我记得你们这些混混……可更要紧的是，这些侏儒……他们是——~
== C0AQINT2 ~看来你那自诩“周全”的谨慎出了个误算。这对我们的合作关系可不是好兆头。~
== C0ATHF2 ~这……这只是不幸的巧合。可我们能解决。跟我们合作除掉这帮人，就当什么都没发生！~
== C0AQINT2 ~我想你弄错了。~
== C0AQINT2 ~既然你已证明自己无法保持谨慎，我们的往来到此为止。这是你的事，不是我们的。~
== C0ATHF1 ~什么？~
== C0AQINT2 ~撤。~
DO ~ClearAllActions()
StartCutSceneMode()
	Wait(1)
	Face(NW)
	ActionOverride("C0AQINT1",FaceObject("C0AQINT2"))
	ActionOverride("C0AQINT3",FaceObject("C0AQINT2"))
	Wait(2)
	ActionOverride("C0AQINT1",UseItem("potn10",Myself))
	ActionOverride("C0AQINT1",Wait(1))
	ActionOverride("C0AQINT1",DestroySelf())
	ActionOverride("C0AQINT3",UseItem("potn10",Myself))
	ActionOverride("C0AQINT3",Wait(1))
	ActionOverride("C0AQINT3",DestroySelf())
	UseItem("potn10",Myself)
	Wait(1)
	ActionOverride("C0ATHF2",StartDialogNoSet(Player1))
	DestroySelf()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",26)~ THEN C0ATHF2 QUEST1-INTERITUS-3
~什——不！该死，你们这些侏儒混蛋，你们不能就这么留我们处理这事！~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",27)~
== C0ATHF3 ~老大，这可不妙……现在怎么办？~
== C0ATHF2 ~还要我跟你说明白吗，蠢货？我们走，现在！~
DO ~ActionOverride("C0ATHF1",EscapeAreaObject("Waypoint4"))
	ActionOverride("C0ATHF3",EscapeAreaObject("Waypoint4"))
	ActionOverride("C0ATHF4",EscapeAreaObject("Waypoint4"))
	EscapeAreaObject("Waypoint4")~
END
 IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-INTERITUS-3A
  ++ ~站住！你们跑不掉！~ DO ~ClearAllActions()
  										  StartCutSceneMode()
									 	  StartCutScene("c0acut8")~ EXIT 

CHAIN C0AURA2J QUEST1-INTERITUS-3A
~<CHARNAME>，不能让他们逃！追！~
DO ~ClearAllActions()
  	StartCutSceneMode()
	StartCutScene("c0acut8") ~EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",27)~ THEN C0ATHF1 QUEST1-INTERITUS-4
~死——死路……~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",28)~
== C0ATHF2 ~你这没用的蠢货！你怎么带我们走到这儿？~
== C0ATHF3 ~完了……他们一逮到我们，我们全得被处决……~
== C0ATHF2 ~还没完。还没！我们还有最后一招。~
== C0ATHF1 ~你——你是说……我们的货？老大，这些还没测试过，谁知道会——~
== C0ATHF2 ~还能比明早上绞架更糟？那些侏儒说这批比上批好。只要有一线机会让我们脱身，你觉得不该用？~
== C0ATHF1 ~……~
== C0ATHF4 ~只有两瓶，老大。我们对半分？~
== C0ATHF2 ~不。你们俩用一整批。他们说泰坦能给人移山之力，这批若真像他们说的，收拾那几个多管闲事的用不了多久。~
== C0ATHF2 ~喝吧，小子们！~
== C0ATHF4 ~……~
DO ~ClearAllActions()
  	StartCutSceneMode()
	StartCutScene("c0acut9") ~EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",28)~ THEN C0AQMON1 QUEST1-INTERITUS-5
~呃啊啊啊啊啊啊啊啊啊啊……！~
DO ~AddJournalEntry(%Quest1_Entry_6%,QUEST)
SetGlobal("C0AuraBG2Quest1","GLOBAL",29)~
== C0AQMON2 ~咯呜呜呜呜咳咳咳咳呜呜呜……！~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-INTERITUS-5A
IF ~!InParty("C0Aura")~ EXIT

CHAIN C0AURA2J QUEST1-INTERITUS-5A
~*倒吸一口气*~
== C0AURA2J ~他们的……他们的血肉……被失控的生长从里撕开了……~
== C0AURA2J ~他们彻底失去了自我……在痛苦与器官的物理变化之间……~
END
  ++ ~那就没希望恢复他们了？~ EXTERN C0AURA2J QUEST1-INTERITUS-5B
  ++ ~那就干脆让他们解脱吧。~ EXTERN C0AQMON2 QUEST1-INTERITUS-5C

CHAIN C0AURA2J QUEST1-INTERITUS-5B
~不……不可能了。泰坦从根本上改了他们整个身体……加上内外损伤，没救了。~
== C0AURA2J ~我们能做的只有设法结束他们的痛苦。~
EXTERN C0AQMON2 QUEST1-INTERITUS-5C

CHAIN C0AQMON2 QUEST1-INTERITUS-5C
~咯咳咳咳咳呜——！~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",29)
    Dead("C0AQMON1")
    Dead("C0AQMON2")~ THEN C0AURA2J QUEST1-INTERITUS-5D
~我……我不敢信刚发生的事……~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",30)~
== C0AURA2J ~他们是恶人，<CHARNAME>，可他们不该那样死。身体被撕开，然后在剧痛中彼此也那样……~
END
  ++ ~我知道。~ + QUEST1-INTERITUS-5E
  ++ ~我们什么也做不了。~ + QUEST1-INTERITUS-5F
  ++ ~别为这种人流泪。~ + QUEST1-INTERITUS-5E

CHAIN C0AURA2J QUEST1-INTERITUS-5E
~我……我想停下这一切，<CHARNAME>。我想找出该为泰坦负责的人，把他们绳之以法……就为了永远不必再看见我这样的本事被用在……被用在这样的怪物行径上！我们会找到那些红衣侏儒，然后……~
= ~那些……红衣侏儒……~
END
  ++ ~你知道他们是谁？~ + QUEST1-INTERITUS-5G

CHAIN C0AURA2J QUEST1-INTERITUS-5G
~我……也许。当时很暗，可他们的装束有点眼熟。给我点时间想想。~
= ~我们该先回马格努森大师那儿，<CHARNAME>。也许他从之前那份泰坦样本的研究里查出了什么。~
DO ~StartCutSceneMode()
    Wait(2)
    ReallyForceSpellRES("C0AQEF3","C0AQMON2")
    ChangeStat("C0AQMON2",186,0,SET)
	  TriggerActivation("Exit",TRUE)
    Wait(1)
    StartDialogNoSet(Player1)~ EXIT

CHAIN C0AURA2J QUEST1-INTERITUS-5F
~不知道。可我们仍能做点事。我们能确保这种事不再发生。~
EXTERN C0AURA2J QUEST1-INTERITUS-5E

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",30)~ THEN C0AURA2J QUEST1-30
~什——什么？！他怎么还能动……？不……不，他早就不呼吸了！~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",31)~
== C0AQMON2 ~咯呃呃呃嗯嗯……~
== C0AURA2J ~啊——！~
END
  ++ ~不！~ DO ~ClearAllActions()
  						   StartCutSceneMode()
						   StartCutScene("c0acut10") ~EXIT
  ++ ~退后！~ DO ~ClearAllActions()
  						   StartCutSceneMode()
						   StartCutScene("c0acut10") ~EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",31)~ THEN C0AURA2J QUEST1-31
~*咳* 刚……刚才那是什么……？~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",32)~
END
  ++ ~奥拉！你没事吧？~ + QUEST1-31-1
  ++ ~别这么不小心，你这傻瓜！~ + QUEST1-31-2

CHAIN C0AURA2J QUEST1-31-1
~我——我想我没事……爆炸没伤到我……只是受了惊……~
EXTERN C0AURA2J QUEST1-31-3

CHAIN C0AURA2J QUEST1-31-2
~对——对……~
EXTERN C0AURA2J QUEST1-31-3

CHAIN C0AURA2J QUEST1-31-3
~对不起，<CHARNAME>，我没料到会这样……他们器官都毁了竟还能动……泰坦是多可怕的造物。~
= ~嗯？等等……这气味……不会错。这是烟粉！是……是刚才那支弩箭？可怎么会……~
END
  ++ ~会不会是我们见到的那些侏儒？~ + QUEST1-31-4
  ++ ~你走运，有那神秘射手在这儿救了你。~ + QUEST1-31-5
  ++ ~这会儿别操心那个了。~ + QUEST1-31-5

CHAIN C0AURA2J QUEST1-31-4
~也许……他们肯定是兰坦人，从口音和穿着就看得出来。可若真是他们，又说不通，对吧？~
= ~我有种感觉是别人……某人大概一直在暗处护着我们。可我一点头绪都没有……所以这会儿瞎想也没用。~
EXTERN C0AURA2J QUEST1-31-6

CHAIN C0AURA2J QUEST1-31-5
~你说得对。不管那是谁，他们刚救了我的命。我就当他们是站我们这边的，哪怕没露面。~
EXTERN C0AURA2J QUEST1-31-6

CHAIN C0AURA2J QUEST1-31-6
~我们走吧，<CHARNAME>。我宁可尽快离开这儿……~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",32)~ THEN C0AMAGN QUEST1-32
~啊，又是张熟面孔。这次来有何事？也许你在查泰坦的事上有进展了？~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",33)~
END
  ++ ~可以这么说。我遇上了那些在阿斯卡特拉散布泰坦的人。而且……还有比那更糟的事。~ + QUEST1-32-1

CHAIN C0AMAGN QUEST1-32-1
~哎哟，这听着严重。那我的<PRO_GIRLBOY>，你最好慢慢把一切都讲清楚。~
DO ~StartCutSceneMode()
Wait(2)
FadeToColor([30.0],0)
Wait(6)
FadeFromColor([30.0],0)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",33)~ THEN C0AMAGN QUEST1-33
~嗯……~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",34)~
== C0AMAGN ~是……是，我想我明白了。哎呀，哎呀。我以为凭我这些年研究一切写下来的、写不下来的东西，再没什么能让我吃惊了，可这回我错了。~
END
  ++ ~这种事竟能发生，真不敢信。~ + QUEST1-33-1
  ++ ~你这话什么意思？~ + QUEST1-33-2
  ++ ~少绕圈子，多想想接下来怎么办，老头。~ + QUEST1-33-3

CHAIN C0AMAGN QUEST1-33-1
~我不是那个意思，我的<PRO_GIRLBOY>……嗯，我一会儿就说到。不是那个意思……嗯，这想法先放着，我一会儿讲。~
EXTERN C0AMAGN QUEST1-33-4

CHAIN C0AMAGN QUEST1-33-2
~我是说……嗯，这想法先放着。我一会儿就说到。~
EXTERN C0AMAGN QUEST1-33-4

CHAIN C0AMAGN QUEST1-33-3
~是，当然。接下来怎么办……~
EXTERN C0AMAGN QUEST1-33-4

CHAIN C0AMAGN QUEST1-33-4
~泰坦的新配方……嗯，人变成怪物……还有一伙可疑的兰坦侏儒……你确定那些侏儒穿红衣，是吗？~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-33-5A
+ ~!InParty("C0Aura")~ + ~是。他们都穿暗红衣料，领头那个穿着血红色护甲。~ EXTERN C0AMAGN QUEST1-33-5

CHAIN C0AURA2J QUEST1-33-5A
~没错，先生。就算在黑暗里也看得出来。而且他们领头的护甲……像用血涂过一样。~
EXTERN C0AMAGN QUEST1-33-5

CHAIN C0AMAGN QUEST1-33-5
~那就无疑了。他们是因特里图斯。看来事情变得相当不妙。~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~因特里图斯？那……他们真是存在的？而且你熟悉他们，先生？~
== C0AMAGN IF ~InParty("C0Aura")~ THEN ~怕是很真实，好姑娘。我熟知他们，虽然我宁愿不熟。~
END
++ ~这“因特里图斯”是什么人？~ EXTERN C0AMAGN QUEST1-33-6

CHAIN C0AMAGN QUEST1-33-6
~他们是源自兰坦的一个极端过头的组织。其中许多头脑极聪明，只是严重走岔了路。反魔法反到你能反的最极端，全是最坏的那种。想来，阿斯卡特拉这样的城倒适合他们扎根。~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~我听过他们的传言……很久以前，他们显赫到在艾罗奇有席位，直到组织里某位要人被发现该为奥尔利尔岛一场可怕灾难负责……那之后我就再没读到过他们什么了。~
== C0AMAGN IF ~InParty("C0Aura")~ THEN ~哦对，我的姑娘。那会儿我还在，我清楚记得随后的混乱，空气里熔化的血肉与烟粉的酸臭……我列祖列宗在上，我怀疑奇迹缔造者把知识赐给我们凡人时想要的不是这个。~
== C0AMAGN IF ~InParty("C0Aura")~ THEN ~官方定论是“意外”，被查到的人褪下颜色、声称已改弦更张，可我知道不是。他们再没被认作受尊敬的组织，可因特里图斯的影响力从未真正消失。~
== C0AMAGN ~若给黑市供泰坦的真是因特里图斯，那这溶液无疑基于兰坦炼金术……着实令人忧虑。不过朋友，我确实能告诉你一件事。正常情况下，这事实本不该成立。~
END
++ ~你这话什么意思？~ EXTERN C0AMAGN QUEST1-33-7
++ ~在“正常”情况下？~ EXTERN C0AMAGN QUEST1-33-7
++ ~我想你该解释一下。~ EXTERN C0AMAGN QUEST1-33-7

CHAIN C0AMAGN QUEST1-33-7
~嗯，这得讲些背景……自从你把你发现的泰坦配方样本给我，我能确认，当前这成分固然独特，可它许多特性跟往昔兰坦调配物有共通之处。~
= ~然而……这不可能。这药所本的那份配方研究，名为“巨蟒溶液”，早被艾罗奇禁止，几十年前所有提及都从学术界抹掉了。~
END
  ++ ~所以研究它违法？~ + QUEST1-33-7A
  + ~OR(2) CheckStatGT(Player1,15,INT) CheckStatGT(Player1,15,WIS)~ + ~所以造出泰坦的人一定参与过原研究？~ + QUEST1-33-7B

CHAIN C0AMAGN QUEST1-33-7A
~哦，非常违法。倒不是说如今有哪个兰坦人会明知故犯去研究它。就算他们有极小机会知道它存在，也无从下手。艾罗奇把项目相关的一切都抹得相当干净。~
EXTERN C0AMAGN QUEST1-33-8

CHAIN C0AMAGN QUEST1-33-7B
~你领会得快，亲爱的<PRO_GIRLBOY>。是，这是唯一合乎逻辑的结论，对吧？我可以保证，谁碰巧撞上原项目知识的可能近乎为零。艾罗奇早把项目相关的一切抹掉了。~
EXTERN C0AMAGN QUEST1-33-8

CHAIN C0AMAGN QUEST1-33-8
~可就算跟原形相比，这“泰坦”也是一份非常、非常复杂的炼金成品……超出普通药师能辨识复制的程度。事实上，我怀疑连桑巴尔学院多数校友，再学几年也未必能摸到其复杂之处。~
== C0AMAGN IF ~InParty("C0Aura")~ THEN ~就连你，奥瑞莉亚，亲爱的，这么有才华，也还没弄明白，对吧？~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~我……不，先生。我没弄明白。~
== C0AMAGN ~简单说，这是位此道宗师，年轻的<CHARNAME>。他们得完全通晓解剖、医学、甚至毒物……唉，我怀疑这城里找不出三个人，哪怕成品摆在眼前，能说得出造泰坦的第一步。~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-33-9A
++ ~那我们上哪儿找这样的宗师？~ EXTERN C0AMAGN QUEST1-33-10
+ ~OR(2) CheckStatGT(Player1,15,INT) CheckStatGT(Player1,15,WIS)~ + ~可……你能，对吧？~ EXTERN C0AMAGN QUEST1-33-11

CHAIN C0AURA2J QUEST1-33-9A
~那……这城里哪儿能找到这样的人？~
EXTERN C0AMAGN QUEST1-33-10

CHAIN C0AMAGN QUEST1-33-10
~嗯，你可以确定可能性不是零。有这种本事的人确实存在。比如我。~
END
++ ~你？~ + QUEST1-33-12
++ ~这是自白吗？~ + QUEST1-33-12

CHAIN C0AMAGN QUEST1-33-11
~哦呵！机灵，我的<PRO_GIRLBOY>。你比我自己说得还快。~
EXTERN C0AMAGN QUEST1-33-12

CHAIN C0AMAGN QUEST1-33-12
~是，我若动手，确实能调出一份完美的泰坦复制品。不过老实说，这里最要紧的不是我对自己本事的信心，而是我的经历。毕竟，为它的前身配方“巨蟒溶液”负责的蠢货，就是我。~
== C0AMAGN IF ~InParty("C0Aura")~ THEN ~年轻的奥瑞莉亚，我猜你一定觉得奇怪……请容我自负地自夸一句……我据说这么有成就，可你在兰坦从没见过一件署我名字的作品？~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~你这么一提，先生，我确实没有……我从没读过你写的书，先生。~
== C0AMAGN IF ~InParty("C0Aura")~ THEN ~嗯，我确定你读过，只是没认出来。我参与写过的书，多年来名字都被摘掉了……尤其那一本，被定为“基于不道德立场的研究”，兰坦任何知识机构里都找不到。~
== C0AMAGN IF ~InParty("C0Aura")~ THEN ~你看，那是艾拉给我流放定下的诸多条件之一。~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~你的……流放？你是说，你不是自愿离开兰坦的？~
== C0AMAGN IF ~InParty("C0Aura")~ THEN ~别误会。我是自愿接受流放的，因为那是我自己错误的应有后果……策划那傲慢项目之错。~
== C0AMAGN ~造泰坦原配方背后的研究，确实是我负责的。因试图以一份能让我们超越自身极限的配方僭越自然的罪，我被艾罗奇逐出兰坦。可把我名字从兰坦所有学术界抹去、毁掉我最悔恨项目研究的决定，是我自己下的……~
== C0AMAGN ~正因我的失败，我才明白自然给我们凡人设限是有道理的。所以我采取措施，确保我之后有才华的年轻头脑，永远不会落入同样的错。这番醒悟也让我免于更糟的命运——被关进忏悔圣所，那是为想象力危险到害了自己的人准备的地方。~
END
  ++ ~可你的原研究终究还是被拿去造泰坦了。~ + QUEST1-33-12A
  ++ ~这说明你对这一切有部分责任。~ + QUEST1-33-12B
  ++ ~现在这不重要。我们得知道眼下是谁在造这危险调配物。~ + QUEST1-33-12C

CHAIN C0AMAGN QUEST1-33-12A
~是，令我惊愕，可悲的是……并不令我意外。~
EXTERN C0AMAGN QUEST1-33-13

CHAIN C0AMAGN QUEST1-33-12B
~哦，是，而且不止一处。~
EXTERN C0AMAGN QUEST1-33-13

CHAIN C0AMAGN QUEST1-33-12C
~确实，眼下更迫切的是这个，对吧？可惜我怕连我们当前的困境，都跟我关系太大。~
EXTERN C0AMAGN QUEST1-33-13

CHAIN C0AMAGN QUEST1-33-13
~我早该想到。看来这研究让我犯了同样的错两次……第一次因好奇，第二次因念旧。~
== C0AMAGN ~我虽声称毁掉了过去所有研究……却忍不住留下我那部巨著《生命元素论》的一份，流放后一直带在身边。这么些年，它一直在我这儿，一份禁知。~
== C0AMAGN ~很久以来，除我之外无人知道它存在。可我把它给了一位我视作同道好友的人看过……我早该知道不该。~
== C0AMAGN ~阿斯克勒庇俄斯就是你要找的人。我认识的人里，只有他有才华复制、延续我的研究。~
DO ~AddJournalEntry(%Quest1_Entry_7%,QUEST)~
END
++ ~阿斯克勒庇俄斯？那位号称“全城最好的医者”？~ + QUEST1-33-14
++ ~帮过肖恩父亲的人？他就是造泰坦的幕后？~ + QUEST1-33-14

CHAIN C0AMAGN QUEST1-33-14
~我或许能理解他的心境。阿斯克勒庇俄斯·科瓦尔跟我一样是求知者……而且，他相信知识本身无善无恶，认为追求各类知识的内在道德是次要的。~
= ~正因如此，他才能有那样出众的医术……自然，他对炼金、对毒物、对身体运作的精通也同样无人能及。~
= ~当我研究那银色调配物、终于明白你带给我的是什么时，我多年后第一次翻开我那本《生命元素论》……仿佛过去的恐怖终于追上了我。~
= ~啊……哈哈，阿斯克勒庇俄斯，你这可怜、可怜的人……怎么到了这一步？~
END
++ ~他不值得怜悯，做了那些事之后。~ + QUEST1-33-15
++ ~我得阻止他。哪儿能找到他？~ + QUEST1-33-16
++ ~那我们现在怎么办？~ + QUEST1-33-16

CHAIN C0AMAGN QUEST1-33-15
~是啊……这我当然明白。只是……跟他谈话时，我觉得看见了镜子里的自己……也许我确实在其中看见了自己完整的模样，最好与最坏。~
EXTERN C0AMAGN QUEST1-33-16

CHAIN C0AMAGN QUEST1-33-16
~阿斯克勒庇俄斯不外出治病时就待在实验室，从没人见过那地方……我也没有。我们的会面总在这儿，就着一壶茶聊上几个钟头。~
= ~你该跟小吉尔伯特谈谈。身为他的学生，他也许知道那地方，而且我相信这好孩子本身没参与什么坏事。把真相告诉他。他会明白什么最好。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",34)~ THEN C0AQMAN QUEST1-34
~哦！我……我认得你！我带我父亲来求医时你在场。你记得我吗？~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",35)~
END
++ ~你是肖恩，对吧？你父亲怎么样？~ + QUEST1-34-1
++ ~是，我记得你。你回这儿做什么？~ + QUEST1-34-1
++ ~我现在没时间理你。~ + QUEST1-34-2

CHAIN C0AQMAN QUEST1-34-1
~我父亲……又是我父亲的事。他不见了！那……那位医者，阿斯克勒庇俄斯大师，他来我们家把他带走了！~
== C0AQMAN ~我……我问他为什么来，他说我父亲的病需要检查，得去他家。父亲还病着，我就让他带走了，可我越想越觉得不对！~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~哦，不……~
== C0AQMAN ~那之后我就再没听到他们任何一人的消息！我决定来这儿找吉尔伯特，他一定知道他师父住哪儿，能告诉我我父亲在哪儿！~
END
++ ~这是坏消息……我怕阿斯克勒庇俄斯带走你父亲，不是为了他的健康。~ + QUEST1-34-3
++ ~你犯了个可怕的错，肖恩。那人才是泰坦背后的主。~ + QUEST1-34-4

CHAIN C0AQMAN QUEST1-34-2
~等等，等等！我没想到会在这儿遇见你，可……也许碰上是运气！请给我一点时间！~
EXTERN C0AQMAN QUEST1-34-1

CHAIN C0AQMAN QUEST1-34-3
~他……带走我父亲另有原因？求你，让我明白！~
END
++ ~他一直暗中造泰坦，那正是最初毒了你父亲的东西。~ + QUEST1-34-5
++ ~我现在没时间解释。我也在找阿斯克勒庇俄斯，搜寻交给我。~ + QUEST1-34-6

CHAIN C0AQMAN QUEST1-34-4
~什——什么？“泰坦”？你什么意思？~
END
++ ~说来话长，可那是种危险的药。它就是毒了你父亲的东西。~ + QUEST1-34-5
++ ~我现在没时间解释。我也在找阿斯克勒庇俄斯，搜寻交给我。~ + QUEST1-34-6

CHAIN C0AQMAN QUEST1-34-5
~哦……神啊。原来是这样……而我……我还那么感激他看我父亲慢慢好转……~
= ~那人必须被绳之以法！他在哪儿？我能帮什么？~
END
++ ~我也在找他。你该在这儿等。~ + QUEST1-34-6
++ ~别碍事就行。我会找到他。~ + QUEST1-34-6

CHAIN C0AQMAN QUEST1-34-6
~我……我明白了，<PRO_SIRMAAM>。我极担心，可……这事交给你。求你找到他和我父亲！~
EXIT

CHAIN C0AASCS QUEST1-35
~阿斯克勒庇俄斯大师不希望有需要的人去他家找他。他偶尔来这儿，可别的时候，我向你保证，我的医术足以应付大多数事。~
END
++ ~我不需要治病。我要跟他谈泰坦。~ + QUEST1-35-1
++ ~听我说。你师父就是造泰坦的人。我得阻止他。~ + QUEST1-35-2
++ ~马上带我去你师父家，你这无知的蠢货！~ + QUEST1-35-3

CHAIN C0AASCS QUEST1-35-1
~啊，关于那古怪的泰坦调配物有新发现了？我师父没告诉我他研究有什么新见解。~
END
++ ~他大概也不会说，鉴于他知道的。那东西本来就是他造的！~ + QUEST1-35-2

CHAIN C0AASCS QUEST1-35-2
~我师父……？不，一定是哪里弄错了。~
END
++ ~你不信我就自己去问马格努森教授。只有他可能是那人。~ + QUEST1-35-4
++ ~你不是吹过你师父本事无人能及？你觉得他做不到？~ + QUEST1-35-4

CHAIN C0AASCS QUEST1-35-3
~冷静，朋友。阿斯克勒庇俄斯大师醒着的每一刻都在工作，或治病或研究新药。没有足够理由，我不会去打扰他。什么事重要到你必须见他？~
END
++ ~“研究新药”？比如他一直在造的泰坦？~ + QUEST1-35-2
++ ~他一直在实验室里造泰坦。他必须被阻止！~ + QUEST1-35-2

CHAIN C0AASCS QUEST1-35-4
~这……你确定吗，朋友？我们师父是罪人，这不会有错？~
END
++ ~不会错。他就是负责的人。~ + QUEST1-35-5
++ ~若有疑虑，我要见他，看他自己怎么解释。~ + QUEST1-35-5

CHAIN C0AASCS QUEST1-35-5
~我……我相信我师父对治病与医药的赤诚。可……凭他的本事，我也不觉得他做不到。~
= ~我师父住在这附近一栋老屋里，从外头看跟别的没两样。他会像往常一样在家……我能带你去。~
END
++ ~带我去。~ + QUEST1-35-6

CHAIN C0AASCS QUEST1-35-6
~好。我真希望你的结论是错的……可我们必须确定。跟我来。~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",36)
	ClearAllActions()
  	StartCutSceneMode()
	StartCutScene("c0acut11")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",36)~ THEN C0AQDAD QUEST1-36
~不——不……别再来了，医生，求……求你，我求你了……~ [BEGGR05]
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",37)~
== C0AASCL ~我注入你体内的溶液仍在处理侵蚀你内脏的既有毒素。我若过早施用最终治疗用的解药，你必死无疑。那是你想要的吗？~
== C0AQDAD ~我……我不求死，医生……可……这痛……也许倒是一种恩赐……~
== C0AASCL ~你的状况严重，可并未超出我能救的范围。只要你忍住身痛，你今天不必死。你也有活下去的理由。~
== C0AQDAD ~你……为什么这样做？你……你答应救我，可……你若是救星，为什么……看我受苦时那样……那样——~
== C0AASCL ~我负责的是你的命。因症状而回避我工作的目的，就是背叛我的职责。你至今经历的一切都在我预期之内，所以只要我不出错，你终将痊愈。~
== C0AASCL ~现在，别挣扎。该下一剂了。~
== C0AQDAD ~可……可是我……啊啊啊啊啊！~ [BEGGR06]
END
++ ~住手。把针放下。现在。~ EXTERN C0AQDAD QUEST1-36-1
++ ~你是个病态的变态混蛋。~ EXTERN C0AQDAD QUEST1-36-1

CHAIN C0AQDAD QUEST1-36-1
~救……救我……~
== C0AASCL ~……~
== C0AASCL ~你来得比预想的早。~
DO ~StartCutSceneMode()
Wait(1)
ForceSpellRES("C0AQEF4",Player1)
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",37)~ THEN C0AASCL QUEST1-37
~真有意思。~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~<CHARNAME>！~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",38)~
END
++ ~你刚才对我用了什么？~ EXTERN C0AASCL QUEST1-37-1
++ ~那支飞镖……有毒？~ EXTERN C0AASCL QUEST1-37-1

CHAIN C0AASCL QUEST1-37-1
~马雷克是个出色的学生。他对毒的知识无瑕，对解药更胜一筹。看来那份特别配方对你不再有任何效力了，<CHARNAME>，巴尔之子。又或者，是你神性的血增强了你的免疫？~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-37-1A
IF ~InParty("C0Aura")~ EXTERN C0AASCL QUEST1-37-2

CHAIN C0AURA2J QUEST1-37-1A
~你没事吧，<CHARNAME>？~
END
++ ~我想是……我没觉得有什么不同。~ EXTERN C0AASCL QUEST1-37-2
++ ~看来那毒没法第二次对我生效。~ EXTERN C0AASCL QUEST1-37-2

CHAIN C0AASCL QUEST1-37-2
~可惜他最终走上了那么不像样的路，以致毁了自己。黑道就是这样。我本该多给他些理由留下、走更有效率的路。~
END
  ++ ~马雷克……铁王座的刺客是你的学生？~ + QUEST1-37-3
  ++ ~看来我跟你之间的账比我想的还大。~ + QUEST1-37-3
  ++ ~博德之门那起投毒事件，得谢你？~ + QUEST1-37-3
  ++ ~你以毒害、折磨绝望的人为业，还被称为“有效率”？~ + QUEST1-37-4

CHAIN C0AASCL QUEST1-37-3
~确实。你可以说，你过往冒险中某些苦头，间接该怪我，烛堡的<CHARNAME>，为此我诚挚道歉。我从没想过我药师的本事会被用于这种事。~
= ~失去旧门徒固然可惜，可当初他放弃学业、投到夜刀门下时，我就明白他的结局多半无可避免。若我早些把他从森比亚带走，事情也许不同……~
= ~可你来此不是为了这个，对吧？那些旧日冲突对你现在真正追寻的毫无意义。~
EXTERN C0AASCL QUEST1-37-4

CHAIN C0AASCL QUEST1-37-4
~你眼前所见无疑像一场暴行。我不怪你。极少有人有决心看穿科学疗愈那阴森的一面。所以我才宁可不让那些该被关怀的受治者之外的人看见这番景象。~
== C0AQDAD ~救……救我……~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~你……~
== C0AASCL ~你无疑把我当敌人。这合乎逻辑。我们大概难免一战，但在那之前，我请求让我说说我的看法。~
END
  ++ ~你能给出什么理由为你的行为辩护？~ + QUEST1-37-5
  ++ ~好。你解释吧。~ + QUEST1-37-5
  + ~InParty("C0Aura")~ + ~我没兴趣听你解释。投降，否则自卫吧。~ EXTERN C0AURA2J QUEST1-37-6

CHAIN C0AASCL QUEST1-37-5
~我无意轻描淡写我所作所为的分量。确实，我沉溺于任何通情达理之人都会视为不道德、无情的做法。我的尝试与失败造成了无法指望挽回的苦。可我这样做，是为了战胜一个自历史可追溯以来一直折磨我们凡人的敌人。~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~战胜……一个敌人？你指……~
== C0AASCL ~疾病，苦难与死亡的先驱。研究自然秩序的人声称它像许多事一样，是生命必要的部分，可我们难道不认为根除它的使命才是真正正义公道的吗？~
== CERNDJ IF ~InParty("CERND")~ THEN ~自然常被认为冷酷，可正是病患必须承受的试炼，让人获得更大的坚韧。医生，你只看见整体的一角，所以不管你的意图如何，你都走错了。~
== C0AASCL ~我远行四方，学尽疗愈之道、凡人之躯的奥秘，以及能治愈或伤害它的自然之力……有时两者兼有。我从守龙医者那儿学到一句谚语……所谓“以毒攻毒”，把有害之物当作武器，去对抗伤害本身。~
== C0AASCL ~我虽比同道中人犯下更糟的行径，可那是因为公认的方法不足以真正对抗疾病加诸不该受苦之人的苦难。据我所知，我最大的过错不是为研究而故意施加的痛苦，而是我的失败。~
== C0AQDAD ~嗯……呃……~
== C0AASCL ~……太多人因为那些自称懂疗愈之人的无能而被放弃。我的愿望是救他们。不管要付什么代价。~
END
  ++ ~想找到救人的办法值得敬佩，可这不能为你过程中造成的苦开脱。~ + QUEST1-37-7
  ++ ~你就这样自我开脱？哪怕你用自己的实验伤了人、又救不回来时？~ + QUEST1-37-7
  ++ ~不管你说什么，你仍是罪人，我打算照样处置你。~ + QUEST1-37-7

CHAIN C0AURA2J QUEST1-37-6
~等——等等，<CHARNAME>。我……想听他说。我知道他的实验完全错了，可我不信他是那种无缘无故这么做的人。我想知道他为什么这样，哪怕这改变不了我们必须做的事。~
EXTERN C0AASCL QUEST1-37-5

CHAIN C0AASCL QUEST1-37-7
~你说的是我跟泰坦的牵连。这是真的……兰坦极端派系因特里图斯得知我跟卡里迪乌斯教授的关系后，来找我提出合作。他们希望我的知识，加上他们的资源，能成为把泰坦完善成有益调配物的关键——保留它一切长处，去掉一切缺陷。~
= ~正直之人会选择揭发他们的阴谋。可我是医生，更是研究者。我的职责是推进疗愈之术，让它在我身后仍能造福人类。最终，我选择协助他们的研究，希望他们提供的东西能结出善果，同时尽量从他们的试验对象手里多救些命。~
= ~你也许看法不同，可泰坦以及这艰难项目之前的实验，目的从不是伤害或致死。卡里迪乌斯用他最初的配方，试图把凡人身体的极致从理论变为现实，可尽管他经验丰富，努力只落得失败。~
= ~我无意贬低他的努力。身为同道研究者，我真心同情这位好教授的困境。他想造一份配方，让普通人超越极限，消除一切折磨不幸者的缺陷与瑕疵——那些被自然界的残酷与身体的极限不公地截短了生命的人。~
= ~若能成功，那未来……许多人的性命……相比之下，你在诸国度现状里见到的苦都只算微不足道。~
= ~我的逻辑也许令你憎恶，理应如此。可不管好坏，我早已远离常俗的道德规范，好让我真正希望成就的事得以完成。~
END
  ++ ~你觉得这解释够让我放过你吗？~ + QUEST1-37-8
  ++ ~够了。你说什么都改变不了你必须被阻止的事实。~ + QUEST1-37-8
  ++ ~说重点。~ + QUEST1-37-9

CHAIN C0AASCL QUEST1-37-8
~我不指望为保命说服你。可我求你一件事。~
EXTERN C0AASCL QUEST1-37-9

CHAIN C0AASCL QUEST1-37-9
~这是我唯一的愿望——不管你打算怎么处置我，我希望我的知识与研究能留下。若我的努力今天必须终结，我不希望我已成就的东西白费。~
= ~这里的一切必须用于我造它的目的，否则我造成的一切伤害都将成空。你若能向我保证这点，我连自己的死都不会后悔。~
END
  ++ ~你的研究沾着血。它该被毁掉。~ + QUEST1-37-10
  ++ ~你的工作怎样不关我的事。~ + QUEST1-37-10
  ++ ~我必须阻止你，可我会尊重你最后的愿望。~ + QUEST1-37-11

CHAIN C0AASCL QUEST1-37-10
~那就这样吧。我虽厌恶夺命，可为了我建立的一切，我别无选择只能反抗你。我会尽量让它不痛。~
END
IF ~!InParty("C0Aura")~ DO ~ReallyForceSpellRES("C0AUSP01",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
Enemy()~ EXIT
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-37-12

CHAIN C0AASCL QUEST1-37-11
~那就好。那么我们做该做的事吧。~
END
IF ~!InParty("C0Aura")~ DO ~ReallyForceSpellRES("C0AUSP01",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
Enemy()~ EXIT
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-37-12

CHAIN C0AURA2J QUEST1-37-12
~请等等。我只是……有件事要问你。~
== C0AASCL ~我在听。~
== C0AURA2J ~只是……阿斯克勒庇俄斯大师，你从什么时候起这样看事情的……~
== C0AURA2J ~……不。~
== C0AURA2J ~我该称你为……阿斯克勒庇俄斯·科瓦尔，波西亚的大炼金师，《炼金术二十七论》的创立者。你被视为诸国度当今最伟大的医药与草药学者之一。我以为你离开哈鲁阿只是跟你那些法师在理念上不合……现在我看出远不止如此。~
== C0AASCL ~看来你读过我的旧作，对我过去也略知一二，奥瑞莉亚·格利默夏恩。~
== C0AURA2J ~我敬重你身为医者的著作。不管你做了什么，我……若不是你的研究，我不会像现在这样懂医药。~
== C0AASCL ~……~
== C0AASCL ~是。像卡里迪乌斯教授一样，我因不道德的做法被逐出故乡哈鲁阿。可教授悔恨自己的行为、自愿选择命运，而我从没因反对而偏离我的路。知道真相的他一定很失望……你也是。~
== C0AURA2J ~我相信你说的都是真话。可我永远没法走上同一条路。我……忍不住为你落到这么低而可怜你，不管是什么让你如此。~
== C0AASCL ~不。你可以失望，可……你无权可怜我。~
== C0AURA2J ~什么？~
== C0AASCL ~你还不明白，值得可怜的是你，奥瑞莉亚……尽管你有才华，你仍被曾束缚我、令我失败蒙羞的同样极限困住。没有天赋的人无从理解，可你……你缺乏力量去接受你所见的，去用你手中之物。~
== C0AURA2J ~不……不，我只是——~
== C0AASCL ~你的状态暴露了你的真心。那细微却惊慌的呼吸，你握弓时泛白的指节……你认为我所做的*错了*，可你看不到一条能达成你所愿的、真正*对*的前路。~
== C0AASCL ~你缺乏论据真正否定我的看法，正如你缺乏决心真正把武器转向我来证明它。这就是你的缺陷，只要你还把那份重量扛在肩上，它就让你在自己的路上寸步难行。~
END
  ++ ~闭嘴。奥拉对责任的分量、对知识的理解都不比你少。她背负的担子比你重得多，阿斯克勒庇俄斯。~ EXTERN C0AURA2J QUEST1-37-13
  ++ ~我们没必要跟你辩论。你的恶行已足够让我们今天送你死。~ EXTERN C0AURA2J QUEST1-37-14
  ++ ~你话说完没？你那些废话也许能吓到奥拉，可我不会被空话这么轻易打倒。~ EXTERN C0AURA2J QUEST1-37-14

CHAIN C0AURA2J QUEST1-37-13
~谢谢，<CHARNAME>，可我没事。我只是需要被提醒一下……谢谢你鼓励我。~
EXTERN C0AURA2J QUEST1-37-14

CHAIN C0AURA2J QUEST1-37-14
~……~
== C0AURA2J ~我不能否认你说的是真的。我在求知与行正事之间找平衡，挣得太苦……正因如此，不管我怎么努力，我也许永远达不到像你、像卡里迪乌斯教授，或诸国度最伟大头脑所能成就的。~
== C0AURA2J ~而且……我知道达不到自己真正能做到的事，一直在内心深处折磨我。也许我作为研究者已到极限，可……我不能停止尝试。我不能让那些像我一样心存疑惑的人落入你这样的路。~
== C0AASCL ~我明白了。~
== C0AURA2J ~原谅我，阿斯克勒庇俄斯大师。不是我不懂你的道理。我知道那是你所信的，因为别的路都让你失败了。可我还不能信。而……这就是我必须阻止你的原因！~
== C0AASCL ~那就这样吧。我们的路虽不同，我却能敬佩你的信念。可正因这样的不同，我们才必须在此一战。我真心遗憾，但不得不做。~
DO ~ReallyForceSpellRES("C0AUSP01",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
CreateCreatureObjectEffect("MISTPO01","C0ABAM02",Myself)
Enemy()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("Defeat","LOCALS",1)~ THEN C0AASCL QUEST1-DEFEAT
~呃……看来关于你成就的传说一点不假。在我这处境里还想着取胜，显然是狂妄。~
= ~我的专长是跟生命打交道，不是死亡。好……显然抵抗无用。我投降。~
END
  + ~!Dead("C0AQDAD")~ + ~好。你会被交给当局，得到你应得的审判。~ + QUEST1-DEFEAT-1
  + ~Dead("C0AQDAD")~ + ~好。你会被交给当局，得到你应得的审判。~ + QUEST1-DEFEAT-2
  + ~!Dead("C0AQDAD")~ + ~我没兴趣饶你。准备死吧！~ + QUEST1-DEFEAT-1
  + ~Dead("C0AQDAD")~ + ~我没兴趣饶你。准备死吧！~ + QUEST1-DEFEAT-2

CHAIN C0AASCL QUEST1-DEFEAT-1
~随你。可你不该忘了我们旁边这位病人的状况。看来我已无法按需医治他，得由别人接手这活。~
EXTERN C0AASCL QUEST1-DEFEAT-3

CHAIN C0AASCL QUEST1-DEFEAT-2
~随你。我只遗憾看来这位病人为我们这场无意义的冲突付了代价。这不是他该得的。~
EXTERN C0AASCL QUEST1-DEFEAT-3

CHAIN C0AASCL QUEST1-DEFEAT-3
~一切竟要这样收场，多可悲……~
END
IF ~!InParty("C0Aura")~ DO ~ClearAllActions()
    StartCutSceneMode()
    StartCutSceneEx("C0ACUT12",TRUE)~ EXIT
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-DEFEAT-4

CHAIN C0AURA2J QUEST1-DEFEAT-4
~等等……！<CHARNAME>，那是什么……？！~
DO ~ClearAllActions()
    StartCutSceneMode()
    StartCutSceneEx("C0ACUT12",TRUE)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",39)~ THEN C0AURA2J QUEST1-39
~*咳*……*咳*……呼……呃……哦，多么压倒性的失能剂……吸进去还疼……~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",40)~
= ~<CHARNAME>……<CHARNAME>，你醒着吗？~
END
  ++ ~我……醒着，是。可我视线还在模糊。~ + QUEST1-39-1
  ++ ~先别管那个。阿斯克勒庇俄斯怎么了？~ + QUEST1-39-2

CHAIN C0AURA2J QUEST1-39-1
~应该没事……看来不管那是什么，都不是致命毒。不该有持久影响……不过我得空再好好检查一遍。至于阿斯克勒庇俄斯，他……~
EXTERN C0AURA2J QUEST1-39-2

CHAIN C0AURA2J QUEST1-39-2
~他……他跑了。我还不清楚发生了什么……我们制住他时，那幽灵忽然出现，做了……什么。我记得最后看见他消失在包围我们的雾里。~
= ~现在别管那个了。至少我们活着。可……那位老人……那可怜人的父亲……~
DO ~ClearAllActions()
    StartCutSceneMode()
    MoveToPoint([583.262])
    SmallWait(1)
    Face(SE)
    Wait(1)
    StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",40)
Global("C0AuraBG2Quest1DeadMan","GLOBAL",0)~ THEN C0AURA2J QUEST1-40
~他……他死了。~
DO ~SetGlobal("C0AuraBG2Quest1DeadMan","GLOBAL",1)~
= ~看来他是在搏斗中死的。我不敢信……是那雾让他窒息而死？还是我们不小心……不，我们不可能……~
= ~我们什么都没办成，<CHARNAME>。这一切的负责人逃了……而我们面前死了一个无辜的人。~
END
  ++ ~对不起。我也觉得我们失败了。~ + QUEST1-40-1
  ++ ~不过又一具尸体。我没那么难受。~ + QUEST1-40-1

CHAIN C0AURA2J QUEST1-40-1
~我知道我们尽力了，可……我好久没这么绝望过。就像我恨自己无力。~
== C0AURA2J ~……我在想……不管是什么让他觉得必须走到这一步，他是不是也这样感觉……~
== C0AURA2J ~我想仔细看看这个人，<CHARNAME>。他一定受着某种真正可怕的东西折磨，我需要知道。我必须。~
== C0AURA2J ~……~
== C0AURA2J ~这——这是……~
== C0AURA2J ~……“Kusoyarou”。~
== JAHEIRAJ IF ~InParty("JAHEIRA")~ THEN ~这是……这人肉身上真正骇人的病害。一定造成了难以想象的痛苦。~
== CERNDJ IF ~InParty("CERND")~ THEN ~我过去在野兽皮上见过这种状况。痛楚逼它们发狂……而那只是开始。~
== EDWINJ IF ~InParty("EDWIN")~ THEN ~真有意思。皮已死去腐烂，而人其余部分还活着……或者说，曾活着。~
== AERIEJ IF ~InParty("AERIE")~ THEN ~贝——贝尔凡保佑我们！这皮……就像早已死了很久！这可怜人得受多少苦……？~
== C0AURA2J ~看，<CHARNAME>。这……变色、发灰、结痂的皮。这是……在兰坦，我们叫它“活石化”——活肉发生某种坏死的罕见可怕变异。~
== C0AURA2J ~先是你的皮变得像皮革……然后逐渐、不可避免地，它硬化成茧、似树皮，最终似石头……过程痛得钻心，直到受影响肢体除了痛再没别的感觉……石化蔓延全身。~
== C0AURA2J ~更糟的是，它没有已知的解药。而且因为它更像变异而非疾病，连治疗魔法也无法恢复正在死去的肉……它是最糟的受苦方式之一。有人绝望到剥掉自己的皮。多数人最终被剧痛逼疯。~
== C0AURA2J ~这是我……第一次见到。几乎就像得知故事里最可怕的怪物原来一直是真的。~
== C0AURA2J ~……~
END
  ++ ~等等，别碰它！~ + QUEST1-40-2
  ++ ~你在干什么？~ + QUEST1-40-3
  ++ ~你若要碰那个，别靠近我。~ + QUEST1-40-3

CHAIN C0AURA2J QUEST1-40-2
~没事，<CHARNAME>。这状况不传染。我不会……被影响。至少身体上不会。~
EXTERN C0AURA2J QUEST1-40-3

CHAIN C0AURA2J QUEST1-40-3
~我……我到底在干什么？我在这儿什么都做不了。我为什么还要假装自己还能帮忙？~
= ~我们……我们能做什么，<CHARNAME>？就算他还活着，就算我们阻止了阿斯克勒庇俄斯……这人余生仍会受苦。我……我不知道……~
END
  ++ ~我也不知道。可这不是我们的错。~ + QUEST1-40-4
  ++ ~也许有一天会有办法帮像他这样的人。可我们不能在过程中造成更多伤害。~ + QUEST1-40-5
  ++ ~高兴点吧，至少不是你摊上这种痛。~ + QUEST1-40-6

CHAIN C0AURA2J QUEST1-40-4
~也许我不该怪任何人，不为这种事。连……也不该。~
EXTERN C0AURA2J QUEST1-40-7

CHAIN C0AURA2J QUEST1-40-5
~要是永远没人找到办法呢，<CHARNAME>？要是唯一的办法是……~
EXTERN C0AURA2J QUEST1-40-7

CHAIN C0AURA2J QUEST1-40-6
~我怎么能高兴，<CHARNAME>？有多少人落到这地步，求着被救，可……~
EXTERN C0AURA2J QUEST1-40-7

CHAIN C0AURA2J QUEST1-40-7
~……究竟有多少人，救不回来？之前有多少……~
= ~……我得离开这儿，<CHARNAME>。我们就……回去吧。求你。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",40)~ THEN C0AEX1 QUEST1-40
~这真是与死亡擦肩，阿斯克勒庇俄斯。不过看来你反正也活不久了。我似乎来得稍晚了点。~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",41)~
== C0AASCL ~*咳*……*咳*~
== C0AASCL ~我不信。这不过是你玩的又一场扭曲游戏。看我濒死，好让你亲手递上希望。~
== C0AEX1 ~嘿嘿……你总是一眼看穿我。~
== C0AASCL ~可惜对你来说，我没多少时间浪费在这儿。还有……*咳咳*~
== C0AEX1 ~你要回去？你这是去送死，而且我刚救了你。~
== C0AASCL ~我有个病人。我的职责在病患身上。~
== C0AEX1 ~他已经死了。~
== C0AASCL ~……~
== C0AEX1 ~别觉得有责任。不管怎样你也未必救得了他。活石化是痛苦的死法——快些了结本身就算一种慈悲，你不觉得吗？~
== C0AASCL ~够了……我剩下的时间本就少。我无意把它浪费在互相辩论职业伦理上。~
== C0AEX1 ~行。不过我相信你欠我点什么，为救你的命。~
== C0AASCL ~泰坦最后的变体……那就这样吧。拿去吧，虽然我没料到你这幽灵竟不只是一场简单的幻象。~
== C0AEX1 ~承蒙一位新朋友略施援手。因特里图斯里那些过时的蠢货也许另有看法，可魔法自有其用。~
== C0AASCL ~哼。~
== C0AASCL ~尽管我努力，它仍未完善。我遗憾……*咳* 我活不到功成那天了。~
== C0AEX1 ~哦……？你已经认命等死了，朋友？我还是特意比预想更早现身来帮你呢。~
== C0AASCL ~你珍视的是我的命？还是等我再也供你利用研究时，你怕的是自己的命？~
== C0AEX1 ~你把我想得真轻，阿斯克勒庇俄斯。是，你一死……我想我也活不了多久了。连我都没法否认，你对医药与疗愈的理解远胜于我。可既然你已跟“她”起了冲突，我就不需要再继续欺瞒死亡了。我差不多已备到所需之处。~
== C0AASCL ~你那点小算盘……不关我的事。在某些方面，你早已输给了你如此憎恨的那人。~
== C0AEX1 ~是吗？你既肯跟我来往，我倒没料到你把我看得这么低？~
== C0AASCL ~你的头脑无疑出众。若有合适资源，连我在知识与机变上都比不过你。~
== C0AASCL ~可你缺少真正研究者所需的那种品质——对未来的远见，以及随之而来的、真正值得奋力追求的东西。这一点上，你比不上她……监察官。~
== C0AEX1 ~……~
== C0AEX1 ~哎呀，亲爱的阿斯克勒庇俄斯。我受伤了。我一直以为我们很像。~
== C0AASCL ~我相信没什么好说的了。我没法再帮你了……而你能不能自己看清真相，如今全看你自己的本事。不过我忍不住怀疑你成功的可能。~
== C0AEX1 ~真可惜，阿斯克勒庇俄斯。虽然我对你失望……这几年的交往我还是喜欢的。你若此刻开口，我仍会救你，纯粹出于对一位科学家的尊重。~
== C0AASCL ~我拒绝。~
== C0AEX1 ~如你所愿。~
== C0AEX1 ~我会让你安静地死。~
DO ~ClearAllActions()
  	StartCutSceneMode()
	StartCutScene("c0acut14")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",41)~ THEN C0AASCL QUEST1-41
~里斯？~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",42)~
== C0AREES ~……~
== C0AASCL ~我明白了……原来如此。哈。*咳* 哈哈……~
== C0AASCL ~……好，那么，至少让我快些。就这儿。~
DO ~ClearAllActions()
  	StartCutSceneMode()
	StartCutScene("c0acut15")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",42)~ THEN C0AREES QUEST1-42
~……~ [C0BLANK]
= ~你其实不必来看这个的。~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",43)
	ClearAllActions()
  	StartCutSceneMode()
	StartCutScene("c0acut16")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",43)~ THEN C0AREES QUEST1-43
~吉尔。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",44)~
== C0AASCS ~我得……确认任务完成。~
== C0AREES ~嗯。~
== C0AREES ~按道理我该告诉你别动感情。可……这次我什么也不说。~
== C0AASCS ~……~
== C0AREES ~之后打算回家吗？你的任务结束了，不用再每天染头发、装口音……~
== C0AASCS ~我……我想再待一阵。阿斯克勒庇俄斯确实……教了我许多，不管他还做过什么。与其让这些本事白费，我宁愿用它们去帮别人……就像他曾真心相信的那样。~
== C0AREES ~*点头*~
== C0AREES ~这也算不坏的主意。你有一阵不用再接这种任务了。~
== C0AREES ~那我们就各回各位。继续装熟人……若能跟上因特里图斯那帮混蛋的动向，就盯着。~
== C0AREES ~报告给队长的事别担心……我自己写给她。~
== C0AASCS ~里斯……~
== C0AREES ~嗯？~
== C0AASCS ~我一直在想。既然我们把这事查清了……你庆幸不是她，对吧？~
== C0AREES ~*叹气* 嗯……至少我松了口气，不必写*那份*报告。~
== C0AREES ~而且……她心肠好。确保像她这样的人平安，是我们的职责。~
DO ~ClearAllActions()
  	StartCutSceneMode()
	StartCutScene("c0acut17")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",44)~ THEN C0AMAGN QUEST1-44
~我明白了……这一整件事真可怕。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",45) AddExperienceParty(50000)~
= ~想不到我过去研究的成果竟能造成这样的伤害……虽然事情的具体经过我并未有意参与，可看来我的作为——或者说不作为——让我有许多要弥补的。~
= ~里斯已去把那可怜无辜年轻人的父亲之死的坏消息告诉他。接下来可预见的日子里，我会专心研究，为这“泰坦”造成的病症制出解药。也许还能救下些人命。~
= ~至于阿斯克勒庇俄斯……你说他逃了？~
END
  ++ ~不幸，是逃了。可他在战斗中受了重伤。~ + QUEST1-44-1
  ++ ~考虑到他做的事，你听着异常怅然。~ + QUEST1-44-2

CHAIN C0AMAGN QUEST1-44-1
~我想他离不开这城了。他的名字已报给执法者，他们会盯着他的行踪。法律对他不会宽厚。~
EXTERN C0AMAGN QUEST1-44-3

CHAIN C0AMAGN QUEST1-44-2
~我忍不住，我的<GIRLBOY>……你若像我一样把一生献给研究，也许能明白……~
EXTERN C0AMAGN QUEST1-44-3

CHAIN C0AMAGN QUEST1-44-3
~当然，我无法为他所作所为的结果开脱。可我无疑他真是个专心致志的研究者，头脑少有几人能比。~
= ~一旦他所作所为的传闻传开，他无疑会被斥为疯子、恶人……我也得说，并非不该。可世人记住他的就只会是这个，再无别的。~
= ~*叹气* 真可惜……~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-44-4A
  ++ ~你比多数人更了解他。你究竟明白是什么驱使他吗？~ + QUEST1-44-4
  ++ ~他似乎真心想治病救人。为什么转向这么残忍的手段？~ + QUEST1-44-4
  ++ ~我该做的部分做完了。处理这案子剩下的工作交给你们。~ + QUEST1-44-6

CHAIN C0AURA2J QUEST1-44-4A
~教授，我还是不明白……一个这么出众、这么想救人的人……什么能让人变成他那样？~
EXTERN C0AMAGN QUEST1-44-4

CHAIN C0AMAGN QUEST1-44-4
~当然，我不敢说自己真懂他的心思。可他和我确实许多夜晚坐在这桌边，以科学与知识之人的身份谈我们的理论与哲学……所以至少我的猜测也许比多数人准些。~
= ~他从不坦率讲自己的过往，可在几杯杜松酒之下，我知道了一些事。阿斯克勒庇俄斯·科瓦尔曾是哈鲁阿最受敬重的学者之一，真正的典范。可……攀到那样的高处，总有代价。~
= ~许多年前，阿斯克勒庇俄斯钟爱的女儿染上一种前所未见的病，当时自然没有已知的解药。纵然他有那么多知识，面对自己最在意的人却无能为力，而身为本领域最杰出者，自然也没别人能在他失败处成功。~
= ~也许是绝望之下，他转向了……别的方法。那些对他的伦理、他在同侪间的地位都有不可言说后果的方法。可当时，似乎还有一条他不愿越的线。最后，他不但救不了亲人，已做的事更足以让他被逐出故乡。~
= ~看来他从中学到了某种教训，选择知识和他所信的更大善，胜过自己的道德。我从研究他过去的成果知道，他早已制出了夺走他女儿性命那病的解药……唉，太迟了。无疑他相信，若当初有机会就采取同样手段会更好。若我在他的位置，我不知道*我*能否拒绝同样的念头。~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-44-5
IF ~!InParty("C0Aura")~ EXTERN C0AMAGN QUEST1-44-6

CHAIN C0AURA2J QUEST1-44-5
~原来如此。连我都不确定我能不能……~
== C0AMAGN ~每个研究者最常见的堕落就是执念，好姑娘，你无疑见过。有人甚至说这不可避免，因为我们越推进自己的知识，那诱惑对我们就越强，一点点磨掉我们的道德根基……直到我们完全看不清自己陷得多深。~
== C0AURA2J ~……*点头*~
== C0AMAGN ~那么，我们得问自己最后一个问题——现在怎么办？~
== C0AURA2J ~请问……？~
== C0AMAGN ~不管他的命运如何，看来阿斯克勒庇俄斯的工作到头了。如今责任在我们身上，要决定如何处置他已成就的研究。~
== C0AMAGN ~他和我合作了好几个月。他跟我分享的知识，大部分都留在这栋房子里。你当然可以自行研读，若你有意。~
== C0AURA2J ~那……可——教授，你打算继续用他的研究？~
== C0AMAGN ~当然。我们是兰坦人，亲爱的。我们明白纯粹形态的知识本身无道德属性。收集它的行为另当别论，可对错由你自己判断。在我看来，损害已经造成，所以我选择往前走。~
== C0AMAGN ~你当然可以把这看作对所选手段的肯定。我无法反驳这种推理。可只要求知的追求继续，像阿斯克勒庇俄斯这样的人就会存在。你我都没法改变。若说有办法阻止这样的人走岔，那就是先替他们的路打好地基。~
== C0AURA2J ~我明白。可还是——我……我得想想。~
== C0AMAGN ~慢慢来，亲爱的。你还有那份天赐之礼可用。~
EXTERN C0AMAGN QUEST1-44-6

CHAIN C0AMAGN QUEST1-44-6
~总之，我得谢你所做的一切，我的<PRO_GIRLBOY>。这事若你没碰巧插手，我无疑局势只会愈发失控。~
= ~不过我相信这整件事里还有些说不清的因由。毕竟，那些——~
DO ~ClearAllActions()
  	StartCutSceneMode()
	StartCutScene("c0acut18")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",46)~ THEN C0AQINT2 QUEST1-44
~卡里迪乌斯教授。终于见到你，真是荣幸。我是奥托·阿文提努斯。~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",47)~
== C0AMAGN ~哼。因特里图斯这么一位显要的官长，来找我这样区区流亡研究者，有何贵干？~
== C0AQINT2 ~教授太谦了。你的名字虽不再见于我国的知识典籍，可熟悉我们历史的人至今仍敬重你的名。唉，就算我们最杰出的头脑，没有你自己著述的助力，也远不能复制你那份“巨蟒溶液”的巧思。~
== C0AMAGN ~所以你们才让阿斯克勒庇俄斯知道我在这儿，给他机会接近我？~
== C0AQINT2 ~啊……那已不必你操心了。我该通知你，阿斯克勒庇俄斯·科瓦尔不再是问题了。本地当局已发现他的尸体，确认死亡。他一死，源头既除，泰坦的威胁也就终止了。~
== C0AMAGN ~是吗？我以为阿斯克勒庇俄斯不过是你们的合作者。不然，他那源自兰坦炼金术的泰坦，怎会偏偏传到这儿来散布？~
== C0AQINT2 ~你指控我们？教授，你误解了我们的目标。阿斯克勒庇俄斯是个异端、短视的人类、可鄙的施法者。诚然，我们利用他炼金师的本事推进自己的研究，可泰坦的生产与散布全是他一手所为。我们否认他的行为，一得知他疯狂的举动就终止了跟他的往来。~
== C0AMAGN ~我想我没有证据反驳。你们这班人别的本事不说，抹痕迹倒是熟练。~
== C0AQINT2 ~再说……据我们探员所集，他工作里导向这物质的根基……巨蟒溶液，根源在你自己的研究。我弄错了吗，尊敬的教授？也许这曾受敬重的书名《生命元素论》，是别人写的？~
== C0AMAGN ~我想你的威胁指错了地方。我不打算再追这事——那是当局的角色。至于事情的由来，我不会否认我在这场灾难里的过错。跟某些人不同，我有智慧承认自己的错误。~
== C0AQINT2 ~可敬至极。~
== C0AMAGN ~我们说重点吧。你们因特里图斯想要什么？~
== C0AQINT2 ~我们想要的从未改变，自我们最初荣光的日子起，教授。像任何兰坦人一样，我们求的是故乡的兴旺，仅此而已。~
== C0AMAGN ~是吗？那么这一切……肆意使用禁研、在外邦播撒不和……这也是为兰坦好，是吗？孩子，我们这国是为以知识推进诸国度而铸的。你真能说你所做的服务于我们最初神圣的目的？~
== C0AQINT2 ~当然如此，先生。~
== C0AMAGN ~什么？~
== C0AQINT2 ~得了，教授。你流放后离开家乡许多年了。你总不至于看不见、听不见我们一族在这些无知之地被如何看待？~
== C0AMAGN ~……~
== C0AQINT2 IF ~InParty("C0Aura")~ THEN ~你呢，奥瑞莉亚女士？~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~……那是……~
== C0AQINT2 ~我们这国蒙受一切最伟大的恩赐——知识、创新、想象……可家乡之外有多少人有智慧如此看待？对诸国度而言，我们一族最好不过是个奇观，最坏不过是虫豸。~
== C0AQINT2 ~我们虽以这些观念为自保之策，可我们兰坦人仍被迫承受他人野蛮造成的后果。动荡之年，恶魔法横行、撕裂诸国度……就连那时，我们兰坦人本可成为许多人的救星，本可取得应得的权位，可我们目光短浅的领袖什么也没做，而外面的世界一如既往无视我们。这种无知程度不令你厌恶吗？~
== C0AMAGN ~你就是这样为行为辩护？也许你忘了什么造就一个研究者。我们的工作因自身而珍贵，不为个人地位这种小利。~
== C0AQINT2 ~我也不在乎这些野蛮人的认可。可你该看看你自己，教授。凭你的知识，你本该处在配得上你伟大的位置，身边无数学生……可你却在这儿，孤身一人，住在破败里，把知识聚给那些用不上它的人。~
== C0AQINT2 ~我觉得可憎。而身为因特里图斯的一员，我相信我们影响、塑造诸国度的时机早已迟了太久。~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~你——你简直在胡说八道！~
== C0AMAGN ~那你打算怎么做，若你愿意解释？你们对泰坦的研究已停。除非你们另有扩张影响的计划——而我知道艾罗奇不支持。~
== C0AQINT2 ~那点我怕不能告诉你。任何高明的玩家都知道，时机未到不亮底牌。除非你愿意选边，支持我们高贵的事业。身为兰坦人，你会大受欢迎。~
== C0AMAGN ~我想不必了。~
== C0AQINT2 ~并不意外。不过，出于尊重给个警告，我劝你别再插手我们的事，正如我们不插手你的。~
== C0AQINT2 ~但请放心，这不会是我们最后一次见面。很快，这些未开化之地就会明白知识真正能做什么。当兰坦被认作它本来的强国，像你这样在流放中枯萎的教授，终能取得配得上你的地位。~
== C0AMAGN ~哈！~
== C0AQINT2 ~你觉得我的话好笑？~
== C0AMAGN ~恕罪。只是我许多、许多年没见过故乡来的人有如此僵硬浅薄的念头了。我以为时光流逝、往昔失败给的教训，该会磨掉那些把你们带到这般深处的同样心志。~
== C0AQINT2 ~……~
== C0AMAGN ~这个时代，你甚至不敢在你声称热爱的土地上穿戴你此刻如此傲慢展示的颜色。在你疯狂的追求里，你打算既与诸国度、又与你自己的人民为敌，只因你任由自我把一切逻辑与理性吞噬殆尽。你追一个不可能的梦，死死抓着它，因为你早已放弃任何回归正途的机会。~
== C0AMAGN ~多可笑，多可悲。~
== C0AQINT2 ~可悲？我们不像那些向不如自己者低头、怀着无尽知识躲起来、背叛对故乡职责的人。我们因特里图斯把血汗献给我们的土地，用不着可悲——既不给，也不受。~
== C0AMAGN ~我可悲你们的头脑浪费在追这么不值当的事业上。真的，按理念说，你们早已死了。若无别的事，我请你离开。科学家该保持开放的心，这是礼数，可我看跟鬼魂交谈难有什么进展。~
== C0AQINT2 ~……！~
== C0AQINT2 ~……哈哈哈……~
DO ~StartCutSceneMode()
	Wait(2)
	FaceObject("C0AQINT1")
	SwingOnce()
	ApplyDamage("C0AQINT1",5,STUNNING)
	ActionOverride("C0AQINT1",SetSequence(SEQ_DIE))
	Wait(1)
	FaceObject("C0AMAGN")
	Wait(3)
	ActionOverride("C0AQINT1",SetSequence(SEQ_AWAKE))
	StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",47)~ THEN C0AQINT2 QUEST1-47
~起来。~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",48)~
== C0AMAGN ~真是低劣头脑的冲动之举。~
== C0AQINT2 ~随你怎么想。老旧僵硬的头脑看来无法恢复昔日荣光……那就这样吧，你的门徒——啊，单数，不是复数——也许另有看法。恕我不够体贴。~
== C0AMAGN ~你差点真把我惹怒了。滚，免得我拿最新的发明用在它们不该用的地方！~
== C0AQINT2 ~好。我们已待得太久，不再浪费你的……闲暇。愿<DAYNIGHTALL>安好。~
== C0AQINT2 IF ~InParty("C0Aura")~ THEN ~哦，还有格利默夏恩一族的奥瑞莉亚女士……容我表达因特里图斯得知你仍活着的由衷喜悦。~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~啊……！~
== C0AQINT2 IF ~InParty("C0Aura")~ THEN ~当年你船倾覆的消息传到祖国时……唉，我们当然都极悲痛。大族中最年轻的奇才之一，失落在大冰海……~
== C0AQINT2 IF ~InParty("C0Aura")~ THEN ~我们以为自然太残酷，可看来它最终发了慈悲，把你送回我们身边。真是大慰，连那样的惨剧都没夺走你。~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~我……被这份心意感动了。希望再不会有那样的惨剧发生在我身上……或任何别的年轻兰坦人身上。~
== C0AQINT2 IF ~InParty("C0Aura")~ THEN ~我们仍在兰坦的领袖备了一件本该属于你的礼物，原是为你归乡接风。可你既已上路，我们就另作了安排，让它送到这儿，就送到这座城。希望你能接受我们这份善意之礼。~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~我……明白了。我猜我想不想要这礼物都无所谓，对吧？~
== C0AQINT2 IF ~InParty("C0Aura")~ THEN ~女士说笑了。这不过是我们对故乡珍宝的一点心意。~
== C0AQINT2 IF ~InParty("C0Aura")~ THEN ~据我估算，它该在……哦，五天后抵达阿斯卡特拉。我确信它的性质会给你一个相当愉快的*惊喜*。~
== C0AQINT2 IF ~InParty("C0Aura")~ THEN ~那么，我就此向诸位告别。~
DO ~AddJournalEntry(%Quest1_Entry_8%,QUEST_DONE)
StartCutSceneMode()
	Wait(1)
	ActionOverride("C0AQINT1",FaceObject("C0AQINT2"))
	ActionOverride("C0AQINT3",FaceObject("C0AQINT2"))
	Wait(2)
	ActionOverride("C0AQINT1",UseItem("potn10",Myself))
	ActionOverride("C0AQINT1",Wait(1))
	ActionOverride("C0AQINT1",DestroySelf())
	ActionOverride("C0AQINT3",UseItem("potn10",Myself))
	ActionOverride("C0AQINT3",Wait(1))
	ActionOverride("C0AQINT3",DestroySelf())
	UseItem("potn10",Myself)
	Wait(1)
	ActionOverride("C0AMAGN",StartDialogNoSet(Player1))
	DestroySelf()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",48)~ THEN C0AMAGN QUEST1-48
~令人瞠目……他们潜伏这些年，代言人似乎只越来越自负。~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",49)~
== C0AMAGN IF ~InParty("C0Aura")~ THEN ~还有一份*礼物*？姑娘，我能想到他们为何觉得该送你这样的东西。你最好当心……他们敢说得这么露骨，要么是傲慢，要么是笃信不管那是什么，都能达成他们的目的。~
== C0AURA2j IF ~InParty("C0Aura")~ THEN ~……*点头*~
== C0AMAGN ~这一切把气氛都毁了。我要回屋再煮一壶茶静静神……你若也想喝，我把壶留在桌上。~
DO ~SetGlobalTimer("C0AuraBG2BattleEncounter","GLOBAL",FIVE_DAYS)
EscapeAreaMove("C0AUR2",237,201,NE)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",52)~ THEN C0AURA2J QUEST1-52
~哈……哈啊……那真是……好一份“礼物”，对吧？~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",53)~
END
  ++ ~这话你再说一遍也不为过。~ + QUEST1-52-1
  ++ ~你招麻烦的本事快跟我一样糟了。~ + QUEST1-52-2

CHAIN C0AURA2J QUEST1-52-1
~除了他们那新型构造体，他们提到那只切断我们魔法的“眼”……我若没弄错，那一定是……~
EXTERN C0AURA2J QUEST1-52-3

CHAIN C0AURA2J QUEST1-52-2
~可——嗯，嘿嘿……我想这我真没法反驳。不过有件事让我担心。~
EXTERN C0AURA2J QUEST1-52-1

CHAIN C0AURA2J QUEST1-52-3
~等等，看那边，<CHARNAME>！还有更多！~
DO ~ClearAllActions()
  	StartCutSceneMode()
	StartCutScene("c0acut19")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",53)~ THEN C0AREES QUEST1-53
~看来我来晚了。你们俩都没事吧？~
DO ~SetGlobal("C0AuraBG2Quest1","GLOBAL",54)~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-53-1
  ++ ~里斯？你怎么在这儿？~ + QUEST1-53-2
  ++ ~你就是那个助手，对吧？可看来你不止是助手。~ + QUEST1-53-2

CHAIN C0AURA2J QUEST1-53-1
~里斯？你来这儿做什么……？而且……刚那支烟粉弩箭是你放的？~
EXTERN C0AREES QUEST1-53-2

CHAIN C0AREES QUEST1-53-2
~我想我该向你解释，并为让你卷入这整摊烂事道歉。我先正式介绍自己。~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-53-3
IF ~!InParty("C0Aura")~ EXTERN C0AREES QUEST1-53-3A

CHAIN C0AURA2J QUEST1-53-3
~我想我明白了……你是奥库卢斯的人，对吧？~
== C0AREES ~对，我是。~
END
  ++ ~“奥库卢斯”是什么？~ EXTERN C0AURA2J QUEST1-53-4

CHAIN C0AURA2J QUEST1-53-4
~那是……嗯，你可以把它当作我们一族最接近军队的东西。成员是兰坦人中最守纪律、最善战的一批。我们故乡也许不是为战争而建，可我们仍得训练一些精选成员，随时准备为我们而战。我姐姐当奥库卢斯的队长已好几年了。~
EXTERN C0AREES QUEST1-53-5

CHAIN C0AREES QUEST1-53-3A
~我是奥库卢斯的执法者，相当于你们兰坦的军力。国境外少有人知道我们存在，因为我们一直维持着和平之国的形象。我们虽力求避免冲突，可仍需要有本事的人在必要时准备保卫国家。~
EXTERN C0AREES QUEST1-53-5

CHAIN C0AREES QUEST1-53-5
~不过，奥库卢斯的职责不止训练士兵守边。久而久之，我们也在诸国度间经营起情报网，保护我国机密不被窃取泄露、消除潜在威胁，也是我们的任务之一。~
END
  ++ ~那包括因特里图斯，我猜他们是你们的敌人。~ + QUEST1-53-6
  ++ ~这是说你来这儿是盯着卡里迪乌斯教授？~ + QUEST1-53-7

CHAIN C0AREES QUEST1-53-6
~我们在暗处跟因特里图斯斗了许多年，想彻底根除他们在兰坦的影响，并止住他们在诸国度的阴谋。你无疑已看到，他们的极端行径既威胁我国，也威胁那些被他们狂信视为低劣的人。~
EXTERN C0AREES QUEST1-53-7

CHAIN C0AREES QUEST1-53-7
~我最初的指令是找到卡里迪乌斯教授——他虽被流放，对兰坦仍是受敬重、有价值的资产。扮作他的学生，我既能观察他的作为，也能把他研究的成果传回兰坦。~
= ~此外，我在此也让教授免于被怀疑跟因特里图斯有牵连——当他们在安姆现身的迹象、以及泰坦调配物的散布浮出水面时。关于那件事……我怕我必须向你道歉。~
END
  ++ ~向我道歉？为什么？~ + QUEST1-53-8
  ++ ~我们在步道遇见你，不是巧合，对吧？~ + QUEST1-53-8

CHAIN C0AREES QUEST1-53-8
~我本意是接触你，更确切说，接触你的同伴奥瑞莉亚·格利默夏恩女士。我利用她的助手、简森家那个年轻侏儒作中介，引她兴趣。~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-53-9
  ++ ~你为什么要接触奥拉？~ + QUEST1-53-10

CHAIN C0AURA2J QUEST1-53-9
~你是冲我来的？~
== C0AREES ~我说过，我欠你一个道歉。教授可以被证明跟因特里图斯无涉，可你是另一位跟兰坦有牵连的有本事奇械师，我必须确认你是否也没有嫌疑。~
EXTERN C0AREES QUEST1-53-11

CHAIN C0AREES QUEST1-53-10
~卡里迪乌斯教授可以被证明跟因特里图斯无涉，可奥瑞莉亚女士是另一位跟兰坦有牵连的有本事奇械师，我必须确认她是否也没有嫌疑。~
EXTERN C0AREES QUEST1-53-11

CHAIN C0AREES QUEST1-53-11
~一旦我确认了这点，我本打算让你不再卷入我们的事……可没想到，那男人被泰坦毒害的事件发生了，而你意外地在破案中起了关键作用。~
== C0AREES ~自那时起，只要有机会，我就一路暗随你在城里的行踪，既盼因特里图斯现身，也确保你手上的泰坦样本不会流入本地当局。~
== C0AREES ~你也许奇怪，这案子既这么严重，为何没有一份泰坦样本落到调查者手里……那是因为我们奥库卢斯一直在尽力清除它们。你若还记得跟督察那次遭遇……他们若把你当时带的泰坦样本拿走，我就得用任何必要手段从他那儿弄走。~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-53-12
  ++ ~而朝那些怪物射爆炸弩箭救奥拉的也是你，我猜？~ + QUEST1-53-13
  ++ ~那么，我们处理了泰坦，也收拾了因特里图斯不少人。现在呢？~ + QUEST1-53-14

CHAIN C0AURA2J QUEST1-53-12
~那么……用那支烟粉弩箭把我从怪物手里救出来的，是你？~
EXTERN C0AREES QUEST1-53-13

CHAIN C0AREES QUEST1-53-13
~是。~
EXTERN C0AREES QUEST1-53-14

CHAIN C0AREES QUEST1-53-14
~不管你的意图如何，你都为兰坦做了难以言喻的大忙。泰坦不再是威胁，因特里图斯今天损失数名成员、又毁了阿金泰尔之眼，必遭重创。~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J QUEST1-53-15
IF ~!InParty("C0Aura")~ EXTERN C0AREES QUEST1-53-17

CHAIN C0AURA2J QUEST1-53-15
~所以……那真是阿金泰尔之眼？我……虽认出来了，却不想信。~
END
  + ~OR(2)
  Class(Player1,BARD_ALL)
  Class(Player1,MAGE_ALL)~ + ~我听过这名字。那是耐色瑞尔的神器，设计来在一大片区域内阻断魔法。你以前见过它吗，奥拉？~ + QUEST1-53-16
  + ~!Class(Player1,BARD_ALL)
    !Class(Player1,MAGE_ALL)~ + ~你知道这是什么，奥拉？~ + QUEST1-53-16

CHAIN C0AURA2J QUEST1-53-16
~我很熟……尽管它只勾起坏回忆。几年前，我遭遇那场可怕的沉船事故、被冲上科祖库拉时……这耐色瑞尔神器就在同一条船上，随船沉了。~
== C0AREES ~考虑到当时的情况，奥库卢斯调查那事故极为困难。不过，我若没弄错，它被打捞时你参与了那次考古远征？~
== C0AURA2J ~是，那是我引以为傲的一次发掘。我想把它带回家，然后……再次看见它，我开始明白那根本不是事故。~
== C0AREES ~极有可能因特里图斯的成员混进了当时跟你在一起的兰坦人里。看来这神器就是他们的目标，或者它意外的取得促使他们偷走它……并沿途除掉任何潜在见证人。~
== C0AURA2J ~他们那位副手跟我说话时，我就起了疑……在这儿再见到这眼，只是让我确信发生了什么。~
EXTERN C0AREES QUEST1-53-17

CHAIN C0AREES QUEST1-53-17
~它在此出现，进一步证明因特里图斯过去与当下的罪行，因此我必须把它带回兰坦。而且，就算它如今这状态，也许仍有修复的可能。~
== C0AREES ~那么，我相信该说的我都向你交代了。若一切顺利，我的队长会确保你不必再担心因特里图斯。很快他们不再是威胁，全兰坦都能松口气。~
== C0AREES ~不过……虽然我队长也许视此为机密，万一因特里图斯再次威胁你……我该告诉你最后一个细节，以防它日后给你有用的线索。有足够证据相信他们跟一位被称为“监察官”的神秘恩主有关。~
== C0AURA2J ~“监察官”？那是……谁？~
== C0AREES ~我怕别的我再不能说，不是不愿，而是不能。我们对这“监察官”所知近乎为零，不知是谁、在哪儿，只知道其人能造出真正强大、为毁灭而生的造物……比如你打过的那台构造体。可若我的同僚查出更多，我们会尽力通知你。~
== C0AREES ~现在，我得回去继续追剿本区因特里图斯的残余。我们也许一阵不会再见面。我以兰坦盟友、智慧之友的身份向你致敬，祝你旅途好运。~
DO ~EscapeArea()~ EXIT

///////////////////////////

CHAIN IF WEIGHT #-1 ~Global("C0TamiaEncounter","GLOBAL",0)~ THEN C0TAMIA TAMIA-ENCOUNTER-BEGIN
~哦，该死的臭巨魔！没人跟我说这地区有巨魔！我们怎么办，奇普？~
DO ~SetGlobal("C0TamiaEncounter","GLOBAL",1)~
== C0KORSH ~巨魔头脑简单、嗜血。这回没法靠嘴皮子脱身。~
== C0TAMIA ~我知道，我知——哦，看！嘿，你！能不能帮一个可怜的小侏儒和一个半……呃，两个无辜商人一把？~
== C0KORSH ~它们来了。~
DO ~DisplayStringHead(Myself,%*applies flaming oil to weapon*%)
	ApplySpellRES("c0afire1",Myself)
	ChangeEnemyAlly(Myself,ALLY)
	ChangeEnemyAlly("C0TAMIA",ALLY)
	ActionOverride("c0tamia",ApplySpellRES("spwi201",Myself))
	ActionOverride("c0tamia",ApplySpellRES("spwi212",Myself))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("Begin","MYAREA",2)
Global("C0TamiaEncounter","GLOBAL",1)~ THEN C0TAMIA TAMIA-ENCOUNTER-AFTER
~呼！刚才有点吓人。谢谢你帮忙，陌生人。~
DO ~SetGlobal("C0TamiaEncounter","GLOBAL",2)~
EXTERN C0KORSH TAMIA-ENCOUNTER-AFTER-2

CHAIN C0KORSH TAMIA-ENCOUNTER-AFTER-2
~我们感激你。~
END
IF ~!InParty("C0Aura")~ EXTERN C0TAMIA TAMIA-ENCOUNTER-AFTER-4
IF ~InParty("C0Aura")~ EXTERN C0AURA2J TAMIA-ENCOUNTER-AFTER-3

CHAIN C0AURA2J TAMIA-ENCOUNTER-AFTER-3
~塔米娅！天哪，好久不见，我刚才都没认出你！~
== C0TAMIA ~奥拉堂姐！见到你真好。~
== C0AURA2J IF ~!Dead("C0Korsh")~ THEN ~<CHARNAME>，这是我堂妹塔米娅。她家在故乡做一门显赫的买卖。你是来安姆出差的，对吧？我，呃，可不认得你的旅伴。~
EXTERN C0KORSH TAMIA-ENCOUNTER-AFTER-5

CHAIN C0TAMIA TAMIA-ENCOUNTER-AFTER-4
~哦，容我自我介绍！塔米娅·斯平德尔韦弗，兰坦斯平德尔韦弗贸易公司。这位是我朋友奇普。~
EXTERN C0KORSH TAMIA-ENCOUNTER-AFTER-5

CHAIN C0KORSH TAMIA-ENCOUNTER-AFTER-5
~科尔什·瑟尔加尔。我这名字常让类人生物紧张。这小家伙叫我“奇普”。~
== C0TAMIA ~奇普是个有志气的商人。我不久前遇见他，那时我正往贸市去。这就是去贸市的路，对吧？~
END
++ ~是的。~ EXTERN C0TAMIA TAMIA-ENCOUNTER-AFTER-6
++ ~一个大地精商人？~ EXTERN C0KORSH TAMIA-ENCOUNTER-AFTER-7

CHAIN C0TAMIA TAMIA-ENCOUNTER-AFTER-5a
~自然。在兰坦故乡生意还过得去，可真正赚钱的机会在海外。总之，这是去贸市的路吗？~
END
++ ~是的。~ EXTERN C0TAMIA TAMIA-ENCOUNTER-AFTER-6

CHAIN C0TAMIA TAMIA-ENCOUNTER-AFTER-6
~好，看来地图到底没错。不过不知道那些巨魔都是从哪儿来的。旅行手册上可没写。~
END
IF ~!InParty("C0Aura")~ EXTERN C0TAMIA TAMIA-ENCOUNTER-AFTER-8
IF ~InParty("C0Aura")~ EXTERN C0AURA2J TAMIA-ENCOUNTER-AFTER-9

CHAIN C0KORSH TAMIA-ENCOUNTER-AFTER-7
~我习惯这种反应了。~
== C0TAMIA ~别让他的样子骗了你，朋友，奇普做起生意来跟他切巨魔肉一样老练。他入行不久，可有天分。~
END
IF ~!InParty("C0Aura")~ EXTERN C0TAMIA TAMIA-ENCOUNTER-AFTER-8
IF ~InParty("C0Aura")~ EXTERN C0AURA2J TAMIA-ENCOUNTER-AFTER-9

CHAIN C0TAMIA TAMIA-ENCOUNTER-AFTER-8
~那么，我们真得走了，对吧，奇普？我听说商队又开始往贸市去了，我们再不动身，就没地方留给我们了！~
== C0KORSH ~同意。~
== C0TAMIA ~太谢谢你帮忙了，朋友！这点小东西给你。你若到了贸市，来找我们，我们一定给你一笔像样的好价。走吧，奇普！我几乎已经尝到利润的味道了！~
DO ~GiveGoldForce(500)
ActionOverride("c0korsh",EscapeAreaObject("En"))
ActionOverride("C0TAMIA",EscapeAreaObject("En"))~ EXIT

CHAIN C0AURA2J TAMIA-ENCOUNTER-AFTER-9
~你要去贸市，堂姐？我们刚从那儿来。你是自己单干，还是代表斯平德尔韦弗公司？~
== C0TAMIA ~现在还不能说，是惊喜！再说，什么都还没定。事情若不成，我不想让你失望，你知道吧？~
== C0KORSH ~咳。~
== C0TAMIA ~对，对，我们真该走了。我听说商队又开始往贸市去了，我们再不动身，就没地方留给我们了！~
== C0AURA2J ~哦。嗯，见到你真好，塔米娅。下次见面我们该坐下来喝壶茶叙叙。~
== C0TAMIA ~一定！哦，我差点忘了，该给你点什么，谢你刚才帮忙。~
DO ~GiveGoldForce(500)~
== C0AURA2J ~你不必——哦，得了，塔米娅，我们是一家人！~
== C0TAMIA ~不，不，商人礼数。你不收我更难受。不过你若到了贸市，我倒不介意你把那点钱花在我的货上。我们一定给你和你的朋友样样好价！~
END
++ ~我们一定记得。~ EXTERN C0TAMIA TAMIA-ENCOUNTER-AFTER-10
++ ~这场家族重逢虽感人，我想我们各有去处。~ EXTERN C0TAMIA TAMIA-ENCOUNTER-AFTER-10

CHAIN C0TAMIA TAMIA-ENCOUNTER-AFTER-10
~那好，回头见，堂姐！~
== C0KORSH ~再会。~
DO ~ActionOverride("c0korsh",EscapeAreaObject("En"))
ActionOverride("C0TAMIA",EscapeAreaObject("En"))~ EXIT

CHAIN IF ~GlobalGT("C0TamiaEncounter","GLOBAL",0)
GlobalLT("C0KorshQuest","GLOBAL",1)~ THEN C0KORSH KORSH-SHOP
~<DAYNIGHTALL>好，<RACE>。可愿看看我的货？~
END
++ ~给我看看你的货。~ DO ~StartStore("c0ashop2",LastTalkedToBy)~ EXIT
++ ~现在不行。~ EXIT

CHAIN IF WEIGHT #-1 ~Global("feudplot","GLOBAL",2)
Global("C0KorshQuest","GLOBAL",0)~ THEN C0KORSH KORSH-QUEST-0
~问候你，<RACE>。你若有时间，我有件事想求你。~
END
++ ~是什么？~ DO ~SetGlobal("C0KorshQuest","GLOBAL",1)~ + KORSH-QUEST-0-1

CHAIN C0KORSH KORSH-QUEST-0-1
~我听过你在这镇上各处的英勇传闻。我相信有件任务你能完成，我会重重酬谢。~
= ~我跟朋友塔米娅一起，在镇外置了处还算舒适的商人落脚地。若只为我自己，我就满足了。可我有家人和朋友跟我离开旧部族，他们仍需要一个像样的家与安全。~
= ~我在此的人脉虽够让我免于被审视，可我还没得到贸市领袖们的信任，让他们准许我其余亲族来此。可你，也许能说服他们。~
END
++ ~我可以请高商会长给你的族人一个住处。~ + KORSH-QUEST-0-2
++ ~这跟我有什么关系？~ + KORSH-QUEST-0-2
++ ~你想让大地精住到这儿的人中间？他们凭什么该允你？~ + KORSH-QUEST-0-2

CHAIN C0KORSH KORSH-QUEST-0-2
~当然，我没那么不讲理，会不提报酬就提这种要求。毕竟我是商人，我知道有样东西也许能赢得高商会长的信任，若别人不能。~
== C0KORSH ~我这儿有一枚天命金橡实，是曾属于安姆最富商人的多块稀有金锭之一。多数已失传，如今国内任何商人或沃金信徒都渴望拥有。~
DO ~GiveItemCreate("C0AMISC7",Player1,1,0,0)~
== NALIAJ IF ~InParty("NALIA")~ THEN ~天命橡实！我小时候父亲给我看过一枚。它们曾是全安姆极受重视的一种通货，可因为失散太多，如今不再作通货用。现在多半只有收藏家在找。~
== C0KORSH ~这一枚落在我手里纯属运气。为表信任，我把我这枚给你，好让你拿去跟别的比对，因为这些年伪造的很多。你若旅途中能再找到至少四枚，我相信那会是一份商人们乐意接受的礼物。~
END
++ ~好。我会留意。~ + KORSH-QUEST-0-3
++ ~你以为几枚金橡实就能让商人接纳你？~ + KORSH-QUEST-0-3

CHAIN C0KORSH KORSH-QUEST-0-3
~还有一样东西，是我从教我贸易之道的沃金祭司那儿听来的传说。贸易女神本人在动荡之年祝福并使用过的那台天平。~
= ~不过跟橡实不同，我没有证据证明那东西不只是故事。可你若也找到了它，那会是更好的和平献礼。~
= ~我知道我求你的不是简单事，这些都不是寻常能找的东西。可我希望我的亲族安好。你若为我办成，我会以你不会失望的报酬答谢。~
EXIT

CHAIN IF WEIGHT #-1 ~GlobalGT("C0KorshQuest","GLOBAL",0)
GlobalLT("C0KorshQuest","GLOBAL",7)~ THEN C0KORSH KORSH-QUEST-1
~又问候你，<RACE>。我的请求有进展吗？~
END
+ ~Global("C0KorshQuest","GLOBAL",3)~ + ~高商会长愿意跟你见面谈判。~ + KORSH-QUEST-3
+ ~!PartyHasItem("C0AMISC6")
    NumItemsPartyGT("C0AMISC7",4)~ + ~我找到五枚橡实了。~ + KORSH-QUEST-1-1
+ ~PartyHasItem("C0AMISC6")
    NumItemsPartyGT("C0AMISC7",4)~ + ~我找到五枚橡实了，还有沃金的天平。~ + KORSH-QUEST-1-2
++ ~还没有。能看看你的货吗？~ DO ~StartStore("c0ashop2",LastTalkedToBy)~ EXIT
++ ~我还在找更多。~ EXIT

CHAIN C0KORSH KORSH-QUEST-1-1
~你找到了？果然，我看这些也是真品。可惜沃金的天平看来只是传说。~
DO ~SetGlobal("C0KorshQuest","GLOBAL",2)~ EXTERN C0KORSH KORSH-QUEST-1-3

CHAIN C0KORSH KORSH-QUEST-1-2
~你找到了？果然，我看这些也是真品。还有沃金祝福过的天平？这比我期望的还多，朋友。~
DO ~SetGlobal("C0KorshQuest","GLOBAL",2)~ EXTERN C0KORSH KORSH-QUEST-1-3

CHAIN C0KORSH KORSH-QUEST-1-3
~请把它们带去给高商会长，告诉他我的请求。我相信他见了我的献礼会通情达理得多。~
EXIT

CHAIN C0KORSH KORSH-QUEST-3
~当真？谢谢你，<RACE>。那我这就去见。你若想旁观我们的谈判，也欢迎同去。~
== C0TAMIA IF ~InMyArea("C0TAMIA")~ THEN ~祝你好运，奇普！~
== C0KORSH ~谢谢。~
DO ~SetGlobal("C0KorshQuest","GLOBAL",4)
EscapeArea()~ EXIT

EXTEND_TOP CELOGAN 80
+ ~Global("C0KorshQuest","GLOBAL",2)
   NumItemsPartyGT("C0AMISC7",4)~ + ~洛根大人，我代表镇外一位商人前来。~ EXTERN CELOGAN KORSH-QUEST-2
END

CHAIN CELOGAN KORSH-QUEST-2
~是吗？这种事通常交公会女会长处理。也许你该去联系她。~
END
++ ~这是……特例。他希望你能亲耳听他的请求。~ + KORSH-QUEST-2-1
++ ~我想这事你更适合。我说的商人是大地精科尔什·瑟尔加尔。~ + KORSH-QUEST-2-2

CHAIN CELOGAN KORSH-QUEST-2-1
~我明白了。那你也许该把情况完整讲给我听。只要你的委托人通情达理，我会~
END
++ ~那商人是个叫科尔什·瑟尔加尔的大地精。他希望镇上能让他亲族在此安家，避开荒野的危险。~ + KORSH-QUEST-2-2

CHAIN CELOGAN KORSH-QUEST-2-2
~啊……替斯平德尔韦弗商行干活的那个大地精？我想我知道你说的是谁。我虽没亲自见过他，却听过他跟雇主塔米娅女士一起做事的传闻。据各方说法，他是个诚实的商人，外镇一些精明的商人也渐渐更愿跟他交易。~
= ~我当然同情他的处境。从那种暴力的生活里脱身、成为有本事又相对成功的商人，一定极其艰难。若在我权内，我会毫不犹豫给他族人一个安全的家。~
= ~可这样的决定不是我一人能做的，镇上政界另一些有权者会……不那么热衷。有人会因他的种族而不信他，另一些人也许不喜竞争。~
= ~也许我会在下一次正式会议上提他的事，可我能做的仅此而已。告诉他，我为权力有限、无法给他所求而道歉。~
END
+ ~NumItemsPartyGT("C0AMISC7",4)
   !PartyHasItem("C0AMISC6")~ + ~科尔什明白他所求之难。作为他的和平献礼，我受托带来五枚天命金橡实，由他亲自鉴定。~ DO ~TakePartyItemNum("C0AMISC7",5) DestroyItem("C0AMISC7")~ + KORSH-QUEST-2-3
+ ~NumItemsPartyGT("C0AMISC7",4)
   PartyHasItem("C0AMISC6")~ + ~科尔什明白他所求之难。作为他的和平献礼，我受托带来五枚天命金橡实，由他亲自鉴定，以及沃金本人祝福过的天平。~ DO ~SetGlobal("C0KorshQuestGaveScales","GLOBAL",1) TakePartyItem("C0AMISC6") DestroyItem("C0AMISC6") TakePartyItemNum("C0AMISC7",5) DestroyItem("C0AMISC7")~ + KORSH-QUEST-2-4

CHAIN CELOGAN KORSH-QUEST-2-3
~五枚天命金橡实，你说？果然，这很了不起，无论收集还是鉴定其真伪与价值的本事。那也许足以说服其他商人……~
EXTERN CELOGAN KORSH-QUEST-2-5

CHAIN CELOGAN KORSH-QUEST-2-4
~神啊！动荡之年沃金本人的天平？我几乎不敢信自己的眼睛。多数人以为这天平只是传说，可它就在我眼前。无疑这不但会让商人们折服，还能赢得沃金教会的支持。~
EXTERN CELOGAN KORSH-QUEST-2-5

CHAIN CELOGAN KORSH-QUEST-2-5
~好，<CHARNAME>。我看见了说服其他有影响者同意谈判的可能。请把科尔什·瑟尔加尔带来见我，我会跟他谈条件。~
DO ~SetGlobal("C0KorshQuest","GLOBAL",3)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KorshQuest","GLOBAL",5)~ THEN CELOGAN KORSH-QUEST-4
~啊，我看你也来了，<CHARNAME>。我们还在谈判中。你若感兴趣，请坐。~
DO ~SetGlobal("C0KorshQuest","GLOBAL",6)~
== TRHMER01 ~确实，不过这场会谈不会太久。我们刚写完给……瑟尔加尔先生的契约。~
== C0KORSH ~作为我们履行契约那部分的条件，我们作为正式承认的商行分支，收益要按本地法律抽税。瑟尔加尔家那些想投资或参与贸易的人，会成为商人公会的伙伴，享有随之而来的一切权益与责任。而且……我们的亲族将定居在贸市北面目前无人占用的土地。~
== CELOGAN ~请原谅。我明白这不理想，可总会有人对有这样的怪邻居……感到不安。~
== TRHMER01 IF ~Global("C0KorshQuestGaveScales","GLOBAL",1)~ THEN ~不过请放心，在你们安顿进那片土地的过程中，我们会全力支持。沃金教会已为你们的事慷慨捐赠，建造也已开始。你若觉得还缺什么，我们可以继续谈……~
== C0KORSH ~不，这些条件可接受。我毫无怨言地接受。~
== TRHMER01 ~那就请在这下面签字。您也一样，大人。~
== CELOGAN ~当然。~
== TRHMER01 ~我得说，瑟尔加尔先生，能有一场条件完全合理、不必细读小字去找那些可被顺手重新解释的偷偷条款的诚实会谈，真令人神清气爽。你在我们这圈子里会做得很好，我确定。~
== CELOGAN ~等我们把契约送去给其他商人签字，一切就真正就绪了。我想这责任可以交给你，公会女会长？~
== TRHMER01 ~*叹气* 那不会是一场愉快的谈话。可我相信一切会成。~
== CELOGAN ~确实。那么，我就此正式祝贺并欢迎你和你的亲族成为贸市的正式市民，瑟尔加尔先生。~
== C0KORSH ~谢谢你。我还有些准备要做，不再占用你的时间。愿<DAYNIGHTALL>安好。~
DO ~EscapeAreaMove("AR2014",356,270,SSE)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KorshQuest","GLOBAL",6)~ THEN CELOGAN KORSH-QUEST-5
~那么，你觉得如何，公会女会长？~
DO ~SetGlobal("C0KorshQuest","GLOBAL",7)~
== TRHMER01 ~嗯，当然聪明、有礼、在评估契约时精明得惊人。当然，我能感觉出我们开始有进展时他仍紧张。考虑到他的出身与在这一行的有限经验，这也在意料之中。~
== TRHMER01 IF ~Global("C0KorshQuestGaveScales","GLOBAL",1)~ THEN ~而且，考虑到我们现在拥有了沃金的神器这份声望，我确定他不久就会相当受欢迎。~
== TRHMER01 ~当然，对外观感上，我们得在跟其他公会打交道时给他支持。可我想长远看，这是一笔值得的投资。~
== CELOGAN ~我当然信你的判断。运好的话，有了我们这位新同道，贸市会更兴旺。~
== CELOGAN ~谢谢你在这事上出的力，<CHARNAME>。我看今天写下纸上的一切对各方都有益。愿你有个美好的<DAYNIGHTALL>。~
DO ~ActionOverride("TRHMER01",EscapeArea())
MoveToPoint([1222.426])
SmallWait(1)
Face(SW)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KorshQuest","GLOBAL",7)~ THEN C0KORSH KORSH-QUEST-FINISH
~谢谢你的一切帮助，<CHARNAME>。多亏你的努力和镇上的慷慨，我的亲族如今有了未来。请收下这份报酬，连同我最大的感激。~
DO ~SetGlobal("C0KorshQuest","GLOBAL",8) GiveGoldForce(3000) AddExperienceParty(10000) ChangeStoreMarkup("C0ASHOP2",100,40)~
== C0KORSH IF ~Global("C0KorshQuestGaveScales","GLOBAL",1)~ THEN ~此外，为谢你额外费心找到沃金的天平并为我的需要献上它，请收下我私人的护甲作交换。我想我不再需要它了。~
DO ~GiveItem("C0ACHAN1",Player1)~
== C0KORSH ~当然，你若把那笔金币花回我店里，我会极高兴。再给你个额外诱因：从今往后你买我的货都享独家折扣，这是你应得的。~
END
+ ~Global("C0KorshQuest","GLOBAL",8)~ + ~那你现在有什么打算，科尔什？~ + KORSH-QUEST-POST-1
++ ~那我想用上它。给我看看你的货。~ DO ~StartStore("c0ashop2",LastTalkedToBy)~ EXIT
++ ~很高兴帮上忙。再见，科尔什。~ EXIT

CHAIN IF WEIGHT #-1 ~GlobalGT("C0KorshQuest","GLOBAL",7)~ THEN C0KORSH KORSH-QUEST-POST
~我热诚问候你，朋友。你来看我的货？~
END
+ ~Global("C0KorshQuest","GLOBAL",8)~ + ~那你现在有什么打算，科尔什？~ + KORSH-QUEST-POST-1
++ ~是，给我看看你有什么。~ DO ~StartStore("c0ashop2",LastTalkedToBy)~ EXIT
++ ~现在不了。再见。~ EXIT

CHAIN C0KORSH KORSH-QUEST-POST-1
~我当然会继续跟斯平德尔韦弗商行来往。既然我们已是正式市民，我的亲族就能开始进入商界、建立自己的正当生活。他们得先学很多，跟别的商人共事是个好开始。~
= ~将来，也许我会设法跟邻近的人类聚落建立友好往来，可那得等，因为我怀疑这类地方的领袖未必都像贸市诸公那么好客。~
END
+ ~Global("OgreAlliance","GLOBAL",1)~ + ~也许你可以从伊姆斯谷村开始。他们跟一群和善的食人魔有盟约，所以我确定他们愿跟你贸易。~ DO ~SetGlobal("C0KorshQuest","GLOBAL",9)~ + KORSH-QUEST-POST-2
++ ~给我看看你的货，科尔什。~ DO ~StartStore("c0ashop2",LastTalkedToBy)~ EXIT
++ ~我明白了。那边祝你好运，科尔什。下次再聊。~ EXIT

CHAIN C0KORSH KORSH-QUEST-POST-2
~当真？那会是个潜在机会……我知道我有几个亲族在乡下会比在这儿自在。再次谢你给我这宝贵消息，<CHARNAME>。我会派我弟弟托尔普克·瑟尔加尔去伊姆斯谷做联络。~
= ~他若在那儿建立贸易往来，你也许能见到他。不过先警告你，我弟弟有点……古怪，别被他的举动吓到。他无害。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KorshQuest","GLOBAL",9)~ THEN C0KORSHB KORSH-QUEST-BROTHER-1
~你好你好！你<CHARNAME>还是不是？是，你<CHARNAME>，是，是？~
DO ~SetGlobal("C0KorshQuest","GLOBAL",10)~
END
++ ~呃……对，我是<CHARNAME>。~ + KORSH-QUEST-BROTHER-2
++ ~我猜你是……科尔什的弟弟？~ + KORSH-QUEST-BROTHER-2

CHAIN C0KORSHB KORSH-QUEST-BROTHER-2
~是是是。你<CHARNAME>，瑟尔加尔家的朋友。我“崔普”。托尔普克·瑟尔加尔。还有，我绊（trip）。旅途中绊很多次。崔普到村子，很受欢迎。还跟来村子的食人魔交朋友。~
= ~现在崔普卖，也买。跟哥哥学。也从哥哥拿东西，所以你跟我买、跟科尔什买，一样交易。你想看“货”？不，货！对。崔普远行时从哥哥拿新货。你可以看。~
END
++ ~好……只是别再讲你那些烂笑话了。~ DO ~StartStore("c0ashop2",LastTalkedToBy)~ EXIT
++ ~也许下次……我，呃，有事要去。~ EXIT
++ ~我现在要离你远、很远。~ EXIT

CHAIN IF WEIGHT #-1 ~GlobalGT("C0KorshQuest","GLOBAL",9)~ THEN C0KORSHB KORSH-QUEST-BROTHER-3
~你好你好，<CHARNAME>。你跟崔普买，还是卖给崔普？崔普两样都会。~
END
++ ~村子待你怎么样？~ + KORSH-QUEST-BROTHER-4
++ ~给我看看你的货。~ DO ~StartStore("c0ashop2",LastTalkedToBy)~ EXIT
++ ~我现在两样都不需要。~ EXIT

CHAIN C0KORSHB KORSH-QUEST-BROTHER-4
~很好，是是。这儿人对崔普好。交易很多东西，教崔普怎么正经做事。崔普喜欢这儿。~
= ~你跟崔普买还是卖？~
END
++ ~给我看看你的货。~ DO ~StartStore("c0ashop2",LastTalkedToBy)~ EXIT
++ ~现在不行。~ EXIT

CHAIN IF WEIGHT #-1 ~InParty("C0Aura")
Range("C0Aura",15)
!Dead("C0Aura")
GlobalGT("C0TamiaEncounter","GLOBAL",0)~ THEN C0TAMIA TAMIA-SHOP1
~哟，最亲爱的堂姐和朋友们！可要看看亮闪闪、晃眼……或者带魔法的东西？~
END
++ ~给我看看你的货。~ DO ~StartStore("c0ashop1",LastTalkedToBy)~ EXIT
++ ~现在不行。~ EXIT

CHAIN IF WEIGHT #-1 ~OR(3)
!InParty("C0Aura")
!Range("C0Aura",15)
Dead("C0Aura")
GlobalGT("C0TamiaEncounter","GLOBAL",0)~ THEN C0TAMIA TAMIA-SHOP2
~哟，朋友们！可要看看亮闪闪、晃眼……或者带魔法的东西？~
END
++ ~给我看看你的货。~ DO ~StartStore("c0ashop1",LastTalkedToBy)~ EXIT
++ ~现在不行。~ EXIT

///////////////////////////
// Portal Quest
///////////////////////////

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2","GLOBAL",1)~ THEN C0AURA2J QUEST2-1
~<CHARNAME>，我能看看那颗宝石吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2","GLOBAL",2)~
END
  ++ ~当然，给你。~ + QUEST2-1-1
  ++ ~好，可快点。~ + QUEST2-1-1

CHAIN C0AURA2J QUEST2-1-1
~这是……我若没弄错，这是元素精华。那是来自各个元素位面、充满元素能量的魔法宝石般的东西。主物质界通常找不到。~
== C0AURA2J IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~它们像……嗯，还记得我们在剑湾旅行时找到的那颗冰晶吗？跟那类似，可强上许多倍。~
END
  + ~OR(2)
  	 Class(Player1,MAGE_ALL)
	 CheckStatGT(Player1,50,LORE)~ + ~我听过这东西。它们通常用作动力源，对吧？~ + QUEST2-1-2A
  ++ ~那它们能用来做什么？~ + QUEST2-1-2
  ++ ~说重点。~ + QUEST2-1-2

CHAIN C0AURA2J QUEST2-1-2
~嗯，简单说……多数时候能用来附魔。用它造的魔法物品会带元素之力。可这一颗……~
EXTERN C0AURA2J QUEST2-1-3

CHAIN C0AURA2J QUEST2-1-2A
~对！一点没错。小些的能用来造带元素之力的魔法物品。可这一颗……~
EXTERN C0AURA2J QUEST2-1-3

CHAIN C0AURA2J QUEST2-1-3
~跟我以前见过的相比，它有点不稳定。啊——别担心，我不是说它会炸之类。可它能量太满了点，没法用于常规制作。~
= ~不过我知道能拿它做一件事……配上一套合适的容纳装置，能作导管，打开通往其诞生位面小口袋的传送门。这类晶体多没那能量，可这些非常特殊。~
END
  ++ ~可那有什么用？~ + QUEST2-1-4
  ++ ~而且我猜那些位面会非常危险？~ + QUEST2-1-5

CHAIN C0AURA2J QUEST2-1-4
~嗯……探索的乐趣，我想。当然会极危险。可多刺激！~
EXTERN C0AURA2J QUEST2-1-6

CHAIN C0AURA2J QUEST2-1-5
~哦，是。当然。可也可能奇妙无比！~
EXTERN C0AURA2J QUEST2-1-6

CHAIN C0AURA2J QUEST2-1-6
~我知道，我知道……没必要。可你想想！那些景致、那些宝藏、那些隐藏的知识！我们只需要一道传送门作这些能量晶体的媒介……~
END
  ++ ~你工坊里有一道传送门，对吧？~ + QUEST2-1-7

CHAIN C0AURA2J QUEST2-1-7
~哦……对！我一直想建条往返我故乡安科里尔的路……可从没弄成。我弄不到一颗能量够跨越那距离的合规格转移晶体。~
= ~有可能……也许。可没些调整……我想那些能量大概会在打开位面传送门之前先把结构毁掉。我需要些额外零件……而且必须是特定材料，否则不够强。~
= ~嗯，也许你若想尝试探索位面，这事可以记着。谁知道我们会找到什么？~
END
  ++ ~可能挺有意思。我会留意不寻常的零件。~ + QUEST2-1-8
  ++ ~那似乎太冒险。别走得太远。~ + QUEST2-1-9

CHAIN C0AURA2J QUEST2-1-8
~好！若我们找够合适零件，我告诉你，然后带回工坊，我看看能拼出什么。~
EXIT

CHAIN C0AURA2J QUEST2-1-9
~你也许说得对。嗯，这只是个疯主意，可若我们找够零件，我告诉你，我们可以想着把工坊那道传送门弄完。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2","GLOBAL",3)~ THEN C0AURA2J QUEST2-3
~嗯……嗯……哦，这看着正合适！<CHARNAME>，我想这些零件行！~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2","GLOBAL",4)~
= ~我们有空就回工坊，我来布置。这会有意思！~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2","GLOBAL",5)~ THEN C0AURA2J QUEST2-5
~好，看看……我若重新调一下，让它装在那儿……不，等等，那会弄坏。坏主意。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2","GLOBAL",6)~
= ~不……不……那不行，太不稳定，中途坏掉我们也许会困在limbo——呃，困在虚空里……好，让我再想一遍……~
= ~对，那该装……那儿……嗯嗯嗯！~
= ~嗯嗯……！哦，来嘛，就差一点……！~
END
  ++ ~看来你挺吃力。~ + QUEST2-5-1
  ++ ~要帮忙吗？~ + QUEST2-5-1
  ++ ~快点，行吗？~ + QUEST2-5-1

CHAIN C0AURA2J QUEST2-5-1
~抱歉，我只是……没法……把这两块固定到一起……呃，我放弃。看来我得练点肌肉才干得了这种活。~
= ~<CHARNAME>，你能……帮我一把吗？按正确顺序把零件放进发生器就行。我给零件标了号，你知道哪个先。哦，万一发生器里有东西，我放到右边架子上。~
DO ~ActionOverride(Player1,TakePartyItem("C0AMISC1")
ActionOverride(Player1,TakePartyItem("C0AMISC2")
ActionOverride(Player1,TakePartyItem("C0AMISC3")
ActionOverride(Player1,TakePartyItem("C0AMISC4")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2","GLOBAL",7)~ THEN C0AURA2J QUEST2-7
~哦，好了。看来成了……现在让我打开右边那个动力隔间。动力晶体就装那儿。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2","GLOBAL",8)
PlaySound("AMB_D21")
Unlock("Container007")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2FireFirstTalk","GLOBAL",1)~ THEN C0AURA2J QUEST2-FIRE
~火元素位面……典籍说它的地貌最接近主物质界，只是极热……不做火焰防护就进去会致命，或者环境本身会把我们烧死。我能做药水让我们至少撑住几个钟头，可最好还有些合适的法术或魔法物品帮忙。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2FireFirstTalk","GLOBAL",2)~
END
IF ~Global("C0AuraBG2Quest2FirstTime","GLOBAL",0)~ EXTERN C0AURA2J QUEST2-FIRSTTIME
IF ~!Global("C0AuraBG2Quest2FirstTime","GLOBAL",0)~ EXIT

CHAIN C0AURA2J QUEST2-FIRSTTIME
~既然传送门只在我们这端存在……我做了个装置，我们想回去或出事时能把我们拉回本位面。别担心被困在对面。~
DO ~SetGlobal("C0AuraBG2Quest2FirstTime","GLOBAL",1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2FireBattle","GLOBAL",1)~ THEN C0AURA2J QUEST2-FIRE-BATTLE-1
~哦……哦……我想连“极热”都说轻了。这几乎跟太阳一样热……还有那烟……*咳* *咳*~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2FireBattle","GLOBAL",2)~
== C0AURA2J ~而且，呃……看来我们有伴了。~
== C0AFIR01 ~可悲的凡人……竟敢闯全能者克辛德陛下、维斯利克斯大人的宫殿……你们烧焦的尸体将献给我们主人……~
== C0AFIR01 ~自豪吧，知道灰烬之矛萨阿尔夫拉尼将军、陛下忠仆，将是你们的终结者……~
DO ~Enemy()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2FireBattle","GLOBAL",3)~ THEN C0AURA2J QUEST2-FIRE-BATTLE-3
~呼……真够呛。我以为在这烤人的热里作战我们可能完了……~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2FireBattle","GLOBAL",4)~
= ~看来我们出现的位置也糟，四周全是岩浆……我这就把我们传送回去，然后……~
= ~*咔*~
= ~……嗯？~
= ~*咔* *咔* *咔咔咔*……哦不，不管用……~
END
  ++ ~什么？！~ + QUEST2-FIRE-BATTLE-3-1
  ++ ~这主意糟透了……~ + QUEST2-FIRE-BATTLE-3-1
  ++ ~是战斗中弄坏了吗？~ + QUEST2-FIRE-BATTLE-3-1

CHAIN C0AURA2J QUEST2-FIRE-BATTLE-3-1
~不……不，我确认过它能用！等等……一定是温度……把机构弄坏了！我怎么没想到这个？~
= ~我……我能修好，我保证，<CHARNAME>……只是得一会儿……~
END
  ++ ~我们也许没一会儿可浪费。看那边！~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C0ACUT20")~ EXIT
  ++ ~快点！更多敌人来了！~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C0ACUT20")~ EXIT


CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2FireBattle","GLOBAL",4)~ THEN C0AUKARI QUEST2-FIRE-BATTLE-4
~哼。看来这装置的精度没调到正确水准。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2FireBattle","GLOBAL",5)~
== C0AUKARI ~你是谁？显然不是火位面的居民。那么，另一位位面旅者？我该把你当友还是敌？~
END
  ++ ~我也能问你同样的话。~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-1
  ++ ~只要你们不跟我为敌，我就不跟你们为敌。~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-1
  ++ ~你要打，我就陪你打。~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-2

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-1
~行。~
EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-3

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-2
~哼。大胆，可我劝你收敛火气。跟我这样本事的人起冲突，你也许会后悔，尤其在这儿，我的魔法更强。~
EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-3

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-3
~自我介绍的话，你可以称我卡里希，首席焰法兼塑焰学院院长。那是我为训练有志掌握火元素能量的奥术师而创的学府。~
END
  ++ ~我是<CHARNAME>。~ + QUEST2-FIRE-BATTLE-4-4
  ++ ~我觉得我以前在哪儿听过你……~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-5

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-4
~<CHARNAME>，是吗？想起来，我确实听过你的传闻……据我所听，你是个相当能冒险、能惹麻烦的人……像我认识的某人。~
EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-5

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-5
~你也许以前听过我的名字？我冒险的日子已过去许多年，可爱也许在银月城之外仍有名声？没有？没关系，等我的学徒开始显出本事，还有的是时间。~
END
IF ~Dead("C0Aura")~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-DEAD
IF ~!Dead("C0Aura")~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-ALIVE

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-DEAD
~话虽如此，也许我们在这儿闲聊是浪费时间，我看你一位同伴似乎倒在位面居民手里了？你运气好，我备着东西。面对我学生的无能，我常需复活法杖。~
DO ~SetGlobal("C0AuraKarihiRevived","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
Wait(1)
ReallyForceSpellRES("SPPR712","C0Aura")
Wait(1)
ActionOverride("C0Aura",JoinParty())
Wait(1)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2FireBattle","GLOBAL",5)
Global("C0AuraKarihiRevived","GLOBAL",1)~ THEN C0AUKARI QUEST2-FIRE-BATTLE-4-REVIVED
~好了。~ [C0BLANK]
DO ~SetGlobal("C0AuraKarihiRevived","GLOBAL",-1)~
== C0AURA2J ~哎哟……只要我能避开，这种痛我不想再尝。哦，你在这儿，<CHARNAME>。而且，呃……这是谁？~
== C0AUKARI ~你的恩人，大法师卡里希。感激我的慷慨吧？这花费我都不收你的。~
EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-ALIVE

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-ALIVE
~你这侏儒同伴有点眼熟……可我说不上来。可第一次见面，我却觉得莫名安心……~
== C0AURA2J ~嗯……见到友善的面孔真好。我是奥拉，兰坦格利默夏恩一族。~
== C0AUKARI ~“格利默夏恩”？兰坦一族……？啊……我现在明白了。多么意外的巧合。~
== C0AURA2J ~嗯？~
== C0AUKARI ~我若没弄错，你祖母是密涅瓦·格利默夏恩？你长得跟她很像。~
== C0AURA2J ~是……对！你怎么知道？~
== C0AUKARI ~我*怎么*知道？那说来话长。简单说，我年轻时有幸……跟她同行过。蓝头发、野、不谨慎、说话又快又多。可我珍视她的陪伴……虽说这话不像我会说的。~
== C0AURA2J ~你是……在北地作战的英雄之一，对吧？~
== C0AUKARI ~我有那份荣幸，是。那是很久以前……可许多细节我记得像昨天一样。把魔鬼贝尔海费特逐出本位面，也许是我至今最大的成就。~
END
  ++ ~你也跟贝尔海费特打过？~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-6
  ++ ~看来我们有些相似的经历。~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-6

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-6
~听来你似乎也跟那魔鬼苦战过。我猜是龙矛堡那件事？就连银月城也听过传闻。看来我得谢你把那任务彻底了结。~
== C0AURA2J ~这真是……哇。我从没想到会遇见跟我祖母并肩作战的人。我一直想多知道她的冒险！~
== C0AUKARI ~听你这话，我猜她这百年来还没回家？~
== C0AURA2J ~没有……好久没人见过或听过她了。她唯一的痕迹就是那本书。~
== C0AUKARI ~还这样？那傻东西……我跟她说过许多次该回她的根，哪怕只回一阵……无疑我的话左耳进右耳出。~
== C0AURA2J ~啊哈哈……听来你很了解她……我很高兴。听来她交过些有意思的朋友。~
== C0AUKARI ~哼。这说得轻了。不过若这能让你安慰，我确定她仍在某处……无疑在为她下一篇要写进什么荒唐读物的故事而奔走。~
== C0AUKARI ~*咳* 这番追忆虽愉快，也虽意外——考虑到我们现处何地——我想还是说更要紧的。你为何来此？少有人会抱着随便的心思进火位面。~
END
  ++ ~我以为这儿有什么有价值的东西。~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-7
  ++ ~我们用一颗调谐此位面的晶体来的，以为它能引向什么重要东西。~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-8
  ++ ~这都是奥拉的主意。她好奇。~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-9

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-7
~啊。追求力量，这我能理解。~
EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-10

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-8
~一颗晶体？我明白了……看来以前另有人到过此处，还活了下来。那样做的人一定是位有成的法师，若还在世，我倒想见见。~
EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-10

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-9
~是吗？那至少在这方面，她像她祖母。~
EXTERN C0AUKARI QUEST2-FIRE-BATTLE-4-10

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-4-10
~我本人来此，是为研究如何把本位面的力量收进有力量的物品。我和学徒们造了一道传送门，调谐到强大的存在……无疑已有一个就在附近、或正赶来，既然它把我引到了这里。~
= ~你若来求一场挑战，不久就会来一个。若不来，我猜你有回本位面的办法，那你最好快些回去……~
= ~……或者不回。看来我们已引起了占据这片地盘者的注意。~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C0ACUT21")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0KarihiRetreat","GLOBAL",1)~ THEN C0AUKARI QUEST2-FIRE-BATTLE-4
~呃……想不到我仍会算错这么多……我必须撤退！~ [C0BLANK]
DO ~CreateVisualEffectObject("ICFIRSDI","Myself")
Deactivate(Myself)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2FireBattle","GLOBAL",5)~ THEN C0AFIR05 QUEST2-FIRE-BATTLE-5
~凡人……软弱、血肉的造物……你们玷污我的宫殿、杀我仆从……今天，你们将尝到维斯利克斯亲手给的、前所未有的痛，伊米克斯真正的子嗣……~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2FireBattle","GLOBAL",6)~
== C0AUKARI ~你在这儿，造物。我终于找到了要找的东西。现在，我劝你臣服，让你我都省事。~
== C0AFIR05 ~卑微的东西……你自以为配降服我？你对火焰之力的掌握，跟我所能做的比什么都不是……你的无礼将让你付十倍的苦！~
EXTERN C0AURA2J QUEST2-FIRE-BATTLE-5-1

CHAIN C0AURA2J QUEST2-FIRE-BATTLE-5-1
~<CHARNAME>，我没法同时修锚定装置又帮你作战！你得替我顶着……我会尽快修好，尽力而为！~
END
  ++ ~别担心。我会打败这造物。~ + QUEST2-FIRE-BATTLE-5-2
  ++ ~赶紧干活吧！~ + QUEST2-FIRE-BATTLE-5-2

CHAIN C0AURA2J QUEST2-FIRE-BATTLE-5-2
~好！交给我！~
= ~等等……这是什么……？~
DO ~StartCutSceneMode()
Wait(1)
ActionOverride("C0AUKARI",ForceSpellRES("C0AQEF11","C0Aura"))
ActionOverride("C0AUKARI",SmallWait(5))
ActionOverride("C0AUKARI",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2FireBattle","GLOBAL",6)~ THEN C0AUKARI QUEST2-FIRE-BATTLE-6
~好了。在这屏障里，你不会受任何干扰。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2FireBattle","GLOBAL",7)~
== C0AURA2J ~哇——哇！这其实……挺暖挺舒服的。别担心，<CHARNAME>！我没事……我想。~
== C0AUKARI ~若小家伙要忙，就让我替她助你。我的魔法会是完全合格的替代。~
END
  ++ ~谢谢你的帮助。~ + QUEST2-FIRE-BATTLE-6-1
  ++ ~我不需要你帮。~ + QUEST2-FIRE-BATTLE-6-2

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-6-1
~不必谢。把这当作……偿还一笔旧日的友谊之债。~
EXTERN C0AUKARI QUEST2-FIRE-BATTLE-6-3

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-6-2
~这不是提议，我也不需要你同意。~
EXTERN C0AUKARI QUEST2-FIRE-BATTLE-6-3

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-6-3
~抛开情绪不说，我很想借这机会，拿本位面最强的存在试一试我的本事。这会是个好机会。~
== C0AUKARI ~随你调遣。协同作战我并不陌生。这样跟人并肩的感觉几乎令人怀旧。~
DO ~ChangeEnemyAlly("C0AUKARI",CONTROLLED)
ReallyForceSpellRES("C0AQEF12",Myself)~
== C0AFIR05 ~蠢货……你们全都BURN——全都烧起来！~
DO ~ReallyForceSpellRES("C0AQEF12",Myself)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2FireBattle","GLOBAL",8)~ THEN C0AURA2J QUEST2-FIRE-BATTLE-8
~好了……好了！我想我修好了……哦，打完了……~ [C0BLANK]
DO ~ApplySpellRES("c0aqef16","c0aura")
SetGlobal("C0AuraBG2Quest2FireBattle","GLOBAL",9)~
== C0AUKARI ~时机可真凑巧，你竟能整场战斗都避开。~
== C0AUKARI ~我得到了我要的东西。一位长老火元素的精华。多谢你相助。~
== C0AUKARI ~嗯，这个存在格外强大，它的灵精华极不稳定……看来它为了容纳能量，分成了两半。~
== C0AUKARI ~作为礼物，我可以用我的技艺，拿其中一半元素精华造一件魔法物品。你可以选——一件让你裹在纯焰中的斗篷，或一顶能以更大效力驾驭火之精华的黑铁冠冕。~
END
  ++ ~我要斗篷。~ DO ~GiveItemCreate("C0ACLCK1",Player1,1,0,0)~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-8-1
  ++ ~我要冠冕。~ DO ~GiveItemCreate("C0ACIRC2",Player1,1,0,0)~ EXTERN C0AUKARI QUEST2-FIRE-BATTLE-8-1

CHAIN C0AUKARI QUEST2-FIRE-BATTLE-8-1
~那就这样。我确定它会好好为你效力。~
== C0AUKARI ~至于你，小家伙……奥拉，是吗？我也有东西给你。你那位……任性的祖母留给我保管的一件物事。当然，这几十年她显然早把它忘光了。最恰当的做法就是转交给你。~
DO ~GiveItemCreate("C0ACANN1","C0AURA",1,0,0)~
== C0AURA2J ~这是……一门自动炮。旧型号，可还能用！而且……你说她几十年前就留在你这儿……可它还保养得这么好。难道你……~
== C0AUKARI ~哼。别多想。~
== C0AUKARI ~还有……哦，这个你也拿去吧。我自己做的东西。也许你信任的某位奥术师能用上……不然，我确定对你来说它也该是本有趣的读物，你若像她的话。~
DO ~GiveItemCreate("C0ABOOK3","C0AURA",1,0,0)~
== C0AURA2J ~谢谢……哎哟，好烫！~
== C0AUKARI ~嗯，你还指望什么？~
== C0AUKARI ~那么，我该回家了。毕竟我不能迟了学生们的课。也许有一天，你会愿意来银月城我住处坐坐？你会极受欢迎。~
== C0AUKARI ~只是给你想想。再会。~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUT22")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2FireBattle","GLOBAL",9)~ THEN C0AURA2J QUEST2-FIRE-BATTLE-9
~她看着挺好。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2FireBattle","GLOBAL",10)
SetGlobal("C0AuraBG2Quest2Done","GLOBAL",1)~
END
  ++ ~在那一身傲慢和刻薄底下，是的。~ + QUEST2-FIRE-BATTLE-9-1
  ++ ~既然你这么说。~ + QUEST2-FIRE-BATTLE-9-1
  ++ ~我们现在能离开这儿吗？~ + QUEST2-FIRE-BATTLE-9-2

CHAIN C0AURA2J QUEST2-FIRE-BATTLE-9-1
~我从没想到会在故乡之外遇见认识我祖母的人。我其实有点安心……虽从没见过她，听来我们挺像……这也让我有点希望她仍在某处。~
EXTERN C0AURA2J QUEST2-FIRE-BATTLE-9-2

CHAIN C0AURA2J QUEST2-FIRE-BATTLE-9-2
~我重新配置了锚定装置。你给我个信号，我就开动，带我们离开。我先给你点时间看看四周，捡些我们可能漏掉的东西。~
END
  ++ ~好。~ EXIT
  ++ ~不必。我们这就走。~ + C0AuraBG2Quest2Done-1

CHAIN C0AURA2J C0AuraBG2Quest2Done-1
~好……*咔*~
DO ~SetGlobal("C0AuraBG2Quest2Done","GLOBAL",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ATELE1")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2IceFirstTalk","GLOBAL",1)~ THEN C0AURA2J QUEST2-ICE
~霜落之地……是气与水位面之间的副元素位面。据我读过的，整片地貌都是坚冰，环境只有刺骨寒风与暴雪。光穿暖衣在里面活不了。那样的极端温度下，我们可能连动都难、呼吸都难。最好备上一切能备的防寒手段。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2IceFirstTalk","GLOBAL",2)~
END
IF ~Global("C0AuraBG2Quest2FirstTime","GLOBAL",0)~ EXTERN C0AURA2J QUEST2-FIRSTTIME
IF ~!Global("C0AuraBG2Quest2FirstTime","GLOBAL",0)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2IceEncounter","GLOBAL",1)~ THEN C0AURA2J QUEST2-ICE-ENCOUNTER-1
~哦……哆嗦……这比我想的还糟……~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2IceEncounter","GLOBAL",2) CreateCreatureEffect("C0AYUKI","C0FREEZEE",[466.369],S)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("INTRO","LOCALS",0)
Global("C0AuraBG2Quest2IceEncounter","GLOBAL",2)~ THEN C0AYUKI QUEST2-ICE-ENCOUNTER-2
~陌生人……你……你们不该在这儿。~ [C0BLANK]
DO ~SetGlobal("INTRO","LOCALS",1)
SetGlobal("C0AuraBG2Quest2IceEncounter","GLOBAL",3)~
== C0AURA2J ~一个雪女……~
END
  + ~CheckStatGT(Player1,30,LORE)~ + ~东方的“雪女”，我记得。她们是寒冷中的妖精灵。~ EXTERN C0AURA2J QUEST2-ICE-ENCOUNTER-2-1
  + ~!CheckStatGT(Player1,30,LORE)~ + ~她是什么，奥拉？~ EXTERN C0AURA2J QUEST2-ICE-ENCOUNTER-2-2

CHAIN C0AURA2J QUEST2-ICE-ENCOUNTER-2-1
~对，没错……她们也住在托瑞尔，在科祖库拉的雪山里……~
EXTERN C0AURA2J QUEST2-ICE-ENCOUNTER-2-3

CHAIN C0AURA2J QUEST2-ICE-ENCOUNTER-2-2
~“雪女”……“yuki-onna”就是这个意思。你可以把她当雪之灵。她们也住在托瑞尔，在科祖库拉的雪山里……~
EXTERN C0AURA2J QUEST2-ICE-ENCOUNTER-2-3

CHAIN C0AURA2J QUEST2-ICE-ENCOUNTER-2-3
~我以前见过，至少我以为见过……在山里探索时远远地。有时我不确定是真看见了，还是只是雪在动。~
= ~人类常怕她们，可她们其实只是害羞、避世。我们该试着跟她说话，<CHARNAME>，可别吓到她。~
END
  ++ ~好，那就。~ EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2-4
  ++ ~我想我试试。~ EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2-4

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2-4
~你……不该在这儿……走，现在……这地方对你不安全……~
END
  ++ ~我们无意伤害你。~ EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2-5
  ++ ~你什么意思？~ EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2-6
  ++ ~这是什么地方？~ EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2-6

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2-5
~我也无意伤你……若情况不同，我会欢迎你来这地方，照它本该有的样子……~
EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2-6

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2-6
~这地方曾是座美丽的花园……一座冰造的花园，本位面的生灵可在此求安宁。我是它的看守，跟朋友们一起，共享这曾美丽的乐园。~
== C0AYUKI ~我们的本位面……大部分如所见般严酷无情，可仍有人想求慰藉、友谊与安宁。我在此给他们一个家。曾经，一切完美。~
== C0AYUKI ~可后来……冰鬼婆伊莎莉尔发现了我们，发现了这地方……她极其丑恶、可恨、邪恶。她正是我们所共享之美的反面，想把它毁掉。~
== C0AYUKI ~我的朋友们跟她作战，却一个个被冻住，尸身变成冰像，成了她毁灭的可怕战利品与纪念碑……曾是乐园的地方变成可怕的死亡庭园，谁对上她的目光，就会成为又一尊永远冻结的像。~
== C0AURA2J ~太可怕了……！在这样无情的地方造一座美的花园，却让一个邪恶存在全毁掉。~
== C0AYUKI ~只有我逃过她的怒火，带着我们花园最后一朵花，希望有一天一切能重新长起……可我太弱了。伊莎莉尔很快会找到我。她来时……你绝不能在这儿，否则你会像别人一样落得同样下场……~
END
  ++ ~我不怕这鬼婆。也许我能帮你做些什么。~ + QUEST2-ICE-ENCOUNTER-2-7
  ++ ~你的故事很悲伤。你若想让我帮你打败这鬼婆，开口便是。~ + QUEST2-ICE-ENCOUNTER-2-7
  ++ ~也许我愿意帮……若你能给点什么作回报。~ + QUEST2-ICE-ENCOUNTER-2-7
  ++ ~唉，真糟。不过我倒不想在这儿亲眼见证。奥拉，带我们离开。~ EXTERN C0AURA2J QUEST2-ICE-ENCOUNTER-2-8

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2-7
~不，我不能向你求这个，善心人……我也没什么可给。一切都被鬼婆夺了……我只盼再不见另一个无辜者成为她恶意与憎恨的牺牲。~
EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2-9

CHAIN C0AURA2J QUEST2-ICE-ENCOUNTER-2-8
~可，<CHARNAME>，你确定我们什么都做不了？看她……她看着那么悲伤、凄苦。她独自在这儿没有指望。~
EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2-9

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2-9
~鬼婆的魔法攻破我最后几道守护结界只剩一点时间……这儿还剩下的一点美，我欢迎你看看、记住……在它全失去之前……~
EXIT

CHAIN IF WEIGHT #-1 ~IsGabber(Player1)
Global("INTRO","LOCALS",1)
Global("C0AuraBG2Quest2IceEncounter","GLOBAL",3)~ THEN C0AYUKI QUEST2-ICE-ENCOUNTER-2A
~求你，趁还能走就走吧。我很高兴有人来见这儿最后的美丽痕迹……可这不值得你的命。~ [C0BLANK]
END
  ++ ~我没法无视需要帮助的人。我想帮你。~ + QUEST2-ICE-ENCOUNTER-2A-1
  + ~InParty("C0Aura")~ + ~对。我们离开这儿，奥拉。~ EXTERN C0AURA2J QUEST2-ICE-ENCOUNTER-2A-0

CHAIN C0AURA2J QUEST2-ICE-ENCOUNTER-2A-0
~……好。我心里不好受，可作主的是你……我也没法强迫你留在这危险的地方。~
= ~重新配置锚定装置……我们很快就走。对不起，雪女……*咔*~
DO ~SetGlobal("C0AuraBG2Quest2Done","GLOBAL",0)
ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ATELE1")~ EXIT

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2A-1
~可……那会危险。鬼婆很强大。连我最强的朋友都挡不住她的寒魔法……你真会为我这样的生灵去面对她？~
END
  ++ ~别担心。我确定我应付得了。~ + QUEST2-ICE-ENCOUNTER-2A-2
  ++ ~我见过各种怪物。鬼婆听着没那么吓人。~ + QUEST2-ICE-ENCOUNTER-2A-2
  + ~InParty("C0Aura")~ + ~再想想，也许你说得对。我该离开这儿。~ EXTERN C0AURA2J QUEST2-ICE-ENCOUNTER-2A-0

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2A-2
~谢谢你……谢谢你！你若成功……我的花园也许还有希望……我永不会忘记你的勇敢与善良，温暖的人。~
= ~你准备好时，我可以撤去守护结界，让鬼婆来。不管怎样她终究会来……可这样，你就能有准备。~
= ~先警告你……冰鬼婆号令寒风本身，无处可逃。你得以坚毅熬过严寒。准备好了就告诉我。~
DO ~SetGlobal("INTRO","LOCALS",2)~ EXIT

CHAIN IF WEIGHT #-1 ~IsGabber(Player1)
Global("INTRO","LOCALS",2)
Global("C0AuraBG2Quest2IceEncounter","GLOBAL",3)~ THEN C0AYUKI QUEST2-ICE-ENCOUNTER-2B
~你准备好了吗，善心人？~ [C0BLANK]
END
  ++ ~好。撤去你的结界，让鬼婆来。~ + QUEST2-ICE-ENCOUNTER-2B-1
  + ~OR(2) !Global("C0AuraBG2Quest2IceQ1","GLOBAL",1) !Global("C0AuraBG2Quest2IceQ2","GLOBAL",1)~ + ~若还有时间，我想问几个问题。关于你，和这座花园。~ + QUEST2-ICE-ENCOUNTER-2B-2
  ++ ~我还没准备好。再等一会儿。~ EXIT

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-1
~好。这一战，我会在你身边并肩作战……为我旧友与新友。若鬼婆夺了你，我就随你一同落入无尽寒冷。~
= ~现在，准备。她来了……~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
CreateVisualEffect("SPSPEV",[322.468])
Wait(2)
CreateCreature("C0AICE01",[322.468],SW)
Wait(1)
ActionOverride("C0AICE01",FaceObject("C0AYUKI"))
Wait(1)
ActionOverride("C0AICE01",FaceObject(Player1))
Wait(1)
ActionOverride("C0AICE01",StartDialogNoSet(Player1))~ EXIT

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-2
~还有些时间……你想知道什么？~
END
  + ~Global("C0AuraBG2Quest2IceQ1","GLOBAL",0)~ + ~能给我讲讲雪女吗？~ DO ~SetGlobal("C0AuraBG2Quest2IceQ1","GLOBAL",1)~ + QUEST2-ICE-ENCOUNTER-2B-3
  + ~Global("C0AuraBG2Quest2IceQ2","GLOBAL",0)~ + ~鬼婆来之前，这座花园是什么样子？~ DO ~SetGlobal("C0AuraBG2Quest2IceQ2","GLOBAL",1)~ + QUEST2-ICE-ENCOUNTER-2B-4
  + ~Global("C0AuraBG2Quest2IceQ1","GLOBAL",1) Global("C0AuraBG2Quest2IceQ2","GLOBAL",1)~ + ~我还没问。你叫什么名字？~ + QUEST2-ICE-ENCOUNTER-2B-5
  ++ ~算了。撤去结界，让鬼婆来。~ + QUEST2-ICE-ENCOUNTER-2B-1
  ++ ~其实，我得为鬼婆做准备。稍等一下。~ EXIT

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-3
~我们是生于本位面的灵。许多像你这样的人遇过我们族中许多邪恶的例子……那些闯进你们国度、为残忍任性去诱捕折磨凡人的。~
= ~选择留在家园的比较温和，只想创造美、护住生命……相比残酷的同族，我们为数不多。可我们许多曾在此一起照料花园。直到伊莎莉尔夺走了我所有姐妹……~
END
  + ~Global("C0AuraBG2Quest2IceQ2","GLOBAL",0)~ + ~鬼婆来之前，这座花园是什么样子？~ DO ~SetGlobal("C0AuraBG2Quest2IceQ2","GLOBAL",1)~ + QUEST2-ICE-ENCOUNTER-2B-4
  + ~Global("C0AuraBG2Quest2IceQ1","GLOBAL",1) Global("C0AuraBG2Quest2IceQ2","GLOBAL",1)~ + ~我还没问。你叫什么名字？~ + QUEST2-ICE-ENCOUNTER-2B-5
  ++ ~算了。撤去结界，让鬼婆来。~ + QUEST2-ICE-ENCOUNTER-2B-1
  ++ ~其实，我得为鬼婆做准备。稍等一下。~ EXIT

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-4
~我希望你、还有许多别人能看见它……在严酷粗粝的冻原里，这一小片土地曾满是生命……冰与雪的生灵在此自由嬉戏玩耍，地上开满树与花，全由活的冰雪长出。~
= ~听起来不可能，可我和姐妹们对这片土地倾注的照料，让我们造出了这样的乐土……有一天，也许还能再如此。~
END
  + ~Global("C0AuraBG2Quest2IceQ1","GLOBAL",0)~ + ~能给我讲讲雪女吗？~ DO ~SetGlobal("C0AuraBG2Quest2IceQ1","GLOBAL",1)~ + QUEST2-ICE-ENCOUNTER-2B-3
  + ~Global("C0AuraBG2Quest2IceQ1","GLOBAL",1) Global("C0AuraBG2Quest2IceQ2","GLOBAL",1)~ + ~我还没问。你叫什么名字？~ + QUEST2-ICE-ENCOUNTER-2B-5
  ++ ~算了。撤去结界，让鬼婆来。~ + QUEST2-ICE-ENCOUNTER-2B-1
  ++ ~其实，我得为鬼婆做准备。稍等一下。~ EXIT

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-5
~我……我的名字？是白百合……取自曾在此生长的花。我找到这地方后不久，姐姐们给我取了这个名字……在我之前，是她们照料我们的花园。~
END
  ++ ~这名字很美。就像你一样。~ DO ~SetGlobal("C0AuraBG2YukionnaFlirt","GLOBAL",1)~ + QUEST2-ICE-ENCOUNTER-2B-6
  ++ ~我一定会记住，哪怕我离开此地之后。~ + QUEST2-ICE-ENCOUNTER-2B-7
  ++ ~说够了。召鬼婆来。我准备好一战。~ + QUEST2-ICE-ENCOUNTER-2B-1
  ++ ~其实，我得为鬼婆做准备。稍等一下。~ EXIT

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-6
~我……我谢谢你……我从没见过像你这样的人。若你来的地方还有更多像你这样善心的，哪怕只有几个……有一天我想看看你们的世界，就像你看我的……~
EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-7

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-7
~你叫什么名字，亲爱的<PRO_RACE>？我想记住……若鬼婆没夺走我们的话。就算发生了……我也想知。~
END
  ++ ~<CHARNAME>。~ + QUEST2-ICE-ENCOUNTER-2B-8
  ++ ~算了。我们该对付鬼婆。~ + QUEST2-ICE-ENCOUNTER-2B-1
  ++ ~先别管我的名字。再给我一会儿准备。~ + QUEST2-ICE-ENCOUNTER-2B-11

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-8
~<CHARNAME>……我喜欢这名字。~
END
IF ~Global("C0AuraBG2YukionnaFlirt","GLOBAL",1)~ + QUEST2-ICE-ENCOUNTER-2B-9
IF ~!Global("C0AuraBG2YukionnaFlirt","GLOBAL",1)~ + QUEST2-ICE-ENCOUNTER-2B-10

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-9
~求你，美丽又坚强的<PRO_RACE>。要赢，要活……我希望你别死在这儿。我不想看见。~
EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-11

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-10
~我希望你别死在这儿，<CHARNAME>……作为一位新朋友，一位我日后会讲给别的新朋友听的朋友。~
EXTERN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-11

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-2B-11
~准备好跟鬼婆一战时跟我说……今天，她的邪恶必须终结。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0ShirayuriRetreat","GLOBAL",1)~ THEN C0AYUKI QUEST2-ICE-RETREAT
~请——请原谅我，朋友……我不能再战了。我……我伤好后会回来。~ [C0BLANK]
DO ~CreateVisualEffectObject("SPSOLBRD","Myself")
Deactivate(Myself)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2IceEncounter","GLOBAL",3)~ THEN C0AICE01 QUEST2-ICE-ENCOUNTER-3
~啊，你在那儿。你在那儿，漂亮东西……~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2IceEncounter","GLOBAL",4)~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~一个冰妖婆……我只在费伦东北魔法生灵的旧选集里读到过。小心，<CHARNAME>……她们的心像外表一样黑冷，冰魔法致命。~
== C0AYUKI ~伊莎莉尔……终于，我们又见了。这次我不逃。~
== C0AICE01 ~嘿嘿嘿……好，确实好。那么，你终于要接受命运，去跟你可爱的姐妹们永拥了？还是要求饶，给我一点消遣？~
== C0AYUKI ~我或许愿意求，可不是为我自己。虽然我已知答案……我仍要问一次。你会把我朋友还我吗？~
== C0AICE01 ~嘿嘿！那么，这就是你的立场，是吗？我赞赏你的勇气，亲爱的……可你早该知道。我的答案是不。~
== C0AYUKI ~正如我所怕……可为了自己，我别无选择只能问……我姐妹们试图终结你的毁灭时，我惊惧逃走的那记忆，比死的念头更折磨我。至今我后悔她们全得牺牲才让我活。可现在……我终于觉得我的做法没错，因为我不再孤身一人。~
== C0AICE01 ~哦？嘿……我这双老眼没看错，我看……这冰封之地确实有客。欢迎，神子。我倒希望你觉得霜落之地的寒意惬意。~
END
  ++ ~你知道我是谁？~ + QUEST2-ICE-ENCOUNTER-4
  ++ ~是有点冷，可我会习惯。~ + QUEST2-ICE-ENCOUNTER-5
  ++ ~该死了，鬼婆！~ + QUEST2-ICE-ENCOUNTER-6

CHAIN C0AICE01 QUEST2-ICE-ENCOUNTER-4
~我知道你*是*什么，神子。谋杀的气味黏在你身上，不管你是否试图遮掩……个人而言，我倒觉得挺对胃口。~
EXTERN C0AICE01 QUEST2-ICE-ENCOUNTER-7

CHAIN C0AICE01 QUEST2-ICE-ENCOUNTER-5
~嘿嘿！看来你有点风趣，跟我以前遇到的、像你这类无聊灵魂大不相同。这老妪也许会渐渐喜欢上你。~
EXTERN C0AICE01 QUEST2-ICE-ENCOUNTER-7

CHAIN C0AICE01 QUEST2-ICE-ENCOUNTER-6
~好了，好了。这是招待主人的方式吗，神子？不用说，这座曾经的园子及目力所及的一切土地都归我。你最好注意礼数。~
EXTERN C0AICE01 QUEST2-ICE-ENCOUNTER-7

CHAIN C0AICE01 QUEST2-ICE-ENCOUNTER-7
~我原觉得奇怪，那雪女竟放我进来，正好在我一道道拆她守护结界取乐时……可我现在看出她的用意了。你是想拿神子当又一个牺牲来保全自己，像你当初对姐妹们那样？~
== C0AYUKI ~不……再也不会。勇敢的<PRO_RACE>选择跟我一起对抗你的残酷。可我原希望，你见我并不像你预想的那样好猎，会愿意收手，放过你还没污损的那些美。~
== C0AICE01 ~你以为我怕神子？我见过许多像<PRO_HISHER>这样的人随岁月枯萎消散。真可惜，连肩负神性者都如此轻易堕落……也许我该发点慈悲，把<PRO_HIMHER>也永久收进我的收藏。~
== C0AYUKI ~那么我们必须一战？你心里真的毫无美。~
== C0AICE01 ~*啐* 美？正是你的美冒犯我，精灵。想到世上存在这样得天独厚、这样傲慢炫耀白白得来之物的人，就烧得这老妪血脉沸腾。你竟*敢*美？单凭这点，我就有理由把你珍视的一切碾成灰。~
== C0AYUKI ~伊莎莉尔，你只看得见表面吗？我记得，虽那时我不过是个孩子，我们初见那天……你败给自己的巫团之后，是我姐妹们看穿你的面目，在我们花园里给你一个家。可你在我们造出的一切里只看见嘲弄，把我们善意全变成你自己扭曲的模样，背叛了我们。~
== C0AICE01 ~嘿嘿嘿……是，我记得清楚……而在我眼里，这地方眼下这番模样可顺眼得多。~
== C0AYUKI ~这对你仍不够？这最后一朵花是往昔仅剩之物。只要你在这些土地上，它就永不会再开。放过它吧……在你心里找一点慈悲。~
== C0AICE01 ~嘿！你真有胆，竟想在鬼婆心里找慈悲……那就这样……我若拼尽全力拧一拧，倒也能挤出一点慈悲。这花和你不能留……可我会放我们意外的客人安然离开。~
== C0AICE01 ~而且，我今儿心情宽厚……你若投降，我会给你那副美貌在永恒冰封之形里留些尊严。否则……我一定把你剩下的部分做成一件连我都要眯眼扭头嫌恶的像。~
== C0AYUKI ~你想煽起我的恐惧……可我比你想的更懂你，伊莎莉尔。你从不会守信到底……你已证明了。~
== C0AICE01 ~嘿嘿……是吗？明知你的力量在我面前多微弱，你还要作最后的反抗姿态？在我还没好好玩够之前就把你们全碾在冰下，多可惜！~
END
  ++ ~够了，鬼婆。你的邪恶到此为止。~ + QUEST2-ICE-ENCOUNTER-8
  ++ ~你真爱说。我准备好一战，就为让你闭嘴。~ + QUEST2-ICE-ENCOUNTER-8
  ++ ~其实，我刚在想我该去别处了……~ + QUEST2-ICE-ENCOUNTER-9

CHAIN C0AICE01 QUEST2-ICE-ENCOUNTER-8
~哎，那就这样吧，再好不过。我自那次胜利以来，太久没好好取乐了！~
EXTERN C0AICE01 QUEST2-ICE-ENCOUNTER-10

CHAIN C0AICE01 QUEST2-ICE-ENCOUNTER-9
~嘿嘿！不，我想不行。你已上场，不管愿不愿意，你就是这局里的玩家，神子！我一眼看见你时，你的命运就定了！~
EXTERN C0AICE01 QUEST2-ICE-ENCOUNTER-10

CHAIN C0AICE01 QUEST2-ICE-ENCOUNTER-10
~无处可逃！准备吧，你们会见识面对霜落之地本身是什么滋味！~
== C0AYUKI ~我最新的、如今最亲爱的朋友……原谅你被卷入此事，可我谢你与我并肩……我会用魔法护你免受这地界的寒冷。~
== C0AICE01 ~哦呵呵呵！你们都会成为我收藏里的漂亮货，身体困在冰里！来吧，我心爱的宠物们！~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
ForceSpellRES("c0auice1",Myself)
CreateCreatureEffect("c0auice1","SPWHIRL",[651.310],0)
SmallWait(5)
CreateCreatureEffect("c0auice1","SPWHIRL",[458.468],0)
SmallWait(5)
CreateCreatureEffect("c0auice1","SPWHIRL",[848.474],0)
SmallWait(5)
CreateCreatureEffect("c0auice1","SPWHIRL",[650.617],0)
Wait(2)
EndCutSceneMode()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2IceEncounter","GLOBAL",5)~ THEN C0AYUKI QUEST2-ICE-ENCOUNTER-4
~她……死了。那鬼婆，她不在了。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2IceEncounter","GLOBAL",6)~
== C0AYUKI ~谢谢你……谢谢你，勇敢的人。这世界会恢复原样，不再被死亡污染。有一天，它会再次满是生命。~
== C0AYUKI ~我不知道凡人灵魂能这样善良……你冒着死来护我、护这地方。~
== C0AYUKI ~请收下我的弓。它带着冬之灵……我希望它在你那边护你平安。~
DO ~GiveItem("c0abow1",Player1)~
== C0AYUKI IF ~Global("C0AuraBG2YukionnaFlirt","GLOBAL",1)~ THEN ~而且……我很高兴遇见你，说再见却很难。请接受这一吻……~
DO ~AddJournalEntry(%quest_snow_kiss%,QUEST_DONE)
ApplySpellRES("C0AICES0",Player1)~
== C0AYUKI IF ~OR(6)
  HPPercentLT(Player1,1)
  HPPercentLT(Player2,1)
  HPPercentLT(Player3,1)
  HPPercentLT(Player4,1)
  HPPercentLT(Player5,1)
  HPPercentLT(Player6,1)~ THEN ~至于你在战斗中倒下的同伴……我感到他们的灵仍在此徘徊，我能引他们回自己的肉身。~
DO ~ReallyForceSpellRES("SPPR550",Player1)
ReallyForceSpellRES("SPPR550",Player2)
ReallyForceSpellRES("SPPR550",Player3)
ReallyForceSpellRES("SPPR550",Player4)
ReallyForceSpellRES("SPPR550",Player5)
ReallyForceSpellRES("SPPR550",Player6)~
== C0AYUKI ~再会，我的朋友。~
EXIT

CHAIN IF WEIGHT #-1 ~GlobalGT("C0AuraBG2Quest2IceEncounter","GLOBAL",5)~ THEN C0AYUKI QUEST2-ICE-ENCOUNTER-5
~再会，我的朋友。~ [C0BLANK]
END
  + ~OR(6)
  HPPercentLT(Player1,1)
  HPPercentLT(Player2,1)
  HPPercentLT(Player3,1)
  HPPercentLT(Player4,1)
  HPPercentLT(Player5,1)
  HPPercentLT(Player6,1)~ + ~你能帮我把倒下的朋友复活吗？~ + QUEST2-ICE-ENCOUNTER-5-1
  ++ ~我希望有一天看到你的花园复原。~ + QUEST2-ICE-ENCOUNTER-5-2
  ++ ~再会。~ EXIT

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-5-1
~当然。~
DO ~ReallyForceSpellRES("SPPR550",Player1)
ReallyForceSpellRES("SPPR550",Player2)
ReallyForceSpellRES("SPPR550",Player3)
ReallyForceSpellRES("SPPR550",Player4)
ReallyForceSpellRES("SPPR550",Player5)
ReallyForceSpellRES("SPPR550",Player6)~ EXIT

CHAIN C0AYUKI QUEST2-ICE-ENCOUNTER-5-2
~我也希望能让你看看我的世界……那一天到来时，你永远受欢迎。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2IceEncounter","GLOBAL",6)~ THEN C0AURA2J QUEST2-ICE-ENCOUNTER-3
~我希望她能让这地方恢复生机……也许若我们再找到一颗能量晶体，有一天能回来再见她？~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest2IceEncounter","GLOBAL",7)~
== C0AURA2J ~总之，我已把锚定装置调好带我们回家，<CHARNAME>。你准备好了我们就走。~
DO ~SetGlobal("C0AuraBG2Quest2Done","GLOBAL",1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest2Done","GLOBAL",1)~ THEN C0AURA2J C0AuraBG2Quest2Done
~准备好走了？~ [C0BLANK]
END
  ++ ~是。~ + C0AuraBG2Quest2Done-1
  ++ ~还没有。~ EXIT

EXTEND_BOTTOM PPSAEM 52
 IF ~InParty("C0Aura")~ THEN EXTERN C0AURA2J C0AuraC4CutScene
END

EXTEND_BOTTOM PPSAEM 13
 IF ~InParty("C0Aura")~ THEN EXTERN C0AURA2J C0AuraC4CutScene
END

CHAIN C0AURA2J C0AuraC4CutScene
~嗯……？那声音……~
END
  ++ ~怎么了，奥拉？~ EXTERN C0AURA2J C0AuraC4CutScene-0
  ++ ~别发愣了。我们要上船了。~ EXTERN C0AURA2J C0AuraC4CutScene-0

CHAIN C0AURA2J C0AuraC4CutScene-0
~啊……没什么，<CHARNAME>。我以为刚听见那熟悉的嗓音随风飘过海面……可那不可能……~
== PPBODHI3 IF ~InMyArea("ppbodhi3")~ THEN ~真有意思。这神秘歌者的嗓音强到不用魔法就能漂过海面。~
== PPARAN2 IF ~InMyArea("aran")~ THEN ~那么浑厚的男中音，竟能传到这儿。可我感觉得出它并非魔法性质。~
== C0AURA2J ~我一定只是思乡了……它听着太像——算了。走吧，<CHARNAME>。~
DO ~SetGlobal("C0AuraC4CutScene","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUTS1")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraC4CutScene","GLOBAL",1)~ THEN C0AQINT2 C0AuraC4CutScene-1
~那是他的船。他终于到了。~ [C0BLANK]
DO ~SetGlobal("C0AuraC4CutScene","GLOBAL",2)~
== C0AQINT1 ~那哼唱……有什么含义？~
== C0AQINT3 ~谁知道。我不觉得值得一提。~
== C0AQINT2 ~别低估第十一工坊的最高奇械师。始终戒备，做好最坏打算。~
== C0AQINT3 ~我们非得这么不安吗？不管他在祖国有多大权势，他也不过是个发明家，跟别人一样。能有什么——~
== C0AQINT2 ~安静！他来了。~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUTS2")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraC4CutScene","GLOBAL",2)~ THEN C0AQINT2 C0AuraC4CutScene-2
~戴达罗斯大人，晚安……我们上次见面已过去很久。我相信你过得还好？听你声音这么洪亮，我推断海上航程没什么麻烦。~ [C0BLANK]
DO ~SetGlobal("C0AuraC4CutScene","GLOBAL",3)~
== C0DEDAL ~你的护卫可以走了。~
== C0AQINT1 ~什么？！~
== C0AQINT3 ~大人……~
== C0AQINT2 ~照他说的做。去外头守着，我们俩谈。~
== C0DEDAL ~阴影里那四个也走。~
== C0AQINT2 ~……他们也走。~
== C0AQINT3 ~是的，先生。~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUTS3")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraC4CutScene","GLOBAL",3)~ THEN C0AQINT2 C0AuraC4CutScene-3
~*咳*……嘿，恕罪，最尊贵的大人。一点预防，希望你能理解。~ [C0BLANK]
DO ~SetGlobal("C0AuraC4CutScene","GLOBAL",4)~
== C0DEDAL ~……~
== C0DEDAL ~我想你欠我一个解释，奥托。~
== C0AQINT2 ~是吗？因特里图斯做了什么招你恼火？~
== C0DEDAL ~我违背艾罗奇的意志，给了你一份职责、一个为祖国未来出力的机会。你若照要求做了，我今晚就不会来。未经许可散布不稳定的泰坦、私藏第十一工坊的原型自动机械……~
== C0DEDAL ~还有你企图谋害我年轻侄女性命这件事。~
== C0AQINT2 ~大人，阁下，稍等……我想长途航行让你失了判断。你加的这些指控相当重，而且毫无根据。我们如今虽弱，可因特里图斯现有的一切仍全赖你的恩惠。~
== C0DEDAL ~够了，奥托。你自作主张做的事及其后果，到时自会评估。我来此只为你的成果，别无其他。那本《生命元素论》，请交出来。~
== C0AQINT2 ~当然，当然。物归原主，本该如此。还有新近取得的研究，虽说跟你旧日老师、或格拉菲拉的杰作相比无疑原始……愿她安息。~
== C0DEDAL ~……~
== C0AQINT2 ~啊……我猜你不愿被提起已故的妹妹，大人。恕我冒昧。~
== C0DEDAL ~那都是过去了，奥托。我们兰坦人只看未来，绝不让失败蒙住判断。我希望你仍懂这条简单的信条？~
== C0AQINT2 ~我……嗯，当然懂，大人。我身为祖国一员的骄傲无可置疑。~
== C0DEDAL ~好。那你和你麾下所有人立即停止一切当前活动，随我回兰坦，不得延误。~
== C0AQINT2 ~什么？！~
== C0DEDAL ~我已耐心够久了，奥托。当我们的同胞只看见你前辈们的罪行时，我给了你疑罪从无的机会，指望你得到机会时会忠实服务你声称热爱的土地。我虽不认同你们组织的信念，可你至今的贡献无可否认有价值。~
== C0DEDAL ~不过……我虽愿在许多事上妥协，你近来的作为已超出我们合作的条件。我们的职责在祖国，那也许意味着我们得预备外邦的潜在威胁……可那不等于故意播撒不和，也不等于拿无辜者当一次性试验品。~
== C0DEDAL ~而且……把我们的造物转向另一个兰坦人，又给你过往的罪添分量……你越了线，奥托，这条线我没法视而不见。~
== C0AQINT2 ~求你，大人。我愿意承认我判断有误。也许我们在用你老师的研究做实验时越了界……可因特里图斯绝不会对兰坦、对任何以兰坦为家的兰坦人不利。~
== C0DEDAL ~这些欺瞒的把戏配不上我们。我很清楚阿金泰尔之眼被认为六年前跟我侄女一起失落在大冰海。得知它一直在你手里……你瞒了我许多事。~
== C0AQINT2 ~啊……我明白了。看来我低估了你的情报网。你也许把我们收在羽翼下，可看来即便那时，你也从没真正信过我们。~
== C0DEDAL ~你得到过我应给的信任。我给过你机会……一次不重犯错误的选择，而你选错了。这必须结束，奥托。不再有。~
== C0AQINT2 ~结束？不，我怕没法这么轻易结束，只要我国安危还悬于一线……同为兰坦人，你总该愿意在仓促决定前听听我的说法？~
== C0DEDAL ~……~
== C0DEDAL ~我在听。~
== C0AQINT2 ~大人，看看四周……看看眼前这原始景象。容我问一句，你看见了什么？~
== C0DEDAL ~……~
== C0DEDAL ~一个陷在黑暗里的国度。~
== C0AQINT2 ~可悲，不是吗？~
== C0AQINT2 ~我不否认我们因特里图斯看待这些外邦野蛮人时，带着一种住在我国舒适里的人……那些从没见过其愚蠢、残暴与无知的人，理当会退缩的轻蔑。少有像你这样有远见的人，足智多谋到真看见我们外头逼近的威胁。若我们不行动，那黑暗有一天也会吞掉我们。~
== C0AQINT2 ~你可以质疑我们的方法，但绝不可怀疑我们的忠诚。我们活着是为服务故乡的利益，可那服务不只意味着保护自己。我们的人民需要的不是盾，是刀。毕竟……大人，你佩刀是为了什么？~
== C0DEDAL ~……~
== C0DEDAL ~为了职责。为了兰坦的安全与兴旺，也为了那些把它塑造成我们家园的头脑。~
== C0AQINT2 ~那正是我们都想看到的，不是吗？看到兰坦——我们光荣的国度，理应高于这些无知野蛮人之上——崛起并推翻那些愚昧者？~
== C0DEDAL ~那真是你所愿的？你，以及所有穿你那种颜色的人？~
== C0AQINT2 ~那是*所有*兰坦人都该追求的，大人。~
== C0DEDAL ~我明白了。~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUTS4")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraC4CutScene","GLOBAL",4)~ THEN C0DEDAL C0AuraC4CutScene-4
~我说过……我的职责是祖国不可动摇的安全。而那包括清除*一切*不稳定的因素，不管它们源自何处。~ [C0BLANK]
DO ~SetGlobal("C0AuraC4CutScene","GLOBAL",5)~
== C0AQINT2 ~呃……*咳*……啊……~
== C0DEDAL ~因特里图斯的角色结束了。你们领袖也活不过你多久，你的同伙亦然。虽说看来无可避免，我仍后悔不得不这样做。~
== C0AQINT2 ~该——该死……你，戴达罗斯·迪内尔斯特……呃……~
== C0DEDAL ~结束了，奥托。~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUTS5")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraC4CutScene","GLOBAL",5)~ THEN C0DEDAL C0AuraC4CutScene-5
~“崛起并推翻那些愚昧者”？哼，到那时我们还认得自己吗……？~ [C0BLANK]
DO ~SetGlobal("C0AuraC4CutScene","GLOBAL",6)
ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUTS6")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraC4CutScene","GLOBAL",6)~ THEN C0AFRITZ C0AuraC4CutScene-6
~因特里图斯其余的人已被围困制伏。我也收到兰坦的消息，奥库卢斯用我们暗中给的情报，已派探员去了他们领袖的安全屋。~ [C0BLANK]
DO ~SetGlobal("C0AuraC4CutScene","GLOBAL",7)~
== C0DEDAL ~我明白了。干得好，弗里茨。~
== C0AFRITZ ~接下来呢，主管？~
== C0DEDAL ~把他们的遗体带回家，葬在我们的土里。他们至少该得这个。~
== C0AFRITZ ~会办到。~
== C0DEDAL ~……弗里茨。~
== C0AFRITZ ~是，大人？~
== C0DEDAL ~这十年我为祖国奔忙，刀上沾的血竟全是兰坦同胞的。这不可笑吗？~
== C0AFRITZ ~主管，你……~
== C0DEDAL ~我早谈不上后悔。可怎么会走到这一步？我们本该是一族人，诸国度未来的先驱。从不该是这样的路。~
== C0AFRITZ ~我们……早知道走这条路要付什么代价，老师。我们全都知道。我们还是都选了它。~
== C0DEDAL ~……~
== C0DEDAL ~你父亲怎么样，弗里茨？收到他的信了吗？~
== C0AFRITZ ~我……收到了。他不好。我回了他许多次，劝他考虑退休……可他不听。只要他还觉得艾罗奇需要他，就不听。~
== C0DEDAL ~也许你该回兰坦看看他。我准了。一个多世纪的忠诚服务……他剩下的年头该有个亲人在身边。~
== C0AFRITZ ~等我在这里的任务完成……主管，我希望你明白一件要紧事。~
== C0AFRITZ ~我从不必在你——我的老师——和我父亲之间做选择。我想做祖国的盾，就像你……就像他。到时候，他会明白。~
== C0DEDAL ~我不怀疑你，弗里茨。我只是不愿你跟着我时，以为我的路是唯一真理。会有人反对我，理由充分。也许是你父亲、我弟弟、我的侄女们……他们都不会赞同我做的事。尤其奥瑞莉亚。~
== C0AFRITZ ~奥瑞莉亚女士……你不是打算见她吗，主管？我们若跟上那条船，也许还来得及——~
== C0DEDAL ~不。我相信她对所奔的事业坚定不移。我不想阻碍她。~
== C0DEDAL ~我们在此继续计划，等她回来。走吧，弗里茨。~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUTS7")~ EXIT

// QUEST 3

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",1)~ THEN C0AURA2J quest3
~啊……终于又见到天空，真好。不知我们离开安姆航行了多久，可感觉像过了永远。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",2)~
= ~我知道我们还有任务，可去追那些吸血鬼之前，我希望我们能回简森家看看我的工坊，<CHARNAME>。不是什么要紧事，可既然回来了，我只想确认一切都还是我离开时的样子。~
END
  ++ ~好。我也有几个地方想先去。~ + quest3-1-1
  ++ ~我们没时间，奥拉。对付波蒂更重要。~ + quest3-1-2

CHAIN C0AURA2J quest3-1-1
~谢谢你，<CHARNAME>。不急，可若有机会能顺路去一趟，我会很高兴。~
EXIT

CHAIN C0AURA2J quest3-1-2
~你说得对。也许之后吧，假设一切顺利，行吗？我只想快看一眼。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",3)~ THEN C0CARNIF quest3-3
~汪！嗷呜！*喘气* *摇尾巴*~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",4)~
== C0AURA2J ~卡尼费克斯？是你吗？那就是说……*倒吸一口气* 朱诺在这城里，对吧？~
END
  ++ ~你认得这条猎犬？~ EXTERN C0AURA2J quest3-3-1
  ++ ~他是你姐姐的？~ EXTERN C0AURA2J quest3-3-2

CHAIN C0AURA2J quest3-3-1
~是，他当我姐姐的伙伴许多年了，是条训练极好的猎犬。~
EXTERN C0AURA2J quest3-3-2

CHAIN C0AURA2J quest3-3-2
~很久以前我们一起在丛林露营时，朱诺救了他。那时他还是只小崽子。别看他样子吓人——而且若你是罪犯，他确实吓人——他对我家每个人都极友善。~
= ~他若在这儿……朱诺想再见我，对吧？露娜也在吗？我得弄清楚！卡尼费克斯，他们现在在哪儿？~
== C0CARNIF ~汪！~
DO ~EscapeArea()~
== C0AURA2J IF ~AreaCheck("AR0400")~ THEN ~看来……他往简森家去了。我姐妹们一定在那儿等我！<CHARNAME>，我们这就走！~
== C0AURA2J IF ~!AreaCheck("AR0400")~ THEN ~看来……他往贫民区去了。我姐妹们一定在简森家等我！<CHARNAME>，我们这就走！~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",5)~ THEN MAJAN quest3-5
~哦，她在那儿，小宝贝！终于冒险回来了！~
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",6)~
== C0AURA2J ~我没错！是你们俩……~
== C0AJUNO ~惊喜吧，小妹妹。~
== C0AURA2J ~……朱诺！~
DO ~ClearAllActions()
StartCutSceneMode()
MoveToObjectOffset("C0AJUNO",[15.0])
Wait(2)
ActionOverride("C0AJUNO",FaceObject("C0AURA"))
ActionOverride("C0AJUNO",SmallWait(1))
ActionOverride("C0AJUNO",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",6)~ THEN C0AJUNO quest3-6
~哎哟……！你真的长大了。刚才差点把我撞倒。~
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",7)~
== C0AURA2J ~对不起，朱诺，我只是……太高兴见到你了！过了这么久……~
== C0AJUNO ~是啊，确实久。你肯定有一大堆故事要讲给我们听。你们俩不该说点什么吗……露娜？叔叔？~
== C0ALUNA ~……很高兴看到你没给自己惹太多麻烦。~
== C0DEDAL ~是……看到你安好真好，奥瑞莉亚。不过我想你的同伴该上前来，我们好正经介绍一番。~
== C0AURA2J ~对……<CHARNAME>，这边来！我想让你见见我家人。~
DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride(Player1,MoveToPoint([350.330]))
ActionOverride(Player1,SmallWait(1))
ActionOverride(Player1,Face(W))
Wait(5)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",7)~ THEN C0AURA2J quest3-7
~<CHARNAME>，这是我姐姐朱诺和露娜。那是我叔叔戴达罗斯·迪内尔斯特兰德。~
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",8)~
== C0DEDAL ~我热诚问候你。你的名字在剑湾广为人知，就连兰坦也听过你的事迹。~
== C0ALUNA ~……你好。~
== C0AJUNO ~我们都很感激你在旅途中照顾我们年轻、没经验的妹妹，<CHARNAME>。不过我看出她如今早不是没经验了。~
END
  ++ ~不必谢我。奥拉是不可替代的同伴。~ EXTERN C0AURA2J quest3-7-1
  ++ ~我很高兴终于见到她家人。她讲过许多关于你们的事。~ EXTERN C0AURA2J quest3-7-1
  ++ ~别管我。你和奥拉有的是话要叙。~ EXTERN C0AURA2J quest3-7-1

CHAIN C0AURA2J quest3-7-1
~那么朱诺，你们怎么从故乡到这儿来了？就为看我？我信里说过不用太久我就会回家的。~
== C0AJUNO ~这意思是有了机会我们就不该来看亲爱的妹妹？哎，伤人……不，我开玩笑。其实是我们叔叔的主意，让我们亲自来见你。~
== C0AURA2J ~真的？叔叔，你可是领导第十一工坊的。为私事离开兰坦没关系吗？~
== C0DEDAL ~嗯……最高奇械师的职责很重，可我对家人的责任高于一切，孩子。这是给凯罗斯的人情。他本想亲自来看你，可没这机会。所以我代他来了。~
== C0AURA2J ~父亲怎么了？没什么坏事吧，叔叔？~
== C0DEDAL ~不，不是……嗯，这得看你怎么看。艾罗奇正在评议他，作为加入议会的候选人。~
== C0AURA2J ~真的？！那……据我所知，议会好多年没换过成员了。我以为选新桑塔还得等好些年。~
== C0DEDAL ~许多人也这么以为。可高等护民官康斯坦丁觉得年迈该退了，所以议会得找他的继任。你父亲未必一定被选上，可若选上，格利默夏恩一族将有大变。正因如此他没法来安姆。~
== C0ALUNA ~倒不是他没尽力。叔叔跟他争了好几个钟头，他才终于松口。~
== C0AJUNO ~*咳*！我相信咱们有的是时间告诉奥拉故乡的一切。现在，我想我们该花点时间庆祝，你觉得呢，叔叔？~
== C0DEDAL ~当然。~
== C0AJUNO ~我们上楼聊聊吧，妹妹。我想听你这一路的全部经过。~
== C0AURA2J ~我真想去，朱诺，可，呃……我还有……~
END
  ++ ~去吧，奥拉。你不该错过这机会。~ EXTERN C0AURA2J quest3-7-2
  ++ ~别担心。你不在我也能照应一阵。~ EXTERN C0AURA2J quest3-7-2
  ++ ~我还需要她帮忙。~ EXTERN C0AJUNO quest3-7-3

CHAIN C0AURA2J quest3-7-2
~谢谢你，<CHARNAME>。别担心，我一有机会就来找你。~
EXTERN C0AURA2J quest3-7-4

CHAIN C0AJUNO quest3-7-3
~啊……对，我不该忘了这点。奥拉，你手上若有更要紧的事，你可以……~
== C0AURA2J ~不，我……对不起，<CHARNAME>，可我真的想至少留一会儿。~
EXTERN C0AURA2J quest3-7-4

CHAIN C0AURA2J quest3-7-4
~这期间，我还是有办法帮你……既然我要离开你一阵，不如把我自动构造体的主控权限给你？看我操作这么久，基础指令你该懂。~
DO ~SetGlobal("C0AuraBG2AutomatonControl","GLOBAL",1)~
= ~需要时给它下令跟着你就行。就算我不在，我也能这样间接帮你。~
END
  ++ ~你确定你自己不用它？~ + quest3-7-5
  ++ ~那帮大忙了。谢谢，奥拉。~ + quest3-7-6
  ++ ~也只能这样了。只是别在这儿待太久。~ + quest3-7-6

CHAIN C0AURA2J quest3-7-5
~嘻嘻，我想我们经历的危险影响你了，<CHARNAME>。我在这儿能出什么事？再说，我有朱诺陪着。你还没见过她使弓的样子呢。~
EXTERN C0AURA2J quest3-7-6

CHAIN C0AURA2J quest3-7-6
~我跟家人道别、送走他们后就去找你。你自己当心，好吗？~
== C0AURA2J ~走吧，朱诺。我调了最合适的一款茶，边聊边喝！哦，<CHARNAME>，你走之前也该来坐一会儿。~
DO ~SetGlobalTimer("C0AuraBG2QuestTime3Timer","GLOBAL",ONE_DAY)
ActionOverride("C0AJUNO",EscapeAreaMove("AR0403",671,419,NE))
ActionOverride("C0ALUNA",EscapeAreaMove("AR0403",752,361,SW))
ActionOverride("C0DEDAL",EscapeAreaMove("AR0403",687,360,SE))
ChangeAIScript("",DEFAULT)
LeaveParty()
ApplySpellRES("C0AUIN3",Myself)
ApplySpellRES("C0AUIN3A",Myself)
EscapeAreaMove("AR0403",720,432,N)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("Intro","LOCALS",0)
Global("C0AuraBG2Quest3","GLOBAL",8)~ THEN C0AJUNO JUNO-0
~很高兴我们终于见面了，<CHARNAME>。奥拉把关于你的事都讲给我之后，若没机会至少跟你谈一次，我会失望的。~
DO ~SetGlobal("Intro","LOCALS",1)~
= ~如你所知，我是奥拉的大姐朱诺。你照顾她、在同行旅途中教她一切，我欠你很多。~
END
  ++ ~她是无可比拟的盟友，也是好朋友。我很高兴有她在。~ + JUNO-0-1
  ++ ~我想你在抚养她这事上出了力，我也欠你一份。她说过你许多好话。~ + JUNO-0-2
  ++ ~她的本事有用。我只在乎这个。~ + JUNO-0-3

CHAIN C0AJUNO JUNO-0-1
~很高兴你跟她建立了这么牢固的纽带。看她如今这样也许令人惊讶，可在很久以前，她……很难与人相处。你给了她许多自信，让她变好了。~
EXTERN C0AJUNO JUNO-0-4

CHAIN C0AJUNO JUNO-0-2
~我想你高估了我在塑造我妹妹这事上的部分。我知道她敬仰我，可在许多方面，她也早已远远超过我；如今真正推她继续长进的，是她对你的钦佩。~
EXTERN C0AJUNO JUNO-0-4

CHAIN C0AJUNO JUNO-0-3
~嗯。我虽这么说，可看她如今这样，我能信奥拉看人的判断。我确实希望你明白她作为朋友的价值，以她应得的尊重待她。不过听她讲你那些话，我愿意先给你疑罪从无。~
EXTERN C0AJUNO JUNO-0-4

CHAIN C0AJUNO JUNO-0-4
~这场家族重逢大概比我想要的短，可我在此期间，希望我们也能建立自己的友谊。时候到了，我想我家里其余人也会想认识你。~
= ~你若有想跟我谈的，尽管开口。而且我确定露娜和我叔叔也会急着自我介绍，若他们还没的话。~
EXIT

CHAIN IF ~!Global("Intro","LOCALS",0) Global("C0AuraBG2Quest3","GLOBAL",8)~ THEN C0AJUNO JUNO-1
~是，<CHARNAME>？我能为你做什么？~
END
  ++ ~我想多了解你的家族。~ + JUNO-1-FAMILY
  ++ ~我想多了解你。~ + JUNO-1-SELF
  ++ ~现在没事。失陪。~ EXIT

CHAIN C0AJUNO JUNO-1-FAMILY
~当然。有特别想谈的谁吗？~
END
  + ~Global("C0AuraJunoFamily1","GLOBAL",0)~ + ~奥拉的事你能告诉我什么？~ DO ~SetGlobal("C0AuraJunoFamily1","GLOBAL",1)~ + JUNO-1-FAMILY-1
  + ~Global("C0AuraJunoFamily2","GLOBAL",0)~ + ~露娜的事你能告诉我什么？~ DO ~SetGlobal("C0AuraJunoFamily2","GLOBAL",2)~ + JUNO-1-FAMILY-2
  + ~Global("C0AuraJunoFamily3","GLOBAL",0)~ + ~你叔叔戴达罗斯的事你能告诉我什么？~ DO ~SetGlobal("C0AuraJunoFamily3","GLOBAL",3)~ + JUNO-1-FAMILY-3
  ++ ~我想多了解你。~ + JUNO-1-SELF
  ++ ~其实，算了。我这就走。~ EXIT

CHAIN C0AJUNO JUNO-1-FAMILY2
~有特别想谈的谁吗？~
END
  + ~Global("C0AuraJunoFamily1","GLOBAL",0)~ + ~奥拉的事你能告诉我什么？~ DO ~SetGlobal("C0AuraJunoFamily1","GLOBAL",1)~ + JUNO-1-FAMILY-1
  + ~Global("C0AuraJunoFamily2","GLOBAL",0)~ + ~露娜的事你能告诉我什么？~ DO ~SetGlobal("C0AuraJunoFamily2","GLOBAL",2)~ + JUNO-1-FAMILY-2
  + ~Global("C0AuraJunoFamily3","GLOBAL",0)~ + ~你叔叔戴达罗斯的事你能告诉我什么？~ DO ~SetGlobal("C0AuraJunoFamily3","GLOBAL",3)~ + JUNO-1-FAMILY-3
  ++ ~我想多了解你。~ + JUNO-1-SELF
  ++ ~其实，算了。我这就走。~ EXIT

CHAIN C0AJUNO JUNO-1-FAMILY-1
~奥拉？你当了她这么久的领队，我想你对她的了解该到没什么可多说的地步了。~
= ~也许该我问你。凭你对她性情的了解，你对我小妹妹有什么印象？~
END
  ++ ~她心地纯善、理想主义。而且就算有疑虑，她也勇敢到足以面对。~ + JUNO-1-FAMILY-1-1
  ++ ~关于人、关于世界，她还有许多要懂。可她愿意、也准备好去学。~ + JUNO-1-FAMILY-1-1
  ++ ~我觉得她太天真。若我不在，我怀疑她在世上撑不了多久。~ + JUNO-1-FAMILY-1-2
  ++ ~我倒更想听听你的看法。~ + JUNO-1-FAMILY-1-3

CHAIN C0AJUNO JUNO-1-FAMILY-1-1
~她一直是这样。许多人倒该学她这点，虽说这有时也让我为她的将来担心，因为她热衷把别人的担子揽成自己的。~
EXTERN C0AJUNO JUNO-1-FAMILY-1-3

CHAIN C0AJUNO JUNO-1-FAMILY-1-2
~也许。我不否认她太用力、太频繁地想看见一切中最好的一面。可我不觉得这必然是缺点。只是需要多一只手来引导。~
EXTERN C0AJUNO JUNO-1-FAMILY-1-3

CHAIN C0AJUNO JUNO-1-FAMILY-1-3
~你看到的跟我看到的完全一样。我妹妹长大了，可最内里的她没变。因此我怀疑我的见解不会比你已知的更多。~
END
IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ + JUNO-1-FAMILY-1-4
IF ~!Global("C0AuraRomanceActive","GLOBAL",2)~ + JUNO-1-FAMILY2

CHAIN C0AJUNO JUNO-1-FAMILY-1-4
~不过，撇开这些，我知道奥拉……格外喜欢你，不只是作为领队，也作为一个人。她信里从没明说，可我太了解她，明白你对她的意义。~
= ~恕我直言，可我仍有做姐姐的责任要求你照顾她。她对她所在意的人总是倾其所有。我希望你回报时也不少于她。~
END
  ++ ~不必怀疑我。奥拉在我心里极重。~ + JUNO-1-FAMILY-1-5
  ++ ~我明白你的顾虑。可我向你保证，我很在意奥拉。~ + JUNO-1-FAMILY-1-5
  ++ ~你也许是她姐姐，可我仍不喜欢你对我们关系的暗示。~ + JUNO-1-FAMILY-1-6

CHAIN C0AJUNO JUNO-1-FAMILY-1-5
~我明白。我最盼妹妹幸福，我相信你能给她。~
EXTERN C0AJUNO JUNO-1-FAMILY-1-6

CHAIN C0AJUNO JUNO-1-FAMILY-1-6
~轮不到我插手你们的关系。我相信奥拉知道该把心托付给谁，所以我话已说了，就不再追问这事。~
EXTERN C0AJUNO JUNO-1-FAMILY2

CHAIN C0AJUNO JUNO-1-FAMILY-2
~你若习惯了奥拉的性情，我得先警告你，露娜……大不相同。她可以很刺人，尤其在不熟悉的位置上。~
= ~她一直这样。我怕很大一部分是我的错——她童年时我陪她的时间远不够。奥拉出生后我希望能不重犯，可那只让她更嫉妒。~
= ~她若说了什么、做了什么冒犯你，请别对她太苛刻。她真无恶意，在贡德探求者那儿的日子也磨了她的性子，虽说她还有些要长进。~
EXIT

CHAIN C0AJUNO JUNO-1-FAMILY-3
~我叔叔戴达罗斯·迪内尔斯特兰德，是故乡受敬重的最高奇械师之一，也是奇械大师。他是我父亲凯罗斯的同母异父兄弟，虽不同姓，却跟任何直系家人一样亲。~
= ~你若打算跟他谈，要知道他……相当内敛。身为兰坦军械发明者的职责，养成了他极强的纪律感与谨慎，这也带进了他的日常生活。~
= ~不过，我知道他过去去过烛堡，极敬重那儿的许多学者与读者。也许你在这方面能跟他有共同语言。~
EXTERN C0AJUNO JUNO-1-FAMILY2

CHAIN C0AJUNO JUNO-1-SELF
~我是家里长女，一生中帮着养育弟妹——一共五个——确保他们为所选的人生做好准备，不管在兰坦还是别处。~
= ~如今，我在兰坦最接近正规军力的那支队伍里任职。我从小就教奥拉射箭，可那也许是我唯一能传给她的实用本事。我奇械上还算过得去，跟家里多数人一样，可在这一点上她天分远高于我。~
EXTERN C0AJUNO JUNO-1-FAMILY2

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)
Global("C0AuraBG2Quest3","GLOBAL",8)~ THEN C0ALUNA LUNA-1
~那么你就是<CHARNAME>？你的事我全听过了。毕竟最近奥拉写信回来讲的全是你。~
= ~你确定你想谈的不是我姐妹？我身上肯定没什么让你感兴趣的。如今才能与成就都是我姐妹的。~
END
  ++ ~不管怎样，我还是想认识你。~ + LUNA-1-1
  ++ ~听来你觉得自己被姐妹遮住了。~ + LUNA-1-2

CHAIN C0ALUNA LUNA-1-1
~真的？你真会在意去了解？好，只是别把期望放太高。露娜·格利默夏恩，族中次女，贡德教会探求者。换句话说，我不过是个祭司。没什么出众。~
EXTERN C0ALUNA LUNA-1-3

CHAIN C0ALUNA LUNA-1-2
~我？我不敢。我不过是格利默夏恩族众多女儿中的一个，也是贡德教会一位受敬重的祭司。对我这真做不出什么价值的人，期望倒设了不少。~
EXTERN C0ALUNA LUNA-1-3

CHAIN C0ALUNA LUNA-1-3
~身为贡德祭司，职责写出来听着宏大，可说实话，跟我们家里那些辛苦干活的人比，我做的不多。我没法拿武器保护兰坦，也肯定没胆子像我妹妹那样出去闯世界、尽量多学。~
= ~想听我布道我倒是会，可趁这机会，我更愿离我的经文远点。你若想要别的，那真没戏。~
= ~总之，恕我失陪，我回去享受这场姐妹重逢。毕竟我们不会永远在这儿，你不久就能把我亲爱的妹妹带回去。~
EXIT

CHAIN IF ~Global("C0AuraBG2Quest3","GLOBAL",8)~ THEN C0ALUNA LUNA-2
~又来了，<CHARNAME>？我真没那么有意思。~
END
  + ~Global("C0AuraLuna1","GLOBAL",0)~ + ~我想听听你对家人的看法。~ DO ~SetGlobal("C0AuraLuna1","GLOBAL",1)~ + LUNA-2-1
  + ~Global("C0AuraLuna2","GLOBAL",0)~ + ~我还是想多了解你。~ DO ~SetGlobal("C0AuraLuna2","GLOBAL",1)~ + LUNA-2-2
  ++ ~那我就不打扰了。~ EXIT

CHAIN C0ALUNA LUNA-2-1
~关于他们，当然是关于他们……你何不自己去问？我保证你不必我在场挡着，也能听到你想听的更多。~
END
  ++ ~你肩上那根刺似乎不小。~ + LUNA-2-3
  ++ ~他们真让你这么难受？据我所听，奥拉很看重你。~ + LUNA-2-4
  ++ ~那算了。失陪。~ EXIT

CHAIN C0ALUNA LUNA-2-2
~真没什么可说的。我没有奥拉那些精彩故事，也不是什么把族人未来放在眼里的天才。对你来说我谁都不是。~
EXIT

CHAIN C0ALUNA LUNA-2-3
~怎么，你以为我有怨气？哪有。我处在我该处的位置。毕竟我不是勇敢的士兵，也不是族人技艺的奇才。我仍得为兰坦尽我那份力。~
= ~我若曾有过超越现状的野心，也早学会与失望共处了。就这些。~
EXIT

CHAIN C0ALUNA LUNA-2-4
~她当然看重我。我从没见她说过别的。她就是这样，我自然没理由抱怨。说实话，她若说我坏话，我麻烦也许还少些。~
EXTERN C0ALUNA LUNA-2-3

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)
Global("C0AuraBG2Quest3","GLOBAL",8)~ THEN C0DEDAL DEDAL-0
~幸会，<CHARNAME>。戴达罗斯·迪内尔斯特兰德，兰坦诸大工坊中第十一工坊的最高奇械师。我从奥瑞莉亚那儿听过许多你的事。~
= ~我感激你照顾我侄女。她是格利默夏恩一族的珍宝，可她的好奇心常让她惹上麻烦。~
END
++ ~不算麻烦。我很看重奥拉的陪伴。~ + DEDAL-0-1
++ ~这我凭经验知道。~ + DEDAL-0-2

CHAIN C0DEDAL DEDAL-0-1
~确实。她是个多有天赋的孩子，其中之一便是交朋友的本事。~
EXTERN C0DEDAL DEDAL-0-2

CHAIN C0DEDAL DEDAL-0-2
~据我所听，你出身大图书馆烛堡。那是可敬之地，有诸多伟大头脑。虽少有人提，兰坦人的知识许多都要归功于那儿的古老典藏。~
= ~我本人多年前也曾有幸造访那些厅堂，就在动荡之年留下印记前不久。~
END
++ ~你去过烛堡？也许你见过我养父葛立安？~ + DEDAL-0-3

CHAIN C0DEDAL DEDAL-0-3
~唉，没有，不过我知其名声。可我认识馆长乌尔劳恩特与首席读经者泰斯托里尔，他们给了我极需要的指引。我极敬重他们的智慧与教诲……*咳*。恕我，我该说正题。~
= ~你既是烛堡旧日受监护者，我觉得你有权得这个。这是一枚首席读经者在我们……“文化交流”时赠我的戒指，这么讲最恰当。我带着它许多年，可它对我只是情感价值。~
DO ~GiveItemCreate("C0ARING3",Player1,1,0,0)~
= ~我相信它对你比对我更有用，我以它表谢意，谢你照顾我侄女。~
END
++ ~谢谢。我珍视关于我家的记忆。~ + DEDAL-0-4
++ ~你说这是交流的一部分。你给了图书馆什么？~ + DEDAL-0-5

CHAIN C0DEDAL DEDAL-0-4
~不必挂怀。奥瑞莉亚的平安与安好比任何装置都更有价值。这信物若对你有用，那它比过去三十年都更有价值了。~
EXTERN C0DEDAL DEDAL-0-6

CHAIN C0DEDAL DEDAL-0-5
~一件由奥瑞莉亚的父亲和我发明的计时装置，本想取代日晷。如今在兰坦已很常见，可当时还算较新的发明。我们相信它对僧侣们会是件有价值的东西，既是奇物，也是他们厅堂里的实用工具。~
EXTERN C0DEDAL DEDAL-0-6

CHAIN C0DEDAL DEDAL-0-6
~你若对本人或我侄女们有什么想知道的，我们还会在这儿一阵。眼下我还有许多想向奥瑞莉亚问的。失陪。~
EXIT

CHAIN IF ~Global("C0AuraBG2Quest3","GLOBAL",8)~ THEN C0DEDAL DEDAL-1-0
~<CHARNAME>。我能为你做什么？~
END
++ ~说说你自己吧，戴达罗斯大人。~ + DEDAL-1-1
++ ~你跟奥拉家究竟是什么关系？~ + DEDAL-1-2
++ ~我注意到你佩的剑。我以为兰坦发明家不习武。~ + DEDAL-1-3
++ ~你个人怎么看奥拉？~ + DEDAL-1-4
++ ~改天再跟你谈。~ EXIT

CHAIN C0DEDAL DEDAL-1-1
~要找到能让非兰坦人听懂的话题很难，可我会尽力。我是兰坦的奇械师，领导兰坦第十一工坊，专精制造护卫我国的军械。~
= ~兰坦不是好武之地，许多人看不见我们工作的价值或长处。这……令人泄气，可我理解同胞。因此我们是诸大工坊中最小的，可那并不完全是弱点。我身为首席奇械师亲自主管一切发明的流程，跟部属关系信任。~
END
++ ~那奥拉用的一切武器都出自你的工坊？~ + DEDAL-1-1-1
++ ~你们的武器发明卖吗？~ + DEDAL-1-1-2
++ ~你跟奥拉家究竟是什么关系？~ + DEDAL-1-2
++ ~我注意到你佩的剑。我以为兰坦发明家不习武。~ + DEDAL-1-3
++ ~你个人怎么看奥拉？~ + DEDAL-1-4
++ ~改天再跟你谈。~ EXIT

CHAIN C0DEDAL DEDAL-1-1-1
~不直接卖。“武器”定义很宽，所以我们奇械师学的技艺品种比专精工坊更多。炼金、冶金，甚至魔法都能用于造武器。而且并非所有武器一开始就是武器。~
= ~你大概知道，奥瑞莉亚极厌恶暴力。可当必要时，她也有知识把技艺用于此。第十一工坊的人也不两样。~
END
++ ~你们的武器发明卖吗？~ + DEDAL-1-1-2
++ ~你跟奥拉家究竟是什么关系？~ + DEDAL-1-2
++ ~我注意到你佩的剑。我以为兰坦发明家不习武。~ + DEDAL-1-3
++ ~你个人怎么看奥拉？~ + DEDAL-1-4
++ ~改天再跟你谈。~ EXIT

CHAIN C0DEDAL DEDAL-1-1-2
~不。第十一工坊受极大限制，远甚于别的工坊。我们被禁向别国出售造物，就算在兰坦境内，我们分发武器的许可也严格听凭艾罗奇裁夺。~
= ~这……有限制，可也是为了最好。兰坦不以军力自傲。我们靠把外界所感知的威胁降到最低来维持安全。许多国家因我们工作的潜在危险而不信我们，一被激怒就会轻易视我们为敌。~
END
++ ~那奥拉用的一切武器都出自你的工坊？~ + DEDAL-1-1-1
++ ~你跟奥拉家究竟是什么关系？~ + DEDAL-1-2
++ ~我注意到你佩的剑。我以为兰坦发明家不习武。~ + DEDAL-1-3
++ ~你个人怎么看奥拉？~ + DEDAL-1-4
++ ~改天再跟你谈。~ EXIT

CHAIN C0DEDAL DEDAL-1-2
~如你所知，我是奥瑞莉亚的叔叔。她父亲凯罗斯·格利默夏恩是我同母异父的兄长。我们俩之间，他大我十二岁。~
= ~奥瑞莉亚的祖母——也就是凯罗斯的母亲密涅瓦——有颗冒险者的心。她在凯罗斯出生几年后跟我父亲亚瑟·迪内尔斯特兰德分开，后来父亲续娶我母亲薇拉，直到两人……在一场惨祸中双双亡故。~
= ~凯罗斯和我一起长大，自小亲密。我虽不是格利默夏恩血脉，可……跟这一族的亲近已到可能的地步。~
END
++ ~我注意到你佩的剑。我以为兰坦发明家不习武。~ + DEDAL-1-3
++ ~你个人怎么看奥拉？~ + DEDAL-1-4
++ ~改天再跟你谈。~ EXIT

CHAIN C0DEDAL DEDAL-1-3
~啊……这个？自卫的手段，仅此而已。我不会自称专注的剑手。可我各种职责常要离开故乡出行，这是必要的预防。~
= ~我见过的战斗比多数兰坦人多得多，可我不认为自己的本事接近老练冒险者。~
END
++ ~你跟奥拉家究竟是什么关系？~ + DEDAL-1-2
++ ~你个人怎么看奥拉？~ + DEDAL-1-4
++ ~改天再跟你谈。~ EXIT

CHAIN C0DEDAL DEDAL-1-4
~奥瑞莉亚是个奇才。自我认识她起，她对万事都显出止不住的好奇，还有一种稀有天赋——凡她决意要做的东西都能造出来。认识她的兰坦人视她为我们未来的闪亮典范。~
= ~你无疑跟她同行够久，明白她品性之坚。她不只是有本事，更看重出于她手的东西——知识与造物。她的动力是帮她在意的人，不管是国家、家族还是朋友。~
= ~我虽多年没见她，可看得出在你身边旅行，让她的成长比我在她少年时所见的快得多。你无疑既是她的动力，也是她的启发。~
END
++ ~说说你自己吧，戴达罗斯大人。~ + DEDAL-1-1
++ ~你跟奥拉家究竟是什么关系？~ + DEDAL-1-2
++ ~我注意到你佩的剑。我以为兰坦发明家不习武。~ + DEDAL-1-3
++ ~改天再跟你谈。~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",9)~ THEN C0APICO quest3-9
~*喘* *喘*……哦……我终于找到你了，<PRO_SIRMAAM>！你……你得回简森家一趟！出大事了！~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",10)~
END
  ++ ~怎么了？~ EXTERN C0APICO quest3-9-1
  ++ ~是奥拉派你来的？~ EXTERN C0APICO quest3-9-1

CHAIN C0APICO quest3-9-1
~是……是奥拉小姐，<PRO_SIRMAAM>！她……她被带走了！~
= ~家里别人到早上才发觉，可前一晚我回家后看见了……她在跟她叔叔说话，两人脸色阴沉得吓人！~
= ~我……我没敢靠太近听他们说什么，可后来两个穿黄衣的侏儒出现，把她带出了城！对不起，<PRO_SIRMAAM>，他们出城门后我跟丢了……~
= ~跟丢之后我回去告诉了奥拉小姐的姐姐们……朱诺小姐让我立刻找你，再回去跟她会合！她在工坊等你！~
END
  ++ ~好。我这就赶回那房子。~ + quest3-9-2
  ++ ~行。我不知道出了什么事，可我必须把奥拉带回来。~ + quest3-9-2

CHAIN C0APICO quest3-9-2
~我先回去告诉大家我找到你了，<PRO_SIRMAAM>。请快些，不能耽搁！~
DO ~AddJournalEntry(%Quest3_Entry_1%,QUEST) EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",12)~ THEN C0AJUNO quest3-12
~好，你来了，<CHARNAME>。我还担心小皮可找不到你。你明白出了什么事吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",13)~
END
  ++ ~你叔叔把奥拉带去哪儿了？~ EXTERN C0AJUNO quest3-12-1
  ++ ~快点说吧。出了什么事？~ EXTERN C0AJUNO quest3-12-1
  ++ ~这些在搜这地方的其他侏儒是谁？~ EXTERN C0AJUNO quest3-12-2

CHAIN C0AJUNO quest3-12-1
~这是我的错。我本该更留心，可我低估了叔叔的手段。否则，我也许能拦住他把奥拉带走。~
EXTERN C0AJUNO quest3-12-2

CHAIN C0AJUNO quest3-12-2
~我不确定奥拉是否跟你说过，但我是奥库卢斯的队长，那是服务兰坦的一支精锐探员队伍。有人叫我们贡德之手，可我们主要听命于艾罗奇，而非教会本身。这儿这些人是我部属。~
= ~你是我妹妹的亲近同伴，所以尽管我本不该向外人透露消息，我还是告诉你实情。我们来安姆的初衷不只是家族团聚，而是调查某些在故乡之外未经许可的兰坦行动。~
= ~不知你对情况了解多少，但奥库卢斯在调查中发现一个犯罪组织因特里图斯的存在，他们一边在全国暗中测试非法实验，一边试图在安姆悄悄制造混乱。~
= ~所幸靠我们探员的努力，这些行动大部分已被清除。剩下的只有幕后主脑，尚未被抓到。关于此人，除了确知其在安姆，我们只知道其盟友称呼的头衔……“监察官”。~
END
  + ~GlobalGT("C0AuraBG2Quest1","GLOBAL",53)~ + ~我知道奥库卢斯和因特里图斯。里斯是你们的探员，对吧？~ + quest3-12-3
  ++ ~你觉得你叔叔就是这位主脑？~ + quest3-12-4
  ++ ~你们来这儿要抓谁？~ + quest3-12-4

CHAIN C0AJUNO quest3-12-3
~你已知道里斯的身份？我猜是他告诉你的，且情况要求他这么做。我们探员在需要时极善于守密。~
EXTERN C0AJUNO quest3-12-4

CHAIN C0AJUNO quest3-12-4
~在安姆已知的兰坦公民很少，有能力做危险实验的更少。最终我们缩小到三个可疑对象。~
= ~第一个是前奇械师卡里迪乌斯·马格努森。经仔细调查，我们排除了他。第二个是我叔叔戴达罗斯·迪内尔斯特兰德，我们费尽力气查出他有未申报的前往安姆的记录。第三个……是奥拉本人。~
= ~虽说这是我的个人感觉而非证据，可我一刻也不信我妹妹会有责任。叔叔表明要来探望她时，我就以家族关系为借口跟来，把他看住。~
END
  ++ ~你这活干得不怎么样。~ EXTERN C0AJUNO quest3-12-5
  ++ ~现在他把奥拉带走了。你觉得他想做什么？~ EXTERN C0AJUNO quest3-12-6
  ++ ~你叔叔怎么甩掉你的？~ EXTERN C0AJUNO quest3-12-6

CHAIN C0AJUNO quest3-12-5
~我知道。我深为后悔。奥拉是我亲爱的妹妹，是我亲手帮着养大的。我不能让她出任何事。~
EXTERN C0AJUNO quest3-12-6

CHAIN C0AJUNO quest3-12-6
~我叔叔是……天才。我甚至敢说，连奥拉的头脑跟他比都逊色。他不仅是马格努森大师亲自教出的杰出发明家，还精通许多别的领域，包括剑术与暗中行事。~
= ~我以为我的训练足以对付他，可他找到机会甩掉我、带走我妹妹。不过……正是这“机会”让我担心。~
= ~自那事之后，露娜也不见了。不止如此，前一晚她还跟我在一起，举动反常。回想起来，我相信她是故意想分散我注意。那就是说她很可能在以某种方式协助叔叔。~
= ~我没有叔叔和奥拉去向的线索，可我会继续在那边搜。 <CHARNAME>，我需要你去找露娜。弄清她知道多少，可……请别伤她。我不信她有意害自己家人。她只是……容易仓促犯错。等这事了结，我得好好跟她谈。~
= ~你若查出什么，跟我保持联系，我也会。祝你好运，<CHARNAME>……谢谢你。~
DO ~AddJournalEntry(%Quest3_Entry_2%,QUEST)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",13)~ THEN C0ALUNA quest3-13
~你是……<CHARNAME>，对吧？等等。我——我需要跟你谈。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",14)~
END
  ++ ~我也要跟你谈。你叔叔把奥拉带去哪儿了？~ + quest3-13-1

CHAIN C0ALUNA quest3-13-1
~我可以告诉你。可你得先知道一件事——我……我从没想让这事发生！我以为叔叔是要保护她，免遭我们族人那些作为引起的怀疑。我没想到他真跟这事有关，也没想到他会带走我妹妹！~
= ~你得信我。我不想奥拉出任何事。你大概听过我对她从不算最和善，也许她有理由恨我，可这是真话！~
END
  ++ ~我信你。只告诉我她在哪儿。~ + quest3-13-2
  ++ ~别浪费时间了。你要弥补过错，就正经弥补。~ + quest3-13-2

CHAIN C0ALUNA quest3-13-2
~我叔叔……他利用第十一工坊领袖的资源，在兰坦之外建了一座地下工坊。这不是最近的事……我不知道细节，可我确定他暗中搞了好多年，甚至几十年。他去的就是那儿。~
= ~我带你去，可只能你和我，还有你能信的人。别让朱诺——~
DO ~StartCutSceneMode()
SmallWait(5)
CreateCreature("C0AJUNO",[3507.1400],SW)
SmallWait(5)
ActionOverride("C0AJUNO",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",14)~ THEN C0AJUNO quest3-14
~*叹气*~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",15)~
== C0ALUNA ~啊！~
== C0AJUNO ~真的吗，妹妹？“别让朱诺知道”，是这样？我以为你该长大不玩这套了。~
== C0ALUNA ~朱诺……我不是想……~
== C0AJUNO ~我知道。我有很多想说，可眼下我不打算浪费时间怪你。你从来受不住这个，所以我留着以后说。找奥拉更要紧。~
== C0AJUNO ~我已听到最要紧的细节，<CHARNAME>。若我叔叔真在越权、瞒着艾罗奇建工坊，他要面对的指控比他已被怀疑的严重得多。我们这就去。~
== C0ALUNA ~不！你不能去，朱诺。~
== C0AJUNO ~我为什么不能？我指望你有个好解释，妹妹。~
== C0ALUNA ~那工坊……是第十一的分支，里头有无数设计难以置信的武器。你或奥库卢斯任何人若在那儿被看见，我叔叔和他部属不可能不发觉，那一战必不可免，谁知道会造成多大破坏！~
== C0ALUNA ~我不能让那种事发生……先让我跟<CHARNAME>单独去。我们找到我叔叔，等确保奥拉安全，你再接应。然后但愿……我们不必让任何人受伤。~
== C0AJUNO ~……你说得有理。那样对大家都好。好，这任务我就信你，露娜。别辜负家族。~
== C0ALUNA ~我不会。~
== C0AJUNO ~我会尽量召集探员，然后来跟你们会合。露娜会给我留踪迹。找到我妹妹，<CHARNAME>，护她平安。格利默夏恩一族全指望你了。~
DO ~EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",15)~ THEN C0ALUNA quest3-15
~工坊藏在小牙隘口。掩蔽得极巧妙，不知情的人永远找不到。隘口见，<CHARNAME>。~ [C0BLANK]
DO ~AddJournalEntry(%Quest3_Entry_3%,QUEST) SetGlobal("C0AuraBG2Quest3","GLOBAL",16) EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",16)~ THEN C0ALUNA quest3-16
~你来了。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",17)~
= ~工坊在西南，过桥之后。这地方危险……所以我跟着你走，到了告诉你。我不擅打斗，可必要时能给你治疗。走吧。~
DO ~SetGlobal("Allies","LOCALS",1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",18)~ THEN C0ALUNA quest3-18
~这儿！这就是秘密工坊的入口。我说过，肉眼根本看不出来。我来开通道……~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",19)
ClearAllActions()
StartCutSceneMode()
MoveToPoint([624.2413])
Wait(2)
SetSequence(SEQ_CAST)
CreateVisualEffect("ICRMPARI",[624.2413])
Wait(1)
CreateVisualEffect("ICRMPARI",[510.2385])
CreateVisualEffect("ICRMPARI",[763.2385])
TriggerActivation("C011thShop",TRUE)
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",19)~ THEN C0ALUNA quest3-19
~我已打开通往工坊的路。跟我进去，别对任何人说一个字。让我来应付。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",20) EscapeAreaObject("C011thShop")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",21)~ THEN C0AGNO05 quest3-21
~探求者格利默夏恩女士！你这么快就回来了？~
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",22)~
== C0ALUNA ~奇怪吗？听你口气，倒像盼着我别这么快来。~
== C0AGNO05 ~不，不，绝无此意。只是照最高奇械师的命令，你该……~
== C0ALUNA ~够了。我叔叔在哪儿？我要见他。~
== C0AGNO05 ~他……他在军械库，小姐。可……跟你一起的这些人是谁？我该通知最高奇械师你到了吗？~
== C0ALUNA ~这些是我的客人，来跟第十一工坊办事。我叔叔已在等我们，所以我自己去见他，谢谢。毕竟我还是他侄女。我宁可不讲那些虚礼。~
== C0AGNO05 ~遵命，探求者女士。~
== C0ALUNA ~怎么？回去干活！~
== C0AGNO05 ~是——是——是！马上，小姐！~
DO ~MoveToPoint([1408.945])
SmallWait(1)
Face(E)~ EXIT

CHAIN IF WEIGHT #-1 ~!See("C0AGNO05")
Global("C0AuraBG2Quest3","GLOBAL",22)~ THEN C0ALUNA quest3-22
~呸。非得照身份行事，真烦人。可至少这回我的位阶有点用。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",23)~
END
  ++ ~奥拉说你并不喜欢当祭司的差事。可你看上去挺从容？~ + quest3-22-1
  ++ ~刚才相当了得。我几乎信了你根本不是在演。~ + quest3-22-2
  ++ ~走吧。我们得尽快找到奥拉。~ + quest3-22-4

CHAIN C0ALUNA quest3-22-1
~你还指望什么？为了格利默夏恩之名，我必须尽全力。永远最好，无一例外……~
EXTERN C0ALUNA quest3-22-3

CHAIN C0ALUNA quest3-22-2
~也许你已知道，我在兰坦以家里被惯坏的小公主而闻名。那也有些好处。~
EXTERN C0ALUNA quest3-22-3

CHAIN C0ALUNA quest3-22-3
~现在别出声。若有人觉得你身份不对，那就是灾难。你根本不知道这儿造的东西能做什么。~
EXTERN C0ALUNA quest3-22-4

CHAIN C0ALUNA  quest3-22-4
~我叔叔在工坊最深处。需要时我告诉你怎么走。~
DO ~SetGlobal("Allies","LOCALS",1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",24)~ THEN C0AFRITZ quest3-24
~你果然来了。探求者格利默夏恩女士，还有烛堡的<CHARNAME>。戴达罗斯大人料到你们会来。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",25)~
== C0ALUNA ~*叹气* 弗里茨……我猜我该想到你在这儿，你这么忠于我叔叔。不过你年老的父亲、护民官大人就要退休享福了，我还以为你也许会回兰坦。~
== C0AFRITZ ~我父亲理解我为祖国行事的意愿……我为此感谢他，也同等感谢戴达罗斯大人对我们族人的赤诚。所以我在这儿，女士。~
== C0ALUNA ~“保护我们的族人”？我也这么信过，哪怕有因特里图斯的牵涉、他们卑劣的计划，以及你帮着瞒我。~
== C0AFRITZ ~因特里图斯不再是威胁。奥库卢斯和我们执法者的努力已确保这点，兰坦没有他们的阴影蔓延诸国度会更好。如今，第十一工坊的人可以全心投入我们真正的使命。~
== C0ALUNA ~你这么说，可……我要跟我叔叔谈。若他真信自己所做为兰坦好……我要听他亲口说。我也要见我妹妹。~
== C0AFRITZ ~我郑重向你保证，奥瑞莉亚女士安然无恙。戴达罗斯大人绝不会害自己的血亲，不管分歧多大。~
== C0ALUNA ~那你为什么在这儿？他若问心无愧，就该出来见我们，而不是让你挡路。~
== C0AFRITZ ~……我在此是我自己的推断。虽说戴达罗斯大人没要求我，可为了我们筹划已久的计划，我不能让任何不确定因素威胁我们。我不会。~
== C0ALUNA ~让开，弗里茨。我叔叔若没下令，你就无权插手。我只想从我叔叔口中听到关于我们族人未来、我们的计划，以及他至今瞒我的一切真相。~
== C0AFRITZ ~那恐怕你得用武力制伏我。女士说得对，我无权。挡在你和主管之间，一半是借口……其实我把这看作我的机会。我将有机会跟英雄<CHARNAME><PRO_HIMHER>本人较量。~
END
  ++ ~这跟我突然有什么关系？~ EXTERN C0AFRITZ quest3-24-1
  ++ ~你真正的意图是跟我打？~ EXTERN C0AFRITZ quest3-24-1
  ++ ~若非得打，能不能赶紧了结？~ EXTERN C0AFRITZ quest3-24-2

CHAIN C0AFRITZ quest3-24-1
~你被众人认作英雄，<CHARNAME>，凡人中的传奇。你的事迹甚至传遍兰坦，尽管我们族人很少关心不涉己的外邦事务。~
= ~我的梦想是配得上自称祖国真正的守护者……而这角色只容传奇般的力量。虽经训练，我也不能指望达到两次阻止战争的<PRO_MANWOMAN>那般成就……可即便如此，我也要拿我的力量跟你较量，看看我们之间的差距究竟多大。~
EXTERN C0AFRITZ quest3-24-2

CHAIN C0AFRITZ quest3-24-2
~正常情况下，我大概没法跟你匹敌……可我们第十一工坊成就了许多伟业。有一条路，我或许有希望成为你的障碍。~
== C0ALUNA ~那……那是泰坦？！住手，你这蠢货！你知道它会——！~
== C0AFRITZ ~*咽口水*~ [GULP]
DO ~StartCutSceneMode()
Wait(2)
ApplySpellRES("c0aqef19",Myself)
Wait(1)
Enemy()
SetSequence(SEQ_ATTACK_SLASH)
ScreenShake([20.20],2)
Wait(1)
SetSequence(SEQ_ATTACK_BACKSLASH)
ScreenShake([20.20],2)
Wait(2)
ActionOverride("C0ALUNA",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",25)~ THEN C0ALUNA quest3-25
~伟大的贡德……人竟能蠢到、犟到这般地步……~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",26)~
= ~这看来是泰坦的新配方，<CHARNAME>。他也许说不了话，可看来比以前的用药者控制得更好。而且他会极危险！~
= ~我——我在这儿帮不上……尽量制伏他，可求你……尽量别杀他。~
DO ~Deactivate(Myself)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",27)~ THEN C0DEDAL quest3-27
~够了，弗里茨。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",28)~
== C0AFRITZ ~主……主管……~
== C0DEDAL ~*叹气* 你不顾我意愿用了泰坦新配方，弗里茨，正如我所怕。你现在有什么症状？~
== C0AFRITZ ~我……我还好。~
== C0DEDAL ~我要知道实情。慢慢说。~
== C0AFRITZ ~那，我……四肢灼痛，体内疼……头痛……~
== C0DEDAL ~你能走吗？~
== C0AFRITZ ~我……我想能。~
== C0DEDAL ~去医者那儿。没好全之前不许离开。~
== C0AFRITZ ~可是——~
== C0DEDAL ~这儿我接手。去吧。~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(2)
ActionOverride("C0AFRITZ",EscapeAreaObject("FixedExit"))
Wait(4)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",28)~ THEN C0DEDAL quest3-28
~我知道你们为何而来。奥瑞莉亚在等你们。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",29)~
== C0ALUNA ~叔叔……~
== C0DEDAL ~进来。~
DO ~ActionOverride("C0ALUNA",EscapeAreaObject("Exit1"))
EscapeAreaObject("Exit1")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",31)~ THEN C0AURA2P quest3-31
~哦……<CHARNAME>。你来了。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",32)~
END
  ++ ~你没事吧，奥拉？~ EXTERN C0AURA2P quest3-31-1
  ++ ~看来你没受伤。那就好。~ EXTERN C0AURA2P quest3-31-1
  ++ ~你在这儿做什么？~ EXTERN C0DEDAL quest3-31-2

CHAIN C0AURA2P quest3-31-1
~是……我——我没事。我知道不管怎样，叔叔绝不会想害我。~
EXTERN C0DEDAL quest3-31-2

CHAIN C0DEDAL quest3-31-2
~我想我该向你道歉，无意间误导了你。我的本意不是危及奥瑞莉亚，也不是让你为这误会担心。~
== C0AURA2P ~我没有被虐待或威胁，我只是……被震住了。我曾以为这样的机械只是理论……如今我身边满是这些东西。就像古老传说忽然成真。~
== C0AURA2P ~叔叔……他把一切都告诉我了。这地方的真相、因特里图斯的真相，还有我们故乡的真相。还有这里造出的一切。之后，我同意跟他来。可是……~
== C0DEDAL ~这座工坊由我亲自监督，艾罗奇不知情。因此，这里的一切只留给我最信得过的人。虽我大侄女是奥库卢斯执法者，我相信奥瑞莉亚能明白我的看法……还有露娜。~
== C0ALUNA ~原谅我，叔叔。~
== C0DEDAL ~你不必求原谅。正如你信我的判断，我也信你的。~
DO ~StartCutSceneMode()
Wait(1)
FaceObject("C0DEDAL")
Wait(1)
ActionOverride("C0AURA",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",32)~ THEN C0AURA2P quest3-32
~在给你答复之前，叔叔，我得直接问你……你真的是监察官？~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",33)~
== C0DEDAL ~……~
== C0DEDAL ~是。~
== C0AURA2P ~*叹气* 我怕就是这样……叔叔，你为什么要这样？~
== C0DEDAL ~正如我一贯对你说的。我做的一切都为兰坦。~
== C0AURA2P ~我知道。这从没变过，这也是你绝不会撒谎的事。可话虽如此……叔叔，我仍不认同你的道理。~
== C0DEDAL ~继续说。~
== C0AURA2P ~你说你确信兰坦的未来、确信我们能免受外邦未来的威胁时，我起初并不全信……我承认，今天所见让我觉得那有可能。可我仍不认为这是对的法子。~
== C0DEDAL ~不。我想不只你，故乡每一个人都会持同样看法。~
== C0DEDAL ~这很自然——我们兰坦人精通许多行当，可战争从来不在其中。我们对战争与冲突有天生的厌恶，可正因为不懂它，我们才自满了。~
== C0AURA2P ~这我不反对，叔叔。自从踏上旅途，我对世界懂了许多，我知道别人的意图未必总是纯正，可是——~
== C0DEDAL ~够了。你不必解释，我完全明白。~
== C0DEDAL ~说实话，知道你离开兰坦的日子把你磨得冷硬，我并不怎么高兴，奥瑞莉亚。我们血亲关系也许远，可我记得你的成长，毕竟你自出生起就是凯罗斯宠爱的孩子。~
== C0DEDAL ~三岁时你就显出学习的天分。到少年时，你的记忆与创新上的悟性让每一位老师都惊叹。~
== C0DEDAL ~等你在桑巴尔学院读完，兰坦每个公会都邀你入他们的圈子。你各方面都被视为奇才，也得到了配得上你本事的特权。~
== C0AURA2P ~那……叔叔，我从没——~
== C0DEDAL ~你误会了，奥瑞莉亚。我不是要批评你。若由我做主，我们故乡所有有灵感的头脑都该得同样的待遇。~
== C0DEDAL ~我只想让你明白，养育你的人一贯的目标就是把你留在兰坦，好让你的天赋反过来富国。那……尤其是凯罗斯的愿望。~
== C0AURA2P ~爸爸……可他一直支持我的愿望。连我决定要离开兰坦时，他也……~
== C0DEDAL ~确实。你年少时宣告你的志向是用知识不只帮兰坦、还要帮整个世界，你父亲选择全力支持你，甚至批准你周游世界。~
== C0AURA2P ~我从不知道……~
== C0DEDAL ~我也赞同他。你还记得第十一工坊造完你的弓那天，我对你说的话吗？~
== C0AURA2P ~“兰坦铸造的武器，必须永远准备着被举起，以守护兰坦人的理想”。~
== C0DEDAL ~对。可我从没告诉你，我们必须防备谁。我相信你见了世界，终会找到答案。你找到了吗？~
== C0AURA2P ~我……我不确定。~
== C0DEDAL ~我也料想如此。这问题难答。可这儿有一个人能比我教得更好。~
== C0ALUNA ~……~
== C0AURA2P ~露娜？~
== C0DEDAL ~明白外邦世界之多的，不只你一个，孩子。~
== C0DEDAL ~你走后，贡德教会任命露娜作艾罗奇的代言人；而你通过旅行认识了外邦人……她也接触了许多自愿来兰坦的人。~
== C0ALUNA ~行了，叔叔。我……我自己跟她说。~
== C0ALUNA ~我当代言人以来，就得会见诸国度来的人。表面上是建立友好关系，实际上是揣度那些想了解我们者的意图。作为祭司，我学会了筛出谁可信、谁有……别的意图。~
== C0AURA2P ~我……我想我现在明白了。露娜，你见过威胁……那些觊觎我们所有、我们的知识与造物的人……~
== C0ALUNA ~*点头*~
== C0ALUNA ~不止如此，我见过……那些不懂我们行事的人如何看待我们。他们若为启蒙或改进求知，哪怕只为自身，我也能理解……可随着时间过去，我只看见越来越多的人把我们造的东西单纯当作工具与武器，用于他们贪婪自私的目的。~
== C0ALUNA ~这让我愤怒。最终，尽管我绝不会支持那些人的做法……我开始明白那些憎恨故乡之外一切之人的逻辑。~
== C0AURA2P ~那时你决定支持叔叔？~
== C0DEDAL ~相反，是我找的她。我怕若无人干预，露娜终会得出那种结论，于是逐渐把自己的目标告诉她，好让她安心。自那以后，她以贡德教会高等祭司的身份给了我所能给的支持。~
== C0AURA2P ~可……为什么？叔叔，你为什么要瞒着艾罗奇做这一切……？你既在意故乡，那你不该——~
== C0DEDAL ~要回答这个……也许我该问你的领队一个假设。 <CHARNAME>，可否借你一点时间。~
== C0DEDAL ~若有朝一日，烛堡被外力盯上，或为它的知识，或因为它被视为威胁……你会怎么做？~
END
  ++ ~当然保卫我的家。~ EXTERN C0DEDAL quest3-32-1
  ++ ~烛堡我才不在乎。~ EXTERN C0DEDAL quest3-32-2
  ++ ~我不想卷进这场家族争执。~ EXTERN C0DEDAL quest3-32-2

CHAIN C0DEDAL quest3-32-1
~而图书馆内掌权的人，会考虑开战的可能吗？~
END
  ++ ~不会。~ + quest3-32-3
  ++ ~乌尔劳恩特和泰斯托里尔那两个老家伙？难说。~ + quest3-32-3

CHAIN C0DEDAL quest3-32-2
~那就这样。不管怎样我都要把话说完。~
EXTERN C0DEDAL quest3-32-4

CHAIN C0DEDAL quest3-32-3
~确实。烛堡只求保存、保护其知识，凭魔法与谨慎，多年来一直成功。尽管如此，据我所知，它在你自己需要时仍没能帮你。~
EXTERN C0DEDAL quest3-32-4

CHAIN C0DEDAL quest3-32-4
~再强的防御，作为预防也只能做这么多。烛堡是坚固的堡垒，可它仍被冲突留下了印记。而我们的故乡兰坦……根本不能跟烛堡相比。~
== C0DEDAL ~我相信你自己已看得很清，奥瑞莉亚。尽管奥库卢斯全力而为，国家的机密仍不可避免地外泄到外邦，有些甚至是族人自己经手。~
== C0DEDAL ~我们族人继续工作时，冲突正蹂躏诸国度，而他们只盼它永不波及我们的海岸。我们以怪人与研究者的形象示人，古怪却无害……可那不可能一直维持。~
== C0AURA2P ~……~
== C0ALUNA ~……~
== C0DEDAL ~我无疑相信我们族人的未来握在像你这样心性纯正者手里，奥瑞莉亚。可若诸国度其余地方终于找上我们，而我们族人却发现自己早已落后，那有多少像你这样的人还能继续活着？~
== C0AURA2P ~我……~
== C0DEDAL ~奥瑞莉亚，我不指望你在此给我答案，正如我不能指望艾罗奇给。我不愿把这个问题强加给任何热爱故乡的人。这是重担，该由尽可能少的人扛。可我们不能靠回避真相背叛家园，正如我们也不能在其他任何知识领域里靠无知活着。~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("c0acut23")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",33)~ THEN C0AJUNO quest3-33
~让我尽我所能回答你吧，叔叔。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",34)~
== C0DEDAL ~朱诺。~
== C0AJUNO ~请放下武器。我们已拘留了工坊所有的建造者与守卫。别让事情更难办。~
== C0DEDAL ~我相信你没伤他们任何人。~
== C0AJUNO ~当然没有。他们是你最老、最忠的工人。许多我认得出名字与面孔。连我也不忍心。~
== C0DEDAL ~谢谢。~
== C0AJUNO ~我听得够多，明白大概了，叔叔。尽管这在兰坦人看来是最重的越界……我不能否认你全部的道理。身为奥库卢斯，我很清楚我们自己的知识对我们有多危险。~
== C0AJUNO ~而且听来我妹妹们自己也学到了这艰难的一课……虽说我倒希望某人能信任我，也把自己的疑虑告诉我，别把我蒙在鼓里。~
== C0ALUNA ~……~
== C0AJUNO ~我妹妹们也许还不懂冲突与战争，抓不住你的意图，叔叔，可我想我明白得够了。你并不比这屋里任何兰坦人更希望这些武器被使用。这是威慑的工具，是对外界的警告——若贪婪或野心之辈视我们为好猎，我们并非毫无准备。~
== C0AJUNO ~而且，就算最坏情形发生，这些武器也是你秘密的对策，好让我们自己的土地上流尽可能少的血。我错了吗？~
== C0DEDAL ~……这是最合乎逻辑的结论。~
== C0AJUNO ~由此可以推想……这不是你在兰坦之外唯一的工坊，对吧？~
== C0AURA2P ~什么？！~
== C0DEDAL ~……~
== C0DEDAL ~不。~
== C0ALUNA ~那……连我都从不知道这事……叔叔，你这样有多久了……~
== C0AJUNO ~*叹气* 叔叔……~
== C0AJUNO ~先不管你的处境一秒比一秒难看，我得问……这样你指望为族人成就什么？~
== C0AJUNO ~给我们一件对抗冲突的武器，你几乎是在把冲突请到家门口。若真有人像你信的那样贪求权势与资源，一旦他们知道我们真能做到什么……不管出于贪婪、嫉妒还是疑惧，战争对所有兰坦人都将不可避免，不管他们愿不愿意。~
== C0AJUNO ~你所做的只是确保我们眼下握有一件对付未来之敌的有效武器……可连那也维持不了。我们难道全得把注意与研究转向冲突，继续喂养你造出的那头兽？~
== C0DEDAL ~……~
== C0AJUNO ~你也许不知道，叔叔，可我当初向教会推荐露娜作代言人时，我真希望她的位置能让我族人找到愿意互利共富的可信盟友。~
== C0AJUNO ~事后看，也许我太天真，没考虑那对我妹妹的影响……她竟觉得有必要支持你的事业，这错在我。~
== C0ALUNA ~不，朱诺……~
== C0AJUNO ~可我相信兰坦人若有未来，那不是靠孤身而立能看见的。你的法子最好也只让我们显得自私自利，最坏则成诸国度的潜在之敌。~
== C0ALUNA ~我，我……~
== C0ALUNA ~我……我同意朱诺，叔叔。我决定支持你，是因为我真为故乡害怕……可若那只是因为我没法完全信任别人，那我一直就在犯大错。我不想看到流血对我族人变得像对我如此惧怕的那些人一样自然。~
== C0AURA2P ~我也同意。叔叔，兰坦人该如何为未来做准备，我给不出答案，可绝不是这个。你也许是我认识的最博学的兰坦人，也是我最敬重的导师之一……你一定能看出这点。~
== C0AURA2P ~<CHARNAME>……你不是兰坦人，可你在旅途中教了我许多，不管有意无意……你看事情跟我一样，对吧？~
END
  ++ ~是。你叔叔是在危害你的故乡，不是保护它。~ EXTERN C0DEDAL quest3-33-1
  ++ ~这与我无关。别把我算进去。~ EXTERN C0DEDAL quest3-33-2
  ++ ~我其实赞同你叔叔的立场。~ EXTERN C0DEDAL quest3-33-2

CHAIN C0DEDAL quest3-33-1
~你，<CHARNAME>？外邦事务虽还没波及兰坦，可我听过许多剑湾的冲突，你曾参与对抗。~
= ~你没亲眼见过点燃敌对国家间战火有多容易吗？当生存的需要被用作征服他人的借口，只因为胜利看来可能？~
END
  ++ ~确实——我见过。可我也见过两国多容易被操纵到战争边缘。只需双方都相信对方会先动手。你是在给每一个你惧怕的国家对你动手的理由。~ + quest3-33-2
  ++ ~你也许有理。可你若以为解决办法是把刀架在威胁你的人脖子上，那你只是在向别人证明，你才是那个该被惧怕的威胁。~ + quest3-33-2
  ++ ~你说得对。正因如此我才能说，你只是在重复我见过的那些人犯过的错，规模却大得多。趁你还没招来你想防的后果，停手吧。~ + quest3-33-2
  ++ ~那不重要。现在你必须被阻止，而理由就在我眼前。~ + quest3-33-3

CHAIN C0DEDAL quest3-33-2
~嗯。~
== C0AURA2P ~叔叔，求你听。我见过导致冲突的那种混乱。我知道若我们继续什么都不做，族人会变成什么样。可我们——所有兰坦人——得一起找出更好的路。你不必一个人替全国扛这担子。~
EXTERN C0DEDAL quest3-33-3

CHAIN C0DEDAL quest3-33-3
~……够了。~
= ~我不能否认你的道理有根据，正如我的也有。可我们虽在谈假设，真相不到显露之时无法确知。~
= ~我若现在停手，我建立的一切都将成空。而若未来真如我所惧、我们毫无准备……那才是我真正会后悔的。~
= ~可你忠于你的事业，所以在你看来，身为兰坦人和奥库卢斯执法者，我现在是你的敌人，朱诺。你若想用武力抓我，别犹豫。~
== C0ALUNA ~求你别这样，叔叔……~
== C0AJUNO ~叔叔，你若选择抵抗，或更糟，把这些自动机械转向我们……那就免不了此地流兰坦人的血。而我也必须把你——佩剑的本事远胜于我——视为实体威胁，并相应行事。这真是你想要的？~
== C0DEDAL ~你想得很仔细，朱诺，可你的道理根基有误。我是发明家，不是战士。我对可能的一战并非毫无准备，可我只能以发明家的方式行事。~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(2)
ForceSpellRES("c0aqef20",Myself)
Wait(4)
ActionOverride("C0ALUNA",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",34)~ THEN C0ALUNA quest3-34
~这——这到底是九层地狱里的什么……？！~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",35)~
== C0AGNO03 ~啊啊啊……！~
== C0AURA2P ~那……那重力……被改了……一切都好重……~
== C0AJUNO ~那是……惯性引擎……？不可能……什么时候完工的？！我们从没收到过相关报告！~
== C0DEDAL ~我知道你的探员就在第十一工坊的人里，朱诺。这是可以理解的必要，可因特里图斯也起了同样必要的作用。我本想改造他们，给他们机会正经服务国家……可惜没法压住他们的野心。~
== C0AGNO04 ~我……我动不了……~
== C0DEDAL ~别担心。我无意伤害你们任何一人。可我不能让我的工作今天终结，所以我必须做我该做的。等我做好一切必要准备来弥补这次挫折，就会放你们。~
== C0ALUNA ~叔叔……停手……~
== C0AURA2P ~<CHARNAME>……你……能动胳膊吗？~
END
  ++ ~也许……你有办法吗？~ EXTERN C0AURA2P quest3-34-1
  ++ ~勉强……若我拼尽全力……~ EXTERN C0AURA2P quest3-34-1
  ++ ~我用不了武器，如果你是这意思……~ EXTERN C0AURA2P quest3-34-1

CHAIN C0AURA2P quest3-34-1
~我……我口袋里有颗CL-2手雷……想办法够到它，打开机构……也许能扰乱这力场……~
END
  ++ ~那管用吗？~ EXTERN C0AURA2P quest3-34-2
  ++ ~好，我试试……~ EXTERN C0AURA2P quest3-34-3

CHAIN C0AURA2P quest3-34-2
~我……我不知道……可值得一试……~
EXTERN C0AURA2P quest3-34-3

CHAIN C0AURA2P quest3-34-3
~拔掉拉环，尽量往前推……现在！~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(2)
ActionOverride(Player1,ReallyForceSpellRES("c0aqef21",Myself))
SmallWait(10)
CreateVisualEffectObject("C0ATHUND","Aura Golem 1")
CreateVisualEffectObject("C0ATHUND","Aura Golem 2")
CreateVisualEffectObject("C0ATHUND","Aura Golem 3")
CreateVisualEffectObject("C0ATHUND","Aura Golem 4")
CreateVisualEffectObject("C0ATHUND","Aura Golem 5")
CreateVisualEffectObject("C0ATHUND","Aura Golem 6")
Wait(3)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",35)~ THEN C0AURA2P quest3-35
~呼……真不敢信这法子竟成了。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",36)~
== C0DEDAL ~……有意思。~
== C0DEDAL ~看来这能量模式仍易受干扰……妙。我没想到我会漏掉这样的缺陷。~
== C0DEDAL ~而且是拿一颗反机械手雷？还是原型的改进型号……你长进很大，奥瑞莉亚。我记得你曾多么避讳武器。~
== C0AURA2P ~是你教的，叔叔。你在第十一工坊批准造我的太阳射手那天……你告诉我，要成功，就得接受一切形态的知识。~
== C0DEDAL ~确实。奇怪的是，就算现在，我也不后悔教了你这一课。~
== C0DEDAL ~……看来自动机械也没反应了。我最后的防御手段真的崩溃了。*轻笑* 我想我该骄傲。~
== C0ALUNA ~叔叔……~
== C0AJUNO ~投降吧，叔叔。再抵抗毫无意义，只会让你的判决更重。我也不想当那个把彻底垮台的消息带给父亲的人。~
== C0AURA2P ~求你……为我们所有人做吧。我们——格利默夏恩一族所有人——一直敬慕你。别让事情更糟。~
== C0DEDAL ~……~
== C0DEDAL ~好。看来我选择用尽。再抵抗无用。~
== C0ALUNA ~……啊……谢天谢地……~
== C0AJUNO ~谢谢你，叔叔。也谢你相助，<CHARNAME>。我怀疑没你帮忙，事情不会这么顺。剩下的我们来处理。~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUT24")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",36)~ THEN C0ALUNA quest3-36
~出——出什么事了？叔叔，你在做什么？！~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",37)~
== C0AURA2P ~那……不可能！CL-2 该让它们失能！它……它从没失灵过！我……叔叔，求你停手！你已答应投降了！~
== C0AJUNO ~该死，关掉它们，叔叔！马上！~
== C0AURA2P ~等——等等……朱诺？我——我想他不是……~
DO ~ClearAllActions()
StartCutSceneMode()
ActionOverride("Aura Golem 2",SetSequence(SEQ_ATTACK_SLASH))
ActionOverride("C0DEDAL",FaceObject("Aura Golem 2"))
Wait(1)
ActionOverride("Aura Golem 4",SetSequence(SEQ_ATTACK_SLASH))
ActionOverride("C0DEDAL",FaceObject("Aura Golem 4"))
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",37)~ THEN C0AURA2P quest3-37
~叔叔……？叔叔，说话！~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",38)~
== C0DEDAL ~为什么……为什么这样……~
== C0AJUNO ~我们怎么停住它们，叔叔？这不都是你做的吗？！~
== C0DEDAL ~我的主控……它们不响应了……~
== C0AGOL02 ~威胁已分析。目标在射程内。~
== C0AGOL02 ~监察官原定指令现将执行。在场者一律清除。~
== C0DEDAL ~这是……一开始就打算的……？你……你这蠢货……~
== C0ALUNA ~这——哦，神啊，该死！奥拉、朱诺，退后！那台正朝你们去！~
== C0DEDAL ~不——！~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUT25")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",38)~ THEN C0ALUNA quest3-38
~啊——啊啊！~ [C0BLANK]
== C0AURA2P ~叔叔！~
== C0AJUNO ~啊，该死！伙计们，就位，把所有人护送出去，快！我们在外头跟探员会合，布置正经防御！~
DO ~TriggerActivation("Exit3",FALSE)
AmbientActivate("Animation 1",TRUE)
ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ACUT26")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",38)~ THEN C0AGNO06 quest3-38-1
~不……不行，女士！门忽然封死了！我们被困住了！~
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",39)~
== C0AJUNO ~真是……！那就硬来。 <CHARNAME>，我们得打倒这些失控的自动机械！护住我妹妹！露娜，别靠近战斗！打完后我们需要你处理伤员！~
== C0ALUNA ~我……好！当心！~
== C0AURA2P ~我跟你一起，<CHARNAME>！~
END
IF ~NumInPartyLT(6)~ DO ~StartCutSceneMode()
ActionOverride("Aura Golem 2",SetSequence(SEQ_AWAKE))
ActionOverride("Aura Golem 1",Enemy())
ActionOverride("Aura Golem 3",Enemy())
ActionOverride("Aura Golem 4",Enemy())
ActionOverride("Aura Golem 5",Enemy())
ActionOverride("Aura Golem 6",Enemy())
ActionOverride("C0ALUNA",ChangeEnemyAlly(Myself,GOODBUTBLUE))
ActionOverride("C0ALUNA",ReallyForceSpellRES("c0aqef23",Player1))
ActionOverride("C0ALUNA",SmallWait(1))
ActionOverride("C0ALUNA",MoveToPoint([649.1243]))
ActionOverride("C0ALUNA",SmallWait(1))
ActionOverride("C0ALUNA",Face(N))
ActionOverride("C0AJUNO",ChangeEnemyAlly(Myself,GOODBUTBLUE))
EndCutSceneMode()
JoinParty()~ EXIT
IF ~!NumInPartyLT(6)~ DO ~StartCutSceneMode()
ActionOverride("Aura Golem 2",SetSequence(SEQ_AWAKE))
ActionOverride("Aura Golem 1",Enemy())
ActionOverride("Aura Golem 3",Enemy())
ActionOverride("Aura Golem 4",Enemy())
ActionOverride("Aura Golem 5",Enemy())
ActionOverride("Aura Golem 6",Enemy())
ActionOverride("C0ALUNA",ChangeEnemyAlly(Myself,GOODBUTBLUE))
ActionOverride("C0ALUNA",ReallyForceSpellRES("c0aqef23",Player1))
ActionOverride("C0ALUNA",SmallWait(1))
ActionOverride("C0ALUNA",MoveToPoint([649.1243]))
ActionOverride("C0ALUNA",SmallWait(1))
ActionOverride("C0ALUNA",Face(N))
ActionOverride("C0AJUNO",ChangeEnemyAlly(Myself,GOODBUTBLUE))
EndCutSceneMode()
ApplySpellRES("c0aqef24",Myself)
ChangeEnemyAlly(Myself,ALLY)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",40)~ THEN C0ALUNA quest3-40
~呃……终于结束了。多可恨的一堆破烂……~
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",41)~
END
IF ~Dead("C0Aura")~ EXTERN C0ALUNA quest3-40-dead
IF ~InParty("C0Aura")~ EXTERN C0AURA2J quest3-40-1J
IF ~!InParty("C0Aura")~ EXTERN C0AURA2P quest3-40-1P

CHAIN C0ALUNA quest3-40-dead
~啊——不！奥拉……该死！这全怪我！~
DO ~SetGlobal("C0AuraBG2Quest3Resurrection","GLOBAL",1)~
== C0AJUNO ~冷静，露娜。记得你的训练。你这些年跟贡德祭司学的就是为这个。你行吗？~
== C0ALUNA ~我……也许……不，我必须做。安静，让我试。~
DO ~ClearAllActions()
StartCutSceneMode()
ForceSpell("C0Aura",CLERIC_RESURRECTION)
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",41)
Global("C0AuraBG2Quest3Resurrection","GLOBAL",1)~ THEN C0ALUNA quest3-40-raise
~哦……谢谢你，贡德大人……我真高兴……~
DO ~SetGlobal("C0AuraBG2Quest3Resurrection","GLOBAL",2)~
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~呃……出了什么事？我……我是刚被复活的？打完了？~
== C0AURA2P IF ~!InParty("C0Aura")~ THEN ~呃……出了什么事？我……我是刚被复活的？打完了？~
== C0AJUNO ~哈……是，小妹妹，打完了。谢奇迹缔造者，你还没死。~
END
IF ~InParty("C0Aura")~ EXTERN C0AURA2J quest3-40-1J
IF ~!InParty("C0Aura")~ EXTERN C0AURA2P quest3-40-1P

CHAIN C0AURA2J quest3-40-1J
~那……那戴达罗斯叔叔呢？他为护我挨了一下……求你别告诉我他……~
EXTERN C0AJUNO quest3-40-2

CHAIN C0AURA2P quest3-40-1P
~那……那戴达罗斯叔叔呢？他为护我挨了一下……求你别告诉我他……~
EXTERN C0AJUNO quest3-40-2

CHAIN C0AJUNO quest3-40-2
~……露娜，我们去看看。~
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",42)
StartCutSceneMode()
ActionOverride("C0ALUNA",MoveToObjectOffset("C0DEDAL",[30.0]))
ActionOverride("C0ALUNA",SmallWait(1))
ActionOverride("C0ALUNA",FaceObject("C0DEDAL"))
MoveToObjectOffset("C0DEDAL",[30.0])
SmallWait(1)
FaceObject("C0DEDAL")
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",42)~ THEN C0AJUNO quest3-42
~他活着。看来今天我们有许多要感谢的。那一击很重，可看来他特殊的剑分掉了些冲击，勉强救了他的命。~
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",43)~
== C0ALUNA ~我——我这就带他去治。封死门后的机构看来也已失能。~
== C0AJUNO ~是，去吧，妹妹。我来处理这地方的善后。外头也有活动着的自动机械——很可能也像其余那些一样失控了。我只希望对付它们时没损失太多探员。~
== C0AJUNO ~<CHARNAME>，歇口气，处理下你的伤。我们在外头等你。~
END
IF ~InParty("C0Aura")~ DO ~ActionOverride("C0AGNO03",EscapeAreaObject("Exit3"))
ActionOverride("C0AGNO04",EscapeAreaObject("Exit3"))
ActionOverride("C0AGNO06",EscapeAreaObject("Exit3"))
ActionOverride("C0AGNO07",EscapeAreaObject("Exit3"))
ActionOverride("C0Dedal",DestroySelf())
ActionOverride("C0ALuna",EscapeAreaObject("Exit3"))
EscapeAreaObject("Exit3")~ EXIT
IF ~!InParty("C0Aura")~ DO ~ActionOverride("C0Aura",EscapeAreaObject("Exit3"))
ActionOverride("C0AGNO03",EscapeAreaObject("Exit3"))
ActionOverride("C0AGNO04",EscapeAreaObject("Exit3"))
ActionOverride("C0AGNO06",EscapeAreaObject("Exit3"))
ActionOverride("C0AGNO07",EscapeAreaObject("Exit3"))
ActionOverride("C0Dedal",DestroySelf())
ActionOverride("C0ALuna",EscapeAreaObject("Exit3"))
EscapeAreaObject("Exit3")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",44)~ THEN C0AJUNO quest3-44
~我的人已控制工坊，处理掉残余的敌对自动机械。看来我们都能再喘口气了。~
DO ~SetGlobal("C0AuraBG2Quest3","GLOBAL",45)~
== C0AJUNO ~最坏的过去了。如今最大的麻烦是我得写那份报告带来的头疼……~
== C0ALUNA ~……~
== C0AJUNO ~别那样看我。我不会因为一副可怜相就把你撇出去，露娜。可你是教会受敬重的探求者——很可能在这场烂摊子所有责任人里，你会被判得最轻。~
== C0ALUNA ~那……没让我好受些。~
== C0AJUNO ~好。那说明你也许终于长大了一点。~
== C0ALUNA ~那……其余那些工人呢？他们不该比我多受罚。叔叔没告诉他们这座工坊的细节。多数人并不知道自己在做错事。~
== C0AJUNO ~*叹气* 他们不可能一点后果都不担。就算他们只是听我叔叔的吩咐，他们仍明知故犯地参与了未经议会批准造武器。~
== C0AJUNO ~单是那门炮，若有一点证据流到安姆当局手里，就足以挑起战争。我还在想怎么把它运回兰坦而不被人发现。神啊，我不知道这儿的人都在想什么。这种威慑只在敌人造出更可怕的东西报复之前有效。~
== C0ALUNA ~他们只是……想为故乡做最好的。~
== C0AJUNO ~嗯，那他们在接下来几年被关的地方，肯定会好好“尽力”。所幸这事没造成不可逆的损害，所以那也许就是最重的判决。眼下只能猜。~
END
  ++ ~听来你对这些工人有些同情。~ EXTERN C0AJUNO quest3-44-1
  ++ ~他们很可能造成他们本想防的那场战争。~ EXTERN C0AJUNO quest3-44-2
  ++ ~那现在呢？~ EXTERN C0AJUNO quest3-44-4

CHAIN C0AJUNO quest3-44-1
~我真能怪他们的意图吗？我国的安全的确比任何人所猜的都更悬于一线，这并不假。表达类似忧虑的不只我叔叔。~
EXTERN C0AJUNO quest3-44-3

CHAIN C0AJUNO quest3-44-2
~这就是讽刺之处，你不觉得吗？并非历史上缺这类惨错。可我没法怪任何人，尽管结果本可能灾难性。~
EXTERN C0AJUNO quest3-44-3

CHAIN C0AJUNO quest3-44-3
~不管怎样，我有作为艾罗奇执法者的职责。奥库卢斯必须为兰坦的和平行事，不管我们个人感受如何。~
EXTERN C0AJUNO quest3-44-4

CHAIN C0AJUNO quest3-44-4
~我得开始计划把所有人带回家，包括我叔叔。谢谢你一切帮助，<CHARNAME>。没你在这儿，就算最好情形，我们也免不了更多伤亡。~
== C0AJUNO ~更别说……你来是为我小妹妹。除了军官的职责，我对家族的责任比什么都珍贵。我永远感激。~
END
  ++ ~不必谢我。我只是帮一位亲近的同伴。~ EXTERN C0AJUNO quest3-44-5
  ++ ~我猜这份感激不会附带报酬吧？~ EXTERN C0AJUNO quest3-44-6

CHAIN C0AJUNO quest3-44-5
~我妹妹有幸找到这样可靠的朋友。我得承认，我起初并不热衷她离开我的保护去远行，可……看她所得，我知道那到底是最好的。我看得出在你带领下她长进很大。~
== C0AJUNO IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~也许她所得的不止友谊……我希望她需要你时，你总在她身边。~
== C0AURA2J IF ~Global("C0AuraRomanceActive","GLOBAL",2) InParty("C0Aura")~ THEN  ~朱——朱诺……我就在这儿呢。你不觉得有点让我难为情吗？~
== C0AURA2P IF ~Global("C0AuraRomanceActive","GLOBAL",2) !InParty("C0Aura")~ THEN  ~朱——朱诺……我就在这儿呢。你不觉得有点让我难为情吗？~
== C0AJUNO IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~哈哈……说得也是。不过我指望将来从你自己口中听到这些。~
== C0AJUNO ~我回兰坦后会把你在此的英勇全告诉我父母，<CHARNAME>。你永远是格利默夏恩一族的朋友；你若愿意来我们故乡，我们家门永远为你开。~
== C0ALUNA ~谢谢你。为这一切。~
END
IF ~InParty("C0AURA")~ EXTERN C0AURA2J quest3-44-7j
IF ~!InParty("C0AURA")~ EXTERN C0AURA2P quest3-44-7p

CHAIN C0AJUNO quest3-44-6
~轮不到我提供报酬，可我不能否认你该得些更实在的东西。等我们处理完这工坊，我会设法安排。眼下，让我尽长姐的本分。~
EXTERN C0AJUNO quest3-44-5

CHAIN C0AURA2J quest3-44-7j
~顺便……戴达罗斯叔叔呢？他回故乡后会怎样？~
EXTERN C0AJUNO quest3-44-8

CHAIN C0AURA2P quest3-44-7p
~顺便……戴达罗斯叔叔呢？他回故乡后会怎样？~
EXTERN C0AJUNO quest3-44-8

CHAIN C0AJUNO quest3-44-8
~……~
== C0ALUNA ~……~
== C0AJUNO ~没法说得委婉。叔叔的作为违背艾罗奇定的律法。就算他本意不是夺权或在外邦制造混乱，议员们也不会宽待他。而我太了解他，知道他不会试图轻描淡写自己的作为。~
== C0AJUNO ~他的判决无疑是不定期的拘禁……若他运气好、艾拉们同情他，至少能在自己家中舒适地服刑。若不然……他会被送往忏悔圣所。~
== C0AURA2J IF ~InParty("C0Aura")~ THEN  ~不……不要那儿……~
== C0AURA2P IF ~!InParty("C0Aura")~ THEN  ~不……不要那儿……~
== C0AJUNO ~我不能确定会是怎样。也许父亲能为他辩护几句……可考虑到他如今是议会候选人，最好不要。而露娜身为贡德教会的人也不能替他说话，因为她自己也牵涉其中。~
== C0ALUNA ~……我真蠢。若我当初劝住他而不是支持他……~
== C0AJUNO ~事已如此。我们只能尽力往好处办。叔叔身为军械发明首席奇械师，在兰坦人中不算最受欢迎，可仍有不少高位匠师敬重他。若有几位开口，也许仍有希望。~
== C0AURA2J IF ~InParty("C0Aura")~ THEN  ~……他醒了吗？~
== C0AURA2P IF ~!InParty("C0Aura")~ THEN  ~……他醒了吗？~
== C0ALUNA ~是，不久前醒了。我尽力治了他的伤。他走不久，可我们俩已有机会跟他谈了谈。~
== C0AJUNO ~你若想在我们带他回兰坦前也跟他说几句，有机会。~
== C0AJUNO ~前提是你不会很快跟我们回故乡。~
== C0AURA2J IF ~InParty("C0Aura")~ THEN  ~我……~
== C0AURA2P IF ~!InParty("C0Aura")~ THEN  ~我……~
== C0AJUNO ~我猜得对吗？~
== C0AURA2J IF ~InParty("C0Aura")~ THEN  ~……嗯。~
== C0AURA2P IF ~!InParty("C0Aura")~ THEN  ~……嗯。~
== C0AJUNO ~哈哈。你也许长大了，奥拉，可我还是能像你小时候一样把你的脸当书读。别担心。我知道你在做你认为必须做的事。~
== C0AJUNO ~我手上没有这么要紧的任务，就会跟你去，可我看得出<CHARNAME>会护你平安。~
== C0ALUNA ~对。家里的事我们来理。只是别再在外头待六年，不然父母真会开始担心。~
== C0AURA2J IF ~InParty("C0Aura")~ THEN  ~嘿嘿……我知道。替我向他们问好，好吗，露娜？~
== C0AURA2P IF ~!InParty("C0Aura")~ THEN  ~嘿嘿……我知道。替我向他们问好，好吗，露娜？~
== C0ALUNA ~好，我确定他们收到会很高兴。~
== C0AJUNO ~*咳！*~
== C0ALUNA ~那——那就是说……我一定带到，小妹妹。而且不管出了什么事……我很高兴再见到你。~
== C0AJUNO ~现在，别急着道别。我们还会在这儿一阵——毕竟理清这工坊里的一切得花些时间。你若需要什么，或只是想念你亲爱的姐姐们，别不好意思回来说声好。~
== C0AJUNO ~这话对你也一样，<CHARNAME>。~
END
  ++ ~我记着。~ EXTERN C0AJUNO quest3-44-9
  + ~InParty("C0Aura")~ + ~奥拉，你不想再多留一会儿？~ EXTERN C0AURA2J quest3-44-10
  ++ ~我们得走了。还有我们自己的事要做。~ EXTERN C0AJUNO quest3-44-9

CHAIN C0AJUNO quest3-44-9
~哦，趁我还没忘……我给你们每人都有东西。为我们的合作与新结的友谊，<CHARNAME>……也有给我妹妹的，补上我们错过的那些生日和庆祝。~
DO ~GiveItemCreate("C0AAMU1",Player1,1,0,0) GiveItemCreate("C0AMISC8","C0Aura",1,0,0)~
== C0AURA2J IF ~InParty("C0Aura")~ THEN  ~谢谢你，朱诺……你们在这儿和回去路上都照顾好自己。你也是，露娜。我爱你们俩。~
== C0AURA2P IF ~!InParty("C0Aura")~ THEN  ~谢谢你，朱诺……你们在这儿和回去路上都照顾好自己。你也是，露娜。我爱你们俩。~
== C0ALUNA ~别担心我们。该担心的是我们才对。~
DO ~AddJournalEntry(%Quest3_Entry_4%,QUEST_DONE) AddExperienceParty(60000)~
== C0AJUNO ~祝你好运，<CHARNAME>。护好我小妹妹。她是兰坦的珍宝、她族人的珍宝……更是我们的，胜过一切。愿贡德的祝福与你同在。~
END
IF ~!InParty("C0Aura")~ DO ~ActionOverride("C0Aura",JoinParty())~ EXIT
IF ~~ EXIT

CHAIN C0AURA2J quest3-44-10
~<CHARNAME>，你该更了解我了。我姐姐们在这儿会没事，你的处境糟得多。你该更乐意在需要时依靠我帮忙，你不觉得吗？~
== C0AJUNO ~你真的长大了。~
EXTERN C0AJUNO quest3-44-9

CHAIN IF WEIGHT #-1 ~AreaCheck("C0AU05")
Global("C0AuraBG2Quest3SpawnGuards","C0AU05",1)~ THEN C0AGNO03 quest3-45-uncle
~奥瑞莉亚女士。你是来跟戴达罗斯大人说话的吗？~
DO ~SetGlobal("C0AuraBG2Quest3SpawnGuards","C0AU05",2)~
== C0AURA2J ~我叔叔在里面？他没事吧？~
== C0AGNO03 ~他醒了，神志相当清楚。既然他没有挣扎的意思，照队长的要求，我们让他独自留在里头。可你若愿意，准许你去见他。~
== C0AURA2J ~……~
END
  ++ ~去吧，奥拉。我陪着你。~ EXTERN C0AURA2J quest3-45-uncle-1
  ++ ~你想单独跟他谈？~ EXTERN C0AURA2J quest3-45-uncle-2

CHAIN C0AURA2J quest3-45-uncle-1
~我们进去吧。~
DO ~SetGlobal("C0AuraBG2Quest3PostTalk","GLOBAL",1)
TriggerActivation("Exit1",TRUE)~ EXIT

CHAIN C0AURA2J quest3-45-uncle-2
~你若不在意，<CHARNAME>……我更希望你也跟我一起。~
EXTERN C0AURA2J quest3-45-uncle-1

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3PostTalk","GLOBAL",2)~ THEN C0DEDAL quest3-45-uncle2
~……~
DO ~SetGlobal("C0AuraBG2Quest3PostTalk","GLOBAL",3)~
== C0AURA2J ~叔叔……~
DO ~StartCutSceneMode()
ActionOverride("C0DEDAL",Face(NE))
Wait(1)
ActionOverride("C0DEDAL",Face(SE))
Wait(1)
ActionOverride("C0DEDAL",StartDialogNoSet(Player1))~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3PostTalk","GLOBAL",3)~ THEN C0DEDAL quest3-45-uncle3
~你来了。~
DO ~SetGlobal("C0AuraBG2Quest3PostTalk","GLOBAL",4)~
== C0AURA2J ~我……我觉得我该来看看你。这也许是往后很久最后一次……因为你很快就要回家了。~
== C0DEDAL ~虽说那不会是愉快的归乡。按理说，在我这处境，你不见我更好。你面前站着的，是日后会被记作兰坦最大异端与叛徒之一的人。~
== C0AURA2J ~……我不能否认我难过，叔叔。你曾教我，兰坦的任何发明都不该首先被当作武器。若信如此，就是背叛我们身为兰坦人的身份……正因如此，当我看见这一切、看见你的计划，我不敢信自己的眼睛。~
== C0AURA2J ~我不信你的作为是背叛。我知道，以你自己的方式，你护家的热忱从没变过。~
== C0AURA2J ~可是……叔叔，我仍认为你的法子终究错了。就算你成功，确保兰坦永不受外界野心与贪婪威胁……代价将是兰坦人如今的和平之道，而那是我们立国以来原则的根基。~
== C0DEDAL ~是……也许你说得对。成或败，我终究一样是叛徒，因为我犯的罪远比单纯危及故乡更重。我背叛了我们族人长久的努力，那推进知识、推动诸国度前行的愿望……而我从一开始就知道，从我以血玷污我们技艺之纯的那天就知道，我当时还自信那会反过来壮大我们。~
END
  ++ ~你既知道你的作为与兰坦所代表的一切相悖，为什么还坚持？~ EXTERN C0DEDAL quest3-45-uncle3-1
  ++ ~你也许本意最好，可你的手段伤了许多人，也伤了许多爱你、信你的人，比你知的多得多。~ EXTERN C0DEDAL quest3-45-uncle3-2
  ++ ~现在后悔你的作为，有点太迟了。~ EXTERN C0DEDAL quest3-45-uncle3-3

CHAIN C0DEDAL quest3-45-uncle3-1
~我相信若无人行动，我们终将失去远为更多的东西。不管我得牺牲什么——我自己、我们族人的行事之道——只要能防住更糟的事，就值得。也许有一天你会明白……哪怕你仍不赞同。~
EXTERN C0DEDAL quest3-45-uncle3-3

CHAIN C0DEDAL quest3-45-uncle3-2
~是……这我不能否认。我相信自己在做族人不敢做之事以保我们平安时，已准备好在我跟家人之间造出无法弥合的裂痕。在我所有疑虑中，这是最大的。~
EXTERN C0DEDAL quest3-45-uncle3-3

CHAIN C0DEDAL quest3-45-uncle3-3
~我不后悔为确保故乡仍是我们天真理想族人的乐土而做的牺牲。可我欠一个道歉，为我作为将对你家意味着什么，奥瑞莉亚。你我不同姓也许是最好，因为那也许能减轻你与凯罗斯在我被判后所受的审视。~
== C0AURA2J ~叔叔，你……你也是家人。我知道父亲会尽全力确保你的判决不太重。~
== C0DEDAL ~而那会让他失去议会席位的机会。不，我不能允许。我的计划已失败。若他有机会站在引导兰坦的位置上，那更大的未来就仍有希望。那比我的命运重要。~
== C0AURA2J ~可是——~
== C0DEDAL ~别误会，奥瑞莉亚。不管艾罗奇判我去哪儿，只要我还能呼吸、还能行动，我竭尽全力服务国家的愿望就不会变。我欠那片土地、那些人、欠你……也欠我父亲、母亲和格拉菲拉的在天之灵。~
== C0AURA2J ~我姑母……看到你如今的处境会难过。~
== C0DEDAL ~她绝不会赞同这事……这一整套。这我知道。可正因如此，正因像她这样的人、以及那些因心怀不纯者的野心而失去的人那种温柔心性……我再也受不了了。~
== C0DEDAL ~我想那也是我的缺陷。我长久视为最大美德的职责感，成了我致命的弱点。而它让我变得易于被人操纵。~
END
  ++ ~你现在是在暗示也有人操纵了你？~ EXTERN C0DEDAL quest3-45-uncle3-4
  ++ ~你在说什么？~ EXTERN C0DEDAL quest3-45-uncle3-5

CHAIN C0DEDAL quest3-45-uncle3-4
~哦，我没那么天真，不会试图替自己开脱，<CHARNAME>。我确曾深信这条路，我必须接受自己在其中的角色。~
EXTERN C0DEDAL quest3-45-uncle3-5

CHAIN C0DEDAL quest3-45-uncle3-5
~……~
DO ~StartCutSceneMode()
Wait(2)
Face(NW)
Wait(1)
Face(SE)
Wait(1)
MoveToPoint([1130.457])
Wait(1)
StartDialogNoSet(Player1)~ EXIT
/*
CHAIN C0DEDAL quest3-45-uncle3-6
~不管什么情形，过错终究在我。这是真相。我只是在想，我是否真有过我自以为的那么多掌控。回想那些造物多快就反噬我，看来我的防御比我想的脆弱得多。~
== C0AURA2J ~叔叔……这事真正背后是谁？自动机械袭击我们时，我就已在怀疑……那更像它们在执行别人预设的命令，而非真失控。而且你一直谈它们，像它们并非真属于你。~
== C0DEDAL ~……~
== C0DEDAL ~连这你都注意到了。看来我剩下的秘密不多了。~
== C0AURA2J ~你会告诉我吗，叔叔？不管怎样，我都不信你是自己得出“保护兰坦最好的方式是这种压迫手段”的结论。~
== C0AURA2J ~那不是你的本性，哪怕你造了这么多年毁灭性武器。一定有人说服了你。~
== C0DEDAL ~我本想瞒住你这件事，奥瑞莉亚。我若在此告诉你，你的看法会被偏见与主观污染，就算听见真相，你也不会理解。这事背后有你我甚至都无法知晓的东西。~
EXTERN C0DEDAL quest3-45-uncle3-5
*/
CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3PostTalk","GLOBAL",4)~ THEN C0DEDAL quest3-45-uncle4
~这个我给你。~
DO ~SetGlobal("C0AuraBG2Quest3PostTalk","GLOBAL",5)~
== C0AURA2J ~这是……你的剑，叔叔。你这些年随身带着的那把。我不能收！~
DO ~GiveItemCreate("C0AUSS01","C0AURA",1,0,0)~
== C0DEDAL ~反正它也不再由我执掌。从今往后我的职责会在我家的范围内，若非忏悔圣所的话。我作为我国之刃的日子结束了……也许我们需要的从来就不是一把刃。~
== C0DEDAL ~从今往后，身为兰坦真正的奇械师，该由你决定这件工具将服务于什么目的。~
/*== C0AURA2J ~我……~
== C0DEDAL ~还有。把剑柄尾端的石头取下来。~
DO ~GiveItemCreate("C0AMISC9","C0AURA",1,0,0)~
== C0AURA2J ~这是……这是什么，叔叔？~
== C0DEDAL ~把它当作……一把钥匙之类。你回故乡后，记得随身带着它，很快你就会发现它的用处。它会引你到第四工坊的遗迹。在那儿你也许能……明白一点。~
== C0AURA2J ~第四……？那座失落的工坊，从我们典籍里删去、没人提起的……叔叔，你知道它什么？~
== C0DEDAL ~它被遗忘，并非没有原因。记得它的少数兰坦人视其为罪恶的坟场……可对我来说，那是……你可以当作格拉菲拉昔日的圣园。~
== C0AURA2J ~格拉菲拉姑母……跟第四工坊有关？叔叔，什么……~
== C0DEDAL ~我说过，你找到它后也许会明白。它能解释的，比我的话多。~*/
== C0AURA2J ~……谢谢你，叔叔。~
== C0DEDAL ~眼下，去完成你认为最正确的职责。若那是支持<CHARNAME>，那就别让这些知识让你犹豫。~
== C0AURA2J ~我知道。~
== C0DEDAL ~很好。去吧……我觉得需要休息了。露娜已处理过我的伤，可正经复原还得时间。就算奇迹缔造者也许会责我，我以祂之名的祈祷仍会伴你旅途。~
== C0AURA2J ~我也祝你好，叔叔。走之前，我只想说最后一件事……谢谢你。谢谢你到最后还护着我。~
== C0DEDAL ~再会，奥瑞莉亚。~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("c0acut31")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3PostTalk","GLOBAL",5)~ THEN C0AURA2J quest3-45-uncle5
~那么……就这样吧，我想。不知要过多久才能再见他。~
DO ~AddJournalEntry(%Quest3_Entry_5%,QUEST_DONE) SetGlobal("C0AuraBG2Quest3PostTalk","GLOBAL",6)~
END
  ++ ~你没事吧，奥拉？~ EXTERN C0AURA2J quest3-45-uncle5-1
  ++ ~总的来说，他好像处理得不错。~ EXTERN C0AURA2J quest3-45-uncle5-2
  ++ ~那现在呢？~ EXTERN C0AURA2J quest3-45-uncle5-3

CHAIN C0AURA2J quest3-45-uncle5-1
~我没事，<CHARNAME>。说实话，我松了口气……我原担心事发后身心的损耗对叔叔影响更大……可他还像我历来所知的那样沉稳坚定。~
EXTERN C0AURA2J quest3-45-uncle5-3

CHAIN C0AURA2J quest3-45-uncle5-2
~我同意。事发之后他比我预想的过得更好。尽管我忍不住为他处境惋惜……我至少还是稍微安心。~
EXTERN C0AURA2J quest3-45-uncle5-3

CHAIN C0AURA2J quest3-45-uncle5-3
//~叔叔给我的最后那点知识让我有点不安……第四工坊，我们族人失落而被禁的知识……若格拉菲拉姑母真与它有关，我总有一天要查明真相。~
~我希望艾罗奇别判他太重……我知道他像任何人一样、甚至更在意我们的国家与我们所有人。也许我回家后能试着替他说话……~
= ~不过眼下，你的处境更重要，<CHARNAME>。等我终于回兰坦，再操心我自己的问题。我来跟叔叔最后谈过，我满足了。我们走吧。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest1","GLOBAL",54)
Global("C0AuraBG2Quest3","GLOBAL",45)
Global("C0AuraBG2Quest3MagnusTalk","GLOBAL",0)~ THEN C0AMAGN magnus-quest3
~我听说戴达罗斯被贡德之手扣下了。哎呀，哎呀……多可惜。~
DO ~SetGlobal("C0AuraBG2Quest3MagnusTalk","GLOBAL",1)~
END
  ++ ~你怎么知道的？~ EXTERN C0AMAGN magnus-quest3-1
  ++ ~你熟悉戴达罗斯？~ EXTERN C0AMAGN magnus-quest3-2

CHAIN C0AMAGN magnus-quest3-1
~里斯把经过告诉我了。你帮着做了对的事……可这故事收场终究可惜。~
EXTERN C0AMAGN magnus-quest3-2

CHAIN C0AMAGN magnus-quest3-2
~你知道，戴达罗斯是我两个最出色的学生之一。他和他妹妹格拉菲拉，学了我知识的全部根基，我知道他们能拿它成就伟业。可见“伟大”并不总等于“良善”。啧，啧……~
= ~如今我一个学生早不在了，另一个无疑要进忏悔圣所……看来我的传承只剩羊皮纸与墨迹了。没关系……真正的发明家该看重作品的结果，而非自己的名字。~
END
IF ~InParty("C0Aura") InMyArea("C0Aura")~ EXTERN C0AMAGN magnus-quest3-3
IF ~OR(2)
!InParty("C0Aura") !InMyArea("C0Aura")~ EXTERN C0AMAGN magnus-quest3-4

CHAIN C0AMAGN magnus-quest3-3
~奥瑞莉亚，我亲爱的姑娘……我要你收下这个。这是我多年炼金研究的结晶……我本另有打算，可我的门徒不在了，你也许最适合继承我的知识。我正经教导其他兰坦人的日子已过去，可我希望你能把我当老师，哪怕只是间接的。~
== C0AURA2J ~我……谢谢你，马格努森大师。~
DO ~GiveItemCreate("c0abook5","C0Aura",1,0,0)~ EXTERN C0AMAGN magnus-quest3-5

CHAIN C0AMAGN magnus-quest3-4
~<CHARNAME>，我的<PRO_GIRLBOY>，你再见到小奥瑞莉亚时，请把这个给她。我或许不再是兰坦的导师，可我希望我的著作永不被真正遗忘。我的门徒不在了，我得把这知识交给最有能力的继承者。~
DO ~GiveItemCreate("c0abook5",Player1,1,0,0)~ EXTERN C0AMAGN magnus-quest3-5

CHAIN C0AMAGN magnus-quest3-5
~那么，就这样。我得继续研究了。要做的事那么多，剩下的时间那么少……*咳* 愿你有个美好的<DAYNIGHTALL>。~
EXIT

/*
INTERJECT MGAPPR02 70 C0AuraBG2AppQuest
== C0AURA2J IF ~InParty("C0Aura")~ THEN ~嘿，<CHARNAME>？能借一步说话吗？~
END
  ++ ~当然。你想什么？~ EXTERN C0AURA2J C0AuraBG2AppQuest-1
  ++ ~现在不行，这事要紧。~ EXTERN MGAPPR02 71

CHAIN C0AURA2J C0AuraBG2AppQuest-1
~好，听我说，<CHARNAME>……这些孩子想做的活相当危险。就算以我造魔法物品的经验，我也做不到而不冒生命危险。~
== C0AURA2J ~我知道很诱人，可也许你该叫他们趁早收手，你懂？那样对大家都安全。~
END
  ++ ~你说得对。我不该让他们试这么危险的事。我去告诉他们。~ EXTERN MGAPPR02 71
  ++ ~等等，我另有主意。要是你帮他们完成制作过程呢？~ EXTERN C0AURA2J C0AuraBG2AppQuest-1
  ++ ~我要那份额外力量。他们只好担这风险。~ EXTERN C0AURA2J C0AuraBG2AppQuest-2

CHAIN C0AURA2J C0AuraBG2AppQuest-2
~这是坏主意，<CHARNAME>……造这类东西不光可能*弄死*人，也没有保证他们能完成。求你三思。~
EXTERN MGAPPR02 71

CHAIN C0AURA2J C0AuraBG2AppQuest-1
~我不知道……就算我帮他们，我也不能保证他们完工时毫发无伤……我也不能替他们做。不过……~
= ~我……想我可以教他们造点别的。按我自己的设计概念，造安全得多的东西。它大概不如他们书上那些强，可若够独特，它能~
END
  ++ ~你能教他们造什么样的东西？~ EXTERN C0AURA2J C0AuraBG2AppQuest-3
  ++ ~不必了。我不会要他们造任何东西。~ EXTERN MGAPPR02 71
  ++ ~若不会那么强，我宁愿这些学徒就担风险。~ EXTERN C0AURA2J C0AuraBG2AppQuest-2

CHAIN C0AURA2J C0AuraBG2AppQuest-3
~嗯……我得想想……现在我什么都说不准。我得观察他们的本事，看出什么在合理范围内……然后还得琢磨什么材料实用……~
= ~嗯，至少我能保证它是对奥术师有用的东西。而且我若来点灵感，它肯定会做点你料不到的事。~
= ~不过得跟这些孩子待一阵。至少五天，也许一星期。既然要弄魔法物品，我一刻都不能让他们离开视线。那段时间你只好没我在。~
END
  ++ ~我能接受。现在就把我们的主意提给他们？~ EXTERN MGAPPR02 C0AuraBG2AppQuest-4
  ++ ~也许直接叫他们什么都别造更省事。~ EXTERN MGAPPR02 71
  ++ ~这看着太复杂。我就叫他们照原计划。~ EXTERN C0AURA2J C0AuraBG2AppQuest-2

CHAIN MGAPPR02 C0AuraBG2AppQuest-4
~<CHARNAME>大师，我们现在能听你的意见了吗？看来你心里有主意。~
END
  ++ ~其实确实有。我想给你们介绍奥拉。她会指导你们下一个项目。~ EXTERN MGAPPR01 C0AuraBG2AppQuest-5
  ++ ~都听好。你们这课最后一部分，我交给奥拉。~

CHAIN MGAPPR01 C0AuraBG2AppQuest-5
~她？我不知道……我看她身量有点小。~
==
*/