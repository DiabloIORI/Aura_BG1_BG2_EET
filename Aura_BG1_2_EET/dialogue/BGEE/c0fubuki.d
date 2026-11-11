BEGIN C0FUBUKI

CHAIN IF ~IsValidForPartyDialog("C0Aura")
Global("C0AuraQuest","GLOBAL",1)~ THEN C0FUBUKI a1
~停下。~
END
++ ~你是谁？~ + a1.1
++ ~我想停就停，轮不到一个陌生人下令。~ + a1.1
++ ~你有五秒钟解释，否则我就把你砍倒。~ + a1.1

CHAIN C0FUBUKI a1.1
~我的话是说给你的同伴听的。你还记得我吗，近卫大人？~
== C0AURAJ ~“近卫”……？自从……等等！你……你看着眼熟。你在场，在丽花小姐的神社。你在这儿做什么？~
== C0FUBUKI ~我是吹雪。我来带个警告——你正被猎杀。自你进城起，敌人的眼睛就一直盯着你。~
END
++ ~被猎杀？被谁？~ EXTERN C0FUBUKI a1.2
++ ~这跟我有什么关系？~ EXTERN C0FUBUKI a1.2
++ ~解释清楚，奥拉。你有什么没告诉我的？~ EXTERN C0AURAJ a1.3

CHAIN C0FUBUKI a1.2
~不在这儿。这城里耳目太多。到本地盗贼称作“地下酒窖”的地窖里来找我。~
== C0FUBUKI ~再会。~
DO ~SetGlobal("C0AuraQuest","GLOBAL",2)
AddJournalEntry(@10002,QUEST)
Wait(1)
DisplayString(Myself,%*hides in shadows*%)
PlaySound("ACT_07")
DestroySelf()~ EXIT

CHAIN C0AURAJ a1.3
~我——我对此一无所知。要是我知道，我一定会告诉你，我发誓！求你，解释清楚。~
EXTERN C0FUBUKI a1.2

CHAIN IF ~IsValidForPartyDialog("C0Aura") Global("C0AuraQuest","GLOBAL",2)~ THEN C0FUBUKI a2
~你来了。很好。~
DO ~SetGlobal("C0AuraQuest","GLOBAL",3)~
== C0AURAJ ~这……地方真糟。你为什么叫我们在这儿见？~
== C0FUBUKI ~原谅我。我厌恶这地方，但这里能让斋藤忠桥的刺客少些落脚处。~
== C0AURAJ ~那么斋藤先生真在猎杀我？我……自从你出现，我就怕这个。~
END
++ ~慢点。你说的这人是谁，他为什么追杀奥拉？~ + a2.1
++ ~要我在这儿帮谁，我得听完整件事的来龙去脉。~ EXTERN C0AURAJ a2.2

CHAIN C0FUBUKI a2.1
~斋藤忠桥是科祖库拉的浪人，一个没有主君的武士。几年前，他在三池殿遇见近卫大人，那里她与我已故的师父丽花小姐同住。~
== C0AURAJ ~我们相见时我说过，我在找一个离开科祖库拉的人。那人就是斋藤先生。他听说我的本事，来到我住的天镜神社。我当时相信他重义而正直。~
== C0AURAJ ~后来我信他到愿意以自己的手艺和科祖库拉的锻刀术为他铸一把刀。那是我第一次为别人造武器。可我不知道他的图谋……~
== C0FUBUKI ~斋藤忠桥不只是个武士。他是个异端。他要对卡拉图诸神开战，他相信诸神才是凡人真正的敌人。得到近卫大人的馈赠之后，他和党羽毁庙宇，屠杀其中的祭司僧侣，以及任何敢反抗的人。~
== C0AURAJ ~我……我不知道他心里的“正义”是这样的。要是我早知道……我宁可先杀了他，也不会把刀交到他手上。~
END
++ ~可他为什么追杀你？他若得到了想要的，不该还在科祖库拉打他的仗吗？~ EXTERN C0AURAJ a2.3
++ ~那你觉得他现在想从你这儿得到什么？~ EXTERN C0AURAJ a2.3
++ ~接着说。~ EXTERN C0AURAJ a2.3

CHAIN C0AURAJ a2.2
~你说得对。我……我想该把一切都告诉你了，这话我早该说。~
EXTERN C0FUBUKI a2.1

CHAIN C0AURAJ a2.3
~他想要什么，我只能猜。我给他刀的那天不是我最后一次见他。过些时候，他回来了，说要给我一个机会，帮他“解放科祖库拉”。~
== C0AURAJ ~那时我已听说他做的事，可我不愿相信。可他要我加入他，造更多武器——不只是刀剑。他清楚我的能耐。他想要我能造出的最强武器——烟粉。~
== C0AURAJ ~我拒绝了。而一旦他知道永远改变不了我的主意……他就拔刀，准备杀我。我想他是不愿留我活着与他作对。~
== C0AURAJ ~我逃到了天镜神社，可他知道我会回那儿。丽花小姐也在，她挡在他面前，然后……~
END
++ ~我明白了。所以他杀了她？~ + a2.4
++ ~那天你是怎么活下来的？我以为他也会杀你。~ + a2.5
++ ~你躲在你母亲般的人身后，让她替你死？~ + a2.6

CHAIN C0AURAJ a2.4
~都是我的错！我……我不该回去那儿，我知道不该，可我不知道还有哪儿能安全……因为我，丽花小姐……她……~
EXTERN C0AURAJ a2.6

CHAIN C0AURAJ a2.5
~我……我不知道。到今天我还想不通……他本可以杀我。也许他还剩些荣誉，看到丽花小姐替我而死，就饶了我……或者，也许他觉得我太可怜，不值一杀。~
EXTERN C0AURAJ a2.6

CHAIN C0AURAJ a2.6
~我每天都为此自责。我无法留在科祖库拉，做出那种事之后不行。我离开了，不久就听到传言说斋藤先生也离开了卡拉图……我知道他是来找我的。~
= ~起初我为性命担忧，可现在……我想找到他。我不想打，可……要是我一直逃，这事永远不会了结。~
END
++ ~你不杀他？即使他背弃了你的信任？~ + a2.7
++ ~我们一起去找他。你知道他在哪儿吗，吹雪？~ EXTERN C0FUBUKI a2.8
++ ~这是你自己的麻烦，奥拉，不是我的。你要去找你那个敌人，你自己去。~ + a2.9

CHAIN C0AURAJ a2.7
~我不是那个意思。要是……要是非死不可，那就死。可这一切发生之后，我唯一恨的人是自己。所以……我得把这事了结。吹雪小姐……斋藤先生在哪儿？~
EXTERN C0FUBUKI a2.8

CHAIN C0FUBUKI a2.8
~斋藤忠桥的党羽很狡猾。我追踪过他们几个探子，可他们没透露他的位置。我还需要些时间才能……~
= ~……等等。~
= ~他们找到我们了。小心，他们会从暗处出手！~
DO ~ChangeEnemyAlly(Myself,ALLY)~ EXIT

CHAIN C0AURAJ a2.9
~我……无论如何，我都不会要你为我冒险，<CHARNAME>。该做的我会做。吹雪小姐……斋藤先生在哪儿？~
EXTERN C0FUBUKI a2.8

CHAIN IF ~Global("C0AuraQuest","GLOBAL",4)~ THEN C0FUBUKI a3
~就这些了。至少……是留下的这些。有些逃掉了，无疑去给他们主子报信。~
DO ~ChangeEnemyAlly(Myself,NEUTRAL) SetGlobal("C0AuraQuest","GLOBAL",5)~
== C0FUBUKI ~还会有更多。保持警觉，近卫大人。等我查明斋藤忠桥的落脚处，会再来找你。~
DO ~AddJournalEntry(@10003,QUEST)
PlaySound("ACT_07")
DisplayString(Myself,%*hides in shadows*%)
DestroySelf()~
== C0AURAJ ~我——我没想到会有这么多……我让你陷进了太大的危险，<CHARNAME>。~
END
++ ~别担心，奥拉。你跟着我就安全。~ EXTERN C0AURAJ a3.1
++ ~没事。每天想杀我的人本来就多得很。~ EXTERN C0AURAJ a3.2
++ ~你带来的麻烦比你的价值大。~ EXTERN C0AURAJ a3.3

CHAIN C0AURAJ a3.1
~我……谢谢你，可我不能让你因为我受伤，<CHARNAME>。~
EXTERN C0AURAJ a3.4

CHAIN C0AURAJ a3.2
~我知道，可……这不是你该面对的威胁。~
EXTERN C0AURAJ a3.4

CHAIN C0AURAJ a3.3
~你……你说得对。要是你觉得我走了更安全，就直说。我不怪你。~
EXTERN C0AURAJ a3.4

CHAIN C0AURAJ a3.4
~我们现在不知道斋藤先生在哪儿，也不知道他的忍者什么时候再动手……只能一直留神。~
EXIT

CHAIN IF ~Global("C0AuraQuest","GLOBAL",6)~ THEN C0FUBUKI a4
~我找到你了，<CHARNAME>大人。~
DO ~SetGlobal("C0AuraQuest","GLOBAL",7)~
END
++ ~你为什么在这儿？~ + a4.1
++ ~奥拉呢？她今早不见了。~ + a4.1
++ ~我有种不祥的预感……~ + a4.1

CHAIN C0FUBUKI a4.1
~我怕近卫大人是独自去面对斋藤忠桥了。你醒来前她就走了，随身东西都不在，只留下这封信。~
DO ~GiveItemCreate("c0ascrl2",Player1,1,0,0)~
END
++ ~她这是去送死。她往哪儿去了？~ + a4.2
++ ~我得找到她。你能帮我吗？~ + a4.2
++ ~走了也好。她带来的麻烦比价值大。~ + a4.2

CHAIN C0FUBUKI a4.2
~我抓到斋藤忠桥一个党羽。他身上带着这封信，我已译成通用语。若近卫大人独自离开，那她大概知道怎么找到他。~
DO ~GiveItemCreate("c0ascrl1",Player1,1,0,0)~
= ~你虽不识我，<CHARNAME>大人……我求你，帮帮她。她是丽花小姐遗志的继承者……为此，她必须活着。告辞。~
DO ~AddJournalEntry(@10007,QUEST)
Wait(1)
DisplayString(Myself,%*hides in shadows*%)
PlaySound("ACT_07")
DestroySelf()~ EXIT

CHAIN IF ~IsValidForPartyDialog("C0Aura")
Global("C0AuraQuest","GLOBAL",11)~ THEN C0FUBUKI a5
~你们赢了……诸神为流下的血而泣，可若命运仁慈，愿他们来世更安宁。~
DO ~SetGlobal("C0AuraQuest","GLOBAL",12) SetGlobalTimer("C0AuraQuestLastTimer","GLOBAL",EIGHT_HOURS)~
== C0AURAJ ~我还是不明白……斋藤先生和丽花小姐之间有什么过往？你知道些什么吗？~
== C0FUBUKI ~他们是一对旧敌，曾同奉一位主君。这些年我查到的都记在这些记录里，比我说得更清楚。我已不再需要它们。~
DO ~GiveItemCreate("c0ascrl3","c0aura",1,0,0)~
== C0AURAJ ~那你呢，吹雪小姐？你为什么这样在意这场冲突？~
== C0FUBUKI ~我曾属于风魔一族。我许多族亲都支持斋藤忠桥对科祖库拉圣庙的反叛。我们中反对他的人不多，可那已足以让全族自相残杀。~
== C0FUBUKI ~我的兄弟姐妹互相残杀。活下来的都跟了斋藤忠桥……其中包括我的兄长，妖，你已在阵上杀了他。只有我活下来，改走丽花小姐的和平之路。~
== C0AURAJ ~而你帮我对付斋藤先生……是为了报仇？~
== C0FUBUKI ~不。丽花小姐让我明白，对斋藤忠桥复仇会像毁掉他一样快地毁掉我。我相助的目的，是保护你——丽花小姐遗志的继承者。~
== C0FUBUKI ~我现在要回科祖库拉，在天镜神社效力。这本是我最后一件差事，如今已了。该由我以自己的方式，继续遵循丽花小姐的教诲了。~
== C0AURAJ ~谢谢你……阿里嘎多，吹雪小姐……谢谢你所有的帮助。知道那座圣社会有好归宿，我很高兴。~
== C0FUBUKI ~告辞了，近卫大人。愿你在道之下得安宁。~
DO ~Wait(1)
DisplayString(Myself,%*hides in shadows*%)
PlaySound("ACT_07")
DestroySelf()~ EXIT

CHAIN IF ~!IsValidForPartyDialog("C0Aura")~ THEN C0FUBUKI b1
~我必须与近卫大人说话。请把她带来。~
EXIT