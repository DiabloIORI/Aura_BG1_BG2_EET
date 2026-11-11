
// Aerie

I_C_T BAERIE25 159 C0AuraBAERIE25159
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~唉，他真可爱！他那圆乎乎的小脸蛋让我想起我那对双胞胎弟弟妹妹……哦，现在我又想看他们了。~
END

// Bondari

I_C_T BAZPAT01 13 C0AuraBAZPAT01
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~还有谁觉得一阵奇怪的似曾相识？只有我？怪了……~
== BAZPAT01 ~呃……*大量冒汗*~
END

// Dragon

I_C_T2 BAZDRA03 8 C0AuraBAZDRA038
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("C0AuraYoshimoBetrayal","GLOBAL",0)~ THEN ~真是讽刺，对吧，<CHARNAME>？又是一道慑令，可这次解决的办法这么简单。要是当初对吉——~
== C0AUR25J ~算了。抱歉提起这个。~
END

// Elminster

I_C_T AMELM01 0 C0AuraAMELM01
== C0AUR25J IF ~IsValidForPartyDialog("C0Aura") Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~哦，埃尔明斯特大师！再次见到您真是太荣幸了，先生！~
== AMELM01 ~荣幸的是我，年轻的建筑师。哟，看来自上次见面你长大了，无论身量还是自信。~
END

I_C_T AMELM01 16 C0AuraAMELM0116
== AMELM01 IF ~IsValidForPartyDialog("C0Aura")~ THEN ~啊，不过在我走之前……还有最后一件事。我有东西要交给你……嗯，更准确地说，是交给你的同伴奥瑞莉亚。~
== C0AUR25J ~给我，先生？那会是什么呢？~
== AMELM01 ~那得你自己看，亲爱的。我不过是在扮演一个谦卑的信使，受你那迷人的祖母密涅瓦之托。~
== C0AUR25J ~我祖母？！您最近见过她？您能告诉我她在哪儿——~
== AMELM01 ~啊，啊，我明白你的急切，可恐怕连我也不知道。我一生中很少见到像她那样任性又自由的人……这可不简单。她随心所欲地去，连我也无法左右她的路。~
== AMELM01 ~不过，那是一次愉快的相遇，她似乎莫名地预感我迟早会遇见你和<CHARNAME>，于是留给我这些从某次旧冒险中带来的东西……字面意义上的斗篷和匕首，往昔冒险的遗物，时间只让它们的魔法更强。~
DO ~GiveItemCreate("c0adagg1","C0Aura",1,0,0) GiveItemCreate("C0aclck2","C0Aura",1,0,0)~
== AMELM01 ~也许她知道你这趟旅途的凶险，想以自己的方式帮忙。她还要我向你保证，等时机到了，你们的路自会相交。~
== C0AUR25J ~我……我明白了。我希望她说到做到。我有很多话想跟她说，为了我爸爸，也为了我自己。谢谢你把这些带给我。~
== AMELM01 ~那么，我在这儿的责任已尽，该去做下一件事了。你看，我的工作永远做不完。倒是你，<CHARNAME>，若你能顺利把这趟旅途走到尽头，也许能找到些安宁。告辞，祝你好运！~
END

INTERJECT AMSMITH 0 C0AuraAMSMITH0
== C0AUR25J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~嘿，那是桑巴尔学院的徽记！可我认不得你。你是谁？~
EXTERN AMSMITH 2

INTERJECT AMSMITH 2 C0AuraAMSMITH2
== C0AUR25J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~凯里克？就是那个武器工程的老教授？天哪，原来你一直在这儿！~
END
++ ~你认识这个怪侏儒，奥拉？~ EXTERN C0AUR25J C0AuraAMSMITH-TALK

CHAIN C0AUR25J C0AuraAMSMITH-TALK
~不认识。可我叔叔讲过些他在职时的故事。这位前辈破了留职察看次数的旧纪录——因为屡次失职、课堂上不负责任的行为，还有宣扬并教授，呃……“有争议”的设计方法。倒不是我知道，武器工程本来就不是我特别感兴趣的课……~
== AMSMITH ~哼！全是诽谤，*诽谤*，我告诉你，是我那些势利又嫉妒的老同事想毁我名声。学生们可*爱*我，我告诉你！~
== C0AUR25J ~我，呃，就信你说的吧。那你离开兰坦以后都在做什么？~
EXTERN AMSMITH 3

I_C_T AMSMITH 19 C0AuraAMSMITH19
== C0AUR25J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~呃，哇。老实说……我这辈子大概见过上千种设计图，可*还是*没搞懂这是怎么回事。这……东西，我绝对没想到。~
END

I_C_T2 AMSMITH 20 C0AuraAMSMITH20
== C0AUR25J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~他走了……我真希望能在场，看教授们见到他带着研究成果出现时的表情。唉……~
END

// Gorion Wraith

EXTEND_BOTTOM HGWRA01 18
IF ~Global("C0AuraRomanceActive","GLOBAL",2) InParty("C0Aura")~ EXTERN HGWRA01 AURA-GORIONWRAITH
END

CHAIN HGWRA01 AURA-GORIONWRAITH
~你必须给你所爱之人带来的那不可避免的痛，又该如何？这可怜、可悲、天真的侏儒……~
== C0AUR25J ~我也许是那些，可我对<CHARNAME>的爱不是错误。不是！~
EXTERN HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C0AU25C1")~ EXIT
END

CHAIN 
IF ~Global("C0AuraToBRomWraith","GLOBAL",0)~ THEN C0AU25WR tob-wraith1
~嗯……？是谁的手，把我从净土召回去？~
DO ~SetGlobal("C0AuraToBRomWraith","GLOBAL",1)~
== C0AUR25J ~丽华小姐……？~
== C0AU25WR ~啊，是你，亲爱的孩子。你……找到你的名字，和你自己了吗？看到这个让我欢喜。~
== C0AUR25J ~我……我找到了。我欠你太多。我也那么想念你……可你不该在这儿！~
== C0AU25WR ~我不该？可我不是说过，只要你需要我，我就永远与你同在？还是你已经把我忘了、丢下了？~
== C0AUR25J ~不！不！我没忘了你，一点都没有！求你……原谅我……~
== C0AU25WR ~我当然原谅你。我永远会原谅你。可你造下的那些罪，那些你该负责的暴力与死亡，你怎能原谅自己？~
== C0AUR25J ~对不起……我太抱歉了……是我害你死的。可你该安息了……我……我把事情纠正了……~
== C0AU25WR ~是的，你报了仇。可我求的是复仇吗？不，我献出生命，是希望流血终结。是你决定我的命值得用来延续暴力的循环，并永远玷污你的灵魂。~
== C0AUR25J ~你……你说得对。可是我——~
== C0AU25WR ~你以为只取一条浸满罪恶的命就够了吗？也许吧，可那不止一条，对吧？一条变成一百条、一千条……你用那张弓取了多少命，那张我在无数夜里教你拉开的弓？这些血……难道不也染在我手上？~
== C0AUR25J ~我……~
== C0AU25WR ~看来我们的心都不纯净，孩子。而如今，因你的无知，我们都在受苦。即使在死后，我也得不到安宁。可若你真已抛弃了我，那我就替我们两个背负罪孽的重量。~
== C0AUR25J ~不……我……我做了什么？我……~
END
  ++ ~别听，奥拉！你不能为发生的事责怪自己！~ EXTERN HGWRA01 25
  ++ ~住手，葛立安！她不该受这个！~ EXTERN HGWRA01 25
  ++ ~够了！我不许这继续下去！~ EXTERN HGWRA01 25
  + ~CheckStatGT(Player1,16,WIS)~ + ~别信，奥拉！那不是真的！~ EXTERN HGWRA01 25

// Iyacanth

I_C_T BAZEYE01 9 C0AuraBAZEYE019
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~唔……也'许是他们故意让长霉的那种奶酪……呃，抱歉，<CHARNAME>。我忍不住捏鼻子。~
END

// Nyalee

I_C_T HGNYA01 29 C0AuraHGNYA0129
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~母爱有时候真是可怕的东西……抱歉我们不得不这么做。~
END

// Solar, final interjections at the Throne of Bhaal and <CHARNAME>'s choice for the romanced protagonists.

// non-romanced

I_C_T FINSOL01 27 C0AuraSolarFriend1
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) !Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~唉……很快就要结束了，对吧？我本希望这趟旅途不会结束。可我们为你打到了这一步，现在……剩下的就是你的选择。我想象不出这一刻对你有多重。~
== C0AUR25J IF ~GlobalLT("PPEvilChoices","GLOBAL",5)~ THEN ~要是我，我都不知自己能不能避开诱惑……嘿嘿，我想我的勇气要赶上你还得很久，<CHARNAME>。不过不管你选什么，我都投你的信任票。~
== C0AUR25J IF ~GlobalLT("PPEvilChoices","GLOBAL",2)~ THEN ~我知道你若愿意，会是个了不起的神。可不管怎样，希望你不介意我永远记住你现在的样子……有史以来最鼓舞人心的人。~
== C0AUR25J IF ~GlobalGT("PPEvilChoices","GLOBAL",1)
GlobalLT("PPEvilChoices","GLOBAL",4)~ THEN ~我想接过这么大的力量不会容易……我也不能说我不担心它会把你变成什么样。可我希望我能永远记住你是位坚强的领袖，也是朋友。~
== C0AUR25J IF ~GlobalGT("PPEvilChoices","GLOBAL",3)
GlobalLT("PPEvilChoices","GLOBAL",6)~ THEN ~我知道这绝对诱人，我也不能告诉你别接受……可我担心这么大的力量一旦用于恶，会怎样影响你。无论如何，我宁愿永远记住你是一个人。~
END

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraRomanceActive","GLOBAL",2) Global("C0AuraSolarPers","GLOBAL",0)~ DO ~SetGlobal("C0AuraSolarPers","GLOBAL",1)~ EXTERN C0AUR25J C0AuraSolarPers
END

CHAIN C0AUR25J C0AuraSolarPers
~我……我到底还是没准备好这一刻。可是……至少我很高兴你有选择。这对你更公平，对我也是……我还能留一点希望，虽然自私。哪怕只有一点。~
END
++ ~你要我怎么做，奥拉？~ EXTERN C0AUR25J C0AuraSolarPers1.1
++ ~我不会把你留下，奥拉。我爱你。~ EXTERN C0AUR25J C0AuraSolarPers1.2
++ ~这不是选择，奥拉。我觉得无论如何我都得接受这份力量。对不起。~ EXTERN C0AUR25J C0AuraSolarPers1.3
++ ~别哭。这已经够难了。~ EXTERN C0AUR25J C0AuraSolarPers1.4
++ ~我不知道该做哪个决定。~ EXTERN C0AUR25J C0AuraSolarPers1.1

CHAIN C0AUR25J C0AuraSolarPers1.1
~我没法替你选，<CHARNAME>。我答应过不管你选什么都支持你，只要你觉得那是对的……~
EXTERN C0AUR25J C0AuraSolarPers1.5

CHAIN C0AUR25J C0AuraSolarPers1.2
~我知道你那么在意我，<CHARNAME>。可是……嘿嘿，身为一个负责任的兰坦人，我还是得看事情的两面，哪怕我不想，对吧？~
EXTERN C0AUR25J C0AuraSolarPers1.5

CHAIN C0AUR25J C0AuraSolarPers1.3
~你没什么需要道歉的，<CHARNAME>，永远没有。我一直在为这一刻做准备，即使我失败了……我仍要你无论怎样都做出正确的选择。~
EXTERN C0AUR25J C0AuraSolarPers1.5

CHAIN C0AUR25J C0AuraSolarPers1.4
~我……我不会的。我会尽量不哭。这很难，可那最难的部分我已经过去了。现在，我只想鼓励你去做你认为对的事。~
EXTERN C0AUR25J C0AuraSolarPers1.5

CHAIN C0AUR25J C0AuraSolarPers1.5
~我当然想让你留下。若我能许一个愿，我会选我们永远在一起。可现在你手上握着的是我……还有可能是多元宇宙的其余一切。我没法跟那相比。~
= ~这是你的选择，也是你的责任，<CHARNAME>。我想不出谁比你更适合这个位置，也许不接受反倒是错的。我不知道……我只是个凡人，永远都是。你不一样。你了不起、美好、强大……~
= ~多亏你，我成了超出自己想象的人。我也能坚强。至少现在，为了你……若你觉得接受这份力量是对的，若你觉得能用它做出伟大的事，那你就该接受。我会像一直以来那样支持你。~
= ~可只要有一丝可能……哪怕最微小的一丝……我们能一起从这里走出去，并肩而行……我会尽一切确保你永不后悔。在无穷的生生世世里都不后悔。~
= ~我能说的就这些了。我——我若再想下去，大概又要崩溃……那会把一切搞砸，不是吗？该选了，<CHARNAME>……但在你选之前，让我握着你的手。~
END
COPY_TRANS FINSOL01 27

// romanced, PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraRomanceActive","GLOBAL",2) Global("C0AuraSolarLeave","GLOBAL",0)~ DO ~SetGlobal("C0AuraSolarLeave","GLOBAL",1)~ EXTERN C0AUR25J C0AuraSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraRomanceActive","GLOBAL",2) Global("C0AuraSolarLeave","GLOBAL",0)~ DO ~SetGlobal("C0AuraSolarLeave","GLOBAL",1)~ EXTERN C0AUR25J C0AuraSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraRomanceActive","GLOBAL",2) Global("C0AuraSolarLeave","GLOBAL",0)~ DO ~SetGlobal("C0AuraSolarLeave","GLOBAL",1)~ EXTERN C0AUR25J C0AuraSolarLeave
END

CHAIN C0AUR25J C0AuraSolarLeave
~哦……~
= ~我……我接受了。我答应过……~
= ~<CHARNAME>，我——我爱你！我永远不会忘记你！还有……有一天，总有一天……我们会再见的。我确信！~
= ~再见……~
END
COPY_TRANS FINSOL01 29

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraRomanceActive","GLOBAL",2) Global("C0AuraSolarStay","GLOBAL",0)~ DO ~SetGlobal("C0AuraSolarStay","GLOBAL",1)~ EXTERN C0AUR25J C0AuraSolarStay
END

CHAIN C0AUR25J C0AuraSolarStay
~<CHARNAME>，你……这是真的吗？我真听对了？你为什么要……~
END
++ ~你想太多了，我可爱的小学者。我做了心之所愿。~ EXTERN C0AUR25J C0AuraSolarStay.1
++ ~就跟你说过，你可以信我。~ EXTERN C0AUR25J C0AuraSolarStay.1
++ ~所有神明的全部力量，都不值得让你心碎。~ EXTERN C0AUR25J C0AuraSolarStay.1

CHAIN C0AUR25J C0AuraSolarStay.1
~我——哇，这真是……我是说，我梦想过这个，我*想要*这个，可还是——~
= ~唉，我到现在还争辩什么？我现在是有史以来最快乐的侏儒！这点不接受辩论！~
= ~我们要去看那些我们从没机会看的东西……哈哈……哈哈哈！要是我能做到，我现在就要往天上放烟火庆祝，我太兴奋了！~
= ~啊……或者我现在就抱着你。嗯，真的没有比这更好的了……~
END
COPY_TRANS FINSOL01 32

// Saemon

I_C_T AMSAEMON 6 C0AuraAMSAEMON6
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*叹气* 唉……到这时候，除了摇头我还能做什么？~
END

EXTEND_BOTTOM SARPROVM 0
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraRomanceActive","GLOBAL",2)~ EXTERN C0AUR25J C0AuraSaradushVampire
END

CHAIN C0AUR25J C0AuraSaradushVampire
~这事有点不对劲，<CHARNAME>……这人似乎知道什么要紧事，也许你该跟着他。可要小心……我脊背发凉。我会跟在你后面不远，以防万一。~
EXTERN SARPROVM 1

// Saradush

I_C_T2 SARTHF1 12 C0AuraSARTHF112
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦不。不不不不不不，别。别那么做……呀！~
END

// Sarevok

I_C_T SAREV25A 0 C0AuraSarevokToB
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~天哪。我的“意外恶劣惊喜”清单上可没这一项。~
END

// Volo's obligatory interjection in Saradush.

EXTEND_TOP SARVOLO 9 #1
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) !Global("C0AuraRomanceActive","GLOBAL",2)~ + ~跟我说说奥拉。~ + C0AuraVoloBio
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~跟我说说奥拉。~ + C0AuraVoloBioRom
END

CHAIN SARVOLO C0AuraVoloBio
~奥瑞莉亚·格利默夏恩以她在科技与法术上无可匹敌的才能，证明了一颗有创造力的头脑足以匹敌任何刀剑，她确实成了<CHARNAME>最珍视的同伴之一，也是兰坦有史以来最伟大的头脑之一。~
END
IF ~~ EXTERN SARVOLO 9
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ EXTERN C0AUR25J C0AuraVoloBioReact

CHAIN SARVOLO C0AuraVoloBioRom
~从兰坦到科祖库拉再到安姆，奥瑞莉亚·格利默夏恩走遍费伦大地寻求知识，而她最宝贵的发现，无疑是她与可爱的<CHARNAME>之间发展出的情谊与爱。~
END
IF ~~ EXTERN SARVOLO 9
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ EXTERN C0AUR25J C0AuraVoloBioReact

CHAIN C0AUR25J C0AuraVoloBioReact
~哦，我要进伏罗大师的书里了！我不是在做梦吧？求你说我没做梦！~
EXTERN SARVOLO 9

// Watcher's Keep

EXTEND_BOTTOM GORLUM2 0
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("C0AuraLumTheMad","GLOBAL",0)~ EXTERN C0AUR25J aura-lum
END

EXTEND_BOTTOM GORLUM2 0
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("C0AuraLumTheMad","GLOBAL",0)~ EXTERN C0AURA2J aura-lum
END

CHAIN C0AUR25J aura-lum
~嗯，这真是堆古怪的乐子，对吧？“疯”绝对是我会用的词——它完全不讲设计的一致性、直观性，甚至基本的安全性。~
END
  ++ ~你能看懂这东西吗，奥拉？~ DO ~喂，<CHARNAME>！别担心，我不会忘了去找你。我只在这儿待一会儿叙叙。~ + aura-lum-1

CHAIN C0AURA2J aura-lum
~嗯，这真是堆古怪的乐子，对吧？“疯”绝对是我会用的词——它完全不讲设计的一致性、直观性，甚至基本的安全性。~
END
  ++ ~你能看懂这东西吗，奥拉？~ DO ~喂，<CHARNAME>！别担心，我不会忘了去找你。我只在这儿待一会儿叙叙。~ + aura-lum-1

CHAIN C0AUR25J aura-lum-1
~呃……~
== C0AUR25J ~……嗯。~
== C0AUR25J ~*叹气* 老实说，我都不确定自己想不想碰这东西，更别说着试着弄懂它的框架。我大概不会完好无损地回来。~
== C0AUR25J ~不过我想我现在有点明白我们在这附近看到的那些疯癫笔记是什么意思了……这样吧，虽然我的常识告诉我根本不该想着玩这台机器，我可以试着破译笔记里的一些组合，看看它们大概会做什么。~
== C0AUR25J ~前提是你还没把它们当废料扔掉。~
EXTERN GORLUM2 1

CHAIN C0AURA2J aura-lum-1
~呃……~
== C0AURA2J ~……嗯。~
== C0AURA2J ~*叹气* 老实说，我都不确定自己想不想碰这东西，更别说着试着弄懂它的框架。我大概不会完好无损地回来。~
== C0AURA2J ~不过我想我现在有点明白我们在这附近看到的那些疯癫笔记是什么意思了……这样吧，虽然我的常识告诉我根本不该想着玩这台机器，我可以试着破译笔记里的一些组合，看看它们大概会做什么。~
== C0AURA2J ~前提是你还没把它们当废料扔掉。~
EXTERN GORLUM2 1

EXTEND_TOP GORLUM2 2
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("C0AuraWKLum","GLOBAL",0)
OR(8)
PartyHasItem("LUM1")
PartyHasItem("LUM2")
PartyHasItem("LUM3")
PartyHasItem("LUM4")
PartyHasItem("LUM5")
PartyHasItem("LUM6")
PartyHasItem("LUM7")
PartyHasItem("LUM8")~ + ~让奥拉破译笔记里的组合。~ EXTERN C0AUR25J aura-lum-2
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("C0AuraWKLum","GLOBAL",0)
OR(8)
PartyHasItem("LUM1")
PartyHasItem("LUM2")
PartyHasItem("LUM3")
PartyHasItem("LUM4")
PartyHasItem("LUM5")
PartyHasItem("LUM6")
PartyHasItem("LUM7")
PartyHasItem("LUM8")~ + ~让奥拉破译笔记里的组合。~ EXTERN C0AURA2J aura-lum-2
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraWKLum","GLOBAL",1)
OR(8)
PartyHasItem("LUM1")
PartyHasItem("LUM2")
PartyHasItem("LUM3")
PartyHasItem("LUM4")
PartyHasItem("LUM5")
PartyHasItem("LUM6")
PartyHasItem("LUM7")
PartyHasItem("LUM8")~ + ~使用奥拉破译出的组合。~ EXTERN GORLUM2 aura-lum-3
END

CHAIN C0AUR25J aura-lum-2
~嗯，让我看看……咕哝，咕哝……嗯，然后……~
DO ~SetGlobal("C0AuraWKLum","GLOBAL",1)~
== C0AUR25J ~给你！~
EXTERN GORLUM2 aura-lum-3

CHAIN C0AURA2J aura-lum-2
~嗯，让我看看……咕哝，咕哝……嗯，然后……~
DO ~SetGlobal("C0AuraWKLum","GLOBAL",1)~
== C0AURA2J ~给你！~
EXTERN GORLUM2 aura-lum-3

CHAIN GORLUM2 aura-lum-3
~你要用哪个组合？~
END
 + ~Global("STR","GLOBAL",0)
 PartyHasItem("LUM1")~ + ~拉短杆，拉中杆，然后按方形按钮选“大肌肉”。~ DO ~SetGlobal("square","GLOBAL",1)
SetGlobal("short","GLOBAL",1)
SetGlobal("medium","GLOBAL",1)~ EXTERN GORLUM2 aura-lum-4
 + ~Global("DEX","GLOBAL",0)
 PartyHasItem("LUM7")~ + ~拉短杆，转蓝色旋钮，然后按方形按钮变成“敏捷轻快”（但愿别变得更矮……）~ DO ~SetGlobal("square","GLOBAL",1)
SetGlobal("blue","GLOBAL",1)
SetGlobal("short","GLOBAL",1)~ EXTERN GORLUM2 aura-lum-4
 + ~Global("CON","GLOBAL",0)
 PartyHasItem("LUM2")~ + ~拉长杆，转红色旋钮，然后按圆形按钮“当个硬汉”。~ DO ~SetGlobal("circle","GLOBAL",1)
SetGlobal("red","GLOBAL",1)
SetGlobal("long","GLOBAL",1)~ EXTERN GORLUM2 aura-lum-4
 + ~Global("INT","GLOBAL",0)
 PartyHasItem("LUM8")~ + ~拉长杆，按圆形按钮，然后转蓝色旋钮，如果你想当“聪明人”。~ DO ~SetGlobal("circle","GLOBAL",1)
SetGlobal("blue","GLOBAL",1)
SetGlobal("long","GLOBAL",1)~ EXTERN GORLUM2 aura-lum-4
 + ~Global("WIS","GLOBAL",0)
 PartyHasItem("LUM5")~ + ~遵从“智者之言”，按下圆形、方形和三角形按钮。~ DO ~SetGlobal("circle","GLOBAL",1)
SetGlobal("square","GLOBAL",1)
SetGlobal("triangle","GLOBAL",1)~ EXTERN GORLUM2 aura-lum-4
 + ~Global("CHA","GLOBAL",0)
 PartyHasItem("LUM6")~ + ~拉短杆，然后转红色和绿色旋钮，证明你是“美人”。~ DO ~SetGlobal("red","GLOBAL",1)
SetGlobal("green","GLOBAL",1)
SetGlobal("short","GLOBAL",1)~ EXTERN GORLUM2 aura-lum-4
 + ~Global("ITEM","GLOBAL",0)
 PartyHasItem("LUM3")~ + ~拉中杆，转绿色旋钮，然后按三角形按钮召唤“风暴”。~ DO ~SetGlobal("triangle","GLOBAL",1)
SetGlobal("green","GLOBAL",1)
SetGlobal("medium","GLOBAL",1)~ EXTERN GORLUM2 aura-lum-4
 + ~Global("PermMR","GLOBAL",0)
 PartyHasItem("LUM4")~ + ~拉长杆，然后转蓝色和绿色旋钮“停止魔法”。~ DO ~SetGlobal("long","GLOBAL",1)
SetGlobal("blue","GLOBAL",1)
SetGlobal("green","GLOBAL",1)~ EXTERN GORLUM2 aura-lum-4
 + ~Global("stairbutton","GLOBAL",0)
 PartyHasItem("PLOT04J")~ + ~按三角形按钮，转红色旋钮，然后拉中杆。（这样我们就能赶紧从这鬼——*匆忙划掉*——见鬼的地方出去！）~ DO ~SetGlobal("triangle","GLOBAL",1)
SetGlobal("red","GLOBAL",1)
SetGlobal("medium","GLOBAL",1)~ EXTERN GORLUM2 aura-lum-4
 ++ ~暂时别碰这台机器。~ EXTERN GORLUM2 7

CHAIN GORLUM2 aura-lum-4
~你试探着照指示去做……~
EXTERN GORLUM2 5

EXTEND_BOTTOM DOMT 19
IF ~Kit(LastTalkedToBy,C0AURA)~ EXTERN DOMT 32
END

I_C_T DOMT 2 C0AuraDeckOfManyThings
== C0AUR25J IF ~IsGabber("C0Aura") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~*深吸气* 好，豁出去了……祝我好运。~
END

I_C_T DOMT 3 C0AuraDeckOfManyThings
== C0AUR25J IF ~IsGabber("C0Aura")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~*深吸气* 好，豁出去了……祝我好运。~
END

I_C_T DOMT 4 C0AuraDeckOfManyThings
== C0AUR25J IF ~IsGabber("C0Aura") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~*深吸气* 好，豁出去了……祝我好运。~
END

I_C_T DOMT 2 C0AuraDeckOfManyThings
== C0AURA2J IF ~IsGabber("C0Aura") !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~*深吸气* 好，豁出去了……祝我好运。~
END

I_C_T DOMT 3 C0AuraDeckOfManyThings
== C0AURA2J IF ~IsGabber("C0Aura") !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~*深吸气* 好，豁出去了……祝我好运。~
END

I_C_T DOMT 4 C0AuraDeckOfManyThings
== C0AURA2J IF ~IsGabber("C0Aura") !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~*深吸气* 好，豁出去了……祝我好运。~
END

I_C_T GORAPR 10 C0AuraGORAPR10
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~那太糟了！魔法器物绝不该被滥用，否则只会招来灾难。~
END

I_C_T GORAPR 10 C0AuraGORAPR10
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN ~那太糟了！魔法器物绝不该被滥用，否则只会招来灾难。~
END

I_C_T GORCHR 6 C0AuraGORCHR6
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~呃，<CHARNAME>，我绝不是鼓吹狂热，可你不觉得理智的做法是……别……去信笼子里那只又大又吓人、会变形的恶魔？~
END

I_C_T GORCHR 6 C0AuraGORCHR6
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN ~呃，<CHARNAME>，我绝不是鼓吹狂热，可你不觉得理智的做法是……别……去信笼子里那只又大又吓人、会变形的恶魔？~
END

I_C_T FSRIDD 1 C0AuraFSRIDD1
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~小心，<CHARNAME>。这类试炼总是伴着沉重风险……你若需要任何帮助，就说一声，好吗？~
END

I_C_T FSRIDD 1 C0AuraFSRIDD1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN ~小心，<CHARNAME>。这类试炼总是伴着沉重风险……你若需要任何帮助，就说一声，好吗？~
END

EXTEND_BOTTOM FSRIDD 3
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~帮帮我，奥拉！~ EXTERN C0AUR25J watch.imp.riddle
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ + ~帮帮我，奥拉！~ EXTERN C0AURA2J watch.imp.riddle
END

CHAIN C0AUR25J watch.imp.riddle
~嗯……让我想想……只有当这小恶魔是雌性才说得通，那答案只能是……七？~
EXTERN FSRIDD watch.imp.riddle.1

CHAIN C0AURA2J watch.imp.riddle
~嗯……让我想想……只有当这小恶魔是雌性才说得通，那答案只能是……七？~
EXTERN FSRIDD watch.imp.riddle.1

EXTEND_BOTTOM FSRIDD 4
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN C0AUR25J watch.imp.riddle.2
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ EXTERN C0AURA2J watch.imp.riddle.2
END

CHAIN FSRIDD watch.imp.riddle.1
~啐。我该先加一条预防条款：只有队长能回答。不管怎样……~
EXTERN FSRIDD 6

CHAIN C0AUR25J watch.imp.riddle.2
~等等，<CHARNAME>，我想我懂了。是七……对吧？~
EXTERN FSRIDD watch.imp.riddle.1

CHAIN C0AURA2J watch.imp.riddle.2
~等等，<CHARNAME>，我想我懂了。是七……对吧？~
EXTERN FSRIDD watch.imp.riddle.1

INTERJECT GORMAD1 8 C0AuraGORMAD18
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~这是什么可怕的心境啊……！冷静下来看着我，你这可怜古怪的家伙。我看起来像恶魔吗？恶魔能露出这么可爱的笑容吗？~
EXTERN GORMAD1 11

INTERJECT GORMAD1 8 C0AuraGORMAD18
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN ~这是什么可怕的心境啊……！冷静下来看着我，你这可怜古怪的家伙。我看起来像恶魔吗？恶魔能露出这么可爱的笑容吗？~
EXTERN GORMAD1 11

INTERJECT JAN25J 13 C0AuraJAN25J13
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~呃，扬！真不是时候，你知道吗？！~
EXTERN JAN25J 14

INTERJECT JANJ 187 C0AuraJAN25J13
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN ~呃，扬！真不是时候，你知道吗？！~
EXTERN JANJ 188

I_C_T GORODR1 35 C0AuraGORODR135
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~所以就因为这样，派别人去牺牲、连会发生什么都不知道，就是*对*的？！~
END

I_C_T GORODR1 35 C0AuraGORODR135
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN ~所以就因为这样，派别人去牺牲、连会发生什么都不知道，就是*对*的？！~
END

I_C_T GORDEMO 1 C0AuraGORDEMO1
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~我……我感到什么了。我以为是我的心跳，可……是我的勾玉。它在回应某种存在。有东西在这儿……强大、古老……也许甚至超乎理解。小心，<CHARNAME>。~
END

I_C_T GORDEMO 1 C0AuraGORDEMO1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN  ~我……我感到什么了。我以为是我的心跳，可……是我的勾玉。它在回应某种存在。有东西在这儿……强大、古老……也许甚至超乎理解。小心，<CHARNAME>。~
END

I_C_T GORCAMB 17 C0AuraGORCAMB17
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~你——你有一副万象牌？！太可怕了！可也很迷人……嗯，我知道我们不该，可这是一生一次的机会……常常真是字面意义上的一次……~
END

I_C_T GORCAMB 17 C0AuraGORCAMB17
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN ~你——你有一副万象牌？！太可怕了！可也很迷人……嗯，我知道我们不该，可这是一生一次的机会……常常真是字面意义上的一次……~
END

// Talks

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBPocketPlane","GLOBAL",1)~ THEN C0AUR25J tob-pocketplane
~那么……我想从今往后这儿就算我们的家了，嗯？还……不错？~ [C0BLANK]
DO ~SetGlobal("C0AuraToBPocketPlane","GLOBAL",2)~
END
++ ~真不算，不过努力值得加分。~ + tob-pocketplane-1
++ ~本来可以更舒适、更好看的。你有什么主意吗？~ + tob-pocketplane-1
++ ~别浪费时间闲聊。我们只待必要的时间。~ + tob-pocketplane-2

CHAIN C0AUR25J tob-pocketplane-1
~我希望能说点好话，可是……嗯，我脑子一片空白。不过这也说明如今没什么能让我紧张了。要是从前，我早尖叫着跑了。~
EXTERN C0AUR25J tob-pocketplane-3

CHAIN C0AUR25J tob-pocketplane-2
~等等，等等，我正要说到点上。真是的，就算在你家里，我们也歇不了一会儿。~
EXTERN C0AUR25J tob-pocketplane-3

CHAIN C0AUR25J tob-pocketplane-3
~总之，我想说的是，这地方虽然不好看，至少宽敞、还算安全，所以我想我能像在自己工坊里那样，在这儿给自动机器做日常维护。~
= ~要是我们找到更多能让它功能更好的零件，就回这儿来，我给自己腾点地方干活。这比走回我旧居方便些，虽然没那么舒服。~
= ~好了，就这些。能走了吗？就算我能在这儿控制住神经，也不代表我喜欢看着它。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBBowstring","GLOBAL",1)~ THEN C0AUR25J tob-bowstring
~这……这是贡德的弓弦！在动荡之年，奇迹缔造者亲自把它赐给我们兰坦人，酬谢我们的款待。我……我见过它的图样，可从没想到能亲手握着它！~ [C0BLANK]
DO ~SetGlobal("C0AuraToBBowstring","GLOBAL",2)~
END
  ++ ~它怎么会在卓尔手里？~ + tob-bowstring-1
  ++ ~你看起来很兴奋。它有什么用？~ + tob-bowstring-2
  ++ ~不过是又一件小饰物。跟其他的一起收起来。~ + tob-bowstring-3

CHAIN C0AUR25J tob-bowstring-1
~……~
= ~我过去听见过叔叔跟我父亲谈话。有些兰坦人怀疑，我们的人在国外丧命的那些案子，不只是意外。我不愿去想。~
EXTERN C0AUR25J tob-bowstring-2

CHAIN C0AUR25J tob-bowstring-2
~这是一件神器，<CHARNAME>，能把任何安上它的弓或弩赋予惊人的力量。连最强的弓也能因贡德的弓弦变得更强……或者说，贡德教会是这样讲的。~
== C0AUR25J ~我在想……要是我能用它进一步改进太阳射手……~
== C0AUR25J IF ~PartyHasItem("c0aubo6")~ THEN ~我以为自己已经把设计做到完美了。可有了贡德的弓弦，也许还有一步可进。毕竟我远远比不上我们守护神的本事。~
== C0AUR25J IF ~!PartyHasItem("c0aubo6")~ THEN ~这个念头先放一放。我相信这弓弦能让它先进到我无法想象的地步，可首先……我想看看凭自己的本事能走到多远。也许等我到了自己的极限，再考虑用它。~
== C0AUR25J ~当然，这东西不只可以用在我自己的弓上，<CHARNAME>。你若有什么打算，我很乐意让你决定该怎么用它。~
== C0AUR25J IF ~PartyHasItem("c0aubo6")~ THEN ~可你若允许……我想看看奇迹缔造者的造物与我的手艺结合，会生出什么奇迹。~
EXIT

CHAIN C0AUR25J tob-bowstring-3
~不，等等，在我们动手之前……~
EXTERN C0AUR25J tob-bowstring-2

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBBowstring","GLOBAL",3)~ THEN C0AUR25J tob-bowstring2
~它……它真美。~ [C0BLANK]
DO ~SetGlobal("C0AuraToBBowstring","GLOBAL",4)~
== C0AUR25J ~说自己的作品这样有点奇怪，可是……我能感到金属本身里魔法与工艺的和谐。很难解释。~
== C0AUR25J ~叔叔会为我骄傲的……要是他能看到。以我这年纪说这话也许太早，可我简直要把这当作我的毕生杰作了。~
== C0AUR25J ~走吧，<CHARNAME>。我还得在实战里试试，才真敢说这么大胆的话。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraPerfectSunshooter","GLOBAL",1)~ THEN C0AUR25J C0AuraSunshooter
~好了。过了这么久，终于完成了……完美的太阳射手。我从没想过能看到这一天。~ [C0BLANK]
DO ~SetGlobal("C0AuraPerfectSunshooter","GLOBAL",2)~
== C0AUR25J ~我觉得自己该更高兴些，可我满脑子想的都是，我们打了多少仗才逼我把这个做完。我感到愧疚。既为我把这张弓经历的一切，也为我没能像它应得的那样欣赏它。~
END
  ++ ~它太了不起了。你该为你造出的东西自豪。~ + C0AuraSunshooter-1
  ++ ~武器怎么用，由持用者决定。只要你知道什么是对的，就不该为带着这张弓羞耻。~ + C0AuraSunshooter-2
  ++ ~既然这意味着你更有用，我就满意了。~ + C0AuraSunshooter-0

CHAIN C0AUR25J C0AuraSunshooter-0
~是，我想我也该满意。走吧，<CHARNAME>。我该尽快试一试。~
EXIT

CHAIN C0AUR25J C0AuraSunshooter-1
~我是。这是第一件我亲手参与制造的武器，到如今，它从没离开过我身边。~
EXTERN C0AUR25J C0AuraSunshooter-3

CHAIN C0AUR25J C0AuraSunshooter-2
~我不羞耻。我知道我们走的路，是我们能做到的最好。我也不会为这张弓羞耻。它为我做了这么多之后，不会。~
EXTERN C0AUR25J C0AuraSunshooter-3

CHAIN C0AUR25J C0AuraSunshooter-3
~我只是想起戴达罗斯叔叔第一次给我看成品的那天……那时我多天真，连它沾满血的样子都想象不出。~
= ~奇怪的是，尽管我知道会用它打我不喜欢的仗，我从没想过有一天我会真的放下它。如今它像我的伙伴……所以我才努力把它做到最好。~
= ~虽然我不兴奋，可我……还是高兴。若这意味着我能为你做更多，那我成功就是好事。也许这正是我当初想把它做到完美的全部理由。~
= ~我觉得完美太阳射手的诞生，你也该记一功，你不觉得吗，<CHARNAME>？嘿嘿。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraAbazigalWater","GLOBAL",1)~ THEN C0AUR25J C0AuraAbazigalWater
~……~ [C0BLANK]
DO ~SetGlobal("C0AuraAbazigalWater","GLOBAL",2)~
== C0AUR25J ~我们得……从水里过去？~
END
  ++ ~抱歉。可看来这是我们唯一的选择。~ + C0AuraAbazigalWater.1
  ++ ~除非你手艺够好、能撬开那些大门，是的。~ + C0AuraAbazigalWater.1
  ++ ~你想的话可以留在这儿。或者我送你回口袋位面。~ + C0AuraAbazigalWater.2

CHAIN C0AUR25J C0AuraAbazigalWater.1
~*叹气* 不管我怎么努力，就是躲不开它，对吧……~
EXTERN C0AUR25J C0AuraAbazigalWater.2

CHAIN C0AUR25J C0AuraAbazigalWater.2
~……不，不。我没事。我能做到。我都走到这一步了。~
= ~再说，我宁愿应付这个，也不要不知道你在那边会遇到什么。只是……别走得太靠前，好吗？最坏的情况下，我也许得靠你把我拉出来……~
EXIT
