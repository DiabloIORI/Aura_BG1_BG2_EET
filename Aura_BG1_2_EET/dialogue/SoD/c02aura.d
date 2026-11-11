BEGIN C02AKOKO
BEGIN C02AURA

CHAIN IF WEIGHT #-1 ~AreaCheck("bd4700")
GlobalLT("bd_plot","global",570)~ THEN C02AURA end
~我——我不会退缩的，<CHARNAME>，不会现在退缩！~
DO ~SetGlobal("bd_c0aura_kicked_mdd1330","global",1)
SetGlobal("bd_joined","locals",0)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C02AuraBegin","GLOBAL",0)~ THEN C02AURA j
~你没事吧，可可酱？他们没靠近伤到你吧？~
DO ~SetGlobal("C02AuraBegin","GLOBAL",1)~
== C02AKOKO ~*喵*~ [CAT01]
== C02AURA ~呼。你没受伤就好。我把这台机器修好，我们就收拾东西，然后……嗯？~
END
++ ~你好，奥拉。近来如何？~ DO ~SetGlobal("C02AuraWasInBG1","GLOBAL",1)~ + j.1
++ ~我没想到还会再见到你，侏儒。~ DO ~SetGlobal("C02AuraWasInBG1","GLOBAL",1)~ + j.1
+ ~!BeenInParty("C0Aura")~ + ~我们以前见过吗？~ + k

CHAIN C02AURA j.0
~哦……好吧。我本来就打算去那个营地。一个人旅行太危险了。那么……呃，回头见。~
= ~来吧，可可酱。我们走。~
DO ~GiveItemCreate("c02aucat","C0Aura",1,0,0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",RACE)
ActionOverride("c02akoko",EscapeArea())
ActionOverride("c02auto",EscapeArea())
AddJournalEntry(@100000,INFO)~ EXIT

CHAIN C02AURA j.1
~<CHARNAME>？~
= ~嘿，真是你！我还以为你还在公爵府里享清福呢！~
END
++ ~焰拳正北上抵御凯拉·阿金特的十字军。我跟他们在一起。~ + j.2
++ ~我倒希望如此。那比这桩烦人的差事强。~ + j.3
++ ~你先说。你为什么不回兰坦，反而往北走？~ + j.4
++ ~我怕现在没时间叙旧。你要是找得到路，我们可以到焰拳营地再谈。~ + j.0

CHAIN C02AURA j.2
~凯拉·阿金特？你是说光辉女士？你们真要去跟她开战？我……至少这对我来说方便多了！~
EXTERN C02AURA j.5

CHAIN C02AURA j.3
~嘿嘿……听来你过得不怎么顺。我们俩一样。~
EXTERN C02AURA j.5

CHAIN C02AURA j.4
~哦，嗯……其实我本来就没打算直接回家。我是往北去深水城，那儿的商行跟我家乡有来往，指望着在那儿还能碰上黑杖大人，可是……~
EXTERN C02AURA j.5

CHAIN C02AURA j.5
~自从我们分开后，我只有这台自动机器护我不受危险，可说实话，它招来的注意力跟它挡掉的一样多。兽人和哥布林之类的我应付得来，可是……~
= ~最糟的是我第一次撞上十字军士兵。他们看见我能造的东西，就想强征我入军，替他们造攻城器械。嗯……你要是了解我，就能想象我决定怎么回应。~
= ~我不想杀他们，可不得不让我的自动机器把他们打趴了些。从那以后我就一直避开大路，想躲开冲突……可一直不容易。你看到刚才发生的事了……这种事常发生。我不知道该怎么办。~
END
+ ~PartyHasItem("c0autt04")~ + ~说起来，你之前那个隐形装置还在我这儿。~ + j.6
++ ~你何不跟我走？我们以前一起旅行过，你可以放心我会护你不受任何人伤害，不管是十字军还是别的什么。~ + j.7
++ ~往东走，你就能找到焰拳营地。你可以跟我们同行，直到我们打垮十字军。~ + j.0

CHAIN C02AURA j.6
~哦！螺母和螺栓，我全忘了那东西。呃，它本会是救命的东西，就算不能把我一路送到深水城……~
= ~哦，也罢。我想它也撑不了那么久、帮我越过龙矛堡。你留着吧。~
END
++ ~你何不跟我走？我们以前一起旅行过，你可以放心我会护你不受任何人伤害，不管是十字军还是别的什么。~ + j.7
++ ~往东走，你就能找到焰拳营地。你可以跟我们同行，直到我们打垮十字军。~ + j.0

CHAIN C02AURA j.7
~嘿……这主意不错。老实说，我怀念跟你一起冒险，就算这意味着我得参战、而不是躲着不打。~
= ~不过说实话，我并不期待跟十字军作战，可有时候你得抓住公牛的角，对吧？嘿嘿……好。我加入。~
= ~过来，可可酱！该走了！~
END
++ ~呃……这猫怎么回事？~ + j.8
++ ~你不会真要把那东西带上吧？~ + j.9
++ ~唉，看来你给自己找了个新朋友。你在哪儿捡到他的？~ + j.8

CHAIN C02AURA j.8
~我以后再跟你细说。给我一会儿收拾东西，我就准备好走了！~
DO ~SetGlobal("C02AuraBegin","GLOBAL",-1)
ClearAllActions() StartCutsceneMode() StartCutscene("c0aufade")
ActionOverride("C02AUTO",DestroySelf())
ActionOverride("c02akoko",DestroySelf())
GiveItemCreate("c02aucat","C0Aura",1,0,0)
AddJournalEntry(@100001,INFO)
JoinParty()~ EXIT

CHAIN C02AURA j.9
~呃……当然？他从……其实，你知道吗？~
EXTERN C02AURA j.8

CHAIN C02AURA k
~我们见过？嗯……我是不是在贝雷戈斯特碰见过你？抱歉，我认人不太行。~
= ~我叫奥拉。奥拉·格利默夏恩。我是兰坦来的奇械师。呃……很高兴见到你，不管你是谁。~
END
++ ~我是<CHARNAME>。最近住在博德之门。~ + k.1
++ ~我的名字不劳你关心。~ + k.2
++ ~我没时间在路上跟陌生的侏儒闲聊。再见。~ + k.3

CHAIN C02AURA k.1
~不，真的？我就说我认得你！你是博德之门的英雄……对吧？~
END
++ ~我宁愿别人不那么称呼我，不过是。~ + k.4
++ ~看来我的名声先我一步。~ + k.4
++ ~不，不，我不是*那个*<CHARNAME>。你一定是把我跟别人搞混了。~ + k.5
++ ~我想我们说得够久了，我还有地方要去。~ + k.3

CHAIN C02AURA k.2
~那，呃……我想也合理。在这种地方，人再小心也不为过。~
EXTERN C02AURA k.6

CHAIN C02AURA k.3
~哦……我明白。我本来要去离这儿不远的焰拳营地……我不确定他们要去哪儿，可无论如何总比一个人旅行安全。~
= ~也许我们还会再见？嗯，不管怎样……再见。来吧，可可酱。我们走。~
DO ~GiveItemCreate("c02aucat","C0Aura",1,0,0)
SetGlobal("bd_npc_camp","locals",1)
ChangeAIScript("bdparty",RACE)
ActionOverride("c02akoko",EscapeArea())
ActionOverride("c02auto",EscapeArea())
AddJournalEntry(@100000,INFO)~ EXIT

CHAIN C02AURA k.4
~哇……我记得我在城里时，满城都听到你的名字。真不敢相信我竟然能亲眼见到你！太荣幸了！~
EXTERN C02AURA k.6

CHAIN C02AURA k.5
~哦……那是我搞错了，我想。不过你真的很像他们前阵子扔掉的那些通缉告示上的画像……也许是我记错了。~
EXTERN C02AURA k.6

CHAIN C02AURA k.6
~呃……这也许有点突然，可是……我能不能跟你们一行人走一段？你看，我不太会打斗，还有……自从我离开博德之门，就被匪徒、怪物，还有光辉女士军里那些可怕的十字军纠缠过。~
= ~照这样下去我哪儿都到不了，就算我避开大路、有这台自动机器保护也一样……我知道这要求过分了，可你看着足够能干、值得依靠，要是你肯收我，我会感激不尽。~
END
++ ~我们也会面对不少危险。你觉得你跟得上吗？~ + k.7
++ ~当然。我很乐意有你同行。~ + k.8
++ ~抱歉，我现在不找同伴。~ + k.3
++ ~我不这么想。滚吧，侏儒。~ + k.3

CHAIN C02AURA k.7
~我说过，我不太会打斗。可我还有别的本事。费伦没人能在炼金或发明上胜过兰坦奇械师。~
= IF ~!Class(Myself,MAGE_ALL) !Class(Myself,CLERIC_ALL)~ THEN ~我也擅长开锁和拆陷阱，对奥术也略知一二，虽然我自己不是法师。~
= IF ~Class(Myself,MAGE_ALL)~ THEN ~我也擅长开锁和拆陷阱，对奥术也略知一二。我不是高手，可够用了！~
= IF ~Class(Myself,CLERIC_ALL)~ THEN ~我也擅长开锁和拆陷阱，我还算……半个受训中的女祭司。嗯，反正以前是。我懂几段应急时有用的治疗祷文。~
= ~我还会调配……武器。准确说是爆炸武器。我不太喜欢做这个，可遇到危险时，我不得不动用。你若让我加入，我也愿意把它们供你使用，只要你别滥用。~
END
++ ~好吧，你说服我了。欢迎加入。~ + k.8
++ ~抱歉，我现在不找同伴。~ + k.3
++ ~我觉得你不是我要找的人。~ + k.3

CHAIN C02AURA k.8
~你——你肯让我加入！谢谢你！我不会让你失望的。~
= ~给我一会儿收拾这里，我就准备好出发了。来吧，可可酱！该走了！~
DO ~SetGlobal("C02AuraBegin","GLOBAL",-1)
ClearAllActions() StartCutsceneMode() StartCutscene("c0aufade")
ActionOverride("C02AUTO",DestroySelf())
ActionOverride("c02akoko",DestroySelf())
GiveItemCreate("c02aucat","C0Aura",1,0,0)
AddJournalEntry(@100001,INFO)
JoinParty()~ EXIT

CHAIN IF ~Global("C02AuraBegin","GLOBAL",1)~ THEN C02AURA l
~你好啊。我，呃……自己走到营地来了。焰拳允许我留在他们的保护下，只要我能贡献手艺。~
DO ~SetGlobal("C02AuraBegin","GLOBAL",2)~
EXTERN C02AURA m

CHAIN IF ~Global("C02AuraBegin","GLOBAL",2)~ THEN C02AURA m
~你需要什么吗，<CHARNAME>？~
END
++ ~我希望你加入我的队伍。~ DO ~SetGlobal("C02AuraBegin","GLOBAL",-1)~ + m.1
++ ~只是来打个招呼。~ + m.2
++ ~没事。你自便。~ + m.2

CHAIN C02AURA m.1
~嗯？哦，呃……当然。我跟你走。~
DO ~JoinParty()~ EXIT

CHAIN C02AURA m.2
~哦。那，你要是需要什么……我就在这儿。~
EXIT

// Sleeping Potion

CHAIN IF WEIGHT #-1 ~Global("C02AuraPoison","GLOBAL",1)~ THEN C02AURA poison
~<CHARNAME>……我听见德兰西先生跟你谈那桩毒药……他在的时候我不想说什么，可要是你宁愿让十字军失能、又不重创他们，我有个主意。~
DO ~SetGlobal("C02AuraPoison","GLOBAL",2)~
END
++ ~你说，我听着。~ + poison.1
+ ~PartyHasItem("bdpotn01")~ + ~不必。敌人受什么罪，我毫不在意。~ + poison.0
+ ~Global("bd_MDD1001_morale","global",1)~ + ~我不打算靠诡计赢这场战争，奥拉。~ + poison.3

CHAIN C02AURA poison.0
~我……我不喜欢这听着的意思，不过……我想这由你决定。~
EXIT

CHAIN C02AURA poison.1
~嗯，我是这么想的……不用毒药，我可以做一种安眠药，用在十字军的补给上。等真正开战时，但愿他们都会昏过去、打不动了。~
= ~仗会好打些，双方流的血也会少些。这难道不是更好的选择吗？~
END
++ ~这主意其实很好。就按你说的办。~ + poison.2
+ ~PartyHasItem("bdpotn01")~ + ~我觉得这比十字军配得的更慈悲了。我用毒药。~ + poison.0
+ ~Global("bd_MDD1001_morale","global",1)~ + ~不。我们光明正大、堂堂正正地跟十字军打。~ + poison.3

CHAIN C02AURA poison.2
~那我去炼金术士的帐篷一趟，马上回来。~
DO ~FadeFromColor([30.0],0) TakePartyItem("bdpotn01") DestroyItem("bdpotn01") GiveItemCreate("c02apotn",Player1,1,0,0) SetGlobal("bd_MDD1001_morale","global",1)~
= ~给。我想浓度调对了，所以非常非常强。就算在水里稀释几滴，也够让人睡上一个钟头左右。~
EXIT

CHAIN C02AURA poison.3
~好……我想你最懂。~
EXIT


// Trollbane Arrows

CHAIN IF WEIGHT #-1 ~Global("C02AuraTrollbaneArrow","GLOBAL",1)~ THEN C02AURA trollbane
~要打巨魔的话，<CHARNAME>，你也许该带上这些箭。~
DO ~SetGlobal("C02AuraTrollbaneArrow","GLOBAL",2)
GiveItemCreate("c0auaro4",Player1,5,0,0)~
= ~得知我们要穿过巨魔爪森林后，我就一直在做它们。箭里灌了屠魔毒，一种对付巨魔的毒。若进了它们的血流，就能阻止它们再生。~
END
++ ~很方便。谢谢你，奥拉。~ + trollbane.1
++ ~你还有更多吗？~ + trollbane.1
++ ~这才是我留你在队里的理由。~ + trollbane.1

CHAIN C02AURA trollbane.1
~我已经跟军需官贝勒加姆过了一遍炼金流程。他会尽快补货。不过材料不便宜，你得付钱。~
= ~好，暂时就这些。我有别的事再告诉你。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C02AuraVoidstone","GLOBAL",1)~ THEN C02AURA voidstone
~那些石头……负能量法石碎片。我能看看吗？~
END
++ ~我不明白你为什么想看，不过去吧。~ + voidstone.1
++ ~当然。随你便。呃，不是字面那种随你便。~ + voidstone.1
++ ~快点。我宁愿它们不在我眼前。~ + voidstone.1

CHAIN C02AURA voidstone.1
~真……真邪恶……可它们有点……意思。要是我能取一小点残留样本……~
= ~呃。谢谢你抽时间，<CHARNAME>。给，拿回去吧。我不需要了。~
END
++ ~你打算拿那些粉末做什么？~ + voidstone.2
++ ~说清楚。~ + voidstone.2
++ ~我本想问你打算做什么，可我猜你反正也要说。~ + voidstone.2

CHAIN C02AURA voidstone.2
~没什么阴险的。我只是想也许能把它们做成某种爆炸武器。不过我只需要那些粉末。有这些我能做不少。~
= ~我一次做不了太多。太耗我的材料了……更别说还很危险。每次炼金只能做一枚。不过它威力很大，这我能保证。~
DO ~SetGlobal("C02AuraVoidstone","GLOBAL",2) AddXPObject("C0Aura",500)~ EXIT

// Kicked Out

CHAIN IF WEIGHT #-1 ~AreaCheck("bd4300")
GlobalGT("bd_plot","global",585)~ THEN C02AURA endgame
~我很高兴所有战斗都结束了。~
EXIT


CHAIN IF WEIGHT #-1 ~GlobalGT("bd_joined","locals",0)
HappinessLT(Myself,-290)~ THEN C02AURA rep.break
~恕我直言，<CHARNAME>。我说过会跟着你，我也尽力跟到了现在，可是……我再也受不了了。你做的这些事……太过分了。我要走了。~
END
++ ~那太可惜了。我会想你。~ + rep.break.1
++ ~有些人就是彼此合不来。我不怪你。~ + rep.break.2
++ ~你是个懦夫。你对我们做的事没有胆量，那我也不需要你。滚。~ + rep.break.3
++ ~好。反正你本来就是个累赘。~ + rep.break.3

CHAIN C02AURA rep.break.1
~我真的很抱歉。~
EXTERN C02AURA rep.break.4

CHAIN C02AURA rep.break.2
~你说得对。~
EXTERN C02AURA rep.break.4

CHAIN C02AURA rep.break.3
~抱歉我把你错认成了别人。~
EXTERN C02AURA rep.break.4

CHAIN C02AURA rep.break.4
~也许你总有一天会变，若真如此，希望我们还能再见。再见。~
DO ~ActionOverride("C0AUIN3",EscapeArea())
DestroyAllFragileEquipment(ADAMANTINE)
SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)~ EXIT

CHAIN IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
GlobalGT("bd_joined","locals",0)~ THEN C02AURA o
~螺母和螺栓，<CHARNAME>！你真要把我一个人留在这地方？~
END
++ ~我先往前探。你在这儿等到我回来。~ + o.1
+ ~OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("C0Aura")~ + ~回入口去。你在那儿会安全。~ + o.2
++ ~你误会了。跟我待着。~ + n.3

CHAIN C02AURA o.1
~呃，好吧。快点，行吗？~
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN C02AURA o.2
~好……我想我就沿原路回去。注意安全……~
DO ~SetGlobal("bd_joined","locals",0)
SetGlobal("bd_npc_camp","locals",1)
EscapeAreaMove("BD0120",802,1533,SE)~ EXIT

CHAIN IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
Global("bd_joined","LOCALS",0)~ THEN C02AURA o.3
~哦，你终于回来了！你知道这里有多冷多灰吗？更别说我到处都能看见……鬼……还是什么的！求你说我们要走了！~
END
++ ~别怕。我来带你回去。~ + o.4
++ ~再等一会儿，我保证。~ + o.5
++ ~还不行。留在这儿，勇敢点。~ + o.5

CHAIN C02AURA o.4
~哦，谢谢你！我们离开这儿吧。我不喜欢那边那道光闪的样子。~
DO ~JoinParty()~ EXIT

CHAIN C02AURA o.5
~“留在这儿”，<PRO_HESHE>说……“会没事的”，<PRO_HESHE>说……那盯着墙上怪影子的是谁，嗯？*叹气*~
EXIT

CHAIN IF ~GlobalGT("bd_joined","locals",0)~ THEN C02AURA n
~唉。你真要我走吗，<CHARNAME>？~
END
+ ~PartyHasItem("c02akoko")
GlobalGT("bd_npc_camp_chapter","global",1)
GlobalLT("bd_npc_camp_chapter","global",5)
OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("C0Aura")~ + ~回营地去。你的本事在那儿更有用。~ DO ~SetGlobal("bd_npc_camp","locals",1)~ + n.1a
+ ~!PartyHasItem("c02akoko")
GlobalGT("bd_npc_camp_chapter","global",1)
GlobalLT("bd_npc_camp_chapter","global",5)
OR(2)
!Range("ff_camp",999)
NextTriggerObject("ff_camp")
!IsOverMe("C0Aura")~ + ~回营地去。你的本事在那儿更有用。~ DO ~SetGlobal("bd_npc_camp","locals",1)~ + n.1b
++ ~暂时在这儿等着。我很快回来接你。~ + n.2
++ ~其实，算了。跟我待着。~ + n.3

CHAIN C02AURA n.1a
~你这么说的话。来吧，可可酱。我们回去。~
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN C02AURA n.1b
~你这么说的话。回头见，<CHARNAME>。~
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN C02AURA n.2
~哦，跟你在一起我会安全得多，不过好吧……快点回来，好吗？~
DO ~SetGlobal("bd_joined","locals",0)~ EXIT

CHAIN C02AURA n.3
~呼……你不用跟我说第二遍。~
DO ~JoinParty()~ EXIT

CHAIN IF ~Global("bd_joined","LOCALS",0)~ THEN C02AURA p
~你好啊。事情怎么样？我这儿不太好，我忙着调药水、给伤者做药，几乎没时间做别的事。~
= ~总之，怎么了？你需要我帮忙吗？~
END
++ ~你能帮我做些药水吗？~ + potions
++ ~你要是想找更刺激的活，我队里还有位置。~ + p.0
++ ~我需要你的本事，奥拉。跟我走吧。~ + p.0
++ ~听起来你手上事够多了。我就不打扰了。~ + p.1
++ ~现在不了。我走了。~ + p.1

CHAIN C02AURA potions
~当然！给我一会儿准备炼金器具。~
DO ~ReallyForceSpellRES("c0aualc",Myself)~ EXIT

CHAIN C02AURA p.0
~嗯，好啊。外头能干的事比这儿多得多，对吧？给我一会儿收拾，我们就走。~
DO ~JoinParty()~ EXIT

CHAIN C02AURA p.1
~这么快？真可惜。那再见。~
EXIT

APPEND C02AURA

IF WEIGHT #-1 ~AreaCheck("bd0104")
Global("chapter","global",13)
Global("bd_jail_visitors","bd0104",5)
Global("C02AuraRomanceActive","global",2)~ postgame
SAY ~你——你好，<CHARNAME>。~
+ ~Global("bd_player_exiled","global",0)~ + ~你好，奥拉。~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad
+ ~!Global("bd_player_exiled","global",0)~ + ~你好，奥拉。~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood
+ ~Global("bd_player_exiled","global",0)~ + ~奥拉。你得把我弄出去。~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad
+ ~!Global("bd_player_exiled","global",0)~ + ~奥拉。你得把我弄出去。~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood2
+ ~Global("bd_player_exiled","global",0)~ + ~走开。我不想跟你说话。~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad1
+ ~!Global("bd_player_exiled","global",0)~ + ~走开。我不想跟你说话。~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood1
END

IF ~~ postgamebad1
SAY ~我就知道来这儿是个错误。光是听我们说话，我心里就像被刀割。~
= ~……再见，<CHARNAME>。我不知道我们还会不会再见面。~
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ postgamebad
SAY ~我……我没去审判。我做不到。你不会因此恨我吧？~
++ ~别告诉我你也认为是我干的？~ + postgamebad.1
++ ~斯基不是我杀的。别信他们的谎言。~ + postgamebad.1
++ ~走开。你是我现在最不想见的人。~ + postgamebad1
END

IF ~~ postgamebad.1
SAY ~我不想相信是你干的。可我亲眼所见的事，没法忘掉。~
= ~<CHARNAME>，我只是来告诉你……我……不管真相是什么，我都不恨你。可是……我不会留下了。对不起。~
= ~再见。我不确定我们还会不会再见面。~
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ postgamegood.x
SAY ~我……我希望自己能做得更多。或者至少……我希望我们能在一起更久。再见，<CHARNAME>……~
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ postgamegood1
SAY ~等——等等，<CHARNAME>！我不是像别人那样来责备你的，我发誓。我怎么会那样对你？~
IF ~~ + postgamegood
END

IF ~~ postgamegood2
SAY ~我……我不能。我是说，我若试试，是能做到的。这门上的法术没什么特别，我以前破过更难开的锁，只是……那是不对的。就算是你，也不对。~
IF ~~ + postgamegood
END

IF ~~ postgamegood
SAY ~我，呃，给你带了东西。看见没？更厚的毯子、拖鞋、蛋糕、几本书、一个舒服的软枕头……任何能让你在这儿好过一点的东西……~
= ~哦，我在骗谁呢？这些都不会让事情变好。我——我不想看你这副样子，<CHARNAME>。这让人难受……~
++ ~你眼睛都红了。你哭过了？~ + postgamegood.1
++ ~天啊，奥拉，你现在别在我面前崩溃。我怕我受不了。~ + postgamegood.2
++ ~谢谢你。至少你还在意。~ + postgamegood.3
++ ~你要是没打算把我弄出去，那就走开。~ + postgamegood.x
END

IF ~~ postgamegood.1
SAY ~我……*抽鼻子* 没有……你为什么要问这个？~
IF ~~ + postgamegood.4
END

IF ~~ postgamegood.2
SAY ~我……对不起，<CHARNAME>，可我就是撑不住，尤其你在这种地方，又冷又孤单……~
IF ~~ + postgamegood.4
END

IF ~~ postgamegood.3
SAY ~我当然在意！你是我在费伦这一带遇到的最好的事，你怎么会以为我不在意？~
IF ~~ + postgamegood.4
END

IF ~~ postgamegood.4
SAY ~……*抽泣*~
= ~我……我知道不是你干的。你为什么要做那种事？一个对我这么好的人绝不会……要是别人能像我这样看你，他们就绝不会把你关在这儿。你不该受这个……~
= ~你打算怎么办，<CHARNAME>？他们……他们不会把你永远关在这儿吧？~
++ ~我知道我是清白的。真相总会以某种方式水落石出。~ + postgamegood.5
++ ~你可以把我弄出去。我们一起离开这座城。~ + postgamegood.6
++ ~谁知道。他们说不定真会那样。~ + postgamegood.6
++ ~走开，奥拉。我不想听你哭哭啼啼、絮絮叨叨。~ + postgamegood.x
END

IF ~~ postgamegood.5
SAY ~我……我希望如此。大公爵们不会接受真相之外的任何东西。他们欠你那么多，不可能给得更少……对吧？~
IF ~~ + postgamegood.6
END

IF ~~ postgamegood.6
SAY ~我……我想试着把你救出去，<CHARNAME>，我真的想。可我怕……自从他们抓走你，我觉得我从你身上得到的所有勇气和自信，一瞬间全没了。~
= ~光是待在这儿，我就觉得自己撑不住……就像我又变回了从前那个害怕的小丫头。很可悲，对吧？我想我从头到尾都太依赖你了……我一点都没变。~
= ~我……决定了……该往前走了。我不想抛下你，可是……我在这座城里每待一刻都难受。我……对不起。~
IF ~~ + postgamegood.x
END
END