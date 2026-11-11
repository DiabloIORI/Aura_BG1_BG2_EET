CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",4)~ THEN C0AURA2 a0
~别担心，穆菲……我知道这看着糟，可我们会脱身的……我确定……~ [C0BLANK]
DO ~SetGlobal("C0AuraBegin","GLOBAL",5)~
== C0ATHF2 ~把包裹放下，你就能活着走出去，侏儒。~
== C0AURA2 ~这个？我——我不确定你们以为这是什么，可它不是你们要找的东西，我保证。~
== C0ATHF2 ~那由我们来判断。有小鸟告诉我们，你们这种人造的武器有个市场，是诸国度其他地方从没见过的东西。若属实，在合适的人手里能卖个好价钱，你说呢？~
== C0AURA2 ~“我这种人造的武器”？一定是弄错了，我从没——~
== C0ATHF2 ~别叽叽喳喳了，丫头。把货交出来。~
== C0AURA2 ~*叹气* 哪天不好，偏偏今天把发条仆役留在家里……看来我只能……~
== C0ATHF3 ~老大！有人往咱们这边来了。~
DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut2")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",5)~ THEN C0ATHF2 a01
~不关你的事，陌生人。识相就滚开。~ [C0BLANK]
DO ~SetGlobal("C0AuraBegin","GLOBAL",6)~
== C0AURA2 IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~……<CHARNAME>？~
== C0ATHF2 IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~闭嘴，侏儒。~
END
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~你们在威胁我一位珍贵的朋友。走开，免得后悔。~ EXTERN C0ATHF3 a01.1
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~那侏儒比看上去危险得多。别惹她，信我。~ EXTERN C0ATHF3 a01.1
++ ~我倒想，可我想我没法无视有人在街上被围住。~ EXTERN C0ATHF3 a01.1
++ ~识相就放开她。~ EXTERN C0ATHF3 a01.1
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~尽管去吧。我会保持距离。~ DO ~SetGlobal("C0AuraNoHelp","GLOBAL",1)~ EXTERN C0AURA2 a01.2
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~尽管去吧。我会保持距离。~ DO ~SetGlobal("C0AuraNoHelp","GLOBAL",1)~ EXTERN C0AURA2 a01.3

CHAIN C0ATHF3 a01.1
~这不值得惹麻烦，老大。我看我们趁还没闹大，赶紧走。~
== C0ATHF2 ~……呸。算你走运，侏儒。弟兄们，撤。~
DO ~SetGlobal("C0AuraBegin","GLOBAL",8)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut4")~ EXIT

CHAIN C0AURA2 a01.2
~噗，认真的……？~
EXTERN C0AURA2 a01.3

CHAIN C0AURA2 a01.3
~嗯，我其实不必这么做，可看来我在这儿只能靠自己，所以……~
DO ~SetGlobal("C0AuraBegin","GLOBAL",7)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut3")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",7)~ THEN C0ATHF4 a02
~啊——！*咳* 什么……*嗝* 见鬼……*咳——咳！* 这是什么？！~ [C0BLANK]
== C0ATHF1 ~我的眼睛！啊！好痒！~
== JANJ IF ~IsValidForPartyDialog("JAN")~ THEN ~啊……一份窒息粉末配方。简单，但有效。我自己一向偏爱毒漆树油喷雾。起的疹子相当难看，尤其在私处。~
== C0AURA2 ~抱歉……我别无选择。你们可以用油洗掉，可最好快点去洗，免得……~
== C0ATHF2 ~这事没完，侏儒！*咳！*~
DO ~SetGlobal("C0AuraBegin","GLOBAL",8)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut4")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",8)~ THEN C0AURA2 a03
~他们跑了……看，穆菲？我说过我们会脱身的。~ [C0BLANK]
DO ~SetGlobal("C0AuraBegin","GLOBAL",9)~
END
IF ~Global("C0AuraKnowsBG1","GLOBAL",1)
Global("C0AuraNoHelp","GLOBAL",1)~ + a03.1
IF ~!Global("C0AuraKnowsBG1","GLOBAL",1)
Global("C0AuraNoHelp","GLOBAL",1)~ + a03.2
IF ~Global("C0AuraKnowsBG1","GLOBAL",1)
!Global("C0AuraNoHelp","GLOBAL",1)~ + a03.3
IF ~Global("C0AuraKnowsBG1","GLOBAL",1)
!Global("C0AuraNoHelp","GLOBAL",1)~ + a03.3
IF ~!Global("C0AuraKnowsBG1","GLOBAL",1)
!Global("C0AuraNoHelp","GLOBAL",1)~ + a03.4

CHAIN C0AURA2 a03.1
~可真是的，<CHARNAME>。“我会保持距离”？我以为我们彼此更熟些。~
END
++ ~抱歉。可你自己处理了，不是吗？~ + a03.1.1
++ ~我就知道你袖子里藏着东西。~ + a03.1.1
++ ~你该有能力照顾自己。~ + a03.1.2
++ ~那不代表我该为你的麻烦负责。~ + a03.1.2

CHAIN C0AURA2 a03.1.1
~当然，我想……嗯，我没法真生气。我只是真的很高兴又见到你。~
END
IF ~Global("C0AuraRomanceActive","GLOBAL",1)~ DO ~SetGlobal("C0AuraBeginRomance","GLOBAL",1)
StartCutSceneMode()
MoveToObject(Player1)
Wait(1)
FaceObject(Player1)
ActionOverride(Player1,FaceObject("C0Aura")
Wait(1)
StartDialogueNoSet(Player1)~ EXIT
IF ~!Global("C0AuraRomanceActive","GLOBAL",1)~ + a03.5

CHAIN C0AURA2 a03.1.2
~哇，你比我记得的还刻薄……哦，算了。我还是很高兴见到你。~
END
IF ~Global("C0AuraRomanceActive","GLOBAL",1)~ DO ~SetGlobal("C0AuraBeginRomance","GLOBAL",1)
StartCutSceneMode()
MoveToObject(Player1)
Wait(1)
FaceObject(Player1)
ActionOverride(Player1,FaceObject("C0Aura")
Wait(1)
StartDialogueNoSet(Player1)~ EXIT
IF ~!Global("C0AuraRomanceActive","GLOBAL",1)~ + a03.5
IF ~!Global("C0AuraRomanceActive","GLOBAL",1)~ + a03.5

CHAIN C0AURA2 a03.2
~嗯，呃……谢谢你至少分散了他们一会儿注意力，我想……不能指望更多了。~
= ~我这就走了，请见谅。~
DO ~SetGlobal("C0AuraBegin","GLOBAL",-1)~ EXIT

CHAIN C0AURA2 a03.3
~总之……<CHARNAME>！又见到你真是太好了！~
END
IF ~Global("C0AuraRomanceActive","GLOBAL",1)~ DO ~SetGlobal("C0AuraBeginRomance","GLOBAL",1)
StartCutSceneMode()
MoveToObject(Player1)
Wait(1)
FaceObject(Player1)
ActionOverride(Player1,FaceObject("C0Aura")
Wait(1)
StartDialogueNoSet(Player1)~ EXIT
IF ~!Global("C0AuraRomanceActive","GLOBAL",1)~ + a03.5

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",9)
Global("C0AuraBeginRomance","GLOBAL",1)~ THEN C0AURA2 a03.rom
~哈哈……抱歉，我就是非常非常需要抱你一下。*抽鼻子* 哦……我太想念这个了，你知道？~
EXTERN C0AURA2 a03.5

CHAIN C0AURA2 a03.4
~谢谢帮忙。我刚还在担心若没人插手我得怎么办……我也许得真的伤他们。~
END
++ ~你没事吧？那些人看起来很想伤你。~ + a03.6
++ ~我猜你就是奥拉，那位兰坦的奇械师？~ + a03.7
++ ~嗯，今天算你走运。下次也许就不会了。~ + a03.8

CHAIN C0AURA2 a03.5
~感觉像过了永远……我不知何时能再见，可重逢真是美妙的惊喜。我们有好多要补的！~
END
+ ~Global("C0AuraRomanceActive","GLOBAL",1)~ + ~我也想你了，奥拉。~ + a03.rom2
++ ~你没事吧？那些人看起来很想伤你。~ + a03.14
++ ~我也没想到会在安姆找到你。~ + a03.15
++ ~那些混混到底想从你这儿要什么？~ + a03.16

CHAIN C0AURA2 a03.rom2
~我一直在想你，你知道？我后悔当初离开你，可……嗯，已经过去了。你又在我身边，这就够了。~
EXTERN C0AURA2 a03.17

CHAIN C0AURA2 a03.6
~哦，我没事……只是有点受惊。多亏你，那些人没机会真做什么……等等……~
EXTERN C0AURA2 a03.9

CHAIN C0AURA2 a03.7
~是，是我。我不知道你已经知道我是谁。不过现在想想……~
EXTERN C0AURA2 a03.9

CHAIN C0AURA2 a03.8
~说得对。我想我不该指望总能走运，在恰当的时候被像……这样的……~
EXTERN C0AURA2 a03.9

CHAIN C0AURA2 a03.9
~*倒吸一口气* 你……你是<CHARNAME>！我就知道我认出来了！~
END
++ ~你知道我是谁？~ + a03.10

CHAIN C0AURA2 a03.10
~一下讲不完，可……危机时我在博德之门，你知道……第一次那个。我见过你的脸！~
= ~哇……我没想到会在这种地方遇见你。我有好多想听你说。~
END
++ ~我很乐意讲讲我自己。~ + a03.11
++ ~好极了，一个疯粉丝。~ + a03.11

CHAIN C0AURA2 a03.11
~哦，太对不起了……我知道这不是合适的地方。可你若没在忙要紧事……我要回贫民区我的工坊。你若有空，不介意来看看我吗？~
END
++ ~当然，我看没什么不可以。~ + a03.12
++ ~我怀疑那不值得我花时间。~ + a03.13

CHAIN C0AURA2 a03.12
~太好了！你来时我一定备好茶。我这就走了。很快再见！~
DO ~SetGlobal("C0AuraBegin","GLOBAL",10)
TriggerActivation("C0AuraHome",TRUE)
EscapeAreaMove("C0AU01",427,207,NNE)~ EXIT

CHAIN C0AURA2 a03.13
~哦……我明白。你一定很忙。不过你若改变主意，我会等你。再见！~
DO ~SetGlobal("C0AuraBegin","GLOBAL",10)
TriggerActivation("C0AuraHome",TRUE)
EscapeAreaMove("C0AU01",427,207,NNE)~ EXIT

CHAIN C0AURA2 a03.14
~我？我没事，<CHARNAME>，你知道我比看起来结实……多半是。这总比被熊瞪要强，对吧？什么都比那强。~
EXTERN C0AURA2 a03.17

CHAIN C0AURA2 a03.15
~哦，你若有时，我可以把整件事讲给你听。我们最后一起到这儿大多是巧合。可要早知道你会来，我会立刻去找你。~
EXTERN C0AURA2 a03.17

CHAIN C0AURA2 a03.16
~我不确定。我是说……他们要的是我带的这个包裹，可为什么，我不知道。他们似乎对我手里的东西知道些什么。~
END
++ ~里面是什么？~ + a03.18

CHAIN C0AURA2 a03.17
~我们何不一起回我的工坊？在那里可以聊聊我们各自都干了些什么。我正要去，路不远。你觉得好吗？~
END
++ ~当然，我有时间。~ + a03.19
++ ~我现在有点忙。~ + a03.20

CHAIN C0AURA2 a03.18
~你知道，我们一起回我工坊，我就能全讲给你听。我正要去，路不远。你觉得好吗？~
END
++ ~当然，我有时间。~ + a03.19
++ ~我现在有点忙。~ + a03.20

CHAIN C0AURA2 a03.19
~太好了！那我们走吧。到了我一定备好茶。~
DO ~SetGlobal("C0AuraBegin","GLOBAL",10)
TriggerActivation("C0AuraHome",TRUE)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut7")~ EXIT

CHAIN C0AURA2 a03.20
~哦，好吧。不过我希望你很快来一趟。我盼着能尽快跟你叙叙。回头见！~
DO ~SetGlobal("C0AuraBegin","GLOBAL",10)
EscapeAreaMove("C0AU01",427,207,NNE)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",10)~ THEN C0AURA2 b1
~好，我们到了。欢迎来到我的工坊！嗯，严格说不是我的，可这是我一直在干活的地方。~ [C0BLANK]
DO ~SetGlobal("C0AuraBegin","GLOBAL",11)~
== C0APICO ~欢迎回来，奥拉小姐！壶里有茶，想喝就喝。~
== JANJ IF ~InParty("JAN")~ THEN ~哦，天哪……我不在的时候，这地方改善了不少，不是吗？~
== JAHEIRAJ IF ~InParty("JAHEIRA") Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~看来她混得不错。~
== C0AURA2 ~我很久没有自己的地方干活了，所以真感激简森家给了我这间屋。它对我帮助极大。~
END
++ ~相当不错。~ + b1.1
++ ~你这里的东西很有意思。~ + b1.1
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~我看这儿还摆着几样我们过去旅行时的东西。~ + b1.1

CHAIN C0AURA2 b1.1
~就当自己家，<CHARNAME>！我有种极好的柠檬叶茶，配本地糕点正合适。会很棒的。~
== JANJ IF ~InParty("JAN")~ THEN ~茶，嗯？那好，那我就不客气了。哦，我真傻，这本来就是我家……~
END
IF ~!InParty("JAN")~ DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut4a")~ EXIT
IF ~InParty("JAN")~ DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut4b")~ EXIT

/*
CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",1)~ THEN C0AURA2 a1
~哦，门口有人吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraBegin","GLOBAL",3)~
== JANJ IF ~InParty("JAN")~ THEN ~哦，天哪……我不在的时候，这地方改善了不少，不是吗？~
== JAHEIRAJ IF ~InParty("JAHEIRA") Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~看来她过得不错。~
== C0AURA2 ~稍等，我把这张画完……好了！那么，怎么回事？~
END
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)
Global("C0AuraRomanceActive","GLOBAL",1)~ + ~嘿，奥拉。你气色不错。~ EXTERN C0AURA2 INTRO-DIALOG-1-1
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~你好，奥拉。好久不见了。~ EXTERN C0AURA2 INTRO-DIALOG-1-1
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~真没想到会在这种地方再见到你。~ EXTERN C0AURA2 INTRO-DIALOG-1-1
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~抱歉打扰。~ EXTERN C0AURA2 INTRO-DIALOG-1-1
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~那么，你一定就是那位奇械师。~ EXTERN C0AURA2 INTRO-DIALOG-1-1

CHAIN C0AURA2 INTRO-DIALOG-1-1
~嗯……？~
DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut2")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",3) !Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN C0AURA2 INTRO-DIALOG-1-1a
~呃……<DAYNIGHTALL>好。我该谢哪位？<DAYNIGHTALL>好。~ [C0BLANK]
END
++ ~我叫<CHARNAME>。听说这里有位兰坦的奇械师，想来认识一下。~ + INTRO-DIALOG-2
++ ~我叫<CHARNAME>。老实说，我只是好奇是什么弄出这么大动静。~ + INTRO-DIALOG-2

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",3) Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN C0AURA2 INTRO-DIALOG-1-1b
~<CHARNAME>？~ [C0BLANK]
END
IF ~Global("C0AuraRomanceActive","GLOBAL",1)~ + INTRO-DIALOG-1-3
IF ~!Global("C0AuraRomanceActive","GLOBAL",1)~ + INTRO-DIALOG-1-4

CHAIN C0AURA2 INTRO-DIALOG-1-3
~我……我——~
END
++ ~什么——~ DO ~SetGlobal("C0AuraBegin","GLOBAL",4)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut3")~ EXIT
++ ~你——~ DO ~SetGlobal("C0AuraBegin","GLOBAL",4)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut3")~ EXIT
++ ~呃——~ DO ~SetGlobal("C0AuraBegin","GLOBAL",4)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut3")~ EXIT

CHAIN C0AURA2 INTRO-DIALOG-1-4
~哇，真是你！听说博德之门出的事之后，我以为……总之，又见到你太好了！~
= ~你什么时候到的？早知道我就去找你，可我没想你会……我是说，我从没想过会在这种地方见到你！~
END
++ ~说来话长。你有时间听吗？~ + INTRO-DIALOG-1-5
++ ~要我讲讲我怎么被袭击、被抓、被做实验，然后才流落到这座城里的吗？~ + INTRO-DIALOG-1-6
++ ~我从头讲起……~ + INTRO-DIALOG-1-5

CHAIN C0AURA2 INTRO-DIALOG-1-5
~等——等等，我先给咱们备些茶……我看得出我们有好多要补的。~
== JANJ IF ~InParty("JAN")~ THEN ~茶，嗯？那好，那我就不客气了。哦，我真傻，这本来就是我家……~
END
IF ~!InParty("JAN")~ DO ~SetGlobal("C0AuraBegin","GLOBAL",5)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut4a")~ EXIT
IF ~InParty("JAN")~ DO ~SetGlobal("C0AuraBegin","GLOBAL",5)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut4b")~ EXIT

CHAIN C0AURA2 INTRO-DIALOG-1-6
~你被——哦，天哪……~
EXTERN C0AURA2 INTRO-DIALOG-1-5

CHAIN IF WEIGHT #-1 ~Global("C0AuraRomanceActive","GLOBAL",1)
Global("C0AuraBegin","GLOBAL",4)~ THEN C0AURA2 INTRO-ROMANCE-1
~*抱*~ [C0BLANK]
END
++ ~哎哟！~ + INTRO-ROMANCE-2

CHAIN C0AURA2 INTRO-ROMANCE-2
~哦……真是你！我——我不敢信……我好想好想你，<CHARNAME>！我……*抽鼻子*~
END
++ ~嘿——嘿，你抱得有点太紧了……~ + INTRO-ROMANCE-3
++ ~我也想你了，奥拉。~ + INTRO-ROMANCE-3
++ ~等等，别现在就哭……~ + INTRO-ROMANCE-3

CHAIN C0AURA2 INTRO-ROMANCE-3
~*抽鼻子* ……对——对不起，我——我有点撑不住。我不知道为什么，我该高兴……~
EXTERN C0AURA2 INTRO-DIALOG-1-5

CHAIN C0AURA2 INTRO-DIALOG-2
~哦，我明白。呃，我先给咱们备些茶吧？不介意的话，我们去那边聊。~
== JANJ IF ~InParty("JAN")~ THEN ~茶，嗯？那好，那我就不客气了。哦，我真傻，这本来就是我家……~
END
IF ~!InParty("JAN")~ DO ~SetGlobal("C0AuraBegin","GLOBAL",5)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut4a")~ EXIT
IF ~InParty("JAN")~ DO ~SetGlobal("C0AuraBegin","GLOBAL",5)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut4b")~ EXIT
*/
CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",11) !Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN C0AURA2 a3
~真抱歉我没能收拾一下。近来我没准备会有客人。~ [C0BLANK]
DO ~SetGlobal("C0AuraBegin","GLOBAL",12)~
== C0AURA2 IF ~InParty("JAN")~ THEN ~哦，对了，这是皮可的堂亲吗？我到刚才都没见过他。终于见到你真好。~
== JANJ IF ~InParty("JAN")~ THEN ~是，也很高兴见到你。我好久没碰到兰坦来的人了。那儿如今怎么样？希望人们还没把自己炸上天。那会是巨大的损失。更别说收拾起来一团糟。~
== C0AURA2 IF ~InParty("JAN")~ THEN ~呃，我很久没回家了，可若我收到的信还算数，那他们确实没有……~
== JANJ IF ~InParty("JAN")~ THEN ~哦，好。那样的话，我希望不久能听到些老友的消息。那么，别管我。你们跟<CHARNAME>说话，我就享用这壶好茶。<PRO_HESHE>当然没有我的机智与派头，可<PRO_HESHE>毕竟是领头的。*啜* 啊……比不上我们家乡的芜菁叶茶，可排得很近的第二。~
== C0AURA2 ~总之，很高兴认识你，<CHARNAME>。我从没想到会在这种地方遇上博德之门的著名英雄！~
END
++ ~你到底知道我多少？~ + INTRO-DIALOG-2-1
++ ~也很高兴认识你，奥拉。~ + INTRO-DIALOG-2-1
++ ~那么，你究竟是谁？~ + INTRO-DIALOG-2-4

CHAIN C0AURA2 INTRO-DIALOG-2-1
~其实我不久前也在博德之门。可惜我们没在那儿碰上，可我听过所有你阻止战争的那些英雄事迹！~
= ~在安姆关于你的传说不多，可我想这也说得通……听说门城那边想对一切保持沉默，所以我在事发时正好在那儿，真是走运。~
END
++ ~说起来，我觉得我们以前见过，很短暂……在贝雷戈斯特？~ + INTRO-DIALOG-2-2
++ ~那我们以前没见过真是奇迹。我肯定会记得你。~ + INTRO-DIALOG-2-3

CHAIN C0AURA2 INTRO-DIALOG-2-2
~真的？等等，我想起来了！你跟我们那时见的样子差别好大。嘿嘿……相比之下，我想我没怎么变。~
= ~哦，太可惜了。那时我若加入了你们，我们本可以更了解彼此！嗯，命运就是这样吧，我想……~
EXTERN C0AURA2 INTRO-DIALOG-2-4

CHAIN C0AURA2 INTRO-DIALOG-2-3
~你这么说真好。我想象不出自己重要到让你这样的人记得，可我很高兴如今遇见了你。~
EXTERN C0AURA2 INTRO-DIALOG-2-4

CHAIN C0AURA2 INTRO-DIALOG-2-4
~好，我该正式自我介绍。我是奥瑞莉亚·格利默夏恩，请叫我奥拉。我是兰坦的学者与奇械师。~
END
+ ~!Global("C0AuraBattleTalk","GLOBAL",1)
CheckStatGT(Player1,11,INT)
!CheckStatGT(Player1,15,INT)
!Class(Player1,FIGHTER)
!Kit(Player1,FERALAN)~ + ~你是学者，可看你这身盔甲，你战斗也该有些经验，对吧？~ DO ~SetGlobal("C0AuraBattleTalk","GLOBAL",1) SetGlobal("C0AuraJoinTalk","GLOBAL",1)~ + INTRO-DIALOG-2-5
+ ~!Global("C0AuraBattleTalk","GLOBAL",1)
OR(3)
CheckStatGT(Player1,15,INT)
Class(Player1,FIGHTER)
Kit(Player1,FERALAN)~ + ~你是学者，可我注意到你穿着盔甲，也看得出你弓术熟练……我说错了吗？~ DO ~SetGlobal("C0AuraBattleTalk","GLOBAL",1) SetGlobal("C0AuraJoinTalk","MYAREA",1)~ + INTRO-DIALOG-2-5
+ ~!Global("C0AuraBackgroundTalk","MYAREA",1)~ + ~一位兰坦学者到底在安姆这儿做什么？~ + INTRO-DIALOG-2-6
+ ~!Global("C0AuraConstructTalk","MYAREA",1)~ + ~我注意到那边那台相当了不起的构造体。那是兰坦的手艺吗？~ DO ~SetGlobal("C0AuraConstructTalk","MYAREA",1)~ + INTRO-DIALOG-2-8
++ ~跟你聊得挺愉快，可我怕得走了。~ + INTRO-DIALOG-2-9

CHAIN C0AURA2 INTRO-DIALOG-2-5
~哦？~
= ~嘿嘿……好眼力。我不是战士，可作为旅行的学者，有时你需要保护自己的能力……不过我想这不用我说。~
= ~可我真没那么厉害。我肯定没有你的经验，很多时候我得靠那边那大块头。~
END
+ ~!Global("C0AuraConstructTalk","MYAREA",1)~ + ~说到这个……你那台构造体真了不起。是兰坦的手艺吗？~ DO ~SetGlobal("C0AuraConstructTalk","MYAREA",1)~ + INTRO-DIALOG-2-8
+ ~!Global("C0AuraBackgroundTalk","MYAREA",1)~ + ~一位兰坦学者到底在安姆这儿做什么？~ + INTRO-DIALOG-2-6
+ ~Global("C0AuraJoinTalk","MYAREA",1)~ + ~你若路上有经验，我正需要盟友。有兴趣加入我吗？~ + INTRO-JOINME
++ ~跟你聊得挺愉快，可我怕得走了。~ + INTRO-DIALOG-2-9

CHAIN C0AURA2 INTRO-DIALOG-2-6
~哦……这正是那个问题，不是吗？其实我很久没回家了。我，呃……几年前离开，去游历世界，好了解、体验世界的其余部分。~
= ~兰坦不算太远，也是个好地方，可它太与世隔绝。这几年我学到的许多东西，在家怎么也学不到。~
= ~我在安姆待得不算久。可侏儒在这儿找地方不容易，我运气好，简森家好心给了我住处和干活的地方。若不是这样，我大概不会在这儿。~
END
++ ~你说你走遍世界？你还去过哪儿？~ DO ~SetGlobal("C0AuraJoinTalk","MYAREA",1)~ + INTRO-DIALOG-2-7
+ ~!Global("C0AuraBattleTalk","GLOBAL",1)
CheckStatGT(Player1,11,INT)
!CheckStatGT(Player1,15,INT)
!Class(Player1,FIGHTER)
!Kit(Player1,FERALAN)~ + ~你是学者，可看你这身盔甲，你战斗也该有些经验，对吧？~ DO ~SetGlobal("C0AuraBattleTalk","GLOBAL",1) SetGlobal("C0AuraJoinTalk","GLOBAL",1)~ + INTRO-DIALOG-2-5
+ ~!Global("C0AuraBattleTalk","GLOBAL",1)
OR(3)
CheckStatGT(Player1,15,INT)
Class(Player1,FIGHTER)
Kit(Player1,FERALAN)~ + ~你是学者，可我注意到你穿着盔甲，也看得出你弓术熟练……我说错了吗？~ DO ~SetGlobal("C0AuraBattleTalk","GLOBAL",1) SetGlobal("C0AuraJoinTalk","MYAREA",1)~ + INTRO-DIALOG-2-5
+ ~!Global("C0AuraConstructTalk","MYAREA",1)~ + ~我注意到那边那台相当了不起的构造体。那是兰坦的手艺吗？~ DO ~SetGlobal("C0AuraConstructTalk","MYAREA",1)~ + INTRO-DIALOG-2-8
+ ~Global("C0AuraJoinTalk","MYAREA",1)~ + ~你若路上有经验，我正需要盟友。有兴趣加入我吗？~ + INTRO-JOINME
++ ~跟你聊得挺愉快，可我怕得走了。~ + INTRO-DIALOG-2-9

CHAIN C0AURA2 INTRO-DIALOG-2-7
~嗯，全数出来要些时间，可真是各种各样。谷区、阿格拉隆德、琼达斯……北方去得少些，听说在那儿活下来很苦……也去过费伦以外的几片土地——玛兹特克和卡拉图……其实我不久前还在科祖库拉住过几年。~
DO ~SetGlobal("C0AuraBackgroundTalk","GLOBAL",1)~ 
= ~多半时候我不是一个人，可我很久前失散了随行的人，早在我定居这儿之前……那可是个长故事。~
END
+ ~!Global("C0AuraBattleTalk","GLOBAL",1)
CheckStatGT(Player1,11,INT)
!CheckStatGT(Player1,15,INT)
!Class(Player1,FIGHTER)
!Kit(Player1,FERALAN)~ + ~你是学者，可看你这身盔甲，你战斗也该有些经验，对吧？~ DO ~SetGlobal("C0AuraBattleTalk","GLOBAL",1) SetGlobal("C0AuraJoinTalk","GLOBAL",1)~ + INTRO-DIALOG-2-5
+ ~!Global("C0AuraBattleTalk","GLOBAL",1)
OR(3)
CheckStatGT(Player1,15,INT)
Class(Player1,FIGHTER)
Kit(Player1,FERALAN)~ + ~你是学者，可我注意到你穿着盔甲，也看得出你弓术熟练……我说错了吗？~ DO ~SetGlobal("C0AuraBattleTalk","GLOBAL",1) SetGlobal("C0AuraJoinTalk","MYAREA",1)~ + INTRO-DIALOG-2-5
+ ~!Global("C0AuraConstructTalk","MYAREA",1)~ + ~我注意到那边那台相当了不起的构造体。那是兰坦的手艺吗？~ DO ~SetGlobal("C0AuraConstructTalk","MYAREA",1)~ + INTRO-DIALOG-2-8
+ ~Global("C0AuraJoinTalk","MYAREA",1)~ + ~你若路上有经验，我正需要盟友。有兴趣加入我吗？~ + INTRO-JOINME
++ ~跟你聊得挺愉快，可我怕得走了。~ + INTRO-DIALOG-2-9

CHAIN C0AURA2 INTRO-DIALOG-2-8
~哦，是的。那是兰坦的古老手艺，用金属和钟表机构制成。设计相当复杂，可多数有足够经验的发明家都能不太费劲地造出来。~
== JANJ IF ~InParty("JAN")~ THEN ~我得说，我们一进来，那大块头就吸住了我的眼。我在想能不能弄两台来打理我们的园子？~
== C0AURA2 ~概念上跟法师的魔像差别不大。不过我们不太喜欢冲突，所以多半用于重型建造。不过我这台改成了能上战场的，因为我时不时得进些危险境地。~
END
+ ~!Global("C0AuraBattleTalk","GLOBAL",1)
CheckStatGT(Player1,11,INT)
!CheckStatGT(Player1,15,INT)
!Class(Player1,FIGHTER)
!Kit(Player1,FERALAN)~ + ~你是学者，可看你这身盔甲，你战斗也该有些经验，对吧？~ DO ~SetGlobal("C0AuraBattleTalk","GLOBAL",1) SetGlobal("C0AuraJoinTalk","GLOBAL",1)~ + INTRO-DIALOG-2-5
+ ~!Global("C0AuraBattleTalk","GLOBAL",1)
OR(3)
CheckStatGT(Player1,15,INT)
Class(Player1,FIGHTER)
Kit(Player1,FERALAN)~ + ~你是学者，可我注意到你穿着盔甲，也看得出你弓术熟练……我说错了吗？~ DO ~SetGlobal("C0AuraBattleTalk","GLOBAL",1) SetGlobal("C0AuraJoinTalk","MYAREA",1)~ + INTRO-DIALOG-2-5
+ ~!Global("C0AuraBackgroundTalk","MYAREA",1)~ + ~一位兰坦学者到底在安姆这儿做什么？~ + INTRO-DIALOG-2-6
+ ~Global("C0AuraJoinTalk","MYAREA",1)~ + ~你若路上有经验，我正需要盟友。有兴趣加入我吗？~ + INTRO-JOINME
++ ~跟你聊得挺愉快，可我怕得走了。~ + INTRO-DIALOG-2-9

CHAIN C0AURA2 INTRO-DIALOG-2-9
~哦，你这就要走了？那……~
== C0AURA2 ~其实……我有件事想求你，<CHARNAME>。若不太麻烦你，你愿不愿让我加入？~
== C0AURA2 IF ~!Class(Myself,MAGE_ALL) !Class(Myself,CLERIC_ALL)~ ~我知道你是经验丰富的旅人，我没有能与你相比的功绩，可我觉得我还有更多要学，光靠我自己的力量，我怕过不了前头的试炼。我擅长机械与炼金，也会使弓。我肯定不拖你后腿！~
== C0AURA2 IF ~Class(Myself,MAGE_ALL)~ ~我知道你是经验丰富的旅人，我没有能与你相比的功绩，可我觉得我还有更多要学，光靠我自己的力量，我怕过不了前头的试炼。我擅长机械与炼金，也会使弓。除了符文法术，我也懂一点普通魔法。我肯定不拖你后腿！~
== C0AURA2 IF ~Class(Myself,CLERIC_ALL)~ ~我知道你是经验丰富的旅人，我没有能与你相比的功绩，可我觉得我还有更多要学，光靠我自己的力量，我怕过不了前头的试炼。我擅长机械与炼金，也会使弓。多亏在科祖库拉受的训练，我也懂一点神术。我肯定不拖你后腿！~
END
++ ~我当然不介意多些同伴。~ + INTRO-JOINME
+ ~NumInPartyGT(1)~ + ~我怕我现在需要的同伴都齐了。~ + INTRO-JOINME-NO
+ ~!NumInPartyGT(1)~ + ~我怕我宁愿独自干活。~ + INTRO-JOINME-NO
++ ~不可能。~ + INTRO-JOINME-NO

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",11) Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN C0AURA2 a4
~呃……抱歉我没能布置得更好些。若我有更多时间准备，本可以做更多来迎接你。希望你不介意。~ [C0BLANK]
DO ~SetGlobal("C0AuraBegin","GLOBAL",12)~
END
++ ~没关系。我感谢你的心意。~ + INTRO-DIALOG-3-1
++ ~那么……我该从哪儿讲起？~ + INTRO-DIALOG-3-1
++ ~我不是来喝茶的，奥拉。~ + INTRO-DIALOG-3-2

CHAIN C0AURA2 INTRO-DIALOG-3-1
~我看见了步道上出的事。嗯……我先听说了，然后去看残局……我吓坏了。看那破坏的惨状，我以为也许是烟火药事故。~
== C0AURA2 IF ~InParty("JAN")~ THEN ~我也没料到你已经见过了皮可的堂亲。我到刚才自己都没见过他。终于见到你真好。~
== JANJ IF ~InParty("JAN")~ THEN ~是，也很高兴见到你。我好久没碰到兰坦来的人了。那儿如今怎么样？希望人们还没把自己炸上天。那会是巨大的损失。更别说收拾起来一团糟。~
== C0AURA2 IF ~InParty("JAN")~ THEN ~呃，我很久没回家了，可若我收到的信还算数，那他们确实没有……~
== JANJ IF ~InParty("JAN")~ THEN ~哦，好。那样的话，我希望不久能听到些老友的消息。那么，别管我。你们跟<CHARNAME>说话，我就享用这壶好茶。<PRO_HESHE>当然没有我的机智与派头，可<PRO_HESHE>毕竟是领头的。*啜* 啊……比不上我们家乡的芜菁叶茶，可排得很近的第二。~
== C0AURA2 IF ~InParty("JAN")~ THEN ~总之……我刚才说到哪儿了？哦，对。步道上出的事。~
== C0AURA2 ~这多半是猜的……可我想那跟你有关吧？~
END
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~事发时我在场。兜帽法师带走了该负责的人……还有爱蒙。~ + INTRO-DIALOG-3-3
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~事发时我在场。兜帽法师带走了该负责的人……还有我的朋友。~ + INTRO-DIALOG-3-4
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~这种事好像总只落到我头上，不是吗？~ + INTRO-DIALOG-3-5
++ ~我与此事无关。那全是我被抓我的那个法师干的。~ + INTRO-DIALOG-3-6
++ ~你说我牵涉其中，也不算全错，我想。~ + INTRO-DIALOG-3-7
++ ~我宁愿不谈那个。你还听说什么了？~ + INTRO-DIALOG-3-7

CHAIN C0AURA2 INTRO-DIALOG-3-2
~我知道。我只是正要说到你大概想谈的事。~
EXTERN C0AURA2 INTRO-DIALOG-3-1

CHAIN C0AURA2 INTRO-DIALOG-3-3
~什——什么？爱蒙被——哦，太可怕了！~
EXTERN C0AURA2 INTRO-DIALOG-3-7

CHAIN C0AURA2 INTRO-DIALOG-3-4
~兜帽法师带走了——？哦，对不起。~
EXTERN C0AURA2 INTRO-DIALOG-3-7

CHAIN C0AURA2 INTRO-DIALOG-3-5
~嘿嘿……我不是那个意思，<CHARNAME>，对不起。可我猜你某种程度上有牵涉，这不算错，对吧？~
EXTERN C0AURA2 INTRO-DIALOG-3-7

CHAIN C0AURA2 INTRO-DIALOG-3-6
~我听说炸毁步道的那个法师力量超乎想象。若我看到的只是余波，我都不敢想亲眼看见会是什么样。~
EXTERN C0AURA2 INTRO-DIALOG-3-7

CHAIN C0AURA2 INTRO-DIALOG-3-7
~抱歉我帮不上更多。除了传闻，我对那边发生的事真知道不多。我多数日子闷在这小工坊里，出门也常只去那几个地方。就连我知道的这点，多半也是偶然听来的。~
= ~总之……我猜你来等我是有原因的，对吧？我能为你做什么，<CHARNAME>？~
END
++ ~先从你说起。你过得怎么样？感觉我们上次一起旅行已是很久很久以前。~ + INTRO-DIALOG-3-8
+ ~Global("C0AuraRomanceActive","GLOBAL",1)~ + ~我现在需要盟友，奥拉。你愿意再与我同行吗？~ + INTRO-JOINME-ROMANCE
+ ~Global("C0AuraKnowsBG1","GLOBAL",1) !Global("C0AuraRomanceActive","GLOBAL",1)~ + ~我现在需要盟友，奥拉。你愿意再与我同行吗？~ + INTRO-JOINME-BG1
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~我现在需要盟友，奥拉。你愿意加入我吗？~ + INTRO-JOINME
++ ~暂时没事。抱歉打扰你。~ + INTRO-GOODBYE

CHAIN C0AURA2 INTRO-DIALOG-3-8
~我知道，对吧？我们在剑湾上上下下冒险时，我觉得日子过得飞快，可分开之后，忽然觉得日子长了好多。~
== C0AURA2 IF ~Global("C0AuraRomanceActive","GLOBAL",1)~ THEN ~我真的想你了，你知道。我总忍不住想还能不能再见到你……~
== C0AURA2 ~嗯，就像老兰坦语说的：“pasientia cul es sathienae”——呃，就是说，有时你只需要耐心，对吧？~
END
++ ~你到底怎么跟简森家住到一起的？~ + INTRO-DIALOG-3-9
+ ~Global("C0AuraRomanceActive","GLOBAL",1)~ + ~我现在需要盟友，奥拉。你愿意再与我同行吗？~ + INTRO-JOINME-ROMANCE
+ ~Global("C0AuraKnowsBG1","GLOBAL",1) !Global("C0AuraRomanceActive","GLOBAL",1)~ + ~我现在需要盟友，奥拉。你愿意再与我同行吗？~ + INTRO-JOINME-BG1
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~我现在需要盟友，奥拉。你愿意加入我吗？~ + INTRO-JOINME
++ ~暂时没事。抱歉打扰你。~ + INTRO-GOODBYE

CHAIN C0AURA2 INTRO-DIALOG-3-9
~嗯，老实说……真是撞了大运。我们被迫分开后，我决定南下回兰坦。~
= ~我一路到了阿斯卡特拉。这儿的人不待见侏儒，可我想这大概最容易租到回家的船……可当时没有愿意去那边的船。~
= ~我在城里逛时，在桥区碰见凯莉在摆摊。几个混混不喜欢她卖的东西在骚扰她，我只得插手，用我的发条仆役把他们吓跑。~
= ~之后我跟凯莉聊，知道了她家的生意，还有近来不太景气。我告诉他们我来自兰坦，他们就把工坊让给我住，从此待我如家人。我甚至有机会好久以来第一次写信回家。我很感激他们。~
END
+ ~Global("C0AuraRomanceActive","GLOBAL",1)~ + ~我现在需要盟友，奥拉。你愿意再与我同行吗？~ + INTRO-JOINME-ROMANCE
+ ~Global("C0AuraKnowsBG1","GLOBAL",1) !Global("C0AuraRomanceActive","GLOBAL",1)~ + ~我现在需要盟友，奥拉。你愿意再与我同行吗？~ + INTRO-JOINME-BG1
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~我现在需要盟友，奥拉。你愿意加入我吗？~ + INTRO-JOINME
++ ~暂时没事。抱歉打扰你。~ + INTRO-GOODBYE

CHAIN C0AURA2 INTRO-JOINME-ROMANCE
~是，当然愿意！我本来也正想提。我好想念跟你一起旅行，<CHARNAME>。~
EXTERN C0AURA2 INTRO-JOINME-1

CHAIN C0AURA2 INTRO-JOINME-BG1
~哦，我很想再跟你一起旅行！能在这儿干活挺好，可我想出去一趟、把我的手艺实际用起来，也许正是我需要的。~
EXTERN C0AURA2 INTRO-JOINME-1

CHAIN C0AURA2 INTRO-JOINME
~你真会请我帮忙？我很乐意！我最新的造物反正也需要实地测试，而且我也有个伴。~
EXTERN C0AURA2 INTRO-JOINME-1

CHAIN C0AURA2 INTRO-JOINME-1
~我带着便携工具包、炼金本事和我的太阳射手。我也许不是最好的战士，可我肯定还是对你有用的！~
END
+ ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%) Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~我该先跟你说说我们的任务。步道那场事里，爱蒙被兜帽法师抓走了，我要去救她。会有相当的危险。~ + INTRO-JOINME-2
+ ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%) !Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~我该先跟你说说我们的任务。我的一位老友，爱蒙，在步道那场事里被兜帽法师抓走了，我要去救她。会有相当的危险。~ + INTRO-JOINME-3
+ ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + ~好。不过你该知道，我在追一个叫爱瑞尼库斯的强大法师。就是他抓了我、折磨我，我打算找到他。会很危险。~ + INTRO-JOINME-4
++ ~好，我们走。~ DO ~SetGlobal("C0AuraQuest1","GLOBAL",1) JoinParty()~ + INTRO-JOINME-5

CHAIN C0AURA2 INTRO-JOINME-2
~爱蒙也是我的朋友，所以若救她意味着冒险，我不怕。我知道兜帽法师很强，可那正说明你需要能得到的全部帮助。我会尽力帮你，<CHARNAME>。~
EXTERN C0AURA2 INTRO-JOINME-5

CHAIN C0AURA2 INTRO-JOINME-3
~她对你这么重要，那若救她意味着冒险，我不怕。我知道兜帽法师很强，可那正说明你需要能得到的全部帮助。我会尽力帮你，<CHARNAME>。~
EXTERN C0AURA2 INTRO-JOINME-5

CHAIN C0AURA2 INTRO-JOINME-4
~就是那个在步道造成大片破坏的人，对吧？你若要去对付这么危险强大的人，那你就需要能得到的全部帮助。我会尽力帮你，<CHARNAME>。~
EXTERN C0AURA2 INTRO-JOINME-5

CHAIN C0AURA2 INTRO-JOINME-5
~哦，可我们走之前……我桌上还留着几份设计图。你若能把上面列的东西都凑齐，我就能造出些神妙物品，帮我们大忙。~
= ~还有我那台发条仆役也能帮上忙，你若想带上它。我只要一点时间启动它，就能走。~
= ~嗯，我想就这些了。好，我出门时可以把工坊托给皮可。我们走！~
DO ~EquipRanged() JoinParty()~ EXIT

CHAIN C0AURA2 INTRO-GOODBYE
~哦，一点也不麻烦。~
= IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~又见到你真好，<CHARNAME>。希望你能偶尔来打个招呼。我多数时候都在这儿。~
= IF ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~很高兴认识你，<CHARNAME>。你想的话随时来打招呼。我多数时候都在这儿。~
EXIT

CHAIN C0AURA2 INTRO-JOINME-NO
~哦……真可惜。~
= IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~又见到你真好，<CHARNAME>。希望你能偶尔来打个招呼。我多数时候都在这儿。~
= IF ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~很高兴认识你，<CHARNAME>。你想的话随时来打招呼。我多数时候都在这儿。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",12)~ THEN C0AURA2 a1
~又见面了，<CHARNAME>，见你平安无事真好。有什么我能为你做的吗？~ [C0BLANK]
END
+ ~Global("C0AuraRomanceActive","GLOBAL",1)~ + ~我现在需要盟友，奥拉。你愿意再与我同行吗？~ + INTRO-JOINME-ROMANCE
+ ~Global("C0AuraKnowsBG1","GLOBAL",1) !Global("C0AuraRomanceActive","GLOBAL",1)~ + ~我现在需要盟友，奥拉。你愿意再与我同行吗？~ + INTRO-JOINME-BG1
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~我现在需要盟友，奥拉。你愿意加入我吗？~ + INTRO-JOINME
++ ~暂时没事。抱歉打扰你。~ + INTRO-GOODBYE


CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",8)~ THEN C0AURA2P quest3-8
~喂，<CHARNAME>！别担心，我不会忘了去找你。我只在这儿待一会儿叙叙。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",39)~ THEN C0AURA2P quest3-39-fight
~我用箭给你压阵，<CHARNAME>！~
DO ~ApplySpellRES("c0aqef24",Myself)
ChangeEnemyAlly(Myself,ALLY)~ EXIT


CHAIN IF ~AreaCheck("C0AU01")
Global("KickedOut","LOCALS",1)~ THEN C0AURA2P a2
~嘿！见到你总是好事，<CHARNAME>。你需要什么？~
END
+ ~AreaCheck("C0AU01")~ + ~我想请你造点东西。~ EXTERN BC0AURA2 CRAFT
++ ~我想请你再跟我同行。~ + a2.1
++ ~暂时没事。~ + a2.2
++ ~只是来看看。~ + a2.2

CHAIN IF ~!AreaCheck("C0AU01")
Global("KickedOut","LOCALS",1)~ THEN C0AURA2P a3
~你来了！我刚还在想什么时候能再见到你。那么，你需要什么？~
END
++ ~我想请你再跟我同行。~ + a2.1
++ ~暂时没事。~ + a3.1
++ ~只是来看看。~ + a3.1

APPEND C0AURA2P

IF WEIGHT #-1 ~Global("C0AuraKilledInnocents","GLOBAL",1)~ angry
SAY ~你——你做了什么？你做了什么？！~
IF ~~ DO ~SetGlobal("C0AuraKilledInnocents","GLOBAL",2)
    ChangeAIScript("",DEFAULT)
    LeaveParty()
    Enemy()~ EXIT
END

IF WEIGHT #-1 ~Global("C0AuraKnowsBG1","GLOBAL",1) HappinessLT(Myself,-299)~ unhappy1
SAY ~你……你变了，<CHARNAME>。我——对不起，可是……我再也受不了了。我要走。~
IF ~!Global("C0AuraRomanceActive","GLOBAL",1)
!Global("C0AuraRomanceActive","GLOBAL",2)~ DO ~EscapeArea()~ EXIT
IF ~OR(2)
Global("C0AuraRomanceActive","GLOBAL",1)
Global("C0AuraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3) EscapeArea()~ EXIT
END

IF WEIGHT #-1 ~!Global("C0AuraKnowsBG1","GLOBAL",1) HappinessLT(Myself,-299)~ unhappy2
SAY ~我——对不起，可是……我再也受不了了。我要走。~
IF ~!Global("C0AuraRomanceActive","GLOBAL",1)
!Global("C0AuraRomanceActive","GLOBAL",2)~ DO ~EscapeArea()~ EXIT
IF ~OR(2)
Global("C0AuraRomanceActive","GLOBAL",1)
Global("C0AuraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3) EscapeArea()~ EXIT
END

IF ~!Global("C0AuraRomanceActive","GLOBAL",1)
!Global("C0AuraRomanceActive","GLOBAL",2)
Global("KickedOut","LOCALS",0)~ a1
SAY ~你真要我去，<CHARNAME>？我仍乐意留在你身边。~
++ ~算了。留在队里。~ + a1.1
+ ~!Global("chapter","GLOBAL",%bg2_chapter_4%)
!Global("chapter","GLOBAL",%bg2_chapter_5%)
!Global("chapter","GLOBAL",%bg2_chapter_7%)~ + ~我宁愿我们暂时分开。~ + a1.2a
+ ~OR(3)
Global("chapter","GLOBAL",%bg2_chapter_4%)
Global("chapter","GLOBAL",%bg2_chapter_5%)
Global("chapter","GLOBAL",%bg2_chapter_7%)~ + ~我宁愿我们暂时分开。~ + a1.2b
END

IF ~OR(2)
Global("C0AuraRomanceActive","GLOBAL",1)
Global("C0AuraRomanceActive","GLOBAL",2)
Global("KickedOut","LOCALS",0)~ a1
SAY ~唉……我真不想离开你，<CHARNAME>，可……我信你最清楚。你真不再需要我了？~
++ ~算了。留在队里。~ + a1.1
+ ~!Global("chapter","GLOBAL",%bg2_chapter_4%)
!Global("chapter","GLOBAL",%bg2_chapter_5%)
!Global("chapter","GLOBAL",%bg2_chapter_7%)~ + ~我宁愿我们暂时分开。~ + a1.2a
+ ~OR(3)
Global("chapter","GLOBAL",%bg2_chapter_4%)
Global("chapter","GLOBAL",%bg2_chapter_5%)
Global("chapter","GLOBAL",%bg2_chapter_7%)~ + ~我宁愿我们暂时分开。~ + a1.2b
END

IF ~~ a1.1
SAY ~好。那我们就照原样继续。~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ a1.2a
SAY ~你这么说的话。我回工坊去。你若需要我帮什么，去那儿找我。~
++ ~很好。那儿见。~ + a1.3
+ ~!AreaCheck("c0au01")~ + ~暂时留在这儿。我会回来找你。~ + a1.4
++ ~其实我改主意了。留下。~ + a1.1
END

IF ~~ a1.2b
SAY ~嗯，这……有点不幸，可若必须，我会想办法逃出这地方。我不确定我们还能不能再见，若能的话也不知要多久。你真要我去？~
++ ~我确定。祝你好运，奥拉。~ + a1.3
++ ~其实我改主意了。留下。~ + a1.1
END

IF ~~ a1.3
SAY ~好。回头见，<CHARNAME>。~
IF ~!AreaCheck("c0au01")~ DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("C0AU01",433,196,NW)
ActionOverride("c0auin3",EscapeAreaMove("C0AU01",214,370,S))~ EXIT
IF ~AreaCheck("c0au01")~ DO ~SetGlobal("KickedOut","LOCALS",1)
ActionOverride("c0auin3",MoveToPoint([214.370])~ EXIT
END
IF ~~ a1.4
SAY ~呃，你坚持的话。早点回来，好吗？~
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~~ a2.1
SAY ~当然。我准备好了，走吧！~
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ a2.2
SAY ~哦。那好，你若需要什么，我就在这儿！~
IF ~~ EXIT
END

IF ~~ a3.1
SAY ~好，好吧……我想我就在这儿等着。~
IF ~~ EXIT
END

END

CHAIN IF WEIGHT #-1 ~Global("C0AuraFinishedCrafting","GLOBAL",1)~ THEN C0AURA2P FINISH-CRAFT
~嗒——哒！是不是完美？我确定我们会好好用上它。当然，具体怎么用由你决定。可我累坏了……谁想喝茶？~
DO ~SetGlobal("C0AuraFinishedCrafting","GLOBAL",0)~
EXIT

CHAIN IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) Global("C0AuraInsulted","GLOBAL",0)~ THEN C0AURA2J pid
~嗯？~ [C0AU022]
END
 + ~!AreaCheck("C0AU01") Global("NoCraftOnlyOnce","LOCALS",0)~ + ~我想请你造点东西。~ DO ~SetGlobal("NoCraftOnlyOnce","LOCALS",1)~ + NOCRAFT
 + ~AreaCheck("C0AU01")~ + ~我想请你造点东西。~ EXTERN BC0AURA2 CRAFT
 + ~OR(2) Global("C0AuraRomanceActive","GLOBAL",1) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~（调情）~ + FLIRT
 ++ ~你有什么建议吗？~ + ADVICE
 ++ ~你在想什么？~ + RANDTALK
 ++ ~我能问你件事吗？~ + QUESTIONS
 ++ ~我觉得你的声音有点问题。~ + stringfix
 ++ ~我眼下什么都不需要。~ EXIT

CHAIN C0AURA2J NOCRAFT
~哦，嗯……我很乐意，可你知道，我重要的工具现在不在身上。我们回我工坊，再谈。~
EXIT

CHAIN BC0AURA2 CRAFT
~当然！记住，我要造什么，都需要设计图和零件。看看你手上的东西我能做什么……~
== BC0AURA2 IF ~PartyHasItem("c0anotea")~ THEN ~那是扬写的改进他发射器的设计图。我，呃，不确定能有多成功，可值得一试。~ [C0SCROLL]
== BC0AURA2 IF ~PartyHasItem("c0anote3")~ THEN ~接地符文护甲……是我曾叔祖设计的，你知道。先提醒一句……它比穿上护甲要讲究些技术。你若不够聪明、弄不懂它怎么运作，你被它电着的危险比敌人还大。~ [C0SCROLL]
== BC0AURA2 IF ~PartyHasItem("c0anote4")~ THEN ~哦，闪现之靴。造起来真好玩，穿在脚上也比相位之靴可靠得多。也不贵。~ [C0SCROLL]
== BC0AURA2 IF ~PartyHasItem("c0anote5")~ THEN ~还有高等射手护腕。谁戴上它都不会射偏。造起来很棘手，可很强。~ [C0SCROLL]
== BC0AURA2 IF ~PartyHasItem("c0anote6")~ THEN ~啊……还有加拉林大师的宝珠。我从没试过造它，可它是强大的反魔法工具。不过造起来有点贵。~ [C0SCROLL]
== BC0AURA2 IF ~PartyHasItem("c0anote7")~ THEN ~公羊之戒，嗯？那是件精巧的魔法物品。照设计图上详述的改进，我能让它的魔力冲击强得多。~ [C0SCROLL]
== BC0AURA2 IF ~PartyHasItem("c0anote8")~ THEN ~智力头带！马里乌斯叔叔有一条他设计的、带独特强化的。我想我总算把他的技法理出来了，只要有对的零件就能复制。~ [C0SCROLL]
== BC0AURA2 IF ~PartyHasItem("c0anote9")~ THEN ~还有破法者，由工艺女师阿瓦莉注册专利……那设计在兰坦是受限知识，因为有人滥用力量，可我，呃……自己学会了那技法。别问怎么学的。它能破任何魔法防护。~ [C0SCROLL]
END
IF ~OR(8)
PartyHasItem("c0anote3")
PartyHasItem("c0anote4")
PartyHasItem("c0anote5")
PartyHasItem("c0anote6")
PartyHasItem("c0anote7")
PartyHasItem("c0anote8")
PartyHasItem("c0anote9")
PartyHasItem("c0anotea")~ + CRAFT-SCHEMATICS
IF ~!PartyHasItem("c0anote3")
!PartyHasItem("c0anote4")
!PartyHasItem("c0anote5")
!PartyHasItem("c0anote6")
!PartyHasItem("c0anote7")
!PartyHasItem("c0anote8")
!PartyHasItem("c0anote9")
!PartyHasItem("c0anotea")~ + CRAFT-NO-SCHEMATICS

CHAIN BC0AURA2 CRAFT-NO-SCHEMATICS
~嗯……看来你身上没带任何设计图。等你找到一份，凑齐造那件物品所需的零件，我来做我这部分，好吗？~
EXIT

CHAIN BC0AURA2 CRAFT-SCHEMATICS
~你若凑齐了其中任何一件的零件，我们就能马上动手。你觉得呢？~
END
+ ~PartyHasItem("c0anotea")
PartyHasItem("xbow12")
PartyHasItem("xbow06")
PartyHasItem("scrl1n")
PartyHasItem("misc43")
PartyHasItem("misc42")
PartyGoldGT(5999)~ + ~我凑齐了闪光者发射器二型的零件。我们做那个。~ DO ~SetGlobal("C0AuraCraftItem","C0AU01",8)
ActionOverride("CraftForge",TakePartyItemNum("xbow12",1))
ActionOverride("CraftForge",TakePartyItemNum("xbow06",1))
ActionOverride("CraftForge",TakePartyItemNum("scrl1n",1))
ActionOverride("CraftForge",TakePartyItemNum("misc43",1))
ActionOverride("CraftForge",TakePartyItemNum("misc42",1))
ActionOverride("CraftForge",TakePartyGold(6000))
ActionOverride("CraftForge",TakePartyItem("c0anotea"))~ + CRAFT-CUTSCENE
+ ~PartyHasItem("c0anote3")
PartyHasItem("chan12")
NumItemsPartyGT("scrl05",1)
PartyHasItem("wand07")
PartyHasItem("misc6z")
PartyGoldGT(9999)~ + ~我凑齐了接地符文护甲的零件。我们做那个。~ DO ~SetGlobal("C0AuraCraftItem","C0AU01",1)
ActionOverride("CraftForge",TakePartyItemNum("chan12",1))
ActionOverride("CraftForge",TakePartyItemNum("wand07",1))
ActionOverride("CraftForge",TakePartyItemNum("scrl05",2))
ActionOverride("CraftForge",TakePartyItemNum("misc6z",1))
ActionOverride("CraftForge",TakePartyGold(10000))
ActionOverride("CraftForge",TakePartyItem("c0anote3"))~ + CRAFT-CUTSCENE
+ ~PartyHasItem("c0anote4")
PartyHasItem("boot08")
PartyHasItem("scrl6q")
PartyHasItem("scrl1h")
PartyHasItem("misc45")
PartyGoldGT(4999)~ + ~我凑齐了闪现之靴的零件。我们做那个。~ DO ~SetGlobal("C0AuraCraftItem","C0AU01",2)
ActionOverride("CraftForge",TakePartyItemNum("boot08",1))
ActionOverride("CraftForge",TakePartyItemNum("scrl6q",1))
ActionOverride("CraftForge",TakePartyItemNum("scrl1h",1))
ActionOverride("CraftForge",TakePartyItemNum("misc45",1))
ActionOverride("CraftForge",TakePartyGold(5000))
ActionOverride("CraftForge",TakePartyItem("c0anote4"))~ + CRAFT-CUTSCENE
+ ~PartyHasItem("c0anote5")
PartyHasItem("brac04")
PartyHasItem("helm20")
PartyHasItem("potn41")
NumItemsPartyGT("misc42",1)
PartyGoldGT(7499)~ + ~我凑齐了高等射手护腕的零件。我们做那个。~ DO ~SetGlobal("C0AuraCraftItem","C0AU01",3)
ActionOverride("CraftForge",TakePartyItemNum("brac04",1))
ActionOverride("CraftForge",TakePartyItemNum("helm20",1))
ActionOverride("CraftForge",TakePartyItemNum("potn41",1))
ActionOverride("CraftForge",TakePartyItemNum("misc42",2))
ActionOverride("CraftForge",TakePartyGold(7500))
ActionOverride("CraftForge",TakePartyItem("c0anote5"))~ + CRAFT-CUTSCENE
+ ~PartyHasItem("c0anote6")
NumItemsPartyGT("misc41",1)
PartyHasItem("scrl07")
PartyHasItem("amul19")
PartyGoldGT(7999)~ + ~我凑齐了加拉林守护宝珠的零件。我们做那个。~ DO ~SetGlobal("C0AuraCraftItem","C0AU01",4)
ActionOverride("CraftForge",TakePartyItemNum("misc41",2))
ActionOverride("CraftForge",TakePartyItemNum("scrl07",1))
ActionOverride("CraftForge",TakePartyItemNum("amul19",1))
ActionOverride("CraftForge",TakePartyGold(8000))
ActionOverride("CraftForge",TakePartyItem("c0anote6"))~ + CRAFT-CUTSCENE
+ ~PartyHasItem("c0anote7")
NumItemsPartyGT("scrl91",2)
PartyHasItem("ring33")
PartyHasItem("scrl8q")
NumItemsPartyGT("misc42",1)
PartyGoldGT(4999)~ + ~我凑齐了改进型公羊之戒的零件。我们做那个。~ DO ~SetGlobal("C0AuraCraftItem","C0AU01",5)
ActionOverride("CraftForge",TakePartyItemNum("scrl91",3))
ActionOverride("CraftForge",TakePartyItemNum("ring33",1))
ActionOverride("CraftForge",TakePartyItemNum("scrl8q",1))
ActionOverride("CraftForge",TakePartyItemNum("misc42",2))
ActionOverride("CraftForge",TakePartyGold(5000))
ActionOverride("CraftForge",TakePartyItem("c0anote7"))~ + CRAFT-CUTSCENE
+ ~PartyHasItem("c0anote8")
PartyHasItem("ring40")
PartyHasItem("amul16")
PartyHasItem("misc44")
PartyGoldGT(9999)~ + ~我凑齐了智力头带的零件。我们做那个。~ DO ~SetGlobal("C0AuraCraftItem","C0AU01",6)
ActionOverride("CraftForge",TakePartyItemNum("ring40",1))
ActionOverride("CraftForge",TakePartyItemNum("amul16",1))
ActionOverride("CraftForge",TakePartyItemNum("misc44",1))
ActionOverride("CraftForge",TakePartyGold(10000))
ActionOverride("CraftForge",TakePartyItem("c0anote8"))~ + CRAFT-CUTSCENE
+ ~PartyHasItem("c0anote9")
PartyHasItem("scrl9m")
NumItemsPartyGT("scrl7L",2)
NumItemsPartyGT("misc44",1)
PartyGoldGT(11999)~ + ~我凑齐了破法者的零件。我们做那个。~ DO ~SetGlobal("C0AuraCraftItem","C0AU01",7)
ActionOverride("CraftForge",TakePartyItemNum("scrl9m",1))
ActionOverride("CraftForge",TakePartyItemNum("scrl7L",3))
ActionOverride("CraftForge",TakePartyItemNum("misc44",2))
ActionOverride("CraftForge",TakePartyGold(12000))
ActionOverride("CraftForge",TakePartyItem("c0anote9"))~ + CRAFT-CUTSCENE
++ ~我现在不想做任何东西。~ + CRAFT-EXIT

CHAIN BC0AURA2 CRAFT-CUTSCENE
~当然！我照设计图带你走一遍流程，我们一起做。开始吧！~
DO ~StartCutSceneMode()
StartCutScene("C0ACRAFT")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraFinishedCrafting","GLOBAL",1)~ THEN C0AURA2J FINISH-CRAFT
~嗒——哒！是不是完美？我确定我们会好好用上它。当然，具体怎么用由你决定。可我累坏了……谁想喝茶？~
DO ~SetGlobal("C0AuraFinishedCrafting","GLOBAL",0)~
EXIT

CHAIN BC0AURA2 CRAFT-EXIT
~好。你若想让我造什么，回这儿来我们再商量。~
EXIT

CHAIN C0AURA2J stringfix
~呃。我得想办法处理一下这个。*咳* “啦，啦……”~
DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("c0areset")~ EXIT

CHAIN C0AURA2J ADVICE
~你问我建议？呃，让我想想……~
END
IF ~Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + CHAPTER-2-DEFAULT-1
IF ~RandomNum(4,1)
Global("TalkedToMadeen","GLOBAL",0)
Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + CHAPTER-2-MAGE
IF ~RandomNum(4,2)
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
Global("HaerDalisPlotStarted","GLOBAL",0)
Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + CHAPTER-2-BARD
IF ~RandomNum(4,3)
Global("GaalSpoke","GLOBAL",0)
Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + CHAPTER-2-CLERIC
IF ~RandomNum(4,4)
Global("TMAcceptance","GLOBAL",1)
Global("loganjob1","GLOBAL",0)
Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + CHAPTER-2-DRUID
IF ~PartyGoldGT(14999)
Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + CHAPTER-2-ALLGOLD
IF ~Global("Chapter","GLOBAL",%bg2_chapter_3%)
Global("WorkingForBodhi","GLOBAL",0)~ + CHAPTER-3-ARAN
IF ~Global("Chapter","GLOBAL",%bg2_chapter_3%)
Global("WorkingForBodhi","GLOBAL",1)
Global("C0AuraTalksAboutBodhi","GLOBAL",0)~ DO ~SetGlobal("C0AuraTalksAboutBodhi","GLOBAL",1)~ + CHAPTER-3-BODHI-1
IF ~Global("Chapter","GLOBAL",%bg2_chapter_3%)
Global("WorkingForBodhi","GLOBAL",1)
Global("C0AuraTalksAboutBodhi","GLOBAL",1)~ + CHAPTER-3-BODHI-2
IF ~Global("Chapter","GLOBAL",%bg2_chapter_4%)
GlobalLT("AsylumPlot","GLOBAL",11)~ + CHAPTER-4-BEFORE-SPELLHOLD
IF ~Global("Chapter","GLOBAL",%bg2_chapter_4%)
GlobalGT("AsylumPlot","GLOBAL",10)~ + CHAPTER-4-IN-SPELLHOLD
IF ~Global("Chapter","GLOBAL",%bg2_chapter_5%)~ + CHAPTER-5
IF ~Global("Chapter","GLOBAL",%bg2_chapter_6%)
!Dead("C6Bodhi")~ + CHAPTER-6-BODHI-ALIVE
IF ~Global("Chapter","GLOBAL",%bg2_chapter_6%)
Dead("C6Bodhi")~ + CHAPTER-6-BODHI-DEAD
IF ~Global("Chapter","GLOBAL",%bg2_chapter_7%)
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")~ + CHAPTER-7-SULDAN
IF ~Global("Chapter","GLOBAL",%bg2_chapter_7%)
OR(6)
AreaCheck("AR2900")
AreaCheck("AR2901")
AreaCheck("AR2902")
AreaCheck("AR2903")
AreaCheck("AR2904")
AreaCheck("AR2905")~ + CHAPTER-7-HELL

CHAIN C0AURA2J CHAPTER-2-DEFAULT-1
~哦，我不知道。阿斯卡特拉不是个友善的地方，所以我不太出门。可你若仔细找，我确定有不少活儿能让我们挣些金币。~
EXIT

CHAIN C0AURA2J CHAPTER-2-MAGE
~你知道贫民区那个大球体吗，就在简森家附近？我听说兜帽法师一直在找进去的办法。我想他们在行政区有个代表。我们何不去见见他们，看有没有活给我们干？~
EXIT

CHAIN C0AURA2J CHAPTER-2-BARD
~你知道五弦琴酒馆吗，<CHARNAME>？印记剧团是一班在酒馆下面戏台上演戏的伶人。我看过他们几出戏……太棒了。我们有机会何不去看看？~
EXIT

CHAIN C0AURA2J CHAPTER-2-CLERIC
~有次我去神殿区，被一个眼睛被挖掉的怪人尖叫着吼了一通，你信吗？他们在讲一个叫“无眼者”的神。真瘆人。我听说各教会对他们不太满意。~
EXIT

CHAIN C0AURA2J CHAPTER-2-DRUID
~我来安姆后一直想去贸市。据说它是城外最富的贸易中心之一。也许我们还能找到些兰坦的手艺品！~
EXIT

CHAIN C0AURA2J CHAPTER-2-ALLGOLD
~我想我们现在金币够了，何不去查查我们那位神秘盟友是谁？~
EXIT

CHAIN C0AURA2J CHAPTER-3-ARAN
~我不担心影贼出卖我们。我更担心他们逼我们干他们的脏活。可我们也没别的选择……对吧？~
EXIT

CHAIN C0AURA2J CHAPTER-3-BODHI-1
~你觉得波蒂真打算帮我们吗，<CHARNAME>？~
END
++ ~我想是的。~ + CHAPTER-3-BODHI-1-1
++ ~谁知道。~ + CHAPTER-3-BODHI-1-2
++ ~你不信她？~ + CHAPTER-3-BODHI-1-2

CHAIN C0AURA2J CHAPTER-3-BODHI-1-1
~真的？我是说……我想我能信任你的领导，所以这不只是因为你太好骗。不过……~
EXTERN C0AURA2J CHAPTER-3-BODHI-1-2

CHAIN C0AURA2J CHAPTER-3-BODHI-1-2
~只是……我现在能相信她有理由帮我们。可之后呢……你不担心她一旦得到……她想要的东西，就可能反过来害我们？~
END
++ ~到时候再担心。现在我们需要她帮忙。~ + CHAPTER-3-BODHI-1-3
++ ~这是暂时的同盟。我对任何背叛都做好了准备。~ + CHAPTER-3-BODHI-1-3
++ ~我想我们只能往好处指望。~ + CHAPTER-3-BODHI-1-3

CHAIN C0AURA2J CHAPTER-3-BODHI-1-3
~*叹气* 这大概是我能指望的最好答案。也许我只是有点太紧张了。她一开口我就忍不住起鸡皮疙瘩。~
EXIT

CHAIN C0AURA2J CHAPTER-3-BODHI-2
~我的话都说完了，<CHARNAME>。我对我们得到的这种帮助不太安心，可我必须信任你……所以你按你认为对的路走。~
EXIT

CHAIN C0AURA2J CHAPTER-4-BEFORE-SPELLHOLD
~我……下船后还在适应，<CHARNAME>。对不起……我现在理不清头绪。也许以后吧。~
EXIT

CHAIN C0AURA2J CHAPTER-4-IN-SPELLHOLD
~嗯……我们进来了。而且我恨这里的每一寸。求你，我们只管……干完我们那部分，然后离开这儿。~
EXIT

CHAIN C0AURA2J CHAPTER-5
~幽暗地域是个奇异、可怕，可又……神秘的地方。这是我第一次来，我知道危险……可我忍不住想多看些。也许还有我地下的同族，若他们愿意跟我们说话……~
EXIT

CHAIN C0AURA2J CHAPTER-6-BODHI-ALIVE
~波蒂对我们和对别人做了这么多之后，我甚至不打算假装我不高兴有机会阻止他们的邪恶。就算这只是留给我们的又一个任务，我们也……尽力把它做完。~
EXIT

CHAIN C0AURA2J CHAPTER-6-BODHI-DEAD
~<CHARNAME>，下一步该怎么走，我想你比我清楚。我就跟着你。~
EXIT

CHAIN C0AURA2J CHAPTER-7-SULDAN
~苏达尼斯尔，它……很美。太美了，我简直能拿它跟我的故乡比……我只希望没有这么多破坏和死亡。我想阻止它。求你，我们救他们。所有人。~
EXIT

CHAIN C0AURA2J CHAPTER-7-HELL
~这不会是我们路的尽头，<CHARNAME>……只要我们继续彼此照看就不会。我准备好最后一战了。~
EXIT

CHAIN C0AURA2J RANDTALK
~现在？嗯……~
END
IF ~RandomNum(9,1)~ + RANDTALK-1
IF ~RandomNum(9,2)~ + RANDTALK-2
IF ~RandomNum(9,3)~ + RANDTALK-3
IF ~RandomNum(9,4)~ + RANDTALK-4
IF ~RandomNum(9,5)~ + RANDTALK-5
IF ~RandomNum(9,6)~ + RANDTALK-6
IF ~RandomNum(9,7)~ + RANDTALK-7
IF ~RandomNum(9,8)~ + RANDTALK-8
IF ~RandomNum(9,9)~ + RANDTALK-9
IF ~RandomNum(9,9) Global("C0AuraKnowsBG1","GLOBAL",1) GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + RANDTALK-9a
IF ~RandomNum(9,9) Global("C0AuraKnowsBG1","GLOBAL",1) GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%) InParty("IMOEN2")~ + RANDTALK-9b
IF ~CheckStatGT(Myself,8,FATIGUE)~ + RANDTALK-TIRED

CHAIN C0AURA2J RANDTALK-1
~你听过那个传说吗，说巨魔曾是会走路的树？我觉得相当荒唐，可有时我会想……~
EXIT

CHAIN C0AURA2J RANDTALK-2
~我想穆菲该换铆钉了。他尾巴昨天又掉了……其实，也许他只是跟另一只活松鼠打了一架。*叹气*~
EXIT

CHAIN C0AURA2J RANDTALK-3
~我本来的发色又在发根露出来了吗，<CHARNAME>？我在想是不是就留着。你觉得白金和粉色搭得好吗？~
EXIT

CHAIN C0AURA2J RANDTALK-4
~我一直在试能不能只用左手给太阳射手搭箭开弓。可那样我就得用牙叼箭……嗯，我可以造点什么绕过这问题。~
= ~也许肩上装第三条手臂？不，太显眼了。我得想想……~
EXIT

CHAIN C0AURA2J RANDTALK-5
~我想吃草莓挞。好吃……草莓挞！我们有空去采莓子吧，<CHARNAME>！就算得自己烤，我也要弄到几块挞！~
EXIT

CHAIN C0AURA2J RANDTALK-6
~Nandemo-nai……没什么。~
EXIT

CHAIN C0AURA2J RANDTALK-7
~我一直在想把头发染成别的颜色。偶尔换换花样。你觉得淡紫会好看吗？还是天蓝？也许青柠绿？嗯……~
EXIT

CHAIN C0AURA2J RANDTALK-8
~我只是在想，若有机会停下来喝茶野餐该多好。可现在真做不到，对吧？~
EXIT

CHAIN C0AURA2J RANDTALK-9
~没什么，只是些乱想。我们不是有事要做吗？~
EXIT

CHAIN C0AURA2J RANDTALK-9a
~*叹气* 没什么……我只是在想可怜的爱蒙，大概被关在某个牢房里，又怕又孤单……我们很快就会到她那儿，对吧？~
EXIT

CHAIN C0AURA2J RANDTALK-9b
~我很高兴我们把爱蒙救回来了。我只希望能再看到她像从前那样笑。就算我得再忍她那种紧得吓人的拥抱……啊哈哈……~
EXIT

CHAIN C0AURA2J RANDTALK-TIRED
~*哈欠* 我累坏了……你觉得让我的发条仆役背我一段会不会太孩子气？~
EXIT

CHAIN C0AURA2J QUESTIONS
~哦……当然。什么事？~
END
+ ~Global("C0AuraBG2Quest1","GLOBAL",40)
   GlobalGT("C0AuraBG2Quest1Retrospective","GLOBAL",0)~ + ~你看到阿斯克勒庇俄斯那些之后似乎很受震动。你想谈吗？~ DO ~SetGlobal("C0AuraBG2Quest1Retrospective","GLOBAL",1)~ + QUEST1RETROSPECTIVE
+ ~Global("C0AuraBookMerchant","GLOBAL",1)~ + ~那么，跟我说说“奥瑞莉亚·怀特”……~ DO ~SetGlobal("C0AuraBookMerchant","GLOBAL",2)~ + STORYBOOK
++ ~我想多了解一点兰坦。~ + LANTAN
+ ~NumInPartyGT(2)~ + ~你觉得我们的同伴怎么样？~ + COMPANIONS
++ ~算了。~ EXIT

CHAIN C0AURA2J STORYBOOK
      ~什——*咳* 不。~
      END
      ++ ~来嘛，求你了？~ + STORYBOOK-1A
      ++ ~为什么不？她此刻肯定不在我们面前。~ + STORYBOOK-1A
      ++ ~好。留着你的小秘密吧。~ + STORYBOOK-1B

CHAIN C0AURA2J QUEST1RETROSPECTIVE
      ~哦……你若担心我对那整件事的感受，<CHARNAME>，谢谢，可……别担心。我有些时间想过了。~
            = ~当时我没法驳他。现在也不能。可研究者就是这样，不是吗？我们一辈子都在寻找也许永远找不到的答案。~
            = ~到头来，放弃太容易。我想我还没放弃……可阿斯克勒庇俄斯大师说得对。照我现在的样子，我没有前进。~
            = ~正如他说的。我没资格可怜他。他也许走上了一条只有黑暗的路，可迷失困惑的人是我。~
      END
            ++ ~我不同意。你在前进。你只是明智地谨慎。~ + QUEST1RETROSPECTIVE-1A
            ++ ~不过，跟他不同，你仍能选择更光明的路。你没什么可羞愧的。~ + QUEST1RETROSPECTIVE-1B
            ++ ~嗯，他现在多半死了，你没有。我说这让你比他强。~ + QUEST1RETROSPECTIVE-1C
            ++ ~这对我来说有点太复杂。我不像你是个钻研学问的人。~ + QUEST1RETROSPECTIVE-2

CHAIN C0AURA2J QUEST1RETROSPECTIVE-1A
      ~嗯，我有时间的奢侈，还有像你这样的人保护我不犯错。若不是有……~
      EXTERN C0AURA2J QUEST1RETROSPECTIVE-2

CHAIN C0AURA2J QUEST1RETROSPECTIVE-1B
      ~我运气好。不，我甚至要说我太受优待了。我还没被迫面对真正艰难的选择。我不知道我能不能……~
      EXTERN C0AURA2J QUEST1RETROSPECTIVE-2

CHAIN C0AURA2J QUEST1RETROSPECTIVE-1C
      ~*叹气* 我不知道，<CHARNAME>。这不该跟输赢有关。追求知识的人该合作。我只希望……~
      EXTERN C0AURA2J QUEST1RETROSPECTIVE-2

CHAIN C0AURA2J QUEST1RETROSPECTIVE-2
      ~抱歉，<CHARNAME>。我想我没自己以为的那么想通了。我就在带你绕圈更久之前停下……不过，谢谢你听我说。说一点之后，整件事反而容易看清。~
      = ~我很高兴你在。真的很高兴。~
      EXIT

CHAIN C0AURA2J STORYBOOK-1A
      ~不是——哦，好吧。我讲一点。~
      = ~从前，在兰坦，有个女孩一辈子都做妹妹。然后有一天，她发现自己成了姐姐……一对全诸国度最可爱的双胞胎忽然进了她的生活。~
      = ~那时，她自己的姐姐们早已离家过自己的生活……这对双胞胎的责任就全落在她身上。于是她帮着养他们，教他们走路、跟他们玩、给他们讲故事……~
      = ~哦，他们真爱故事。爱到那女孩再也来不及现编。于是她开始写，开始画。~
      = ~每一幅画她都真的倾注了灵魂。因为她想一直看到双胞胎眼里的光——每当幸运的莉拉找到黄金宝藏，或那唱着精灵歌的小溪，或……~
      = ~*咳* 总之，那就是我……她真为自己盼的。可女孩的爸爸是出版商……虽然他见过贤人和著名学者写的书，他仍爱那些让孩子们心里欢喜的傻小书。~
      = ~所以他对女孩说：“为何不把你的天赋献给世上所有孩子？”女孩答应了……可她太害羞，不肯让人知道那些幼稚的故事真出自谁。于是她想了个笔名……然后，你就猜得到了。~
      = ~故事就到这里。也许有一天，奥瑞莉亚·怀特会想出她下一个了不起的故事……甚至可能跟你有关，谁知道？可我觉得那还太早。~
      EXIT

CHAIN C0AURA2J STORYBOOK-1B
      ~抱歉。也许有一天，你能在奥瑞莉亚·怀特写下一篇时跟她说话……可那是另一个时候的故事了。~
      EXIT

CHAIN C0AURA2J LANTAN
~我很乐意聊聊我的故乡！你具体好奇什么？~
END
++ ~能跟我说说兰坦各部分吗？~ DO ~SetGlobal("C0AuraTalkLantanIslands","GLOBAL",1)~ + TOWNS
+ ~Global("C0AuraTalkLantanIslands","GLOBAL",1)~ + ~兰坦的聚落是什么样？~ + SETTLEMENTS
+ ~Global("C0AuraTalkLantanWorkshops","GLOBAL",1)~ + ~跟我说说那些工坊。~ + LANTAN-WORKSHOPS
++ ~兰坦人怎么看魔法？~ + LANTANMAGIC
++ ~兰坦的统治政府是什么样？~ + RULERS
++ ~为什么我们在岛外见不到多少你的族人？~ + OUTSIDE
++ ~算了。没什么想知道的。~ EXIT

CHAIN C0AURA2J TOWNS
~当然。让我想想……你大概想知道最有意思的地方，对吧？那先说吧，有桑巴尔——那是我们的都城。桑巴尔学院是全国主要的研习机构。想在兰坦各大行会占一席之地的，都得去那儿学——当然也包括本人！~
= ~然后是安科里尔。顺便说，我就在那儿出生的。那是座可爱的镇子，就在岛的东岸。它不如大城宏伟，可是全国的对外贸易中心。所以那儿也相当热闹！~
= ~伊卢尔在兰坦西边，那里有“灵感至上圣工坊”，是贡德教团的核心。我不常去，可我姐姐露娜在那儿做“探求者”……大概算奇械师和女祭司的结合。~
= ~其余多是各氏族安家的聚落——达尔卢吉、德塔卡尔等等。哦，还有奥尔利尔岛……那是兰坦人最少的地方，可我们的吟游诗人和奥术师住在那里。~
END
++ ~兰坦的聚落是什么样？~ + SETTLEMENTS
++ ~我明白了。我还有别的想知道。~ + LANTAN
++ ~很有意思。暂时就这些。~ EXIT

CHAIN C0AURA2J SETTLEMENTS
~哦，那得你亲眼看看才明白……跟你别处见的城市完全不同。兰坦满是茂密的丛林，越靠近群岛中心越浓密。在地面建聚落会破坏生态，所以我们把家建在树高处。~
= ~你若没想到抬头看，甚至不会察觉自己在兰坦的城市里。然后你会看见我们房屋所在的平台，全靠桥和梯子相连。真是独一无二。~
= ~不过我是在安科里尔长大的，那就在海岸边。它更接近你可能熟悉的港口城镇。我们社区以捕鱼、农业和外贸为主，所以比别的聚落更连着外面的世界。~
END
++ ~我明白了。我还有别的想知道。~ + LANTAN
++ ~很有意思。暂时就这些。~ EXIT

CHAIN C0AURA2J LANTANMAGIC
~这……是个难答的问题。就算在同一聚落，每个人对魔法的看法也不一样。真得看你问谁。~
= ~多数兰坦人一般不太想魔法。我们各氏族多半各有终身专注的专门学问，所以根本不会想到去学魔法这种别的东西。~
= ~贡德教团对魔法的立场颇为分歧，可大体上并不完全反对。有人认为魔法该像任何工具或手艺一样对待，有人相信魔法所做的一切都有非魔法的替代。也有兰坦人完全反对魔法，可他们……很少，也不受看好。~
= ~不过我们没有正式研习魔法的机构，所以对魔法有兴趣的人得去无冬城、深水城或银月城等别的地区，或者拜奥尔利尔少数奥术师为师。我弟弟埃里达努斯天生是术士，可身体太弱离不开兰坦，所以在我叔叔马里乌斯门下学习。~
END
++ ~我明白了。我还有别的想知道。~ + LANTAN
++ ~很有意思。暂时就这些。~ EXIT

CHAIN C0AURA2J RULERS
~我们有艾罗奇。那是由十二人组成的议会，全是兰坦最有学识和影响力的人。一人被选为“艾拉”，即议长；另一人为“兰塔”，充任我们对其他国度的代表。其余称“桑塔”。~
= ~我父系的叔叔戴达罗斯曾任艾罗奇的兰塔，可多年前他离任，去做第十一工坊的首席奇械师，那工坊专研保家卫国的武器。~
DO ~SetGlobal("C0AuraTalkLantanWorkshops","GLOBAL",1)~
END
++ ~兰坦有一整座工坊专门研发武器？~ + LANTAN-WEAPONS
++ ~跟我说说这些工坊。~ + LANTAN-WORKSHOPS
++ ~我明白了。我还有别的想知道。~ + LANTAN
++ ~很有意思。暂时就这些。~ EXIT

CHAIN C0AURA2J LANTAN-WEAPONS
~哦……是。我们其实不该谈他们在那里造什么，因为我们的武器关系国家安全。多数兰坦人对把奇械用作武器没有好看法，可第十一工坊被认为是必要的。~
= ~其实我去过那儿。在我发明太阳射手的时候。那……就跟你预想的差不多。全国最认真、最专注的一些发明家，为国家安全研制破坏性的发明。~
= ~我父亲不太喜欢它——他总担心我叔叔的健康和安危，毕竟首席奇械师这角色又危险又压人。要亲自监督那些危险实验，绝不是轻松活。~
END
++ ~我明白了。我还有别的想知道。~ + LANTAN
++ ~很有意思。暂时就这些。~ EXIT

CHAIN C0AURA2J LANTAN-WORKSHOPS
~工坊是兰坦最顶尖的专家聚在一起、专攻特定学问以推进兰坦的地方。他们设计、制造，并撰写关于自己作品的论著，再由艾罗奇正式认可。~
= ~各工坊专精自己那一面。第一工坊是冶金专家，第二是植物与动物，第三专精炼金，第五、第六、第七研究不同种类的自然能量，等等。第十一专精于用作武器的发明。~
END
++ ~那第四工坊呢？他们专精什么？~ + LANTAN-4TH-WORKSHOP
++ ~兰坦有一整座工坊专门研发武器？~ + LANTAN-WEAPONS
++ ~我明白了。我还有别的想知道。~ + LANTAN
++ ~很有意思。暂时就这些。~ EXIT

CHAIN C0AURA2J LANTAN-4TH-WORKSHOP
~我……不知道。第四工坊我想已停了几十年了，据我所知艾罗奇和教会从没谈过要恢复它。~
= ~而且任何图书馆里也没有详述它旧日作为的藏档或文件。其实，说到这个，跟我聊过的人似乎连它在哪儿都不知道。连我父亲都不知道。~
END
++ ~奇怪。我们说点别的吧。~ + LANTAN
++ ~很有意思。暂时就这些。~ EXIT

CHAIN C0AURA2J OUTSIDE
~那……嗯，先说好，你听到的多半只是我一家之言，好吗？我不算我族人及其想法的正式权威，可我能尽力给你个大概。~
= ~兰坦人……嗯，我不会说我们是孤立主义者，可我们这生活方式传承了几代，受外界影响极少，而且……嗯，我们不太容易适应别处的生活。~
END
IF ~Global("C0AuraTalkLantanOutsiders","GLOBAL",0)~ DO ~SetGlobal("C0AuraTalkLantanOutsiders","GLOBAL",1)~ + OUTSIDE-1
IF ~!Global("C0AuraTalkLantanOutsiders","GLOBAL",0)~ + OUTSIDE-1

CHAIN C0AURA2J OUTSIDE-1
~那就好比……嗯，你当初是什么感觉，<CHARNAME>？我记得你几乎一辈子都在烛堡。你离开时，外面的世界是不是又陌生又难？~
END
++ ~是的。我没法把信任任何人当作理所当然，也遇上了从没想象过的危险。~ + OUTSIDE-2
++ ~我觉得我有很多要学，可那文化和人并不像去另一片土地那样陌生。我很快就习惯了。~ + OUTSIDE-2

CHAIN C0AURA2J OUTSIDE-2
~我想这比较不公平。多数人不会被扔进你那样的生活。想到你这么快做成的一切，真让人受鼓舞。~
= ~我小时候还有人夸我有天赋……哈哈，看来我一直都需要被敲打一下。~
EXTERN C0AURA2J OUTSIDE-3

CHAIN C0AURA2J OUTSIDE-3
~还有别的想聊吗？~
END
++ ~回到我刚才的问题。~ + LANTAN
++ ~不，暂时就这些。~ EXIT

CHAIN C0AURA2J COMPANIONS
~我真不该嚼舌根，可……好吧，那就说吧。哪一位？~
END
+ ~InParty("AERIE")
Global("C0AuraAerieFriendship","GLOBAL",0)~ + ~你觉得艾黎怎么样？~ + AERIE-NOFRIEND
+ ~InParty("AERIE")
GlobalGT("C0AuraAerieFriendship","GLOBAL",0)~ + ~你觉得艾黎怎么样？~ + AERIE-FRIEND
+ ~!Global("AnomenIsKnight","GLOBAL",1)
!Global("TalkedCor","GLOBAL",1)
!Global("AnomenIsNotKnight","GLOBAL",1)
InParty("ANOMEN")~ + ~你觉得阿诺门怎么样？~ + ASKANOMEN-LN
+ ~!Global("AnomenIsKnight","GLOBAL",1)
Global("TalkedCor","GLOBAL",1)
!Global("AnomenIsNotKnight","GLOBAL",1)
InParty("ANOMEN")~ + ~你觉得阿诺门怎么样？~ + ASKANOMEN-LN-AFTERDAD
+ ~Global("AnomenIsKnight","GLOBAL",1)
InParty("ANOMEN")~ + ~你觉得阿诺门怎么样？~ + ASKANOMEN-LG
+ ~Global("AnomenIsNotKnight","GLOBAL",1)
InParty("ANOMEN")~ + ~你觉得阿诺门怎么样？~ + ASKANOMEN-CN
+ ~InParty("CERND")~ + ~你觉得瑟恩德怎么样？~ + ASKCERND
+ ~InParty("DORN")~ + ~你觉得多恩怎么样？~ + ASKDORN
+ ~InParty("C0DRAKE")~ + ~你觉得德雷克怎么样？~ + ASKDRAKE
+ ~Gender("EDWIN",MALE)
InParty("EDWIN")~ + ~你觉得埃德温怎么样？~ + ASKEDWIN-MALE
+ ~!Gender("EDWIN",MALE)
InParty("EDWIN")~ + ~你觉得埃德温怎么样？~ + ASKEDWIN-FEMALE
+ ~InParty("E3FADE")~ + ~你觉得菲德怎么样？~ + ASKFADE
+ ~InParty("L#FOU")~ + ~你觉得芬德灵怎么样？~ + ASKFOUNDLING
+ ~InParty("C0GLEY")~ + ~你觉得格蕾雅怎么样？~ + ASKGLEYA
+ ~InParty("HAERDALIS")~ + ~你觉得海尔达利怎么样？~ + ASKHAERDALIS
+ ~InParty("OHHFAK")~ + ~你觉得赫克萨特怎么样？~ + ASKCLARA
+ ~InParty("HEXXAT")~ + ~你觉得赫克萨特怎么样？~ + ASKHEXXAT
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1) InParty("IMOEN2")~ + ~你觉得爱蒙怎么样？~ + ASKIMOEN-NOBG1
+ ~Global("C0AuraKnowsBG1","GLOBAL",1) InParty("IMOEN2")~ + ~你觉得爱蒙怎么样？~ + ASKIMOEN-BG1
+ ~InParty("JAHEIRA")~ + ~你觉得贾希拉怎么样？~ + ASKJAHEIRA
+ ~InParty("JAN")~ + ~你觉得扬怎么样？~ + ASKJAN
+ ~InParty("KELDORN")~ + ~你觉得凯尔东怎么样？~ + ASKKELDORN
+ ~InParty("C0KERAH")~ + ~你觉得凯兰怎么样？~ + ASKKERAHN
+ ~InParty("KORGAN")~ + ~你觉得库尔甘怎么样？~ + ASKKORGAN
+ ~InParty("MAZZY")~ + ~你觉得玛兹怎么样？~ + ASKMAZZY
+ ~InParty("MINSC")~ + ~你觉得明斯克怎么样？~ + ASKMINSC
+ ~InParty("NALIA") Global("C0AuraNalia1","GLOBAL",0)~ + ~你觉得娜莉亚怎么样？~ + ASKNALIA
+ ~InParty("NALIA") GlobalGT("C0AuraNalia1","GLOBAL",0)~ + ~你觉得娜莉亚怎么样？~ + ASKNALIA-2
+ ~InParty("NEERA")~ + ~你觉得妮拉怎么样？~ + ASKNEERA
+ ~InParty("C0OPHEL")~ + ~你觉得奥菲莉亚怎么样？~ + ASKOPHELIA
+ ~InParty("C0PAINA")~ + ~你觉得派娜怎么样？~ + ASKPAINA
+ ~InParty("L#2PHAL")~ + ~你觉得法尔怎么样？~ + ASKPHALH
+ ~InParty("RASAAD")~ + ~你觉得拉沙德怎么样？~ + ASKRASAAD
+ ~InParty("C0SIRENE")~ + ~你觉得塞琳怎么样？~ + ASKSIRENE
+ ~!InParty("L#2PHAL")
InParty("L#2VERR")~ + ~你觉得维尔莎怎么样？~ + ASKVERRSZA-NOPHALH
+ ~InParty("L#2PHAL")
InParty("L#2VERR")~ + ~你觉得维尔莎怎么样？~ + ASKVERRSZA-PHALH
+ ~InParty("VICONIA")~ + ~你觉得维康妮亚怎么样？~ + ASKVICONIA
+ ~InParty("VALYGAR") !Dead("lavok") !Dead("lavok02")~ + ~你觉得瓦里格怎么样？~ + ASKVALYGAR
+ ~InParty("VALYGAR") OR(2) Dead("lavok") Dead("lavok02") Global("C0AuraVALYGARJ107","GLOBAL",1)~ + ~你觉得瓦里格怎么样？~ + ASKVALYGAR-AFTERQUEST-INPARTY
+ ~InParty("VALYGAR") OR(2) Dead("lavok") Dead("lavok02") !Global("C0AuraVALYGARJ107","GLOBAL",1)~ + ~你觉得瓦里格怎么样？~ + ASKVALYGAR-AFTERQUEST-NOTINPARTY
+ ~InParty("L0WILL")~ + ~你觉得威尔怎么样？~ + ASKWILL
+ ~InParty("YOSHIMO")
Global("C0AuraYoshimoFriendship","GLOBAL",0)~ + ~你觉得吉野怎么样？~ + ASKYOSHIMO-NOFRIEND
+ ~InParty("YOSHIMO")
GlobalGT("C0AuraYoshimoFriendship","GLOBAL",0)~ + ~你觉得吉野怎么样？~ + ASKYOSHIMO-FRIEND
+ ~Global("C0AuraYoshimoBetrayal","GLOBAL",0)
Dead("YOSHIMO")
!GlobalGT("C0AuraYoshimo2","GLOBAL",4)
Global("C0AuraYoshimoFriendshipDeadTalk","GLOBAL",0)~ + ~你觉得吉野怎么样？~ DO ~SetGlobal("C0AuraYoshimoFriendshipDeadTalk","GLOBAL",-1)~ + ASKYOSHIMO-DEAD-NOFRIEND
+ ~Global("C0AuraYoshimoBetrayal","GLOBAL",1)
Dead("YOSHIMO")
GlobalGT("C0AuraYoshimo2","GLOBAL",4)
OR(2)
Global("C0AuraYoshimoFriendshipDeadTalk","GLOBAL",0)
!GlobalTimerExpired("C0AuraYoshimoFriendshipDeadTimer","GLOBAL")~ + ~你觉得吉野怎么样？~ DO ~SetGlobal("C0AuraYoshimoFriendshipDeadTalk","GLOBAL",1) SetGlobalTimer("C0AuraYoshimoFriendshipDeadTimer","GLOBAL",THREE_DAYS)~ + ASKYOSHIMO-FRIEND-BEFORETIMER
+ ~Global("C0AuraYoshimoBetrayal","GLOBAL",1)
Dead("YOSHIMO")
GlobalGT("C0AuraYoshimo2","GLOBAL",4)
Global("C0AuraYoshimoFriendshipDeadTalk","GLOBAL",1)
GlobalTimerExpired("C0AuraYoshimoFriendshipDeadTimer","GLOBAL")~ + ~你觉得吉野怎么样？~ DO ~SetGlobal("C0AuraYoshimoFriendshipDeadTalk","GLOBAL",2)~ + ASKYOSHIMO-FRIEND-AFTERTIMER
+ ~InParty("YXYVE")~ + ~你觉得伊薇特怎么样？~ + ASKYVETTE
++ ~算了。~ EXIT

CHAIN C0AURA2J COMPANIONS-NEXT
~还有别的想知道吗？~
END
+ ~NumInPartyGT(3)~ + ~还有一位同伴我想听听你的看法。~ + COMPANIONS
++ ~我还想问点别的。~ + QUESTIONS
++ ~现在没什么。~ EXIT

CHAIN C0AURA2J AERIE-NOFRIEND
~她很害羞，我还没多少机会跟她说话。可我想多聊聊。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J AERIE-FRIEND
~我真喜欢她。她那么善良可靠。而且她比你想象的更强，<CHARNAME>。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKANOMEN-LN
~阿诺门有点尖酸，可我尽量不往心里去。他其实没恶意……我想。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKANOMEN-LN-AFTERDAD
~在他和他父亲那事之后，我觉得我对他有点太严了。像我这样出自和睦家庭的人，不可能理解他经历的那种苦。不过我希望他能挺过去。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKANOMEN-LG
~他毕竟是个相当好的人。自他受封骑士后，我对他没什么意见了。我觉得他现在真的更快乐了。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKANOMEN-CN
~其实我有点怕他，<CHARNAME>。他那么……愤怒苦涩，而且似乎也不想被安慰。~
== C0AURA2J IF ~Global("AnomenChasesAerie","GLOBAL",1) Global("C0AuraAboutAngryAnomen","GLOBAL",1)~ THEN ~他对艾黎发了那一通之后，我觉得我都没法再跟他说话了。我只尽量躲开，盼他别注意到我。~ 
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKCERND
~跟瑟恩德说话真让人安宁。你不觉得吗？哦，你大概不觉得……我明白，可我很喜欢他。再说，他挑茶的品味极好。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKDORN
~我不喜欢他，<CHARNAME>……我总觉得，就算他在我们中间，也从不真是我们的一员……你懂吗？~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKDRAKE
~他身上有点什么……我说不清，可我总甩不掉一个感觉：他比表现出来的更精明。有一半时候，我觉得他只是装作不懂。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKEDWIN-MALE
~嘿嘿，我真不该喜欢他，可逗他太好玩了。再说，他对魔法理论的见识令人惊叹。在他面前说对词，你能学到很多。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKEDWIN-FEMALE
~噗……嘿嘿，自打耐色卷轴在他身上出了岔子，逗他就更好玩了。不过也是活该。我在想他什么时候能想出变回去的办法？~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKFADE
~看那尾巴和眼睛什么的，她比我以为的友善多了。我松了一大口气……尤其她还这么漂亮。至少她不生气的时候。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKFOUNDLING
~他很有意思。不过有时我忍不住想他到底是不是真的人类。影之界真能把你改变很多，是吧？~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKGLEYA
~你知道，跟她聊得越多，我越希望自己也有个像她那样的大姐姐。跟她说话太轻松了。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKHAERDALIS
~他那些故事绕得我头晕。那么多戏剧、刺激和紧张……全被浪漫化得让我很难相信有哪件是真的。可听还是很好玩。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKCLARA
~她……我不知道，她有点怪。她身上有点什么不对劲，你懂吗？就像她不是真正的自己。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKHEXXAT
~我……希望她不在这儿。我知道这听着很糟。可是……一睁眼就看见她离你那么近，总是醒着，眼里那种神气……*打颤* 别告诉她我说过这些。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKIMOEN-NOBG1
~爱蒙真棒。我能跟她聊好几天。其实越想我越嫉妒你一辈子都认识她，<CHARNAME>。你真走运。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKIMOEN-BG1
~她……哦，得了吧，我还需要说什么吗，<CHARNAME>？她就是*爱蒙*。没有她，我总觉得我们这圈子不完整。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKJAHEIRA
~我总适应不了贾希拉那股严肃，可一想到每次我摔倒受伤她都帮我，想到她那总皱着的眉下多善良……哦，她在瞪我。我闭嘴。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKJAN
~扬是……*叹气* 哦，我真不知道。我甩不掉一个感觉：他跟我一样行，可他的心思同时往所有方向跑，简直疯。我奇怪他怎么从不累。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKKELDORN
~他跟我父母差别那么大，可我还是忍不住从他身上感到一种父亲的气息。真难接受他其实比我大不了多少。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKKERAHN
~他话不多。可看着挺和气。只是别跟他打牌。他脸上从不变色。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKKORGAN
~我在西腹地常遇见矮人，熟了之后他们总对我很好。库尔甘……嗯，他粗鲁，杀人也太轻易，可我不讨厌他。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKMAZZY
~我从没想到会遇见一个这么像我大姐朱诺的人。连脸都有点像……不过也许只是我自己的偏心。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKMINSC
~*轻笑* 哦，明斯克……他让我想要一只仓鼠。可我真不该……穆菲会吃醋。也许他会喜欢有个小弟可以欺负？我得想想……~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKNALIA
~她……我不知道。我总忍不住想起学院里那些上层女孩，跟她们说话总让人怯，可我不确定娜莉亚是那样的人。若我们要合作，我得找机会鼓起勇气跟她说话……~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKNALIA-2
~娜莉亚真不错。我以为她是贵族，会难亲近，可我们的共同兴趣比我想的多。书、魔法、帮助别人……我越来越喜欢有她在。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKNEERA
~她的魔法真让我头疼。不只是看着，连想它该怎么运作都那么……啊。她说我想太多。我没办法！我从小就是这么被教的。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKOPHELIA
~我觉得她那种暗色审美很好看。当然不适合我，我不是那类型……什么，你不是问这个？哦，我不知道……我们认识以来她对我一直很友善。我对她真没什么坏话可说。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKPAINA
~我知道这听着怪，可其实我有点喜欢她。你若见过她像妈妈一样跟她的蜘蛛说话，就会懂……我觉得挺可爱。尤其她转过身又对我们冷冰冰的时候。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKPHALH
~法尔其实很聪明。我觉得他若是去，会是那种在家乡学院里出类拔萃的人。可我提起时他似乎不太感兴趣。算了。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKRASAAD
~他让我希望能倒立平衡。还能不用手爬树。还能用脑袋砸碎石头……嗯，最后那个也许不必。可我确实羡慕他把身体练到多数人达不到的地步。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKSIRENE
~有她在身边我觉得安全多了。不只是因为她强壮护人。她就是那么温柔，我觉得什么都能跟她说。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKVERRSZA-NOPHALH
~*叹气* 我希望他更友善、更想被抱，像可可酱那样，可我想他也没那么糟。至少多数时候我能信他会护着我……虽然我不确定他有多喜欢我。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKVERRSZA-PHALH
~我脑子里总叫他“法尔的疯叔叔”，停不下来。别告诉他！我是说，法尔都长成这样了，他大概也没那么坏，我想。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKVALYGAR
~看他对魔法的厌恶有点让人泄气，可我很高兴他个人对我没意见。老实说，我希望能多了解他。他在那层秘密底下似乎很有意思。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKVALYGAR-AFTERQUEST-INPARTY
~拉沃克大师最后那样死去，我还是有点难过……显然我不认识他，可他若和瓦里格有更多时间互相理解……我想瓦里格会更容易放下肩上的重担。~
= ~可也许这只是我一厢情愿。我只高兴我们能帮瓦里格走过他的重负。~
DO ~SetGlobal("C0AuraVALYGARJ107","GLOBAL",2)~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKVALYGAR-AFTERQUEST-NOTINPARTY
~瓦里格话少，可我觉得他坚强可靠。就我们聊过的那几次看，他对我也挺和善。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKVICONIA
~她还是有点让我怕。不过我希望偶尔能看见她温柔的脸……我一直好奇她不皱眉时是什么样子。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKWILL
~哦，我有好多想问他。我从没见过像他这样没想杀我的灵体，这机会不能错过。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKYOSHIMO-NOFRIEND
~他跟我在御剑殿生活时认识的人差别很大。我想出去闯世界真能改变人的习惯。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKYOSHIMO-FRIEND
~吉野先生？他很好。虽然他完全不是我预想的样子，我还是高兴他跟我们在。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKYOSHIMO-DEAD-NOFRIEND
~我——我还是有点受震，可……老实说，我觉得我活该。不知怎么，我明明对他一无所知，却以为能信他。我知道我不该。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKYOSHIMO-FRIEND-BEFORETIMER
~他……嗯……~
= ~我——对不起，<CHARNAME>，我现在不想谈这个。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKYOSHIMO-FRIEND-AFTERTIMER
~我还是不敢信发生的事……知道吉野先生背叛我们已经够糟，可后来……我以为再没机会问他原因，可看他在爱瑞尼库斯之后面对我们……不知怎么，那更糟。~
= ~他说他被慑令束缚，你信吗，<CHARNAME>？我……我觉得那是真的。若我以为知道的关于吉野先生的任何一点是真的，他就不会去打一场毫无胜算的仗。可他不能不打。不管他多想……我不知道，收回一切，或者逃走……他都不能。这不就是可怕之处吗？~
= ~可——可这不是说他无罪！他做的绝对错了，毫无疑问。可我忍不住明白是什么逼他……舍弃这么多来背叛我们。而现在我们永远也不会知道了……~
= ~要是……*叹气* 我希望这事没发生。开头结尾都不希望。我大概该觉得被背叛，可现在……我只是后悔发生了。我希望有机会做点什么。~
= ~我……我现在有点累了，<CHARNAME>。我们晚点再谈好吗？~
EXIT

CHAIN C0AURA2J ASKYVETTE
~她本人比画里还可爱——我是说，比那幅画。这话说得真怪。~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J FLIRT
~嗯？~
END
+ ~RandomNum(4,1) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~（吻她的唇）~ + FLIRT-2-1A
+ ~RandomNum(4,2) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~（吻她的唇）~ + FLIRT-2-1B
+ ~RandomNum(4,3) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~（吻她的唇）~ + FLIRT-2-1C
+ ~RandomNum(4,4) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~（吻她的唇）~ + FLIRT-2-1D
+ ~RandomNum(4,1)~ + ~（吻她的脸颊）~ + FLIRT-1-1A
+ ~RandomNum(4,2)~ + ~（吻她的脸颊）~ + FLIRT-1-1B
+ ~RandomNum(4,3)~ + ~（吻她的脸颊）~ + FLIRT-1-1C
+ ~RandomNum(4,4)~ + ~（吻她的脸颊）~ + FLIRT-1-1D
+ ~RandomNum(3,1)~ + ~（吻她的鼻尖）~ + FLIRT-1-2A
+ ~RandomNum(3,2)~ + ~（吻她的鼻尖）~ + FLIRT-1-2B
+ ~RandomNum(3,3)~ + ~（吻她的鼻尖）~ + FLIRT-1-2C
+ ~RandomNum(4,1) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~（紧紧抱住她）~ + FLIRT-2-2A
+ ~RandomNum(4,2) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~（紧紧抱住她）~ + FLIRT-2-2B
+ ~RandomNum(4,3) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~（紧紧抱住她）~ + FLIRT-2-2C
+ ~RandomNum(4,4) Global("C0AuraRomanceActive","GLOBAL",2) !InParty("IMOEN2")~ + ~（紧紧抱住她）~ + FLIRT-2-2A
+ ~RandomNum(4,4) Global("C0AuraRomanceActive","GLOBAL",2) InParty("IMOEN2")~ + ~（紧紧抱住她）~ + FLIRT-2-2D
+ ~RandomNum(3,1) !Race(Player1,HALFLING) !Race(Player1,DWARF) !Race(Player1,GNOME)~ + ~（把她抱起来）~ + FLIRT-1-3A
+ ~RandomNum(3,2) !Race(Player1,HALFLING) !Race(Player1,DWARF) !Race(Player1,GNOME)~ + ~（把她抱起来）~ + FLIRT-1-3B
+ ~RandomNum(3,3) !Race(Player1,HALFLING) !Race(Player1,DWARF) !Race(Player1,GNOME)~ + ~（把她抱起来）~ + FLIRT-1-3C
+ ~RandomNum(3,1) OR(3) Race(Player1,HALFLING) Race(Player1,DWARF) Race(Player1,GNOME)~ + ~（抱她）~ + FLIRT-1-3A
+ ~RandomNum(3,2) OR(3) Race(Player1,HALFLING) Race(Player1,DWARF) Race(Player1,GNOME)~ + ~（抱她）~ + FLIRT-1-3B
+ ~RandomNum(3,3) OR(3) Race(Player1,HALFLING) Race(Player1,DWARF) Race(Player1,GNOME)~ + ~（抱她）~ + FLIRT-1-3D
+ ~RandomNum(3,1)~ + ~（向她眨眼）~ + FLIRT-1-4A
+ ~RandomNum(3,2)~ + ~（向她眨眼）~ + FLIRT-1-4B
+ ~RandomNum(3,3)~ + ~（向她眨眼）~ + FLIRT-1-4C
+ ~RandomNum(3,1)~ + ~（挠她痒）~ + FLIRT-1-5A
+ ~RandomNum(3,2)~ + ~（挠她痒）~ + FLIRT-1-5B
+ ~RandomNum(3,3)~ + ~（挠她痒）~ + FLIRT-1-5C
+ ~RandomNum(3,1)~ + ~（捏她的脸）~ + FLIRT-1-6A
+ ~RandomNum(3,2)~ + ~（捏她的脸）~ + FLIRT-1-6B
+ ~RandomNum(3,3)~ + ~（捏她的脸）~ + FLIRT-1-6C
+ ~RandomNum(3,1)~ + ~（戳她的鼻子）~ + FLIRT-1-7A
+ ~RandomNum(3,2)~ + ~（戳她的鼻子）~ + FLIRT-1-7B
+ ~RandomNum(3,3) !Race(Player1,HALFLING) !Race(Player1,DWARF) !Race(Player1,GNOME)~ + ~（戳她的鼻子）~ + FLIRT-1-7C
+ ~RandomNum(3,3) OR(3) Race(Player1,HALFLING) Race(Player1,DWARF) Race(Player1,GNOME)~ + ~（戳她的鼻子）~ + FLIRT-1-7D
+ ~RandomNum(3,1)~ + ~（抚她的头发）~ + FLIRT-1-8A
+ ~RandomNum(3,2)~ + ~（抚她的头发）~ + FLIRT-1-8B
+ ~RandomNum(3,3)~ + ~（抚她的头发）~ + FLIRT-1-8C
+ ~RandomNum(3,1)~ + ~（玩笑地扯她的耳朵）~ + FLIRT-1-9A
+ ~RandomNum(3,2)~ + ~（玩笑地扯她的耳朵）~ + FLIRT-1-9B
+ ~RandomNum(3,3)~ + ~（玩笑地扯她的耳朵）~ + FLIRT-1-9C
/*+ ~RandomNum(3,1)~ + ~（逗她）~ + FLIRT-1-10A
+ ~RandomNum(3,2)~ + ~（逗她）~ + FLIRT-1-10B
+ ~RandomNum(3,3)~ + ~（逗她）~ + FLIRT-1-10C
+ ~RandomNum(3,1)~ + ~要不要喝杯茶？~ + FLIRT-1-11A
+ ~RandomNum(3,2)~ + ~要不要喝杯茶？~ + FLIRT-1-11B
+ ~RandomNum(3,3)~ + ~要不要喝杯茶？~ + FLIRT-1-11C
+ ~RandomNum(3,1) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~我爱你，奥拉。~ + FLIRT-2-3A
+ ~RandomNum(3,2) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~我爱你，奥拉。~ + FLIRT-2-3B
+ ~RandomNum(3,3) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~我爱你，奥拉。~ + FLIRT-2-3C
+ ~Global("C0AuraRomanceActive","GLOBAL",1)~ + ~亲爱的，有件事我得告诉你……~ + FLIRT-TALK
+ ~Global("C0AuraRomanceActive","GLOBAL",2)~ + ~亲爱的，有件事我得告诉你……~ + FLIRT-TALK*/
++ ~不，没什么。~ EXIT

CHAIN C0AURA2J FLIRT-2-1A
~嗯……~
= ~我怎么也嫌不够。*轻笑* 再来一次？~
EXIT

CHAIN C0AURA2J FLIRT-2-1B
~（奥拉满足地闭上明亮的眼睛回应你的吻。终于分开时，她带着害羞的笑慢慢睁开。）~
EXIT

CHAIN C0AURA2J FLIRT-2-1C
~（你感到奥拉的小手尽可能紧地抱着你，同时你继续这个吻。她不情愿地放开你时，脸上带着恳求的神情。）~
EXIT

CHAIN C0AURA2J FLIRT-2-1D
~（你紧紧抱着奥拉，唇触到她的，隐约尝到糖和野莓的甜味。）~
END
++ ~（顽皮地用舌尖刷过她的唇）~ + FLIRT-2-1D1
++ ~嗯嗯……现在真好……草莓挞，嗯？~ + FLIRT-2-1D2
++ ~（从她怀里退开）~ EXIT

CHAIN C0AURA2J FLIRT-2-1D1
~嘿……*轻笑* 嘿，停下！好痒！~
EXIT

CHAIN C0AURA2J FLIRT-2-1D2
~（她笑着，脸上带着慌乱地舔了舔嘴唇。）那是我最喜欢的……~
EXIT

CHAIN C0AURA2J FLIRT-1-1A
~（你在奥拉有酒窝的脸颊上轻轻一啄，被吻处立刻泛起粉红。）~
EXIT

CHAIN C0AURA2J FLIRT-1-1B
~（奥拉的皮肤柔软、光滑、温暖，没有一丝粗糙。她一动不动，也许是被你直白的亲昵弄得不知所措。）~
EXIT

CHAIN C0AURA2J FLIRT-1-1C
~（你的唇贴上奥拉的脸颊时，她满足地叹了一声，随后露出爱怜的神情。）~
= ~啊哈哈……每次你这么做，我都忍不住心里发热。~
EXIT

CHAIN C0AURA2J FLIRT-1-1D
~（你俯身靠近，奥拉一只手抵在你肩上拦住你。）~
= ~不，不，现在不行，我脸上蹭了点油污。等我洗一下，好吗？~
EXIT

CHAIN C0AURA2J FLIRT-1-2A
~（你在奥拉鼻梁上尝到一点汗味。她轻吸一口气，往后缩，急忙擦脸。）~
= ~对——对不起！你亲之前我该多注意些……好吧……你现在可以再来。行吗？~
EXIT

CHAIN C0AURA2J FLIRT-1-2B
~（你的唇触到奥拉的鼻子时，你感到她紧张的呼吸拂在你颈上。可她把头稍稍前倾，在你分开前在你下巴上轻轻印了一吻。）~
EXIT

CHAIN C0AURA2J FLIRT-1-2C
~（离奥拉的脸这么近，你注意到她的鼻子虽然按其他种族的标准略大，却异常小巧、带着妖精般的样子，形状更尖更分明，正衬她年轻的面貌。）~
= ~（你终于退开时，奥拉朝你笑，可随即表情古怪，鼻子抽动。一秒后，她打了个喷嚏。）~
EXIT

CHAIN C0AURA2J FLIRT-2-2A
~（你把她揽进怀里时，奥拉起初无奈地叹气，可你抱紧她后，她把脸贴在你胸口，在你怀里满足地哼了一声。）~
EXIT

CHAIN C0AURA2J FLIRT-2-2B
~（你紧紧搂住她，奥拉几乎没挣扎，最后放弃，双臂环上你的脖子。）~
EXIT

CHAIN C0AURA2J FLIRT-2-2C
~嘿——嘿……！又来这套……？我不是娃娃！~
END
++ ~我没办法……你太可爱了！~ + FLIRT-2-2C1
++ ~好，好……我放开……~ + FLIRT-2-2C2

CHAIN C0AURA2J FLIRT-2-2C1
~哼，好吧……我想我能忍……~
EXIT

CHAIN C0AURA2J FLIRT-2-2C2
~我——我没说你*非得*放开……我不太介意。~
EXIT

CHAIN C0AURA2J FLIRT-2-2D
~哎哟！天哪，真——真难判断你跟爱蒙谁的拥抱更紧……~
EXIT

CHAIN C0AURA2J FLIRT-1-3A
~嗯——嗯嗯……真好。你真暖和，<CHARNAME>。~
EXIT

CHAIN C0AURA2J FLIRT-1-3B
~（你双臂环住奥拉的腰把她拉近，她贴向你，你享受她柔软的身子紧贴着你的感觉。）~
EXIT

CHAIN C0AURA2J FLIRT-1-3C
~（你把她从地上抱起来时奥拉惊叫一声，你把她拉近拥抱，她双臂伸向你。你扶着她腰时，她把脸蹭向你的脖子。）~
EXIT

CHAIN C0AURA2J FLIRT-1-3D
~嗯，这样被抱着真让人安心……~
= ~（你抱着她时，她把脸蹭向你的脖子，满足地叹气。）~
EXIT

CHAIN C0AURA2J FLIRT-1-4A
~（奥拉对你的举动困惑地眨眼。）~
= ~哦不……你这次又在打什么主意？~
END
++ ~我不告诉你。~ + FLIRT-1-4A1
++ ~没什么……我只是想看看你笑的样子。~ + FLIRT-1-4A2

CHAIN C0AURA2J FLIRT-1-4A1
~啊哈哈……我已经怕了……*打颤*~
EXIT

CHAIN C0AURA2J FLIRT-1-4A2
~哦。那好吧……~
= ~（她给你一个温和、略带逗弄的笑，回你一个眼色。）~
EXIT

CHAIN C0AURA2J FLIRT-1-4B
~什么？我脸上有东西？还是我头发又乱了？快告诉我怎么回事！~
EXIT

CHAIN C0AURA2J FLIRT-1-4C
~（奥拉傻笑了一下、羞怯地咧嘴，随后紧张地用手指顺着自己的长发。）~
EXIT

CHAIN C0AURA2J FLIRT-1-5A
~哦……不，不不不不！啊哈哈！停下，<CHARNAME>——不，别挠那儿！哈哈哈哈哈——啊！~
EXIT

CHAIN C0AURA2J FLIRT-1-5B
~呀！啊哈哈哈哈，别挠腰，别挠腰……咿！~
EXIT

CHAIN C0AURA2J FLIRT-1-5C
~（出乎意料，你顽皮地攻她的痒处时，奥拉只做了微弱的抵抗。当你察觉她眼里闪过一抹淘气，你才——稍微晚了一点——意识到自己犯了个粗心的错。）~
= ~哈哈！你中了我的圈套！上，穆菲！~
= ~（那只小松鼠构造体扑到你身上，从你头顶到脚疯狂地绕圈乱跑，细小的金属爪挠得你没完没了，你挣扎着想抓住它。）~
END
++ ~咿——！叫它停下，奥拉！~ + FLIRT-1-5C1
++ ~好，好，我投降！~ + FLIRT-1-5C1
++ ~不，你不行，你这小……啊哈，抓住你了！~ + FLIRT-1-5C2

CHAIN C0AURA2J FLIRT-1-5C1
~*轻笑* 看来这次是我赢了，<CHARNAME>！~
EXIT

CHAIN C0AURA2J FLIRT-1-5C2
~唉。我从来赢不了你，对吧，<CHARNAME>？~
= ~呃，你能把它还给我了吗？~
EXIT

CHAIN C0AURA2J FLIRT-1-6A
~哎哟！天哪，你比我姐姐们还过分，<CHARNAME>……~
EXIT

CHAIN C0AURA2J FLIRT-1-6B
~*叹气* 有时我希望自己的脸能长成熟点，这样我的脸颊就不会那么招人捏。~
EXIT

CHAIN C0AURA2J FLIRT-1-6C
~（你用两根手指轻搓奥拉的脸颊，她不以为然地嘟嘴，可那模样一点也不像，眼里满是满足，嘴角也几乎压不住笑。）~
EXIT

CHAIN C0AURA2J FLIRT-1-7A
~（你逗弄地把一根手指放在奥拉鼻尖上，她脸腾地红了。）~
EXIT

CHAIN C0AURA2J FLIRT-1-7B
~（这亲昵的触碰让奥拉紧张地笑了一声。你注意到她眼里短暂地闪过兴奋，你收回手时，她抓住你的手，轻轻吻了你的手指。）~
EXIT

CHAIN C0AURA2J FLIRT-1-7C
~（你把一根手指抬到奥拉鼻尖，她带着坦率的笑示意你靠近，也抬手指碰你的脸。）~
EXIT

CHAIN C0AURA2J FLIRT-1-7D
~（你弯下身把手指抬到奥拉鼻尖，她带着坦率的笑示意你靠近，也抬起自己的手指碰你的脸。）~
EXIT

CHAIN C0AURA2J FLIRT-1-8A
~（你温柔地抚着奥拉长而直的头发，注意到它养护得多好。她的发丝干净、齐整，隐约有玫瑰和淡紫的香。你忍不住想，她夜里要花多少时间打理头发，才补得上你日常旅行的粗砺。）~
EXIT

CHAIN C0AURA2J FLIRT-1-8B
~（你抚了一阵奥拉的头发后，她握住你的手贴在自己脸颊上，带着浅笑轻轻摩挲你的手指。）~
= ~（她忽然脸红，神情慌乱地在包里急忙掏出一把小木梳。）~
= ~呃……你介意帮我梳一下头发吗，<CHARNAME>？我会喜欢的。~
EXIT

CHAIN C0AURA2J FLIRT-1-8C
~（你把奥拉一缕玫瑰色的头发顺到发根，看见颜色淡淡变回她本来的淡——几乎银白——金。~
= ~你的手指滑过她头顶时，奥拉轻笑出声，明显怕痒。~
END
++ ~你的头发很美，奥拉。~ + FLIRT-1-8C1
++ ~我想有一天看看你本来的发色。~ + FLIRT-1-8C2

CHAIN C0AURA2J FLIRT-1-8C1
~*轻笑* 谢谢你，<CHARNAME>……我真高兴你喜欢。~
EXIT

CHAIN C0AURA2J FLIRT-1-8C2
~真的？那我有一阵不染，让头发长出来，如果你想要那样。~
EXIT

CHAIN C0AURA2J FLIRT-1-9A
~（你从背后悄悄靠近奥拉，逗弄地咬了一下她从头发出微微露出的耳尖。她惊叫一声转过身面对你。）~
= ~呀！哦，是你，<CHARNAME>……呃，我不介意你做这种事……*脸红* ……可你能不能先给我个提醒？~
EXIT

CHAIN C0AURA2J FLIRT-1-9B
~（你逗弄地捏了几下奥拉小巧的精灵耳。）~
EXIT

CHAIN C0AURA2J FLIRT-1-9C
~不公平，<CHARNAME>！让我也偶尔扯扯你的耳朵。~
EXIT

CHAIN IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) Global("C0AuraInsulted","GLOBAL",0)~ THEN C0AUR25J pid
~嗯？~ [C0AU022]
END
 + ~PartyHasItem("c0aubo6") PartyHasItem("COMPON10")~ + ~我把贡德的弓弦给你，奥拉。看看你能怎么强化太阳射手。~ + TOB-SUNSHOOTER
 + ~OR(2) Global("C0AuraRomanceActive","GLOBAL",1) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~（调情）~ + FLIRT
 ++ ~我觉得你的声音有点问题。~ + stringfix
 ++ ~我眼下什么都不需要。~ EXIT

CHAIN C0AUR25J TOB-SUNSHOOTER
~你……你真要把这机会给我，<CHARNAME>？我，我荣幸了两次！~
= ~好……看看我能做什么……~
DO ~SetGlobal("C0AuraToBBowstring","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
CreateCreatureObject("C0MUFFY2",Myself,0,0,0)
SmallWait(1)
ActionOverride("C0MUFFY2",TakePartyItem("COMPON10"))
ActionOverride("C0MUFFY2",DestroySelf())
Wait(2)
CreateVisualEffectObject("spcrtwpn",Myself)
TransformItem("c0aubo6","c0aubo7")
EquipRanged()
Wait(2)
SetSequence(SEQ_SHOOT)
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN C0AUR25J FLIRT
~嗯？~
END
+ ~RandomNum(4,1) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~（吻她的唇）~ + FLIRT-2-1A
+ ~RandomNum(4,2) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~（吻她的唇）~ + FLIRT-2-1B
+ ~RandomNum(4,3) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~（吻她的唇）~ + FLIRT-2-1C
+ ~RandomNum(4,4) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~（吻她的唇）~ + FLIRT-2-1D
+ ~RandomNum(4,1)~ + ~（吻她的脸颊）~ + FLIRT-1-1A
+ ~RandomNum(4,2)~ + ~（吻她的脸颊）~ + FLIRT-1-1B
+ ~RandomNum(4,3)~ + ~（吻她的脸颊）~ + FLIRT-1-1C
+ ~RandomNum(4,4)~ + ~（吻她的脸颊）~ + FLIRT-1-1D
+ ~RandomNum(3,1)~ + ~（吻她的鼻尖）~ + FLIRT-1-2A
+ ~RandomNum(3,2)~ + ~（吻她的鼻尖）~ + FLIRT-1-2B
+ ~RandomNum(3,3)~ + ~（吻她的鼻尖）~ + FLIRT-1-2C
+ ~RandomNum(4,1) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~（紧紧抱住她）~ + FLIRT-2-2A
+ ~RandomNum(4,2) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~（紧紧抱住她）~ + FLIRT-2-2B
+ ~RandomNum(4,3) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~（紧紧抱住她）~ + FLIRT-2-2C
+ ~RandomNum(4,4) Global("C0AuraRomanceActive","GLOBAL",2) !InParty("IMOEN2")~ + ~（紧紧抱住她）~ + FLIRT-2-2A
+ ~RandomNum(4,4) Global("C0AuraRomanceActive","GLOBAL",2) InParty("IMOEN2")~ + ~（紧紧抱住她）~ + FLIRT-2-2D
+ ~RandomNum(3,1) !Race(Player1,HALFLING) !Race(Player1,DWARF) !Race(Player1,GNOME)~ + ~（把她抱起来）~ + FLIRT-1-3A
+ ~RandomNum(3,2) !Race(Player1,HALFLING) !Race(Player1,DWARF) !Race(Player1,GNOME)~ + ~（把她抱起来）~ + FLIRT-1-3B
+ ~RandomNum(3,3) !Race(Player1,HALFLING) !Race(Player1,DWARF) !Race(Player1,GNOME)~ + ~（把她抱起来）~ + FLIRT-1-3C
+ ~RandomNum(3,1) OR(3) Race(Player1,HALFLING) Race(Player1,DWARF) Race(Player1,GNOME)~ + ~（抱她）~ + FLIRT-1-3A
+ ~RandomNum(3,2) OR(3) Race(Player1,HALFLING) Race(Player1,DWARF) Race(Player1,GNOME)~ + ~（抱她）~ + FLIRT-1-3B
+ ~RandomNum(3,3) OR(3) Race(Player1,HALFLING) Race(Player1,DWARF) Race(Player1,GNOME)~ + ~（抱她）~ + FLIRT-1-3D
+ ~RandomNum(3,1)~ + ~（向她眨眼）~ + FLIRT-1-4A
+ ~RandomNum(3,2)~ + ~（向她眨眼）~ + FLIRT-1-4B
+ ~RandomNum(3,3)~ + ~（向她眨眼）~ + FLIRT-1-4C
+ ~RandomNum(3,1)~ + ~（挠她痒）~ + FLIRT-1-5A
+ ~RandomNum(3,2)~ + ~（挠她痒）~ + FLIRT-1-5B
+ ~RandomNum(3,3)~ + ~（挠她痒）~ + FLIRT-1-5C
+ ~RandomNum(3,1)~ + ~（捏她的脸）~ + FLIRT-1-6A
+ ~RandomNum(3,2)~ + ~（捏她的脸）~ + FLIRT-1-6B
+ ~RandomNum(3,3)~ + ~（捏她的脸）~ + FLIRT-1-6C
+ ~RandomNum(3,1)~ + ~（戳她的鼻子）~ + FLIRT-1-7A
+ ~RandomNum(3,2)~ + ~（戳她的鼻子）~ + FLIRT-1-7B
+ ~RandomNum(3,3) !Race(Player1,HALFLING) !Race(Player1,DWARF) !Race(Player1,GNOME)~ + ~（戳她的鼻子）~ + FLIRT-1-7C
+ ~RandomNum(3,3) OR(3) Race(Player1,HALFLING) Race(Player1,DWARF) Race(Player1,GNOME)~ + ~（戳她的鼻子）~ + FLIRT-1-7D
+ ~RandomNum(3,1)~ + ~（抚她的头发）~ + FLIRT-1-8A
+ ~RandomNum(3,2)~ + ~（抚她的头发）~ + FLIRT-1-8B
+ ~RandomNum(3,3)~ + ~（抚她的头发）~ + FLIRT-1-8C
+ ~RandomNum(3,1)~ + ~（玩笑地扯她的耳朵）~ + FLIRT-1-9A
+ ~RandomNum(3,2)~ + ~（玩笑地扯她的耳朵）~ + FLIRT-1-9B
+ ~RandomNum(3,3)~ + ~（玩笑地扯她的耳朵）~ + FLIRT-1-9C
/*+ ~RandomNum(3,1)~ + ~（逗她）~ + FLIRT-1-10A
+ ~RandomNum(3,2)~ + ~（逗她）~ + FLIRT-1-10B
+ ~RandomNum(3,3)~ + ~（逗她）~ + FLIRT-1-10C
+ ~RandomNum(3,1)~ + ~要不要喝杯茶？~ + FLIRT-1-11A
+ ~RandomNum(3,2)~ + ~要不要喝杯茶？~ + FLIRT-1-11B
+ ~RandomNum(3,3)~ + ~要不要喝杯茶？~ + FLIRT-1-11C
+ ~RandomNum(3,1) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~我爱你，奥拉。~ + FLIRT-2-3A
+ ~RandomNum(3,2) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~我爱你，奥拉。~ + FLIRT-2-3B
+ ~RandomNum(3,3) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~我爱你，奥拉。~ + FLIRT-2-3C
+ ~Global("C0AuraRomanceActive","GLOBAL",1)~ + ~亲爱的，有件事我得告诉你……~ + FLIRT-TALK
+ ~Global("C0AuraRomanceActive","GLOBAL",2)~ + ~亲爱的，有件事我得告诉你……~ + FLIRT-TALK*/
++ ~不，没什么。~ EXIT

CHAIN C0AUR25J FLIRT-2-1A
~嗯……~
= ~我怎么也嫌不够。*轻笑* 再来一次？~
EXIT

CHAIN C0AUR25J FLIRT-2-1B
~（奥拉满足地闭上明亮的眼睛回应你的吻。终于分开时，她带着害羞的笑慢慢睁开。）~
EXIT

CHAIN C0AUR25J FLIRT-2-1C
~（你感到奥拉的小手尽可能紧地抱着你，同时你继续这个吻。她不情愿地放开你时，脸上带着恳求的神情。）~
EXIT

CHAIN C0AUR25J FLIRT-2-1D
~（你紧紧抱着奥拉，唇触到她的，隐约尝到糖和野莓的甜味。）~
END
++ ~（顽皮地用舌尖刷过她的唇）~ + FLIRT-2-1D1
++ ~嗯嗯……现在真好……草莓挞，嗯？~ + FLIRT-2-1D2
++ ~（从她怀里退开）~ EXIT

CHAIN C0AUR25J FLIRT-2-1D1
~嘿……*轻笑* 嘿，停下！好痒！~
EXIT

CHAIN C0AUR25J FLIRT-2-1D2
~（她笑着，脸上带着慌乱地舔了舔嘴唇。）那是我最喜欢的……~
EXIT

CHAIN C0AUR25J FLIRT-1-1A
~（你在奥拉有酒窝的脸颊上轻轻一啄，被吻处立刻泛起粉红。）~
EXIT

CHAIN C0AUR25J FLIRT-1-1B
~（奥拉的皮肤柔软、光滑、温暖，没有一丝粗糙。她一动不动，也许是被你直白的亲昵弄得不知所措。）~
EXIT

CHAIN C0AUR25J FLIRT-1-1C
~（你的唇贴上奥拉的脸颊时，她满足地叹了一声，随后露出爱怜的神情。）~
= ~啊哈哈……每次你这么做，我都忍不住心里发热。~
EXIT

CHAIN C0AUR25J FLIRT-1-1D
~（你俯身靠近，奥拉一只手抵在你肩上拦住你。）~
= ~不，不，现在不行，我脸上蹭了点油污。等我洗一下，好吗？~
EXIT

CHAIN C0AUR25J FLIRT-1-2A
~（你在奥拉鼻梁上尝到一点汗味。她轻吸一口气，往后缩，急忙擦脸。）~
= ~对——对不起！你亲之前我该多注意些……好吧……你现在可以再来。行吗？~
EXIT

CHAIN C0AUR25J FLIRT-1-2B
~（你的唇触到奥拉的鼻子时，你感到她紧张的呼吸拂在你颈上。可她把头稍稍前倾，在你分开前在你下巴上轻轻印了一吻。）~
EXIT

CHAIN C0AUR25J FLIRT-1-2C
~（离奥拉的脸这么近，你注意到她的鼻子虽然按其他种族的标准略大，却异常小巧、带着妖精般的样子，形状更尖更分明，正衬她年轻的面貌。）~
= ~（你终于退开时，奥拉朝你笑，可随即表情古怪，鼻子抽动。一秒后，她打了个喷嚏。）~
EXIT

CHAIN C0AUR25J FLIRT-2-2A
~（你把她揽进怀里时，奥拉起初无奈地叹气，可你抱紧她后，她把脸贴在你胸口，在你怀里满足地哼了一声。）~
EXIT

CHAIN C0AUR25J FLIRT-2-2B
~（你紧紧搂住她，奥拉几乎没挣扎，最后放弃，双臂环上你的脖子。）~
EXIT

CHAIN C0AUR25J FLIRT-2-2C
~嘿——嘿……！又来这套……？我不是娃娃！~
END
++ ~我没办法……你太可爱了！~ + FLIRT-2-2C1
++ ~好，好……我放开……~ + FLIRT-2-2C2

CHAIN C0AUR25J FLIRT-2-2C1
~哼，好吧……我想我能忍……~
EXIT

CHAIN C0AUR25J FLIRT-2-2C2
~我——我没说你*非得*放开……我不太介意。~
EXIT

CHAIN C0AUR25J FLIRT-2-2D
~哎哟！天哪，真——真难判断你跟爱蒙谁的拥抱更紧……~
EXIT

CHAIN C0AUR25J FLIRT-1-3A
~嗯——嗯嗯……真好。你真暖和，<CHARNAME>。~
EXIT

CHAIN C0AUR25J FLIRT-1-3B
~（你双臂环住奥拉的腰把她拉近，她贴向你，你享受她柔软的身子紧贴着你的感觉。）~
EXIT

CHAIN C0AUR25J FLIRT-1-3C
~（你把她从地上抱起来时奥拉惊叫一声，你把她拉近拥抱，她双臂伸向你。你扶着她腰时，她把脸蹭向你的脖子。）~
EXIT

CHAIN C0AUR25J FLIRT-1-3D
~嗯，这样被抱着真让人安心……~
= ~（你抱着她时，她把脸蹭向你的脖子，满足地叹气。）~
EXIT

CHAIN C0AUR25J FLIRT-1-4A
~（奥拉对你的举动困惑地眨眼。）~
= ~哦不……你这次又在打什么主意？~
END
++ ~我不告诉你。~ + FLIRT-1-4A1
++ ~没什么……我只是想看看你笑的样子。~ + FLIRT-1-4A2

CHAIN C0AUR25J FLIRT-1-4A1
~啊哈哈……我已经怕了……*打颤*~
EXIT

CHAIN C0AUR25J FLIRT-1-4A2
~哦。那好吧……~
= ~（她给你一个温和、略带逗弄的笑，回你一个眼色。）~
EXIT

CHAIN C0AUR25J FLIRT-1-4B
~什么？我脸上有东西？还是我头发又乱了？快告诉我怎么回事！~
EXIT

CHAIN C0AUR25J FLIRT-1-4C
~（奥拉傻笑了一下、羞怯地咧嘴，随后紧张地用手指顺着自己的长发。）~
EXIT

CHAIN C0AUR25J FLIRT-1-5A
~哦……不，不不不不！啊哈哈！停下，<CHARNAME>——不，别挠那儿！哈哈哈哈哈——啊！~
EXIT

CHAIN C0AUR25J FLIRT-1-5B
~呀！啊哈哈哈哈，别挠腰，别挠腰……咿！~
EXIT

CHAIN C0AUR25J FLIRT-1-5C
~（出乎意料，你顽皮地攻她的痒处时，奥拉只做了微弱的抵抗。当你察觉她眼里闪过一抹淘气，你才——稍微晚了一点——意识到自己犯了个粗心的错。~
= ~哈哈！你中了我的圈套！上，穆菲！~
= ~（那只小松鼠构造体扑到你身上，从你头顶到脚疯狂地绕圈乱跑，细小的金属爪挠得你没完没了，你挣扎着想抓住它。）~
END
++ ~咿——！叫它停下，奥拉！~ + FLIRT-1-5C1
++ ~好，好，我投降！~ + FLIRT-1-5C1
++ ~不，你不行，你这小……啊哈，抓住你了！~ + FLIRT-1-5C2

CHAIN C0AUR25J FLIRT-1-5C1
~*轻笑* 看来这次是我赢了，<CHARNAME>！~
EXIT

CHAIN C0AUR25J FLIRT-1-5C2
~唉。我从来赢不了你，对吧，<CHARNAME>？~
= ~呃，你能把它还给我了吗？~
EXIT

CHAIN C0AUR25J FLIRT-1-6A
~哎哟！天哪，你比我姐姐们还过分，<CHARNAME>……~
EXIT

CHAIN C0AUR25J FLIRT-1-6B
~*叹气* 有时我希望自己的脸能长成熟点，这样我的脸颊就不会那么招人捏。~
EXIT

CHAIN C0AUR25J FLIRT-1-6C
~（你用两根手指轻搓奥拉的脸颊，她不以为然地嘟嘴，可那模样一点也不像，眼里满是满足，嘴角也几乎压不住笑。）~
EXIT

CHAIN C0AUR25J FLIRT-1-7A
~（你逗弄地把一根手指放在奥拉鼻尖上，她脸腾地红了。）~
EXIT

CHAIN C0AUR25J FLIRT-1-7B
~（这亲昵的触碰让奥拉紧张地笑了一声。你注意到她眼里短暂地闪过兴奋，你收回手时，她抓住你的手，轻轻吻了你的手指。）~
EXIT

CHAIN C0AUR25J FLIRT-1-7C
~（你把一根手指抬到奥拉鼻尖，她带着坦率的笑示意你靠近，也抬手指碰你的脸。）~
EXIT

CHAIN C0AUR25J FLIRT-1-7D
~（你弯下身把手指抬到奥拉鼻尖，她带着坦率的笑示意你靠近，也抬起自己的手指碰你的脸。）~
EXIT

CHAIN C0AUR25J FLIRT-1-8A
~（你温柔地抚着奥拉长而直的头发，注意到它养护得多好。她的发丝干净、齐整，隐约有玫瑰和淡紫的香。你忍不住想，她夜里要花多少时间打理头发，才补得上你日常旅行的粗砺。）~
EXIT

CHAIN C0AUR25J FLIRT-1-8B
~（你抚了一阵奥拉的头发后，她握住你的手贴在自己脸颊上，带着浅笑轻轻摩挲你的手指。）~
= ~（她忽然脸红，神情慌乱地在包里急忙掏出一把小木梳。）~
= ~呃……你介意帮我梳一下头发吗，<CHARNAME>？我会喜欢的。~
EXIT

CHAIN C0AUR25J FLIRT-1-8C
~（你把奥拉一缕玫瑰色的头发顺到发根，看见颜色淡淡变回她本来的淡——几乎银白——金。~
= ~你的手指滑过她头顶时，奥拉轻笑出声，明显怕痒。~
END
++ ~你的头发很美，奥拉。~ + FLIRT-1-8C1
++ ~我想有一天看看你本来的发色。~ + FLIRT-1-8C2

CHAIN C0AUR25J FLIRT-1-8C1
~*轻笑* 谢谢你，<CHARNAME>……我真高兴你喜欢。~
EXIT

CHAIN C0AUR25J FLIRT-1-8C2
~真的？那我有一阵不染，让头发长出来，如果你想要那样。~
EXIT

CHAIN C0AUR25J FLIRT-1-9A
~（你从背后悄悄靠近奥拉，逗弄地咬了一下她从头发出微微露出的耳尖。她惊叫一声转过身面对你。）~
= ~呀！哦，是你，<CHARNAME>……呃，我不介意你做这种事……*脸红* ……可你能不能先给我个提醒？~
EXIT

CHAIN C0AUR25J FLIRT-1-9B
~（你逗弄地捏了几下奥拉小巧的精灵耳。）~
EXIT

CHAIN C0AUR25J FLIRT-1-9C
~不公平，<CHARNAME>！让我也偶尔扯扯你的耳朵。~
EXIT

CHAIN C0AUR25J stringfix
~呃。我得想办法处理一下这个。*咳* “啦，啦……”~
DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("c0areset")~ EXIT
