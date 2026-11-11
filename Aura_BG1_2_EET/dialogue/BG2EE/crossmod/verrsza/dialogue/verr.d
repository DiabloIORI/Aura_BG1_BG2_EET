// Verr

CHAIN
IF ~InParty("L#2VERR")
Range("L#2VERR",15)
!StateCheck("L#2VERR",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2Verr1","GLOBAL",0)~ THEN BC0AURA2 C0AuraVerr1
~维尔莎，来块饼干吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2Verr1","GLOBAL",1)~
== L#2VERRB ~我对你那些掉渣、甜得发腻的点心没兴趣，不。~
== BC0AURA2 ~那是你的损失。不过你那口牙大概也咬不动，对吧？~
== L#2VERRB ~你老想着甜食，就永远长不出肌肉，丫头。甜食只会烂你的牙。~
== BC0AURA2 ~喂，无礼！我母亲可是把护牙的习惯敲进我脑子正中央的，告诉你。不然她压根不会让我吃甜食。~
== L#2VERRB ~真奇怪你还没像你那些同类一样胖起来。要是你想变强，伙食里多加点肉。~
== BC0AURA2 ~我吃素的，维尔。~
== L#2VERRB ~这就解释了每次轮到你做饭，那饭菜为什么那么可怜。我还以为你只是没打猎的本事。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2VERR",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2Verr1","GLOBAL",0)~ THEN L#2VERRB C0AuraVerr2
~你太客气了，小侏儒。~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2Verr1","GLOBAL",1)~
== BC0AURA2 ~你说“太心软”是什么意思？你宁愿我残忍无情？~
== L#2VERRB ~对付敌人时，残忍自有它的用处。面对一心要杀你的人还犹豫不杀，那就只是愚笨。~
== BC0AURA2 ~我不觉得不想活在一个“唯有杀掉所有危险之人才能安全”的世界里，是愚蠢的。~
== L#2VERRB ~等你或队里哪个人因你的不作为而受害，你会后悔这番话的。~
== BC0AURA2 ~不。那永远不会发生。我会尽全力护住朋友。只是能避免的话，我不会杀人。~
== L#2VERRB ~呸。我们活在现实里，不是什么理想主义的幻境。不过我想，只要让你尝一点生活的真味，就能把你敲醒。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2VERR",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2VerrToB","GLOBAL",0)~ THEN L#2VE25B C0AuraVerrToB
~不。~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2VerrToB","GLOBAL",1)~
== BC0AUR25 ~可它是——~
== L#2VE25B ~我说了不要！~
== BC0AUR25 ~哦，别这样！这会让你的毛又顺又滑！你早就该梳理梳理了。~
== L#2VE25B ~我不是家猫，你这荒唐的东西！我不需要人给我刷毛！~
== BC0AUR25 ~你会喜欢的！别跟我说你就乐意那身脏毛上挂着乱发和灰？~
== L#2VE25B ~我的毛不脏不烂！~
== BC0AUR25 ~没那么糟，我保证！顶多有点痒。~
== BC0AUR25 IF ~IsValidForPartyDialog("L#2PHAL")~ THEN ~法尔被梳得那么舒服，简直在打呼噜了！~
== L#2VE25B IF ~IsValidForPartyDialog("L#2PHAL")~ THEN ~我才没有干那种事！~
== L#2VE25B ~我不知道你是臆想还是单纯想死，但别把我当你的宠物。我对你的耐性本来就薄。滚开！~
== BC0AUR25 ~好吧。那我等你睡着了再做。~
== L#2VE25B ~你敢。我可是练过睁着一只眼睡觉的。你敢拿着那东西靠近我，你喘的气只够你后悔。~
== BC0AUR25 ~*撅嘴* 布噜噜噜。你是说“猫”。~
EXIT

// Phalh

CHAIN
IF ~InParty("L#2PHAL")
Range("L#2PHAL",15)
!StateCheck("L#2PHAL",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2Phalh1","GLOBAL",0)~ THEN BC0AURA2 C0AuraPhalh1
~嘿，法尔……你真是法尔吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2Phalh1","GLOBAL",1)~
== L#2PHALB ~我……是，是的。这是什么拐弯抹角的问题吗？~
== BC0AURA2 ~哦，不是。只是……天哪，你长得真快！我都不能相信你现在比我还高了。~
== L#2PHALB ~也许吧，可在我族人里我还是偏矮的。有点叫人失望。~
== BC0AURA2 ~我明白你的意思。我在家里一向是最矮的那个。连我弟弟都比我高出一寸，他还比我小十五岁呢！~
== L#2PHALB ~维尔叔叔说我长得慢下来了，不过还没停。要是我运气好、吃得够，说不定有一天比他还高。~
== BC0AURA2 ~哦，行了，你非得这么戳人痛处吗？照这样下去，我认识的人都要长得比我高了！~
== L#2PHALB ~啊哈哈……抱歉。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2PHAL",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2Phalh1","GLOBAL",1)~ THEN L#2PHALB C0AuraPhalh2
~奥拉，你觉得你能教我像你那样做东西吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2Phalh1","GLOBAL",2)~
== BC0AURA2 ~我不太会教人，法尔。你想学的话，何不去桑巴尔学院读个一两年？~
== L#2PHALB ~唉……上学听着就无聊。再说，我觉得我也不太会受欢迎。~
== BC0AURA2 ~嗯……我想我没法比你还小的时候教你更多了。还记得我试着给你讲炼金平衡的基本原理，你结果睡着了吗？~
== L#2PHALB ~哦。呃……是。我还流了点口水在你书上。你当时可不太高兴。~
== BC0AURA2 ~说真的，法尔，我觉得你要是肯试，学奇械术没那么难。你只是得找到自己感兴趣的东西。不如把我那本《奇妙工艺手册》借去几天，看看你能做出什么？~
== L#2PHALB ~当然，有空我就读一读。这回我会好好爱护它。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2PHAL",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2Phalh1","GLOBAL",2)~ THEN L#2PHALB C0AuraPhalh3
~*哈欠* ……“将……元素精华注入选定之物以附魔……然后……”哦，我记不住了。~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2Phalh1","GLOBAL",3)~
== BC0AURA2 ~法尔，你没事吧？你看着像是站着都能睡着！别跟我说你读了一整夜！~
== L#2PHALB ~呼……*哼气* 我忍不住，我真的很……想知道怎么做出厉害的东西。可这很难。~
== BC0AURA2 ~*叹气* 我说过，别想一口气把所有东西都记下来！慢慢来，不然你会记错的。然后真要动手做东西，搞不好会把自己伤得很重！~
== L#2PHALB ~做这种魔法器物真难。~
== BC0AURA2 ~嗯，当然。毕竟那是魔法。你自己不也下苦功学过怎么用咒语吗？~
== L#2PHALB ~还有几乎不懂魔法的维尔叔叔，在这头一点忙也帮不上？对，确实下了一番苦功。~
== L#2VERRB IF ~IsValidForPartyDialog("L#2VERR")~ THEN ~我听见了！~
== L#2PHALB IF ~IsValidForPartyDialog("L#2VERR")~ THEN ~我知道，叔叔。这正是要点。~
== L#2VERRB IF ~IsValidForPartyDialog("L#2VERR")~ THEN ~*咧嘴笑* 你这没大没小的丫头。~
== BC0AURA2 ~我看你只是习惯于动手学，法尔。也许对你最好的学法是真正做出一件东西来。~
== L#2PHALB ~真的？我也同意那样学得快些，可你刚才不是才说我会伤到自己吗？~
== BC0AURA2 ~别担心，你干活的时候我盯着你。会很有意思的！~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2PHAL",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2Phalh1","GLOBAL",3)~ THEN L#2PHALB C0AuraPhalh4
~那现在，我该施我想施的法术了，对吧？这一步我等了好久了！~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2Phalh1","GLOBAL",4)~
== BC0AURA2 ~耐心点，法尔。不过没错，现在该施加附魔了。~
== L#2PHALB ~啊哈，做成了！我能感觉到魔法正灌注进护手。成功了！~
== BC0AURA2 ~干得好，法尔！你已经学会了魔法工艺的基础，剩下的很快就能上手。~
== L#2PHALB ~有你的帮忙，这倒不难。可我以为你说过会保证我不受伤。我刚才把手烧了……~
== BC0AURA2 ~嗯，是你自己说直接在金属上画符文比照我说的用羊皮纸更快。你还是太没耐性。~
== L#2VERRB IF ~IsValidForPartyDialog("L#2VERR")~ THEN ~小子，这话我以前就跟你说过。真不敢信我竟会同意这侏儒的说法。~
== L#2PHALB ~唔……好吧，我承认那是我自己的错。可我那是兴奋啊！~
== BC0AURA2 ~没事，我明白。不过从今往后我不会再没人看着就乱做东西了。~
== L#2PHALB ~那……我们现在完事了，对吧？我挺累了。~
== BC0AURA2 ~不，还剩一步！~
== L#2PHALB ~唉，还有一步？我以为给这东西附完魔就完了！~
== BC0AURA2 ~你会喜欢这步的，傻瓜。你还没试过这附魔呢，记得吗？~
== L#2PHALB ~哦！原来你是这个意思。好，我非常乐意。先让我确认它们合手。~
== BC0AURA2 ~你，呃，挑护手的时候没先确认它们合你的手吗？~
== L#2PHALB ~……我太兴奋了。~
DO ~GiveItemCreate("c0abracz","l#2phal",1,0,0)~ EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2PHAL",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2Phalh1","GLOBAL",4)~ THEN L#2PHALB C0AuraPhalh5
~*嘶——* 哎，好烫！烫烫烫！~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2Phalh1","GLOBAL",5)~
== L#2VERRB IF ~IsValidForPartyDialog("L#2VERR")~ THEN ~出什么事了，小子？！~
== L#2PHALB IF ~IsValidForPartyDialog("L#2VERR")~ THEN ~没什么，叔叔。我只是……哎，不小心把自己烧了。~
== BC0AURA2 ~法尔？喂，你在干什么？我跟你说过别自己乱试那些疯实验！~
== L#2PHALB ~要是我先问你想不想让我试，你压根不会答应……~
== BC0AURA2 ~那是……木炭？还有粉末？法尔，你想做炸药！我说过你不能弄这个！~
== L#2PHALB ~看吧？这就是我没问你的原因。我只是想试试炼金书上说的烟粉炸弹。我没想到这么危险。~
== BC0AURA2 ~我跟你说过，法尔，炸药不是能乱碰的。它们是毁灭的工具，用处仅此而已。连做它们的人也未必安全。要不是觉得需要，我根本不会造。~
== L#2PHALB ~可我想，我们的日子这么凶险，也许需要这样的力量。连你也驳不了这一点……不过，背着你去试着做它们，是我不对。~
== BC0AURA2 ~*叹气* 没事。只是……让我看看你哪儿弄错了，好教你怎么做才对。我不想你把自己烧得更厉害。这药膏拿去抹手。~
== L#2PHALB ~好。谢谢……还有，对不起。~
== BC0AURA2 ~我说了没事。你跟我弟弟一个样，总在还没准备好时就动手，把自己弄伤。我只好一样照顾你。~
== L#2PHALB ~唉……你又在挠我耳根后头？我以为我长大了你就不这么干了。~
== BC0AURA2 ~嘿嘿。只因为你长这么高了。既然你坐下来了，我可不能错过这机会！~
== L#2PHALB ~好吧……~
DO ~AddSpecialAbility("c0aphalb")~ EXIT