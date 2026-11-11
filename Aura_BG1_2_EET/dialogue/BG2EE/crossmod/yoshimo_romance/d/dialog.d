I_C_T YRXVAM 7 C0AuraYoshimoRomance
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~不！为什么……为什么？！该死……你这该死的……怪物！~
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2YRRomanceTalk","GLOBAL",2)~ THEN BC0AURA2 YROM-1
~义桑……他真的很在乎你，不是吗？~ [C0BLANK]
END
  ++ ~你吃醋了？~ + YROM-1-1
  ++ ~我也在乎他。~ + YROM-1-2
  ++ ~我想跟你差不多吧。~ + YROM-1-3

CHAIN BC0AURA2 YROM-1-1
~……~
= ~是。当然愿意。我怎么会不愿意？~
EXTERN BC0AURA2 YROM-1-4

CHAIN BC0AURA2 YROM-1-2
~我知道。~
EXTERN BC0AURA2 YROM-1-4

CHAIN BC0AURA2 YROM-1-3
~不……不止。我在意你，是以仰慕你的方式。他也是……而且他在你身边时，更能做回自己。我看得出来。~
EXTERN BC0AURA2 YROM-1-4

CHAIN BC0AURA2 YROM-1-4
~我羡慕，可……我并不难过。你值得被爱，也该被爱。你是个了不起的人，<CHARNAME>……别人在乎你，才是应当的。~
= ~而且……希望你也拥有同样在乎的人。~
END
  ++ ~当然。你……还有他。你们对我都弥足珍贵。~ + YROM-1-5
  ++ ~请别太把这事放在心上。我不想让你把义桑看作我们之间的障碍。~ + YROM-1-5
  ++ ~你要是想让我做决定，就直说。~ + YROM-1-6

CHAIN BC0AURA2 YROM-1-5
~*摇头* 你不必解释，<CHARNAME>。我明白……我对现在这样很满意。真的。~
EXTERN BC0AURA2 YROM-1-6

CHAIN BC0AURA2 YROM-1-6
~<CHARNAME>，你不必做决定……说来也怪，我也不想让你做。义桑是我的朋友。不管怎么走，做了决定就会伤人……所以哪怕这是懦弱，我也宁愿耐心等着，享受我们还能维持原样的这段日子。~
= ~不过……散步的时候，要是我请你牵一会儿我的手……你会答应吗？~
END
  ++ ~当然。~ + YROM-1-7
  ++ ~对不起。我做不到。现在不行。~ + YROM-1-8

CHAIN BC0AURA2 YROM-1-7
~谢谢。~
EXIT

CHAIN BC0AURA2 YROM-1-8
~我明白。没关系的……就像我说的，我对现在这样很满意……哪怕我知道它不会长久。~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraBG2YRRomanceTalk","GLOBAL",4)~ THEN BC0AURA2 YROM-2
~吉野？~ [C0BLANK]
== BYOSHIM ~什么事，我的朋友？~
== BC0AURA2 ~谢谢你陪在<CHARNAME>身边。~
== BYOSHIM ~为什么……那可当不起你的感谢。她在这里，我得的好处不比你少。~
== BC0AURA2 ~你愿意永远跟她在一起吗？~
== BYOSHIM ~我……对任何人来说，“永远”都是个难以企求的东西，亲爱的。能享受当下的每一刻，我就知足了。~
== BC0AURA2 ~我也一样。~
== BYOSHIM ~你……我希望你不至于怨恨？她值得有一个能永远守在她身边的人，给她快乐……需要多久就给多久。像你这样的人。~
== BC0AURA2 ~我决不会怨恨你。我们如何度过每一刻，比它能持续多久更重要。所以……我希望我们俩都能活着，趁还在世，把<CHARNAME>应得的爱给她。~
== BYOSHIM ~是……我——我也真的这样希望。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2YRRomanceTalk","GLOBAL",6)~ THEN YOSHJ YROM-3
~我们那位温和的朋友，小奥拉……她挺喜欢你的，<CHARNAME>。我看得出来。~ [C0BLANK]
END
  ++ ~我知道。你担心这会成为我们的问题吗？~ + YROM-3-1
  ++ ~你听着有点吃醋，义桑。~ + YROM-3-2

CHAIN YOSHJ YROM-3-1
~我……有我的担忧，<CHARNAME>，可都不关她。毕竟，我们都有权拥有自己的感情……每一个人，无论理当如何。~
EXTERN YOSHJ YROM-3-3

CHAIN YOSHJ YROM-3-2
~不，它——~
EXTERN YOSHJ YROM-3-3

CHAIN YOSHJ YROM-3-3
~这是好事。与你所想的相反，我……很高兴看到你们在一起。你值得有一个能给你欢乐的人，我的朋友。今生，来世。~
= ~也许……有样东西是我给不了你的。也许不配的人是我。~
END
  ++ ~你在说什么，义桑？~ + YROM-3-4
  ++ ~我很在乎你，义桑。没有理由觉得自己不配。~ + YROM-3-4

CHAIN YOSHJ YROM-3-4
~我们……都过着不寻常的日子，<CHARNAME>。命运自有它的法子捉弄我们这些凡人，而你和我，真可以说是它最宠爱的玩物了。~
= ~我不能否认，把我带进你生命的那份运气给了我许多快乐，可……它要是没发生，也许更好。有一天我或许就不在了，那时我便背上了罪：我的离去给你带来了痛。~
= ~你值得更好的。一个求安宁的人，一个能保证你活得长久、丰盛、不再失去的人……像她那样的人。~
END
  ++ ~可我也想给你同样的东西，义桑。~ + YROM-3-5
  ++ ~你举止怪怪的，义桑。那个无忧无虑、快活的盗贼哪儿去了？~ + YROM-3-6
  ++ ~也许你说得对。可你还在这儿，对我依然重要。~ + YROM-3-7

CHAIN YOSHJ YROM-3-5
~我……希望事情能是那样，<CHARNAME>。真的，我希望。~
EXTERN YOSHJ YROM-3-7

CHAIN YOSHJ YROM-3-6
~我只是在讲实际，朋友。也许……是我这一生最讲实际的一回。~
EXTERN YOSHJ YROM-3-7

CHAIN YOSHJ YROM-3-7
~……唉，我在太多方面都是个傻瓜。也许你才是更明智的那个，<CHARNAME>，不被自己的恐惧囚住。这……也是我佩服你的一点。~
= ~那就当我们没说过这话吧。该来的总会来……是啊，躲不掉的事，无论如何都得面对。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2YRRomancePostTalk","GLOBAL",2)~ THEN BC0AURA2 YROM-4
~<CHARNAME>，你……你哭过了，是不是？我看得出你的眼睛……又是噩梦吗？~ [C0BLANK]
END
  ++ ~是……可不是同一场梦。这一次……是关于义桑的。~ + YROM-4-1
  ++ ~我又梦到杀了义桑。一次又一次……不管我多想停手，我都停不下来。~ + YROM-4-2
  ++ ~别理我。~ + YROM-4-0

CHAIN BC0AURA2 YROM-4-0
~好。不过你要是哪天需要人说话……你知道我在这儿。~
EXIT

CHAIN BC0AURA2 YROM-4-1
~……~
= ~我看得出来。你想再见到他，可不是……不是这样。要不要说说？~
END
  ++ ~我把他砍倒了。然后又一次。我控制不了自己的身体……我连叫喊或哭泣都做不到。~ + YROM-4-2
  ++ ~现在别让我谈义桑，奥拉。我还没准备好。~ + YROM-4-0
  ++ ~不。~ + YROM-4-0

CHAIN BC0AURA2 YROM-4-2
~这一切本就不该发生……~
= ~我希望我能告诉你一切都会好的，<CHARNAME>，可我不能。因为我——不管怎样，我也想念他。~
= ~那你呢，<CHARNAME>？还是……你恨他做过的事？~
END
  ++ ~我不恨他。我恨这残忍的命运，让他爱上了一个他被迫背叛的人。~ + YROM-4-3
  ++ ~是。我想他，我也恨他。~ + YROM-4-3
  ++ ~当然。我怎能不爱？我……我真的爱过他。到现在也还爱。~ + YROM-4-4
  ++ ~不。在他做了那些之后……我不想再想他了。~ + YROM-4-5
  ++ ~别逼我说出口，奥拉。求你，别说。~ + YROM-4-0

CHAIN BC0AURA2 YROM-4-3
~我明白，<CHARNAME>。你一定很愤怒。你有权对义桑愤怒，对艾瑞尼卡斯愤怒，对命运愤怒，对把你拖进这一切苦难的血脉愤怒。我……我也愤怒，看着这一切把你变成了什么样。~
EXTERN BC0AURA2 YROM-4-6

CHAIN BC0AURA2 YROM-4-4
~那一定很难受……有一天我们总得跟所爱的人告别，这是躲不掉的，可像你那样失去他们……那是恶，<CHARNAME>。这让我痛恨命运对你耍的每一桩残忍把戏。~
EXTERN BC0AURA2 YROM-4-6

CHAIN BC0AURA2 YROM-4-5
~那样会容易些，不是吗？可是……你做得到吗？真有那么容易吗？你真能那样做，还能跟自己过得下去吗，<CHARNAME>？我没法替你回答……可要是真能，那你既勇敢……又残忍。对他，也对你自己。~
EXTERN BC0AURA2 YROM-4-6

CHAIN BC0AURA2 YROM-4-6
~不管忘记有多容易，我……我还是想记得。不管那有多痛。认识义桑，给我的生命带来了我至今仍想抱在心里的回忆……而我知道，对你来说那一定更深。~
= ~你不必忘记，<CHARNAME>。可你也不必把这一切痛都扛住。一点一点地，它会变。你会明白，并非每一分欢乐都是谎言。我确信。~
END
  ++ ~没那么容易，奥拉。尤其在我知道他还在受苦的时候。~ + YROM-4-7
  ++ ~你说得对。我还是想记住他最好的那些部分。~ + YROM-4-8
  ++ ~求你，让我一个人待着。你没法指望理解。~ + YROM-4-9

CHAIN BC0AURA2 YROM-4-7
~有一天会有希望的。为你也好，为他也罢。你得撑住。要是撑不住，记得我也在这儿。~
EXTERN BC0AURA2 YROM-4-10

CHAIN BC0AURA2 YROM-4-8
~没错。你要是需要帮手……记得我也在这儿。我们所珍视的那个义桑的宝贵回忆……会在我们两人心里活着。~
EXTERN BC0AURA2 YROM-4-10

CHAIN BC0AURA2 YROM-4-9
~不，可我还是会试……因为我受不了看你这样痛。我知道，要是义桑能看见你现在的样子，他也会受不了。~
EXTERN BC0AURA2 YROM-4-10

CHAIN BC0AURA2 YROM-4-10
~因为……你的幸福最要紧。为了义桑……也为了我。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2YRRomancePostTalk","GLOBAL",4)~ THEN BC0AURA2 YROM-5
~我知道这看起来是最不该说这话的时候，可我们的旅程好像越来越惊险，不是吗？要不是被我们遭遇的残忍与悲剧所玷污，我们本来有机会像应得的那样享受它。~ [C0BLANK]
= ~我……我想义桑会喜欢这场冒险。~
END
  ++ ~我确信。那种危险和刺激正是他活着所求的。~ + YROM-5-1
  ++ ~不只是这一次。要不是艾瑞尼卡斯一直把他攥在手心……他本来有机会享受我们一起经历的一切。~ + YROM-5-2
  ++ ~他总跟我讲他从前旅行的故事，几乎跟这一趟一样离奇。~ + YROM-5-1
  ++ ~别说了，奥拉。别说了。~ + YROM-5-0

CHAIN BC0AURA2 YROM-5-0
~对不起。我不该提起。我真是没心没肺……~
EXIT

CHAIN BC0AURA2 YROM-5-1
~他就是那样的人，不是吗……？我们两人都认识的那个他。~
EXTERN BC0AURA2 YROM-5-2

CHAIN BC0AURA2 YROM-5-2
~我琢磨之后才意识到，那一定把他撕得多厉害。成为某件他真心所爱之事的一部分……却知道自己永远没法像想的那样去爱它。~
= ~对不起，<CHARNAME>。我不该提起他，在你准备好之前不该。我只是……太想他了。~
END
  ++ ~我也一样。~ + YROM-5-3
  ++ ~你不必抱歉。我们该试着记住我们共有的一切美好。~ + YROM-5-4
  ++ ~你觉得我心里是什么滋味？~ + YROM-5-4
  ++ ~请停下。我不想谈这个。~ + YROM-5-0

CHAIN BC0AURA2 YROM-5-3
~你觉得他快乐过吗，<CHARNAME>？哪怕他知道，在你身边快乐，对他的身心是多大的折磨？~
= ~我……想相信他一定是快乐的。哪怕只为那意味着你与他共度的时光并非毫无意义。~
END
  ++ ~我希望他也快乐过。哪怕那让他不得不做的事更难。~ + YROM-5-5
  ++ ~他一定是快乐的。人没法阻止自己有感情，无论怎么努力。~ + YROM-5-5
  ++ ~你比我宽容。我觉得他没资格感到快乐。~ + YROM-5-6

CHAIN BC0AURA2 YROM-5-4
~我——我也想。我只是不知该怎么应付……当连快乐的回忆都伤人时。~
EXTERN BC0AURA2 YROM-5-3

CHAIN BC0AURA2 YROM-5-5
~真怪，不是吗？你们两人之间本该没有任何不对的地方。义桑真的在乎你，<CHARNAME>。我信。~
EXTERN BC0AURA2 YROM-5-7

CHAIN BC0AURA2 YROM-5-6
~不……也许他并不。可那从来就没那么容易，不是吗？~
EXTERN BC0AURA2 YROM-5-7

CHAIN BC0AURA2 YROM-5-7
~我只希望……无论他现在在哪儿，都有点什么可以攀住……也许有一天，若命运肯仁慈一回……他能找到安宁。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2YRRomancePostTalk","GLOBAL",6)~ THEN BC0AURA2 YROM-6
~<CHARNAME>，你有空吗？~ [C0BLANK]
END
  ++ ~为了你，奥拉？永远有空。~ + YROM-6-1
  ++ ~是什么？~ + YROM-6-1
  ++ ~现在不行。我没工夫理你。~ + YROM-6-0

CHAIN BC0AURA2 YROM-6-0
~哦。我……我明白了。抱歉……我不知道自己这么招你烦，<CHARNAME. 也许……我该让你清静一阵。~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BC0AURA2 YROM-6-1
~我——我早就想说这件事了。我以为我还能再等等……等一个我可以说出口的公道时机。可我……我不知道那时机是否会有。~
= ~……对不起。我必须说。也许这是错的，你也许会因为我此刻跟你说这个而恨我……在经历了这一切之后。~
= ~我爱你，<CHARNAME>。~
END
  ++ ~你……你真的？你一直是这样的感觉？~ + YROM-6-2
  ++ ~我知道。~ + YROM-6-2
  ++ ~奥拉，你不该说这话。尤其在你明知我失去了什么的时候。~ + YROM-6-2

CHAIN BC0AURA2 YROM-6-2
~我知道这对你不公平，你还在为义桑哀悼。可我——我必须自私一回。~
= ~要是这趟旅程到最后出了最坏的事，我不想像他那样苦……把真心带进坟墓，只留给你一颗碎掉的心。~
= ~自禁魔监狱那件事之后，我看着你把这痛藏在心里，要不是我够了解你，我甚至不会知道你有多苦。我不想就这样下去，<CHARNAME>。~
= ~不管你对我是什么感觉……我知道我永远代替不了义桑在你心里的位置。可我想留下来，让你有个可以依靠的人，让你把真正的感受说出来。因为我太在意你，不能眼看着事情就这样拖下去。~
= ~要是……要是你想冲我吼，或者骂我多自私……我准备好听了。我不会怪你。毕竟……你现在知道我心里怎么想了。~
END
  ++ ~你不必为自己的感情羞愧，奥拉。我爱你，就像我爱义桑一样深。~ + YROM-6-3
  ++ ~奥拉，我不能那样对你。你对我一样重要。~ + YROM-6-3
  ++ ~对不起，奥拉。我很感激你能这样坦率地对我……可爱桑在我心里永远是第一位。直到现在也是。~ + YROM-6-4
  ++ ~你好大的胆子？你现在跟我说这个，明明知道这只会更伤我？我一个字也不想再听了。~ + YROM-6-5

CHAIN BC0AURA2 YROM-6-3
~听你这么说……我——我很高兴，<CHARNAME>。而我又因此觉得自己像个卑鄙的人。~
EXTERN BC0AURA2 YROM-6-6

CHAIN BC0AURA2 YROM-6-4
~我明白，<CHARNAME>。我花了很久才攒够勇气说这话……而接受你要给的答案，花了更久。~
= ~我的感情不会变。可要紧的是你的。所以……无论你想以什么形式，我都会继续支持你。只做朋友……如果你想那样的话。~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BC0AURA2 YROM-6-5
~我——~
= ~我真抱歉，<CHARNAME>……~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BC0AURA2 YROM-6-6
~真残忍，是不是？义桑还在我们身边的时候……我同时感到快乐、嫉妒和不安。我以为我们每个人都会有足够的时间，把心事理清、好好做个了结。然后……我们失去了那个机会。~
= ~义桑和我从没明说，可那就像我们不用言语就达成了默契……我们会尽全力让你快乐，绝不会为此争吵或彼此憎恨。我……不想它结束，所以我也就知足了。~
= ~我以为事情会……变成后来的样子。~
END
  ++ ~我也没有。可我们得往前走……我想义桑会希望我们俩都这样。~ + YROM-6-7
  ++ ~他真是个自私的人，不是吗？就这样死了，全不想想那会怎样伤我……伤你。~ + YROM-6-7
  ++ ~奥拉，你不必让义桑的记忆妨碍你对我的心意。他绝不会希望那样。~ + YROM-6-7

CHAIN BC0AURA2 YROM-6-7
~是啊……他真是个古怪、温柔又自私的人……全都凑在一块儿，不是吗？可我有什么资格评判，我自己也说得上一样。嘿嘿……~
= ~要是你能接纳我，<CHARNAME>……我会永远陪着你。你需要什么我都给，无论是疗伤、痛哭，还是在这片黑暗里试着寻一点欢愉的光。~
= ~我答应。~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",2)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2YRRomancePostTalkAmulet","GLOBAL",1)~ THEN BC0AURA2 YROM-7
~这护身符真美。~ [C0BLANK]
END
  ++ ~是。是这样。~ + YROM-7-1
  ++ ~跟你的一个样。~ + YROM-7-2
  ++ ~我还是希望它的主人跟我们在一起。~ + YROM-7-3
  ++ ~别管那护身符了。我们继续走。~ + YROM-7-0

CHAIN BC0AURA2 YROM-7-0
~是……你说得对。~
EXTERN BC0AURA2 YROM-7-4

CHAIN BC0AURA2 YROM-7-1
~这一切都太熟悉了。我离开科祖库拉之前，丽花小姐把这枚勾玉留给了我。而现在……义桑走了，也给你留下了这个。看来我们注定要承受同样的悲伤，<CHARNAME>……~
EXTERN BC0AURA2 YROM-7-4

CHAIN BC0AURA2 YROM-7-2
~是……跟我的一个样。~
EXTERN BC0AURA2 YROM-7-1

CHAIN BC0AURA2 YROM-7-3
~至少……他的一部分最后还是找到了你。我知道那不多，可……~
EXTERN BC0AURA2 YROM-7-1

CHAIN BC0AURA2 YROM-7-4
~我——我不会看那封信，<CHARNAME>。那是你自己的权利，不是我的。希望它能让你稍稍放下。~
EXIT

I_C_T YRXYUN 1 C0AuraYoshimoRomanceHell
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~义桑……你怎么会……？~
== YRXYUN ~小奥拉……我亲爱的朋友，你竟一路跟着<CHARNAME>到了这地狱。我没料到别的……为此我感激你。~
== YRXYUN IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~我也感觉到，你给了她我给不了的东西……一个能在最需要时真正站在她身边的人。谢谢你。~
== C0AURA2J IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~我真抱歉，义桑。你本该跟我们在一起……跟她在一起。我——~
== YRXYUN IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ ~不必了。小奥拉，你不必解释。我余时无多，得把最后的话留给<CHARNAME>，若她肯听。~
== YRXYUN IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ ~可我还有最后一个请求。~
== C0AURA2J IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~什么都行。~
== YRXYUN IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ ~守着她。直到最后一刻。~
== C0AURA2J IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~我会的。我答应。~
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2YRRomancePostTalkHell","GLOBAL",1)~ THEN BC0AURA2 YROM-8
~……~ [C0BLANK]
END
  ++ ~没事。我们做了不得不做的事。~ + YROM-8-1
  ++ ~该死的艾瑞尼卡斯。他得为此付出代价，死了也得付。~ + YROM-8-2

CHAIN BC0AURA2 YROM-8-1
~我想再见到他，<CHARNAME>……可真的见到了，我才明白那会让我多害怕。看着他受苦，又一次与你为敌……手里拿着那把本该护住你的剑。~
= ~这必须结束，<CHARNAME>。它*会*结束。我许过诺。我一定会陪你走到底，<CHARNAME>……为那些没能走到的人。~
= ~“愿你安息”……义桑。~
EXIT

CHAIN BC0AURA2 YROM-8-2
~对，这种残忍……必须受到惩罚。没有什么比这更不可饶恕。~
EXTERN BC0AURA2 YROM-8-1

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBYRDreamTalk","GLOBAL",1)~ THEN BC0AUR25 YROM-TOB-1
~你看着怅然若失，<CHARNAME>……像是在渴望着什么。你……又梦到义桑了？~ [C0BLANK]
DO ~SetGlobal("C0AuraToBYRDreamTalk","GLOBAL",2)~
END
  ++ ~我梦到了，是的。~ + YROM-TOB-1-1
  ++ ~不止义桑。葛立安也在。还有卡利德，连斯基……和塔莫科。~ + YROM-TOB-1-2
  ++ ~让我静一静。我没心情谈这个。~ + YROM-TOB-1-0

CHAIN BC0AUR25 YROM-TOB-1-0
~……好吧。~
EXIT

CHAIN BC0AUR25 YROM-TOB-1-1
~我就知道。~
= ~……只有他吗？我……听到你睡着时说了几句话。~
END
  ++ ~还有许多旧面孔。卡利德、斯基……还有塔莫科。~ + YROM-TOB-1-2
  ++ ~少管闲事。~ + YROM-TOB-1-0

CHAIN BC0AUR25 YROM-TOB-1-2
~啊……我明白了。~
= ~我很高兴你能见到他们。哪怕只是一场梦，听起来……你们总算有一刻是安宁的。~
END
  ++ ~我们是安宁的。我想……我是快乐的。~ + YROM-TOB-1-3
  ++ ~不要紧。那全是一场梦，我对它的记忆本来也模糊。~ + YROM-TOB-1-4
  ++ ~也许吧，可那只是幻想。现实没那么仁慈，我们还是继续往前吧。~ + YROM-TOB-1-0

CHAIN BC0AUR25 YROM-TOB-1-3
~那就够了，<CHARNAME>。不管怎样，那是件好事……你不必怀疑。~
EXTERN BC0AUR25 YROM-TOB-1-5

CHAIN BC0AUR25 YROM-TOB-1-4
~也许……可要是它给了你些安慰，那也算一份珍贵的礼物，不是吗？~
EXTERN BC0AUR25 YROM-TOB-1-5

CHAIN BC0AUR25 YROM-TOB-1-5
~我知道我们没法把它变成现实，不能一字不差……可我们还是得尽力。我们用手上有的，做出能做的。~
== BC0AUR25 ~你做得到，<CHARNAME>。我相信你。而且我……会一直在你身边。~
EXIT