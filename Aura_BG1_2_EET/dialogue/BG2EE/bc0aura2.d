
// Aerie

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieFriendship","GLOBAL",0)~ THEN BAERIE C0AuraAerie1
~哦。哦天哪……这是什么这么好闻的香味？~ [C0BLANK]
DO ~IncrementGlobal("C0AuraAerieFriendship","GLOBAL",1)~
== BC0AURA2 ~什——哦，艾黎！你吓着我了。我只是在吃点东西。~
== BAERIE ~那……那没什么。我只是闻到一股又香又甜的味道。是苹果吗？~
== BC0AURA2 ~嗯，是糖苹果。切片，然后裹上焦糖、坚果和肉桂。很简单的小吃，可我很喜欢。~
== BAERIE ~我就说那味道很熟！我以前在马戏团的时候，帮奎尔叔叔做过类似的东西。哈哈……我记得小孩子很爱吃。~
== BAERIE ~呃，我不是说你像……我是说，连我自己都会，呃，有几次……哦，算了。~
== BC0AURA2 ~不，不，没关系！我……嗯，也不是什么秘密，我喜欢甜的。我一点都不觉得这幼稚。~
== BAERIE ~真的？那，呃……那……~
== BC0AURA2 ~……呃，你要来一点吗？~
== BAERIE ~哦，我很乐意！~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieFriendship","GLOBAL",1)~ THEN BC0AURA2 C0AuraAerie2
~艾黎，你族人的家……叫菲尼亚-戴尔，对吧？~
DO ~IncrementGlobal("C0AuraAerieFriendship","GLOBAL",1)~
== BAERIE ~我——我的族人？我是说……对，那是它的名字。~
== BC0AURA2 ~啊……我真的很抱歉。我是说你的故乡。我知道你……~
== BAERIE ~不……不，没关系。别人也许会别有用心，可……我知道你只是好奇。~
== BC0AURA2 ~我是。即便在我去过的那么多藏书里，关于翼精灵的知识也那么少……我有很多问题想问，可不想烦扰你。~
== BAERIE ~我明白。~
== BC0AURA2 ~然后我第一次开口就说了失礼的话。我真笨。~
== BAERIE ~没关系。其实我很高兴你好奇、想多了解翼精灵。这下面很少有人知道我们存在……~
== BC0AURA2 ~不只是你的族人。还有你！可是，呃，也许改天吧。你若愿意，也可以问我问题。~
== BAERIE ~那好……你的家呢，奥拉？你想它吗？~
== BC0AURA2 ~当然想！我很想兰坦。不过最想的还是家人。~
== BAERIE ~奎尔跟我说过一两个兰坦的故事。那时对我来说一切都很神话，什么学院、飞船、机械。可其实它离这儿并不远，对吧？~
== BC0AURA2 ~不，一点都不远。只隔着无痕海一小段。~
== BAERIE ~若如此，那你随时想回家就能回去，不是吗？~
== BC0AURA2 ~我——我想是可以，是的。你呢，艾黎？你不想家吗？~
== BAERIE ~哦……我，我不能……我想我不会再见到菲尼亚-戴尔了。可我一直……想着它。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieFriendship","GLOBAL",2)~ THEN BAERIE C0AuraAerie3
~你信什么神，奥拉？我以为所有兰坦发明家都追随贡德奇迹缔造者，可我少听你提祂的名字。~ [C0BLANK]
DO ~IncrementGlobal("C0AuraAerieFriendship","GLOBAL",1)
RealSetGlobalTimer("C0AuraAerieRestTalkTimer","GLOBAL",3600)~
== BC0AURA2 ~我追随贡德教团的理念。工艺、发明、巧作。可我……不向贡德祈祷。~
== BAERIE ~这两者有区别吗？你若追随贡德所代表的东西，那不就等于敬拜这位神？~
== BC0AURA2 ~我不确定。我以前在房里挂代表我所敬重之物的神祇织毯。除了贡德，还有掌魔法的密斯特拉、掌智慧的欧格玛、掌知识的迪尼尔……我很难把一位神放在其他之上。~
== BAERIE ~哦。我——我明白了……那我们其实没那么不同。我敬拜贝尔凡，可我仍记得艾尔德里·菲尼亚的教诲，哪怕她不再要我，我也喜欢有时想想它们……说来怪，可我相信他们两个。很高兴知道这不算错。~
== BC0AURA2 ~我不觉得这是错的。那些善神……我想他们该理解你想信什么。~
EXIT

CHAIN IF WEIGHT #-1
~Global("C0AuraAerieRestTalk1","GLOBAL",1)~ THEN BC0AURA2 C0AURA-AERIE-RESTTALK
~呼……嗯，呼……~ [C0BLANK]
DO ~SetGlobal("C0AuraAerieRestTalk1","GLOBAL",2)
SetGabber(Player1)~
== AERIEJ ~嘘，<CHARNAME>。别吵她。过了我们这一天，她太累了。~
== BC0AURA2 ~呼……妈……妈妈？妈妈，我能再去看朱诺在场上练剑吗？唔……好，晚饭前回来……呼……~
== AERIEJ ~她睡梦里嘟囔好多。*轻笑* 挺可爱的。~
END
++ ~她似乎偏爱你的陪伴。~ EXTERN AERIEJ C0AURA-AERIE-RESTTALK.1
++ ~你不能让她头枕在你腿上就这么待着，艾黎。你也得休息。~ EXTERN AERIEJ C0AURA-AERIE-RESTTALK.2
++ ~我把你们两个单独留下。~ EXTERN BC0AURA2 C0AURA-AERIE-RESTTALK.4

CHAIN AERIEJ C0AURA-AERIE-RESTTALK.1
~你真这么觉得吗，<CHARNAME>？不过，我想她确实常来找我说话。~
EXTERN AERIEJ C0AURA-AERIE-RESTTALK.3

CHAIN AERIEJ C0AURA-AERIE-RESTTALK.2
~我知道……可叫醒她又觉得不对。她真的很喜欢待在我身边。~
EXTERN AERIEJ C0AURA-AERIE-RESTTALK.3

CHAIN AERIEJ C0AURA-AERIE-RESTTALK.3
~不过我不介意。她是个很甜的人。~
END
++ ~她是。~ EXTERN BC0AURA2 C0AURA-AERIE-RESTTALK.4
++ ~我也喜欢有她在。~ EXTERN BC0AURA2 C0AURA-AERIE-RESTTALK.4
++ ~她有用就留下。~ EXTERN BC0AURA2 C0AURA-AERIE-RESTTALK.4

CHAIN BC0AURA2 C0AURA-AERIE-RESTTALK.4
~呼……唔……春天的樱花……真想再看一次……呼……~
== AERIEJ ~别担心我，<CHARNAME>。我在这儿待一会儿。你该去休息。~
DO ~ClearAllActions()
StartCutSceneMode()
FadeToColor([0.0],0)
Wait(2)
RestPartyEx(0,0,FALSE)
FadeToColor([0.0],0)
Wait(3)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()~ EXIT

INTERJECT BAERIE 448 C0AuraAerieKorganConflict
== BC0AURA2 IF ~IsValidForPartyDialog("C0Aura") GlobalGT("C0AuraAerieFriendship","GLOBAL",0)~ THEN ~艾黎！哦，天哪……我去追她，<CHARNAME>，等一会儿。~
DO ~SetGlobal("C0AuraAerieKorganConflict","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("C0ACUT5",FALSE)~ EXIT

CHAIN IF WEIGHT #-1
~Global("C0AuraAerieKorganConflict","GLOBAL",1)~ THEN BC0AURA2 C0AuraAerieKorganConflict1
~*叹气* 好，她平静些了。~ [C0BLANK]
DO ~SetGlobal("C0AuraAerieKorganConflict","GLOBAL",2)~
== BC0AURA2 ~说真的。我都不知道该跟你怎么说，库尔甘。你就不能稍微和气一点？~
== BKORGAN ~别把这场可怜相的账算在我头上，丫头！她自己没骨头为自己站出来，那是她活该。还敢对<CHARNAME>提要求？呸！~
== BC0AURA2 ~这事发生全是因为你停不下来折腾她！要你别去惹她，就这么难吗？~
END
++ ~我同意奥拉。你不必喜欢艾黎，库尔甘，只是别再骚扰她。~ EXTERN BC0AURA2 C0AuraAerieKorganConflict2
++ ~库尔甘有道理。这队里没位置留给软弱怯懦的人。~ EXTERN BKORGAN C0AuraAerieKorganConflict3
++ ~我不掺和这个。~ EXTERN BC0AURA2 C0AuraAerieKorganConflict4

CHAIN BC0AURA2 C0AuraAerieKorganConflict2
~你看。<CHARNAME>站我这边。你至少听<PRO_HIMHER>的吧？~
== BKORGAN ~呸！你们这么惯着她，那软骨头丫头早晚被捂死。~
EXTERN BC0AURA2 C0AuraAerieKorganConflict5

CHAIN BKORGAN C0AuraAerieKorganConflict3
~哈！说得好，<CHARNAME>。她最好回去跟那些马戏团小鬼玩球，我们还能清净些。~
EXTERN BC0AURA2 C0AuraAerieKorganConflict5

CHAIN BC0AURA2 C0AuraAerieKorganConflict4
~好，行，你要这样就这样。可下次再出这种事，我想我拦不住艾黎永远走掉。~
== BKORGAN ~她走了倒干净。~
EXTERN BC0AURA2 C0AuraAerieKorganConflict5

CHAIN BC0AURA2 C0AuraAerieKorganConflict5
~*瞪眼*~
== BKORGAN ~哼！你认真起来眼神真凶。啊，随你吧，丫头。你想留着你那瘦巴巴的玩伴，老库尔甘就不再提了。可你最好叫她骨头硬一点，不然她在这趟旅途上待不久，记着我的话。~
== BC0AURA2 ~好，行。我希望我们不必再为这个吵。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieFriendship","GLOBAL",3)~ THEN BAERIE C0AuraAerie4
~奥拉，你有空吗？我需要人帮忙！~ [C0BLANK]
DO ~RealSetGlobalTimer("C0AuraAerieRestTalkTimer","GLOBAL",1800)
IncrementGlobal("C0AuraAerieFriendship","GLOBAL",1)~
== BC0AURA2 ~等等，让我……啊哈！好，你需要什么？我尽力帮。~
== BAERIE ~我一直在琢磨这些法术……我练习、研读，可感觉撞到死路上了。我想也许你能帮上忙。~
== BC0AURA2 ~当然，我尽力，可是……你知道，我不是真正的法师。你该比我懂得多吧？~
== BAERIE ~我只是想……抱歉，我也不确定我想什么。只是觉得问你很自然。你善于学习，又好说话。~
== BC0AURA2 ~哎，你现在让我脸红了……嘿嘿。~
== BAERIE ~有时候感觉像奎尔就在我身边……呃，不是说你老，或者……我只是说……嗯，你们都是侏儒……而且你对我跟他一样耐心。~
== BAERIE IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~你认识他有一阵子了，对吧？我想奎尔从没提过，可我加入后听过一点。你总该有几个故事可讲。~
== BC0AURA2 IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~嗯，我确实有，可是……奎尔现在跟我记忆里很不一样了。他以前是个挺有意思的家伙，你知道。~
== BAERIE IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~是吗？我很难想象……其实，我能看出一点。他到现在还会偶尔提他那颗杰出的脑子。*轻笑*~
== BAERIE ~谢谢你陪我，奥拉。有人能说话……让难事稍微好过一点。~
== BC0AURA2 ~我也喜欢跟你说话，艾黎……啊！我们完全忘了正题。你需要人帮你研习法术，对吧？~
== BAERIE ~哦，对了。是这几道……对，特别是那道……~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieFriendship","GLOBAL",4)~ THEN BC0AURA2 C0AuraAerie5
~*哼—哼—哼—哼—哼—哼*……~ [C0BLANK]
DO ~IncrementGlobal("C0AuraAerieFriendship","GLOBAL",1)~
== BAERIE ~你又在哼了……~
== BC0AURA2 ~哦！抱歉，我吵到你了吗？~
== BAERIE ~不，一点都没吵！其实还挺安神的。我只是觉得从没听过这样的……也许是兰坦的调子？~
== BC0AURA2 ~那个？不，不是……其实你不开口我都没察觉自己在哼……通常词就自己冒出来了。~
== BAERIE ~那调子……还有词？~
== BC0AURA2 ~哦，有！是我编的。不过我不觉得它多合韵律。我擅长机械，可不太擅长诗。~
== BAERIE ~你是说那是你自己编的？我没把你当乐师……倒也不是说那超出你的能力……~
== BC0AURA2 ~嘿嘿，不，我绝对不敢自称乐师。这只是帮我集中注意、记住学过的东西的办法。~
== BAERIE ~把知识变成一首歌？~
== BC0AURA2 ~正是。你不会想到，我以前很难专心看纸上的字。后来一位老师叫我把字句活起来。歌和节奏能帮上忙。当你把某样东西跟一种情绪联系起来，比如一首让你开心、让你发笑的歌……你就不会有记不住的问题。~
== BAERIE ~这想法真有趣。嗯，更准确说是学习的方法。现在想想，也许我也有自己的法子……~
== BC0AURA2 ~哦，听起来有故事。你何不讲给我听？~
== BAERIE ~也许下次吧。我们再站这儿聊下去，<CHARNAME>要恼了。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieFriendship","GLOBAL",5)~ THEN BAERIE C0AuraAerie5
~还想听我那傻乎乎的小故事吗，奥拉？~ [C0BLANK]
DO ~IncrementGlobal("C0AuraAerieFriendship","GLOBAL",1)~
== BC0AURA2 ~哦，当然。我肯定没那么傻。~
== BAERIE ~也许你不会这么觉得……不过真没那么精彩。那是我刚开始当贝尔凡·野径行者侍僧的时候……我知道，对侏儒来说这听着可笑。我，去学侏儒神祇的道。~ 
== BC0AURA2 ~不，一点都不可笑。再说我也不是真的……算了。你继续。~
== BAERIE ~我在学向贝尔凡祈求力量，起初很挣扎。我就是没法放下过去、放下我失去的……我知道这不对，可我觉得自己在不敬父母教我的艾尔德里·菲尼亚的教义。可是，后来……~
== BC0AURA2 ~……~
== BAERIE ~有一天，我在城外散步，在树下发现一只幼鸟。它一只翅膀断了，我没法就这么丢下它。然后……突然间，不知怎的，一切就……说得通了。我不再想着自己，因为我只想治好这可怜的小东西……而我做到了。~
== BAERIE ~我以为告诉奎尔叔叔这故事时他会笑我，可他高兴得不得了……他说下次我想向贝尔凡求助时，只要记得那一刻的感受……我就会得到回应。而这从没失灵过。~
== BAERIE ~这没有音乐那么有创意，可直到你让我去想，我才明白自己怎么就那么容易掌握了魔法。也许我若学别人的样子，还有办法继续长进。~
== BC0AURA2 ~也许你该试着自己编个调子？尤其你的嗓音那么好听……呃，我绝对想听一首。~
== BAERIE ~哦，我不觉得我有那种天分。可若有的话……我一定得让你听听……嘿嘿。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieFriendship","GLOBAL",6)~ THEN BAERIE C0AuraAerie6
~你不介意的话，奥拉……我能问你个问题吗？有点私密。甚至可以说挺傻的。~ [C0BLANK]
DO ~IncrementGlobal("C0AuraAerieFriendship","GLOBAL",1)~
== BC0AURA2 ~你问？艾黎。当然。我也保证不笑，只要你不想我笑。~
== BAERIE ~你也许真会笑，不过我不太介意。我只是想知道……你睡着时究竟梦什么？那些我们一起读书的时候，你靠在我肩上开始犯困，我开始听见你说梦话……这让我好奇。~
== BC0AURA2 ~我梦什么？嗯……从来都不是什么要紧的。跟眼前的事无关。通常是某个念头，或者过去……多数时候是快乐的事。~
== BAERIE ~哦。那听着很好……你看起来总是很安宁。~
== BC0AURA2 ~也不总这样。我也经历过黑暗的日子……可我已经把那些日子甩在身后了。~
== BAERIE ~那……那很好。我为你高兴。~
== BC0AURA2 ~你也做安宁的梦吗，艾黎？还是，它们……~
== BAERIE ~有时候……我常梦见自己又在飞。可我开始害怕这些念头。我怕它们会让我再一次拼命渴求我失去的东西。~
== BC0AURA2 ~……~
== BAERIE ~对不起。我不是想让气氛难受。~
== BC0AURA2 ~嘿，艾黎……~
== BAERIE ~嗯？~
== BC0AURA2 ~下次我们休息时……你愿意给我看你那些伤疤吗？还有……若有什么想告诉我的，我可以听。就我一个人。~
== BAERIE ~我……~
== BAERIE ~我愿意。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieFriendship","GLOBAL",7)~ THEN BAERIE C0AuraAerie7
~奥拉？有什么事吗？~ [C0BLANK]
DO ~SetGlobalTimer("C0AuraAerieFriendshipRestTimer","GLOBAL",THREE_DAYS)
IncrementGlobal("C0AuraAerieFriendship","GLOBAL",1)~
== BC0AURA2 ~嗯？哦，不！没有。你怎么会这么想？哈哈……~
== BAERIE ~只是……你近来不太像你自己。至少在我身边不是。平常你总是很乐意陪我、说说你在做什么。~
== BC0AURA2 ~嗯……~
== BAERIE ~你不是在躲我吧？若我做了什么让你不快，我道歉。~
== BC0AURA2 ~不——不！绝对不是，是我不好，什么都没说。其实，真相是我一直在做一样东西……为你做的。~
== BAERIE ~为——为我？~
== BC0AURA2 ~我想保住这个惊喜……它占了我全部心思，所以我真没别的话可聊。~
== BAERIE ~哦。你一直在为我做东西，我真的很感动……嗯，既然是惊喜，我大概该等它做好再问是什么，对吧？~
== BC0AURA2 ~我现在真不该说漏。不过我知道你完成后一定会很喜欢！我只希望它能成。让你等了，我不想让你失望。~
== BAERIE ~你现在真让我好奇了……我只希望你别为此累坏。你看着有点困。~
== BC0AURA2 ~*哈欠* 嘿嘿，我不知道你在说什么……~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieFriendship","GLOBAL",9)~ THEN BAERIE C0AuraAerie8
~还——还有哪儿疼吗？~ [C0BLANK]
DO ~IncrementGlobal("C0AuraAerieFriendship","GLOBAL",1)
SetGabber(Player1)~
== BC0AURA2 ~不……不——*哎哟*！~
== BAERIE ~*叹气*~
END
  ++ ~怎么了？~ EXTERN BC0AURA2 C0AuraAerie8-1
  ++ ~（什么也不说）~ EXTERN BAERIE C0AuraAerie8-2

CHAIN BC0AURA2 C0AuraAerie8-1
~我……唔……~
= ~我想给艾黎做个惊喜礼物。它……没成。~
EXTERN BAERIE C0AuraAerie8-2

CHAIN BAERIE C0AuraAerie8-2
~我都不知道该说什么……你告诉我你造了什么时，那对金属翅膀……我想你管它叫“原型”？起初我以为自己在做梦。然后我看到出了什么事，心几乎停了。~
== BC0AURA2 ~我……对不起。我高估了结构的稳定性，然后……我本想等它终于能用了再给你惊喜。结果我拿得出手的，只有几根断骨和一堆废铁。~
== BAERIE ~你差点把我吓死。你想为我做这种事，我很感动，可你知道你若伤得更重、甚至更糟，我会多难受吗？~
== BC0AURA2 ~*叹气* 我完全没往那想。我满脑子都是怎么才能让你开心……~
== BAERIE ~哦……~
== BC0AURA2 ~哎哟！艾黎，我还在恢复，你抱这么紧会疼……~
== BAERIE ~对——对不起。可这是我的错……是因为我一直让你听我的感受。若我没让你以为我还在为翅膀受苦，那你……~
== BC0AURA2 ~不。不！我做这个不是出于怜悯。我只是……想作为一个朋友为你做点什么。就这样。~
== BAERIE ~我知道。可是，奥拉……尽管你今天没能给我造出一对新翅膀……光是知道你会去试，就已经让我高兴了。~
== BC0AURA2 ~真的？那我这一跤摔得也值了……嘿嘿。~
== BAERIE ~别笑。你吓掉我半条命，还欠我一顿骂，你知道吗？~
== BC0AURA2 ~好吧……不过，呃，等我全身上下不疼了再骂。到时候我该挨的骂全接着。~
== BAERIE ~哦，你这傻东西！我不是认真的。就帮个忙，好好休息。早上我再来看你。~
DO ~ClearAllActions()
StartCutSceneMode()
FadeToColor([0.0],0)
Wait(2)
RestPartyEx(0,0,FALSE)
FadeToColor([0.0],0)
Wait(3)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()~ EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieFriendship","GLOBAL",10)~ THEN BC0AURA2 C0AuraAerie9
~艾黎？~ [C0BLANK]
DO ~IncrementGlobal("C0AuraAerieFriendship","GLOBAL",1)~
== BAERIE ~我在。你身体感觉怎么样，奥拉？~
== BC0AURA2 ~全好了，多亏你这么照顾我。其实，我想给你一样礼物。这次是件像样的。~
== BAERIE ~那是……一只手镯？真美。~
== BC0AURA2 ~我用那对翅膀的金属做的。我……不太擅长精细的金属活，所以它有点朴素。可我想你也许还是会喜欢。~
== BAERIE ~我——我喜欢。这是件可爱的礼物……~
== BC0AURA2 ~嘿嘿……~
== BC0AURA2 ~你知道吗，艾黎……关于我那个失败的小工程……尽管我很久没犯这么大的计算错误，它也提醒了我，我还没真正掌握所有该懂的东西。我还得回到基础上去。~
== BAERIE ~我觉得你对自己太苛刻了。翅膀也许没成……可你做到了那么多别人做不到的事。就算现在，我也没法想象你会犯错。~
== BC0AURA2 ~真的？你这么想我很高兴，艾黎，可是……来，我要你看这个。~
== BAERIE ~你腋下有一道烫伤？是最近弄的吗，我可以——~
== BC0AURA2 ~不，别担心。一直都在。我想说它是某次了不起的尝试留下的，可……其实是更傻的事。我小时候做糖时烫的。~
== BAERIE ~就——就这样？~
== BC0AURA2 ~听着挺幼稚，对吧？这疤真没什么戏剧性。我长大的安科里尔有家糖果店，我会说那是全费伦最好的。我太爱他们的糖了，决定在那儿当一个月学徒，自己学这行。~
== BC0AURA2 ~一切看起来都那么简单，尤其跟我已经学过的东西比。可师傅们仍坚持要我慢慢、耐心地做。那时我更冲动，太急着长进，就开始马虎，觉得一切都那么容易……然后我不小心把滚烫的糖浆泼到了皮肤上。~
== BAERIE ~哦，不……那一定很疼。~
== BC0AURA2 ~疼得我哭个不停。更因为我知道，只要听人劝就不会发生。我留着这烫伤疤，提醒自己永远别把任何事当作理所当然……连容易的事也是。所以我开始做那只手镯时……每一步都尽可能认真。哪怕只是件简单的东西。~
== BAERIE ~我一定好好珍藏。还有，一件事……~
== BC0AURA2 ~嗯？~
== BAERIE ~我开始明白了……以我现在的样子，我得到了找到从前也许永远找不到的东西的机会。谢谢你帮我明白这一点。~
== BC0AURA2 ~就像一个不管你怎样都在意你快乐的朋友？~
== BAERIE ~正是。~
DO ~GiveItemCreate("c0aaeri","AERIE",0,0,0)~ EXIT

// Anomen

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
Global("C0AuraAnomen1","GLOBAL",0)~ THEN BANOMEN C0AuraAnomen1
~你若跟在我们后面，侏儒，我指望你能拿出点有用的本事。我对你们这类人惯常的把戏没多少耐心。~ [C0BLANK]
DO ~SetGlobal("C0AuraAnomen1","GLOBAL",1)~
== BC0AURA2 ~哎，真没礼貌！我还没做什么冒犯你的事吧？~
== BANOMEN ~我在农民里见过太多你这类人，至今没见一个配得上他占的那块地。我不会让你白占我们的善意、什么都不给。~ 
== BANOMEN ~你若自认是个例外，就证明自己。~
== BC0AURA2 ~证明我——<CHARNAME>才是这儿的队长，所以我要向<PRO_HIMHER>证明自己，多谢了！你怎么不证明你自己，嗯？~
== BANOMEN ~那大可不必。我是极负声望的骑士团的尊贵成员，出身贵族，与你不同。我有什么要证明的？~
== BC0AURA2 ~呸。你是个大混蛋，你知道吗？~
EXIT

CHAIN
IF ~InParty("Anomen")
Range("Anomen",15)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",1)
Global("AnomenIsNotKnight","GLOBAL",0)
Global("C0AuraAnomen1","GLOBAL",1)~ THEN BC0AURA2 C0AuraAnomen2
~阿诺门？我能跟你说句话吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraAnomen1","GLOBAL",2)~
== BANOMEN ~当然。什么事？~
== BC0AURA2 ~只是想说，呃……该怎么说呢？恭喜你成了骑士。我不太懂那究竟意味着什么，可对你显然很重要。大家都为你高兴。~
== BANOMEN ~那……真是好意。我谢谢你，奥拉。这确实是我一生渴望的时刻。~
== BC0AURA2 ~我知道这不一样，可毕业对我也是个难忘的时刻。我希望这一切都如你所愿。~
== BANOMEN ~你的祝福我很感激。还有……请原谅我先前的话。我知道我说得很糟。那些话粗鲁，我本该更好。~
== BC0AURA2 ~哦，那个？我几乎都忘了。可你提醒了我。我也抱歉。我不该叫你“大混蛋”。也不该冲你吐舌头。~
== BANOMEN ~哈。嗯，也许我确实该被叫作“大混蛋”。我要把这称号挂在脑子深处，提醒自己别成为那样。~
== BC0AURA2 ~……哈哈。~
== BANOMEN ~我当然是在说笑。可认真说，这是个好教训，不是吗？~
EXIT

CHAIN
IF ~InParty("Anomen")
Range("Anomen",15)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",1)
Global("AnomenIsNotKnight","GLOBAL",0)
Global("C0AuraAnomen2","GLOBAL",0)~ THEN BANOMEN C0AuraAnomen3
~若可以，奥拉……我想道歉。~ [C0BLANK]
DO ~SetGlobal("C0AuraAnomen2","GLOBAL",1)~
== BC0AURA2 ~阿诺门，你已经道过了。如今都过去了，好吗？~
== BANOMEN ~我觉得自己还不够真诚。若你想要的不是道歉，那就让我表达我的敬佩。~
== BC0AURA2 ~我？我真没那么了不起。你才是实现了人生目标的人，阿诺门。我觉得那才值得敬佩。~
== BANOMEN ~是的，我……确实实现了梦想。可不知怎的，我仍不觉得完整。也许是因为我意识到自己真正懂的太少。身为求知识的人，也许你愿意听我说，若有可能给点建议……~
== BC0AURA2 ~当然。~
== BANOMEN ~我很感激。那我就把想法倒给你。不可否认，在受封骑士之前，我紧抓着能为自己辩解的那点优越感。像个自私的孩子，我除了自己，很少在意别人的动机。~
== BANOMEN ~可是……也许是因为我现在感到的成就感，也许是因为我放下了些过去的包袱，我变得更能察觉。我也看见了我曾视为低人一等者的尽心。~
== BANOMEN ~我见过你长时间埋头做你的手艺，好让我们的战斗以决定性的胜利结束。我很清楚那不会给你快乐，因为你厌恶这一切在我看来自然的流血。可你仍尽心去做。这里面有我能学的东西。~
== BC0AURA2 ~我懂你，阿诺门。还有，嗯……我可能对当骑士一窍不通，可你想听我的建议吗？~
== BANOMEN ~当然。~
== BC0AURA2 ~我们都会时不时摔一跤。我们越逼自己，不管目标是什么，就越容易发生。有时候正是这样才让人重新留意脚下。可这没什么错。只需要自己爬起来，继续试。~
== BC0AURA2 ~若你自己做不到，那……总有人能帮你。只要你让他们帮。所以你得把朋友留在身边，你知道吗？~
== BANOMEN ~我明白了。是的，那……很有道理。可是……你已经把我当朋友了？尽管我有那么多明显的缺点？~
== BC0AURA2 ~学习需要时间。我看起来也许不像，可我比你大不少，你知道。我自己也经历过该长大的那段。所以打起精神，好吗？我知道你会想通的。你已经在正确的路上了。~
EXIT

// Cernd

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
AreaType(FOREST)
Global("C0AuraCernd2","GLOBAL",0)~ THEN BCERND C0AuraCernd2
~你在这儿异常警觉，奥拉，像只竖着耳朵听掠食者逼近的兔子。你到底怎么了？~ [C0BLANK]
DO ~SetGlobal("C0AuraCernd2","GLOBAL",1)~
== BC0AURA2 ~在这儿我有时真觉得自己像只兔子，瑟恩德。事实是……我怕树后可能藏着只熊，等着扑向我！~
== BCERND ~这恐惧也许合理，可是……只对熊这样，已经超出自然本能了。你对狼、豹、蜘蛛没有这种反应？~
== BC0AURA2 ~有时那些也吓我，可它们不追我我就不怕。可我只听到一点熊的低吼，心就开始猛跳。~
== BCERND ~这表明某种创伤触发……你若不怕面对恐惧的某些方面，我也许能帮你应对。~
== BC0AURA2 ~你——你要逼我瞪着熊看？不，不，一千个不！~
== BCERND ~不是那样。不会有真的熊牵涉其中，我向你保证。~
== BC0AURA2 ~没有熊？你保证？那……好吧。我倒希望能漫步森林，不用一直竖着耳朵听呼噜声……~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraCernd2","GLOBAL",1)~ THEN BCERND C0AuraCernd3
~记住，别睁眼。保持平静，呼吸。然后听。~ [C0BLANK]
DO ~SetGlobal("C0AuraCernd2","GLOBAL",2)~
== BC0AURA2 ~保持平静，呼吸……保持平静，呼吸……呃！不，做不到。~
== BCERND ~你的注意力太容易被打断。光是熊的呼吸声就让你这么难受？~
== BC0AURA2 ~抱歉，瑟恩德。我一听到那低吼和鼻息，就只觉得一阵寒意，浑身汗毛都竖起来。~
== BCERND ~这创伤显然已扎进你心灵的根里。是什么事造成的，奥拉？~
== BC0AURA2 ~我……我真记不太清了，瑟恩德。一切发生得太快……一瞬间我听到吼声，然后看见它在我身后，吓得动不了。我想不久后我就昏过去了。~
== BCERND ~我明白了。那之后你见到熊还有这样极端的反应吗？~
== BC0AURA2 ~不——不再了。如今我一般还能清醒到往反方向跑。~
== BCERND ~嗯……某些方面算是进步，我想，可这样你面对恐惧不会有进展。我得换个方式处理。~
EXIT

// Dorn

CHAIN
IF ~InParty("Dorn")
Range("Dorn",15)
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraDorn1","GLOBAL",0)~ THEN BC0AURA2 C0AuraDorn1
~多恩，你有没有想过，呃……稍微，我不知道……和气一点？~ [C0BLANK]
DO ~SetGlobal("C0AuraDorn1","GLOBAL",1)~
== BDORN ~我该把时间浪费在把敌人串上刀尖之前、先跟他们讲客套话上吗？~
== BC0AURA2 ~不，我是说对……哦，算了。我不确定你懂这其中的区别。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraDorn2","GLOBAL",0)~ THEN BDORN C0AuraDorn3
~你软弱得可怜，小丫头，连自己的命运都几乎握不住。不过我肯定你早知道了。我更厌恶<CHARNAME>那纵容的善心，容你留下。~ [C0BLANK]
DO ~SetGlobal("C0AuraDorn2","GLOBAL",1)~
== BC0AURA2 ~别骂<CHARNAME>，多恩。你说我什么我都不介意，可这不是<PRO_HISHER>的错。~
== BDORN ~哦？看来你毕竟还有为某样东西站出来的能力。只是不为你自己。~
== BC0AURA2 ~这叫在乎别人。你哪天也可以试试。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("OHD_urgothoz_patron","GLOBAL",0)
Global("OHD_azothet_patron","GLOBAL",0)
Global("C0AuraDorn3","GLOBAL",0)~ THEN BDORN C0AuraDorn4
~你为什么一直盯着我看，你这温顺的小矮子？~ [C0BLANK]
DO ~SetGlobal("C0AuraDorn3","GLOBAL",1)~
== BC0AURA2 ~我——我不是故意的。我只是不知道怎么说。你……嗯，你自由了。~
== BDORN ~然后？~
== BC0AURA2 ~然后，嗯……既然你摆脱了邪恶的束缚，你不该……改变吗？~
== BDORN ~我*已经*变了，愚蠢的丫头。~
== BC0AURA2 ~我不是说你的效忠。我是说……变得更好。~
== BDORN ~我有什么理由做这样的改变？杀掉我以前的“主人”，我已夺回我自己。如今我可以满足*我*的欲望，而不是别人的。~
== BC0AURA2 ~那你就根本没变……从来不是恶魔在控制你。一直是你自己。~
== BDORN ~你若曾以为不是，那就太天真了。~
EXIT

// Edwin

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraEdwinBG1Banter","GLOBAL",0)
Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN BEDWIN C0AuraEdwinBG1
~我指望你对奥术的研习自我们上次见面后大有长进，丫头？（毕竟有我的教导，那只是我最低的期待。）~ [C0BLANK]
DO ~SetGlobal("C0AuraEdwinBG1Banter","GLOBAL",1)~
== BC0AURA2 ~哦，有。我一直在梳理各魔法学派之间的种种联系，编目我研究过的各种符文魔法形式，甚至写了一篇分析，论动荡之年前后魔网的差异。~
== BEDWIN ~嗯，好，很好。我指望你哪天写出一篇值得一提的魔法论文时，会给你最尊贵的导师适当的署名。（我也不会反对分得那份出版版税……）~
== BC0AURA2 IF ~!Class(Myself,MAGE_ALL) !Class(Myself,BARD_ALL)~ THEN ~我想我很快甚至能自己施法了！然后我就会超过你，你等着！~
== BC0AURA2 IF ~OR(2) Class(Myself,MAGE_ALL) Class(Myself,BARD_ALL)~ THEN ~我想我有一天甚至能成为比你更好的法师！~
== BEDWIN ~别自负，丫头。你脑袋若长得太大，会把你这小身子压翻。~
== BC0AURA2 ~嘿嘿……开玩笑的。~
EXIT

CHAIN
IF ~InParty("Edwin")
Range("Edwin",15)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraEdwin1","GLOBAL",0)~ THEN BC0AURA2 C0AuraEdwin1
~埃德温，你有空吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraEdwin1","GLOBAL",1)~
== BEDWIN ~我能匀出来的极少。你若想吸引我注意，最好值得我花时间。~
== BC0AURA2 ~嗯，我希望你能帮我看看我一直在研究的这道法术的一些细节……我想我从没见过它，它可能非常稀有……也许还很危险。~
== BEDWIN ~（是吗……？）嗯……我能做，丫头，可我这宝贵的知识有价钱。我要分享这书里记载的知识，当然……还要你藏着的那些外国点心。~
== BC0AURA2 ~当然。我本来也没打算把知识据为己有。不过那些蛋糕……呃，你也许来晚了一点。可你若想要，我以后做点好东西当谢礼。~
== BEDWIN ~成交。现在把书递过来。对，这看着够简单……没什么超出我这等法师的。可是……等等——~
== BEDWIN ~这是……这根本不是强大的法术！它……嗯，也许古老，也确实稀有，可是，可是……这不过是让衣服自洁的附魔！~
== BC0AURA2 ~哦！我说对了。起初我觉得它太朴素，可我在旁边记了个备注以防万一。谢谢，埃德温！我今天之内就让人替你抄好。~
== BEDWIN ~呸！这种微不足道的法术对我没用。（其实，再想想，它倒很方便……）不过，既然我指望你守约，丫头，我就……把这当作临时的补偿。行，可以。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraEdwin1","GLOBAL",1)~ THEN BEDWIN C0AuraEdwin1
~你的心思太容易从嘴里漏出来，丫头。有志的法师绝不能让心思这么轻易给人，免得被人拿来对付自己。~ [C0BLANK]
DO ~SetGlobal("C0AuraEdwin1","GLOBAL",2)~
== BC0AURA2 ~嗯？可交流知识正是我们推进理解的方式，埃德温。若把所有想法都闷着，我们怎能指望长进？~
== BEDWIN ~重视知识的人，并不都想推进除自己以外的人，丫头。心怀歹意的人，一旦从你身上榨尽他们认为的价值，也许就会让你永远闭嘴。~
== BC0AURA2 ~这挺残忍，埃德温，可我无法否认世上有可怕的人只那么想。不过不是你，对吧？~
== BEDWIN ~我？嗯……嗯……（该死。我在干什么，帮这个天真的孩子？我是不是变得多愁善感了……？）~
== BC0AURA2 ~埃德温？~
== BEDWIN ~呃……不，当然不是。我绝对可以信任，这一点我保证。（只要你有用……）~
EXIT

CHAIN
IF ~InParty("Edwin")
Range("Edwin",15)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Gender("Edwin",FEMALE)
Global("C0AuraEdwina1","GLOBAL",0)~ THEN BC0AURA2 C0AuraEdwina1
~呃，你还好吗，埃德温……娜？~ [C0BLANK]
DO ~SetGlobal("C0AuraEdwina1","GLOBAL",1)~
== BEDWIN ~什么？你为什么在我名字上加重音，丫头？！你是想往我的羞辱上撒盐吗？~
== BC0AURA2 ~不！我只是想问你是否……呃，你感觉还好吗？~
== BEDWIN ~还好？！我当然不好！我被利用、被施法，还被彻底……羞辱性地阉割了！你几辈子都不会懂这份痛苦！~
== BC0AURA2 ~我肯定没那么……嗯，也许真有那么糟。若有什么我能帮忙的……~
== BEDWIN ~帮忙？！这该死的耐色瑞尔魔法躲过了我每一次试图辨明其本性的努力，更别说解除它的效果了。你那点可怜的奥术知识，就像想用一根蜡烛驱散黑夜！~
== BC0AURA2 ~我知道，我知道。这不是道容易破的诅咒。所以我才一直在查一切跟耐色瑞尔附魔有关的东西，看有没有相关的。以防以前有人也碰上过这种事。~
== BEDWIN ~……你——你真查了？~
== BC0AURA2 ~至今没进展，可我会继续查。至少，若能有什么让你在这事修好之前舒服一点的办法，告诉我。我针线活也不差，你的袍子若需要改，我可以帮忙！~
== BEDWIN ~那……呃，我想我该说……*咳* 我深表感激。（该死！我在变软……这诅咒的折磨影响到我的心智了吗？我必须立即恢复本来的样子！）~
== BC0AURA2 ~抬起头，埃德温！你会熬过去的。至少，我希望你会。~
EXIT

INTERJECT BEDWIN 41 C0AuraMinscEdwinConflict
== BC0AURA2 IF ~IsValidForPartyDialog("C0Aura")~ THEN ~埃德温！你不能说这么可怕的话。真羞耻！~
== BEDWIN ~我说的只是我所见无云遮掩的确切真相，不多不少。~
== BC0AURA2 ~哦，住口！~
== BMINSC ~奥拉，这巫师走在侮辱与……不可原谅、甚至更糟的侮辱之间！狄娜希尔的荣誉要求我用靴子的分量教他尊重的含义！~
== BC0AURA2 ~明斯克，冷静，埃德温不是那个意思……大概……你不用——~
== BEDWIN ~哦，我不敢苟同。~
== BC0AURA2 ~请你就别说话了……~
== BMINSC ~嗄……明斯克花了些时间冷静、呼吸、思考……红巫师的毒舌该受正义炽热、愤怒的钳子，可该有时有地……狄娜希尔会这么说……明斯克觉得……~
== BC0AURA2 ~对，明斯克……还有埃德温……我想请你道歉，这要求过分了吗？~
== BEDWIN ~呸！没门。可你这不请自来的插嘴让这场辩论没了趣味，丫头。我就饶了这没脑子的家伙，免他继续丢脸……这次。~
EXIT

// Haer'Dalis

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraHaerDalis1","GLOBAL",0)~ THEN BHAERDA C0AuraHaerDalis1
~有个回忆刚闪过我脑海……我见过你一次，我的小朱雀，就在桥区不远，对吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraHaerDalis1","GLOBAL",1)~
== BC0AURA2 ~嗯，其实……也许吧。你记得我那时在做什么吗？~
== BHAERDA ~当然记得……照我记的，你在集市摊子中间，坐在一位年轻小姐对面，替她给心上人写情书。~
== BC0AURA2 ~哦，对。我在那儿租了个摊子，卖工坊里的一些多余零件……可多数时候，我替人写信的活儿更多。~
== BHAERDA ~嗯，在这座满是文盲蠢货的城里，这确实是值钱的服务，也吸引那些消息正经与……不那么正经的人。~
== BHAERDA ~你还记得这封吗，奥拉？“我最亲爱的艾尔薇拉，我多么渴望你那炽热的触碰——”~
== BC0AURA2 ~呃，停下，停下！别再提那封。我想我写的时候整张脸红透……~
== BC0AURA2 ~等等，你怎么知道那封？~
== BHAERDA ~*笑* 那真是篇最香艳的作品。人很难忘掉。其实我到今天还留着……你看。你的字迹极其精美。~
== BC0AURA2 ~什么？那……你就是那个叫我写那封信的人？可是……可是……你样子和声音完全不同！~
== BHAERDA ~演员必须对自己的容貌与嗓音有完全的掌控，奥拉。这在舞台之外也一样。~
== BC0AURA2 ~哦，我真不敢信你。要早知道你是谁，我还会要你的签名！~
== BHAERDA ~现在我很乐意写一个，答谢你给我的这番有趣的礼物。这样能让你满意吗？~
== BC0AURA2 ~是——是的！只求你以后别再叫我给你写那种信了……*脸红*~
EXIT

CHAIN
IF ~InParty("HaerDalis")
Range("HaerDalis",15)
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraHaerDalis2","GLOBAL",0)~ THEN BC0AURA2 C0AuraHaerDalis2
~我，呃……我提过我看过几次印记剧团的戏吗，海尔达利？我是个大戏迷。~ [C0BLANK]
DO ~SetGlobal("C0AuraHaerDalis2","GLOBAL",1)~
== BHAERDA ~嗯，我听说了。其中有你偏爱的吗，小朱雀？~
== BC0AURA2 ~嗯，这问题好难……我喜欢《天鹅之歌》……《魔法拼图》的故事也很妙……可《在死亡的厅堂》让我哭了……唉，我答不上来！都太好了。~
== BHAERDA ~我对最后那一出有种奇怪的偏爱……听说它是根据现实中的某个故事改编的。~
== BC0AURA2 ~你们所有的戏都是雷利斯女士写的吗？~
== BHAERDA ~剧团也研习别的艺人的作品，可我们自己的故事都是雷利斯一人写的。啊，除了一出……《哀悼的双钟》。那剧本是在下写的。~
== BC0AURA2 ~那出是你写的？它很美……可我几乎看不下去结局。太悲伤了……你怎么能让里昂和罗莎受那样的苦，然后就直接……让他们死？~
== BHAERDA ~我专攻悲剧题材，奥拉。不过……这对你也许奇怪，可我相信对这对恋人来说，那结局最终是令人满意的。~
== BC0AURA2 ~怎么会？他们的家人抛弃了他们，同伴被杀，里昂的兄弟背叛了他……最后他们一无所有，彻底孤单……~
== BHAERDA ~正是。可这就是逃避湮灭之必然所要付出的代价。而在他们最后的时刻，终于摆脱了一切把他们锁在存在中的恐惧、痛苦与悲伤，终于在那一刻甘心放手……“里昂与罗莎紧紧相拥，终于……哪怕只有一瞬……懂得了真正、未受玷污的喜悦。”~
== BHAERDA ~他们本可以活下去，继续战斗、争取某种持久幸福的机会……也许他们本会成功。可一路走来，他们只会知道更多的痛苦与绝望，而湮灭终究还是会收走他们。我相信，终结是我能赐予他们最大的慈悲。~
== BC0AURA2 ~这……我想说得通。可想想还是难受……~
== BHAERDA ~也该如此。可别怕，我的小朱雀。痛苦跟喜悦一样短暂，所以它也会随时间淡去。~
EXIT

CHAIN
IF ~InParty("HaerDalis")
Range("HaerDalis",15)
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraHaerDalis3","GLOBAL",0)~ THEN BC0AURA2 C0AuraHaerDalis3
~哼—哼—哼—哼……~ [C0BLANK]
DO ~SetGlobal("C0AuraHaerDalis3","GLOBAL",1)~
== BC0AURA2 ~“哦，我多么渴望点心与甜食
渴望那一盘盘点心糖果，
焦糖、巧克、果酱与奶油
把我的心思都填满最甜美的梦……”~
== BHAERDA ~哎，我们小朱雀的甜牙似乎把她逼得唱起来了！也许她饿了，我的渡鸦。我们要停下来喝茶吗？~
== BC0AURA2 ~海——海——海尔达利！你不该偷听的！哦，这太难堪了！~
== BHAERDA ~哦，我并无意粗鲁地闯进你那可爱的小调，可偏偏我有这意外的福气。谁会想到，一想到甜食，你就能这么有自信地唱？~
== BC0AURA2 ~不——不！不，不，不，不是……嗯，也许……~
== BHAERDA ~也许，若我请你吃一盘甜点糖果，能引出更多旋律？苹果挞、蜜饯无花果、蓝莓派？还是你更喜欢奶油糖果、闪电泡芙、小蛋糕？~
== BC0AURA2 ~嗯——嗯嗯嗯……好饿……可又好难堪……~
== BHAERDA ~啊，朱雀的嘴都因期待而流口水了。我想我暂且不再逗你，留到我们将来的晚宴。哈哈哈……~
EXIT

// Hexxat

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraHexxat1","GLOBAL",0)~ THEN BHEXXAT C0AuraHexxat1
~奥拉。~ [C0BLANK]
DO ~SetGlobal("C0AuraHexxat1","GLOBAL",1)~
== BC0AURA2 ~是——是？~
== BHEXXAT ~你不必每次我开口就缩一下。我不会伤你。~
== BC0AURA2 ~我，我知道，我只是……~
== BHEXXAT ~怕我？~
== BC0AURA2 ~不——不。我……呃，对不起。~
== BHEXXAT ~你不用道歉。~
== BC0AURA2 ~对——对不起……~
== BHEXXAT ~停下。~
== BC0AURA2 ~哦，呃……对。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraHexxat1","GLOBAL",1)~ THEN BHEXXAT C0AuraHexxat2
~我能问你件事吗，奥拉？~ [C0BLANK]
DO ~SetGlobal("C0AuraHexxat1","GLOBAL",2)~
== BC0AURA2 ~不——不……好吧。什么事？~
== BHEXXAT ~你相信只要你躲我够久，我就会走开吗？~
== BC0AURA2 ~什——不！不，当然不是！~
== BHEXXAT ~你爱怎么想我就怎么想，奥拉。~
== BHEXXAT ~可这句忠告免费送你……你不擅长说谎。~
== BC0AURA2 ~我——我知道。我没在试。~
== BHEXXAT ~你刚证明了我说得对。~
EXIT

// Imoen

CHAIN
IF ~InParty("Imoen2")
Range("Imoen2",15)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraImoen1","GLOBAL",0)
Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN BC0AURA2 C0AuraImoenBG1
~嘿，爱蒙。~ [C0BLANK]
DO ~SetGlobal("C0AuraImoen1","GLOBAL",1)~
== BIMOEN2 ~有阵子没见了，对吧？~
== BC0AURA2 ~嘿嘿……是啊……~
== BC0AURA2 ~你过得……不，我不该问。我知道那很可怕。我只是太高兴你回来了。就算……~
== BIMOEN2 ~……~
== BC0AURA2 ~……~
== BC0AURA2 ~我，呃……喜欢你头发的样子。~
== BIMOEN2 ~唉，谢谢。很适合我，对吧？~
== BC0AURA2 ~嘿嘿，嗯。很……“你”。~
== BIMOEN2 ~跟你说过会好看。~
== BC0AURA2 ~……我想你了，你知道？~
== BIMOEN2 ~我也想你了。特别是这个。过来……*抱紧*~
== BC0AURA2 ~哎哟！疼疼疼，喘不过气……放开，放开！~
== BIMOEN2 ~不。逗你太好玩了。而且你得补偿你缺席的所有时间。~
== BC0AURA2 ~*叹气* 好，好……只是别抱太紧，好吗？我要是窒息死了，我们就没多少时间在一起了。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraRomanceActive","GLOBAL",2)
Global("C0AuraImoenPCRom","GLOBAL",0)~ THEN BIMOEN2 C0AuraImoenPCRom
~那么……你*喜欢*我小妹，嗯？~ [C0BLANK]
DO ~SetGlobal("C0AuraImoenPCRom","GLOBAL",1)~
== BC0AURA2 ~什——什么？“小妹”？~
== BIMOEN2 ~你知道的。<CHARNAME>。~
== BC0AURA2 ~（……她不是姐姐吗？）*咳*……嗯，你为什么现在提这个？~
== BIMOEN2 ~哦，没什么理由。只是想提一句，看你们两个真可爱。~
== BC0AURA2 ~哦。那我想这算是你认可了。~
== BIMOEN2 ~当然。只要能让<CHARNAME>开心。要是换了别人，我也许会说两句，可……嗯，你运气好，我喜欢你。嘿。~
== BC0AURA2 ~啧，你又逗我了……~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraImoenBombMaker","GLOBAL",0)~ THEN BIMOEN2 C0AuraImoenBombMaker
~嘿，奥拉？我能请你帮个忙吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraImoenBombMaker","GLOBAL",1)~
== BC0AURA2 ~嗯，说吧。~
== BIMOEN2 ~谢谢……我刚才在想爱瑞尼库斯和兜帽法师，想我怎么那么容易被抓，明明<CHARNAME>就在我身边，我却什么都做不了……~
== BC0AURA2 ~哦……你想把这事说出来散散心吗？~
== BIMOEN2 ~不。突然把我的事塞给你不对。我只是……我也不知道，憋屈。我本该是个受过训练的法师，你知道？可我们碰到的法师都那么强，相比之下我觉得自己好无力。~
== BC0AURA2 ~你不用那样想。你对我们无比宝贵，爱蒙。我相信<CHARNAME>也会同意。~
== BIMOEN2 ~嗯，也许吧。不过我希望能做点什么，给那些自以为是的大法师一点颜色。所以我在想……你能造点什么让我占他们上风吗？~
== BC0AURA2 ~让局势拉平的东西，嗯？我不确定……其实，我之前在做一样东西，可我需要你帮忙才能完成。它也许正是你要找的。~
== BIMOEN2 ~真的？你要我做什么？~
== BC0AURA2 ~嗯……你炼金手艺怎么样？~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("C0ACUT6",FALSE)~ EXIT

CHAIN
IF ~InParty("Imoen2")
Range("Imoen2",15)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraImoenBombMaker","GLOBAL",1)~ THEN BC0AURA2 C0AuraImoenBombMaker2
~看？很简单。其实你大概能自己做。跟为法术收集材料没两样。照我们手上的资源，我说你一天能做三个。~ [C0BLANK]
DO ~SetGlobal("C0AuraImoenBombMaker","GLOBAL",2)~
== BIMOEN2 ~那……我把这些都混进罐子，往法师身上一扔，他们的法术就全噗地没了？~
== BC0AURA2 ~嗯。至少那是最好的情况。可就算不是最高效力，炸弹留下的残渣也会让他们很难聚起所需的魔法能量。~
== BIMOEN2 ~这。太。妙了。你是天才。可感觉有点像作弊……~
== BC0AURA2 ~确实。我自己不会用。可你不也是个鬼祟的贼吗？你什么时候在乎过公平？~
== BIMOEN2 ~说得对。~
== BIMOEN2 ~……~
== BC0AURA2 ~爱蒙？怎么了？~
== BIMOEN2 ~嘿。嘿嘿嘿嘿……~
== BC0AURA2 ~……？~
== BIMOEN2 ~小心了，想挑战伟大法师爱蒙的对手们！手持这了不起的武器，我要击碎你们无力的魔法！我再也不会被打败！哇哈哈哈！~
== BC0AURA2 ~哇。呃，希望我把配方给你没铸成大错……至少你不再那么阴沉了。任务完成，我想。~
DO ~ActionOverride("IMOEN2",AddSpecialAbility("C0AUIMB"))~ EXIT

// Jaheira

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraJaheiraBG1Talk1","GLOBAL",0)~ THEN BJAHEIR C0AuraJaheiraBG1Talk1
~见你安好真好，小丫头。你给自己招来的那些麻烦，让我想分手之后你怎么样了。~ [C0BLANK]
DO ~SetGlobal("C0AuraJaheiraBG1Talk1","GLOBAL",1)~
== BC0AURA2 ~贾希拉！你逗我，刚重逢就这么逗我？哈哈……不过，知道你在意真好。倒也不是你曾掩饰过。~
== BJAHEIR ~我当然在意。你觉得我的方式有错吗？~
== BC0AURA2 ~不，当然没有！我很高兴，真的。高兴再见到你。可是……我希望能再见到卡立德。~
== BJAHEIR ~奥拉……~
== BC0AURA2 ~卡立德是个极好的朋友。知道他不在了让人难受……对不起。对你一定更难。我想他。~
== BJAHEIR ~别说了，求你。我知道你是好意。可我不想听，不是现在。~
== BC0AURA2 ~啊……当然。对不起。~
== BJAHEIR ~别道歉。不是你的错。该负责的人到时候会付代价。~
EXIT

CHAIN
IF ~InParty("Jaheira")
Range("Jaheira",15)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraJaheiraBG1Talk2","GLOBAL",0)~ THEN BC0AURA2 C0AuraJaheiraBG1Talk2
~贾希拉？你有空吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraJaheiraBG1Talk2","GLOBAL",1)~
== BJAHEIR ~有，奥拉。什么事？~
== BC0AURA2 ~关于卡立德……~
== BJAHEIR ~别为我操心，丫头。没必要。~
== BC0AURA2 ~我知道你在以自己的方式哀悼他。我不想让你以为我在可怜你。可我是以朋友的身份说……你若需要什么，任何事……就说。~
== BJAHEIR ~我明白，我接受。若我真需要接受这份提议，我会告诉你。可不是现在。~
== BJAHEIR ~不过……谢谢你。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraJaheira1","GLOBAL",0)~ THEN BJAHEIR C0AuraJaheira1
~*叹气* 抬眼，头摆正，多留意周围，奥拉。你若再走神一点，只会一头撞上下一个威胁才发觉。~ [C0BLANK]
DO ~SetGlobal("C0AuraJaheira1","GLOBAL",1)~
== BC0AURA2 ~呀！是——是的，夫人！~
== BJAHEIR ~还有，别再来那套“夫人”。我不是你母亲，也没那么老。~
== BC0AURA2 ~糟了……又说错话了，对吧？嗯，我该在心里记一笔别再这么干。~
== BJAHEIR ~奥拉……~
== BC0AURA2 ~哦，也许我干脆写下来。我的本子在哪儿……啊哈，找到了！让我看看……“话出口前先想好”……写完？~
== BJAHEIR ~眼睛看着路。*拜托*。~
== BC0AURA2 ~对——对不起！~
EXIT

// Jan

CHAIN IF WEIGHT #-1
~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraJanVegetables","GLOBAL",1)~ THEN BJAN C0AuraJanVegetables
~等等。这又是什么？不！不，不不不不！~ [C0BLANK]
DO ~SetGlobal("C0AuraJanVegetables","GLOBAL",2)~
== BC0AURA2 ~扬？怎么了？~
== BJAN ~怎么了？看看我们面前这桩暴行，奥拉！我不在的时候我的菜地怎么了？我那完美的芜菁田，正被敌意的作物凶猛入侵！这是你干的？~
== BC0AURA2 ~是……可詹森太太允许我了，我发誓！我当时很想吃些东方的蔬菜，又带了些种子来，所以……~
== BJAN ~可——可这是什么？这根本不是芜菁！这细长的尖形状全不对，皮白得像尸体！~
== BC0AURA2 ~不，那是萝卜。我把种子从科祖库拉一路带来保存着。~
== BJAN ~*嚼* *呸！* 萝卜！该死的脆萝卜！那甜润的泥土味呢？绵软的质地呢？这跟芜菁的差别，就像兽人跟精灵！~
== BC0AURA2 ~嗯……它确实不是芜菁。可它们健康又清爽，真的！~
== BJAN ~再看看这些……这些长叶的怪物！啊！它们把最左边的角完全占了！~
== BC0AURA2 ~守龙白白菜！煮了很好吃。不信你自己尝尝。~
== BJAN ~哦不。天哪。我觉得有点晕……谁来扇我一巴掌，或者掐我一下。我一定是在可怕的噩梦里。~
== BC0AURA2 ~扬，得了吧，你反应过度了。轮作对土壤好，芜菁也会更健康！~
== BJAN ~你……你……~
== BJAN ~我想我得坐下。哦……我可怜的脑袋。~
== BJAN ~我简直无语。我信过你，奥拉。我以为找到了失散的堂妹。可看来我们真如昼夜般不同。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraJan1","GLOBAL",0)~ THEN BJAN C0AuraJan1
~那么，是个兰坦姑娘，嗯？好人，手巧心也巧。~ [C0BLANK]
DO ~SetGlobal("C0AuraJan1","GLOBAL",1)~
== BC0AURA2 ~嘿嘿，我们其实就一群整天闷在家里想事情的人。你去过我的故乡吗，扬？~
== BJAN ~还没这荣幸，没有。不过我可以跟你讲讲我母亲的叔叔巴鲁。他在桑巴尔学院读了五年，回来时带着满腹学问和一堆好东西分给家人……嗯，至少是他剩下那只手能搬得动的那些。~
== BC0AURA2 ~哦不……他胳膊怎么了？~
== BJAN ~那是个伤心的故事，亲爱的。傻乎乎的老巴鲁在学制黑火药，自信改进过设计。照别人跟我说的，他自己造了把火绳枪，装上他炼制的实验火药，然后对着他摆好的训练假人试射。~
== BJAN ~当然，真相是他喝自酿芜菁麦酒醉得厉害、彻底没了判断力。第一枪的后坐力打掉了他一条胳膊。第二枪——只有神知道它怎么就走火了——炸毁了宿舍整片西翼，至少十几个人进了医务室。不久后他因鲁莽危及他人、损毁学院场地被开除。*叹气* 真是件糟糕透顶的事。~
== BC0AURA2 ~太惨了，扬。你家人跟兰坦的经历那样……我很抱歉。我能做什么吗？~
== BJAN ~你问这话真好心，丫头，可你不用为你那聪明的脑袋操心。巴鲁对这段经历一直挺乐观，还有不少求学的趣事可讲。更别说兰坦人给他做的假肢这些年很好用。他还想回你们那可爱的国度，可母亲一个字都不许提。她说要是看见他收拾行李，就把他还剩的那只手钉在桌上。~
== BC0AURA2 ~哦……哈哈。他至少还能振作，让人安心。我们兰坦人……我们努力从失败中学，可有些人不太能承受，尤其当它让我们付出代价。~
== BJAN ~嗯，不打破几个蛋、先挑出坏的，就做不出好芜菁煎蛋。总有一天我要亲自去奇迹之岛朝圣，但愿四肢齐全地待在那儿。到时候你也许可以给我当向导，嗯？~
== BC0AURA2 ~若我有空，我很乐意，扬。只是在那儿时离黑火药远点，好吗？~
EXIT

CHAIN IF WEIGHT #-1
~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
See("Flying Machine 1")
Global("C0AuraJanAirship","GLOBAL",0)~ THEN BJAN C0AuraJanAirshipTalk
~看见那台飞行机器了吗，奥拉？我堂兄爱德华多就在阿斯卡特拉设计、造出了它。~ [C0BLANK]
DO ~SetGlobal("C0AuraJanAirship","GLOBAL",1)~
== BC0AURA2 ~我希望人们别再叫它“飞行机器”。叫飞艇有什么不对？它看着就像条船，不是吗？~
== BJAN ~爱德华多最初在北方某处见过同样的一台。我记得属于一个叫菲德尔本德的姑娘。回家后，他花了无数日夜想复制那设计。差点把自己累死。~
== BC0AURA2 ~他全凭自己做的，没有任何指导？真了不起……~
== BC0AURA2 ~……它能用吗？~
== BJAN ~当然能用！呃，别介意船壳上的裂缝和凹痕。它只是偶尔、非常偶尔地出点故障。~
EXIT

CHAIN
IF ~InParty("Jan")
Range("Jan",15)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraJan1","GLOBAL",1)~ THEN BJAN C0AuraJan2
~你给自己造的那张弓真是精致，奥拉。还闪闪发亮。我猜那是近年的设计？~ [C0BLANK]
DO ~SetGlobal("C0AuraJan1","GLOBAL",2)~
== BC0AURA2 ~嗯，我几年前开始旅行时就带着它，可相对而言，是的，扬。你对它好奇吗？~
== BJAN ~我怎能不好奇？我一直在想怎么升级我心爱的闪光者。当然，它现在的战斗性能已经很令人满意，可我总得想象各种可能。想想看：全诸国度第一台可用的发射器—搅拌器混合体，厨房和战场一样能干！~
== BC0AURA2 ~那绝对会是……开创性的发明，扬。前提是它真能做出来！~
== BJAN ~你看，人们都说——在有人做成之前，一切都是不可能的。我先画草图，然后我们一起动脑，实战试一两次，看我的构想经不经得起现实，嗯？~
== BC0AURA2 ~等等，我不记得我答应过——~
== BJAN ~啊，这会非常精彩。我已经闻到成功了——像刚削好的芜菁下进滚开的炖锅里。呵呵，该干活了！没时间浪费！~
== BC0AURA2 ~哦，算了。我想既然能让他高兴，那就随他吧……*叹气*~
EXIT

CHAIN
IF ~InParty("Jan")
Range("Jan",15)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraJan1","GLOBAL",2)~ THEN BC0AURA2 C0AuraJanFlasher
~那么，呃……这是你的闪光者发射器，扬。还有我写的一些笔记。老实说，我不敢信那东西居然能开火。那些零件怎么还连在一起？~ [C0BLANK]
DO ~SetGlobal("C0AuraJan1","GLOBAL",3)~
== BJAN ~啊，这正是问题所在，对吧？不过我想同为发明家，你有权了解我的秘密手法。全靠一点家传牌子。看见关节之间那点绿色了吗？那是詹森紧抱胶，发明家和有爱冒险丈夫的主妇都爱用——“保证永不松脱！”~
== BC0AURA2 ~哦，哇。你知道吗，我上次修那副护目镜时，这东西本该很管用……算了。那你为什么想让我看看它？据我所知它挺能用……嗯，按它该有的方式。~
== BJAN ~嗯，俗话说，总有改进的余地。既然你这么好心在我旧工坊里添了那么多可发挥创意的新门路，我就自作主张画了些可能的增强，好给闪光者发射器加点料。呃，别介意那些污渍。那是芜菁汁混咖啡粉。熬夜必需。~
== BC0AURA2 ~让我看看……芜菁榨汁器？可伸缩挠背爪？一个装……足部脱毛乳的隔层？我们冒险真需要这些吗……？~
== BJAN ~谁知道呢。好好灌一口芜菁汁，也许能把你从死亡边缘拉回来。不过，我想那些附加件会让发射器有点笨重……嗯……可我觉得聚焦球和强化弹簧是必须的。那能给闪光者加一记漂亮的拳。~
== BC0AURA2 ~*叹气* 好，好。我去看看工坊里能凑出什么。只是……留点妥协的余地，好吗？~
DO ~GiveItemCreate("c0anotea","C0Aura",0,0,0)~ EXIT

// Keldorn

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraKeldorn1","GLOBAL",0)~ THEN BKELDOR C0AuraKeldorn1
~等一下，奥拉。我想这娃娃是你的，不是吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraKeldorn1","GLOBAL",1)~
== BC0AURA2 ~哦！谢谢你，凯尔东。真不敢信我掉了它。这是我姐妹送我的珍贵礼物。~
== BKELDOR ~不麻烦，我的姑娘。可是……唉。~
== BC0AURA2 ~太对不起了！我不是要你替我捡东西。~
== BKELDOR ~不，不是那个。只是看到你这样的人过着这么危险的日子，让我不安。有些地方更安全、更能施展，会欢迎你这样的头脑。~
== BC0AURA2 ~谢谢你的关心，凯尔东。可有些东西我只能在这儿学到。我知道我不合此地，可是……这是我在知道风险后做的选择。~
== BC0AURA2 IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~再说……我欠<CHARNAME>不止一两个理由。若<PRO_HESHE>需要我，那比什么都重要。~
== BKELDOR ~我明白。我不怀疑你的信念，若在我能力之内，我会努力确保你平安无恙。*叹气* 只是有些疑虑难以放下。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!GlobalGT("LadyMaria","GLOBAL",0)
Global("C0AuraKeldorn2","GLOBAL",0)~ THEN BKELDOR C0AuraKeldorn2
~我听你提过姐妹，奥拉。若我没记错，是几个？~ [C0BLANK]
DO ~SetGlobal("C0AuraKeldorn2","GLOBAL",1)~
== BC0AURA2 ~是的，先生。我是家里第三个女儿。~
== BKELDOR ~我对兰坦知之甚少，可若你算个例子，看来你族人的家族纽带很强。我看得出你极珍视姐妹们的记忆。~
== BC0AURA2 ~是她们把我养成如今的样子。若不是从她们身上学到的一切，我大概都不会站在这儿。~
== BKELDOR ~一个人的教养能说明许多曾出过力的人。从你的例子看，我可以说你家人品格无可置疑地高贵。~
== BC0AURA2 ~先生，怎么忽然说起这个？~
== BKELDOR ~我只是遗憾自己没更多参与亲生女儿的教养。像任何父亲，我常为她们的未来担忧。~
== BC0AURA2 ~我肯定你没什么可担心的。凭你强烈的责任感与原则，我相信你家人会以你为榜样。我知道我在努力学。~
== BKELDOR ~你太抬举我了，亲爱的姑娘，可父亲的职责很少这么简单。不过你若真在我身上看到值得效法的德行，我会尽力继续做个榜样。~
EXIT

// Korgan

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraKorgan1","GLOBAL",0)~ THEN BKORGAN C0AuraKorgan1
~我承认，我对你有点刮目相看，丫头。~ [C0BLANK]
DO ~SetGlobal("C0AuraKorgan1","GLOBAL",1)~
== BC0AURA2 ~真的？怎么？~
== BKORGAN ~照你的样子，我以为你是个娇弱的小花，我得受不少看孩子的罪，可你在我面前一点不怕，也撑得住自己。~
== BKORGAN ~你的刀法还得练，可你那张好弓使得百发百中。纯秘银，嗯？~
== BC0AURA2 ~哦，是的。是西腹地的矮人换给我家的。我们跟西费伦的矮人关系不错。~
== BKORGAN ~哼。我不像那些几乎不离洞穴的同族那样受过铁匠训练，可我一眼就认得出矮人的手艺。只要你从后排使好它，前排那些蠢货老库尔甘替你料理。~
== BC0AURA2 ~谢谢，库尔甘。出自你口，这话出奇地让人安心。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraKorgan2","GLOBAL",0)~ THEN BKORGAN C0AuraKorgan2
~我想起我有个侄女，长得像你，那是我还跟一帮叫我作家族的粗老矮人在一起的时候。~ [C0BLANK]
DO ~SetGlobal("C0AuraKorgan2","GLOBAL",1)~
== BC0AURA2 ~哦，是吗？你，呃，觉得她怎么样，库尔甘？~
== BKORGAN ~看着是个漂亮小东西。我不太在乎族里的人，可对那丫头有点软心，我承认。有哪个混混的手乱伸，我砍过几只手。~
== BC0AURA2 ~那，呃……我想你是以自己的方式在意。~
== BKORGAN ~看见你让我想起她，就一点点。想象她如今嫁给别的族了吧，我多半见不到她了。你要谁的手被砍，丫头，就说一声。~
== BC0AURA2 ~不，没人需要被砍手，库尔甘！*打颤* 你若想帮忙，那就……呃……我们能不能不谈这个？~
== BKORGAN ~哼。我不擅长说话，丫头。可你放心，我会站在这儿，眼睛盯着我不喜欢的蠢货。~
EXIT

// Mazzy

CHAIN
IF ~InParty("Mazzy")
Range("Mazzy",15)
AreaType(OUTDOOR)
!AreaType(CITY)
!TimeOfDay(NIGHT)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraMazzy1","GLOBAL",0)~ THEN BC0AURA2 C0AuraMazzy1
~*唱* “我们走了这么远，这么久
从草原到山中的堡垒
我们的家园藏而不见
我们很快就会回到去过的地方……”~ [C0BLANK]
DO ~SetGlobal("C0AuraMazzy1","GLOBAL",1)~
== BMAZZY ~那是一首古老的半身人歌，不是吗？~
== BC0AURA2 ~对，没错。我听说这在你们族里很流行，玛兹。我旅行时学过一阵。~
== BMAZZY ~嗯，我不是在族人聚居地长大的，可我父亲很爱那首歌。我还记得他最爱的那段：~
== BMAZZY ~“我们会走那条蜿蜒小路，那条旧的
那里树高鸟鸣
穿过森林，穿过夜色
我们会一直走，直到天光初现。”~
== BC0AURA2 ~哦，我没听过那段。是他自己改的吗？~
== BMAZZY ~也许吧。我父亲在许多方面很像我自己。爱冒险、自由不羁，可到头来，他总盼着长途跋涉一天后能见到炉火与家的温暖。也许这就是他最爱这个版本的原因。~
== BC0AURA2 ~这……真让人振奋。继续，玛兹。把那首歌唱完！我想继续听你唱。~
== BMAZZY ~哦，好吧……可你何不唱下一段？~
== BC0AURA2 ~“哦，我们回家，回家，回家
回到我们安宁的小村子，我们再不远游
我们会拍手唱歌，笑得那么开
当我们回到家乡的这一边……”~
== BMAZZY ~“所以继续走吧，我们一个都别停
我们很快到家，能在那里找到安宁
我们半身人的土地，我们都会在一起
在那里我们的心会欢欣，越来越轻。”~
== BC0AURA2 ~*拍手* 太棒了！听完我觉得对这首歌有了新的欣赏。~
== BMAZZY ~哈哈。谢谢你，奥拉。我也许没唱歌的天分，可这确实愉快。也让人安心。~
== BC0AURA2 ~嗯！也许以后我们能分享更多歌？~
== BMAZZY ~当然可以。可是来吧……前面还有很长的路。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
AreaType(FOREST)
Global("C0AuraMazzy2","GLOBAL",0)~ THEN BMAZZY C0AuraMazzy2
~把手臂抬到肩膀上方多一点。你要把一部分重量分到上身，才不会累垮。~ [C0BLANK]
DO ~SetGlobal("C0AuraMazzy2","GLOBAL",1)~
== BC0AURA2 ~我在试，可是……我把弦拉几次，它就开始酸。~
== BMAZZY ~我知道。我没习惯之前也一样。等身体习惯这些动作，就会自然。~
== BC0AURA2 ~*叹气* 好吧，让我待会儿再试。我觉得胳膊要掉了。~
== BMAZZY ~说实话，你根本不需要我这么多指导。你这张弓的设计本身就需要掌握好几种不同的技巧，而你受过的训练看来出自水平不亚于我的老师。我觉得我能贡献的，只是把基础再修一遍。~
== BC0AURA2 ~朱诺以前总说，你不到二十秒内正中靶心二十箭，就永远练得不够。闭着眼做到还能加分。~
== BMAZZY ~这要求相当……极端，虽说我不能说没听过类似的。可你姐妹是专心的战士，你是工匠，对吧？既然如此，你有必要把自己逼到这种极端吗？~
== BC0AURA2 ~我希望没这必要，可我明白，有些事不改……有些东西不护……就不必打仗。我不喜欢打斗，可若必须……我想赢。因为我再也不想感到无力。不……不想再那样。~
== BMAZZY ~总有些仗我们赢不了，奥拉。不管我们握着凡人能有的全部力量，我们都得面对失去。不过……我知道那是什么滋味，所珍视之物被人夺走时的无助。那种命运，连死都更好。~
== BC0AURA2 ~可我们还是不能放弃，对吧？我想我永远都会害怕，可只要还有重要的东西，我就想带着弓去保护它。~
== BMAZZY ~说得好。我们都得追求力量来贯彻自己的愿望，不管是改善世界还是保护重要的东西……来吧，奥拉。我们重新开始。你到目前为止做得很好，还有很大余地可进。你想练多久我们都练。~
DO ~ApplySpellRES("C0AUPROF","C0Aura")~ EXIT

// Minsc

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraMinscRestTalk1","GLOBAL",1)~ THEN BMINSC C0AuraMinsc4
~休息吧，布布！夜晚来了，你该歇息。英雄必须睡觉，好攒起力气，等太阳升起给邪恶的屁股最有力的一脚！~
DO ~SetGlobal("C0AuraMinscRestTalk1","GLOBAL",2)~
== BC0AURA2 ~怎么了，明斯克？布布不安分吗？~
== BMINSC ~哦，奥拉朋友。这个时辰布布通常睡得像个婴儿，可今晚……明斯克觉得我们打过的邪恶的压力压到了可怜的布布。也许是压到了明斯克，而布布在担心。我不确定。可它需要休息！不知道布布先歇下，明斯克睡不着。~
== BC0AURA2 ~嗯，你试过给它唱歌吗？我一直觉得舒缓的摇篮曲能让我睡着。~
== BMINSC ~布布爱听唱歌，可明斯克……狄娜希尔总说明斯克的嗓音像号角里刮过的雷。而且明斯克只记得一首拉斯梅的童谣……~
== BMINSC ~“哦，小宝贝，安睡在摇篮里，
当夜色吞掉太阳，这时辰是谁来敲门？
也许是风，也许是小狼，
别怕门外的嚎叫……”~
== BMINSC ~“哼—嗯—哼……”呃……明斯克只记得一点。词在我们的语言里差别很大，而且过了太久了。明斯克不想唱错。~
== BMINSC ~若狄娜希尔还在，她会知道这首歌。她是明斯克认识的最有智慧的女人，什么都知道。唉，狄娜希尔……明斯克常常没她就不知所措。~
== BC0AURA2 ~明斯克……你要不要我来唱？我不太会，可我知道几首歌。~
== BMINSC ~*抽鼻子* 明斯克……想听一首歌。~
== BC0AURA2 ~好，让我想想……~
== BC0AURA2 ~“睡吧，睡吧，小东西，睡吧，睡吧……
乖孩子，安睡在摇篮里，听这首摇篮曲，
我祈求什么？我的祈祷又去了哪里？
为我的孩子，向着东风，飞吧……”~
== BMINSC ~布布，你在听吗？布布？啊，你终于睡着了……那很好……*哈欠*~
== BMINSC ~呼……呼……~
DO ~ClearAllActions()
StartCutSceneMode()
FadeToColor([0.0],0)
Wait(2)
RestPartyEx(0,0,FALSE)
FadeToColor([0.0],0)
Wait(3)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()~ EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraMinsc1","GLOBAL",0)~ THEN BMINSC C0AuraMinsc1
~啊，不行！我这双正义的强壮手臂能把邪恶像割草一样打倒，却短得够不到这狡猾可恶的痒处？我需要更大的胳膊！~ [MINSC37]
DO ~SetGlobal("C0AuraMinsc1","GLOBAL",1)~
== BC0AURA2 ~明斯克，你，呃，为什么在挠自己？布布又长螨虫了？~
== BMINSC ~不，不，奥拉，布布一直把自己保持得干干净净。它只是不安分！我们日复一日地走，可布布只能蜷在明斯克臭烘烘的背包里！~
== BC0AURA2 ~你何不偶尔放它出来？动物一直被关着不好。~
== BMINSC ~明斯克在吃饭休息和睡前会让布布自由跑，可它说不够。它想跟我们一样奔过田野、爬上高丘！~
== BC0AURA2 ~可它不能那样。万一被踩到呢？万一撞上熊呢？*打颤*~
== BMINSC ~明斯克同意，可他受不了——~
== BC0AURA2 ~*剧烈打颤*~
== BMINSC ~呃……受不了睡前被一只憋坏的布布一直啃脚趾。你是个聪明的工匠，奥拉！帮我们想个主意！~
== BC0AURA2 ~嗯，穆菲没玩够也会烦躁……你知道吗，明斯克，我也许能做点什么。交给我吧！~
EXIT

CHAIN
IF ~InParty("Minsc")
Range("Minsc",15)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraMinsc1","GLOBAL",1)~ THEN BC0AURA2 C0AuraMinsc2
~嘿，明斯克。接好了！~ [C0BLANK]
DO ~SetGlobal("C0AuraMinsc1","GLOBAL",2)~
== BMINSC ~这是什么，布布？一个球！哦，你是想跟我们玩接球吗，奥拉？可明斯克觉得这球对布布来说大了几号。它都能整个钻进去！~
== BC0AURA2 ~*轻笑* 嗯，它能。而且本来就该这样。看见两边那两个卡扣了吗？按进去就会打开。~
== BMINSC ~*咔哒* 看，布布！里面空间好大。这不正好当你的小床，旅行时睡在里面？~
== BC0AURA2 ~不，不，让我示范……呃，也能把布布借我一下吗？~
== BMINSC ~这样可以吗，布布？……好，布布说可以。~
== BC0AURA2 ~你进去，布布……现在我要合上了……别担心，上面有孔给你透气……现在我只要拔掉插销，里面就能自由转动……好了！~
== BMINSC ~哦！看你，布布，在里面自由地跑。现在你能把攒在这……这……呃，这是什么，奥拉？~
== BC0AURA2 ~这是玻璃钢仓鼠球。通常放在地上，看仓鼠在里面滚着球走，可冒险时没法那样。所以我做了双层，里面能转而不带动外壳。~
== BMINSC ~啊，真聪明！布布喜欢那小轮子，可它更喜欢随心所欲地往任何方向跑。现在布布能安全待在明斯克的背包里，又能得到需要的运动。我们谢谢你，我聪明的朋友！~
== BC0AURA2 ~嘿嘿。看到我的造物让人开心，没有比这更好的了。不客气，明斯克。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraMinsc2","GLOBAL",0)~ THEN BMINSC C0AuraMinsc3
~啊——嘿！奥拉！~ [MINSC36]
DO ~SetGlobal("C0AuraMinsc2","GLOBAL",1)~
== BC0AURA2 ~哇啊！明——明斯克！天哪，你从哪儿冒出来的？~
== BMINSC ~明斯克一直站在你身后。~
== BC0AURA2 ~哦，是这样吗……啊哈哈……真不敢信我没注意到你。可哎哟，你刚真把我吓着了……~
== BMINSC ~如果我吓着你了，我很抱歉。明斯克和布布该让邪恶满脸恐惧，不该吓朋友。~
== BC0AURA2 ~不，没关系。可我真不知道你能把气息藏得这么好！我绝对做不到。~
== BMINSC ~啊，很容易，我的朋友！明斯克屏住气，然后站得一动不动。这是拉斯梅一位很老的游侠教我们的。“脚步轻，剑要大”。明斯克趁他们没防备时出手，邪恶会加倍害怕！~
== BC0AURA2 ~嗯，那……呃，想想也说得通。不过我大概屏不了那么久的气……我会先昏过去。总之，你叫我有事？~
== BMINSC ~布布想问奥拉要不要草莓。~
== BC0AURA2 ~草莓！好，要，谢谢你！~
DO ~RealSetGlobalTimer("C0AuraMinscRestTalkTimer","GLOBAL",3600)~ EXIT

// Nalia

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraNalia1","GLOBAL",0)~ THEN BNALIA C0AuraNalia1
~那是《伊玛斯卡秘录》的抄本吗，奥拉？那是用伊玛斯卡语写的。你能读它，我真惊讶。~ [C0BLANK]
DO ~SetGlobal("C0AuraNalia1","GLOBAL",1)~
== BC0AURA2 ~嗯，兰坦的古老语言源自伊玛斯卡语，所以我能用上一些已经会的……总比试着翻洛罗斯语强。那得翻出老辞典。~
== BNALIA ~你已经会的……好奇问一句，你到底会多少种语言，奥拉？~
== BC0AURA2 ~嗯……让我想想。当然有通用语和兰坦语，那在我家乡是标准的。我在科祖库拉逗留时学了塞奈方言……也学过一点守龙语，可别叫我讲……~
== BC0AURA2 ~哦，还有，我家常跟维尔加丹的矮人信徒做生意，所以学了些矮人语……我的精灵语有点生疏，可基本对话还能应付……至少我能写龙语字母。~
== BNALIA ~哦……哦，哇……比我想的多多了。你怎么全记住的？~
== BC0AURA2 ~多练？我不确定……大概就像你记住书上那些法术一样吧。~
== BC0AURA2 IF ~!Class("C0Aura",MAGE_ALL) !Class("C0Aura",BARD_ALL)~ THEN ~老实说，我觉得魔法有意思得多。要是我懂多一点魔法，这类书对我大概更有用。~
== BNALIA ~不过……你能记住那么多知识真了不起。有时候光是我的法术就占满脑子，一失神就头晕。~
== BNALIA IF ~!Class("C0Aura",MAGE_ALL) !Class("C0Aura",BARD_ALL)~ THEN ~我觉得你若选那条路，会是个了不起的法师。~
== BC0AURA2 ~嗯，我知道魔法本身需要很多专注，你已经做得很好了。毕竟每次你的火球没飞偏，我都松一口气。~
== BNALIA ~哈哈。这点我想你说得对。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraNalia1","GLOBAL",0)~ THEN BNALIA C0AuraNalia2
~是什么驱使你出来看世界的，奥拉？~ [C0BLANK]
DO ~SetGlobal("C0AuraNalia1","GLOBAL",1)~
== BC0AURA2 ~我？我只是……想知道家以外的土地什么样子，我想。你为什么问？~
== BNALIA ~只是我从没听说过兰坦的冒险者。照我读的，你族人不是学者就是发明家。很少人离开那座岛，离开的也多是以商人等身份为族人办事。~
== BC0AURA2 ~大体是这样。我们没多少冒险者。我们的人……嗯，我们太埋头工作，常常忘了吃饭。~
== BNALIA ~为什么我们在诸国度其他地方见不到更多你们的作品？我见过你干活。你能造出连安姆最聪明的人都梦想不到的东西。你该想，连最封闭的国度也会散出某种影响。~
== BC0AURA2 ~我……不能代表整个国度。可我们不是为夺权而干活的民族，至少……大体上不是。很多兰坦人对你们的世界了解，就跟你们对我们的一样少。不少人连想都没想过走出自家门。~
== BNALIA ~可你走了。~
== BC0AURA2 ~我……好吧。是，我走了。~
== BNALIA ~那有多难？若你族人真像你说的那么孤僻……~
== BC0AURA2 ~我，嗯……我不知道。那根本算不上艰难的决定，真的。我家人支持我。他们帮我造弓、为我上路做准备，也从没有压力要我改主意。~
== BC0AURA2 ~我们的人就是这样。我们照顾自己人，虽然不逼着彼此去了解外面的世界，可也不反对。只要我们守法，从不让我们的作品被人滥用。~
== BNALIA ~我明白。我看得出你多细致。总是仔细查看，确保不留下任何会被人拿走滥用的痕迹。那一定极难。~
== BNALIA ~在更好的世界里，也许知识能只用于善。可我们都知道我们不住在那样的现实里。不过也许有一天，若我们试着改变。~
EXIT

// Neera

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraNeera1","GLOBAL",0)~ THEN BNEERA C0AuraNeera1
~嘿，奥拉……你的松鼠咬人吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraNeera1","GLOBAL",1)~
== BC0AURA2 ~嗯，它会……可它不会咬你。我想。~
== BNEERA ~我想摸摸它！我能摸吗？~
== BC0AURA2 ~呃，去吧。只是小心别把它摔了……~
== BNEERA ~哇，作为一只金属造的小东西，它真可爱。还那么像活的！你怎么做的？有次我不小心把扫帚弄活了，它想杀我。那东西可没这么可爱。~
== BC0AURA2 ~嘿嘿……抱歉，商业机密。~
== BNEERA ~唉，得了吧！我保证不告诉别人。我就是想要一只自己的不死金属宠物，真是的！~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraNeera2","GLOBAL",0)~ THEN BNEERA C0AuraNeera2
~给。你的书还你，奥拉……呃。~ [C0BLANK]
DO ~SetGlobal("C0AuraNeera2","GLOBAL",1)~
== BC0AURA2 ~什么？你昨晚才借的？不可能已经看完了！~
== BNEERA ~不，我连一半都没看完。我觉得脑袋要炸了。我几乎读不下去——密斯特拉的湿袜子在上，你怎么可能记住里面任何东西？~
== BC0AURA2 ~*低声* （能安静坐三秒以上也许有帮助……）~
== BNEERA ~你说什么？~
== BC0AURA2 ~没什么！呃……也许这个不适合你。话说你怎么突然对钟表机构的实际应用这么感兴趣？~
== BNEERA ~我也不知道，翻你那些东西时它就吸引了我。我想我若学得够用功，就能造一条钟表龙！~
== BC0AURA2 ~呃，真的？~
== BNEERA ~好吧，好吧。我只是想试着学点新本事，好不必总靠我的魔法。你试试依赖一个想干什么就干什么的东西！~
== BC0AURA2 ~哦……原来如此。那，也许……~
== BNEERA ~不，算了。反正是个蠢主意。我这脑子现在学不了别的东西。~
== BC0AURA2 ~我不确定……我不觉得你蠢，妮拉，你只是无聊。你需要真正能抓住你注意的东西。我正好知道一样！~
== BNEERA ~《从平凡到了不起的附魔目录》？嘿，这听着真有趣。谢谢，奥拉！我今晚偷偷读点轻松的——*啊——*！~
== BC0AURA2 ~哇！小心火花，妮拉！~
== BNEERA ~……哦。墨水变隐形了。看来我今晚读不成了。~
== BC0AURA2 ~我，呃，没有更多副本了，如果你在想这个。~
== BNEERA ~果然。呃，它总会自己恢复的……通常都会。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraNeera3","GLOBAL",0)~ THEN BNEERA C0AuraNeera1
~嘿，奥拉！你还有那种好吃的小彩虹豆吗？我馋了。~ [C0BLANK]
DO ~SetGlobal("C0AuraNeera3","GLOBAL",1)~
== BC0AURA2 ~上次我分给你的那一整袋你都吃光了？怎么吃的？~
== BNEERA ~狂野魔法。~
== BC0AURA2 ~哦，对。*叹气* 抱歉，我自己那份也吃了。它们真好吃，对吧？~
== BNEERA ~你觉得我若非常非常努力，能变出更多吗？~
== BC0AURA2 ~我不觉——~
== BNEERA ~法奇奥……沃科……费雷！~ [CAS_PM3F]
== BNEERA ~嗒——嗒——嗒——哒！~ [CAS_P03]
== BNEERA ~……该死。又是谁的旧袜子。呸！那人还真讨厌洗脚。~
== BC0AURA2 ~嘿——嘿——嘿！别朝我指！我也不要！~
== BNEERA ~算了，奥拉。我没胃口了。召唤法术真蠢。~
== BC0AURA2 ~还能更糟。至少你没召出一群熊。*打颤*~
EXIT

// Rasaad

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraRasaad1","GLOBAL",0)~ THEN BRASAAD C0AuraRasaad1
~你常来看我训练，奥拉。太阳魂宗门的技法让你着迷吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraRasaad1","GLOBAL",1)~
== BC0AURA2 ~哦，嗯……是的。可你若觉得失礼，拉沙德，我以后不来烦你。~
== BRASAAD ~一点也不。我只是想知道你自己有没有兴趣练武。~
== BC0AURA2 ~我？哈哈。我不确定我适合……我瘦得像根棍子，才到你腰高。我只是觉得你的路数跟科祖库拉的武僧比很有意思。~
== BRASAAD ~他们跟东方的差别很大吗？~
== BC0AURA2 ~很多方面……不一样。可许多修行看起来相似。不过我不是行家。~
== BRASAAD ~也许有一天我会遇见这样一位苦修者，我们可以交换技艺。那时我也许能让你明白我们的路数有何不同。~
== BC0AURA2 ~唉，那真是好心，我会喜欢的。可现在我只是爱看。哪怕是间接的，也让我想起科祖库拉。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraRasaad1","GLOBAL",1)~ THEN BC0AURA2 C0AuraRasaad2
~拉沙德，我很敬重你。你是个了不起的人，荣誉感很强。~ [C0BLANK]
DO ~SetGlobal("C0AuraRasaad1","GLOBAL",2)~
== BRASAAD ~谢谢，可这赞美从何而来？~
== BC0AURA2 ~我只是……想说。你似乎有段时间需要些正面的鼓励了。~
== BRASAAD ~也许我需要，可我怀疑这值不值得。一个有荣誉的人……会为复仇舍弃一切吗？~
== BC0AURA2 ~你真觉得你舍弃了一切？我不信。一个只顾自己的人不会在战斗里站到前面护着我。~
== BRASAAD ~我……只做了我相信是对的事。~
== BC0AURA2 ~所以我说我敬重你。不管别人怎么说，你没舍弃你身上的善。~
== BRASAAD ~可是——~
== BC0AURA2 ~我不喜欢复仇。我自己也尝过那滋味，你知道。可我知道放下有多难，所以就算我改不了你的路，至少能帮你一点。就像你帮过我。~
== BRASAAD ~我敢求的就这些了。谢谢你，奥拉。你也值得敬重，而我的敬重你已得到。~
EXIT

// Valygar

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraValygar1","GLOBAL",0)~ THEN BVALYGA C0AuraValygar1
~你为什么对魔法这么着迷，奥拉？你族人不是已经做出许多别人说只有魔法才能做到的事了吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraValygar1","GLOBAL",1)~
== BC0AURA2 ~我想你夸张了，瓦里格。魔法仍能做到许多科学做不到的事。~
== BVALYGA ~照我所见，魔法能做的事一点也不良善。~
== BC0AURA2 ~可——嗯，也许吧。可任何力量都能做出可怕的事。拿更高的标准要求魔法，是不是有点不公？~
== BVALYGA ~我坚信任何只掌握在个人手里的力量，都可能因赋予其他人所不能的能力而使人腐化。~
== BC0AURA2 ~确实，可他们也能以别人做不到的方式让世界更好……对吧？~
== BVALYGA ~也许能。可多数人最终败给诱惑。我希望你不会堕到同样的深处。~
== BC0AURA2 ~别担心。我不会。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
PartyHasItem("NPSW04")
Global("C0AuraValygar2","GLOBAL",0)~ THEN BC0AURA2 C0AuraValygar2
~瓦里格，你的刀是家传的吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraValygar2","GLOBAL",1)~
== BVALYGA ~差不多。我对它的来历知道很少，可它跟着我家好几代了。~
== BC0AURA2 ~你对自己祖先了解不多吗？~
== BVALYGA ~我已经知道的这点，比我想要的多。科萨拉这个姓背着黑暗的故事，奥拉，你不会想知道的。~
== BC0AURA2 IF ~PartyHasItem("NPCHAN")~ THEN ~抱歉，我只是好奇……那把武士刀，还有你的盔甲……它们随时间被改过，可设计似乎源自东方。~
== BC0AURA2 IF ~!PartyHasItem("NPCHAN")~ THEN ~抱歉，我只是好奇……那把武士刀的设计不寻常，可似乎源自东方。~
== BVALYGA ~照我所知你也许说得对。可如今没人能知道了。我血脉里的人过去犯下的暴行，已把任何值得骄傲的传承都用血洗掉了。~
== BC0AURA2 ~我不信那是真的。就算是……你仍能写新的故事，瓦里格。你不是恶人，哪怕跟你同姓的人曾是。~
== BVALYGA ~别人怎么看我现在、或我的姓，已不太重要。善行本身就有价值，不需要名声的重担伴随。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
PartyHasItem("c0abook1")
Dead("Lavok02")
Global("C0AuraValygar3","GLOBAL",0)~ THEN BVALYGA C0AuraValygar1
~你一直在读拉沃克的书。~ [C0BLANK]
DO ~SetGlobal("C0AuraValygar3","GLOBAL",1)~
== BC0AURA2 ~他研究的那本伊玛斯卡典籍？是，它……很迷人。里面有些知识能帮到我自己的工作。~
== BVALYGA ~我明白了。~
== BC0AURA2 ~瓦里格，我看得出你不自在。你若担心我用你祖先的知识，我可以——~
== BVALYGA ~不，别在意我。以我现在这样，我……没资格告诉任何人他们配不配知道什么。我自己都没完全弄懂。~
== BC0AURA2 ~瓦里格……~
== BC0AURA2 ~其实我懂你的感受。知识本身不邪恶，可它确实会引人执迷……我在兰坦也见过几次。朋友和家人太投入自己的工作，没察觉自己正在伤害自己和别人。~
== BVALYGA ~我也见过那样的，嗯。~
== BC0AURA2 ~可是……我想这正是我们该彼此照看的原因。若觉得有人迷失了，我们就该在那儿握住他们的手拉回来。而我觉得对拉沃克来说……发现你，对他有意义。~
== BVALYGA ~你真这么相信？我没想到世上还有这样的乐观。~
== BC0AURA2 ~我不确定。可我觉得信这个是对的。还有……瓦里格，你若觉得我会陷入执迷，我希望你作为朋友告诉我。~
== BVALYGA ~我明白。为了你，我会尽力。~
EXIT

// Viconia

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraViconia1","GLOBAL",0)~ THEN BVICONI C0AuraViconia1
~哏！Xza'iblith shu'jor！~ [C0BLANK]
DO ~SetGlobal("C0AuraViconia1","GLOBAL",1)~
== BC0AURA2 ~哇！怎么了，维康妮亚？~
== BVICONI ~不关你的事，英吉尔。总之，那些会飞的地面害虫里有一只竟敢把脏爪子放到我身上……呃。~
== BC0AURA2 ~哦……其实我有一副药剂，正好驱走那些讨厌的苍蝇。我放哪儿了……啊，这儿！~
== BVICONI ~看来你毕竟还有点用处。~
== BC0AURA2 ~顺便问一句……你刚才说的那句话是什么意思？我学过几个卓尔词，可从没……~
== BVICONI ~Tlu suust！为你自己好，我建议你忘掉那些粗话是从我嘴里出来的。~
EXIT

CHAIN
IF ~InParty("Viconia")
Range("Viconia",15)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraViconia2","GLOBAL",0)~ THEN BC0AURA2 C0AuraViconia2
~维康妮亚，你有没有想过戴顶帽子？~ [C0BLANK]
DO ~SetGlobal("C0AuraViconia2","GLOBAL",1)~
== BVICONI ~你现在又在胡说什么，小东西？~
== BC0AURA2 ~我只是想……你知道，既然你那么喜欢你的头巾……若有顶帽子，护住眼睛不受阳光刺眼不是更容易？~
== BVICONI ~那些地面住的贾利尔戴的花哨锥形玩意儿？我宁愿死，也不受那种羞辱。~
== BC0AURA2 ~不，不！我想的是更雅致些的。宽檐的，可仍让你可爱的白发松松垂着。也许加根羽毛。哦，蓝色会很衬你。~
== BVICONI ~嗯。那种嵌暗色宝石的头饰倒不是那么不讨——不。这念头太荒唐。别再跟我说这个。~
== BC0AURA2 ~唉。扫兴。~
EXIT

// Wilson

CHAIN
IF WEIGHT #-1 ~InParty("Wilson")
Range("Wilson",15)
!StateCheck("Wilson",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraWilson1","GLOBAL",1)~ THEN BWILSON C0AuraWilson1
~低吼。哈欠……低——吼……~ [C0BLANK]
DO ~SetGlobal("C0AuraWilson1","GLOBAL",2)~
== BC0AURA2 ~……~
== BWILSON ~打呼……嗅嗅。~
== BC0AURA2 ~不。不行！再也受不了了！嘿，起来！起来！*吹哨* *呜——！*~
== BWILSON ~低——吼？嘟囔，嘟囔……~
== BC0AURA2 ~不，不是“低吼”。我——我早跟你说过，这是我的地盘，你的在那边。很——远——的——那边！那边我听不见你打呼！或者……或者干任何事！~
== BWILSON ~呜。嘟囔……*咬*~
== BC0AURA2 ~啊——啊！停下，停下！放开我的长袍！哦……为什么？你为什么非得在这儿？~
== BWILSON ~嗅。哼！哈欠……呼……~
== BC0AURA2 ~呃……这永远行不通……~
DO ~ClearAllActions()
StartCutSceneMode()
FadeToColor([0.0],0)
Wait(2)
RestPartyEx(0,0,FALSE)
FadeToColor([0.0],0)
Wait(3)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()~ EXIT

CHAIN
IF ~InParty("Wilson")
Range("Wilson",15)
!StateCheck("Wilson",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraWilson1","GLOBAL",2)~ THEN BC0AURA2 C0AuraWilson2
~*哈欠*~ [C0BLANK]
DO ~SetGlobal("C0AuraWilson1","GLOBAL",3)~
== BWILSON ~哈——欠……~
== BC0AURA2 ~啊……*阿嚏*！~
== BWILSON ~低吼……嗷……*阿——阿——阿嚏*！~
== BC0AURA2 ~哦，够了！你是不是故意学我？~
== BWILSON ~哼。~
== BC0AURA2 ~我完全不知道那是是还是不是，可不管怎样，停下！你让我发毛！~
== BWILSON ~嗅嗅，哼。~
== BC0AURA2 ~*叹气*~
== BWILSON ~叹——气。~
EXIT

CHAIN
IF ~InParty("Wilson")
Range("Wilson",15)
!StateCheck("Wilson",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraWilson1","GLOBAL",3)~ THEN BC0AURA2 C0AuraWilson3
~嘿。呃……熊先生？威尔森？~ [C0BLANK]
DO ~SetGlobal("C0AuraWilson1","GLOBAL",4)~
== BWILSON ~哼？~
== BC0AURA2 ~我只是，呃……呃……想道谢。那只怪物……要不是你把它拍开，也许就抓住我了。~
== BWILSON ~低吼。嗅嗅。~
== BC0AURA2 ~什么？你是在问……我还觉不觉得你吓人？~
== BWILSON ~哼。~
== BC0AURA2 ~嗯……当然觉得！你知道，我不可能一两天就克服我的恐惧。~
== BWILSON ~呜……~
== BC0AURA2 ~不过，你若能像吓我这样吓我们的敌人……也许跟你相处也没那么难。~
== BWILSON ~咕噜。~
== BC0AURA2 ~等等……刚才那声音是你的肚子在叫吗？你……饿了？~
== BWILSON ~咕——噜。~
== BC0AURA2 ~啊！不，不不不！你不能吃我！我一点都不好吃！~
EXIT

CHAIN
IF ~InParty("Wilson")
Range("Wilson",15)
!StateCheck("Wilson",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraWilson1","GLOBAL",4)~ THEN BWILSON C0AuraWilson4
~低吼？~ [C0BLANK]
DO ~SetGlobal("C0AuraWilson1","GLOBAL",5)~
== BC0AURA2 ~嗯？你是在问……我有没有鱼？~
== BWILSON ~哼……！~
== BC0AURA2 ~哦，听你说宁愿吃鱼也不吃我，我真高兴。呃，不，我没有。可……我确实会钓鱼。毕竟我在海边长大的！~
== BWILSON ~哼。~
== BC0AURA2 ~你……想带我去钓鱼？不，没门！这是个把我单独骗出去的诡计，我知道！然后你就——你就拿我当鱼饵！~
== BWILSON ~哼，哼，哼。~
== BC0AURA2 ~现——现在你在笑我？你……觉得我钓鱼比不过你？~
== BWILSON ~吼——！~
== BC0AURA2 ~哦，好。下次我们经过水域，我就拿出我最新那根竿。我让你看看，你这头蠢熊！~
EXIT

// Yoshimo

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraYoshimo1","GLOBAL",0)~ THEN BYOSHIM C0AuraYoshimo1
~听说你走过不少地方，小奥拉。告诉我，你真在我亲爱的故乡科祖库拉待过许多年吗？~ [C0BLANK]
DO ~IncrementGlobal("C0AuraYoshimo1","GLOBAL",1)~
== BC0AURA2 ~哦……是的，是真的，吉野先生。可我不会说许多年……其实只有五年。~
== BYOSHIM ~啊，不必用敬称，亲爱的。在这些土地上走过这么多旅程后，我已习惯不用。而五年也不算少，我想——毕竟我们人类命短。~
== BC0AURA2 ~你一定很想念科祖库拉。我离开还没多久……可我仍想念那些岛屿，和盛开的樱树。~
== BYOSHIM ~美景，嗯。看到你如此为我亲爱的本国着迷，我很欢喜。我甚至看见你带着的那些宝物，勾玉、盔甲上压印的樱花，还有——这是什么？哟，是你弓上挂着的一个护符，样子正是你可爱的自己！~
== BC0AURA2 ~嘿——嘿！唉，吉野……得了吧，还给我！~
== BYOSHIM ~哈哈。玩笑之外……说真的，看到科祖库拉在你身上留下的印记，让我心里欢喜。我一直觉得，可惜东方离这些土地太远，不能让更多人有机会看看那个地方、把它完整地拥入心中。~
== BYOSHIM ~对我来说……嗯，不管旅途多长，总有一天，我希望能回去。~
== BC0AURA2 ~我真希望你再见你的家乡，吉野。若可以问，它在哪儿？~
== BYOSHIM ~嗯……改天吧，小奥拉。我怕一开口讲家，就会说很久停不下来。而<CHARNAME>大概不会喜欢。嘿。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraYoshimo2","GLOBAL",0)~ THEN BYOSHIM C0AuraYoshimo2
~你愉快的心性很有感染力，小奥拉。能有你这样开朗体贴的人让队伍气氛轻松，真是幸事。~ [C0BLANK]
DO ~IncrementGlobal("C0AuraYoshimo2","GLOBAL",1)~
== BC0AURA2 ~“小奥拉”？你以后都要这么叫我吗，吉野？~
== BYOSHIM ~我觉得挺可爱，你不觉得吗？~
== BC0AURA2 ~可这……这挺幼稚的，不是吗？~
== BYOSHIM ~你若不喜欢，我就不叫了。我只是觉得这是朋友间的昵称。~
== BC0AURA2 ~嗯，也……不算太糟。我是说，我想这么叫我也行。如果我们是朋友。~
== BYOSHIM ~当然，嘿……小奥拉。~
EXIT

CHAIN
IF ~InParty("Yoshimo")
Range("Yoshimo",15)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraYoshimo2","GLOBAL",1)~ THEN BC0AURA2 C0AuraYoshimo2
~你有空吗，吉野？有件事我好奇。~ [C0BLANK]
DO ~IncrementGlobal("C0AuraYoshimo2","GLOBAL",2)~
== BYOSHIM ~当然，小奥拉。听你说话总是件乐事，我会仔细听。~
== BC0AURA2 ~嘿嘿，你太抬举我了。我只是想知道……你离家很久了，对吧？你精通通用语，对这些土地的理解连我都比不上……到如今费伦对你一定像第二个家。~
== BYOSHIM ~嗯，差不多，亲爱的。我离开科祖库拉寻求冒险已很久，这些年来我已习惯这里的危险与刺激，还有利益。也许正因为这样，尽管思乡，我还没屈服于那急切的归乡冲动。~
== BC0AURA2 ~你是个自由的灵魂。那种不管多陌生，都能很快在任何地方安顿下来的人。~
== BYOSHIM ~不过，只有真正无心的人，或者心怀黑暗记忆的人，才会对自己生长之地毫无感情。遇见你，小奥拉，一个爱上了我故乡的人，就跟遇见同乡一样好。~
== BC0AURA2 ~还有……跟我聊过之后，你现在更想念科祖库拉了吗？~
== BYOSHIM ~是的。不过我怕是还没到归乡的时候……还不到。~
== BC0AURA2 ~“还不到”？~
== BYOSHIM ~嗯，我得跟<CHARNAME>——还有你，我的新朋友——把这趟旅途走到尽头，不是吗？来吧，小东西，还有故事要讲呢。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraYoshimo2","GLOBAL",2)~ THEN BYOSHIM C0AuraYoshimo3
~小奥拉，你真是个矛盾体。你有盗贼般锐利的眼和灵巧的手，却又有武士般的自律与责任。兰坦人都像你这样吗？~ [C0BLANK]
DO ~IncrementGlobal("C0AuraYoshimo2","GLOBAL",3)~
== BC0AURA2 ~嗯……我希望如此，是的。学会不同的技艺不只重要，负责任地使用它们也重要。~
== BYOSHIM ~嘿，难怪，虽说我们的行当有些相似，我却很少觉得自己在这队里的角色受到挑战。不过你那强烈的道德感有时真让我羞愧，尤其当我想重拾偷窃旧习的时候。~
== BC0AURA2 ~哦，吉野。你没什么可羞愧的。<CHARNAME>信你，我也信。我知道你盼我们最好。~
== BYOSHIM ~是，我……确实如此。愿我们的友谊长久而丰硕，亲爱的。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraYoshimo2","GLOBAL",3)~ THEN BYOSHIM C0AuraYoshimo4
~我常看见你沉思时摩挲你戴的那块玉坠，小奥拉。它对你一定极重要，因为我从没见它离开过你身上。~ [C0BLANK]
DO ~IncrementGlobal("C0AuraYoshimo2","GLOBAL",4)~
== BC0AURA2 ~是的，它……是件礼物。来自我的导师，一位科祖库拉的神社巫女。~
== BYOSHIM ~巫女？我明白了……我注意到你盔甲下的衣着像巫女的小袖。看来这不是巧合。~
== BC0AURA2 ~我在一座神社待了几年，想在海上几乎溺死后恢复记忆。那……更像是长期的学习而非生活方式，可我留了几样东西纪念那段时光。~
== BYOSHIM ~若可以问……你在我故乡时，侍奉的是哪座神社？~
== BC0AURA2 ~是……天津神神社。你知道它吗？~
== BYOSHIM ~……~
== BYOSHIM ~知道……这名字很熟。那块勾玉……若不太过分，能让我看看吗？~
== BC0AURA2 ~……好吧。~
== BYOSHIM ~这是件珍贵的礼物。而对我来说，相当……怀旧。~
== BC0AURA2 ~什么？~
== BYOSHIM ~其实，我最亲爱的姑母也是巫女。一个坚强、慈悲的女人……我小时候顽劣，父母怕我会给家族丢脸，只有她能给年幼的吉野灌输些道理——一个鲁莽的混世魔王，你若见过，大概都认不出。还有……她戴的勾玉，就跟这块很像。~
== BC0AURA2 ~哦，我明白了……她现在怎么样？~
== BYOSHIM ~我……不知道。我说过，我回家已是很多年前。我最后一次听到她的消息是一封信……一年多前写给我，说些涉及我姐妹的家事。你的导师呢，奥拉？~
== BC0AURA2 ~她——她死了。一个浪人，她以前的朋友，在她护住我时杀了她。我一路到剑湾就是为了找他……我阻止了他。我……并不为此自豪，尽管我知道他作过许多恶。~
== BYOSHIM ~啊。原来是这样……别愧疚，奥拉。一个堕落的武士竟把刀转向自己的朋友……就该羞愧于死在同一把刀下。~
== BC0AURA2 ~吉野，你……你听着像在生气。这不像你。~
== BYOSHIM ~嘿。你若觉出怒意，就当它是正义的那种。总之……这些黑暗的记忆都已在你身后了，对吧？~
== BC0AURA2 ~对。~
== BC0AURA2 ~吉野？~
== BYOSHIM ~嗯？~
== BC0AURA2 ~你该……早些回家。听起来有人在等你。再见他们，你也许会更快乐。~
== BYOSHIM ~啊……是。这建议确实中肯。我希望不久就能回去……以一种方式或另一种。~
EXIT