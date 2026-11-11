I_C_T L#NIDICC 6 C0AuraTangledOakDicca
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~这太可怕了！可是……瞒着真相只会让所有人更糟，连你自己也一样。你怎么会不明白？~
END

I_C_T L#NIFINN 20 C0AuraTangledOakIllusion
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~幻术屏障……我之前在那儿的时候就觉得有点不对劲。~
== C0AURA2J ~要是我一眼就看不出破绽，那这幻象一定相当厉害；不过既然现在我知道该找什么，我想我或许能帮上忙，<CHARNAME>。~
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraTangledOakTalk","GLOBAL",1)~ THEN C0AURA2J tangledoak
~原来这就是缠橡岛……！天哪，我一直想来，可总抽不出空。这地方真美！而且……还挺叫人怀念的。~ [C0BLANK]
DO ~SetGlobal("C0AuraTangledOakTalk","GLOBAL",2)~
== C0AURA2J ~建筑的样式和整体环境当然有差别，可它几乎让我有点想起安科里尔——近海，又有那种田园般的气息。~
END
  ++ ~不知道这能维持多久。很有可能有一天，它看上去就跟阿斯卡特拉别的街区一样了。~ EXTERN C0AURA2J tangledoak-1
  ++ ~跟城里的各个区比起来，这里有种田园的吸引力。~ EXTERN C0AURA2J tangledoak-2
  ++ ~你家乡是个港口城镇，对吧？我想这里许多景致对你来说都很熟悉。~ EXTERN C0AURA2J tangledoak-3
  ++ ~我们该四处走走。能亲自去看看，就没必要光在这儿说这地方。~ EXTERN C0AURA2J tangledoak-4

CHAIN C0AURA2J tangledoak-1
~嗯，确实。要是这地方将来被“美化改造”得丢了独有的美，那就可惜了……不过同时，工业化与成长也未必是坏事。我只希望别来得太快。~
EXTERN C0AURA2J tangledoak-5

CHAIN C0AURA2J tangledoak-2
~嘿嘿，你也这么觉得？听说在安姆，这样的地方已经难找了。剩下的少数几处都被世代住在那里的人照料得很好，所以有种城里难以复制的味道。~
EXTERN C0AURA2J tangledoak-5

CHAIN C0AURA2J tangledoak-3
~哦，对。颜色和构造当然完全不一样，可安科里尔一向以捕鱼和种茶的文化自豪。只是你会见到比这里多得多的人，因为它也是兰坦的贸易中心。~
EXTERN C0AURA2J tangledoak-5

CHAIN C0AURA2J tangledoak-4
~说得对。不过别太急。如果可以，我想慢慢地看，一边欣赏景致。~
EXIT

CHAIN C0AURA2J tangledoak-5
~*叹气* 你知道，我要是个安姆人，就想住在这样的地方……至少我会这么想。恐怕过个十年、甚至五年，这里就不是现在这副样子了。幸好我们现在来了，对吧？~
= ~我们四处看看吧，<CHARNAME>。我很想看看如今的缠橡岛究竟是什么模样。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraTangledOakIllusionCheck","GLOBAL",1)~ THEN C0AURA2J tangledoak-illusion
~好，这地方有哪儿不对劲……这幻象确实非常难破，可只要我专心，我知道我能……~ [C0BLANK]
DO ~SetGlobal("C0AuraTangledOakIllusionCheck","GLOBAL",2)
        PlaySound("ACT_09")
        Unlock("SECRET01")
        OpenDoor("SECRET01")
        ActionOverride("L#NISCR",DestroySelf())
        SetGlobal("L#NIMainQuest","GLOBAL",24)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraTangledOakIllusionCheck","GLOBAL",2)~ THEN C0AURA2J tangledoak-illusion-2
~啊哈！我看我可以给自己记上一功，你说呢？~ [C0BLANK]
DO ~SetGlobal("C0AuraTangledOakIllusionCheck","GLOBAL",3)~
END
  ++ ~干得好。~ + tangledoak-illusion-2-1
  + ~!Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF)~ + ~（拍拍她的头）~ + tangledoak-illusion-2-2
  ++ ~看来你还是有点用处的。~ + tangledoak-illusion-2-1

CHAIN C0AURA2J tangledoak-illusion-2-1
~不过我们还是小心为上……我总觉得支撑这幻象的魔法要强得多，而且恐怕也更“真实”。~
EXIT

CHAIN C0AURA2J tangledoak-illusion-2-2
~哎——！我说了是背上，不是——好啦好啦，嘿嘿，其实也还不坏。~
EXTERN C0AURA2J tangledoak-illusion-2-1