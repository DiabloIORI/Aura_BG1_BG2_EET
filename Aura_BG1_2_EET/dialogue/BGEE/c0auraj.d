BEGIN C0AURAJ

// TALK 1

CHAIN IF ~Global("C0AuraTalk","GLOBAL",2)~ THEN C0AURAJ t1
~谢——谢谢你让我加入，<CHARNAME>……我不确定自己一个人能做些什么。我，呃……我不会让你失望的。~ [C0BLANK]
DO ~IncrementGlobal("C0AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",TWELVE_HOURS)
SetGlobalTimer("C0AuraTalkTimer","GLOBAL",THREE_DAYS)~
END
++ ~你听起来很紧张。这是你第一次这样旅行吗？~ + t1.1
++ ~别担心。论冒险生涯，我跟你一样是新手。~ + t1.2
++ ~最好别让我失望。我可没时间照顾软弱的人。~ + t1.3

CHAIN C0AURAJ t1.1
~我，呃……是的。我四处走过很多地方，但从没这样过。我是说……为活命而战。~
EXTERN C0AURAJ t1.4

CHAIN C0AURAJ t1.2
~你是？哦，我不知道。你看起来比我强得多、有经验得多，所以我以为……~
EXTERN C0AURAJ t1.4

CHAIN C0AURAJ t1.3
~好——好吧，我记住了。~
EXIT

CHAIN C0AURAJ t1.4
~如……如果你不介意我问的话，你是从哪里来的？你生在剑湾吗？还是……别的地方？~
END
++ ~你问这个做什么？~ + t1.5
++ ~我来自烛堡。离我们相遇的贝雷戈斯特不远。~ + t1.6
++ ~不关你的事，侏儒。现在我建议你往前走。~ + t1.7
++ ~抱歉，但我不想谈这个。~ + t1.8

CHAIN C0AURAJ t1.5
~我只是好奇。哦，算了。我只是……真的不知道该聊什么。我不擅长跟人打交道……我平时打交道的那些东西，通常不会回话，你知道吧？~
= ~那么，呃……~
END
++ ~如果你还想知道的话。烛堡是我长大的地方。离这儿不远。~ + t1.6
++ ~你不用这么紧张。我又不会吃了你。~ + t1.9
++ ~要是你连能聊的话题都找不到，那聊也没意义。到此为止吧。~ + t1.7

CHAIN C0AURAJ t1.6
~哦，烛堡？那座有名的图书馆？我从听说它起就一直想去看看。不过据说入门的代价大得惊人，我自己连两个铜板都拿不出来，所以……~
= ~呃，抱歉。我差点就开始唠叨了。希望没烦到你。~
END
++ ~你何不也讲讲你自己的事作为回报？这才公平。~ + t1.13
++ ~没关系。看得出你在自己的圈子里自在得多。~ + t1.10
+ ~Gender(Player1,FEMALE)~ + ~一点也不。你自信起来的时候挺讨人喜欢的。~ + t1.11
+ ~!Gender(Player1,FEMALE)~ + ~一点也不。你自信起来的时候挺讨人喜欢的。~ + t1.12
++ ~至少你在该停的时候停了。我们没时间浪费在闲聊上，走吧。~ + t1.7

CHAIN C0AURAJ t1.7
~哦，好——好吧。~
EXIT

CHAIN C0AURAJ t1.8
~呃……没关系。我只是……想聊点……什么。你不想聊也没关系。~
EXIT

CHAIN C0AURAJ t1.9
~我——我没那么想！我，呃……哦，这根本行不通。我还是去别处吧，别浪费你的时间了。~
EXIT

CHAIN C0AURAJ t1.10
~嗯，是的！我想我是。不过在这片土地上很难找到能说话的人。希望以后我多问你些问题你不会介意。我有一堆想问的。~
EXIT

CHAIN C0AURAJ t1.11
~哦，那……你这么说真好。~
= ~我——我们是不是该找点事做？我觉得该这样。~
EXIT

CHAIN C0AURAJ t1.12
~呃……谢谢，<CHARNAME>。~
EXIT

CHAIN C0AURAJ t1.13
~哦，我很乐意！我是说……也许晚点吧，等我先想好该先告诉你什么。要说的话实在太多了……我们改天再聊好不好？~
EXIT

// TALK 2

CHAIN IF ~Global("C0AuraTalk","GLOBAL",4)~ THEN C0AURAJ t2
~嘿，你！这次你又想躲到哪里去？~ [C0BLANK]
DO ~IncrementGlobal("C0AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",TWELVE_HOURS)
SetGlobalTimer("C0AuraTalkTimer","GLOBAL",THREE_DAYS)~
END
++ ~我？我哪儿都没躲。~ + t2.1
++ ~你在跟谁说话，奥拉？~ + t2.2
++ ~你在自言自语吗？~ + t2.1
++ ~快走吧，你。我们还有一段路要赶。~ + t2.0

CHAIN C0AURAJ t2.0
~你听见没有，穆菲？安静点！停下！我们要被落下了！~
EXIT

CHAIN C0AURAJ t2.1
~不，不是说你！我说的是……*他*！嘿，别动！~
EXTERN C0AURAJ t2.2

CHAIN C0AURAJ t2.2
~停下！从琥珀金罐子里出来！嘿，马上从我的包里出来！我——呀啊！~
= ~穆——穆菲，规矩点！停——停……啊哈哈，好痒，别在我身上乱爬！~ [C0MUFFY]
END
++ ~那是……一只松鼠？一只金属松鼠？~ + t2.3
++ ~呃，我能帮上什么忙吗？~ + t2.4
++ ~别胡闹了。我们有事要做。~ + t2.0

CHAIN C0AURAJ t2.3
~对，一只松鼠。一只非常非常坏的松鼠。停下！~
EXTERN C0AURAJ t2.4

CHAIN C0AURAJ t2.4
~哈！抓住你了！现在别动，让我把你打开，你肚子里有我一件工具……好了，乖穆菲。~
= ~抱歉，<CHARNAME>。每次我要从他身上取东西，他总是到处乱跑。~
END
+ ~IsValidForPartyDialog("Minsc")~ + ~先是一只仓鼠，现在又是一只金属松鼠。真是妙极了。~ EXTERN %MINSC_JOINED% t2.minsc
++ ~这只……松鼠是你的宠物，我猜？~ + t2.5
++ ~我不在乎。把它收起来，我们好继续走。~ + t2.0

CHAIN %MINSC_JOINED% t2.minsc
~布布觉得他会喜欢你的穆菲，奥拉。~
== C0AURAJ ~你确定？穆菲对任何比它小的东西都有点凶。~
== %MINSC_JOINED% ~不必担心，布布虽小，它的心却比……不，布布！别跟那只友善的松鼠打架！~ [GAM_48]
== C0AURAJ ~住手，穆菲！对布布好点！别欺负人！~ [GAM_48]
END
++ ~*叹气*~ EXTERN C0AURAJ t2.5
++ ~让他们打。我想看！~ EXTERN C0AURAJ t2.5

CHAIN C0AURAJ t2.5
~嘿——嘿嘿……穆菲已经是我多年的朋友了。他的身子是我亲手做的，用发条、青铜还有其他金属。他很可爱，对吧？~
END
++ ~你说他的身子是你做的？那他其实并不算活着，对吧？~ + t2.6
++ ~你是怎么把它……把他……做得这么像活物的，奥拉？我从没见过构装体这样行动。~ + t2.6
++ ~呃……当然。非常可爱。~ + t2.7
++ ~我看见你打开他的肚子取出东西。他就能做这些吗？~ + t2.8
++ ~随便吧。给那东西拴上绳，然后归队。~ + t2.0

CHAIN C0AURAJ t2.6
~呃……那是秘密。我不能告诉你怎么做到的。抱歉。~
EXTERN C0AURAJ t2.7

CHAIN C0AURAJ t2.7
~看他见到你多高兴，<CHARNAME>。他喜欢认识新朋友。你身上有没有什么能喂他的？~
END
++ ~呃……喂？它吃东西？~ + t2.8
++ ~我有些路上吃的坚果，不过我想你说的不是这个……~ + t2.8
++ ~别浪费我的时间。我们得走了。~ + t2.0

CHAIN C0AURAJ t2.8
~穆菲喜欢肚子被塞满。他尤其爱宝石。把点小东西放进去，你可以放心它不会丢。不过以后要取出来可能有点麻烦。~
= ~哦不，他又想跑了。停下！回来！~ [GAM_48]
EXIT

// TALK 3

CHAIN IF ~Global("C0AuraTalk","GLOBAL",6)~ THEN C0AURAJ t3
~<CHARNAME>，你提过你是在烛堡长大的，对吧？那座大图书馆？~ [C0BLANK]
DO ~IncrementGlobal("C0AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",TWELVE_HOURS)
SetGlobalTimer("C0AuraTalkTimer","GLOBAL",THREE_DAYS)~
END
++ ~没错。怎么了？~ + t3.1
++ ~别让我想起那个糟糕的地方。没有那些记忆我更开心。~ + t3.a
++ ~我不想谈烛堡，奥拉。~ + t3.0

CHAIN C0AURAJ t3.0
~唉，那真可惜……我真的很想听听……~
EXIT

CHAIN C0AURAJ t3.a
~哦，别这样！我又不是问你最深的秘密。我只想知道几个细节。~
EXTERN C0AURAJ t3.1

CHAIN C0AURAJ t3.1
~我只是想知道它是不是真像听说那样又大又充满知识。它据说是费伦最伟大的图书馆，不是吗？~
END
++ ~我不知道算不算“最伟大”，但它确实很大。也有的是积满灰尘的古书。~ + t3.2
++ ~大家都这么说。不过也可能只是吹嘘。~ + t3.2
++ ~别问我。我在那儿一本书都没读过。~ + t3.3
++ ~烛堡就是个无聊的老地方。我很高兴离开了那儿。~ + t3.3
++ ~我不会谈烛堡的。~ + t3.0

CHAIN C0AURAJ t3.2
~回到兰坦，我们那儿最大的知识机构是首都桑巴尔的奇观档案馆。那是我见过最大的图书馆。书多得数不清，厅堂有建在地上的，也有建在地下的。~
= ~要是我见到比那更大的图书馆，我会惊讶得说不出话。你觉得我有机会亲眼看看烛堡吗？~
END
++ ~他们连我都不让回去。我怀疑不行，除非你在哪里藏着值一万金币的书。~ + t3.4
++ ~我会想办法带我们去的，我保证。~ + t3.5
++ ~谁知道呢？就我个人而言，我很庆幸自己不再被困在那里了。~ + t3.6

CHAIN C0AURAJ t3.3
~*倒吸一口气！* 你怎么能说出这种话？知识是最宝贵、永不老去的财富！哦，算了，争这个没意义……~
EXTERN C0AURAJ t3.2

CHAIN C0AURAJ t3.4
~*叹气* 那真可惜……但我总还能抱着希望，对吧？~
EXIT

CHAIN C0AURAJ t3.5
~哦，我希望如此。但我不想让你为此背上负担。我知道回不了家对你来说一定也很难……~
END
++ ~是的。我希望有一天能回去。~ + t3.7
++ ~倒也不算太难，但没错，我有时会想念它。~ + t3.7
++ ~恰恰相反，我再开心不过了。烛堡很无聊。~ + t3.6

CHAIN C0AURAJ t3.6
~你怎么能这样？你是个非常非常奇怪的人，<CHARNAME>。~
EXIT

CHAIN C0AURAJ t3.7
~唔，我希望你有一天能回去……我更希望能跟你一起去！~
EXIT

// TALK 4

CHAIN IF ~Global("C0AuraTalk","GLOBAL",8)~ THEN C0AURAJ t4
~这里再上点墨，我想……不，不……太多了。穆菲？我的细笔在哪儿？好了，这样好多了……嗯？出什么事了吗，<CHARNAME>？~ [C0BLANK]
DO ~IncrementGlobal("C0AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",TWELVE_HOURS)
SetGlobalTimer("C0AuraTalkTimer","GLOBAL",THREE_DAYS)~
END
++ ~你在画什么，奥拉？~ + t4.1
++ ~我只是看着。请继续。~ + t4.1
++ ~没什么。我不打扰你了。~ + t4.0

CHAIN C0AURAJ t4.0
~哦，好……那我就继续画了。~
EXIT

CHAIN C0AURAJ t4.1
~我只是想把我对科祖库拉某个地方的记忆画回来……我离开去剑湾已经好几个月了，可我仍能记得那片土地有多美，仿佛就在昨天。~
END
++ ~这幅画也是科祖库拉的风格吗？跟我见过的任何艺术形式都不一样。~ + t4.3
++ ~你画的这地方是哪里？某种山谷？看着很美。~ + t4.4
++ ~你提过你在科祖库拉住过。你为什么会在那儿？~ + t4.2

CHAIN C0AURAJ t4.2
~我不太谈起这事……虽然我在科祖库拉人中间生活、学习了三年，并不后悔，但我当初到那里的方式……并不愉快。~
= ~我还留在兰坦的时候，常走遍全岛寻找秘密与失落的学问。同伴们叫我“探险家奥拉”，其实是拿我开玩笑，可我喜欢这个称呼……我总想找出那些没被家乡旧档案馆与图书馆收录的东西。~
= ~即便那时我也不满足。我总想看看世界。我不喜欢我的人民那样与世隔绝，我想见识别处，也想把自己的经历分享给费伦其他地方。所以当我再也按不住这股冲动时，我求父母让我加入一艘商船的船员，好出去旅行。~
= ~我旅行了几年，从玛兹特克到深水城，学习当地风俗，也靠贩卖我的发明为生。后来，当我们的船沿黄金之路航行时……~
END
++ ~你刚才有一瞬看起来有点害怕。后来发生了什么？~ + t4.5
++ ~接着说。~ + t4.5
++ ~你的故事够了。我已经听腻了。~ + t4.0

CHAIN C0AURAJ t4.3
~对……这是一种用墨而非油彩的画法，所以需要耐心与细腻的手……在科祖库拉，它叫“墨绘”。~
= ~即便我在兰坦的学院里画过那么多，练到得心应手也花了我很多功夫。不过要画出科祖库拉的风景，我想没有别的风格比得上它。~
END
++ ~你画的这个地方呢？是某种山谷吗？~ + t4.4
++ ~说起来，你从没怎么讲过你为什么会在科祖库拉。~ + t4.2
++ ~这些都很有意思，不过我想我们该停下了。~ + t4.0

CHAIN C0AURAJ t4.4
~那地方叫樱雾谷。到处是樱树，一年里大半时间都在下雨……所以山谷终年弥漫着雾。~
= ~樱花盛开时——山谷的名字就由此而来——那是科祖库拉最美的地方。我有幸见过它最美的时节，也一直用这幅画慢慢把那份美重现出来，从粉色花瓣到山丘……~
END
++ ~这幅画跟我见过的都不一样。是科祖库拉的风格吗？~ + t4.3
++ ~说起来，你从没怎么讲过你为什么会在科祖库拉。~ + t4.2
++ ~这些都很有意思，不过我想我们该停下了。~ + t4.0

CHAIN C0AURAJ t4.5
~*打个寒颤* 光是想起它我就害怕。那时起了风暴，而且……它追着我们。那是魔法造出来的，当时我确信。我们逃不掉。~
= ~船被撕成碎片。我失去意识前记得的最后一件事，就是溺水的感觉……~
= ~等我醒来……我在科祖库拉一个村庄里的一间陌生的屋子里。不知怎么，我落到了科祖库拉某座岛的海岸上。收留我、照顾我的是一位女祭司……我的导师与守护者，丽华小姐。~
= ~多亏她，我活了下来，可是……那场灾难让我失去了大部分记忆。我记不起来自哪里、去过哪里，甚至连自己的名字都忘了……~
= ~直到两年之后，我才把最后那段记忆找回来，不过……在那段时间里，我见了、学了那么多新东西，以至于并不觉得缺少什么。~
END
++ ~听起来你在那儿过得挺开心。那你为什么离开？~ + t4.6
++ ~那你从前的家呢？你的家人？你从来不想他们吗？~ + t4.7
++ ~够了。你讲你的过去已经讲得够久了。~ + t4.0

CHAIN C0AURAJ t4.6
~如果我有得选，我会在科祖库拉再住很多年。我感激那里的人接纳我、照顾我，我也像爱母亲一样爱丽华小姐。那里对我而言，和兰坦一样是家。~
= ~可是……我有三件事必须去做，只要我留在那里，一件也办不成。所以我走了……~
END
++ ~三件事？是什么？~ + t4.8

CHAIN C0AURAJ t4.7
~我直到过了好几个月才想起来，即便那时也想象不出他们的面容……等我把一切都记起来，当然很想他们，可那时……我已经有了幸福的生活。我不想离开，所以只能每年寄一封信，好让他们知道我还平安。~
EXTERN C0AURAJ t4.6

CHAIN C0AURAJ t4.8
~其中一件你已经知道了，<CHARNAME>。我们相遇时我提过，我在找一个在科祖库拉认识的人。至于另外两件……抱歉，我现在还不能说。还不行。~
= ~我们聊了很久了。希望我没用自己的故事烦到你。~
END
++ ~一点也没有。到目前为止，你过得相当有意思，奥拉。~ + t4.9
++ ~至少现在结束了。你说得太多了。~ + t4.10

CHAIN C0AURAJ t4.9
~嘿嘿。我想我是说多了。不过你的故事也在变得同样有意思。那么……我们看看接下来会怎样？~
EXIT

CHAIN C0AURAJ t4.10
~我想是的……抱歉浪费你的时间。~
EXIT

// TALK 5

CHAIN IF ~Global("C0AuraTalk","GLOBAL",10)~ THEN C0AURAJ t5
~<CHARNAME>，我……唔，上次我们停下来聊天时说的那幅画，我画完了。你想看看吗？~ [C0BLANK]
DO ~IncrementGlobal("C0AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",TWELVE_HOURS)
SetGlobalTimer("C0AuraTalkTimer","GLOBAL",THREE_DAYS)~
END
++ ~我很想看。~ + t5.1
++ ~我现在没时间，奥拉。~ + t5.0

CHAIN C0AURAJ t5.0
~哦。那抱歉打扰你了……它一直都在这里，你知道吧？万一你改主意的话。~
EXIT

CHAIN C0AURAJ t5.1
~就是这个……樱雾谷。很美……可不如真的那么美。即便我把一切都照记忆画得分毫不差，我还是画不出樱花瓣飘落的样子……画不出雾升起的样子……也画不出雨落在身上的感觉……~
= ~我——抱歉，我又陷进回忆里了，<CHARNAME>。你想再看看我凭记忆画的另一幅画吗？我是说……我的出生地，兰坦。~
END
++ ~当然。~ + t5.2
++ ~还是不了。眼下我们有更要紧的事。~ + t5.0

CHAIN C0AURAJ t5.2
~这幅不是风景画。画的是人……跟我很亲近的人。我的家人。我离开兰坦后就再没见过他们，所以这是在科祖库拉、当对家的记忆回到我脑中时画的。我所有画里，最喜欢这一幅。~
= ~这是我母亲吉莉安，旁边是我父亲凯罗斯。其余都是我的兄弟姐妹。我的两个姐姐……朱诺是最大的，青绿色头发的那个。紫头发的是露娜……还有我的小弟弟埃里达努斯。最小的两个是双胞胎，菲洛和莉塔。~
END
+ ~Global("C0AuraTalk5a","GLOBAL",0)~ + ~看来你家大多数人头发颜色都不寻常。这有什么来历吗？~ DO ~SetGlobal("C0AuraTalk5a","GLOBAL",1)~ + t5.3
+ ~Global("C0AuraTalk5b","GLOBAL",0)~ + ~跟我说说你大姐朱诺。~ DO ~SetGlobal("C0AuraTalk5b","GLOBAL",1)~ + t5.4
+ ~Global("C0AuraTalk5c","GLOBAL",0)~ + ~跟我说说你姐姐露娜。~ DO ~SetGlobal("C0AuraTalk5c","GLOBAL",1)~ + t5.5
+ ~Global("C0AuraTalk5d","GLOBAL",0)~ + ~跟我说说你弟弟埃里达努斯。~ DO ~SetGlobal("C0AuraTalk5d","GLOBAL",1)~ + t5.6
+ ~Global("C0AuraTalk5e","GLOBAL",0)~ + ~跟我说说那对双胞胎。~ DO ~SetGlobal("C0AuraTalk5e","GLOBAL",1)~ + t5.7
++ ~我不需要了解你的家人。我们走吧。~ + t5.9

CHAIN C0AURAJ t5.3
~我想可以，就看你怎么算“来历”了……我们格利默夏恩家世世代代都生着淡金色的头发。这在侏儒里不常见，所以我们喜欢把头发染成各自最喜欢的颜色，好区分彼此。这样一来，别人只要看头发就知道我们谁是谁。~
= ~当然不是必须的，但我们大多喜欢这么做。双胞胎还没选颜色，他们太小了。我弟弟埃里达努斯是在我离开兰坦前不到一年才选了颜色——蓝色。~
= ~别的家族有些觉得这很傻，毕竟我们在兰坦本该是个体面的家族，可如今这几乎成了传统。你不太可能见到一个成年却还留着天生发色的格利默夏恩。~
EXTERN C0AURAJ t5.8

CHAIN C0AURAJ t5.4
~朱诺勇敢、坚强又可靠。她打起仗来跟搞发明一样在行，不过在家时，她有时就像我们的第二个母亲。~
= ~有时露娜心情不好就会欺负我，掐我或者拽我头发，可只要朱诺在场，她绝不让露娜这么做。我们俩都敬仰她，但她被派驻在外做机械师，离家很远，所以这些年见她越来越少。~
= ~可是……我最想她。从我出生那天起她就一直在，是她教我怎么写字、画素描、用弓……~
EXTERN C0AURAJ t5.8

CHAIN C0AURAJ t5.5
~我记得露娜一向是最漂亮的姐姐。她爱拿我打趣，说我鼻子不够大不像侏儒，额头又太大不像女孩。我们一起在学院念书时，她管我叫“没鼻子大额头奥拉”。~
= ~她是个很爱管人的人，可我觉得她心底还是很善良。我心情低落时，她有时会把我带到她房间，给我梳头、画眉毛。当时我觉得这很傻，现在倒有点怀念。~
EXTERN C0AURAJ t5.8

CHAIN C0AURAJ t5.6
~埃里了不起。他生来指尖就带着魔法，所以尽管个子小、容易生病，也没人敢欺负他。他吃不消学院那种累人的功课，父母就让他拜我叔叔马里乌斯为师——兰坦少数受过训练的法师之一，好让他发展魔法天赋。~
= ~我自己也在叔叔门下学过一点……我制作符文、把它们嫁接到石头与金属上的本事就是那时学的。可埃里比我强得多，我这辈子都赶不上。我有时有点羡慕他。~
EXTERN C0AURAJ t5.8

CHAIN C0AURAJ t5.7
~嘿嘿，那对双胞胎……他们是不是最可爱？听说母亲又怀了孩子，我们日夜照料她，还在家里为家里的新成员盖了一间房。我离开兰坦去游历费伦时，他们拽着我的衣服，非要我答应带各种礼物回来。~
= ~*叹气* 要不是那场风暴，我本可以守住那个承诺。如今我能给他们的，只有这幅画……~
EXTERN C0AURAJ t5.8

CHAIN C0AURAJ t5.8
~你还有什么想知道的吗？还是说该继续赶路了？~
END
+ ~Global("C0AuraTalk5a","GLOBAL",0)~ + ~看来你家大多数人头发颜色都不寻常。这有什么来历吗？~ DO ~SetGlobal("C0AuraTalk5a","GLOBAL",1)~ + t5.3
+ ~Global("C0AuraTalk5b","GLOBAL",0)~ + ~跟我说说你大姐朱诺。~ DO ~SetGlobal("C0AuraTalk5b","GLOBAL",1)~ + t5.4
+ ~Global("C0AuraTalk5c","GLOBAL",0)~ + ~跟我说说你姐姐露娜。~ DO ~SetGlobal("C0AuraTalk5c","GLOBAL",1)~ + t5.5
+ ~Global("C0AuraTalk5d","GLOBAL",0)~ + ~跟我说说你弟弟埃里达努斯。~ DO ~SetGlobal("C0AuraTalk5d","GLOBAL",1)~ + t5.6
+ ~Global("C0AuraTalk5e","GLOBAL",0)~ + ~跟我说说那对双胞胎。~ DO ~SetGlobal("C0AuraTalk5e","GLOBAL",1)~ + t5.7
++ ~我想知道的都知道了。我们走吧。~ + t5.9

CHAIN C0AURAJ t5.9
~哦……你说得对，我们大概该走了。你先走，我一会儿就跟上来。~
EXIT

// TALK 6

CHAIN IF ~Global("C0AuraTalk","GLOBAL",12)~ THEN C0AURAJ t6
~呼，认识你这段短短的时间里，我经历的冒险比我前半辈子加起来还多，<CHARNAME>。~ [C0BLANK]
DO ~IncrementGlobal("C0AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",TWELVE_HOURS)
SetGlobalTimer("C0AuraTalkTimer","GLOBAL",THREE_DAYS)~
= ~别误会，这可不是坏事！我在这里学到了很多别处学不到的东西。我只是说，你过得真是相当有福气。~
END
++ ~说起来，你到底多大，奥拉？你从没提过。~ + t6.1
++ ~你管这叫有福气？刺客、地牢、废墟，每个转角都有嗜血的怪物？~ + t6.2
++ ~我想，保持乐观总是好的。~ + t6.3
++ ~我的生活状况不是给你拿来感慨的，奥拉。我们走。~ + t6.0

CHAIN C0AURAJ t6.0
~好，当然。我就在你后面。~
EXIT

CHAIN C0AURAJ t6.1
~我没提过？不，我想也是。今年我五十二岁。不过这些年大半都关在图书馆和工坊里，所以年纪也说明不了什么。~
EXTERN C0AURAJ t6.3

CHAIN C0AURAJ t6.2
~嗯……我倒没这么看。不过……好吧，对。你说得有道理。可是……~
EXTERN C0AURAJ t6.3

CHAIN C0AURAJ t6.3
~我不是在把事情说得好听，<CHARNAME>。我曾以为自己知道所有该知道的事，直到我渡海从兰坦来到这些地方。那时我才明白，我所知的几乎什么都不是。~
= ~有意思，等我弄清外面究竟有什么，我的看法变了这么多。离开时，我以为自己是要把知识分享给一个在学问上远远落后的世界。可现在，我想我学到的远比我教给别人的多。~
= ~可以说，你已经成为我的老师之一了，<CHARNAME>。只是跟着你，对我而言就抵得上在图书馆与学院里十年无尽的苦功。~
END
++ ~看来你活着总离不开“能学到什么”，奥拉。除此之外你就没有别的追求吗？~ + t6.4
++ ~你已经知道得够凡人活好几辈子了。对你来说，这尽头到底在哪里？~ + t6.5
++ ~这事你闲下来再慢慢琢磨。眼下我们还有正事要办。~ + t6.0

CHAIN C0AURAJ t6.4
~这……这真的就是我所会的一切。这是我最擅长的——一直擅长的事。而且……是的，有时我觉得这也是我唯一在乎的。因为无论我懂得多少、能做到多少，我知道总有更多，永远会有更多。~
EXTERN C0AURAJ t6.6

CHAIN C0AURAJ t6.5
~我不知道。也许永远没有尽头。知识总在增长、变化，无论是创造新知识，还是我们对已知之事的理解。对求知识的人而言，没有终点站。只有旅程。即便对我也是如此。~
EXTERN C0AURAJ t6.6

CHAIN C0AURAJ t6.6
~我擅长我的行当，但我并不完美。我知道我永远不会完美。我总能做得更好。总有值得去追的东西，我对此很满足。这正是推着我前进的东西。不也人人如此吗？~
= ~我出生时，父母认定我学习的能力是一种天赋，是我们所敬之神——贡德、阿祖斯、欧格玛——赐下的礼物……也许他们说得对，可我从不这么看。我不愿相信我的本事是运气或祝福的产物。我想相信我所得到的一切都来自我自己，来自我推着自己向前。~
END
++ ~所以你不信神赐。这是否意味着你不信神？~ + t6.7
++ ~我想，这么看也说得通。~ + t6.8
++ ~我想我们该继续走了。以后有的是时间谈。~ + t6.0

CHAIN C0AURAJ t6.7
~我信。我亲眼见过凭据。“奇迹缔造者”贡德在动荡之年曾行走于我们之间。但我这一生从没向他或任何有名之神祈过祷。~
EXTERN C0AURAJ t6.8

CHAIN C0AURAJ t6.8
~我……抱歉，<CHARNAME>。我不该开始谈神的事，尤其是现在。不是说我讨厌他们，也不是不感激他们为凡人做过的事，只是……那不是我想投身的一种生活方式。~
= ~我们改天再谈。眼下我们不是还有别的事要做吗？~
EXIT

// TALK 7

CHAIN IF ~Global("C0AuraTalk","GLOBAL",14)
Global("C0AuraRestTalk","GLOBAL",1)~ THEN C0AURAJ t7
~哦，终于有机会放松一下、把脚抬起来了。穆菲！茶点饼干呢？哦，谢谢。茶也快好了。~ [C0BLANK]
DO ~IncrementGlobal("C0AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",TWELVE_HOURS)
SetGlobalTimer("C0AuraTalkTimer","GLOBAL",THREE_DAYS)~
END
++ ~看来你挺享受的。~ + t7.1
++ ~茶和饼干？我们是在冒险还是在野餐？~ + t7.2
++ ~好棒的茶会。介意我加入吗？~ + t7.3
++ ~我就不打扰你了。~ + t7.0

CHAIN C0AURAJ t7.0
~唉，你确定吗，<CHARNAME>？我正要请你一起呢。至少睡前不想来点点心吗？~
END
++ ~我想我也可以来点。~ + t7.4
++ ~我真的不太想。今天够长了，我只想歇一歇。~ + t7.x

CHAIN C0AURAJ t7.x
~哦……好吧。那样的话，我想我也去睡吧。一个人的时候实在没什么意思……~
DO ~RestParty()~ EXIT

CHAIN C0AURAJ t7.xx
~哦。我明白了。~
= ~那我想我浪费了我们两人的时间。抱歉。~
DO ~IncrementGlobal("C0AuraInsulted","GLOBAL",1) RestParty()~ EXIT

CHAIN C0AURAJ t7.1
~是啊！你不想加入吗？我准备了够我们俩喝的茶和点心。~
EXTERN C0AURAJ t7.4

CHAIN C0AURAJ t7.2
~谁说不能两样都做？白天冒险，夜里吃点心。来加入吧，<CHARNAME>！~
EXTERN C0AURAJ t7.4

CHAIN C0AURAJ t7.3
~不，一点也不！我本来就要请你一起的。~
EXTERN C0AURAJ t7.4

CHAIN C0AURAJ t7.4
~来，坐下随便挑！壶里有玫瑰茶，点心也多得是。酪乳饼干、杏仁饼干、卡拉图米糕、巧克力蛋糕、柠檬蛋糕、蜜饯果子……~
END
++ ~这点心种类又多又杂。你都是从哪儿弄来的？~ + t7.5
++ ~那我就挑了。谢了，奥拉。~ + t7.6
++ ~我不太喜欢甜的，谢了。不过我要一杯茶。~ + t7.6
++ ~现在不了。我要去睡了。~ + t7.x

CHAIN C0AURAJ t7.5
~哦，嗯……我对甜点很有眼光，你知道的。看到什么好东西，我就买下来存着，想存多久就存多久。有些还是我来剑湾之前就留着的……~
= ~不过别担心。它们都是新鲜的，我用一种很特别的方法存放这些点心，不会变硬也不会走味。不信你尝尝。~
END
++ ~那我就挑了。谢了，奥拉。~ + t7.6
++ ~我不太喜欢甜点，谢了。不过我要一杯茶。~ + t7.6
++ ~现在不了。我要去睡了。~ + t7.x

CHAIN C0AURAJ t7.6
~好，给你一杯玫瑰茶……小心，烫。要是你觉得不够甜，还有方糖和蜂蜜。~
= ~啊……真好，不是吗？~
END
++ ~你说的是茶，还是别的什么？~ + t7.7
++ ~非常好。~ + t7.7
++ ~你在说什么？~ + t7.7

CHAIN C0AURAJ t7.7
~我说的是茶。不过……也许我也另有所指。你知道，这些并不是为我自己准备的。~
= ~说实话，我准备这些已经有一阵子了。为你准备的，<CHARNAME>。你让我跟着这么久，我总觉得欠你些什么，尽管我既不是战士，也不是什么对你重要的人。~
= ~我不知道能为你做些什么作为回报，所以就摆了这个小小的茶会，让你有机会放松一下。它……不算太过，也不算太寒酸吧？~
END
++ ~一点也不。我觉得刚刚好。~ + t7.8
++ ~我很感动。可你真的不必回报我什么。~ + t7.8
++ ~*笑* 嗯，不管是太过还是太寒酸，我都收下。~ + t7.8
++ ~你以为我想坐在这儿听你说一整天？我走了。~ + t7.xx

CHAIN C0AURAJ t7.8
~哦……好，那很好。我怕这还不够让你开心。我能把一台机器从里到外弄明白，可人……我对人真的一无所知。~
= ~说起来，这也算我自己的错。当年我只是个兰坦发明家时，人们来找我，只为把问题得到解答、把请求得到满足。除了家人，我几乎没几个人能单纯为了说话而说话……~
= ~那时我觉得这太不重要了。除了我的工作，别的一切都不重要。我这一辈子受的教导都是相信科学。确凿的事实。可经历了这一切、见过这些地方之后……科祖库拉的信仰，还有剑湾这里的魔法……我已经很难再单纯以兰坦人的方式思考了。~
= ~如果有一天我能回到过去，我不知道过去的我还能不能认出现在的我。嘿嘿……我也不确定自己还认不认得过去的我。~
= ~这算错吗，<CHARNAME>？我身上发生的这些改变，是坏事吗？哦，算了。我想你也答不上来，连我自己都不再了解自己了。抱歉跟你唠叨。~
END
++ ~不，没关系。我觉得这些都是该问的好问题。~ + t7.9
++ ~这些改变是好是坏，得你自己决定。别人替你做不了决定。~ + t7.10
++ ~随便吧。我要去睡了。~ + t7.13

CHAIN C0AURAJ t7.9
~你也许说得对，可是……我不知道。一个我答不上来的问题……它让我不安。可我不该让它也开始困扰你。~
EXTERN C0AURAJ t7.11

CHAIN C0AURAJ t7.10
~我知道。只是……我很困惑。以前只要稍下功夫，我理解什么都从不费力，可连自己都理解不了……这太荒唐了，不是吗？*叹气* 哦，算了。我不该再耽搁你。~
EXTERN C0AURAJ t7.11

CHAIN C0AURAJ t7.11
~希望你今晚过得愉快，<CHARNAME>。还有……谢谢你听我说。你是这么久以来第一个肯听我说的人。~
END
IF ~Gender(Player1,FEMALE)~ + t7.12
IF ~!Gender(Player1,FEMALE)~ + t7.13

CHAIN C0AURAJ t7.12
~我真希望早点认识像你这样的人。你是我见过最强、最有智慧、而且……而且最美的人。~
EXTERN C0AURAJ t7.13

CHAIN C0AURAJ t7.13
~晚安，<CHARNAME>。~
DO ~RestParty()~ EXIT

// TALK 8

CHAIN IF ~Global("C0AuraTalk","GLOBAL",16)~ THEN C0AURAJ t8
~我……我想我们现在有麻烦了，对吧？我是说……比之前更麻烦？~ [C0BLANK]
DO ~IncrementGlobal("C0AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",TWELVE_HOURS)
SetGlobalTimer("C0AuraTalkTimer","GLOBAL",THREE_DAYS)~
END
++ ~你害怕吗，奥拉？~ + t8.1
++ ~我们会没事的。我不会让任何东西拦住我，绝不是现在。~ + t8.2
++ ~我不记得问过你的意见。~ + t8.3

CHAIN C0AURAJ t8.1
~不……不，我相信你能带我们度过这一关，可是……~
EXTERN C0AURAJ t8.4

CHAIN C0AURAJ t8.2
~对。我相信你，<CHARNAME>。~
EXTERN C0AURAJ t8.4

CHAIN C0AURAJ t8.3
~我……我不是想发表意见。我只是想帮忙。~
EXTERN C0AURAJ t8.4

CHAIN C0AURAJ t8.4
~只是……我从没想过事情会糟到这个地步。说实话，到现在为止，我觉得自己一直没把这趟冒险当回事，为此……我很抱歉。~
= ~我不想成为你的负担，<CHARNAME>。如果有什么我能做的……拿着，这个给你。这是我做来在路上保命的隐身装置。要是我们得躲着官府，它也许派得上用场。~
DO ~GiveItemCreate("c0autt04",Player1,5,0,0)~
= ~我不确定它还能用几次，不过……应该够。我宁愿不杀不该死的人，所以……希望它能帮我们少打几场。~
END
++ ~别把自己当成负担。你能做的事，我想我找不到第二个人来做。~ + t8.5
++ ~这会非常好用。谢谢你。~ + t8.6
++ ~这东西你一直留着自己用？~ + t8.7
++ ~我不要你又一件没用的玩具。~ + t8.x

CHAIN C0AURAJ t8.5
~哈哈……这让我听起来比我自己感觉的厉害多了。我不确定自己配得上，不过……谢谢，<CHARNAME>。~
EXTERN C0AURAJ t8.6

CHAIN C0AURAJ t8.6
~带路吧，<CHARNAME>。不管多难，我都会尽力不让你失望。~
EXIT

CHAIN C0AURAJ t8.7
~不——不！我是说……嗯，是的……我们相遇之后我就没用过。到现在都是你在保护我，而且……我不想再躲了。希望你能原谅我。~
END
++ ~好，我原谅你。至少你在想着帮忙。~ + t8.6
++ ~我不在乎。你只有有用的时候才留在这里。~ + t8.x

CHAIN C0AURAJ t8.x
~可——可是……*叹气* 我明白。抱歉，我不该想着帮忙。~
DO ~IncrementGlobal("C0AuraInsulted","GLOBAL",1)~ EXIT

// TALK 9

CHAIN IF ~Global("C0AuraTalk","GLOBAL",18)~ THEN C0AURAJ t9
~拿着，<CHARNAME>。这是我给你做的！~ [C0BLANK]
DO ~GiveItemCreate("c0amaga2",Player1,1,0,0)
IncrementGlobal("C0AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",TWELVE_HOURS)
SetGlobalTimer("C0AuraTalkTimer","GLOBAL",THREE_DAYS)~
END
++ ~这是……一条项链？看着跟你戴的那条一模一样。~ + t9.1
++ ~谢谢，奥拉。~ + t9.2
++ ~挺好的，不过我们现在没时间说话。还是谢谢你的礼物。~ + t9.0

CHAIN C0AURAJ t9.0
~当然……希望它能保你平安。我知道我的那条能。~
EXIT

CHAIN C0AURAJ t9.1
~对！不过我没能给你弄到玉，只好用了别的东西。可它挺好看的，不是吗？~
EXTERN C0AURAJ t9.3

CHAIN C0AURAJ t9.2
~你不用谢我。我们是朋友。我只是想保你平安。~
EXTERN C0AURAJ t9.3

CHAIN C0AURAJ t9.3
~母亲……我是说，丽华小姐在我被冲到科祖库拉后不久就给了我这个。那时我几乎什么都记不得……所以她把这条挂在我脖子上，好让我不受邪灵侵扰。~
= ~我知道现在追着你的恐怕不只是灵体，可是……它也许还是有用。我不是丽华小姐，没法给它祝圣，所以它或许只是块雕过的石头，可是……~
END
++ ~它不只是块雕过的石头。我相信它会保我平安。~ + t9.4
++ ~也许吧，但我发现，信念最终会让某些事成真。谢谢，奥拉。~ + t9.4
++ ~一块一文不值的雕石。我不要这个。~ + t9.5

CHAIN C0AURAJ t9.4
~要是它保不了你平安，那……我希望它至少能让你开心。~
EXIT

CHAIN C0AURAJ t9.5
~好吧，随你！既然你这么想，那我也不要回来了！~
DO ~IncrementGlobal("C0AuraInsulted","GLOBAL",1) SetGlobal("C0AuraTalkStopped","GLOBAL",1)~ EXIT

// TALK 10

CHAIN IF ~Global("C0AuraTalk","GLOBAL",20) Global("C0AuraRestTalk","GLOBAL",2)~ THEN C0AURAJ t10
~嘿。过来在我旁边坐一会儿吧，<CHARNAME>！火边又暖又舒服。~ [C0BLANK]
DO ~IncrementGlobal("C0AuraTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraTalkRealTimer","GLOBAL",TWELVE_HOURS)
SetGlobalTimer("C0AuraTalkTimer","GLOBAL",THREE_DAYS)~
END
++ ~这次没有茶和饼干？~ + t10.1
++ ~当然。我喜欢有你作伴。~ + t10.2
++ ~还是不了。我太累了。~ + t10.0

CHAIN C0AURAJ t10.0
~哦。好……好好休息。~
DO ~RestParty()~ EXIT

CHAIN C0AURAJ t10.1
~不，抱歉。不过我另有些东西，等下再说。~
EXTERN C0AURAJ t10.2

CHAIN C0AURAJ t10.2
~我们一起经历了这么多，不是吗？我之前说过，我现在把我们当成密友，可我没问过你怎么看我。~
= ~我算是个好朋友吗？还是说我一直在拖累你？你对我到底有没有一点看法？~
END
+ ~Gender(Player1,FEMALE)~ + ~我很喜欢你，奥拉。~ + t10.3
+ ~Gender(Player1,MALE)~ + ~我很喜欢你，奥拉。~ + t10.4
++ ~这根本不用问。我觉得我们现在已经亲密到朋友所能及的极限了。~ + t10.6
++ ~你还行，但也就到这儿了。别太投入。~ + t10.8
++ ~我不想谈这个，奥拉。我更想去睡。~ + t10.0

CHAIN C0AURAJ t10.3
~你真的这么想？我……听你这么说我真的很高兴，<CHARNAME>。我……我也真的很喜欢你。~
EXTERN C0AURAJ t10.7

CHAIN C0AURAJ t10.4
~喜欢我……是哪一种喜欢，<CHARNAME>？抱歉，我不该问。当然，是朋友那种。你是这个意思，对吧？~
END
++ ~如果我说我是另一种喜欢，你会怎么反应？~ + t10.5
++ ~是朋友，对。这样你介意吗？~ + t10.6

CHAIN C0AURAJ t10.5
~哦，你是说……那种喜欢。我……抱歉，<CHARNAME>，那……那不可能。我……即便年轻时，我也从没对男孩有兴趣。我喜欢的始终是我的机器，还有……还有身边有别的女孩。~
= ~可是，我……我还是喜欢跟你在一起。希望这没关系。即便我没法把你当成更多。~
END
++ ~不，没关系。我只是问问。~ + t10.6
++ ~我明白了……那我想我也无能为力。事情就是这样。~ + t10.6
++ ~好吧，既然这样，我想我们也没什么好谈的了。晚安，奥拉。~ + t10.8

CHAIN C0AURAJ t10.6
~谢谢你。到这一步，你对我已经亲切到朋友所能及的极限了……我说过，我一向不擅长跟人打交道。所以当我有一个喜欢的人，我就想尽力对他好。~
EXTERN C0AURAJ t10.7

CHAIN C0AURAJ t10.7
~呃……总之，我请你坐过来不是为了谈我们的感受。我确实有样东西想分享。~
= ~给。这是“清酒”，卡拉图的酒。这一小壶我一直带在身边……从我离开科祖库拉起。我平时不喝酒，不过……这是跟亲近的人分享的好东西。~
END
++ ~你怎么会有这种东西？~ + t10.9
++ ~呃……“清——酒”？是用什么做的？~ + t10.10

CHAIN C0AURAJ t10.8
~哦。我明白了……你这么说我很遗憾。不过，这片土地上我认识的人里，我最敬重你。所以不管你怎么看我，我……我还是会尽力为你做事。我保证。~
= ~晚安，<CHARNAME>。希望我没烦到你。~
DO ~RestParty()~ EXIT

CHAIN C0AURAJ t10.9
~丽华小姐很爱喝清酒。其实挺好笑的……她平时是最温和、最纯洁的人，可喝够几杯之后就完全变了一个人。在她喝醉之前，我根本不知道她能笑得那么大声……~
= ~呃，抱歉。我又要开始唠叨了。我想我们先用小杯吧。这味道得慢慢习惯。我知道我起初并不喜欢，后来才喝惯的。~
= ~这酒是在我住过三年的那个科祖库拉村庄酿的。那是丽华小姐最喜欢的酒，所以她买了一瓶，当作生日礼物送给我……那是在我想起自己生日之后的事了。我一口都没喝过，不过据说非常不错。~
== C0AURAJ IF ~InParty("C0Drake")~ THEN ~不过别告诉德雷克我一直瞒着他藏着这瓶酒。*轻笑* 他永远不会原谅我的。~
END
+ ~InParty("C0Drake")~ + ~德雷克什么都不会从我这儿听到。我们背着他喝光。~ + t10.11
++ ~那就打开吧。我们尝尝这酒。~ + t10.12
++ ~还是不了。我不喝酒。~ + t10.13

CHAIN C0AURAJ t10.10
~发酵的米。我知道，我知道……听起来不怎么样，对吧？可其实相当好喝。~
EXTERN C0AURAJ t10.9

CHAIN C0AURAJ t10.11
~嘿嘿。我喜欢你这想法，<CHARNAME>。~
EXTERN C0AURAJ t10.12

CHAIN C0AURAJ t10.12
~闻着不错。有点甜，像蜂蜜。喝起来像……青柠、李子、迷迭香和薄荷。让我再喝一杯……~
= ~啊……真好。你知道，<CHARNAME>，我……没想到跟你旅行会这么有意思。那么多我本来永远不会学到的东西，还有……本来不会交到的朋友……~
= ~哦，糟糕……我刚想起来……我酒量不好。我头已经有点晕了……而且我觉得很累……~
END
IF ~Gender(Player1,FEMALE)~ + t10.14
IF ~!Gender(Player1,FEMALE)~ + t10.15

CHAIN C0AURAJ t10.13
~哦。那我也喝一杯吧……既然我又想起科祖库拉了……~
EXTERN C0AURAJ t10.12

CHAIN C0AURAJ t10.14
~那我就……靠在你肩上歇一会儿，如果你不介意，<CHARNAME>……好困……~
END
++ ~（别动）~ + t10.16
++ ~嘿，别在我这儿睡过去，奥拉。去歇着吧。~ + t10.15

CHAIN C0AURAJ t10.15
~我想我该去躺下睡一会儿了，<CHARNAME>……晚安。~
DO ~RestParty()~ EXIT

CHAIN C0AURAJ t10.16
~谢谢，<CHARNAME>……你闻起来也很好……而且你好暖……我没睡着……真的，我没……~
= ~呼……呼……~
DO ~RestParty()~ EXIT

// CANDLEKEEP

APPEND C0AURAJ

IF ~Global("C0AuraCandlekeep","GLOBAL",1)~ candlekeep
SAY ~哦哦哦……*这*才叫真正的图书馆。我看连桑巴尔那座都不到它一半大……我们能留下吗，<CHARNAME>？至少让我把每本书都翻一遍。也许两遍！~
++ ~天哪，奥拉，你眼睛瞪得像盘子！等一下我是不是得拦着你别往书架上爬？~ DO ~SetGlobal("C0AuraCandlekeep","GLOBAL",2)~ + candlekeep1
++ ~到那时候我们全都老糊涂了，奥拉。放过我们吧。~ DO ~SetGlobal("C0AuraCandlekeep","GLOBAL",2)~ + candlekeep2
++ ~我们不是来逛的。走吧，还有活要干。~ DO ~SetGlobal("C0AuraCandlekeep","GLOBAL",2)~ + candlekeep3
END

IF ~~ candlekeep1
SAY ~也——也许……？~
IF ~~ + candlekeep2
END

IF ~~ candlekeep2
SAY ~你是在这儿长大的，<CHARNAME>？真的？那你怎么会想离开？~
++ ~谁不想离开？这儿太无聊了！~ + candlekeep2.1
++ ~我别无选择。~ + candlekeep2.2
++ ~行了，奥拉。还记得我们来这儿做什么吗？~ + candlekeep3
END

IF ~~ candlekeep2.1
SAY ~我想，一个人的宝贝就是另一个人的垃圾。或者……反正就那么个说法。我一直没太弄懂人类的谚语。~
IF ~~ EXIT
END

IF ~~ candlekeep2.2
SAY ~要是换我，得又踢又叫地被人拖出去才行！呃，总之，我知道我们时间不多，不过我走之前能不能借一两本书？也许？~
IF ~~ EXIT
END

IF ~~ candlekeep3
SAY ~唉！就不能等等吗？~
++ ~不。~ + candlekeep3.1
++ ~等我们有空，肯定会再回来的。~ + candlekeep3.2
END

IF ~~ candlekeep3.1
SAY ~……*噗* 我们不是朋友了，<CHARNAME>！~
IF ~~ EXIT
END

IF ~~ candlekeep3.2
SAY ~好——好吧……不过你最好说话算话！~
IF ~~ EXIT
END
END

// INTERJECTIONS

I_C_T2 ARCAND 2 C0AuraARCAND2
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~剑湾的侏儒真怪……有时真难相信我们竟是同族。~
== C0AURAJ ~不过我觉得他是想告诉我们什么？海边藏着什么东西？~
END

I_C_T ARKION 1 C0AuraARKION1
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呃！要说什么我最不愿研究，那就是死人的肢体。*打个哆嗦* 我们能不能别？~
END

I_C_T ALATOS 9 C0AuraALATOS9
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦，哈鲁阿的技术？就在这城里？我什么都愿意拿来换……不，等等，不行！不能被贼引诱！~
END

I_C_T BAELOTH 0 C0AuraBAELOTH0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦，我可怜的耳朵……耳罩，我的耳罩呢？穆菲，你把我的耳罩藏哪了？~
END

I_C_T BASSIL 1 C0AuraBASSIL1
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呃呃呃……~
== C0AURAJ ~啊！抱歉，<CHARNAME>，刚才是我的脑子理解不了眼前所见、中途停机了。哦不，这不会传染吧？~
END

INTERJECT BENTLY 1 C0AuraBENTLY1
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~你好，本特利叔叔！~
== BENTLY ~谁——啊。是你啊，丫头。要叫叔叔也得看准人。我们毕竟没亲戚关系，这么叫让我觉得自己老了。~
== C0AURAJ ~哦，我知道，只是……这一带只有你这个侏儒让我觉得有亲缘感。这么叫你我更有亲近感，你知道吧？~
== BENTLY ~好吧，随你，丫头。你的寻找有进展吗？~
== C0AURAJ IF ~!Dead("c0saito")~ THEN ~还是没有，说来遗憾。~
== C0AURAJ IF ~Dead("c0saito")~ THEN ~我……该做的都做了。我想我会跟着<CHARNAME>，直到命运召唤。~
== BENTLY ~嗯。好吧，要是出什么事……尽管回友善之臂来。我和我妻子总会给你留个位置。你帮我们修好那轮子，我们还欠你人情呢。~
== C0AURAJ ~谢谢，本特利叔叔。随时。~
EXTERN BENTLY 1

I_C_T BREVLI 14 C0AuraBREVLI14
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~不！呃……抱歉，我不是有意喊……可你不能偷我家乡这么贵重的器物。你就是不能！~
== BREVLI ~哎呀！我什么都没说，小姐……嘿嘿。不过你会考虑的，对吧？~
END

I_C_T BORDA 0 C0AuraBORDA0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*低声* 小心，<CHARNAME>……我探测到这人的包里传来大量魔法诅咒。我不觉得他有什么真货……或者安全的东西。~
END

I_C_T CARSA 5 C0AuraCARSA5
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呃……要是那罐子到我手上，我或许还动过研究它的念头，可现在我已经决定，绝对*不要*它靠近我。~
== C0AURAJ ~我们能不能……退开点，<CHARNAME>？她让我发毛。~
END

I_C_T CENTEO 0 C0AuraCENTEO0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦，呃……*打个哆嗦* 我们为什么非得走进这儿？~
END

I_C_T CENTEO 2 C0AuraCENTEO2
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦哦，问她点蜘蛛生理学的问题！我一直很好奇！~
END

I_C_T CHARLE 8 C0AuraCHARLE8
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~你好！这种发掘正合我意。毕竟我可是被兰坦考古学家公会接纳过的。~
== CHARLE ~是吗？你也是考古学家与历史学者？也许哪天我们能坐下来交换笔记。~
== C0AURAJ ~哦，要不是眼下有事，我一定会的，我保证。我们帮这位好心的先生一把吧，<CHARNAME>？谁知道里面能找出什么！~
END

I_C_T CHESS 0 C0AuraCHESS0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~嗯，我从不会拒绝一盘棋……只要我的对手别再老是作弊！~
END

INTERJECT CORAN 4 C0AuraCORAN
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦……可以吗，<CHARNAME>？求你了？我从没见过活的翼龙，不过据说它们很可爱！~
END
++ ~你觉得翼龙……可爱？~ EXTERN C0AURAJ C0AuraCORAN2

CHAIN C0AuraJ C0AuraCORAN2
~这什么意思？你不觉得它们可爱？~
== CORAN ~换我我可不愿让这位小姐失望，朋友。去打点翼龙怎么样？~
COPY_TRANS CORAN 4

I_C_T CUTCHAR 0 C0AuraCUTCHAR0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~嗯，从周围岩石的构成和墙上壁画的状况看——保存得非常好，我得补充一句……~
== C0AURAJ ~我估计这地方不会早于……嗯……谷历 -3408 年？~
== CUTCHAR ~……对，听起来相当准确。格利默夏恩小姐，你怎么能这么快就推算出来？~
== C0AURAJ ~考古学家公会曾让我参加过一次很像这样的发掘。不过那一次规模更大，而且……陈设也更齐全。~
== CUTCHAR ~当真？很是有趣！也许我们歇息时你可以讲讲你的经历？~
== C0AURAJ ~当然！关于这个课题的论文我几乎能一字不差地背出来，尽管问。~
== %IMOEN_JOINED% IF ~InParty("%IMOEN_DV%")~ THEN ~呃，谁能告诉我，这两个人在欧格玛的名下到底在说什么？~
== %QUAYLE_JOINED% IF ~InParty("Quayle")~ THEN ~哈！仿佛我这颗伟大的脑袋会听不懂他们说的每一个字。呃……他们*是*在说这里长的那片菌类，对吧？~
== %VICONIA_JOINED% IF ~InParty("Viconia")~ THEN ~这话对我而言很罕见，但我求你，基维尔，说通用语。~
== %KAGAIN_JOINED% IF ~InParty("Kagain")~ THEN ~我才不管你们这帮家伙在说什么，不过你最好回答最关键的问题：这个臭坑里有金子吗，值得我费这时间？~
== %MINSC_JOINED% IF ~InParty("Minsc")~ THEN ~布布？你能给明斯克讲讲奥拉和那个灰扑扑的人在说什么吗？……*吱* 啊！明斯克现在完全明白了！我的朋友，你一如既往地睿智！~
END

I_C_T DAERRAGH 1 C0AuraDAERRAGH
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦，哦，再来一次，<CHARNAME>，我得弄明白他是怎么做到的！~
== DAERRAGH ~你不会活着后悔的！~
END

I_C_T DAITEL 0 C0AuraDAITEL0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~啊！鬼——鬼！~
== DAITEL ~有什么……不对劲吗，杜拉格……？~
END

I_C_T2 DAVAEO 0 C0AuraDAVAEO0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~小心，<CHARNAME>……我能从这家伙身上感应到极强的奥术力量。我不觉得他的长袍只是为了好看。~
END

I_C_T2 DIGGER 11 C0AuraDIGGER11
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哇！我上次发掘可没这种事！~
END

I_C_T2 DOOMSAY 1 C0AuraDOOMSAYER
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~瘆人！我上次发掘绝对没这种事！~
END

I_C_T2 DOOMSAY 2 C0AuraDOOMSAYER
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~瘆人！我上次发掘绝对没这种事！~
END

I_C_T2 DOOMSAY 3 C0AuraDOOMSAYER
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~瘆人！我上次发掘绝对没这种事！~
END

I_C_T2 DRIENN 1 C0AuraDRIENN1
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦不！我们走吧，<CHARNAME>，可能有只可怜的猫咪命悬一线！~
END

I_C_T ELMIN2 0 C0AuraELMIN20
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦天……您真的是埃尔明斯特本人吗，费伦在世最年长、最伟大的法师？呃，我，呃，我是说——幸会，先生？~
== ELMIN2 ~“最伟大”或许见仁见智，“最年长”我倒是当得起。但请恕我失礼，小姐，我余时无几，必须与这位年轻的<CHARNAME>谈谈。~
END

I_C_T ELMINS4 0 C0AuraELMINS40
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~退后，退后，<CHARNAME>！别听这些……东西的话！它们骨子里就是邪恶的！~
END

CHAIN IF ~InParty("C0Aura") See("C0Aura") Global("C0AuraFriWen","GLOBAL",0)~ THEN FRIWEN wench
~哦，看看是谁，那位创造奇迹的小姐本人。你上哪儿去了？~
DO ~SetGlobal("C0AuraFriWen","GLOBAL",1)~
== C0AURAJ ~你好！我跟<CHARNAME>一起冒险有一阵子了。抱歉一直没机会过来看看。~
== FRIWEN ~我说，幸亏是你而不是我。好啦，别把自己弄死了。~
END

I_C_T GALILE 2 C0AuraGALILE2
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~嗯，正如我可敬的叔祖在茶点时对我说的：“若值得查一次，就值得查两次；若值得查三次，那就……”~
== C0AURAJ ~呃，我背错了。最后那段是怎么说的来着……？~
== GALILE ~愿你所思所惑比我更快得解。一路平安。~
END

INTERJECT GALLOR 1 C0AuraGALLOR1
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~……~
= ~*嗖* *砰！*~
== GALLOR ~这——这是干什么，你这个小丫头？！~
== C0AURAJ ~我不喜欢妨碍别人求知的人。你有五秒钟离开这里，否则下一箭不会射偏。~
EXTERN GALLOR 2

INTERJECT GANTOL 1 C0AuraGANTOL1
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦，螺母和螺栓！呃……“喵”？~
== GANTOL ~……~
== C0AURAJ ~*咽口水*~
EXTERN GANTOL 4

I_C_T2 GAZIB 1 C0AuraGAZIB1
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦！*鼓掌* 再来一个，再来一个！下一次表演我一定能看破！~
END

I_C_T GELLAN 0 C0AuraGELLAN0
== GELLAN IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~啊，我看见你把我们亲爱的小发明家带来了！你还好吗，奥拉，亲爱的？~
== C0AURAJ ~一切都好，盖拉娜夫人。谢谢您的关心。~
== GELLAN ~好，那很好，亲爱的。那么，你有什么需要吗？~
END

I_C_T2 GERDE 0 C0AuraGERDE0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~嗯。你知道，在兰坦，动物学家公会曾杂交巨型蚯蚓来干同样的事。安全得多，当然，可它们实在太丑了。那些掘地虫其实还挺可爱。~
END

INTERJECT HALFTR 4 C0AuraHALFTR4
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~噗。你能骗过别人，可骗不过一个兰坦奇械师。滚吧，你这骗子。~
EXTERN HALFTR 6

I_C_T2 JARED 0 C0AuraJARED0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呀！熊？哪儿？哦，我恨熊……我们非得对付它吗，<CHARNAME>？呃，要是必须的话……~
END

INTERJECT JENKAL 0 C0AuraJENKAL0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呃！这里面一股狗头人尿味！谁会想住在这儿……等等……~
EXTERN JENKAL 3

I_C_T2 KISSIQ 1 C0AuraKISSIQ1
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦天，这是新东西！走吧，<CHARNAME>，我得亲眼看看这个异常现象！~
END

I_C_T KOVERA 0 C0AuraKOVERAS0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~这家伙身上有东西让我发毛，<CHARNAME>。就像他同时看着我们所有人……~
END

I_C_T LUCKY 0 C0AuraLUCKY0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦——呵——呵——呵……这*才*有意思。我从没见过一批既毫无价值又同时危险的收藏！我非得检视这些宝物不可！~
END

I_C_T2 MARL 0 C0AuraMARL0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呀！~
END

I_C_T2 MARL 13 C0AuraMARL13
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦，好。那人挺吓人的，幸好我们没跟他打。~
END

I_C_T MUTAMI 0 C0AuraMUTAMI0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~这……太恶心了！你也许是侏儒，但我不会让你就这么算了！~
== MUTAMI ~诶嘿嘿……那你打算怎么办呢，我倒想知道？~
END

I_C_T %eet_neb% 2 C0AuraNEB2
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~这……这太病态了。你真恶心。~
== %eet_neb% ~来吧，别这样。你也是侏儒，跟我一样，嘻嘻。而且你还挺漂亮的，真漂亮……~
== C0AURAJ ~混……混账……滚开，别碰我！别以为我不能一箭穿你的脑袋让你更丑，你这……你这畜生！去死吧！倒地死掉吧！~
== %eet_neb% ~你伤我的心了，即便你说的话我一半都听不懂，漂亮姑娘，嘻嘻……真可惜……~
END

I_C_T2 NEXLIT 0 C0AuraNEXLIT0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~不要！不要熊！什么都行，就是别来熊！~
END

I_C_T2 NIEMAI 11 C0AuraNIEMAI11
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哇。这句骂得好，<CHARNAME>。不介意我记下来以后用吧？~
== NIEMAI ~闭嘴！！~
END

I_C_T NARCIL 0 C0AuraNARCIL0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦，实验！这才是我听得懂的话。~
END

I_C_T2 NARCIL 4 C0AuraNARCIL4
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~碰不得啊！真正的研究者绝不会把自己的发现藏着。唉，这真不幸，不过我想我们得给你点教训了！~
END

I_C_T2 OGRECO 0 C0AuraOGRECO0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呃，好吧。嘘！要是你想给这个又大又丑的家伙准备点惊喜，<CHARNAME>，尽管开口。~
END

I_C_T OGRMBA 0 C0AuraOGRMBA0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~我——我想我要吐了……我还以为巨型蚯蚓已经够糟了……~
END

ADD_TRANS_TRIGGER PALLON 0 ~!IsValidForPartyDialog("C0Aura")~ DO 0 1

EXTEND_TOP PALLON 0
+ ~IsValidForPartyDialog("C0Aura")~ + ~恕我冒昧，若你不为当世之事操心，那你的观星又有何用？~ EXTERN C0AURAJ C0AuraPallonia1
+ ~IsValidForPartyDialog("C0Aura")~ + ~你的冥想若无实用，又有什么好处？也许你的预言并不像你想让人相信的那样准确？~ EXTERN C0AURAJ C0AuraPallonia2
END

CHAIN C0AURAJ C0AuraPallonia1
~哦，别这么说，<CHARNAME>。星辰的运行预示着我们远不能理解的事。我们面对的事对我们也许重大，可在宇宙的尺度上它们什么都不是……呃，抱歉。你继续。~
EXTERN PALLON 3

CHAIN C0AURAJ C0AuraPallonia2
~哦，别这么说，<CHARNAME>。星辰的运行预示着我们远不能理解的事。我们面对的事对我们也许重大，可在宇宙的尺度上它们什么都不是……呃，抱歉。你继续。~
EXTERN PALLON 2

I_C_T2 PALLON 4 C0AuraPALLON4
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~嗯，有意思……我的星图总是告诉我未来的灾祸与天象，却从没告诉我现在听到这种事……~
== PALLON ~新的一版事件即将发生。做好准备。~
END

I_C_T POE 2 C0AuraPOE2
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦，哦，我的笔和羊皮纸呢？~
END

I_C_T2 REEVOR3 0 C0AuraREEVOR30
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦，我现在火了。没人能把我跟老鼠扯上关系还全身而退。吃箭吧，怪物！~
END

I_C_T SHISTA 0 C0AuraSHISTA0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~穆菲不喜欢这个人，<CHARNAME>。你听见他磨牙的声音了吗？我起鸡皮疙瘩了……我们问问这人几个问题吧。~
END

I_C_T TAMOKO 0 C0AuraTAMOKO0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~……！丽——丽华……小姐……？~
== TAMOKO ~……~
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraTamoko","GLOBAL",2)~ THEN C0AURAJ tamoko3
~等——等等！！~ [C0BLANK]
DO ~SetGlobal("C0AuraTamoko","GLOBAL",3)~
== TAMOKO ~……~
== C0AURAJ ~请——请等一下，塔摩科小姐！~
== TAMOKO ~……~
== TAMOKO ~你有五秒钟。~
== C0AURAJ ~谢谢。你……认识天之镜丽华吗？~
== TAMOKO ~……~
== TAMOKO ~这与你眼下的事业无关，不是吗？告辞。~
== C0AURAJ ~可是——~
== TAMOKO ~若你想要答案，侏儒，那就跟着你的首领去做我要求的事。也许之后我们还能再见。~
DO ~AddJournalEntry(@20001,QUEST)~ EXIT

INTERJECT TAMOKO 20 C0AuraTamoko1
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>，我想跟塔摩科小姐说几句话……可以吗？~
END
++ ~去吧。~ EXTERN C0AURAJ tamoko5
++ ~为什么？~ EXTERN C0AURAJ tamoko6
++ ~没意义。她是敌人。~ EXTERN C0AURAJ tamoko7

CHAIN C0AURAJ tamoko5
~谢谢。~
== TAMOKO ~我说过会给你答案，侏儒。问吧。~
== C0AURAJ ~塔摩科小姐，你……“天之镜丽华”这个名字对你有什么意义吗？~
== TAMOKO ~有。天之镜丽华大人是我母亲的亲人……她是我的姑母。~
== C0AURAJ ~我……我想也是。~
== TAMOKO ~你戴着我姑母的勾玉。为此，我给你说话的机会。快说。~
== C0AURAJ ~塔摩科小姐，我……我求你宽恕。你的姑母，丽华小姐……为保护我而死。她临终的话里……她要我去找她最后的血脉，并把这些话交给我。“人也许会失去道，但道不会失去人。”我……我知道那些话是说给你的。~
== TAMOKO ~……~
== C0AURAJ ~你的姑母……她一直相信你有回头的选择。求你放下武器……这不是正途。~
== TAMOKO ~毫无分别。我在萨雷沃克麾下的所作所为，早已使我背离了道。神已弃我。若仍自称为天之镜一族，只是玷污其名誉。~
DO ~AddJournalEntry(@20002,QUEST_DONE) AddExperienceParty(5000)~
== C0AURAJ ~不……~
== TAMOKO ~我已给了你说话的机会。现在该由你的首领了结此事了，因为萨雷沃克要的是我死，我别无选择，只能遵从。~
COPY_TRANS TAMOKO 20

CHAIN C0AURAJ tamoko6
~我……我得先确认一件事。也许……我们不必在这里动手。你让我跟她谈好吗？~
END
++ ~好。你有什么要说就说。~ EXTERN C0AURAJ tamoko5
++ ~别费事了。我们非杀她不可。~ EXTERN C0AURAJ tamoko7

CHAIN C0AURAJ tamoko7
~可是……~
== TAMOKO ~言语再无价值。虽然这并不令我愉快，但我别无选择，只能阻止你们去见萨雷沃克。拔你的武器，结束我的痛苦吧，<CHARNAME>。~
COPY_TRANS TAMOKO 20

CHAIN IF ~Global("C0AuraTamoko","GLOBAL",4) Dead("Tamoko")~ THEN C0AURAJ tamoko.dead
~为什么？！你为什么要杀她，<CHARNAME>？~ [C0BLANK]
DO ~SetGlobal("C0AuraTamoko","GLOBAL",5)~
END
++ ~我别无选择。~ + tamoko.dead.1
++ ~这是她想要的。~ + tamoko.dead.1
++ ~因为她是敌人。敌人我照杀。~ + tamoko.dead.1

CHAIN C0AURAJ tamoko.dead.1
~不……丽华小姐，我辜负了你……原谅我，求你原谅我……~
= ~我——我不会怪你，<CHARNAME>。可我们必须阻止萨雷沃克。这是唯一的办法……这是我仅剩的赎罪之路了。~
EXIT

I_C_T2 TENYA 2 C0AuraTENYA2
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呀！我们不会真的去打一个小女孩吧？~
END

I_C_T TETHTO2 2 C0AuraTETHTO22
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~“科维拉斯”……“萨雷沃克”……啊，螺母和螺栓！我怎么就没看出来？~
END

I_C_T2 ULCAST 4 C0AuraULCAST4
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~这么多知识……就这么没了？没有比这更糟的了！<CHARNAME>，我们会帮忙的，对吧？~
END

I_C_T2 ULCAST 5 C0AuraULCAST5
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~想到即便身死仍能继续求知，我便感到安慰……愿你得安息，乌尔卡斯特大师。~
END

I_C_T VAI 0 C0AuraVAI0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~你——你好，警官。你还记得我吗？~
== VAI ~当然，格利默夏恩小姐。我记得你请求我们协助寻找两位来过剑湾的东方人。~
== C0AURAJ ~那……？~
== VAI ~恐怕一无所获。据我所知，没人见过或听过他们的消息。请恕我无能为力。~
== C0AURAJ ~*叹气* 我也料到了。那别管我了，<CHARNAME>才是你想谈的人。~
END

I_C_T VOLO 0 C0AuraVOLO0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦，您不就是伏罗大师吗？~
== VOLO ~正是，小姐。~
== C0AURAJ ~我是您作品的忠实读者，先生！桑巴尔的大图书馆里收着您全部已出版的作品。不过关于您的《伏罗魔法万物指南》，先生，我有几个问题想问……~
== VOLO ~好啦好啦，我很乐意哪天在更私密的场合回答你的所有疑问，不过别在我们这些不那么开明的同伴面前扫了兴致，好吗？~
== C0AURAJ ~哦……对。当然！~
END

I_C_T XAN 0 C0AuraXAN0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哇。我不确定是这地方的气氛影响了这位阴郁先生的心情，还是他本人就在制造这种气氛。~
== XAN ~*叹气*~
END

I_C_T XAN 1 C0AuraXAN0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哇。我不确定是这地方的气氛影响了这位阴郁先生的心情，还是他本人就在制造这种气氛。~
== XAN ~*叹气*~
END

I_C_T ZEKE 0 C0AuraZEKE0
== C0AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呀！希望这是表演安排的一部分……不过我有种感觉，并不是。~
END

EXTEND_BOTTOM RSJASPER 2
+ ~IsValidForPartyDialog("C0Aura")~ + ~奥拉，你觉得你能弄明白这个吗？~ DO ~SetGlobal("ohprisoner","oh3020",3)~ EXTERN C0AURAJ rs.trap1
END

CHAIN C0AURAJ rs.trap1
~这有点麻烦，不过我想……好。另一个囚犯会让我开哪个笼子？~
== RSJASPER IF ~Global("ohjasper_trapped","oh3020",1)~ THEN ~我的笼子。~ [RSW114B]
== RSJASPER IF ~Global("ohjasper_trapped","oh3020",0)~ THEN ~另一个笼子。~ [RSW114A]
== C0AURAJ ~嗯……~
== C0AURAJ IF ~Global("ohjasper_trapped","oh3020",1)~ THEN ~我想……对。这个是带陷阱的，我几乎可以肯定。~
== C0AURAJ IF ~Global("ohjasper_trapped","oh3020",0)~ THEN ~我想……对。带陷阱的是另一个，我几乎可以肯定。~
EXIT

EXTEND_BOTTOM RSBASSAN 5
+ ~IsValidForPartyDialog("C0Aura")~ + ~奥拉，你觉得你能弄明白这个吗？~ DO ~SetGlobal("ohprisoner","oh3020",3)~ EXTERN C0AURAJ rs.trap2
END

CHAIN C0AURAJ rs.trap2
~这有点麻烦，不过我想……好。另一个囚犯会让我开哪个笼子？~
== RSBASSAN IF ~Global("ohbassano_trapped","oh3020",1)~ THEN ~我的笼子。~ [RS114C]
== RSBASSAN IF ~Global("ohbassano_trapped","oh3020",0)~ THEN ~另一个笼子。~ [RSW114D]
== C0AURAJ ~嗯……~
== C0AURAJ IF ~Global("ohbassano_trapped","oh3020",1)~ THEN ~我想……对。这个是带陷阱的，我几乎可以肯定。~
== C0AURAJ IF ~Global("ohbassano_trapped","oh3020",0)~ THEN ~我想……对。带陷阱的是另一个，我几乎可以肯定。~
EXIT

// BURST ORB

CHAIN IF ~GlobalTimerExpired("C0AuraBurstOrbWait","GLOBAL")
Global("C0AuraBurstOrb","GLOBAL",1)~ THEN C0AURAJ burstorb
~嘿。<CHARNAME>！拿着这个。这是我最近做的发明之一。~ [C0BLANK]
DO ~GiveItemCreate("c0autt01",Player1,3,0,0)
SetGlobal("C0AuraBurstOrb","GLOBAL",2)
SetGlobalTimer("C0AuraBurstOrbTimer","GLOBAL",THREE_DAYS)~
END
++ ~这是什么？~ + burstorb.1

CHAIN C0AURAJ burstorb.1
~这是……等等，别掉地上！这是爆裂球。里面装满了力量，小心点。做它可不容易……封存原始能量不是件轻松的事。我得先练熟才行。~
= ~下次我们遇上一群狗头人或恶心的骷髅，就扔一个出去。一旦触地……*轰！* *噼啪！* 会给它们好一顿电击。~
END
++ ~很方便。谢谢你，奥拉。~ + burstorb.2
++ ~我想它也许用得上。~ + burstorb.2
++ ~你还有更多吗？~ + burstorb.3

CHAIN C0AURAJ burstorb.2
~嘿嘿，不用客气。被人看重感觉真好。~
EXTERN C0AURAJ burstorb.3

CHAIN C0AURAJ burstorb.3
~眼下我只做出三个。我还能再做，不过不容易。大概……每三天一个。而且我不敢囤，所以记得在合适的时候来找我要。省着用。也要小心！~
EXIT

// RED/VIOLET POTIONS
CHAIN IF ~Global("C0AuraWeirdPotions","GLOBAL",1)~ THEN C0AURAJ weirdpotions
~这些药水真是……独特。我见过一大堆炼金配方，可这些……嗯，不管是谁调的，肯定是个天才。或者疯子。也许两者都是。~ [C0BLANK]
DO ~SetGlobal("C0AuraWeirdPotions","GLOBAL",2)~
= ~光颜色就怪得离谱。我不知道什么样的试剂能既有这么鲜艳的色调，又有这么剧烈的效果……嗯，也许是苔藓染料？不，那最终会褪色……~
= ~我能取个样本吗，<CHARNAME>？只要一点点，不会影响效力。我也许能弄明白怎么复制这些效果。它们真有意思，可既然我们只有这些，用掉就太可惜了。~
END
++ ~可以。你觉得要多久？~ + weirdpotion.1
++ ~它们看着挺危险。我不确定试着复制是个好主意。~ + weirdpotion.2

CHAIN C0AURAJ weirdpotion.1
~给我……三天。到时候我应该能找到至少能模仿其效果的配方。谢谢，<CHARNAME>！哦，这会好玩极了！~
DO ~SetGlobal("C0AuraWeirdPotions","GLOBAL",3)
SetGlobalTimer("C0AuraWeirdPotionsTimer","GLOBAL",THREE_DAYS)~ EXIT

CHAIN C0AURAJ weirdpotion.2
~嗯，你说了算。不过要是你改主意，我还是很想拿它们做些测试。~
EXIT

CHAIN IF ~Global("C0AuraWeirdPotions","GLOBAL",4)~ THEN C0AURAJ weirdpotions
~嗯，我又多了十几根分叉的发梢，烧坏了我最喜欢的手帕，我的手指至少得染上一个星期的洋红色，可是……我做到了！我想我成功复制了那两瓶彩色药水的效果。~ [C0BLANK]
DO ~SetGlobal("C0AuraWeirdPotions","GLOBAL",5)~
= ~配方我记住了，所以能跟平常那些一起做。它们……不像原版那么不稳定。不过这同样是好事。我觉得稳妥些是好主意。也许以后我会再深入研究。~
= ~我做的这些给你。要是还需要更多，我得再买材料，不过那些材料相当贵。好了，就这些。你继续吧！~
DO ~GiveItemCreate("c0apotx1",Player1,1,0,0) SetItemFlags("c0apotx1",IDENTIFIED,TRUE) GiveItemCreate("c0apotx2",Player1,1,0,0) SetItemFlags("c0apotx2",IDENTIFIED,TRUE) AddXPObject("C0Aura",500)~ EXIT

// TELESCOPE

CHAIN IF ~Global("C0AuraTelescope","GLOBAL",1)~ THEN C0AURAJ telescope
~*叹气* 我想我说服不了你放弃这个，对吧？这架望远镜毕竟是我家乡的器物。~ [C0BLANK]
DO ~SetGlobal("C0AuraTelescope","GLOBAL",2)~
END
++ ~你有更好的主意吗？~ + telescope.1
++ ~这是不对，可我确实需要钱。~ + telescope.1
++ ~你说得对。我要把它放回去。~ + telescope.1
++ ~除非你有别的办法，否则不行。~ + telescope.1

CHAIN C0AURAJ telescope.1
~其实……我倒有个主意，可以不用偷。我可以用些备用材料做一架复制品，把它交给布雷夫利克。他绝看不出差别。毕竟这片土地上除了我，大概没人能做出这种东西。你觉得呢？~
END
++ ~好主意。要多久？~ + telescope.2
++ ~我想这样更稳妥。只是动作快点。~ + telescope.2
++ ~不。我不管你把这东西看得多重，它对我更值钱。~ + telescope.x

CHAIN C0AURAJ telescope.2
~不会太久。这种地方肯定有能让我干活的工坊。等我一会儿……~
DO ~ClearAllActions() StartCutsceneMode() StartCutscene("c0aufade")~ EXIT

CHAIN IF ~Global("C0AuraTelescope","GLOBAL",2)~ THEN C0AURAJ telescope.3
~好了！这很简单。我在学院受训时折腾过不少这种东西。我打赌你根本看不出差别。~ [C0BLANK]
DO ~SetGlobal("C0AuraTelescope","GLOBAL",3)~
= ~我把真望远镜放到别处了。希望他们不会太追究它怎么被挪了位置。现在我们离开这儿。~
DO ~AddXPObject("C0Aura",1000)~ EXIT

CHAIN C0AURAJ telescope.x
~好。随你。我想我完全看错你了。~
DO ~IncrementGlobal("C0AuraInsulted","GLOBAL",1)~ EXIT

// MAGETALKS

/*

CHAIN IF ~Global("C0AuraMageTalk","GLOBAL",2)~ THEN C0AURAJ race.elf
~~
DO ~IncrementGlobal("C0AuraMageTalk","GLOBAL",1)~
END


// RACETALKS

CHAIN IF ~Global("C0AuraRaceTalk","GLOBAL",2)
Race(Player1,ELF)~ THEN C0AURAJ race.elf
~~
DO ~IncrementGlobal("C0AuraRaceTalk","GLOBAL",1)~
END

CHAIN IF ~Global("C0AuraRaceTalk","GLOBAL",2)
Race(Player1,ELF)~ THEN C0AURAJ race.dwarf
~~
DO ~IncrementGlobal("C0AuraRaceTalk","GLOBAL",1)~
END

CHAIN IF ~Global("C0AuraRaceTalk","GLOBAL",2)
Race(Player1,ELF)~ THEN C0AURAJ race.gnome
~~
DO ~IncrementGlobal("C0AuraRaceTalk","GLOBAL",1)~
END

*/

// QUEST

CHAIN IF ~Global("C0AuraQuestLeave","GLOBAL",1)~ THEN C0AURAJ questleave
~这……这不能一直这样下去，<CHARNAME>。他们迟早会杀了我……或者你。我从没想让你卷进这一切……呃！~ [C0BLANK]
DO ~SetGlobal("C0AuraQuestLeave","GLOBAL",2)~
= ~*叹气* 我……我很抱歉，我不是有意那样喊。我只是太累了……我想我需要休息。最好是在室内，能让我两只眼睛都闭上。可以吗，<CHARNAME>？~
EXIT

CHAIN IF ~Global("C0AuraQuest","GLOBAL",10)~ THEN C0AURAJ endquest
~*叹气* 我们做到了……结束了。谢谢你，<CHARNAME>……我想待一会儿。~ [C0BLANK]
= ~（她在浪人的尸体前跪下，双手合十，念了几段科祖库拉的祷文。最后，她把手覆上他的眼睑，替他合上眼，站起身。）~
DO ~FadeFromColor([30.0],0)~
= ~我……想你现在大概有很多问题想问。不过我不太想在这里说。带路吧，<CHARNAME>……剑我带走了。~
DO ~SetGlobal("C0AuraQuest","GLOBAL",11) AddExperienceParty(10000) GiveItemCreate("c0auswfa",Myself,1,0,0) AddJournalEntry(@10008,QUEST_DONE)~ EXIT

APPEND C0AURAJ

IF ~Global("C0AuraQuest","Global",13)~ questend
SAY ~吹雪小姐给我的记录，我全都读完了。虽然很多地方我还是糊涂，可是……现在明白多了。~
++ ~你学到了什么？~ DO ~SetGlobal("C0AuraQuest","GLOBAL",14)~ + questend.1
++ ~别告诉我。我不想知道。~ DO ~SetGlobal("C0AuraQuest","GLOBAL",14)~ + questend.x
END

IF ~~ questend.x
SAY ~好。我不打扰你……反正我现在可以把这些都放下了。~
IF ~~ + questend.4
END

IF ~~ questend.1
SAY ~我……从不知道这些。丽华小姐曾是个武士，跟斋藤先生侍奉同一位大名。就像吹雪小姐说的，他们在朝堂上是老对头。一个主和，一个主战……~
= ~多年前，那位大名在一场血腥的争权之战中渐落下风。斋藤先生劝他去求一座关英神庙相助——关英是慈爱女神。那庙守着一眼圣池，据说凡触其水者皆得祝福。祭司拒绝了他，因为这样的祝福不该被滥用为杀戮。~
= ~大名大怒，却不敢违逆道的权威。然而斋藤先生率领一队忠于他的武士，屠尽了整座神庙，把圣池占为己有。~
= ~最终他们赢了那场战争，可是……斋藤先生此举是对神的冒犯。大名夺下对手领地没过几天，他全家便染上无药可治的疫病。斋藤先生与丽华小姐眼睁睁看着主君和他的孩子们日渐枯竭，却无能为力。~
++ ~可犯下罪孽的是斋藤。为什么受罚的却是主君？~ + questend.2
++ ~接着说。~ + questend.3
++ ~够了。我不需要再听了。~ + questend.x
END

IF ~~ questend.2
SAY ~我不知道。也许在神眼中，科祖库拉的公道就是如此。可如果这是真的，那我能理解斋藤先生为何憎恨神……尽管我无法认可他的作为。~
IF ~~ + questend.3
END

IF ~~ questend.3
SAY ~主君一家死绝后，大名的朝堂分崩离析。有人像斋藤先生一样，把一切归咎于神不公的裁决，要求以血复仇。丽华小姐拒绝参与随之而来的暴力，转而去往她家族的神社，选择放下刀剑，做一名道的女祭司，为亡者祈祷。~
= ~丽华小姐被杀的那天，是那之后两人第一次重逢。斋藤先生斩倒丽华小姐时，她在他身上下了诅咒，使他以及向他立誓的人再也无法在科祖库拉的土地上流血。他相信丽华小姐的勾玉——她力量最后的凭记——能解他的诅咒。~
= ~所以他追猎我。我对他一文不值。他在乎的只有我脖子上这块护符。他在桥上说的是真话。我们从来不是朋友……我只是个外人……在他眼里不过是个肮脏的异邦人。他会杀了我，心里不会比杀过的任何别的性命多一分愧疚。~
++ ~他现在死了。你不必再怕他了。~ + questend.4
++ ~故事太无聊了。总算结束了，我很高兴。~ + questend.4
++ ~你信错了人，那是你的错。~ + questend.4
END

IF ~~ questend.4
SAY ~斋藤先生死了，我现在终于真正自由了……可我在感到轻松的同时，也忍不住觉得……愧疚，好像我背叛了自己。~
= ~你看见我为了阻止他做了什么。我动用了火药，而我这一生都憎恨它造成的毁坏……全是为了我个人的复仇。你……你会因此更看轻我吗？~
++ ~我不怪你。你觉得别无选择。~ + questend.5
++ ~见到火药的威力之后，我现在明白你为什么说起它时那样恐惧、厌恶了。~ + questend.6
++ ~我唯一怪你的，是你把这么强大的东西瞒了我这么久。~ + questend.7
++ ~我从没想过你会用这么残忍的手段。~ + questend.8
END

IF ~~ questend.5
SAY ~我也愿意这样相信。要是我觉得还有别的办法能与他抗衡，我会用的。~
IF ~~ + questend.9
END

IF ~~ questend.6
SAY ~你也明白，为什么我绝不会让那种东西落到斋……斋藤忠桥那样的人手里。~
IF ~~ + questend.9
END

IF ~~ questend.7
SAY ~抱歉。你也见过火药是多么危险的武器。我无法随便交给任何人……不得到我完全的信任不行。~
IF ~~ + questend.9
END

IF ~~ questend.8
SAY ~我……更让我不安的是，我知道我本可以做得更多。若我把所有道德都抛下，很可能能把他和他的所有随从炸成灰……我确实考虑过。可我做不到。~
IF ~~ + questend.9
END

IF ~~ questend.9
SAY ~我不会要求你不要评判我做过的事……我做过的一切。从躲在他人身后、看着他们代替我死去，到为了复仇背弃我自己的原则……但我还是想谢谢你。不管你怎么想，你都站在我这边。我想尽我所能回报你。~
++ ~不必了。我很乐意帮一个忠诚的朋友。~ + questend.10
++ ~只要你别再有什么没告诉我的危险敌人。~ + questend.11
++ ~你可以为我效力，制造火药武器来回报我。~ + questend.12
END

IF ~~ questend.10
SAY ~……哈哈……我能在这片土地上遇到你这样的人，一定是蒙了祝福。谢谢你，<CHARNAME>……我的朋友。~
IF ~~ + questend.13
END

IF ~~ questend.11
SAY ~不，没有了……呃，至少据我所知……我保证。~
IF ~~ + questend.13
END

IF ~~ questend.12
SAY ~这……要求不少，<CHARNAME>。不过……我想也算公平。只要你不要求我滥用它们，我就只为你一个人做。~
IF ~~ + questend.13
END

IF ~~ questend.13
SAY ~只剩一件事了。这把剑……我打造的那把，一切都由它而起。~
= ~它再次握在我手里，感觉好怪。我几乎认不出它了。也许是这些年染上的血太多了，光是看着它我就毛骨悚然。~
++ ~你打算怎么处置它？~ + questend.14
END

IF ~~ questend.14
SAY ~我早就决定好了。我要毁掉它。作为亲手造出它的人，这是唯一该做的。~
++ ~可它仍是把好剑。你舍得吗？~ + questend.15
++ ~随你。这是你自己要做的决定。~ + questend.16
+ ~CheckStatGT(Player1,14,CHR)
!Alignment(Player1,MASK_EVIL)~ + ~不。这样的利器我用得上。把它给我。~ + questend.17a
+ ~OR(2)
!CheckStatGT(Player1,14,CHR)
Alignment(Player1,MASK_EVIL)~ + ~不。这样的利器我用得上。把它给我。~ + questend.17b
END

IF ~~ questend.15
SAY ~我无法让死者复生。但我能确保夺走他们性命的那把剑跟它的主人一样被毁掉。这也许毫无意义，可是……它还是能给我一点点安慰。~
++ ~好。这事只有你最有资格决定。~ + questend.16
+ ~CheckStatGT(Player1,14,CHR)~ + ~不。这样的利器我用得上。把它给我。~ + questend.17a
+ ~!CheckStatGT(Player1,14,CHR)~ + ~不。这样的利器我用得上。把它给我。~ + questend.17b
END

IF ~~ questend.16
SAY ~我很高兴你明白，<CHARNAME>。~
IF ~Global("C0AuraTamoko","GLOBAL",0)~ DO ~FadeFromColor([30.0],0)
CreateVisualEffectObject("spprotec",Myself)
DestroyItem("c0auswfa")~ + questend.18a
IF ~!Global("C0AuraTamoko","GLOBAL",0)~ DO ~FadeFromColor([30.0],0)
CreateVisualEffectObject("spprotec",Myself)
DestroyItem("c0auswfa")~ + questend.18b
END

IF ~~ questend.17a
SAY ~不，我……我不能那么做，<CHARNAME>。我……我发过誓，要是这把剑再回到我手中，我就要毁掉它……~
+ ~!Alignment(Player1,MASK_EVIL)~ + ~至少我总该配得上你的信任吧。~ + questend.17c
++ ~你不是说过愿意为我做任何事来回报我吗？~ + questend.17d
++ ~好吧。要是没别的能让你满意，那就毁掉它。~ + questend.16
END

IF ~~ questend.17b
SAY ~不，我……我不能那么做，<CHARNAME>。抱歉。~
IF ~Global("C0AuraTamoko","GLOBAL",0)~ DO ~FadeFromColor([30.0],0)
CreateVisualEffectObject("spprotec",Myself)
DestroyItem("c0auswfa")~ + questend.18a
IF ~!Global("C0AuraTamoko","GLOBAL",0)~ DO ~FadeFromColor([30.0],0)
CreateVisualEffectObject("spprotec",Myself)
DestroyItem("c0auswfa")~ + questend.18b
END

IF ~~ questend.17c
SAY ~我——我……*叹气* 你说得对。你为我做了这么多，我若不信你，那才是不该。~
= ~给……还有一手我从没在把剑交给斋藤先生时展示过的把戏……从剑刃里飞出的暗刀。我们该庆幸他从没发现这秘密……~
IF ~Global("C0AuraTamoko","GLOBAL",0)~ DO ~FadeFromColor([30.0],0)
DestroyItem("c0auswfa")
GiveItemCreate("c0ausw01",Player1,1,0,0)~ + questend.18a
IF ~!Global("C0AuraTamoko","GLOBAL",0)~ DO ~FadeFromColor([30.0],0)
DestroyItem("c0auswfa")
GiveItemCreate("c0ausw01",Player1,1,0,0)~ + questend.18b
END

IF ~~ questend.17d
SAY ~我——我……*叹气* 你说得对。我说过。现在我不能反悔。只要你永远不用它对付无辜者……我就信你。~
= ~给……还有一手我从没在把剑交给斋藤先生时展示过的把戏……从剑刃里飞出的暗刀。我们该庆幸他从没发现这秘密……~
IF ~Global("C0AuraTamoko","GLOBAL",0)~ DO ~FadeFromColor([30.0],0)
DestroyItem("c0auswfa")
GiveItemCreate("c0ausw01",Player1,1,0,0)~ + questend.18a
IF ~!Global("C0AuraTamoko","GLOBAL",0)~ DO ~FadeFromColor([30.0],0)
DestroyItem("c0auswfa")
GiveItemCreate("c0ausw01",Player1,1,0,0)~ + questend.18b
END

IF ~~ questend.18a
SAY ~那是我身上最后的负担了。嗯，还剩一个……可那一个我只能交给运气。现在……我终于真的感到自由了。再一次，<CHARNAME>……谢谢你为我做的一切。~
= ~从今往后，我会为你的事业付出我的一切。轮到我帮你了。~
IF ~~ EXIT
END

IF ~~ questend.18b
SAY ~那是我身上最后的负担了。现在……我终于真的感到自由了。再一次，<CHARNAME>……谢谢你为我做的一切。~
= ~从今往后，我会为你的事业付出我的一切。轮到我帮你了。~
IF ~~ EXIT
END

// BASILISKS

IF ~Global("C0AuraBasilisk","GLOBAL",1)~ basilisk
SAY ~嘿，呃……我听说这一带有石化蜥蜴。我想我该先去探探路，以防万一。~
++ ~什么？不行！万一你被石化了呢？~ + basilisk.1
++ ~尽管去。只是被石化之前记得弄出点声响。~ + basilisk.1
++ ~不必。我完全有准备对付石化蜥蜴。~ + basilisk.2
END

IF ~~ basilisk.1
SAY ~嘿嘿，别担心。我有这副护目镜，记得吗？上面配的防护镜片就是专门应付这种事的。~
= ~动物学家公会给他们的研究员配这种镜子，不然他们成天跟石化蜥蜴之类打交道，早就有人被石化了。我没事的。~
IF ~~ DO ~SetGlobal("C0AuraBasilisk","GLOBAL",2)~ EXIT
END

IF ~~ basilisk.2
SAY ~哦。好吧。那我想你一切都应付得来。~
IF ~~ DO ~SetGlobal("C0AuraBasilisk","GLOBAL",2)~ EXIT
END

// BALDURAN'S ISLE

IF ~Global("C0AuraShipwreck","GLOBAL",1)~ shipwreck
SAY ~*打个寒颤* 不——不要再来一次……别再是海……~
++ ~奥拉！你没事吧？~ + shipwreck1
++ ~醒醒！你在岸上。我们暂时安全。~ + shipwreck1
++ ~（不理她）~ + shipwreck1.1
END

IF ~~ shipwreck1
SAY ~好冷……喘不上气……*倒吸一口气* <CHARNAME>，救我，救救我……我撑不住……~
++ ~我在这儿，奥拉。你安全了。~ + shipwreck1.1
++ ~现在就起来，否则我把你扔下不管！~ + shipwreck1.1
END

IF ~~ shipwreck1.1
SAY ~啊……~
IF ~~ DO ~SetGlobal("C0AuraShipwreck","GLOBAL",2)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0aufade")~ EXIT
END

IF ~Global("C0AuraShipwreck","GLOBAL",2)~ shipwreck2
SAY ~对——对不起，<CHARNAME>。我不是有意那样崩溃。那场沉船带回了一些不好的回忆……我想我现在没事了。~
++ ~你确定你还好吗？~ + shipwreck3
++ ~才不是。我们现在连自己身在何处都不知道，所以闭嘴，一起找点线索。~ + shipwreck5
END

IF ~~ shipwreck3
SAY ~不……其实不好。我还有点惊魂未定……但至少我可以保证不拖你后腿。我们该四处看看，辨辨方向，对吧？等身上干了，我大概会好些。~
++ ~你说得对。不过要是你需要点时间平复，告诉我。~ + shipwreck4
++ ~透点新鲜空气对你有好处，我想。走吧。~ + shipwreck5
END

IF ~~ shipwreck4
SAY ~好……谢谢，<CHARNAME>。就我们眼下的处境说这话也许有点自私，可是……至少我庆幸自己不是一个人在这儿。~
IF ~~ DO ~SetGlobal("C0AuraShipwreck","GLOBAL",3)~ EXIT
END

IF ~~ shipwreck5
SAY ~嗯，你大概说得对……我就在你后面。~
IF ~~ DO ~SetGlobal("C0AuraShipwreck","GLOBAL",3)~ EXIT
END

// LARSWOOD

IF ~Global("C0AuraLarswood","GLOBAL",1)~ larswood
SAY ~哦，我不喜欢这地方，我*真的*不喜欢这地方……~
++ ~怎么了？~ DO ~SetGlobal("C0AuraLarswood","GLOBAL",2)~ + larswood1
++ ~不太喜欢野外？~ DO ~SetGlobal("C0AuraLarswood","GLOBAL",2)~ + larswood2
++ ~随便吧……~ DO ~SetGlobal("C0AuraLarswood","GLOBAL",2)~ EXIT
END

IF ~~ larswood1
SAY ~看见那些了吗？那是*熊*的脚印……哦，希望我们别在这林子里碰上熊……~
+ ~!Global("C0AuraHatesBears","GLOBAL",0)~ + ~哦，对了……你怕熊怕得要命……~ + larswood3
+ ~Global("C0AuraHatesBears","GLOBAL",0)~ + ~那又怎样？~ + larswood4
++ ~随便吧……~ EXIT
END

IF ~~ larswood2
SAY ~我很喜欢野外！可——可是……~
IF ~~ + larswood1
END

IF ~~ larswood3
SAY ~我*没有*怕熊！我只是……不太喜欢它们。我们能不能去别处……？~
IF ~~ EXIT
END

IF ~~ larswood4
SAY ~我……我恨熊！~
IF ~~ EXIT
END

// SEES BEAR

IF ~Global("C0AuraHatesBears","GLOBAL",1)~ ihatebears
SAY ~呀啊啊！~
++ ~什么？！怎么了？~ DO ~SetGlobal("C0AuraHatesBears","GLOBAL",2)~ + ihatebears2
END

IF ~~ ihatebears2
SAY ~熊——熊！是熊！哦不，它看见我们了！呀，我们快跑，<CHARNAME>！~
+ ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ + ~这是保证熊能追上你的最快办法，奥拉。遇到熊不该跑，否则它会把你当成猎物。~ + ihatebears5
++ ~你怕*熊*？~ + ihatebears3
++ ~我也不喜欢熊。你说得对，我们跑！~ + ihatebears4
END

IF ~~ ihatebears3
SAY ~别——别拿这个开玩笑。你根本不知道……在科祖库拉，人们说山里有吃人的熊。而我又这么小，它一口就能把我吞了！哦，该死，我为什么非要说出来？这下我一整天都会想着这画面了……~
IF ~~ + ihatebears4
END

IF ~~ ihatebears4
SAY ~哦，太迟了，我想它冲我们来了。你——你守在前面，<CHARNAME>，我站你身后。好放箭射它，当——当然不是要逃跑！~
IF ~~ EXIT
END

IF ~~ ihatebears5
SAY ~你——你说得轻巧，熊才不会追你！我肯定在熊眼里已经像个美味的小点心了……*打个哆嗦*~
IF ~~ + ihatebears4
END

// SPIRIT BEAR

IF ~Global("C0AuraSummonedBears","GLOBAL",1)~ spiritbear
SAY ~呀！闹鬼和熊已经够糟了！现在还是熊的鬼魂？你就不能召点更可爱的东西吗？~
IF ~~ DO ~SetGlobal("C0AuraSummonedBears","GLOBAL",2)~ EXIT
END

// HIGH HALL OF WONDERS

IF ~Global("C0AuraHighHallofWonders","GLOBAL",1)~ highhall
SAY ~哦……有那么一会儿我差点以为自己踏进了兰坦的展厅。嗯，这儿的顶棚比我习惯的高得多，不过还是那句话。这些器物看着就跟我家乡的一模一样。~
++ ~这地方跟兰坦比起来怎么样？~ + highhall.1
++ ~这儿该不会有你的作品吧？~ + highhall.2
++ ~我们不是来观光的。把我们该找的东西找出来。~ + highhall.x
END

IF ~~ highhall.x
SAY ~可——可是……哦，好吧。~
IF ~~ DO ~SetGlobal("C0AuraHighHallofWonders","GLOBAL",2)~ EXIT
END

IF ~~ highhall.1
SAY ~比那儿漂亮。兰坦的贡德神殿不太在意把一切都弄得又好看又光亮。我想这里的人更喜欢东西看起来诱人。~
IF ~~ + highhall.3
END

IF ~~ highhall.2
SAY ~你问得真巧！其实我也不奇怪。以前我的不少发明都漂洋过海到过这边。不过我没看见什么。我一眼就能认出自己的东西。~
IF ~~ + highhall.3
END

IF ~~ highhall.3
SAY ~看见那台蒸汽龙了吗？我记得年轻时做过一台。哦，还有那艘飞船的模型，跟我家乡的真家伙一模一样！哦，这一切真让人怀念！~
= ~呃。咳。抱歉，说跑了神。我们来这儿是有事的，对吧？别管我。~
IF ~~ DO ~SetGlobal("C0AuraHighHallofWonders","GLOBAL",2)~ EXIT
END

// ICE ISLAND

IF ~Global("C0AuraIceIsland","GLOBAL",1)~ iceisland
SAY ~*打个寒颤* 哦，好冷……真希望早知道会到这种地方来。我本该穿得合适些。~
= ~不过这里有点意思……周围奥术能量太浓了，连空气里都是。这绝对不是座普通的岛。~
++ ~有意思。你还注意到别的什么了吗？~ + iceisland.1
++ ~你怎么这么容易就看出来了？我们才刚到。~ + iceisland.2
++ ~保持警觉就好。谁知道这里住着什么东西。~ + iceisland.3
END

IF ~~ iceisland.1
SAY ~别的也说不上来了……可这么多力量总得来自什么……或者某个人。~
IF ~~ + iceisland.4
END

IF ~~ iceisland.2
SAY ~我的奇械师资格可不是摆着看的，你知道……我跟魔法区域打过太多交道，一眼就能认出来……虽然这里跟我至今见过的任何一个都不一样。~
IF ~~ + iceisland.4
END

IF ~~ iceisland.3
SAY ~嗯，你说得对，可是……我忍不住想多了解这地方一些，你知道吧？~
IF ~~ + iceisland.4
END

IF ~~ iceisland.4
SAY ~嘿，以防万一……要是你在这儿发现什么奇怪或有趣的东西，介意让我看看吗？哪怕一丁点魔法残渣，我也能学到很多。~
IF ~~ DO ~SetGlobal("C0AuraIceIsland","GLOBAL",2)~ EXIT
END

// AUTOMATON

IF ~Global("C0AuraAutomaton","GLOBAL",1)~ automaton
SAY ~自我恢复能量核心启动……发条肢体与关节就位……对，很好……认知功能校准完毕……目标识别，通过……自卫协议，通过……好！一切运转正常。~
= ~嘿，<CHARNAME>！看这边！~
++ ~这是……什么东西？~ DO ~SetGlobal("C0AuraAutomaton","GLOBAL",2)~ + automaton1
++ ~奥拉，你还会做魔像？~ DO ~SetGlobal("C0AuraAutomaton","GLOBAL",2)~ + automaton1
++ ~解释一下这是什么。用正常的话说。~ DO ~SetGlobal("C0AuraAutomaton","GLOBAL",2)~ + automaton1
END

IF ~~ automaton1
SAY ~这是我们家的招牌造物——一台用金属与发条驱动、能行动、并能立即听懂简单口头指令的工人！它像魔像，但牵涉的魔法更少……嗯，通常是这样。我大概用了两枚符文把它加固了一下。~
= ~这是一台发条仆役自动机——本人亲手设计。我们平时做这些来帮忙处理城里的杂事，比如搬重物之类——不过我总算把它做成了能上阵的样子。你觉得如何？它很棒吧？~
++ ~所以它能打？能撑多久？~ + automaton2
++ ~只要它还有用就行。~ + automaton2
END

IF ~~ automaton2
SAY ~大多数时候我们用便宜的废金属造它们，所以挨不了太多砸就散架。这位高个子用的料结实得多，在被彻底打垮之前应该能保持完整。~
= ~只是，呃……记住，它只照我吩咐的做，不多不少——所以万一我被控制或失去行动能力，它要么停机，要么发狂，真那样的话别站太近！~
IF ~~ EXIT
END

// SEWERS

IF ~Global("C0AuraSewers","GLOBAL",1)~ sewers
SAY ~去——去死！哦，请原谅我这么说话……我好像踩到恶心的东西了……呃……~
IF ~~ DO ~SetGlobal("C0AuraSewers","GLOBAL",2)~ EXIT
END

// IRON THRONE

IF ~Global("C0AuraIronThrone","GLOBAL",1)~ iron
SAY ~“铁”王座，是吧？造它可没用多少铁，不是吗？倒是有不少大理石和彩窗。漂亮，但不太牢固。~
IF ~~ DO ~SetGlobal("C0AuraIronThrone","GLOBAL",2)~ EXIT
END

// CATACOMBS

IF ~Global("C0AuraCatacombs","GLOBAL",1)~ iron
SAY ~呃，我本来还盼着多接触这图书馆学者的古老知识，而不是在学者们自己的安息之地里散步！~
IF ~~ DO ~SetGlobal("C0AuraCatacombs","GLOBAL",2)~ EXIT
END

// TAMOKO

IF ~Global("C0AuraTAMOKO0","GLOBAL",1)~ tamoko
SAY ~啊……我——抱歉，<CHARNAME>。我刚才好像有一瞬看见往事从眼前闪过。~
++ ~你看起来像被定住了。怎么了？~ DO ~SetGlobal("C0AuraTAMOKO0","GLOBAL",2)~ + tamoko1
++ ~现在不是站着发呆的时候，奥拉。我们走吧。~ DO ~SetGlobal("C0AuraTAMOKO0","GLOBAL",2)~ EXIT
END

IF ~~ tamoko1
SAY ~没什么……我只是被那位夫人的美貌震住了。她太像……嗯，我想这不重要。我们走吧。~
++ ~我很好奇。她让你想起谁？~ + tamoko2
++ ~既然你这么说。~ EXIT
END

IF ~~ tamoko2
SAY ~不，请别问。现在只是我的猜测……听着，要是我们再碰上她，我想那时你就明白了，好吗？~
IF ~~ EXIT
END

// PETRINE'S CAT

IF ~Global("C0AuraPetrineCat","GLOBAL",1)~ petrine
SAY ~呀啊！为什么？！你为什么要那样做？那只可怜的猫咪什么都没对你做！~
IF ~~ DO ~SetGlobal("C0AuraPetrineCat","GLOBAL",2)~ EXIT
END

// DURLAG'S TOWER

IF ~Global("C0AuraDurlagTower","GLOBAL",1)~ durlags
SAY ~这……这地方太可怕了，<CHARNAME>。就像那些不得安息的亡者还在这里，心里只有对生者的恨……~
= ~*打个寒颤* 我本想看看杜拉格·巨魔杀手的塔里藏着什么秘密，可现在真到了这儿……我觉得闯进来是个可怕的错误。这……这整个感觉都不对。~
++ ~我不知道你对这种事还能有所感应。你还能感觉到什么？~ + durlags.1
++ ~别因为一点不好的感觉就放慢脚步。我们来这儿就是要把这里可能有的东西清干净。~ + durlags.2
END

IF ~~ durlags.1
SAY ~（她用颤抖的双手紧紧握住勾玉）在科祖库拉，人们说亡者的灵会被强烈的情感牵绊、未了的心愿或对生者的怨恨，缚在他们死去的地方。这里流连的东西……三样都有。~
= ~我开始明白这地方为什么被废弃这么久了。没人能受得了住在这样的绝望之中。~
IF ~~ DO ~SetGlobal("C0AuraDurlagTower","GLOBAL",2)~ EXIT
END

IF ~~ durlags.2
SAY ~我不知道，<CHARNAME>……怪物和陷阱我还能应付，可我们在这儿可能找到的东西……我害怕。我有种感觉，那不是我们轻易就能打发掉的东西。~
IF ~~ DO ~SetGlobal("C0AuraDurlagTower","GLOBAL",2)~ EXIT
END

// NASHKEL CARNIVAL

IF ~Global("C0AuraCarnival","GLOBAL",1)~ petrine
SAY ~哦……好漂亮的帐篷。让我想起家乡热气球上的花纹。~
= ~不知道他们这儿有没有大象。自从几年前穿行玛兹特克之后，我就没见过一头。~
IF ~~ DO ~SetGlobal("C0AuraCarnival","GLOBAL",2)~ EXIT
END

// GENDER CHANGE

IF ~Global("C0AuraSexChange","GLOBAL",1)~ gender
SAY ~呃。~
= ~嗯。~
= ~你知道，我们手上有这么一件能让人瞬间变形的物品，我本该很兴奋的，可是……天，非得是我来试它吗？~
= ~唉，不行。它取不下来。我们能想个法子把它弄掉吗？套在腰上扣得死死的，实在不好检查。而且它很丑。~
IF ~~ DO ~SetGlobal("C0AuraSexChange","GLOBAL",2)~ EXIT
END

IF ~Global("C0AuraSexChange","GLOBAL",4)~ gender2
SAY ~哦，真的？又来？你是故意的吧？~
= ~呃，这太蠢了。要是你打算骗我戴上这个，至少不能提前告诉我一声，让我有机会换件更合身的衣服吗？~
IF ~~ DO ~SetGlobal("C0AuraSexChange","GLOBAL",5)~ EXIT
END

// FIRST CRAFTING NOTICE

IF ~Global("C0AuraCrafting","GLOBAL",2)~ crafting
SAY ~哦，你手上那东西可得小心，<CHARNAME>。那上面有一道相当强的诅咒……光是看着它我就浑身发毛。~
++ ~你怎么看出来的？~ + crafting1
++ ~你能处理掉它吗？~ + crafting2
END

IF ~~ crafting1
SAY ~我是奇械师，记得吗？处理古怪又奇妙的物品正是我的行当。~
= ~不过，这东西我真不好意思叫它“古怪又奇妙”，更该叫“瘆人又可怕”。可它还是让我好奇……我研究过不毁坏物品也不破坏其魔法的破咒方法，可这手艺很难。~
IF ~~ + crafting3
END

IF ~~ crafting2
SAY ~也许……我以前对诅咒做过一些研究，有不毁物品、不破魔法的破咒法子。不过不容易。~
IF ~~ + crafting3
END

IF ~~ crafting3
SAY ~如果你想让我试试把这个或任何受诅咒的东西变成有用的东西……我可以试试。可诅咒里能掺进的魔法种类太多，我没法保证凭我眼下这点学问能改造我们找到的每一样。真要碰硬骨头，也许我还得更多历练。~
= ~不过，要是你不介意让我试试，我会尽力。你觉得什么时候合适，就说一声。~
IF ~~ DO ~SetGlobal("C0AuraCrafting","GLOBAL",3)~ EXIT
END

// Low reputation; unhappy

IF ~Global("C0AuraUnhappy","GLOBAL",1)~ unhappy
SAY ~我有话要跟你说，<CHARNAME>。~
++ ~去吧。~ DO ~SetGlobal("C0AuraUnhappy","GLOBAL",2)~ + unhappy.1
++ ~有话就说，不过快点。~ DO ~SetGlobal("C0AuraUnhappy","GLOBAL",2)~ + unhappy.1
++ ~现在不行。~ DO ~SetGlobal("C0AuraUnhappy","GLOBAL",2)~ + unhappy.2
END

IF ~~ unhappy.1
SAY ~我只想说，我不觉得你做的是对的。我加入你不是为了用我的本事去伤害不该受伤害的人。我不知道那是不是你本来想做的，可是……~
= ~你……不是真的故意做这些事的……对吧？~
++ ~我有些举动是必要的，可我不以伤害他人为乐，不。~ + unhappy.3
++ ~我也许犯了几个错。希望能补救回来。~ + unhappy.3
++ ~当然是故意的。我喜欢让别人怕我。~ + unhappy.4
++ ~我不记得问过你的意见。~ + unhappy.4
END

IF ~~ unhappy.2
SAY ~不，我真的觉得我该在事情更糟之前说出来。~
IF ~~ + unhappy.1
END

IF ~~ unhappy.3
SAY ~哦……那至少让我好受些。我可不想发现我信任的人是，呃……算了。~
= ~我希望事情很快会好转，至少好一点点。我还是愿意信你，你知道吧。~
IF ~~ EXIT
END

IF ~~ unhappy.4
SAY ~你不是我盼望你成为的那种人。我开始怀疑当初加入你是不是对的。~
= ~我暂时留下……可要是这样下去，我们俩都会后悔。~
IF ~~ DO ~IncrementGlobal("C0AuraInsulted","GLOBAL",1)~ EXIT
END

// Low reputation; angry, leaves (does not occur after Chapter 6)

IF ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) Global("C0AuraLeaves","GLOBAL",1)~ angry
SAY ~你对自己做的事满意吗，<CHARNAME>？对这些……你逼我们做的可怕事情？~
++ ~你要是不喜欢，随时可以走。~ DO ~SetGlobal("C0AuraLeaves","GLOBAL",2)~ + angry.1
++ ~我们做的也没那么可怕。~ DO ~SetGlobal("C0AuraLeaves","GLOBAL",2)~ + angry.2
++ ~这都是为了更大的善。等着看吧。~ DO ~SetGlobal("C0AuraLeaves","GLOBAL",2)~ + angry.3
++ ~我不在乎你的意见，侏儒。你在这儿就是要派上用场。~ DO ~SetGlobal("C0AuraLeaves","GLOBAL",2)~ + angry.4
END

IF ~~ angry.1
SAY ~这点你说对了。可我走之前还有最后一句话要说。~
IF ~~ + angry.5
END

IF ~~ angry.2
SAY ~你要真这么想，那我想跟你争也没意义。~
IF ~~ + angry.5
END

IF ~~ angry.3
SAY ~我不信你。你做的这些恶事没有一样能被开脱。~
IF ~~ + angry.5
END

IF ~~ angry.4
SAY ~不喜欢我的意见？没关系。你很快就听不到了。~
IF ~~ + angry.5
END

IF ~~ angry.5
SAY ~你太可怕了。你残忍。你卑劣。我再也受不了了。~
= ~我本可以一走了之，可你大概也会想杀我。所以……~
IF ~~ DO ~ClearAllActions() StartCutsceneMode() StartCutscene("c0aangry")~ EXIT
END

// PID

IF ~GlobalGT("C0AuraInsulted","GLOBAL",1)~ THEN BEGIN pidangry
 SAY ~你想要什么？~ [C0BLANK]
 + ~!Global("C0AuraForgive","GLOBAL",1)~ + ~冒犯了你，我很抱歉。这事我们能过去吗？~ DO ~SetGlobal("C0AuraForgive","GLOBAL",1) SetGlobal("C0AuraInsulted","GLOBAL",0)~ + forgiveonce
 + ~Global("C0AuraForgive","GLOBAL",1)~ + ~冒犯了你，我很抱歉。这事我们能过去吗？~ + noforgive
 + ~Global("C0AuraWontCraft","GLOBAL",0)~ + ~你能帮我做点什么吗？~ DO ~SetGlobal("C0AuraWontCraft","GLOBAL",1)~ + wontcraft
 ++ ~我觉得你的声音有点问题。~ + stringfix
 ++ ~我眼下什么都不需要。~ EXIT
END
 
IF ~~ forgiveonce
SAY ~嗯，希望你能明白你的话有多伤人。我什么都不忘，这些话我绝对不会忘。~
= ~不过……我愿意相信你说的是真心话，所以……好吧，我原谅你。~
IF ~~ EXIT
END

IF ~~ noforgive
SAY ~你之前也这么说过。我为什么要第二次信你？~
IF ~~ EXIT
END

IF ~~ wontcraft
SAY ~我可以。可我不做。你明明不尊重我为你做的东西，我凭什么做？所以，不。~
IF ~~ EXIT
END
 
IF ~Global("EndofBG1","GLOBAL",0) IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) Global("C0AuraInsulted","GLOBAL",0)~ THEN BEGIN pid
 SAY ~进展如何？~ [C0BLANK]
 + ~Gender(Player1,FEMALE)
	!Alignment(Player1,MASK_EVIL)
	CheckStatGT(Player1,9,CHR)
	CheckStatGT(Player1,11,INT)
	GlobalGT("C0AuraTalk","GLOBAL",6)~ + ~（调情）~ + flirt
 + ~!Global("C0AuraBurstOrb","GLOBAL",0)
	GlobalTimerExpired("C0AuraBurstOrbTimer","GLOBAL")~ + ~你有爆裂球给我吗？~ DO ~SetGlobalTimer("C0AuraBurstOrbTimer","GLOBAL",THREE_DAYS) GiveItemCreate("c0autt01",Player1,1,0,0)~ + makeburstorb
 + ~Global("C0AuraWeirdPotions","GLOBAL",2)
 PartyHasItem("potn15")
 PartyHasItem("potn16")~ + ~这是那两瓶彩色药水。复制效果要多久？~ + weirdpotion.1
 + ~PartyHasItem("c0agem1")~ + ~我想请你看看这块水晶。~ + crystal
 + ~Global("C0AuraCrafting","GLOBAL",3) GlobalGT("C0AuraCursedUpgrade","GLOBAL",0) Global("C0AuraAtWork","GLOBAL",0)~ + ~你有时间处理这件受诅咒的物品吗？~ + craft1
 + ~Global("C0AuraCrafting","GLOBAL",3) GlobalGT("C0AuraCursedUpgrade","GLOBAL",0) !Global("C0AuraAtWork","GLOBAL",0)~ + ~你有时间处理这件受诅咒的物品吗？~ + craft2
 + ~!Global("C0AuraHatesBears","GLOBAL",0) 
 Global("C0AuraAskBears","GLOBAL",0)~ + ~那么……你为什么怕熊？~ DO ~SetGlobal("C0AuraAskBears","GLOBAL",1)~ + bears
 + ~Global("C0AuraAskRunes","GLOBAL",0)~ + ~你铭刻魔法符文的本事是从哪儿学的？~ DO ~SetGlobal("C0AuraAskRunes","GLOBAL",1)~ + runes
 ++ ~我想问你几件关于兰坦的事。~ + lantan
 + ~GlobalGT("C0AuraTalk","GLOBAL",8)~ + ~我想问你几件关于卡拉图的事。~ + karatur
 + ~GlobalGT("C0AuraQuest","GLOBAL",8)
	Global("C0AuraAskExplosives","GLOBAL",0)~ + ~你会做爆炸性武器，对吧？能不能做一些帮我们打仗？~ DO ~SetGlobal("C0AuraAskExplosives","GLOBAL",1)~ + explosives
 + ~Global("C0AuraTalkStopped","GLOBAL",0)~ + ~我想让你停一阵子别再来找我说话。~ DO ~SetGlobal("C0AuraTalkStopped","GLOBAL",1)~ + notalk
 + ~!Global("C0AuraTalkStopped","GLOBAL",0)~ + ~你要是想再跟我说话，我不介意。~ DO ~SetGlobal("C0AuraTalkStopped","GLOBAL",0)~ + retalk
 ++ ~我觉得你的声音有点问题。~ + stringfix
 ++ ~我眼下什么都不需要。~ EXIT
END

IF ~~ pid2
 SAY ~当然。你还需要别的吗？~
 + ~Gender(Player1,FEMALE)
	!Alignment(Player1,MASK_EVIL)
	CheckStatGT(Player1,9,CHR)
	CheckStatGT(Player1,11,INT)
	GlobalGT("C0AuraTalk","GLOBAL",6)~ + ~（调情）~ + flirt
 + ~!Global("C0AuraBurstOrb","GLOBAL",0)
	GlobalTimerExpired("C0AuraBurstOrbTimer","GLOBAL")~ + ~你有爆裂球给我吗？~ DO ~SetGlobalTimer("C0AuraBurstOrbTimer","GLOBAL",THREE_DAYS) GiveItemCreate("c0autt01",Player1,1,0,0)~ + makeburstorb
 + ~Global("C0AuraWeirdPotions","GLOBAL",2)
 PartyHasItem("potn15")
 PartyHasItem("potn16")~ + ~这是那两瓶彩色药水。复制效果要多久？~ + weirdpotion.1
 + ~PartyHasItem("c0agem1")~ + ~我想请你看看这块水晶。~ + crystal
 + ~Global("C0AuraCrafting","GLOBAL",3) GlobalGT("C0AuraCursedUpgrade","GLOBAL",0) Global("C0AuraAtWork","GLOBAL",0)~ + ~你有时间处理这件受诅咒的物品吗？~ + craft1
 + ~Global("C0AuraCrafting","GLOBAL",3) GlobalGT("C0AuraCursedUpgrade","GLOBAL",0) !Global("C0AuraAtWork","GLOBAL",0)~ + ~你有时间处理这件受诅咒的物品吗？~ + craft2
 + ~!Global("C0AuraHatesBears","GLOBAL",0) 
 Global("C0AuraAskBears","GLOBAL",0)~ + ~那么……你为什么怕熊？~ DO ~SetGlobal("C0AuraAskBears","GLOBAL",1)~ + bears
 + ~Global("C0AuraAskRunes","GLOBAL",0)~ + ~你铭刻魔法符文的本事是从哪儿学的？~ DO ~SetGlobal("C0AuraAskRunes","GLOBAL",1)~ + runes
 ++ ~我想问你几件关于兰坦的事。~ + lantan
 + ~GlobalGT("C0AuraTalk","GLOBAL",8)~ + ~我想问你几件关于卡拉图的事。~ + karatur
 + ~GlobalGT("C0AuraQuest","GLOBAL",8)
	Global("C0AuraAskExplosives","GLOBAL",0)~ + ~你会做爆炸性武器，对吧？能不能做一些帮我们打仗？~ DO ~SetGlobal("C0AuraAskExplosives","GLOBAL",1)~ + explosives
 + ~Global("C0AuraTalkStopped","GLOBAL",0)~ + ~我想让你停一阵子别再来找我说话。~ DO ~SetGlobal("C0AuraTalkStopped","GLOBAL",1)~ + notalk
 + ~!Global("C0AuraTalkStopped","GLOBAL",0)~ + ~你要是想再跟我说话，我不介意。~ DO ~SetGlobal("C0AuraTalkStopped","GLOBAL",0)~ + retalk
 ++ ~我觉得你的声音有点问题。~ + stringfix
 ++ ~我眼下什么都不需要。~ EXIT
END

IF ~~ end
SAY ~好。我们以后再谈。~
IF ~~ EXIT
END

IF ~~ makeburstorb
SAY ~对，给你，玩得开心。小心点！~
IF ~~ EXIT
END

IF ~~ crystal
SAY ~哦，有意思！它表面简直在往外冒魔法……给我一会儿检查检查。~
IF ~~ DO ~SetGlobal("C0AuraCrystal","GLOBAL",1)
TakePartyItem("c0agem1") DestroyItem("c0agem1") GiveItemCreate("c0autt02",Player1,1,0,0)
ClearAllActions() StartCutsceneMode() StartCutscene("c0aufade")~ EXIT
END

IF ~Global("C0AuraCrystal","GLOBAL",1)~ THEN BEGIN crystal2
SAY ~我对你找到的那块冰晶做了些实验，结果跟我研究过的异界力量对得上。~
= ~你找到的那块水晶是冰之精粹，来自冰元素侧界。我不确定它怎么到了这个位面，不过大概跟影响那座冰岛的魔法有关。~
= ~不过它本身没什么用。要是手头有材料，我真想用它做出更有意思的东西，可我只能凭现有的东西拼出这个。给，拿着。~
IF ~~ DO ~SetGlobal("C0AuraCrystal","GLOBAL",2) AddXPObject("C0Aura",1500)~ EXIT
END

IF ~~ runes
SAY ~我的叔叔马里乌斯——我跟你说过他吗？他是少数以兰坦为家的奥术大师之一。~
= ~我去他塔里探望我弟弟时，常趁他不注意偷看叔叔的法术书。嗯……我记性一向好，所以我就试着把我看到的铭刻成魔法符文，自己试着用魔法。~
= ~我还没施出一个法术就被抓到了，可叔叔见我光靠观察就学得这么快，高兴得不行。于是他就正经教我，从此这本事我就一直练下来了。~
+ ~Class("C0Aura",MAGE_ALL)~ + ~你也能正常施法。这有什么不同吗？~ + runes.2
+ ~!Class("C0Aura",MAGE_ALL)~ + ~你想不想成为真正的法师？~ + runes.1
++ ~我们聊点别的吧。~ + pid2
++ ~我想问的都问完了。~ + end
END

IF ~~ runes.1
SAY ~嗯……我考虑过。这想法不错，可是……我的才华在创造上。我知道。就算为了魔法，我也不会放弃现在的本事。~
= ~要是我生在别的境况，那也许是我会走的一条路，可是……那不是我。我对自己做的事很满意，所以……我觉得那永远不会发生。不过有时我还是爱想象一下。~
++ ~我们聊点别的吧。~ + pid2
++ ~我想问的都问完了。~ + end
END

IF ~~ runes.2
SAY ~嗯……我想差别在方法上。就像两个算式得同一个答案……那种事。~
= ~符文魔法……不一样。我能重塑能量，把它们变成我自己造的魔法。但它能做的……有限。我明白为什么大多数法师不练它，可是……对我这样的人来说，这是一门值得有的本事。~
++ ~我们聊点别的吧。~ + pid2
++ ~我想问的都问完了。~ + end
END


IF ~~ lantan
SAY ~好，我尽力回答。问吧。~
++ ~我听说兰坦有费伦最先进的技术。是真的吗？~ + lantan.tech
++ ~我听说火药是从兰坦来的。~ + lantan.smokepowder
++ ~兰坦人为什么不向海外扩张？~ + lantan.islands
++ ~你的家族在兰坦很有地位吗？~ + lantan.family
+ ~PartyHasItem("c0abadge")~ + ~我注意到你的徽记上写着“奥瑞莉亚·M·格利默夏恩”。那是你的真名吗？~ + lantan.name
++ ~我们聊点别的吧。~ + pid2
++ ~眼下就到这儿。~ + end
END

IF ~~ lantan.tech
SAY ~“最先进”有点过了。我们并不是世上一切造物的始祖。我们只是比谁都更爱钻研多元宇宙的科学与内里运作罢了。~
= ~而且……纯靠逻辑行事只能带我们走到这一步。比如，我们无法完全理解魔网之谜，所以只好用别的办法去求结果。~
= ~这不是说我们对魔法及其运作一无所知。奥尔利尔岛上住着我们的法师与术士，他们终其一生修习、研究自己的魔法天赋。~
++ ~你去过奥尔利尔岛吗？~ + orlil
++ ~我明白了。我还有别的想问。~ + lantan
++ ~目前就这些。~ + end
END

IF ~~ orlil
SAY ~当然！我常去那里向奥术师们请教。魔法一直是我唯一始终找不到全部答案的奇观。~
= ~还有……我叔叔马里乌斯·莱特温德住在那儿的一座法师塔里，和我弟弟埃里达努斯一起，弟弟在他门下学习。我常去看他们。~
++ ~我明白了。我还有别的想问。~ + lantan
++ ~目前就这些。~ + end
END

IF ~~ lantan.smokepowder
SAY ~火药……是“奇迹缔造者”贡德在动荡之年行走于我们之间时把这份知识给我们的。那时我还是个孩子，可是……我记得第一次见到它……还有它能做的事。~
++ ~兰坦人为什么把火药的秘密自己留着？~ + lantan.smokepowder2
++ ~我明白了。我还有别的想问。~ + lantan
++ ~目前就这些。~ + end
END

IF ~~ lantan.smokepowder2
SAY ~你不会明白的，<CHARNAME>，除非你亲眼见过它能做什么。火药是魔法与炼金的危险融合，是一种设计来爆炸、把一切化为灰烬的武器。这样的危险知识，我们绝不能与任何人分享。~
= ~即便在兰坦，它的制作也只准贡德的教士参与，且得到许可的人寥寥。它就是有这么危险。要是落到不该得的人手里……嗯，这么说吧，世界末日也不是不可能。~
++ ~我明白了。我还有别的想问。~ + lantan
++ ~目前就这些。~ + end
END

IF ~~ lantan.islands
SAY ~我们有，只是……不太公开。我们的人也在别处定居，比如楚尔特。只是我们并不觉得有把国家扩张到整个费伦的必要。~
++ ~为什么没有？~ + lantan.islands2
++ ~我明白了。我还有别的想问。~ + lantan
++ ~目前就这些。~ + end
END

IF ~~ lantan.islands2
SAY ~嗯……说实话，尽管我们有这些进步，我们并没有你以为的那么强大。我们人少，且大多不擅长政治或战争。绝大多数兰坦人乐于一辈子待在自己的工坊里。~
= ~我想你可以说，我们的闭塞正是让我们安全的原因之一。要是我们试着越过无痕海扩张，别的国家也许会把我们当成威胁。兰坦不想与世上的其余部分开战。各自安好对大家都好。~
= ~外界把我们当成一群无害的怪人，所以也就随我们去了。和平共处之类的。~
++ ~我明白了。我还有别的想问。~ + lantan
++ ~目前就这些。~ + end
END

IF ~~ lantan.family
SAY ~嗯……是的，我想是。格利默夏恩这个姓氏很老。它算不上多重要，因为兰坦不太看重门第，但我们受人敬重，我父亲在贡德议会里有一席。我们能发出自己的声音，也就到这个程度。~
++ ~还有哪些有名望的家族？~ + lantan.family2
++ ~我明白了。我还有别的想问。~ + lantan
++ ~目前就这些。~ + end
END

IF ~~ lantan.family2
SAY ~有我们的表亲米德文沃克家……他们开创了雷电与蒸汽动力技术的路子。还有莱特温德家，他们血脉里的魔法天赋比其余所有家族加起来还多。~
= ~此外还有迪内尔斯特兰德、斯平德勒、格林克尔这些值得一提的名字……不过我跟他们不太熟。~
++ ~我明白了。我还有别的想问。~ + lantan
++ ~目前就这些。~ + end
END

IF ~~ lantan.name
SAY ~呃……对，是的。不过我希望你别那么叫我。我自己觉得挺傻的。~
+ ~CheckStatGT(Player1,14,INT)~ + ~“奥瑞莉亚”意思是“金色”，对吧？这名字背后有什么故事吗？~ + lantan.name1
++ ~你名字中间那个字母代表什么？~ + lantan.name2
++ ~我明白了。我还有别的想问。~ + lantan
++ ~目前就这些。~ + end
END

IF ~~ lantan.name1
SAY ~我母亲坚信我是个有福的孩子。我是兄弟姐妹里唯一长着金色眼睛的，她把这当成吉兆。~
= ~不过她起初总叫不对。我想“奥瑞莉亚”对幼儿来说太难了。母亲说我老是“奥拉、奥拉”地重复，觉得可爱。最后就这么叫下来了。~
++ ~你名字中间那个字母代表什么？~ + lantan.name2
END

IF ~~ lantan.name2
SAY ~“密涅瓦”。那是我祖母的名字。她在世时被誉为格利默夏恩家最伟大的头脑。~
= ~我真希望能认识她。她在我出生前就离开兰坦去探索别的土地了，动荡之年以后就再没人听过她的消息。就像她就那么……彻底消失了。~
= ~父亲是为了纪念她才给我起这个名字。我想他很了解她，也非常想念她……他说我的眼睛跟她的一模一样。我自己上路之后也一直设法打听她的下落，可是……还没有消息。~
++ ~我明白了。我还有别的想问。~ + lantan
++ ~目前就这些。~ + end
END

IF ~~ karatur
SAY ~当然，尽管问。我知道的都告诉你。~
++ ~给我讲讲卡拉图的基本地理。~ + karatur.geography
++ ~住在科祖库拉是什么感觉？~ + karatur.living
+ ~Class("C0Aura",CLERIC_ALL)~ + ~你能使用神术，却从不呼唤神名。这怎么可能？~ + karatur.priestess
+ ~Global("C0AuraKaraLanguage","GLOBAL",0)~ + ~你会说卡拉图的语言吗？~ DO ~SetGlobal("C0AuraKaraLanguage","GLOBAL",1)~ + karatur.language
+ ~Global("C0AuraKaraLanguage","GLOBAL",1) RandomNum(3,1)~ + ~你能用科祖库拉话说点什么吗？~ + karatur.language.proverb1
+ ~Global("C0AuraKaraLanguage","GLOBAL",1) RandomNum(3,2)~ + ~你能用科祖库拉话说点什么吗？~ + karatur.language.proverb2
+ ~Global("C0AuraKaraLanguage","GLOBAL",1) RandomNum(3,3)~ + ~你能用科祖库拉话说点什么吗？~ + karatur.language.proverb3
+ ~GlobalGT("C0AuraQuest","GLOBAL",12) Global("C0AuraAskReika","GLOBAL",0)~ + ~天之镜丽华是谁？~ DO ~SetGlobal("C0AuraAskReika","GLOBAL",1)~ + reika
+ ~GlobalGT("C0AuraQuest","GLOBAL",12) Global("C0AuraAskTheWay","GLOBAL",0)~ + ~你奉行道吗？~ DO ~SetGlobal("C0AuraAskTheWay","GLOBAL",1)~ + theway
+ ~GlobalGT("C0AuraTamoko","GLOBAL",3) Global("C0AuraAskTamoko","GLOBAL",0)~ + ~你知道塔摩科是丽华的侄女吗？~ + reika.tamoko
++ ~我们聊点别的吧。~ + pid2
++ ~眼下就到这儿。~ + end
END

IF ~~ karatur.priestess
SAY ~嗯……这说起来复杂。科祖库拉的神明跟我们更熟悉的那类不太一样。它更像是……追随某一种理想，而不是某个有名有姓的存在。我知道这听着怪，可是……它更像是向世间的自然之力祈求医治、守护或伤害。没有特定的神明可呼唤。~
= ~让我觉得奇怪的是……即便离开了科祖库拉，我从丽华小姐那里学来的祷文仍然有回应，效力一点也没减，尽管出了卡拉图就不一样了……~
= ~这我真解释不了。我不是真正的女祭司，我只是学会了正确的祷文、熟悉了那些声音的人。只有真正受过道的教导的信徒才可能知道。~
++ ~我明白了。我还有别的想问。~ + karatur
++ ~目前就这些。~ + end
END

IF ~~ karatur.geography
SAY ~卡拉图在极东之地。你可能听说过它治下的一些国家。守龙、塔博特、马拉特拉、倭、科祖库拉……这只是其中几个。~
= ~科祖库拉跟别的国家有点不同。它由几座大岛组成，很像兰坦。我住在南方四座主岛之一的御剑殿。~
= ~它不像都城土州那样大、那样富，但仍是个美丽的地方，有看不尽的森林和雾气弥漫的山谷。~
++ ~我明白了。我还有别的想问。~ + karatur
++ ~目前就这些。~ + end
END

IF ~~ karatur.living
SAY ~那……嗯，并不像我回忆里说得那么轻松。外人——他们叫“外人”——很少受张开双臂的欢迎……非人类就更少。~
= ~我运气好，下等阶层的人疑心没那么重，很多人还为我当时的……状况心生怜悯。再加上有手艺的人——即便是外国人——会受到更多尊重。至少我算是挣到了一席之地。~
++ ~我明白了。我还有别的想问。~ + karatur
++ ~目前就这些。~ + end
END

IF ~~ karatur.language
SAY ~嗯，首先你得记住，语言不止一种。我住在科祖库拉的南部，学会了说科祖库拉方言。我也学过一点高等守语，可是……只能勉强对话。~
= ~不过据我所知，科祖库拉语和倭语关系很近。其实，科祖库拉语和倭语严格说来只是汉语的不同方言。这……有点复杂。~
+ ~Global("C0AuraKaraLanguage","GLOBAL",1) RandomNum(3,1)~ + ~你能用科祖库拉话说点什么吗？~ + karatur.language.proverb1
+ ~Global("C0AuraKaraLanguage","GLOBAL",1) RandomNum(3,2)~ + ~你能用科祖库拉话说点什么吗？~ + karatur.language.proverb2
+ ~Global("C0AuraKaraLanguage","GLOBAL",1) RandomNum(3,3)~ + ~你能用科祖库拉话说点什么吗？~ + karatur.language.proverb3
++ ~我明白了。我还有别的想问。~ + karatur
++ ~目前就这些。~ + end
END

IF ~~ karatur.language.proverb1
SAY ~好……这句是科祖库拉的谚语，也是我最喜欢的之一：“井中之蛙，不知大海。”意思是：“井里的青蛙不知道大海有多大。”~
= ~这是关于谦卑与开悟的一课。井里的青蛙也许以为自己最大最强，可要是把它带到海边，它就会明白自己有多小。~
++ ~我明白了。我还有别的想问。~ + karatur
++ ~目前就这些。~ + end
END

IF ~~ karatur.language.proverb2
SAY ~你也许熟悉这句话的意思：“一石二鸟”。~
++ ~我明白了。我还有别的想问。~ + karatur
++ ~目前就这些。~ + end
END

IF ~~ karatur.language.proverb3
SAY ~“猫得金币”——把宝物给不识其价值的人，讲的正是这个道理。还有一句意思相同：“猪前珍珠”。只是我更喜欢猫。~
++ ~我明白了。我还有别的想问。~ + karatur
++ ~目前就这些。~ + end
END

IF ~~ reika
SAY ~丽华小姐是我被冲上岸的那座科祖库拉岛——御剑殿——上一座神社的女祭司。我初到异乡时是个迷途的孩子，茫然失措，记忆大半都失了……可丽华小姐待我很好，教我卡拉图的语言，像母亲一样对我。~
= ~她是个孤僻的人，独居，日子都用来照料神社、遵行开悟之道，跟我认识的大多数向八百万神祈祷的科祖库拉人不同。她临终前要我去给她的侄女传话——那侄女背弃了道……~
+ ~GlobalGT("C0AuraTamoko","GLOBAL",1) Global("C0AuraAskTamoko","GLOBAL",0)~ + ~你知道塔摩科是她侄女吗？~ + reika.tamoko
++ ~我明白了。我还有别的想问。~ + karatur
++ ~目前就这些。~ + end
END

IF ~~ reika.tamoko
SAY ~不，我完全不知道。我听到塔摩科小姐这个名字时，一点也不熟悉。她一定是离开科祖库拉之后才取的，好与过去的自己拉开距离……我只知道丽华小姐的侄女背弃了道，而她想引导她回来。~
= ~我从没想到塔摩科小姐就是那个人，也没想到她跟你的敌人有什么关系。~
++ ~我明白了。我还有别的想问。~ DO ~SetGlobal("C0AuraAskTamoko","GLOBAL",1)~ + karatur
++ ~目前就这些。~ DO ~SetGlobal("C0AuraAskTamoko","GLOBAL",1)~ + end
END

IF ~~ theway
SAY ~嗯……如果一个勉强算懂某种信仰的人也能自称信徒，那么……是的，我想我是。道与崇拜某个有名之神不同。它是一种哲学，一种相信万物和谐共存的信念。~
= ~它……并不与相信逻辑与理性相冲突。道主张有一种应当维护的自然平衡。兰坦人也相信费伦的科学有其均衡。兰坦人同样相信万物存在于均衡之中，破坏它便带来混乱。两者远不相同，但可以信其一而不违其二。~
= ~要复杂地回答我是否真的奉行道……最好这么说：我把道里的某些想法吸收进了我自己的哲学。希望这足以让你满意。~
++ ~我明白了。我还有别的想问。~ + karatur
++ ~目前就这些。~ + end
END

IF ~~ notalk
SAY ~嗯，这可真没礼貌。唉！~
IF ~~ EXIT
END

IF ~~ retalk
SAY ~好吧。只因为你请求得好。~
IF ~~ EXIT
END

IF ~~ bears
SAY ~我。不。怕。熊。~
++ ~好……那你为什么不喜欢熊？~ + bears1
++ ~当——当然。~ + bears1
++ ~那好吧。当我没问。~ EXIT
END

IF ~~ bears1
SAY ~我只是……不喜欢它们。兰坦没有熊，我第一次近距离看到一头时，真是吓坏了。它们那么……大，却跑得那么快，一张开大嘴咆哮或者打哈欠……呃……~
= ~嗯，有那么一次……我住在科祖库拉时，在森林里采集材料，一头熊突然扑向我。那时我连兔子洞都打不过……要不是好心的当地人把它吓走，我可能就当场被活吃了。~
= ~总之，我一直不喜欢熊，可从那以后我连看一眼都会恐慌。大概就这样。现在能不能别谈熊了？~
IF ~~ EXIT
END

IF ~~ explosives
SAY ~我——是的，我想我可以。我没法很快做出像我上次用的那种强大陷阱，不过手持炸药……对我倒不算难。~
= ~我不喜欢做武器。尤其是爆炸性武器。但我信你，<CHARNAME>，不会滥用它们……毕竟你帮过我，而且你已经知道我几个秘密了。~
= ~所以……好吧。你要是想让我做炸药，跟我说一声我就开工。不过我只有炼金器具可用，做不出有正规实验器具时那么多……我想一天顶多两三个。比我用同样的时间做药水还少。~
= ~只是……记住，这东西是用来破坏的。房屋、怪物、人……都一样。我不想做超出必须的量。~
IF ~~ EXIT
END

// FLIRTS

// Flirt

IF ~~ flirt
 SAY ~嗯——？~
+ ~RandomNum(3,1)~ + ~你今天在做什么？有什么有意思的吗？~ + f1.1 
+ ~RandomNum(3,2)~ + ~你今天在做什么？有什么有意思的吗？~ + f1.2
+ ~RandomNum(3,3)~ + ~你今天在做什么？有什么有意思的吗？~ + f1.3
+ ~!Race(Player1,GNOME) !Race(Player1,HALFLING) !Race(Player1,DWARF) RandomNum(3,1)~ + ~（把她举起来）~ + f2.1
+ ~!Race(Player1,GNOME) !Race(Player1,HALFLING) !Race(Player1,DWARF) RandomNum(3,2)~ + ~（把她举起来）~ + f2.2
+ ~!Race(Player1,GNOME) !Race(Player1,HALFLING) !Race(Player1,DWARF) RandomNum(3,3)~ + ~（把她举起来）~ + f2.3
+ ~RandomNum(3,1)~ + ~（捏她的脸）~ + f3.1
+ ~RandomNum(3,2)~ + ~（捏她的脸）~ + f3.2
+ ~RandomNum(3,3)~ + ~（捏她的脸）~ + f3.3
+ ~RandomNum(3,1)~ + ~（戳她的鼻子）~ + f4.1
+ ~RandomNum(3,2)~ + ~（戳她的鼻子）~ + f4.2
+ ~RandomNum(3,3)~ + ~（戳她的鼻子）~ + f4.3
+ ~RandomNum(3,1)~ + ~（向她眨眼）~ + f5.1
+ ~RandomNum(3,2)~ + ~（向她眨眼）~ + f5.2
+ ~RandomNum(3,3)~ + ~（向她眨眼）~ + f5.3
+ ~Class(Player1,MAGE_ALL) Class(Player1,BARD_ALL) RandomNum(3,1)~ + ~（用魔法给她表演一番）~ + f6.1
+ ~Class(Player1,MAGE_ALL) Class(Player1,BARD_ALL) RandomNum(3,2)~ + ~（用魔法给她表演一番）~ + f6.2
+ ~Class(Player1,MAGE_ALL) Class(Player1,BARD_ALL) RandomNum(3,3)~ + ~（用魔法给她表演一番）~ + f6.3
+ ~RandomNum(3,1)~ + ~（给她讲个笑话）~ + f7.1
+ ~RandomNum(3,2)~ + ~（给她讲个笑话）~ + f7.2
+ ~RandomNum(3,3)~ + ~（给她讲个笑话）~ + f7.3
+ ~RandomNum(3,1)~ + ~（轻轻拽她的头发）~ + f8.1
+ ~RandomNum(3,2)~ + ~（轻轻拽她的头发）~ + f8.2
+ ~RandomNum(3,3)~ + ~（轻轻拽她的头发）~ + f8.3
+ ~RandomNum(3,1)~ + ~（看着她）~ + f9.1
+ ~RandomNum(3,2)~ + ~（看着她）~ + f9.2
+ ~RandomNum(3,3)~ + ~（看着她）~ + f9.3
+ ~RandomNum(3,1)~ + ~（挠她痒）~ + f10.1
+ ~RandomNum(3,2)~ + ~（挠她痒）~ + f10.2
+ ~RandomNum(3,3)~ + ~（挠她痒）~ + f10.3
+ ~RandomNum(3,1)~ + ~你的眼睛真漂亮。~ + f11.1
+ ~RandomNum(3,2)~ + ~你的眼睛真漂亮。~ + f11.2
+ ~RandomNum(3,3)~ + ~你的眼睛真漂亮。~ + f11.3
+ ~RandomNum(3,1)~ + ~想喝点茶吗？~ + f12.1
+ ~RandomNum(3,2)~ + ~想喝点茶吗？~ + f12.2
+ ~RandomNum(3,3)~ + ~想喝点茶吗？~ + f12.3
+ ~RandomNum(3,1)~ + ~（吻她的鼻尖）~ + f13.1
+ ~RandomNum(3,2)~ + ~（吻她的鼻尖）~ + f13.2
+ ~RandomNum(3,3)~ + ~（吻她的鼻尖）~ + f13.3
++ ~没什么。~ EXIT
END

IF ~~ f1.1
SAY ~是个惊喜！~
IF ~~ EXIT
END

IF ~~ f1.2
SAY ~你会知道的。我喜欢的人可以提前知道！呃，这，顺便说，包括你。~
IF ~~ EXIT
END

IF ~~ f1.3
SAY ~等着吧。等我隆重揭晓的时候，会把你震惊到的！嘿嘿。~
IF ~~ EXIT
END

IF ~~ f2.1
SAY ~哇——嘿！放我下来！我不喜欢高高——高！~
IF ~~ EXIT
END

IF ~~ f2.2
SAY ~（她从你手中躲开，笑着一个灵活的翻滚逃出你的手臂范围！）~
= ~不——行！~
IF ~~ EXIT
END

IF ~~ f2.3
SAY ~（你惊讶地发现她远比看上去要重得多。你费力地把她举起来时，各种工具和金属零件从她的口袋和袖子里掉了出来。）~
= ~嘿！我的装备！你最好帮我一起捡起来，<CHARNAME>！~
IF ~~ EXIT
END

IF ~~ f3.1
SAY ~哎哟！捏脸轻点，<CHARNAME>！~
IF ~~ EXIT
END

IF ~~ f3.2
SAY ~真希望穆菲也有软扑扑的脸颊，让我无聊的时候捏……~
IF ~~ EXIT
END

IF ~~ f3.3
SAY ~你就跟我大姐一样。她出门前非得每天捏我一下才罢休。~
IF ~~ EXIT
END

IF ~~ f4.1
SAY ~*轻笑*~
IF ~~ EXIT
END

IF ~~ f4.2
SAY ~唔！（她吐了吐舌头，假装不服气）~
IF ~~ EXIT
END

IF ~~ f4.3
SAY ~小——小心……我要打喷嚏了！~
IF ~~ EXIT
END

IF ~~ f5.1
SAY ~什么？你知道什么我不知道的事？快告诉我！~
IF ~~ EXIT
END

IF ~~ f5.2
SAY ~（她正忙着检查一对奇怪的铜杆，完全没注意到你）~
IF ~~ EXIT
END

IF ~~ f5.3
SAY ~（她回眨了一下眼）~
IF ~~ EXIT
END

IF ~~ f6.1
SAY ~哦，再来一次！~
IF ~~ EXIT
END

IF ~~ f6.2
SAY ~啊，别显摆了，<CHARNAME>……你让我好羡慕……~
IF ~~ EXIT
END

IF ~~ f6.3
SAY ~魔法真美，可我就是弄不明白……~
IF ~~ EXIT
END

IF ~~ f7.1
SAY ~哦，这招聪明！~
IF ~~ EXIT
END

IF ~~ f7.2
SAY ~这句我一定记住！~
IF ~~ EXIT
END

IF ~~ f7.3
SAY ~诶——嘿嘿嘿嘿！~
IF ~~ EXIT
END

IF ~~ f8.1
SAY ~嘿——嘿——嘿！你会弄坏根部的！住——手！~
IF ~~ EXIT
END

IF ~~ f8.2
SAY ~嗯，我一直在想染个别颜色的头发。也许是蓝色。或者银色。哦，或者长春花色！那会很可爱。~
IF ~~ EXIT
END

IF ~~ f8.3
SAY ~哼，对我的头发尊重点！我可是特别用心保养它的。~
IF ~~ EXIT
END

IF ~~ f9.1
SAY ~（奥拉正用一支小笔给穆菲画脸。她的手又慢又稳，在金属松鼠的眼睛周围画出近乎完美的圆圈。）~
= ~哦，你现在可真是可爱极了，不是吗？对，就是这样！现在坐到我肩上别动，不然颜料会弄得到处都是……~
IF ~~ EXIT
END

IF ~~ f9.2
SAY ~（奥拉正在摆弄她的弓“太阳射手”，用一件细长工具拧紧弓臂关节处一颗松动的螺丝。）~
= ~上次打仗时那个部件差点掉下来。幸好没掉……那可就危险了。我该好好保养我的战斗装备。~
IF ~~ EXIT
END

IF ~~ f9.3
SAY ~（奥拉带着几分困惑回望你。）~
= ~怎么？我脸上又沾到油了？~
IF ~~ EXIT
END

IF ~~ f10.1
SAY ~不——不——不——不不不不！停下！*轻笑*~
IF ~~ EXIT
END

IF ~~ f10.2
SAY ~啊，不行！穆菲，救我！~
IF ~~ EXIT
END

IF ~~ f10.3
SAY ~呀，别碰腋下，哪儿都行就是别——啊哈哈！~
IF ~~ EXIT
END

IF ~~ f11.1
SAY ~我父母确实说过，金色的眼睛对家族是好兆头……~
IF ~~ EXIT
END

IF ~~ f11.2
SAY ~哦——！你这么说真是太贴心了，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ f11.3
SAY ~有时我怕它跟我粉色的头发不搭。看来我不用担这个心了。~
IF ~~ EXIT
END

IF ~~ f12.1
SAY ~哦，随时都行！让我把茶壶架起来！~
IF ~~ EXIT
END

IF ~~ f12.2
SAY ~好，不过要用我配的茶叶，知道吗？还有我的茶杯！~
IF ~~ EXIT
END

IF ~~ f12.3
SAY ~嗯，我这会儿正需要歇一歇。为什么不呢？~
IF ~~ EXIT
END

IF ~~ f13.1
SAY ~（她惊讶地僵住，你看着她脸颊变红，能感到她的气息拂过你的下巴。）~
IF ~~ EXIT
END

IF ~~ f13.2
SAY ~（她眨了眨眼——你能感到她的紧张，仿佛本能地想退后，可她还是闭上眼，接受了你的亲昵。）~
IF ~~ EXIT
END

IF ~~ f13.3
SAY ~（你的嘴唇轻轻触上她温暖的鼻梁。你退开时，奥拉直视着你的眼睛，嘴唇紧张地颤着。）~
IF ~~ EXIT
END

IF ~~ craft1
SAY ~当然，我有时间做点破咒的活。要我看什么？~
+ ~Global("C0AuraImprove1","GLOBAL",0) PartyHasItemIdentified("sw2h03")~ + ~狂暴诅咒之剑。~ + ragesword
+ ~Global("C0AuraImprove2","GLOBAL",0) PartyHasItemIdentified("sper03")~ + ~反噬者。~ + backbiter
+ ~Global("C0AuraImprove3","GLOBAL",0) PartyHasItemIdentified("brac11")~ + ~束缚护腕。~ + bracerbinding
+ ~Global("C0AuraImprove4","GLOBAL",0) PartyHasItemIdentified("misc48")~ + ~科扎神像。~ + idol
+ ~Global("C0AuraImprove5","GLOBAL",0) PartyHasItemIdentified("brac08")~ + ~笨拙护手。~ + bracerfumbling
+ ~Global("C0AuraImprove6","GLOBAL",0) PartyHasItemIdentified("ring23")~ + ~戒律者。~ + discipliner
+ ~Global("C0AuraImprove7","GLOBAL",0) PartyHasItemIdentified("ring04")~ + ~弄臣之愚。~ + jesterfolly
+ ~Global("C0AuraImprove8","GLOBAL",0) PartyHasItemIdentified("belt05")~ + ~阳刚/阴柔腰带。~ + sexgirdle
+ ~Global("C0AuraImprove9","GLOBAL",0) PartyHasItemIdentified("belt15")~ + ~巨拳腰带。~ + bigfist
+ ~Global("C0AuraImprove10","GLOBAL",0) PartyHasItemIdentified("blun09")~ + ~基尔的晨星。~ + kielstar
++ ~再想想，眼下没什么需要我处理的。~ + pid2
END

IF ~~ craft2
SAY ~我还在忙你另外那件委托。做好了我叫你！~
IF ~~ EXIT
END

IF ~~ craft3
SAY ~还有别的要我看的吗？~
+ ~Global("C0AuraImprove1","GLOBAL",0) PartyHasItemIdentified("sw2h03")~ + ~狂暴诅咒之剑。~ + ragesword
+ ~Global("C0AuraImprove2","GLOBAL",0) PartyHasItemIdentified("sper03")~ + ~反噬者。~ + backbiter
+ ~Global("C0AuraImprove3","GLOBAL",0) PartyHasItemIdentified("brac11")~ + ~束缚护腕。~ + bracerbinding
+ ~Global("C0AuraImprove4","GLOBAL",0) PartyHasItemIdentified("misc48")~ + ~科扎神像。~ + idol
+ ~Global("C0AuraImprove5","GLOBAL",0) PartyHasItemIdentified("brac08")~ + ~笨拙护手。~ + bracerfumbling
+ ~Global("C0AuraImprove6","GLOBAL",0) PartyHasItemIdentified("ring23")~ + ~戒律者。~ + discipliner
+ ~Global("C0AuraImprove7","GLOBAL",0) PartyHasItemIdentified("ring04")~ + ~弄臣之愚。~ + jesterfolly
+ ~Global("C0AuraImprove8","GLOBAL",0) PartyHasItemIdentified("belt05")~ + ~阳刚/阴柔腰带。~ + sexgirdle
+ ~Global("C0AuraImprove9","GLOBAL",0) PartyHasItemIdentified("belt15")~ + ~巨拳腰带。~ + bigfist
+ ~Global("C0AuraImprove10","GLOBAL",1) PartyHasItemIdentified("blun09")~ + ~基尔的晨星。~ + kielstar
++ ~再想想，眼下没什么需要我处理的。~ + pid2
END

IF ~~ craft4
SAY ~我一有能力就动手。哦，还得提醒你，我一次只接一件活，所以……这期间你要是想做别的，得有点耐心。~
IF ~~ EXIT
END

IF ~~ ragesword
SAY ~那把剑的诅咒可轻视不得……我连想都不想它夺去了多少无辜性命。~
= ~交给我吧，<CHARNAME>。我不敢保证能彻底破掉造它时掺进的那股邪术，但至少能确保没人再落得像可怜的布拉格队长那样。~
IF ~~ DO ~SetGlobal("C0AuraImprove1","GLOBAL",1) IncrementGlobal("C0AuraCursedUpgrade","GLOBAL",-1) SetGlobal("C0AuraAtWork","GLOBAL",1) SetGlobalTimer("C0AuraCraftTimer","GLOBAL",ONE_WEEK) TakePartyItem("sw2h03") DestroyItem("sw2h03")~ + craft4
END

IF ~~ backbiter
SAY ~这件武器真迷人。它让我想起一段科祖库拉的妖怪传说，那妖怪用的矛有点像这个……记得哪天让我给你讲讲这故事！~
= ~让我看看……单纯剥掉附魔倒不难，可那太浪费了……我在想能不能改一下倒钩……会很难，可要是用得小心……嗯……~
IF ~~ DO ~SetGlobal("C0AuraImprove2","GLOBAL",1) IncrementGlobal("C0AuraCursedUpgrade","GLOBAL",-1) SetGlobal("C0AuraAtWork","GLOBAL",2) SetGlobalTimer("C0AuraCraftTimer","GLOBAL",ONE_WEEK) TakePartyItem("sper03") DestroyItem("sper03")~ + craft4
END

IF ~~ bracerbinding
SAY ~放在卓尔器物里，这些倒不算太出格。他们确实有种很刻薄的风趣。可同时，他们做的一些东西潜力惊人。要是有天我能去他们某座城市看看……呃，我知道，按我想要的方式是不太可能的。~
IF ~~ DO ~SetGlobal("C0AuraImprove3","GLOBAL",1) IncrementGlobal("C0AuraCursedUpgrade","GLOBAL",-1) SetGlobal("C0AuraAtWork","GLOBAL",3) SetGlobalTimer("C0AuraCraftTimer","GLOBAL",ONE_WEEK) TakePartyItem("brac11") DestroyItem("brac11")~ + craft4
END

IF ~~ idol
SAY ~我还在想带这东西上路到底是不是个好主意。可同时我又太好奇了……可它真的很危险……呃！好吧好吧，让我仔细看看它。~
= ~上面有些铭文，我也许能译出些意思……这肯定要花时间。但愿我不会因为去试而被雷劈。也别劈到别人。祈祷吧！~
IF ~~ DO ~SetGlobal("C0AuraImprove4","GLOBAL",1) IncrementGlobal("C0AuraCursedUpgrade","GLOBAL",-1) SetGlobal("C0AuraAtWork","GLOBAL",4) SetGlobalTimer("C0AuraCraftTimer","GLOBAL",ONE_WEEK) TakePartyItem("misc48") DestroyItem("misc48")~ + craft4
END

IF ~~ bracerfumbling
SAY ~就像人们常说的，“种什么因，得什么果”，是吧？我们可得确保同样的事别落到我们头上。这些我来处理。~
IF ~~ DO ~SetGlobal("C0AuraImprove5","GLOBAL",1) IncrementGlobal("C0AuraCursedUpgrade","GLOBAL",-1) SetGlobal("C0AuraAtWork","GLOBAL",5) SetGlobalTimer("C0AuraCraftTimer","GLOBAL",ONE_WEEK) TakePartyItem("brac08") DestroyItem("brac08")~ + craft4
END

IF ~~ discipliner
SAY ~你知道，我家乡有几个导师会很想弄到这只戒指。学生有时真能把他们逼疯，你知道吧？不过我可不觉得让他们在角落流口水会让事情好起来……~
= ~这会是个很好玩的挑战。做这戒指的法师非常强大。以防，呃……我戴上它做实验时出了差错，比如诅咒变成永久的之类，我包的底层隔间里有本笔记，记得……呃，算了。希望不至于到那一步。~
IF ~~ DO ~SetGlobal("C0AuraImprove6","GLOBAL",1) IncrementGlobal("C0AuraCursedUpgrade","GLOBAL",-1) SetGlobal("C0AuraAtWork","GLOBAL",6) SetGlobalTimer("C0AuraCraftTimer","GLOBAL",ONE_WEEK) TakePartyItem("ring23") DestroyItem("ring23")~ + craft4
END

IF ~~ jesterfolly
SAY ~你知道，捉弄人有的是更无害的法子。往脸上拍奶油派一向是经典。~
= ~咳。在我开始想派之前，我先给这只戒指的破咒列个方案。它从今往后不会再作弄人了。~
IF ~~ DO ~SetGlobal("C0AuraImprove7","GLOBAL",1) IncrementGlobal("C0AuraCursedUpgrade","GLOBAL",-1) SetGlobal("C0AuraAtWork","GLOBAL",7) SetGlobalTimer("C0AuraCraftTimer","GLOBAL",ONE_WEEK) TakePartyItem("ring04") DestroyItem("ring04")~ + craft4
END

IF ~~ sexgirdle
SAY ~哦……对，我们有这个。我能……不做吗？这让我想起我跟同学做过的一次换身实验，很不愉快……哦，好吧。我看看能做什么。~
IF ~~ DO ~SetGlobal("C0AuraImprove8","GLOBAL",1) IncrementGlobal("C0AuraCursedUpgrade","GLOBAL",-1) SetGlobal("C0AuraAtWork","GLOBAL",8) SetGlobalTimer("C0AuraCraftTimer","GLOBAL",ONE_WEEK) TakePartyItem("belt05") DestroyItem("belt05")~ + craft4
END

IF ~~ bigfist
SAY ~人们说有些性格会沾染到成为魔法器物的东西上。我看着这个，就忍不住想是不是真的。要改造它，还真有点可惜。~
IF ~~ DO ~SetGlobal("C0AuraImprove9","GLOBAL",1) IncrementGlobal("C0AuraCursedUpgrade","GLOBAL",-1) SetGlobal("C0AuraAtWork","GLOBAL",9) SetGlobalTimer("C0AuraCraftTimer","GLOBAL",ONE_WEEK) TakePartyItem("belt15") DestroyItem("belt15")~ + craft4
END

IF ~~ kielstar
SAY ~这个……我不确定单靠奇械手艺够不够。这件武器背后的故事太悲惨了……它不太像魔法诅咒，更像是它主人的魂魄仍在其中流连。不过我看看能做什么。~
IF ~~ DO ~SetGlobal("C0AuraImprove10","GLOBAL",1) IncrementGlobal("C0AuraCursedUpgrade","GLOBAL",-1) SetGlobal("C0AuraAtWork","GLOBAL",10) SetGlobalTimer("C0AuraCraftTimer","GLOBAL",ONE_WEEK) TakePartyItem("blun09") DestroyItem("blun09")~ + craft4
END

IF WEIGHT #-1 ~Global("C0AuraAtWork","GLOBAL",4)
Global("C0AuraKozah","GLOBAL",1)~ craftdone4.1
SAY ~呃，这本来不该发生的……我想。~
= ~其实，再一想……也许那道雷反而激活了神像的力量。它现在简直在嗡嗡作响、充满能量！~
IF ~~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",0) GiveItemCreate("c0auim04",Player1,3,1,0) AddXPObject("C0Aura",500)~ EXIT
END

IF WEIGHT #-1 ~!Global("C0AuraAtWork","GLOBAL",0)
	GlobalTimerExpired("C0AuraCraftTimer","GLOBAL")~ craftdone
SAY ~找到了！我想我成功了！嘿，嘿，<CHARNAME>！你让我做的那件委托，我做完了。看看！~
IF ~Global("C0AuraAtWork","GLOBAL",1)~ + craftdone1
IF ~Global("C0AuraAtWork","GLOBAL",2)~ + craftdone2
IF ~Global("C0AuraAtWork","GLOBAL",3)~ + craftdone3
IF ~Global("C0AuraAtWork","GLOBAL",4)~ + craftdone4
IF ~Global("C0AuraAtWork","GLOBAL",5)~ + craftdone5
IF ~Global("C0AuraAtWork","GLOBAL",6)~ + craftdone6
IF ~Global("C0AuraAtWork","GLOBAL",7)~ + craftdone7
IF ~Global("C0AuraAtWork","GLOBAL",8)~ + craftdone8
IF ~Global("C0AuraAtWork","GLOBAL",9)~ + craftdone9
IF ~Global("C0AuraAtWork","GLOBAL",10)~ + craftdone10
END

IF ~~ craftdone1
SAY ~那把剑……嗯，至少我把它的火气压下去了一些。现在就算你握它，应该也能放得下，可是……还是小心点。它还是有点危险。~
IF ~~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",0) GiveItemCreate("c0auim01",Player1,0,0,0) AddXPObject("C0Aura",500)~ EXIT
END

IF ~~ craftdone2
SAY ~给你……哦，小心那些尖刺！我都不记得自己被扎过多少次了。我手指有些地方还麻着。用这矛的时候当心点。它不再受诅咒了，可要是你手脚不够灵巧，它可能还是有危险。~
IF ~~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",0) GiveItemCreate("c0auim02",Player1,0,0,0) AddXPObject("C0Aura",500)~ EXIT
END

IF ~~ craftdone3
SAY ~调整了一下，你以后就不用担心把这副护腕跟别的配错了。而且现在戴着也更舒服！~
IF ~~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",0) GiveItemCreate("c0auim03",Player1,0,0,0) AddXPObject("C0Aura",500)~ EXIT
END

IF ~~ craftdone4
SAY ~我想我什么都试过了，想让神像有点反应。符文魔法、电击、钻石粉、随口念些不祥的胡话、用各种金属探针戳它……~
= ~呃，总之，我想我现在知道怎么唤醒它的力量了。底座上有一行奇怪的符号，我抄下来了，那就来……咳。“阿·马卢姆·塔卡·卡尔阿克·塞·科扎”……哇！~
IF ~~ DO ~SetGlobal("C0AuraKozah","GLOBAL",1) ApplySpell(Myself,RESTORE_FULL_HEALTH) ClearAllActions() StartCutsceneMode() StartCutscene("c0acut_3")~ EXIT
END

IF ~~ craftdone5
SAY ~这些做精细活会很方便。只要戴着它们，你就不必怕手滑了。前提是我附魔附对了……~
IF ~~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",0) GiveItemCreate("c0auim05",Player1,0,0,0) AddXPObject("C0Aura",500)~ EXIT
END

IF ~~ craftdone6
SAY ~我给自己打个及格分吧？拜托，我偶尔也可以自我表扬一下吧？~
IF ~~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",0) GiveItemCreate("c0auim06",Player1,0,0,0) AddXPObject("C0Aura",500)~ EXIT
END

IF ~~ craftdone7
SAY ~其实我挺舍不得这只戒指的。要是你没别的想法，也许我可以留着它？嘿嘿。~
IF ~~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",0) GiveItemCreate("c0auim07",Player1,0,0,0) AddXPObject("C0Aura",500)~ EXIT
END

IF ~~ craftdone8
SAY ~好，诅咒去掉了，除此之外没什么不同。你要拿它做什么，随你。我不想知道。~
IF ~~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",0) GiveItemCreate("c0auim08",Player1,0,0,0) AddXPObject("C0Aura",500)~ EXIT
END

IF ~~ craftdone9
SAY ~说实话，诅咒比那堆乱糟糟的东西好清理多了。当初给它下咒的人根本没费什么力气。~
IF ~~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",0) GiveItemCreate("belt06",Player1,0,0,0) AddXPObject("C0Aura",500)~ EXIT
END

IF ~~ craftdone10
SAY ~*叹气* 要让这件武器的主人魂魄得到些许安宁，光靠奇械还不够。不过……我从导师那里学了些仪式，我觉得合适。这是我能做到的极限了。愿你安眠……~
IF ~~ DO ~SetGlobal("C0AuraAtWork","GLOBAL",0) GiveItemCreate("c0auim09",Player1,0,0,0) AddXPObject("C0Aura",500)~ EXIT
END

IF ~~ stringfix
 SAY ~呃。我得想办法处理一下这个。*咳* “啦，啦……”~
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("c0areset")~ EXIT 
END

END