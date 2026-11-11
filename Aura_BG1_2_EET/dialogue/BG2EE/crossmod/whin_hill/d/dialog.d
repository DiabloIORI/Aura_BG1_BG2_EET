I_C_T L#AFDRA 0 C0AuraWhinHillDragonStart
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哇……一条赤铜龙！我上次见到还是……~
== L#AFDRA ~那么，你们想要什么，小家伙们？~
END

INTERJECT L#AFDRA 12 C0AuraWhinHillDragonAttack
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~不，<CHARNAME>，请停下！我们没有理由伤他！~
END
  ++ ~你说得对。我不知自己刚才是怎么了。~ EXTERN L#AFDRA C0AuraWhinHillDragonAttack.1
  ++ ~好。~ EXTERN L#AFDRA C0AuraWhinHillDragonAttack.1
  ++ ~不，可我想要一套漂亮的新盔甲！~ EXTERN L#AFDRA C0AuraWhinHillDragonAttack.2

CHAIN L#AFDRA C0AuraWhinHillDragonAttack.1
~哼。这香喷喷的小东西总算还有点分寸。这回就饶了你。~
EXIT

CHAIN L#AFDRA C0AuraWhinHillDragonAttack.2
~唉。快点办完吧！~
COPY_TRANS L#AFDRA 12

CHAIN IF WEIGHT #-1 ~Global("C0AuraWhinHillDragonTalk","GLOBAL",1)~ THEN L#AFDRA whinhill-dragon
~哼……停下。靠近些，小不点。不，不是你，<PRO_RACE>，虽说你们都不大，可最小的那一个。我要仔细闻闻你的气味。~ [C0BLANK]
DO ~SetGlobal("C0AuraWhinHillDragonTalk","GLOBAL",2)~
== C0AURA2J ~我？呃，好吧，龙先生……~
== L#AFDRA ~*嗅*……*嗅* 我就知道……很淡，但你身上有另一条赤铜龙的气味。它没带着血腥味，所以你显然不是屠龙者。是挂在你弓上的那个小饰物，对吗？那一片龙爪？~
== C0AURA2J ~哦……那是我朋友塞莉——塞里萨莱瑞克森送的。她是条赤铜龙，住在我的家乡兰坦。你该不会……认识她吧？我不知道龙族之间亲缘走得有多近。~
== L#AFDRA ~嗯。我不太喜欢常离开巢穴，可说来也怪，我还真认得那个小捣蛋。信不信由你。她是从你们那些侏儒奇械师那儿学来的把戏，对吧？几年前她飞到这儿来，似乎还知道我在，跟我开了个挺傻的玩笑。~
== L#AFDRA ~你要是爬过山头到另一边去，也许还能看见她留下的那个坑。挺碍眼，可我懒得填回去。~
== C0AURA2J ~啊！对不起！真的，真的很对不起！~
== L#AFDRA ~你道什么歉？~
== C0AURA2J ~哦……只是……在学院跟她一起那些年，我一直得替她道歉……到如今，只要她惹到谁，我都是条件反射地道歉。~
== L#AFDRA ~唉，别放在心上，小不点。对赤铜龙来说，恶作剧就跟打招呼一样平常。不过我没料到会有人用一连串古怪机件摆出那样的阵仗。我连还手都无从下手。那些兰坦人真是了不得，再配上我们同族一员的狡黠，就可怕了。~
== L#AFDRA ~更别说她还留下一大堆水果当赔礼，所以我实在没法怪她。哪怕她那烦人的笑声还在洞道里回响。~
== C0AURA2J ~啊哈哈……这倒像她。她能惹毛任何人，可她那么讨人喜欢，一赔不是，谁也没法一直生她的气。~
== L#AFDRA ~你有些日子没见过她了吧？~
== C0AURA2J ~我……不，没有。~
== L#AFDRA ~对我们龙来说，几年不过是眨眼的工夫。不过，尽量跟她留下些好回忆吧。龙与非龙之间的友谊本就少见，能长久下来的就更少。~
== C0AURA2J ~当然。塞莉对我也很重要。谢谢你，维芙。~
== L#AFDRA ~好。~
== L#AFDRA ~还有，要是你得知她打算再来，就叫她下次带些玫瑰苹果。那种比上回的黄苹果多汁、脆好几倍。~
EXIT

CHAIN
IF ~InParty("L#AFU")
Range("L#AFU",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#AFU",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Afu","GLOBAL",0)~ THEN L#AFUB banter1
~奥拉，阿福见过你做的许多奇怪东西。阿福连梦里都想不出会见到那样的东西。~ [C0BLANK]
DO ~SetGlobal("C0AuraL#Afu","GLOBAL",1)~
== BC0AURA2 ~嘿嘿，谢了，阿福……只是别顺手偷走就行，好吗？~
== L#AFUB ~阿福绝不会干那种事！我……哦，呃……阿福手里这是什么？~
== BC0AURA2 ~*阿福……*？把它还回来，不然我就……我就……一直板着脸瞪你，瞪到你还回来为止！~
== L#AFUB ~嘿嘿嘿……阿福的手有时候不跟阿福的脑袋商量就自己动。坏手！坏！*啪 啪 啪*~
== BC0AURA2 ~好了，请别那么做。阿福，我答应给你看我的任何收藏，可你得先问一声，行吗？~
== L#AFUB ~嗯……通常阿福开口要东西，话还没说完一个字，就被人拿着草叉追、躲着石头砸了。~
== BC0AURA2 ~我不会那样做的。阿福，我看上去有那么凶吗？说实话。~
== L#AFUB ~不。你是个很好的侏儒，奥拉。阿福觉得也许是最好的。~
EXIT

CHAIN
IF ~InParty("L#AFU")
Range("L#AFU",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#AFU",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Afu","GLOBAL",1)~ THEN L#AFUB banter1
~奥拉，你知道那首歌吗？所有狗头人都知道，许多侏儒也知道。~ [C0BLANK]
DO ~SetGlobal("C0AuraL#Afu","GLOBAL",2)~
== BC0AURA2 ~哪首歌？~
== L#AFUB ~你知道，就是那一首。阿福不知道名字，可词记得很清楚。~
== BC0AURA2 ~你在干什——哦，不。不不不。别对我唱那首歌，阿福，不要！~
== L#AFUB ~你确定？阿福觉得那调子挺上口。*咳 咳*~
== L#AFUB ~“我喜欢侏儒
又蠢又胖
胖得——”~
== BC0AURA2 ~不要！别唱了！~
== L#AFUB ~嘿嘿。~
EXIT

CHAIN
IF ~InParty("L#AFU")
Range("L#AFU",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#AFU",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#AfuToB","GLOBAL",0)~ THEN L#AFU25B bantertob
~奥拉，你说阿福能要一只金松鼠吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraL#AfuToB","GLOBAL",1)~
== BC0AURA2 ~金……松鼠？你是说像穆菲那样的？~
== L#AFU25B ~是，像穆菲那样，会跑会跳、还会捡宝石的。或者一只小蜥蜴也行。阿福会喜欢的。~
== BC0AURA2 ~啊哈哈……这我倒不怪你。穆菲是个可爱的小家伙，也好照顾。不过我觉得你怕是要失望。~
== L#AFU25B ~你没有给阿福的建议吗？什么可以试试的挑战？阿福现在不太介意下苦功了。~
== BC0AURA2 ~嗯……也许你要是去科祖库拉，运气好到能遇上一只和善的妖怪，那就有可能。我只能提这么多了。不过真要去试，记得带上各式各样的食物！~
EXIT