//////////////////////////////////////////////////////////////////////////////////
////////////////////////////////BG1 Talks/////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

CHAIN IF ~Global("C0AuraBG2FriendshipImportTalk","GLOBAL",2)~ THEN BC0AURA2 FRIEND-BG1-1
~嘿嘿。又能跟你一起旅行，真是太奇妙了，<CHARNAME>，还这么快！就像我们从没分开过，对吧？~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2FriendshipImportTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraBG2FriendshipTalkTimer","GLOBAL",2700)~
END
++ ~我也很高兴再见到你，奥拉。~ + FRIEND-BG1-1-1
++ ~时间过得真快。~ + FRIEND-BG1-1-2
++ ~我看这期间你一点没变。~ + FRIEND-BG1-1-3
++ ~晚点再聊行吗？我现在实在没心情追忆往事，别介意。~ + FRIEND-BG1-1-0

CHAIN BC0AURA2 FRIEND-BG1-1-0
~哦。对……以后我们有的是时间叙旧，对吧。那好，这次就到这儿！~
EXIT

CHAIN BC0AURA2 FRIEND-BG1-1-1
~我也高兴。毕竟自我开始走剑湾，你是我交到的最亲近的朋友。一阵子不在你身边，就是觉得不对劲。~
EXTERN BC0AURA2 FRIEND-BG1-1-4

CHAIN BC0AURA2 FRIEND-BG1-1-2
~是啊，我知道。分开不算久，可……就像一切都是注定要发生的，你懂？我是说我们重逢。~
EXTERN BC0AURA2 FRIEND-BG1-1-4

CHAIN BC0AURA2 FRIEND-BG1-1-3
~我没变？嗯……不，我想是没变。我本来打算换个发型的，你知道？可这样留久了也习惯了，而且……哈哈，我知道。你不是那意思。~
EXTERN BC0AURA2 FRIEND-BG1-1-4

CHAIN BC0AURA2 FRIEND-BG1-1-4
~我当时好怕，你知道？怕没机会再见你。博德之门之后的事我听了好多，你成了逃犯，这一切都太……唉，总之我很高兴你没事，<CHARNAME>。~
END
++ ~我可没觉得我没事。~ + FRIEND-BG1-1-5
++ ~这一切都太突然。连我都跟不上。~ + FRIEND-BG1-1-6
++ ~你漏了被绑架、被折磨那段。~ + FRIEND-BG1-1-7
++ ~这事以后再谈。~ + FRIEND-BG1-1-0

CHAIN BC0AURA2 FRIEND-BG1-1-5
~我……我知道。那段时间你一定受了很多伤，对吧？真对不起。~
EXTERN BC0AURA2 FRIEND-BG1-1-8

CHAIN BC0AURA2 FRIEND-BG1-1-6
~我不怪你。我根本没法想象发生的一切，可……“艰难”都不足以形容，对吧？~
EXTERN BC0AURA2 FRIEND-BG1-1-8

CHAIN BC0AURA2 FRIEND-BG1-1-7
~我……我本来想着不该提。除非，你知道……你自己想谈。~
EXTERN BC0AURA2 FRIEND-BG1-1-8

CHAIN BC0AURA2 FRIEND-BG1-1-8
~撇开那个，我只想说……真对不起我没在你身边。就算我可能完全没用……我也从没想抛下你。不是在你需要的时候。~
= IF ~Global("C0AuraRomanceActive","GLOBAL",1)~ THEN ~还有你被关在笼里、孤身一人时我最后对你说的那些话……我想过好多遍。那大概是我能说出的最糟的话。~
= ~就是……感觉太不对了。知道我打听出你经历了什么，再回头看抛下你之后我在做的事……要你原谅我大概太过分了。~
END
++ ~你一直担心的是这个？你不用求原谅。我一点都不怪你。~ + FRIEND-BG1-1-9
++ ~你没“抛下”我。在博德之门那时，你也没有更多能做的了……我是说你能知道的那种。~ + FRIEND-BG1-1-9
++ ~那是艰难的时候，可你不该怪自己。你的命没那么紧地绑在我身上，也不该绑。~ + FRIEND-BG1-1-9
++ ~嗯，你现在有机会弥补了。补上你缺席的那段，我们就两清。~ + FRIEND-BG1-1-10
++ ~能不能把这事翻过去？道歉我接受，往前走吧。我不想再琢磨。~ + FRIEND-BG1-1-12

CHAIN BC0AURA2 FRIEND-BG1-1-9
~谢谢你，<CHARNAME>。我真的很高兴你是我的朋友。~
EXTERN BC0AURA2 FRIEND-BG1-1-11

CHAIN BC0AURA2 FRIEND-BG1-1-10
~别担心，<CHARNAME>。我会尽力为你做一切。~
EXTERN BC0AURA2 FRIEND-BG1-1-11

CHAIN BC0AURA2 FRIEND-BG1-1-11
~这次我要守着你，尽我所能帮你。不管事情多危险，你都能指望我，我保证。~
END
++ ~谢谢你，奥拉。~ + FRIEND-BG1-1-12
++ ~我指望你。~ + FRIEND-BG1-1-12
++ ~话够了。你有的是机会证明自己。~ + FRIEND-BG1-1-12

CHAIN BC0AURA2 FRIEND-BG1-1-12
~我不会让你失望，<CHARNAME>。~
= IF ~Global("C0AuraRomanceActive","GLOBAL",1)~ THEN ~我们不久再聊，好吗？我想念跟你相处的时间。~
EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipImportTalk","GLOBAL",4)~ THEN BC0AURA2 FRIEND-BG1-2
~好，又一场战斗结束了。真松口气……为活命拼杀从来不会变轻松，而且……哦，哎哟。真疼。~
DO ~IncrementGlobal("C0AuraBG2FriendshipImportTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraBG2FriendshipTalkTimer","GLOBAL",2700)~
END
++ ~你没事吧，奥拉？~ + FRIEND-BG1-2-1
++ ~那得赶紧治好。~ + FRIEND-BG1-2-1
++ ~别拖我后腿。~ + FRIEND-BG1-2-2
++ ~我们不能等太久。~ + FRIEND-BG1-2-0

CHAIN BC0AURA2 FRIEND-BG1-2-0
~好，给我一秒把这包扎一下……其实你先走吧。我很快跟上。~
EXIT

CHAIN BC0AURA2 FRIEND-BG1-2-1
~不，不，没事。几块绷带加一瓶药水，我就没事了。不用为我操心。~
EXTERN BC0AURA2 FRIEND-BG1-2-3

CHAIN BC0AURA2 FRIEND-BG1-2-2
~我不会，我发誓！这只要包一下，也许再抹点药膏，然后我就一点感觉都没有了。~
EXTERN BC0AURA2 FRIEND-BG1-2-3

CHAIN BC0AURA2 FRIEND-BG1-2-3
~好了，好多了。等我们停下休息时我再仔细处理……嗯？你脸上那是什么表情，<CHARNAME>？~
END
++ ~自我认识你以来，你坚强了许多。~ + FRIEND-BG1-2-4
++ ~没什么。我只是想起你以前受伤时的反应。~ + FRIEND-BG1-2-4
++ ~你弄错了。我没用什么特别的眼神看你。~ + FRIEND-BG1-2-0

CHAIN BC0AURA2 FRIEND-BG1-2-4
~哦。我以前那么娇气吗？我想你大概说得对。~
= ~我真不太记得那时我是什么样了。感觉从贝雷戈斯特起像过了一辈子。~
END
++ ~你现在也挺娇气。~ + FRIEND-BG1-2-5
++ ~那时我们最大的忧患是食人魔和狗头人。~ + FRIEND-BG1-2-6
++ ~我记得那时候你有点胆小。~ + FRIEND-BG1-2-7

CHAIN BC0AURA2 FRIEND-BG1-2-5
~嘿，我才不——好吧，行。我想这我没法争。不管怎么看，我还是比不上你。~
EXTERN BC0AURA2 FRIEND-BG1-2-8

CHAIN BC0AURA2 FRIEND-BG1-2-6
~那时我只需躲野地里的熊……哈哈，那些日子都去哪儿了？~
EXTERN BC0AURA2 FRIEND-BG1-2-8

CHAIN BC0AURA2 FRIEND-BG1-2-7
~嗯，熊啊鬼啊之类的是真吓人，行吗？我又不是现在就不怕得要死。~
EXTERN BC0AURA2 FRIEND-BG1-2-8

CHAIN BC0AURA2 FRIEND-BG1-2-8
~我想就算我变强了，有些事也许永远不会变。~
= ~总之，我的伤没那么疼了。走吧，<CHARNAME>。谢谢你跟我说话。~
EXIT

//////////////////////////////////////////////////////////////////////////////////
///////////////////////////////FRIENDSHIP/////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

CHAIN IF ~Global("C0AuraBG2FriendshipTalk","GLOBAL",2)~ THEN BC0AURA2 FRIEND-1
~<CHARNAME>，我知道你大概忙，可你要是有空……~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2FriendshipTalk","GLOBAL",1)~
= ~我只想说，能跟你一起旅行，我很感激。~
= IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~又来了。~
END
  + ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~你不用道谢。我也一样高兴我们终于重逢。~ + FRIEND-1-1
  + ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~看来你对我的故事挺熟。能亲身经历一个，真那么激动？~ + FRIEND-1-2
  ++ ~我只希望你准备好面对前头的艰难。~ + FRIEND-1-3
  ++ ~只要你尽你的本分。你若证明自己是累赘，就走人。~ + FRIEND-1-3
  ++ ~谢谢，可这话留到别的时候吧。~ + FRIEND-1-0

CHAIN BC0AURA2 FRIEND-1-0
~好。反正最要紧的我说了。那下次见。~
EXIT

CHAIN BC0AURA2 FRIEND-1-1
~也许我不必，可我就是想说。我好像从没明说过跟你旅行对我有多大意义。不只是记忆，还有我自己的长进。~
EXTERN BC0AURA2 FRIEND-1-4

CHAIN BC0AURA2 FRIEND-1-2
~我认识你也许不久，可你的故事我听过许多。虽说我不敢说这就等于我懂你……那让我希望我能懂。其实，我希望我能早点遇见你。也许在贝雷戈斯特，或我们俩都去过的什么地方。~
EXTERN BC0AURA2 FRIEND-1-4

CHAIN BC0AURA2 FRIEND-1-3
~嘿嘿，这方面我想你不用为我担心，<CHARNAME>。我虽看着不像，可我自己也在路上走了好久！通常……是躲开威胁而不是勇敢正面迎上，尤其碰上熊的时候，可还是！我袖子里的花招够多，不会让你失望。~
EXTERN BC0AURA2 FRIEND-1-4

CHAIN BC0AURA2 FRIEND-1-4
~说实话……我若一个人，大概不会选择再上路。我确实爱探索世界……可有人在身边，意义就大得多。~
= ~你怎么想，<CHARNAME>？你也一样吗？还是只有冒险本身让你兴奋？你若不在意我多嘴，我很想知道你的感受。~
END
  ++ ~我们想的一样。我也不愿身边没朋友就旅行。~ + FRIEND-1-5
  ++ ~我觉得冒险跟结识新人是一体的。两者同样重要。~ + FRIEND-1-5
  ++ ~我真正追的是旅程本身。不管独自一人，还是有人同行。~ + FRIEND-1-6
  ++ ~说实话，我容人只为有用。少些闲话倒好。~ + FRIEND-1-7

CHAIN BC0AURA2 FRIEND-1-5
~正是我想的。你这么说，我更高兴有这机会跟你同行。~
EXTERN BC0AURA2 FRIEND-1-8

CHAIN BC0AURA2 FRIEND-1-6
~你觉得会一直这样吗？某种程度上我羡慕……因为我不确定自己能想象不最终变得孤单、想家、盼着跟重要的人在一起。~
EXTERN BC0AURA2 FRIEND-1-8

CHAIN BC0AURA2 FRIEND-1-7
~我明白你的意思。那我不烦你了。~
EXIT

CHAIN BC0AURA2 FRIEND-1-8
~我是学者。我一生都盼着明天能教我点新东西。对我，冒险只是另一种课……而跟我习惯的那些课一样，有人一起经历时意义更大。~
= ~因为，我学到的东西常常并不温和。自离开兰坦，我才意识到自己多受庇护，只能相信别人与世界最好的一面。这给我带来许多痛，过去与现在，身上与心里。~
= ~我不知道若独自一人，我是否能坚强到应付。所以我感激你。而且……也有点抱歉非得依赖你。~
END
  ++ ~你不必有那种感觉。互相照应本就是同伴该做的。~ + FRIEND-1-9
  ++ ~我也依赖你，奥拉。这是双向的。~ + FRIEND-1-10
  ++ ~会变容易的。每一次挣扎最终都让你更强。相信我。~ + FRIEND-1-11
  ++ ~够了。我不是来替你背情绪包袱的，坚强点。~ + FRIEND-1-8

CHAIN BC0AURA2 FRIEND-1-9
~你是说朋友该做的。反正我就是这么看你，<CHARNAME>……你也可以同样看我。~
EXTERN BC0AURA2 FRIEND-1-10

CHAIN BC0AURA2 FRIEND-1-10
~我只希望你需要时也会来依赖我一点。就算我可能高估了自己，我仍想帮你做你独自做不到的事。~
= ~这也不是说我不期待近来的好事！我确定我们也会经历许多好的。我确定有一天，我们能笑着回看做过的事。~
EXIT

CHAIN BC0AURA2 FRIEND-1-11
~我知道。这也是我教给自己的。考虑到你经历过的，我想我该料到。~
EXTERN BC0AURA2 FRIEND-1-10

CHAIN IF ~Global("C0AuraBG2FriendshipTalk","GLOBAL",4)~ THEN BC0AURA2 FRIEND-2
~那么……对你来说，这又是一场全新的冒险，对吧？剑湾那一场混乱之后，你又有了一个要为之奋斗的目标。~ [C0BLANK]
= ~这一定是艰难的人生。我知道有些人生来就适合，绝不拿它换别的，可……总有些事你宁愿不必应付，对吧，<CHARNAME>？~
DO ~IncrementGlobal("C0AuraBG2FriendshipTalk","GLOBAL",1)~
END
  ++ ~比如折磨，比如失去我在意的人？是啊，那些能少些就好。~ + FRIEND-2-1
  ++ ~当然。谁都这样。可我们接受所得，尽量往好里办。~ + FRIEND-2-2
  ++ ~倒也不是。会有我料不到的事发生，可冒险首先仍是我的选择。~ + FRIEND-2-3
  ++ ~我现在真没时间谈这个，奥拉。~ + FRIEND-2-0

CHAIN BC0AURA2 FRIEND-2-0
~好。可你若哪天有心事要说，你知道找谁。~
EXIT

CHAIN BC0AURA2 FRIEND-2-1
~对……我都没停下来想过你过得究竟多糟。我真蠢。对不起，<CHARNAME>……~
EXTERN BC0AURA2 FRIEND-2-4

CHAIN BC0AURA2 FRIEND-2-2
~或者把它变好！那是兰坦人的信条，总在找法子。这不只适用于发明。~
EXTERN BC0AURA2 FRIEND-2-4

CHAIN BC0AURA2 FRIEND-2-3
~就是冒险者的人生，是吧……我得佩服你坚强到能与之共处。~
EXTERN BC0AURA2 FRIEND-2-4

CHAIN BC0AURA2 FRIEND-2-4
~你知道，我一直在读巴尔后裔的事。自我加入，我就想找些有用的、能帮到你的东西。~
= ~不多。我们得到的唯一预警是阿伦多的预言。那……嗯，你住过烛堡。我确定你比我更熟。~
= ~可还是……我无法想象一生总被缠进冲突会容易。“你的路上将播下混乱”……多可怕的想法。~
= ~可惜从没人写下这一切会怎样收场。你怎么想，<CHARNAME>？你觉得这一切会引向何处？~
END
  ++ ~我不确定。我只希望时间会给出答案。~ + FRIEND-2-5
  ++ ~我现在没法想那个。眼下，我眼前的问题更重要。~ + FRIEND-2-5
  ++ ~若这一切让我更强，也许我终于有机会掌控自己的命运。~ + FRIEND-2-6
  ++ ~更多的死、破坏与苦。不管我愿不愿意。~ + FRIEND-2-7
  ++ ~只要我得到更多力量，我不在乎最后怎样。~ + FRIEND-2-8

CHAIN BC0AURA2 FRIEND-2-5
~明白了。现在担心也没意义，对吧？你若注定要做什么，它终会找上你。你能做的最好就是准备。~
EXTERN BC0AURA2 FRIEND-2-9

CHAIN BC0AURA2 FRIEND-2-6
~你说这种话时，让我有点想起我几位老师。他们一生献给知识，相信一旦更懂世界，就能按自己的意愿改变它……这很激励人，可他们有时执迷得可怕。~
EXTERN BC0AURA2 FRIEND-2-8

CHAIN BC0AURA2 FRIEND-2-7
~身为杀戮化身的子嗣一定是可怕的事。就算那不是你想要的，它仍像卸不掉的沉重担子。~
EXTERN BC0AURA2 FRIEND-2-9

CHAIN BC0AURA2 FRIEND-2-8
~我只希望你别在这过程中迷失自己，<CHARNAME>。我敬重你，若不是如此我也不会在这儿，可审视自己很难……有时你需要一点帮助。~
EXTERN BC0AURA2 FRIEND-2-10

CHAIN BC0AURA2 FRIEND-2-9
~有时我想，像你这样的还有多少人想过同样的事。他们未必都像你哥哥……萨雷沃克。一定还有别人从没想要压在身上的重担。~
EXTERN BC0AURA2 FRIEND-2-10

CHAIN BC0AURA2 FRIEND-2-10
~越想我越觉得跟着你是对的选择。我一生所学所做，都是想帮人。那是我爱做的事；每当我感到有进展，我就知道自己也成长了。~
= ~所以，嗯，记住，你若碰上觉得应付不了的事，我就在这儿。我也许个子小、替你扛不动东西，可我仍有不少能给的。不管是智识上还是情感上的支持，你都有，好吗？~
END
  ++ ~我已经很依赖你了，奥拉。~ + FRIEND-2-11
  ++ ~你太好了。有时这让我为你担心。~ + FRIEND-2-12
  ++ ~我只希望你别总想着别人，把自己累坏。~ + FRIEND-2-12
  ++ ~别哄我。我没那么弱。~ + FRIEND-2-13

CHAIN BC0AURA2 FRIEND-2-11
~嗯，总有改进余地，对吧？我自己也还有路要走，而为别人做事对我就够当动力了。~
EXTERN BC0AURA2 FRIEND-2-14

CHAIN BC0AURA2 FRIEND-2-12
~因为我会把自己累垮，还是因为别人会利用我？嘿嘿，别担心。这话我也听过许多次。我还有要长进的地方，可我越来越会看人了。~
EXTERN BC0AURA2 FRIEND-2-14

CHAIN BC0AURA2 FRIEND-2-13
~我觉得连最强的人偶尔也能从帮助中得益，你知道。再说，就算你没开口，那也是我爱做的事。所以不管你喜不喜欢，我都在这儿撑你。除非你明说不要。~
EXIT

CHAIN BC0AURA2 FRIEND-2-14
~若这让你好受些，你可以当作我也是为自己这么做。因为不管喜不喜欢，我就是这种人。~
EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipTalk","GLOBAL",6)~ THEN BC0AURA2 FRIEND-3
~你知道，决定去冒险、训练自己去打的人各式各样。可我见过用我这种本事的没几个。~ [C0BLANK]
= ~奇械师的知识效力不输战士或奥术师，至少我想这么说。你怎么看，<CHARNAME>？我这些花招还不至于让你应付不来吧？~
DO ~IncrementGlobal("C0AuraBG2FriendshipTalk","GLOBAL",1)~
END
  ++ ~这让我希望诸国度里奇械师能多些。~ + FRIEND-3-1
  ++ ~说实话，这对我来说太难懂了。我只信你知道自己在做什么。~ + FRIEND-3-2
  ++ ~我更习惯靠一件普通的武器，可有你同行也够好了。~ + FRIEND-3-3
  ++ ~现在不行。你若有心想帮忙，把话留到别的时候。~ + FRIEND-3-0

CHAIN BC0AURA2 FRIEND-3-0
~*叹气* 好。~
EXIT

CHAIN BC0AURA2 FRIEND-3-1
~哦，你不会想那样的，信我。若我们兰坦人的某些知识被用到这种生活里……唉，那肯定不是让人过得更好，这点我确定。~
EXTERN BC0AURA2 FRIEND-3-4

CHAIN BC0AURA2 FRIEND-3-2
~嘿嘿，这点你不用担心。说到我的小装置和药水，你完全可以信我。多半吧。~
= ~……你可以信我不会忽然把大家炸上天。我有时是稍微太有创意了点。~
EXTERN BC0AURA2 FRIEND-3-4

CHAIN BC0AURA2 FRIEND-3-3
~嗯，只要我偶尔能让你开心一下，那也算点什么。可我保证，我也一直规律练箭！至少偶尔还能射中靶。~
EXTERN BC0AURA2 FRIEND-3-4

CHAIN BC0AURA2 FRIEND-3-4
~也许我想多了，可看见别人能做到什么、那些为这种生活训练过的人，我就会羡慕。就算我已尽力让本事适应战斗，我还是觉得自己格格不入。~
= ~知道这一带大概没别人能做我做的事，让我稍微安心，可同时，我忍不住有时希望自己魔法更强、箭术更好，或者……随便哪样更好。~
END
  ++ ~我挺意外。没想到你还有争胜心。~ + FRIEND-3-5
  ++ ~你不是提过想当法师？~ + FRIEND-3-6
  ++ ~那就继续练。任何进步总比没有好。~ + FRIEND-3-9
  ++ ~没人能样样精通。如你所说，只有你能做你擅长的事。~ + FRIEND-3-7
  ++ ~我明白你的意思。你的贡献无疑比别人能给的复杂得多——也贵得多。~ + FRIEND-3-8

CHAIN BC0AURA2 FRIEND-3-5
~我不叫它争胜，只是……嗯，也许我是。就那么一点点，可我确实希望能做得更好。~
EXTERN BC0AURA2 FRIEND-3-9

CHAIN BC0AURA2 FRIEND-3-6
~*叹气* 若那在兰坦对我算容易的选择就好了。我东学一点西学一点，可我永远没法像学奇械那样精通。~
EXTERN BC0AURA2 FRIEND-3-9

CHAIN BC0AURA2 FRIEND-3-7
~我知道，我知道。我不该老惦记自己没学会做的事。我该为自己擅长的事骄傲。~
EXTERN BC0AURA2 FRIEND-3-9

CHAIN BC0AURA2 FRIEND-3-8
~哎哟。那真伤人，<CHARNAME>。我是说，大概我没法跟你争。把本事用在本不该用的地方，就是这么回事。~
EXTERN BC0AURA2 FRIEND-3-9

CHAIN BC0AURA2 FRIEND-3-9
~只是……曾有一段时间，我做活根本没任何驱动力。我可以慢慢来，等灵感来找我，把全力投入让它成形。~
= ~如今，我整天为战斗准备装备。改良武器、把东西变成武器，只是……不是我以为自己会做的。同时，我也不能为此不快。我做出了些本来也许要想好几年才能碰到的东西。~
= ~这有点吓人。我不喜欢造武器，可到头来，我挺擅长。而所需的不过是一点动力。当然，我很高兴能帮你，可这是我从没想过自己会走的方向。~
END
  ++ ~若这能帮到你，我也从没想过自己会变成今天这样。从前我不过是图书馆里一个受监护的孩子。~ + FRIEND-3-10
  ++ ~那只能说明你会适应。这本身不是坏事。~ + FRIEND-3-11
  ++ ~有一天，我们俩都不必再这样做了。~ + FRIEND-3-12
  ++ ~也许你只是需要承认自己的这一面。~ + FRIEND-3-13
  ++ ~只要你保持有用，我倒希望你继续做你在做的。~ + FRIEND-3-14

CHAIN BC0AURA2 FRIEND-3-10
~嘿，你知道，我其实差点忘了那个。现在很难想象你坐在家里、周围都是书和蜡烛。可话说回来，有些日子我照镜子也认不出自己。~
EXTERN BC0AURA2 FRIEND-3-15

CHAIN BC0AURA2 FRIEND-3-11
~嗯，我大概说过，我不会只为我自己做。这一切都是为帮你……倒不是我要你感激得不得了，只是这样我才睡得着。~
EXTERN BC0AURA2 FRIEND-3-15

CHAIN BC0AURA2 FRIEND-3-12
~我只希望那天早些来，别太晚。可在那之前……也许我还能从中做点好事。至少我能尽量帮别人。~
EXTERN BC0AURA2 FRIEND-3-15

CHAIN BC0AURA2 FRIEND-3-13
~我……在努力。这过程很慢。我仍不喜欢用知识伤人，可我仍得相信自己在做对的事。我不会怀疑自己，也不会怀疑你。~
EXTERN BC0AURA2 FRIEND-3-15

CHAIN BC0AURA2 FRIEND-3-14
~嗯，我不抱怨，一点也不。只要我能帮上，我对自己做的事没意见。就算有，我也不该拿这些烦你。~
EXTERN BC0AURA2 FRIEND-3-15

CHAIN BC0AURA2 FRIEND-3-15
~谢谢你让我占用这么多时间，<CHARNAME>。下次聊时，我得给你看点我新做的东西，让旅途轻松些。也许带点更花哨的？我得想些点子……~
EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipTalk","GLOBAL",8)~ THEN BC0AURA2 FRIEND-4
~外头真没多少侏儒。不止安姆，剑湾也是……不管我走多远，我就是停不下来觉得自己格格不入。~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2FriendshipTalk","GLOBAL",1)~
= IF ~Race(Player1,GNOME)~ THEN ~说实话，我很高兴你跟我一样是侏儒，<CHARNAME>。决定出来旅行的我们本来就少，抱团是极大的安慰。~
END
  + ~Race(Player1,GNOME)~ + ~说实话，我有时不太确定怎么跟其他同族来往。~ + FRIEND-4-GNOME-1
  + ~Race(Player1,GNOME)~ + ~我懂你的意思。瞧不起我们的人可不少。字面上和比方上都是。~ + FRIEND-4-GNOME-2
  + ~InParty("JAN")~ + ~别忘了扬。我以为你俩处得来。~ + FRIEND-4-JAN
  + ~!Race(Player1,GNOME)~ + ~要融入一定很难。既是侏儒，又是外乡人。~ + FRIEND-4-1
  ++ ~所以你才决定在简森家安家？~ + FRIEND-4-2
  ++ ~在外走久的人多数都会有这种感觉。~ + FRIEND-4-3
  ++ ~可你不是已经走过世界了吗？甚至到过科祖库拉？对你来说还这么怪？~ + FRIEND-4-4
  ++ ~现在请别拿这个烦我。~ + FRIEND-4-0

CHAIN BC0AURA2 FRIEND-4-0
~好……抱歉。~
EXIT

CHAIN BC0AURA2 FRIEND-4-GNOME-1
~我猜那说明烛堡里没多少我们的同族。到底有没有？我不知道那会是什么样……若真如此，我们相遇我就更高兴了。~
EXTERN BC0AURA2 FRIEND-4-5

CHAIN BC0AURA2 FRIEND-4-GNOME-2
~我想我也不能怪他们。我们族人多半聚居在别人从没见过的聚落里。我遇过的人里，多数一辈子都没跟兰坦人说过话。~
EXTERN BC0AURA2 FRIEND-4-5

CHAIN BC0AURA2 FRIEND-4-JAN
~我当然喜欢扬，可我们知道他有时会陷进自己脑子里。别告诉他我说的，可连我有时也得用“微笑点头”那套才能熬过他的怪话。~
EXTERN BC0AURA2 FRIEND-4-5

CHAIN BC0AURA2 FRIEND-4-1
~我想我也不能怪他们。我族人多半聚居在别人从没见过的聚落里。我遇过的人里，多数一辈子都没跟兰坦人说过话。~
EXTERN BC0AURA2 FRIEND-4-5

CHAIN BC0AURA2 FRIEND-4-2
~当初安姆多数人对我不算友善，简森一家却乐意收留我。他们待我很好，虽说我仍希望偶尔能吃点不以芜菁为主的菜谱。~
EXTERN BC0AURA2 FRIEND-4-5

CHAIN BC0AURA2 FRIEND-4-3
~确实。有些人习惯了，像我祖母，天生就是冒险者。然后是我这种……总得有能依靠的人在身边。~
EXTERN BC0AURA2 FRIEND-4-5

CHAIN BC0AURA2 FRIEND-4-4
~本不该这样。可我在一处待太久，就很难再走向下一处。科祖库拉就是最大的例子……若非情况逼我离开，我会在那儿住更久。~
EXTERN BC0AURA2 FRIEND-4-5

CHAIN BC0AURA2 FRIEND-4-5
~可我不该抱怨。我离开兰坦时向自己保证，要把这当作成长、靠自己双脚走路的机会，而我还有路要走。我只是忍不住想念身边都是像我、懂我的人的日子。~
= ~不过，比我多年前第一次下船时好多了。那时我身边还有一群兰坦同胞……可我立刻强烈感到自己格格不入。~
= ~不只因为我意识到自己这族人在哪儿都不容易被接纳，连人们说话的腔调、穿的颜色……想想我当时多显眼，衣服古怪、粉头发。那让我只想爬回船舱躲起来。~
= ~可那是很久以前了。我想我该为自己此后的进步开心一点。不过我想你若在那时看见我，也许会笑我。~
END
  ++ ~不，我确定我不会。~ + FRIEND-4-6
  ++ ~我想我若离家走得更远，也会一样。~ + FRIEND-4-7
  ++ ~别太沉在过去了。我们眼下没那时间。~ + FRIEND-4-0

CHAIN BC0AURA2 FRIEND-4-6
~不，没关系。其实那时若有人回看那些警惕目光时笑出来，也许能让我的心轻一点。~
EXTERN BC0AURA2 FRIEND-4-8

CHAIN BC0AURA2 FRIEND-4-7
~嗯，我确定你会比我应付得好。你比我勇敢。再说，就算不是，我也能陪着你！~
EXTERN BC0AURA2 FRIEND-4-8

CHAIN BC0AURA2 FRIEND-4-8
~知道不管我多不同，身边的人未必就跟我认识的人想得那么不一样。我们都活着、呼吸着、梦想着……只需跟别人找到一点共通，我就能遇见新人，学到我不知道的事。~
= ~毕竟，我就是这样得到参与你这趟史诗冒险的机会，对吧？~
EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipTalk","GLOBAL",10)~ THEN BC0AURA2 FRIEND-5
~嘿，<CHARNAME>，我在想，只是假设……你会不会考虑去兰坦，在学院进修？也许一季，或更久？~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2FriendshipTalk","GLOBAL",1)~
END
  ++ ~这倒是个主意。若我的人生哪天有机会安静下来，我愿意。~ + FRIEND-5-1
  ++ ~我不确定。我觉得那会是相当大的工程。~ + FRIEND-5-2
  ++ ~你怎么会想到我会感兴趣？~ + FRIEND-5-3
  ++ ~也许有一天，可我们等时机对了再谈。~ + FRIEND-5-0

CHAIN BC0AURA2 FRIEND-5-0
~嗯……好。不过你若不排除这选项，我想知道。我们甚至也许赶得上一年一度的开拓者节！~
EXIT

CHAIN BC0AURA2 FRIEND-5-1
~我想你在那儿会很愉快。那儿大概没这么多刺激的冒险，可看的东西仍足够多。~
EXTERN BC0AURA2 FRIEND-5-4

CHAIN BC0AURA2 FRIEND-5-2
~哦，没那么糟。也许是我把它说得太复杂，可那是勤奋第一、天赋第二。而这两样你都很有。~
EXTERN BC0AURA2 FRIEND-5-4

CHAIN BC0AURA2 FRIEND-5-3
~嗯……你若没兴趣，那我也没办法。我只是起了这念头……~
EXTERN BC0AURA2 FRIEND-5-4

CHAIN BC0AURA2 FRIEND-5-4
~这念头是不久前冒出来的。我说过自己到陌生地方的感受之后，就想，若有机会反过来带你逛逛我故乡，会挺有意思。~
= ~兰坦对故乡之外多数人仍很陌生。我希望有一天这能改变，可那得从对的人开始。~
= ~再说，我就是想借机自称你的学长。你若成了桑巴尔学院的学生，我就有资格了，对吧？~
END
  ++ ~你这厚脸皮的丫头。~ + FRIEND-5-5
  + ~!Dead("Imoen2")
     GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)
     Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~我觉得那不适合我。爱蒙倒可能扑上去。~ + FRIEND-5-IMOEN-1
  + ~!Dead("Imoen2")
     !GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)
     Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~我觉得那不适合我。爱蒙倒可能扑上去。~ + FRIEND-5-IMOEN-2
  + ~!Dead("Imoen2")
     GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)
     !Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~我觉得那不适合我。爱蒙倒可能扑上去。~ + FRIEND-5-IMOEN-3
  + ~!Dead("Imoen2")
     !GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)
     !Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~我觉得那不适合我。爱蒙倒可能扑上去。~ + FRIEND-5-IMOEN-4
  ++ ~让我想想。想好我告诉你。~ + FRIEND-5-6
  ++ ~为什么不。我倒不介意有机会试试新的。~ + FRIEND-5-7
  ++ ~我这辈子不想再听什么课了。烛堡那些够了。~ + FRIEND-5-8
  ++ ~我没兴趣。这个话题就到这儿。~ + FRIEND-5-8

CHAIN BC0AURA2 FRIEND-5-5
~嘿嘿。我是逗你，可我也觉得若它成了我们又一共同经历，会让我们更亲近。你不觉得吗？~
EXTERN BC0AURA2 FRIEND-5-6

CHAIN BC0AURA2 FRIEND-5-IMOEN-1
~哦，我怎么可能忘了爱蒙。我确定她会的，对。*叹气* 我们真得马上把她救回来……~
EXTERN BC0AURA2 FRIEND-5-6

CHAIN BC0AURA2 FRIEND-5-IMOEN-2
~哦，我怎么可能忘了爱蒙。我确定她会的，对。有机会我得问问她。~
EXTERN BC0AURA2 FRIEND-5-6

CHAIN BC0AURA2 FRIEND-5-IMOEN-3
~你这么想？那我等不及见她了。我只希望她现在不管在哪儿都还好……~
EXTERN BC0AURA2 FRIEND-5-6

CHAIN BC0AURA2 FRIEND-5-IMOEN-4
~你这么想？有机会我得问问她。不知怎么，我觉得她会很合得来。~
EXTERN BC0AURA2 FRIEND-5-6

CHAIN BC0AURA2 FRIEND-5-6
~我知道现在就打这种算盘太早。我知道我也许在让自己失望。可你若答应，会对我意义重大，理由不止一个。~
EXTERN BC0AURA2 FRIEND-5-9

CHAIN BC0AURA2 FRIEND-5-7
~嘿嘿，真的？那……也许你现在可以叫一声学长，至少一次，好习惯习惯？*轻笑* 我开玩笑。~
EXTERN BC0AURA2 FRIEND-5-6

CHAIN BC0AURA2 FRIEND-5-8
~啊……嗯，你哪天改主意……那对我真会意义重大。你知道，还有的是时间想。~
EXTERN BC0AURA2 FRIEND-5-9

CHAIN BC0AURA2 FRIEND-5-9
~再说，你若答应，我就又多一件可期待的事。那只会给我更多理由更努力。~
EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipTalk","GLOBAL",12)~ THEN BC0AURA2 FRIEND-6
~看看我手上的茧。就算我每晚都打理，皮肤还是变成这样了。*叹气*~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2FriendshipTalk","GLOBAL",1)~
END
  ++ ~我还惊讶你竟想着让它们保持光滑。~ + FRIEND-6-1
  ++ ~你太拼了。谁都需要些时间休息。~ + FRIEND-6-2
  ++ ~你若把时间浪费在打理手上，本可以用来确保我们活过明天。~ + FRIEND-6-3
  ++ ~现在请别拿这个烦我。~ + FRIEND-6-0

CHAIN BC0AURA2 FRIEND-6-0
~是我多嘴，抱歉。反正也不重要……~
EXIT

CHAIN BC0AURA2 FRIEND-6-1
~我知道我不该。有更重要的事要操心。~
EXTERN BC0AURA2 FRIEND-6-4

CHAIN BC0AURA2 FRIEND-6-2
~也许我确实把自己累过头了。你连我眼下这影子都看得见。可我没法停。我做的事可能决定我们的生死。~
EXTERN BC0AURA2 FRIEND-6-4

CHAIN BC0AURA2 FRIEND-6-3
~我知道，对不起。我大概不会再在意这个了。反正我也没多成功。~
EXTERN BC0AURA2 FRIEND-6-4

CHAIN BC0AURA2 FRIEND-6-4
~这只是我养成的习惯。我妹妹露娜以前替我打理手。我小时候常因为拼东西弄伤手指，而我们大姐朱诺加入奥库卢斯、忙起来之后，总是露娜照料我。~
= ~皮肤因为劳作粗糙起茧我倒不那么在意，只是……我真想念她们。~
END
  ++ ~你愿意跟我讲讲她们吗？也许说说会好些。~ + FRIEND-6-5
  ++ ~看来你很敬仰你姐姐们。~ + FRIEND-6-5
  ++ ~那挺好，可我现在真没心思谈。~ + FRIEND-6-0

CHAIN BC0AURA2 FRIEND-6-5
~我姐姐们……我关于她们的记忆很多。我父母都是兰坦各公会里出色的研究者。母亲生了小弟妹后就半退休了，可很长一段时间只有我，由朱诺和露娜照顾。~
== BC0AURA2 IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ ~朱诺勇敢、成熟、意志坚强。她若有责任，就会完成，不管要多久、多难。她的箭术在兰坦无人能比。你还记得科温队长吗，<CHARNAME>？朱诺也许比她还强。~
== BC0AURA2 IF ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ ~朱诺勇敢、成熟、意志坚强。她若有责任，就会完成，不管要多久、多难。她的箭术在兰坦无人能比。~
== BC0AURA2 ~至于露娜，嗯……她美丽又骄傲。起初朱诺没看着时，她会欺负我。朱诺去受训时，我怕会更糟……可相反，她变了，尽力去像她。她会叮嘱我照顾自己、注意自己的样子和感受，并为此骄傲。~
== BC0AURA2 ~你若在我身上看见什么好的，<CHARNAME>，不管是知识、本事，还是我那点勇气……许多都该归功于她们。朱诺是我认识最强的人之一，而露娜……就算她常对我严厉，我也从没怀疑过她爱我。~
== BC0AURA2 ~这有时让我……有点愧疚。我知道家里指望我当格利默夏恩一族的下一任领袖。朱诺是服务全国的奥库卢斯队长。露娜如今是贡德祭司。可我忍不住觉得自己拿了本该属于她们的东西。~
END
  ++ ~我不这么想。听来她们是在尽自己的本分，把你为那角色准备好。~ + FRIEND-6-6
  ++ ~听来你家每个人都有沉重责任。每个人都在为故乡尽本分。~ + FRIEND-6-6
  ++ ~你想接那位置吗？听来你只是出于义务才做。~ + FRIEND-6-7

CHAIN BC0AURA2 FRIEND-6-6
~我知道。我倒不觉得有人怨恨，或觉得我不配。我也想为家族做点什么。~
EXTERN BC0AURA2 FRIEND-6-7

CHAIN BC0AURA2 FRIEND-6-7
~只是……我从没真正想过当族长究竟意味着什么。~
= ~我只想着，若我够努力、达到所有人的期望，我就准备好了。然后……我决定去见世界、提升自己。可我有时怀疑，那是不是只是我自私。~
END
  ++ ~看来你已把大半生献给满足他们。选择你自己想要的人生，就那么错吗？~ + FRIEND-6-8
  ++ ~我觉得你若现在做的就是你想做的——真正想做的——那你家人若真在意你，就会接受。~ + FRIEND-6-8
  ++ ~也许你确实自私。我们现在做的很危险。我无法想象你父母会乐意看你每天拿命冒险。~ + FRIEND-6-9

CHAIN BC0AURA2 FRIEND-6-8
~我想那倒是真的。该做什么仍得我自己决定。而且说到底，若我在提升自己，那就意味着我回家后能为家族——不，为整个兰坦做更多。~
EXTERN BC0AURA2 FRIEND-6-10

CHAIN BC0AURA2 FRIEND-6-9
~不，我确定他们肯定不乐意。我倒有点奇怪他们还没派朱诺来揪着我耳朵把我拖回家。也许……他们信我自己决定该做什么。~
EXTERN BC0AURA2 FRIEND-6-10

CHAIN BC0AURA2 FRIEND-6-10
~*叹气* 你知道，我想我现在正落回不止一个坏习惯。缺乏自信、不断自我怀疑、觉得自己不够好。我老师以前总把这话往我脑子里敲，说我得克服。~
= ~谢谢你听我说，<CHARNAME>。真帮我把脑子清空了些。我也不再想这些傻茧子了，那也算额外收获。~
EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipTalk","GLOBAL",14)~ THEN BC0AURA2 FRIEND-7
~<CHARNAME>，你听过我祖母的事吗？密涅瓦·格利默夏恩？~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2FriendshipTalk","GLOBAL",1)~
END
  ++ ~我好像记得关于她的一个故事。北地的事，在冰风谷。~ + FRIEND-7-1
  ++ ~我只知道你说过她是冒险者。~ + FRIEND-7-2
  ++ ~没有，我想我没听过这名字。她是什么样的人？~ + FRIEND-7-3
  ++ ~现在没时间聊。也许以后。~ + FRIEND-7-0

CHAIN BC0AURA2 FRIEND-7-0
~哦。好……那改天。~
EXIT

CHAIN BC0AURA2 FRIEND-7-1
~哈哈。那不只是关于她——那书简直就是她写的。~
EXTERN BC0AURA2 FRIEND-7-4

CHAIN BC0AURA2 FRIEND-7-2
~是，虽说她不只是冒险者。她可以说是*那个*冒险者。她把冒险当成一生，为之着迷。着迷到从兰坦一路走到北地去打魔鬼，然后写了本书全讲这事。~
EXTERN BC0AURA2 FRIEND-7-4

CHAIN BC0AURA2 FRIEND-7-3
~她曾是——现在也是？——冒险者。大概是最专注的冒险者，痴迷于旅行与探索，以至于离开兰坦远赴冰封北地，在那儿从魔鬼手里救了十镇，还写了整本书讲她的经历。~
EXTERN BC0AURA2 FRIEND-7-4

CHAIN BC0AURA2 FRIEND-7-4
~它之所以没那么出名，只是因为它至今至少以十几个书名出版过，因为她从没费心给它起个正经名字。~
= ~我真希望我手边还有一本……我祖母文笔不算好，可她写得那么有热情，你立刻就能相信她当时就在现场。更别说，那是她向世界分享自己任何旅程的唯一记录。~
= ~那趟冒险对她一定那么重要，才让她想把经历分享给世界。我父亲第一次读到后，就开始收集他能找到的每个版本。他从没说过，可我知道他很想她。~
= ~说实话，我起初不太理解。可跟你旅行之后，<CHARNAME>，我想我开始明白她为什么这么爱这种生活。而且我想，像我们一样，跟她同行的人也是那份感受的一部分。~
END
  ++ ~那你打算为我们冒险写自己的小说吗？会是合适的续篇。~ + FRIEND-7-5
  ++ ~听来她参与的旅程能跟我们这趟相比。~ + FRIEND-7-6
  ++ ~那挺好，可我们真该留到别的时候。~ + FRIEND-7-0
  
CHAIN BC0AURA2 FRIEND-7-5
~嘿，你怎么猜到的？我真那么好猜吗？~
EXTERN BC0AURA2 FRIEND-7-6

CHAIN BC0AURA2 FRIEND-7-6
~我不确定我冒险的理由像不像我祖母的，可不管是因为想试着追随她的足迹，还是只因被她的故事激励，我自己一直在记些笔记。它也许成不了传奇故事，可我确定等这一切结束，它会是不错的纪念。~
= ~不过我想我没胆子像她那样全写成故事。也许我就自己留着……哦，可你若想看也欢迎，等它写完。~
END
  + ~PartyHasItem("c0abook4")~ + ~我以为你已经出版过一系列儿童小说。~ + FRIEND-7-7
  ++ ~我倒不介意把我们冒险的故事分享给世界。~ + FRIEND-7-8
  ++ ~为什么不分享？甚至有机会你祖母能读到，若她还在某处的话。~ + FRIEND-7-8
  ++ ~当然，我想看看你怎么记录我们的冒险。~ + FRIEND-7-9
  ++ ~那大概最好。这故事里有许多我更不愿别人知道的。~ + FRIEND-7-10

CHAIN BC0AURA2 FRIEND-7-7
~那……呃，嗯……我正式否认知道“奥瑞莉亚·怀特”的真实身份。再说……那些傻绘本是好久以前了。那是我爸爸的主意。~
EXTERN BC0AURA2 FRIEND-7-11

CHAIN BC0AURA2 FRIEND-7-8
~你觉得我该？我得想想……在很远、很远的将来，我是说。等我对事情会怎样收场哪怕有点头绪。~
EXTERN BC0AURA2 FRIEND-7-11

CHAIN BC0AURA2 FRIEND-7-9
~我得记着给你看。也就是，等这趟旅程看着快要接近无论什么样的结局时。~
EXTERN BC0AURA2 FRIEND-7-11

CHAIN BC0AURA2 FRIEND-7-10
~总有些故事最好不讲，是吧？有时我也在想我祖母到底故意漏掉了什么……~
EXTERN BC0AURA2 FRIEND-7-11

CHAIN BC0AURA2 FRIEND-7-11
~旅行时我得替你留意那本书，<CHARNAME>。我知道你会喜欢……信不信由你，有时我觉得那故事的主角很像你。~
= ~你知道，现在想想，也许我们相遇终究不是偶然。这也许只是一段仍在继续的故事的下一章。谁知道呢？~
EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipTalk","GLOBAL",16)~ THEN BC0AURA2 FRIEND-8
~碳粉、水银、硫磺……哦，硫磺快用完了。得空我得处理一下……~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2FriendshipTalk","GLOBAL",1)~
= ~……<CHARNAME>，下次有机会补给时，能提醒我弄点黄铁矿吗？~
END
  ++ ~当然。~ + FRIEND-8-1
  ++ ~我若碰巧记得，大概吧。~ + FRIEND-8-2
  ++ ~好，可别现在烦我。~ + FRIEND-8-0

CHAIN BC0AURA2 FRIEND-8-0
~好，好。那我把需要的东西记在日志后头。脾气真坏。~
EXIT

CHAIN BC0AURA2 FRIEND-8-1
~谢谢。哦，也许我该记着再做些翡翠油……那会派上用场。~
EXTERN BC0AURA2 FRIEND-8-2

CHAIN BC0AURA2 FRIEND-8-2
~你知道，身为奇械师，在路上弄齐所需的东西真难。常常我得用能弄到手的东西自己合成原料。~
= ~我还以为在学院读书难。可我想我那时把能随时取用的资源当成理所当然了。如今做的每一步，我真得拿知识来验。~
END
  ++ ~听来确实不容易。~ + FRIEND-8-3
  ++ ~我只希望你知道自己在做什么。~ + FRIEND-8-4
  + ~Class(Player1,MAGE_ALL)~ + ~也许不一样，可作为法师，我能懂一点。学魔法跟实际运用是两回事。~ + FRIEND-8-MAGE
  ++ ~你现在能不能别拿这个烦我？反正我也帮不上多少。~ + FRIEND-8-0

CHAIN BC0AURA2 FRIEND-8-3
~我不介意在有限工具下应对挑战，一点也不。对任何研究科学领域的人，受挑战、保持头脑活跃都重要。否则我们进展会慢得像蜗牛。~
= ~说实话，直到开始这趟旅程，我才真觉得自己在做*真正*的新东西。以前做的多半只是复用过去学者与奇械师给我的知识……我当然照他们教的做得不错，可从没觉得有多大成就。~
= ~可现在……嗯，你见过我那些突破。连我的太阳射手都远比我曾想象的高级。我老师会骄傲的。~
END
  ++ ~相当了不起。你似乎每天都给我们的敌人一样新东西去怕。~ + FRIEND-8-5
  ++ ~凭你的天赋与专注，我能想象你前头还有更多要成就的。~ + FRIEND-8-6
  ++ ~只要你继续在战场上用本事让我佩服，我就没什么可抱怨的。~ + FRIEND-8-7

CHAIN BC0AURA2 FRIEND-8-4
~我当然知道！嗯，至少我*知道*自己在做以前做过的事。可我仍得偶尔试新东西。~
EXTERN BC0AURA2 FRIEND-8-3

CHAIN BC0AURA2 FRIEND-8-MAGE
~对，正是！虽说我们兰坦人把发明与魔法划了界，可两者共通之处仍那么多。也正因如此，两者那么容易结合。~
EXTERN BC0AURA2 FRIEND-8-3

CHAIN BC0AURA2 FRIEND-8-5
~嘿嘿。我只希望有一天他们怕到干脆别来惹我们。可在之前……我只好继续努力。~
EXTERN BC0AURA2 FRIEND-8-8

CHAIN BC0AURA2 FRIEND-8-6
~这不用说。不过天赋其实无关。每个兰坦人都渴望学得更多、成就更多，一直向前。~
EXTERN BC0AURA2 FRIEND-8-8

CHAIN BC0AURA2 FRIEND-8-7
~你知道我多半是为你在做这些，对吧？若能避免，我宁愿一件这些工具都不用在战斗里……不是怪你，<CHARNAME>。我选这个是有原因的。~
EXTERN BC0AURA2 FRIEND-8-8

CHAIN BC0AURA2 FRIEND-8-8
~*叹气* 不过，我还是想看到有一天我能把心思放在别的追求上……能造福众人的。帮旅行、通信、生活的发明……那不会更好吗？~
END
  ++ ~你前头还有大把时间。你还年轻。~ + FRIEND-8-9
  ++ ~对不起。你本可为未来工作，却在这儿帮我。~ + FRIEND-8-10
  ++ ~有这样的目标很好，可也许你该慢慢来，想想那对诸国度意味着什么。~ + FRIEND-8-11
  ++ ~那是你自己的问题，不是我的。~ + FRIEND-8-12

CHAIN BC0AURA2 FRIEND-8-9
~我知道，我知道。明明前头还有好多年，却想得像时间不够，真傻。不像……兰坦人里那些人类。~
EXTERN BC0AURA2 FRIEND-8-13

CHAIN BC0AURA2 FRIEND-8-10
~不，请别那么说，<CHARNAME>。不管我决定做什么，都会是帮需要的人，是一个人还是一千人都无所谓。只要我能帮上，我就不会觉得本事白费。~
EXTERN BC0AURA2 FRIEND-8-13

CHAIN BC0AURA2 FRIEND-8-11
~这也是我不得不考虑的。我多希望这世上人人都一心帮诸国度变好……可我知道不是。~
EXTERN BC0AURA2 FRIEND-8-13

CHAIN BC0AURA2 FRIEND-8-12
~对……抱歉。这不是你该操心的事。我不会再跟你抱怨了。~
EXIT

CHAIN BC0AURA2 FRIEND-8-13
~我想我从没跟你说过，可……我在学院时，给我印象最深的老师是个人类。兰坦人里的侏儒与人类一直共存，可因为寿命差太多，我们仍各自形成了接近与追求知识的方式。~
= ~多数人类学者与奇械师知道自己也许活不到看见工作长远结果的那天，不像我们侏儒。有人以嫉妒、怨恨看待这差别……可许多人只是选择尽力而为，凭信念相信他们所做在自己身后仍有意义。~
= ~我老师以他们对生活的态度激励了我。他们本不是兰坦人……我后来得知他们生在一个不同的国度，在那儿他们的知识、天赋、甚至身份都不被同胞理解。尽管他们靠苦学最终升到桑巴尔学院受敬重的教授之位，他们只有很短时间用本事改变世界。他们……在我毕业后不久过世了。~
= ~真算起来，我认识他们并不算久。可我仍记得跟他们交谈，像昨天一样。那段时间，我学了许多物质科学与自然元素的原则，那是我如今所做之事的核心。他们曾告诉我，若他们放弃世界、再找不到继续改进它的理由，那他们已成就的一切都会白费。他们知道自己的未来比我的短。于是他们把梦想、自己的未来，交给我和像我一样得到他们知识的人。~
= ~自那以后，我一直尽力不让他们失望。有一天，我会努力让这世界对所有人都更好。在那之前，我会借这蒙福的时间继续学习、成长，直到准备好决定怎么做到。~
END
  ++ ~你有一位出色的导师。~ + FRIEND-8-14
  ++ ~我希望你在这儿学到的能帮你做到那点。~ + FRIEND-8-15
  ++ ~你追的是个艰难目标。只为自己活也许更轻松。~ + FRIEND-8-16

CHAIN BC0AURA2 FRIEND-8-14
~我只是想，不管他们的灵魂安息在哪儿，此刻是否在看着我。我也许有点被惯坏了，可我还想再听他们夸我一次。~
EXTERN BC0AURA2 FRIEND-8-17

CHAIN BC0AURA2 FRIEND-8-15
~摆在面前的挑战总有可学之处。除了知识，我还能学勇敢、学责任……还有在必须做艰难决定的时候。~
EXTERN BC0AURA2 FRIEND-8-17

CHAIN BC0AURA2 FRIEND-8-16
~*叹气* 我也希望能。可想要那种生活的不止我一个。我更愿看到一个更多人偶尔有权做自私选择的世界。~
EXTERN BC0AURA2 FRIEND-8-17

CHAIN BC0AURA2 FRIEND-8-17
~谢谢你抽时间，<CHARNAME>。偶尔想想旧日的课挺好……因为我可承担不起忘记它们。~
EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipTalk","GLOBAL",18)~ THEN BC0AURA2 FRIEND-9
~走得越远，我越想……若我，或者……嗯，任何兰坦人，能遇见并认识更多像你这样的人，也许兰坦会比现在大不相同。~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2FriendshipTalk","GLOBAL",1)~
END
  ++ ~我想反过来也一样。~ + FRIEND-9-1
  ++ ~也许你的族人需要更像你，对外面世界带点惊奇。~ + FRIEND-9-2
  ++ ~你为什么觉得会那么大不相同？~ + FRIEND-9-3
  ++ ~也许，可没有保证会更好。~ + FRIEND-9-4
  ++ ~现在不是谈这个的时候，奥拉。~ + FRIEND-9-0

CHAIN BC0AURA2 FRIEND-9-0
~*叹气* 真会坏气氛……抱歉我多嘴了。~
EXIT

CHAIN BC0AURA2 FRIEND-9-1
~嘿嘿，你在捧我，<CHARNAME>。我们都知道我的影响力远不如你。所以领队是你，不是我。~
EXTERN BC0AURA2 FRIEND-9-5

CHAIN BC0AURA2 FRIEND-9-2
~知道如今这些之后，我倾向于同意……嗯，我不觉得兰坦人该追求变得*太*像我……毕竟我得保留自己独特的魅力，嘿嘿。~
EXTERN BC0AURA2 FRIEND-9-5

CHAIN BC0AURA2 FRIEND-9-3
~嗯，看看我现在，<CHARNAME>。你不觉得我变了吗？更强、更自信？也许更可爱？呃，最后那条我大概说得太早了。~
EXTERN BC0AURA2 FRIEND-9-5

CHAIN BC0AURA2 FRIEND-9-4
~也许没变，可跟你走得越久，我越觉得该稍微改改自己的思路。也许我们得为有意义的改变冒些险。~
EXTERN BC0AURA2 FRIEND-9-5

CHAIN BC0AURA2 FRIEND-9-5
~我又在想故乡了。我国在世界上所处的位置，跟我们与外头之间一直有条清楚的线……而我们多数兰坦人世世代代都觉得这样挺好。可现在……~
= ~看看我们一起做的好事，<CHARNAME>。这么短时间，只因为稍微爱冒险，我就做到了这么多。现在想象更多像我这样的年轻兰坦人走同一条路。那时我们能成什么样？~
END
  ++ ~我猜那会意味着很大进步。~ + FRIEND-9-6
  ++ ~没有保证别人能走得像你那么远。~ + FRIEND-9-7
  ++ ~你不觉得你想得太远了吗？你连家都还没回。~ + FRIEND-9-8

CHAIN BC0AURA2 FRIEND-9-6
~我希望会。我并不完全有信心，还没有……可我觉得我族人仍该趁时机还对，多努力些。~
EXTERN BC0AURA2 FRIEND-9-9

CHAIN BC0AURA2 FRIEND-9-7
~不，我想你说得有理。毕竟我运气好。我有个好领队。~
EXTERN BC0AURA2 FRIEND-9-9

CHAIN BC0AURA2 FRIEND-9-8
~说得好。我还没向自己证明以我现在的样子能为故乡成就什么。也许我还有路要走。~
EXTERN BC0AURA2 FRIEND-9-9

CHAIN BC0AURA2 FRIEND-9-9
~我只是不想看我们族人余生都躲着。照现在这样，我们全族可能被无痕海吞掉，我怀疑外头都没人知道。~
= ~诸国度难以预料，谁知道下一次动荡之年……或更糟的会发生什么。若世界再有大变，我希望我族人准备好出力……也被接纳。~
= ~你怎么想，<CHARNAME>？我是不是太理想主义？你若想说我还得再长大些，我准备好听。若是你说的，我会信。~
END
  ++ ~我觉得那是值得追求的好目标。现在也许不是时候，可你仍能试着改变。~ + FRIEND-9-10
  ++ ~你有点太乐观。若再来一次动荡之年，诸国度多半又会互相敌对。~ + FRIEND-9-11
  ++ ~这事你问错人了。我一直在乎的只是保住自己这条命。~ + FRIEND-9-12

CHAIN BC0AURA2 FRIEND-9-10
~嗯，我知道以我一人、在我有的时间里，能做的、该做的也许有限。可我只想至少种下种子，激励几个像我这样的人。~
EXTERN BC0AURA2 FRIEND-9-13

CHAIN BC0AURA2 FRIEND-9-11
~*叹气* 我希望我能不同意你，可世界就是这么残酷。我当然吸取了教训，别太轻率送出自己做的东西……在科祖库拉那事之后，我不想再来一次。~
EXTERN BC0AURA2 FRIEND-9-13

CHAIN BC0AURA2 FRIEND-9-12
~我其实觉得你现在的样子就是闪亮的典范，<CHARNAME>。你的人生也许是挣扎，可你带着可信的朋友走到了这里。这不正说明成功该怎么达成吗？~
EXTERN BC0AURA2 FRIEND-9-13

CHAIN BC0AURA2 FRIEND-9-13
~别太把我说的都当真。我有时爱幻想“要是怎样”。我只是又想听你的建议，因为它从没让我失望。~
EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipTalk","GLOBAL",20)~ THEN BC0AURA2 FRIEND-10
~嘿嘿，<CHARNAME>，过来！我有好东西给你看！~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2FriendshipTalk","GLOBAL",1)~
END
  ++ ~是什么？你看着真兴奋。~ + FRIEND-10-1
  ++ ~我看你在写画。给我看看。~ + FRIEND-10-1
  ++ ~现在不行，奥拉。~ + FRIEND-10-0

CHAIN BC0AURA2 FRIEND-10-0
~唉……好，那以后。~
EXIT

CHAIN BC0AURA2 FRIEND-10-1
~我弄了一阵了。我是说全部。这是一册画，画的是我们经历过的事。~
= ~这些是我用卡拉图风格画的墨绘。看着都眼熟吧？我画画的本事不如造东西，可至少记性好。~
END
  ++ ~等等，我不记得我们打过一对泰拉斯克。~ + FRIEND-10-2
  ++ ~你确定？其中有些看着有点美化，这还是往轻里说。~ + FRIEND-10-2
  + ~Dead("FIRKRA02") Global("C0AuraFoughtFirkraag","GLOBAL",1)~ + ~这是我们对付菲克拉格。那儿可真够热的。~ + FRIEND-10-FIRK
  + ~Dead("HLDEMI") Global("C0AuraFoughtKangaxx","GLOBAL",1)~ + ~我看你画了我们跟坎加克斯那一战。那场真难。~ + FRIEND-10-KANG
  + ~Dead("Demogor2") Global("C0AuraFoughtDemogorgon","GLOBAL",1)~ + ~一幅我们放逐狄摩高根的画。能活下来真是运气。~ + FRIEND-10-DEMO
  + ~Dead("SHADRA01") Global("C0AuraFoughtThax","GLOBAL",1)~ + ~那画挺阴暗。是我们击败影龙那次？~ + FRIEND-10-THAX
  + ~Global("C0AuraBG2Quest2FireBattle","GLOBAL",10)~ + ~看来你画了我们潜入火位面那趟。你连那个焰法师卡里希都画了。~ + FRIEND-10-FIRE
  + ~Global("C0AuraBG2Quest2IceEncounter","GLOBAL",7)~ + ~我看那次跟鬼婆、雪女和奥格拉什的寒遇给你留了印象。~ + FRIEND-10-ICE
  + ~Global("C0AuraTOTDGCoin","GLOBAL",2)~ + ~你连深园都画了……那真勾起回忆。~ + FRIEND-10-TOTDG

CHAIN BC0AURA2 FRIEND-10-2
~嗯……其中有些也许只是我凭想象画的。我有时会幻想那些从未发生的冒险。有时把我当稍微太爱想象就行。~
EXTERN BC0AURA2 FRIEND-10-3

CHAIN BC0AURA2 FRIEND-10-FIRK
~我祖母当年放倒过一条冰龙，如今我们放倒了一条火龙。要说，倒挺相配，对吧？~
EXTERN BC0AURA2 FRIEND-10-3

CHAIN BC0AURA2 FRIEND-10-KANG
~对。我很高兴我没落得被永久囚禁……你也没有。可别担心，就算真轮到你，我也一定找张自由卷轴把你救出来，不管怎样！~
EXTERN BC0AURA2 FRIEND-10-3

CHAIN BC0AURA2 FRIEND-10-DEMO
~有个故事就算我们讲，也没人会信。可它真发生过，我们可以为它骄傲，对吧？当然，除了他还在深渊里自由作恶那段。~
EXTERN BC0AURA2 FRIEND-10-3

CHAIN BC0AURA2 FRIEND-10-THAX
~我通常不画这类画，可这回我真觉得有灵感。而且我们确实做了件事，把森林从那腐化它的邪恶里解救出来，这也挺好。~
EXTERN BC0AURA2 FRIEND-10-3

CHAIN BC0AURA2 FRIEND-10-FIRE
~嘿嘿，我一直好奇我祖母的同伴是什么样。如今我知道了，就非得画点什么纪念一下。也许我去银月城时给她看。~
EXTERN BC0AURA2 FRIEND-10-3

CHAIN BC0AURA2 FRIEND-10-ICE
~夜里想起那事我还会打颤。虽说我们同时交了个可爱的朋友……也许有一天，我们去看她有没有把那座花园重建起来。~
EXTERN BC0AURA2 FRIEND-10-3

CHAIN BC0AURA2 FRIEND-10-TOTDG
~那趟冒险太鲜活了……我还得说服自己我们不是在做梦。若我们再看不到那地方，至少我还有东西可纪念它。~
EXTERN BC0AURA2 FRIEND-10-3

CHAIN BC0AURA2 FRIEND-10-3
~别忘了，前头还有更多。我只想让你看看我们已有多少可回望的。这趟旅程如此充实，而且离结束还远着呢，对吧？~
= ~为我们俩光明的未来干杯，<CHARNAME>，我亲爱的朋友。我现在说这种话都不觉得难为情了。我知道可以把一切托付给你，从我的想法到我的命。~
END
  ++ ~我也一样，奥拉。~ + FRIEND-10-4
  ++ ~还有更了不起的记忆等着我们。你就等着。~ + FRIEND-10-5
  ++ ~谢谢，可我们该走了。~ + FRIEND-10-6

CHAIN BC0AURA2 FRIEND-10-4
~嘿嘿，那对我是很大的责任。可你知道吗？我开始觉得我也许差不多准备好担起来了。~
EXTERN BC0AURA2 FRIEND-10-5

CHAIN BC0AURA2 FRIEND-10-5
~哦，别担心。看还有多少空白页要填。我离画完还远呢。~
EXTERN BC0AURA2 FRIEND-10-6

CHAIN BC0AURA2 FRIEND-10-6
~好，深情回望我们做过的事固然好，可我们真该想着……走向下一件了，对吧？~
= ~我就在你身后。永远别怀疑这点，<CHARNAME>。~
EXIT

//////////////////////////////////////////////////////////////////////////////////
///////////////////////////////ROMANCE////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",2)~ THEN BC0AURA2 ROM-1
~我想我永远习惯不了这种城……一切都那么沉重压抑。你呢，<CHARNAME>？你觉得阿斯卡特拉怎么样？~ [C0BLANK]
END
  ++ ~不一样。我这辈子没怎么见过城。~ + ROM-1-1
  ++ ~阿斯卡特拉是个满是腐败与不公的地方。我若有选择就不会来。~ + ROM-1-2
  ++ ~我也不太喜欢。太脏太吵。~ + ROM-1-2
  ++ ~其实这才是我喜欢的地方。~ + ROM-1-2
  ++ ~现在不行，奥拉。改天再聊。~ + ROM-1-0

CHAIN BC0AURA2 ROM-1-0
~对。抱歉。~
EXIT

CHAIN BC0AURA2 ROM-1-1
~对……你在烛堡那座大图书馆长大。我有点羡慕你，<CHARNAME>，虽说我不确定自己会不会乐意大半辈子待在一个地方。~
EXTERN BC0AURA2 ROM-1-4

CHAIN BC0AURA2 ROM-1-2
~哦，我不是说这儿全都糟。这地方难活，可仍有好心人以它为家，他们一定有理由。~
EXTERN BC0AURA2 ROM-1-4

CHAIN BC0AURA2 ROM-1-3
~真的？……我想我能懂你。就算我不习惯，我也有喜欢的人和地方。~
EXTERN BC0AURA2 ROM-1-4

CHAIN BC0AURA2 ROM-1-4
~奇怪……这儿几乎没有像我兰坦故乡的地方，这儿的人日子那么苦，可这地方仍让我有点想家。~
= ~我不知道是这些差别让我渴望熟悉的东西，还是尽管又脏又粗，仍有什么共通之处，只是我说不清。~
= ~我是不是想多了，<CHARNAME>？我知道我大概有这坏毛病，可我在想你是否有同样感觉。~
END
  ++ ~我没想得那么深，可你也许说中了。光是待在这儿就让我想起家。~ + ROM-1-5
  ++ ~你也许只是离开太久了。那会让谁都想家。~ + ROM-1-6
  ++ ~我不能说我有。我对我的烛堡没那么多好回忆。~ + ROM-1-7
  ++ ~说实话，我觉得你只是胡说。~ + ROM-1-8

CHAIN BC0AURA2 ROM-1-5
~那你知道我的意思？这让我高兴，知道不只我一个。我一直在想何时该再回家看看，毕竟这么久了。~
EXTERN BC0AURA2 ROM-1-9

CHAIN BC0AURA2 ROM-1-6
~嘻嘻。也许你说得对。我没想过，可我确实好几年没见兰坦了。~
EXTERN BC0AURA2 ROM-1-9

CHAIN BC0AURA2 ROM-1-7
~哦——真的……？对不起。那我在你面前谈想家，一定太不体贴了。我只是忍不住。我最近很想兰坦。~
EXTERN BC0AURA2 ROM-1-9

CHAIN BC0AURA2 ROM-1-8
~……也许。抱歉浪费你时间。~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BC0AURA2 ROM-1-9
~往大处看，几年对侏儒不算长，可我故乡变得很快。我在想等我终于回去，还认不认得出它。~
= ~你哪天愿意来我故乡看看吗，<CHARNAME>？那儿跟这儿、跟博德之门完全不同……我保证那会是让你忘不掉的东西。~
END
  ++ ~等我的麻烦处理完，我会想找机会。我确定那会是开眼界的经历。~ + ROM-1-10
  ++ ~也许有一天。我想看的地方太多了。东方呢，比如卡拉图？我知道你也去过。~ + ROM-1-11
  ++ ~不，谢谢。我对你故乡一点兴趣都没有。~ + ROM-1-12
  ++ ~等我们没有更要紧的事操心，再想旅行吧。~ + ROM-1-13

CHAIN BC0AURA2 ROM-1-10
~嘿嘿，你听着都有点像故乡人了！我确定你会喜欢那儿。我们肯定得从安科里尔开始。我带你看看我长大的地方！~
EXTERN BC0AURA2 ROM-1-14

CHAIN BC0AURA2 ROM-1-11
~那是你感兴趣的，<CHARNAME>？嗯，我不敢自称内行，可你若真想去，我很愿意跟你一起回去。也有我想再看的地方。~
EXTERN BC0AURA2 ROM-1-14

CHAIN BC0AURA2 ROM-1-12
~哦。抱歉……我没料到你这么没兴趣。是我错了，<CHARNAME>。~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BC0AURA2 ROM-1-13
~对，当然。我们还有任务要操心。现在没时间分心。~
EXIT

CHAIN BC0AURA2 ROM-1-14
~谢谢你抽时间听我絮叨。有机会跟人分享感受真好。更别说还有可期待的事！~
EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",4)~ THEN BC0AURA2 ROM-2
~哦！<CHARNAME>，当心脑袋！~ [C0BLANK]
END
  ++ ~什么——？~ EXTERN C0MUFFY2 ROM-2-1
  ++ ~哎哟！~ EXTERN C0MUFFY2 ROM-2-1

CHAIN C0MUFFY2 ROM-2-1
~*吱！*~
== BC0AURA2 ~对不起，<CHARNAME>。他容易受惊，一受惊就跳下我肩膀……他没撞伤你脑袋吧？~
END
  ++ ~没有，我没事。~ EXTERN BC0AURA2 ROM-2-2
  ++ ~哎……他也许留了个印子。~ EXTERN BC0AURA2 ROM-2-3
  ++ ~你能把他弄回去了吗？~ EXTERN BC0AURA2 ROM-2-4

CHAIN BC0AURA2 ROM-2-2
~那就好……他总忘了自己不是真松鼠，撞到人可疼了。~
EXTERN BC0AURA2 ROM-2-4

CHAIN BC0AURA2 ROM-2-3
~啊，我这儿有止痛药膏，你要用吗！也能防着不留淤青，以防万一……~
EXTERN BC0AURA2 ROM-2-4

CHAIN BC0AURA2 ROM-2-4
~我——我能把他放回包里，<CHARNAME>，只是你得先把他从你头上扯下来……哦，不。他抓得真紧，对吧？穆菲！嘿！~
== BC0AURA2 ~呃……挠他左后爪，那一定让他松劲。好了……现在托住他前腿下面，他就不会那么挣扎了……~
== C0MUFFY2 ~*吱吱*~
== BC0AURA2 ~……或者根本不挣扎了。嗯，穆菲喜欢你，<CHARNAME>。这很少见。别人碰他，他通常不高兴。~
END
  ++ ~也许因为我们会得来，他才信我。~ + ROM-2-5
  ++ ~仔细看看，他挺可爱的。~ + ROM-2-6
  ++ ~把这疯东西拿走吧。希望他没弄坏我头发。~ + ROM-2-7

CHAIN BC0AURA2 ROM-2-5
~嘿……你大概说得对！那最说得通。~
EXTERN BC0AURA2 ROM-2-8

CHAIN BC0AURA2 ROM-2-6
~嘿嘿，他可爱吧？多数人被他不软不毛、或者肚子会打开吓到，可他其实很甜、很爱抱。~
EXTERN BC0AURA2 ROM-2-8

CHAIN BC0AURA2 ROM-2-7
~对——对……你需要梳子吗，<CHARNAME>？我有一把，能又快又简单地弄好。~
DO ~ActionOverride("C0MUFFY2",DestroySelf())~ EXIT

CHAIN BC0AURA2 ROM-2-8
~你若愿意可以摸摸他！那会让他高兴，也更喜欢你。~
END
  ++ ~好！谁是好孩子……~ + ROM-2-9
  ++ ~好吧……~ + ROM-2-9
  ++ ~也许改天。我让你把他弄回去。~ + ROM-2-10
  ++ ~不。我要确认我头发还完好。~ + ROM-2-7

CHAIN BC0AURA2 ROM-2-9
~嘻嘻。我都有点嫉妒。好久没见他跟别人这么亲了……~
= ~哦，他不动了。别担心，<CHARNAME>，那只说明他睡了。看着怪，因为他不用呼吸，可这正常。~
EXTERN BC0AURA2 ROM-2-10

CHAIN BC0AURA2 ROM-2-10
~我现在把他接过来。来吧，好穆菲……~
DO ~ActionOverride("C0MUFFY2",DestroySelf())~ EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",6)~ THEN BC0AURA2 ROM-3
~我在想……你对兰坦了解多少，<CHARNAME>？~ [C0BLANK]
END
  ++ ~除了你告诉我的，不多。~ + ROM-3-1
  + ~!CheckStatGT(Player1,25,LORE)~ + ~那是各种独特发明来的地方，对吧？~ + ROM-3-2
  + ~CheckStatGT(Player1,25,LORE)~ + ~我在烛堡读过一些。你们国家以奇械大师和贡德的虔诚信徒闻名。~ + ROM-3-2
  ++ ~有你想让我知道的事吗？~ + ROM-3-1
  ++ ~我们没时间谈无关细节，奥拉。~ + ROM-3-0

CHAIN BC0AURA2 ROM-3-0
~哦……当然。可你若想问我什么，跟我说。~
EXIT

CHAIN BC0AURA2 ROM-3-1
~我觉得听别人怎么说兰坦比我自己讲有意思。有些话让我真想笑，可我不想失礼。~
= ~你听过那种会喷火、能像真龙一样飞过天空的机器的故事吗？那些傻得难以置信！我是说，我们怎么把那种东西藏在小小的岛上，又能拿来干什么？我只认识一条真龙，他……~
= ~*咳* 总之……我只是想，偶尔听到外人提我故乡名字时，总说我们多古怪，或我们用什么样的危险武器自保。~
= ~从前不是这样。我刚开始旅行时，多数国家只觉得我们族人古怪，但无害。世界变了这么多，我知道故乡领袖相信这是保我们平安的最好法子。我只是……觉得可惜。~
END
  ++ ~我懂你的感受。烛堡某种程度上也一样，只为自己收集、储存世界的知识。~ + ROM-3-3
  ++ ~不过这可以理解。知识能造成的害处，跟它能带来的好处一样多。~ + ROM-3-3
  ++ ~真龙那句是怎么回事？~ + ROM-3-4
  ++ ~你觉得那会变吗？你既在这儿，可以分享你自己的知识。~ + ROM-3-5

CHAIN BC0AURA2 ROM-3-2
~嗯，那是我们出名的部分，可兰坦特别的地方比我们造的东西多得多。我若把能说的全告诉你，多半你不亲眼见不会信。~
EXTERN BC0AURA2 ROM-3-1

CHAIN BC0AURA2 ROM-3-3
~不是我不知道无节制分享知识的危险。就算在兰坦内部，我们也犯过许多错，为此受了大苦。~
= ~可我走了很多地方……我不能否认我起初很无知。我相信凭我的知识，我能把理解传给什么都不懂的人。嘿嘿……如今看来那是极其傲慢。~
= ~要说，到这个地步我学到的比教别人的还多。我甚至也许学到了比在学院多年更重要的东西。我希望更多同胞也能得到同样的。~
= ~自开始探索诸国度，我就相信我们该分享知识去帮别人，而不是进一步孤立自己。听着不可能，可……那会错吗？~
END
  ++ ~我不觉得错，甚至不觉得不可能。改变需要时间，也需要愿意改变的人。~ + ROM-3-6
  ++ ~那由你决定，因为那是你故乡。可我相信你会想出对的选择。~ + ROM-3-7
  ++ ~你只是天真得没救了。你族人不跟你在一起也许更好。~ + ROM-3-8

CHAIN BC0AURA2 ROM-3-4
~哦。我没跟你说过我朋友塞莉吗？说来话长，可下次我一定讲给你听。~
EXTERN BC0AURA2 ROM-3-3

CHAIN BC0AURA2 ROM-3-5
~我确实有时被诱惑……我知道不能随便把知道的告诉谁，可有些时候我觉得我本可以帮上忙，或让某人长远过得更好。~
EXTERN BC0AURA2 ROM-3-3

CHAIN BC0AURA2 ROM-3-6
~我知道。可我确实还需要被提醒。想让我故乡变好的不止我一个。我只需尽我那份，就够了。~
EXTERN BC0AURA2 ROM-3-9

CHAIN BC0AURA2 ROM-3-7
~谢谢你，<CHARNAME>。我本不指望要个答案，所以光是你的信心就足够了。~
EXTERN BC0AURA2 ROM-3-9

CHAIN BC0AURA2 ROM-3-8
~我没料到你会这么答。也许你说得有理……虽说我不愿这么想。抱歉烦你了。~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BC0AURA2 ROM-3-9
~我一直受教说兰坦人该依理性与逻辑行事，可从没人告诉我支持故乡的逻辑之道是什么。可我相信，为了我们的知识，我们对故乡的愿望跟别人一样。我也许太理想主义，可……我宁愿那样。~
= ~啊，我又把什么都倒出来了。可跟你谈真帮我把脑子清了很多。我感激你，<CHARNAME>，不只为此。有许多事我跟你谈着自在，比跟任何人都自在。~
EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",8)~ THEN BC0AURA2 ROM-4
~啊……真麻烦……<CHARNAME>，能请你帮个小忙吗？~ [C0BLANK]
END
  ++ ~是什么？~ + ROM-4-1
  ++ ~当然。~ + ROM-4-1
  ++ ~若不重要，不行。~ + ROM-4-0

CHAIN BC0AURA2 ROM-4-0
~我头发很重要！好……随便吧。哼！~
EXIT

CHAIN BC0AURA2 ROM-4-1
~我自己看不清……你能看看我头顶有没有蓝印子吗？我昨晚不小心弄上溶剂，不确定擦干净没有。~
END
  ++ ~你弄上溶剂了？那危险吗？~ + ROM-4-2
  ++ ~好，让我仔细看看。~ + ROM-4-3
  ++ ~就这个？我还以为你要我帮更重要的忙。~ + ROM-4-0

CHAIN BC0AURA2 ROM-4-2
~不，不，没事。我没在试什么危险东西，它只是容易染色，又不太容易洗掉。~
EXTERN BC0AURA2 ROM-4-3

CHAIN BC0AURA2 ROM-4-3
~那？我身上还有吗？一定查到头皮！~
END
  ++ ~有。那儿一小块蓝。~ + ROM-4-4
  ++ ~我不确定……让我把你头发挪开点看看。~ + ROM-4-5

CHAIN BC0AURA2 ROM-4-4
~唉，我就知道！~
= ~给，<CHARNAME>，我有清洁液，抹点到布上就能擦掉。可别太多，动作轻点！~
END
  ++ ~这是蒸馏酒精吗？那看着不安全。~ + ROM-4-6
  ++ ~好。~ + ROM-4-7

CHAIN BC0AURA2 ROM-4-5
~哦——~
= ~嗯……现在还看得见吗？~
END
  ++ ~发根上还看得见一点蓝。~ + ROM-4-4
  ++ ~你头发很软。~ + ROM-4-5a

CHAIN BC0AURA2 ROM-4-6
~别担心，稀释过的。强度该不超过一半。呃，万一你不知道，那意思是……哦，没事，用就是了！快！~
EXTERN BC0AURA2 ROM-4-7

CHAIN BC0AURA2 ROM-4-5a
~我……你真这么觉得？嘿嘿……~
EXTERN BC0AURA2 ROM-4-7

CHAIN BC0AURA2 ROM-4-7
~谢谢你，<CHARNAME>。要是让人发现我头发这样还到处走，我不知道会有多难堪。~
= ~好久没人替我打理这种事了。听着也许傻，可几乎有点怀旧。我都想不起上次是什么时候。~
END
  ++ ~我猜你不会随便让谁碰你头发。~ + ROM-4-8
  ++ ~你头发很软。你一定花很多时间打理。~ + ROM-4-9
  ++ ~看来你原本的颜色露出来了。你正常是铂金金发，对吧？~ + ROM-4-10
  ++ ~好了。你头发干净了，没印子。~ + ROM-4-15

CHAIN BC0AURA2 ROM-4-8
~不……也不尽然。只有我母亲、我姐姐们……还有科祖库拉的丽华老师……还有我旧友莉罗和塞莉。~
EXTERN BC0AURA2 ROM-4-9

CHAIN BC0AURA2 ROM-4-9
~不过你别以为我虚荣！嗯，也许有一点。我大概是从姐姐露娜那儿学的。她平时对我不算最好，可我对她最温暖的记忆都来自她替我打理模样的时候。~
= ~说实话，我自己做这种事时，总觉得挺没头绪……有时我觉得跟你站一起一定难看得很。~
END
  ++ ~等我们有时间，我好好帮你打理头发。~ + ROM-4-11
  ++ ~你这话到底什么意思？你是说我漂亮？~ + ROM-4-12
  ++ ~别那么说。我挺喜欢你现在的样子。~ + ROM-4-13
  ++ ~好，我弄完了。你头发现在看着行了。~ + ROM-4-15

CHAIN BC0AURA2 ROM-4-10
~啊哈哈。我猜那说明我很快得再染了。到这时候，格利默夏恩家的人染头发是传统。你若想听，改天我讲讲这背后的故事。~
EXTERN BC0AURA2 ROM-4-9

CHAIN BC0AURA2 ROM-4-11
~当真？我会很喜欢……我一直佩服你的样子，所以你为我做的任何事都会……呃，我是说，我会期待。~
EXTERN BC0AURA2 ROM-4-14

CHAIN BC0AURA2 ROM-4-12
~呀！我是说……呃，哦……你当然漂亮，可……啊啊啊！我趁还没说出更丢人的话赶紧闭嘴，行吗？~
EXTERN BC0AURA2 ROM-4-14

CHAIN BC0AURA2 ROM-4-13
~嘻嘻。就算你只是客气，因为是你，我还是爱听，所以……哦，我觉得自己脸都红了。~
EXTERN BC0AURA2 ROM-4-14

CHAIN BC0AURA2 ROM-4-14
~呃……我们不是该做点什么吗？随便什么都行？~
EXIT

CHAIN BC0AURA2 ROM-4-15
~谢谢你，<CHARNAME>。换别人，我真开不了口请人帮这种傻事。~
EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",10)~ THEN BC0AURA2 ROM-5
~*哈欠*~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2RomanceTalk","GLOBAL",1)~
= ~不该熬那么晚……现在遭报应了……哎呀！对不起，<CHARNAME>。我不是故意撞你。~
END
  ++ ~当心。我若没这么近，你也许就栽倒了。~ + ROM-5-1
  ++ ~你整夜都在干活？这样会把身体毁掉。~ + ROM-5-2
  ++ ~没事。走路看路就行。~ + ROM-5-2

CHAIN BC0AURA2 ROM-5-1
~嘿嘿……身边有你可靠着，真好，对吧？呃，不是暗示我故意靠你近，只是……~
EXTERN BC0AURA2 ROM-5-2

CHAIN BC0AURA2 ROM-5-2
~对不起，我忍不住。要独自处理的东西实在太多。若身边有一群兰坦同胞，我还能靠别人，可独自一人，要确保一切井井有条，活就多得做不完。~
= ~*叹气* 有些日子我都忘了自己不再跟同族一起旅行了。跟你相处太自在，我都没意识到自己还在多拼命地填补那份空缺。~
= ~我说，<CHARNAME>？我一直在想……你偶尔愿不愿意跟我一起干活？你也许不是兰坦人，可我知道你多聪明、多有决心……有你帮忙，我一定能成就更多。~
END
  ++ ~你要我当你的助手？你确定我不会碍你事？~ + ROM-5-3
  ++ ~你若觉得那能帮到你，那当然。我不介意为你学点东西。~ + ROM-5-4
  ++ ~我觉得我不适合你那种活，奥拉。~ + ROM-5-3
  ++ ~我真的没兴趣，奥拉。别烦我。~ + ROM-5-5

CHAIN BC0AURA2 ROM-5-3
~别担心，我打赌你会比预想学得快！也许难想象，可发明没你想的那么难。只是不同，所需的不过点创造力和决心，这两样你都多得很。~
= ~再说，就算你不想做复杂的事……我只想身边多有你。那会让我高兴。~
END
  ++ ~既然如此，那我也不介意有借口多陪陪你。~ + ROM-5-4
  ++ ~你这话都黏人了。别浪费我时间。~ + ROM-5-5

CHAIN BC0AURA2 ROM-5-4
~那下次休息时我准备装备，会记得叫你来。不过我们做点安全的，我可不想来个意外爆炸坏了气氛……~
EXIT

CHAIN BC0AURA2 ROM-5-5
~哦。我……我明白了……我只是想，以我们最近相处得这么好……也许我误会了。对不起，<CHARNAME>。从今往后我不碍你事。~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",12)~ THEN BC0AURA2 ROM-6
~最后几个零件也换了……得空我得弄新的。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2RomanceTalk","GLOBAL",13)~
= ~你能找到我那罐石墨粉吗，<CHARNAME>？黄铜罐，底下有标签……对，就那个。~
= ~我抹些在这些布上，我们一起擦自动机械的关节，维护就完了。~
= ~挺简单，对吧？照这速度，不久你就能完全自己掌控、照料它了。可在之前……这么久之后有人一起干活，真好。~
END
  ++ ~这意外地累人。你每晚都自己这么干？~ + ROM-6-1
  ++ ~比我想的简单。也许下次我们可以试难点的。~ + ROM-6-2
  ++ ~我累坏了。剩下的你自己弄吧……我得去睡会儿。~ + ROM-6-0

CHAIN BC0AURA2 ROM-6-0
~好。我也许让你干得太多了……被迫干我的活之后，你该歇歇。嘿嘿。~
EXTERN BC0AURA2 ROM-6-14

CHAIN BC0AURA2 ROM-6-1
~嗯，也不是整个流程……我也许加了几步平常不必常做的，只因你在帮我……就当借口多干一会儿……~
EXTERN BC0AURA2 ROM-6-3

CHAIN BC0AURA2 ROM-6-2
~你这么想？你理解得比我想的还快……我得想想什么能难住你，嘿嘿。不过先说清，不能是爆炸性的。~
EXTERN BC0AURA2 ROM-6-3

CHAIN BC0AURA2 ROM-6-3
~你知道，遇见你之前，我在路上时，长久陪伴我的就只有这大家伙……别说我疯，可有时我会跟它说话，像穆菲那样当它活着，只为不那么孤单。~
= ~可自我加入，我就不怎么那样了。有时我想，也许它真有灵魂，因为我改依赖你，觉得被冷落了？万一……~
= ~哦，不！我一直在做什么，<CHARNAME>？我是不是太投入了？也许我该为一直冷落它道歉。~
END
  ++ ~别傻。它只是个构造体。它不能像我们那样思考。~ + ROM-6-4
  ++ ~若它听得见你，我确定它明白。毕竟你造它是为了保护你。~ + ROM-6-5
  ++ ~你说得对。也许你该向它道歉。就现在。~ + ROM-6-6
  ++ ~够了。我累了，要去睡。~ + ROM-6-0

CHAIN BC0AURA2 ROM-6-4
~嘿嘿，对，你说得对。我只是把自己的感情投射到造出的、长久的东西上……我更该感激那些能跟我说话、听我犯傻的人。~
EXTERN BC0AURA2 ROM-6-7

CHAIN BC0AURA2 ROM-6-5
~我从没多想……可如今跟你一起看它，我忍不住感激。就算我知道它只是一堆会动的零件，我仍感激它一直陪着我、护着我。~
EXTERN BC0AURA2 ROM-6-7

CHAIN BC0AURA2 ROM-6-6
~是，你说得对！嗯……~
= ~对不起，我一直把你当理所当然！自从我一块块把你拼起来，你替我挨了多少打、做了多少护我的事，我却一句谢都没说。我该像待自己孩子一样细心待你！而且……嗯……~
EXTERN BC0AURA2 ROM-6-7

CHAIN BC0AURA2 ROM-6-7
~……~
= ~嘻嘻。我猜这是我还没给你看的一面，<CHARNAME>。对，我也不是完全一本摊开的书，只是……多半是。我有时太念旧，对自己不好。~
= ~凡我造来长久的东西，我都忍不住生出感情。我连最早最粗糙的作品都扔不掉……你若能看到我家族老宅向日葵之家里我的房间，大概会觉得全是破烂……可对我，我做过的每样东西都连着一段珍贵记忆。~
= ~这不只对发明。对人也是……如今跟你相处过，我很难想象你不在了会怎样……~
= ~若不算我自作多情……你怎么想，<CHARNAME>？你有没有可能也有类似感觉？~
END
  ++ ~有。我觉得你若不在，我会少很多快乐，奥拉。~ + ROM-6-8
  ++ ~我学会应付失去人。那不容易也不愉快……可我不能任自己生感情。~ + ROM-6-9
  ++ ~别告诉我你开始依赖我。那种人我受不了。~ + ROM-6-10
  ++ ~我太累了，奥拉。这事改天再谈。~ + ROM-6-0

CHAIN BC0AURA2 ROM-6-8
~你真会？虽说自我决定当冒险者，有许多事我觉得自己没用，可只要我至少能带来快乐……我至少能说那是成功。~
EXTERN BC0AURA2 ROM-6-11

CHAIN BC0AURA2 ROM-6-9
~我明白。我不怪你有那种感觉，尤其你经历了一切。能珍惜我们能共处的时间就够了。~
EXTERN BC0AURA2 ROM-6-11

CHAIN BC0AURA2 ROM-6-10
~哦。~
= ~是，那……是我的错。我不能指望你有你不想要的感觉，<CHARNAME>。这怪我。~
= ~我……去睡了。抱歉让你经历这些……你不必再来一遍……除非你愿意。~
= ~晚安。~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
FadeToColor([0.0],0)
Wait(2)
RestPartyEx(0,0,FALSE)
FadeToColor([0.0],0)
Wait(3)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()~ EXIT

CHAIN BC0AURA2 ROM-6-11
~总之，很高兴我们能一起做这些。如今我们又多一样拉近距离的事，将来你若愿意，只会有更多。~
= ~说到这个，你若不困，愿不愿意帮我准备箭？顺便我也能给你讲讲太阳射手怎么运作。~
END
  ++ ~当然。我一直好奇那东西。~ DO ~SetGlobal("C0AuraRomanceTalk6AllNighter","GLOBAL",1)~ + ROM-6-12
  ++ ~当然，为什么不。~ DO ~SetGlobal("C0AuraRomanceTalk6AllNighter","GLOBAL",1)~ + ROM-6-12
  ++ ~抱歉，奥拉。我真累了。下次吧。~ + ROM-6-13

CHAIN BC0AURA2 ROM-6-12
~太好了！那这就开始。这是箭杆，你先从这儿拧开尾端……~
DO ~ClearAllActions()
StartCutSceneMode()
FadeToColor([0.0],0)
Wait(2)
RestPartyEx(0,0,FALSE)
FadeToColor([0.0],0)
Wait(3)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()
Interact(Player1)~ EXIT

CHAIN BC0AURA2 ROM-6-13
~当然，没问题。那我记着，另找个晚上。~
EXTERN BC0AURA2 ROM-6-14

CHAIN BC0AURA2 ROM-6-14
~晚安，<CHARNAME>。希望你好梦。~
DO ~ClearAllActions()
StartCutSceneMode()
FadeToColor([0.0],0)
Wait(2)
RestPartyEx(0,0,FALSE)
FadeToColor([0.0],0)
Wait(3)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()
Interact(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2RomanceTalk","GLOBAL",14)
Global("C0AuraRomanceTalk6AllNighter","GLOBAL",1)~ THEN BC0AURA2 ROM-7-A
~……*哈欠*~ [C0BLANK]
DO ~RealSetGlobalTimer("C0AuraBG2RomanceTimer","GLOBAL",3600)
        IncrementGlobal("C0AuraBG2RomanceTalk","GLOBAL",1)~
END
  ++ ~*哈欠*~ + ROM-7-A-1
  ++ ~看来你也没睡够……~ + ROM-7-A-1
  ++ ~我们别再整夜干活了，好吗？~ + ROM-7-A-1

CHAIN BC0AURA2 ROM-7-A-1
~对不起，<CHARNAME>……我请你帮忙本是为不独自熬夜，可我玩得太开心，反倒更埋头干起来……现在你跟我一样缺觉。~
= ~我们原定目标算是失败了，对吧？~
END
  ++ ~我不介意。我玩得很开心。~ + ROM-7-A-2
  ++ ~是。下次我们好好按计划来。~ + ROM-7-A-3
  ++ ~别再让我经历那个。~ + ROM-7-A-4

CHAIN BC0AURA2 ROM-7-A-2
~嘿嘿，那好……偶尔眼皮沉点也许值得……*哈欠*~
EXTERN BC0AURA2 ROM-7-A-5

CHAIN BC0AURA2 ROM-7-A-3
~下次，嗯？那我猜你一起干活挺开心？~
EXTERN BC0AURA2 ROM-7-A-5

CHAIN BC0AURA2 ROM-7-A-4
~嘿嘿，对不起……你若再给我一次机会，我会想点不那么耗时的。~
EXTERN BC0AURA2 ROM-7-A-5

CHAIN BC0AURA2 ROM-7-A-5
~嗯，我虽想再睡会儿，这里可不是学院的宿舍了，所以……回去上路吧？~
= ~我保证不再不小心撞你……我看这回你没力气站稳了……~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2RomanceTalk","GLOBAL",14)
!Global("C0AuraRomanceTalk6AllNighter","GLOBAL",1)~ THEN BC0AURA2 ROM-7-B
~<DAYNIGHTALL>好，<CHARNAME>。休息得好吗？~ [C0BLANK]
DO ~RealSetGlobalTimer("C0AuraBG2RomanceTimer","GLOBAL",3600)
        IncrementGlobal("C0AuraBG2RomanceTalk","GLOBAL",1)~
END
  ++ ~不坏。你呢？~ + ROM-7-B-1
  ++ ~看来你难得真睡了会儿。~ + ROM-7-B-1
  ++ ~我们就走吧。没时间浪费。~ + ROM-7-B-2

CHAIN BC0AURA2 ROM-7-B-1
~你走后不久我就收拾好睡了。不知怎么，我没平时那么执拗……也许这样更好。~
EXTERN BC0AURA2 ROM-7-B-2

CHAIN BC0AURA2 ROM-7-B-2
~谢谢你陪我，<CHARNAME>。时间虽不长，我还是开心。希望你也开心……下次也许我给你看点不一样的？~
= ~总之，该动了。我今天精力挺足，你会看到不一样的我。哦，可我真饿……我们出发前是不是该先想想吃的？~
EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",16)~ THEN BC0AURA2 ROM-8
~愿意跟我讲讲烛堡吗，<CHARNAME>？~ [C0BLANK]
END
  + ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~我重回那儿时你跟我在一起。你自己没看见吗？~ + ROM-8-1
  ++ ~你想知道什么？~ + ROM-8-2
  ++ ~现在请别问我这种琐碎事，奥拉。对谁都没用。~ + ROM-8-0

CHAIN BC0AURA2 ROM-8-0
~哦……那好吧。~
EXIT

CHAIN BC0AURA2 ROM-8-1
~嗯……是。可那次经历被那些变形怪、诬陷和明处的敌人弄得阴沉。我指的是平常的样子。~
EXTERN BC0AURA2 ROM-8-2

CHAIN BC0AURA2 ROM-8-2
~我想知道的是你在那儿长大所记得的那种地方。我在兰坦遇过几位去过的学者……可从没遇过整个童年都称那儿为家的人。~
END
  ++ ~我想你会喜欢。诸国度的知识、学者日夜辩论……那是你喜欢的。~ + ROM-8-3
  ++ ~那是个安静安全的地方。有人会觉得自在，有人也许觉得有点闷。~ + ROM-8-4
  ++ ~我一直觉得烛堡无聊，可见过真正的世界后，我后悔把当时的安宁当成理所当然。~ + ROM-8-5
  ++ ~别让我想起烛堡。离开是我做过最好的事。~ + ROM-8-6

CHAIN BC0AURA2 ROM-8-3
~嘿嘿，我打赌是。也许我现在不在那儿倒是好事……多半我会走进一间全是典籍的屋子，再也不想出来。~
EXTERN BC0AURA2 ROM-8-7

CHAIN BC0AURA2 ROM-8-4
~那取决于你想过什么样的人生，对吧？可像烛堡那样的地方一定很难离开……一旦见过世界其余的样子，也很难再回去。~
EXTERN BC0AURA2 ROM-8-7

CHAIN BC0AURA2 ROM-8-5
~啊……我某种程度上懂。我还只是学生时，满脑子都是怎么用我的知识帮世界改变……可回头想，我当时该多做点，单单珍惜学东西有多简单。~
EXTERN BC0AURA2 ROM-8-7

CHAIN BC0AURA2 ROM-8-6
~哦。对不起……我没想到那些回忆对你会那么糟。看我现在的你，我原以为你成长的环境一定给了你很多。~
EXTERN BC0AURA2 ROM-8-7

CHAIN BC0AURA2 ROM-8-7
~说实话，我感兴趣的不是换一换被知识包围的感觉。我想的更多是你……还有点嫉妒。不只因为你有我本来也会喜欢的东西，还因为……~
= ~呃，其实……算了。我大概在想一件连我自己都太过于做白日梦的事。忘了我刚要说什么。~
END
  ++ ~不行。你都要开口了，认了吧。~ + ROM-8-8
  ++ ~没关系。你说吧，不管是什么。~ + ROM-8-8
  ++ ~好。就当我忘了。~ + ROM-8-9

CHAIN BC0AURA2 ROM-8-8
~哦，好……也许你不会笑我。就算笑，只要是你，我大概也能忍着难堪。~
= ~我在想我多嫉妒那些一定在你身边、照顾你、参与了把你造就成如今这人的那些人。而我……有点难过自己不能算在其中。~
= ~没我说得那么狂。我年轻时并非注定要进故乡的桑巴尔学院。我本可选择去别的地方求学，那儿学术机会也许更适合我……比如专注我对魔法的兴趣。~
= ~就算当时没想过，我本也可以选择来烛堡求学，它过去跟我故乡有过友好往来。也许我就会遇见你……早点有机会跟你做朋友。~
= ~可那太久远了，不值得想。再说，如今能认识你就是运气。可我还是忍不住想，若很久以前我做了几个不同选择，会是什么样。~
END
  ++ ~可惜我们不能早点相遇，可如今我们是朋友。前头还有许多年。~ + ROM-8-10
  ++ ~我不确定事情会完全一样。你会变成不同的人，我也是。~ + ROM-8-10
  ++ ~想可能发生过的事可以是好教训，可若改变不了什么，沉在里面没意义。~ + ROM-8-10
  ++ ~谢天谢地你没在烛堡求学。没有你现在的本事，你多半没用。~ + ROM-8-13

CHAIN BC0AURA2 ROM-8-9
~*咳* 总之……正常说来，我也许会为你不得不离开那样的家难过，可同时，若你没走，我们就永远不会相遇。~
= ~凡事都有光明面。至少在我看来。~
EXIT

CHAIN BC0AURA2 ROM-8-10
~我知道，我知道。那改变不了什么，我也不能要求比已有的更多。可我只是想，到目前为止我算你人生里相对很小的一部分，我有多大资格自称跟你亲近？~
= ~这答案我给不了，因为那得你决定，<CHARNAME>，可……我想知道关于你的一切，或至少你愿意告诉我的。所以从今往后，你能多跟我说说你自己吗？哪怕一次一小件。~
END
  ++ ~当然。你跟我说了那么多你的事，我也该还你这份。~ + ROM-8-11
  ++ ~嗯……只要你别指望我吐露什么难堪的秘密。~ + ROM-8-12
  ++ ~你越界了，奥拉。我没兴趣跟你那么亲近。~ + ROM-8-13

CHAIN BC0AURA2 ROM-8-11
~嘿嘿，那就说定了。如我所说，哪怕是像你爱吃什么、爱怎么打发时间这样简单的事……我都想知道。也许我们还会发现比预想更多的共通。~
EXTERN BC0AURA2 ROM-8-14

CHAIN BC0AURA2 ROM-8-12
~哦，你这么说，我就忍不住好奇。要不我们交换一点？我说一件我的，然后你说你的。等……确定没别人听得见的时候。~
EXTERN BC0AURA2 ROM-8-14

CHAIN BC0AURA2 ROM-8-13
~哦。我没料到你这么看我……真意外，我还以为我们在变成亲近的朋友……~
= ~也许我一直想多了自己对你意味着什么，<CHARNAME>。是我错了。不会再有下次。~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BC0AURA2 ROM-8-14
~呃，我也许只是花太久把心都倒给你了。如今脑子稍微跟上我说过的一切，我忽然觉得脸有点热……~
EXTERN BC0AURA2 ROM-8-9

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",18)~ THEN BC0AURA2 ROM-9
~“啦—哒—哒，啦—哒—哒”，一、二……二、二，向右转，向前一步……~ [C0BLANK]
= ~哎呀……哇！~
END
  ++ ~当心！~ + ROM-9-1
  ++ ~（接住她）~ + ROM-9-1
  ++ ~（任她摔倒）~ + ROM-9-2

CHAIN BC0AURA2 ROM-9-1
~哎哟……谢谢你，<CHARNAME>。我猜是我脚太笨，不该那样迈步……幸好你接住了我。~
EXTERN BC0AURA2 ROM-9-3

CHAIN BC0AURA2 ROM-9-2
~哎哟……~
= ~我好久没这么丢人地摔个屁股墩了……你没看见吧，<CHARNAME>？告诉我你没看见。~
EXTERN BC0AURA2 ROM-9-3

CHAIN BC0AURA2 ROM-9-3
~*叹气* 我只是想复习很久以前学的舞步……不知怎么忽然想到，可我好多年没练了。我想看看自己是不是还像从前那么差。~
= ~我用双手拼东西很在行，可看起来轮到脚就不行了。~
END
  ++ ~我甚至不知道你以前学过跳舞。~ + ROM-9-4
  ++ ~嗯，没人完美。你若在意，就继续练。~ + ROM-9-5
  ++ ~随便。只要你的计划不是拿跳舞当战斗策略。~ + ROM-9-6

CHAIN BC0AURA2 ROM-9-4
~说准确点，那其实不是我的主意。我还留在兰坦时，是临时不得不学的。~
EXTERN BC0AURA2 ROM-9-7

CHAIN BC0AURA2 ROM-9-5
~说实话，直到最近我才真想过改进。那本来也不是我打算学的东西。~
EXTERN BC0AURA2 ROM-9-7

CHAIN BC0AURA2 ROM-9-6
~哎哟。你能想象吗？也许有极小机会我用笨拙步法把他们弄糊涂，除此之外……嗯，这些动作我走不到哪儿去。~
EXTERN BC0AURA2 ROM-9-7

CHAIN BC0AURA2 ROM-9-7
~在家时，我姐姐露娜曾带我去参加她一位学院同届的婚礼。她当伴娘，我也被叫去，因为她一些朋友想头一次见我。那是我第一次参加兰坦的婚礼。~
= ~我们的婚礼跟别处差别不大，可因为多数兰坦人太忙，能抽空跟亲友共享喜悦的时光都很珍贵。誓言说完后有个特别仪式，每位宾客都有机会分享自己在专注的创新，好让大家共享知识。若他们的工作有成果，还会向新人赠礼。~
= ~总之，光为仪式我就乐意去，可我这辈子从没跳过舞。所以我——嗯，我姐姐不想我在众人面前丢脸。她花了整整五天教我，可不知怎么，尽管我一辈子都照指示做事，我就是没法做对。~
= ~到头来也无所谓了。婚礼那天，我刚迈第一步，我的舞伴就突然因为吃了什么过敏发作，婚礼剩下的时间我都在配东西帮他复原，直到仪式结束。然后日子照过，我也再没想过跳舞。~
= ~直到最近。不知为什么，跟你聊天让我又想起那场婚礼，就算我觉得我们连跳舞都没谈过，我就是想练练，免得再去婚礼时出丑。~
END
  ++ ~你不是已经在想结婚了吧？~ + ROM-9-8
  ++ ~有一天我想看看兰坦的婚礼。那仪式听着特别有意思。~ + ROM-9-9
  ++ ~你若愿意，我可以试着教你。我舞跳得不差。~ + ROM-9-10
  ++ ~在想婚礼之前，我们先谈谈今天怎么活下来，如何？~ + ROM-9-11

CHAIN BC0AURA2 ROM-9-8
~呃……不！我是说，我能想象有一天会，但不会很快！除非……除非也有人真的想要。~
EXTERN BC0AURA2 ROM-9-12

CHAIN BC0AURA2 ROM-9-9
~哦，仪式是我最喜欢的部分，至少在我去过的那几场里。我爱看兰坦别的心智造出了什么……不过我想若是我自己的婚礼，我的优先顺序也许会稍有不同。~
EXTERN BC0AURA2 ROM-9-12

CHAIN BC0AURA2 ROM-9-10
~嘿嘿，我很想跟你学。就算在某个世界里你跳得跟我一样糟，我大概还是会答应，只为那份经历。~
EXTERN BC0AURA2 ROM-9-12

CHAIN BC0AURA2 ROM-9-11
~呃……说得好。*叹气* 可也许有一天……~
EXIT

CHAIN BC0AURA2 ROM-9-12
~可有一天，等这一切都过去……我真正想的是在兰坦的婚礼上跟你跳一支舞。~
= ~不管，呃……当时我们可能站在哪儿。~
END
  ++ ~我愿意。~ + ROM-9-13
  ++ ~“我们站在哪儿？”你是在暗示我们两个……~ + ROM-9-14
  ++ ~你现在真在做白日梦了。把你这小脑袋从云里拉回来，专心现实世界。~ + ROM-9-11

CHAIN BC0AURA2 ROM-9-13
~那就算约定了？不，是承诺！不，是……哦，你爱怎么想就怎么想。这回我没法靠嘴绕出去了。~
EXTERN BC0AURA2 ROM-9-15

CHAIN BC0AURA2 ROM-9-14
~等等，我刚说了什么？我刚是不是……哦，不。我只是想说……唉。算了，忘了吧。我嘴已经够笨了。~
EXTERN BC0AURA2 ROM-9-15

CHAIN BC0AURA2 ROM-9-15
~我们就……想想今天怎么过，如何？那不那么好玩，可走太快也……~
= ~我……就继续练舞。免得你若哪天成了我的，呃……舞伴，我踩你脚。~
= ~“啦—哒—哒，啦—哒—哒”……~
EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",20)~ THEN BC0AURA2 ROM-10
~能请你尝几样我一直在试做的糖果吗，<CHARNAME>？~ [C0BLANK]
= ~呃，抱歉。我脑子还在学习模式。我是说，你想不想尝尝我一直在试做的甜点？~
END
  ++ ~当然，我喜欢甜食。~ + ROM-10-1
  ++ ~你用“学习模式”说话时挺可爱。~ + ROM-10-2
  ++ ~“试做”？你是说，你不确定品质？~ + ROM-10-3
  ++ ~我平时不太爱甜食……不过我会尝一个，只为让你高兴。~ + ROM-10-1
  ++ ~不，谢谢。我不喜欢甜食。~ + ROM-10-0

CHAIN BC0AURA2 ROM-10-0
~唉……好。我不能逼你喜欢你不喜欢的东西。那算了……~
EXIT

CHAIN BC0AURA2 ROM-10-1
~我在试着复刻故乡“达拉利糖果铺”的风格。店主达拉利兄弟从学院退学，专心以做糖为业。~
= ~没人指望他们能闯出什么名堂，可他们对这行太投入，最终成了兰坦首屈一指的糖果铺，几乎每个爱甜食的兰坦人都渴望他们的作品。如今他们甚至可说是在故乡之外最有名的兰坦人之一。~
= ~看他们干活时我惊叹不已，甚至在他们的糖果大师手下学了一个月……虽说我始终没弄明白他们怎么变那魔术。不过我一直在尽力。~
= ~现在我得闭嘴，你马上尝一个。要诚实！我得知道怎么改进。有巧克力、焦糖、牛轧糖……挑你喜欢的。~
END
  ++ ~那我尝这个……~ + ROM-10-4
  ++ ~算了。我现在不想吃甜的。~ + ROM-10-0

CHAIN BC0AURA2 ROM-10-2
~真的？那也许我以后多为你这么说……不过现在，该吃点心了！~
EXTERN BC0AURA2 ROM-10-1

CHAIN BC0AURA2 ROM-10-3
~嗯……不完全是，可为我辩解一句，它们也不全是我自己的构思！~
EXTERN BC0AURA2 ROM-10-1

CHAIN BC0AURA2 ROM-10-4
~……怎样？我做得如何？~
END
  ++ ~只是稍微太甜。可我看出你很用心。~ + ROM-10-5
  ++ ~我不太会评品质，可我喜欢，如果这算点什么。~ + ROM-10-6
  ++ ~我觉得你还得再练练。~ + ROM-10-7
  ++ ~呕。我刚想起我为什么不喜欢甜食。~ + ROM-10-8

CHAIN BC0AURA2 ROM-10-5
~嘿嘿，你若光尝就能尝出来，那至少说明我有点进步。~
EXTERN BC0AURA2 ROM-10-7

CHAIN BC0AURA2 ROM-10-6
~当然算点什么！尤其从你嘴里说出来。那说明这回我做得好了点。~
EXTERN BC0AURA2 ROM-10-7

CHAIN BC0AURA2 ROM-10-7
~嗯，总有改进余地。我习惯意识到这点。我也许永远到不了我希望的、配得上我发明本事的水准，可我想“差不多”也能接受。~
= ~*叹气* 看来做糖做到最高境界，说到底不比奇械容易。那分毫不差的时机、精准与配量……不真试过很难领会。~
= ~我只是觉得有趣：我兰坦的族人造了那么多东西、想出那么多能改变世界的概念……可真正把人聚到一起的，却是糖果这样简单的东西。我听说达拉利兄弟甚至侍奉过贵族和王室，不过那也许是传言。~
= ~这说得通。生活中围绕你的东西不必独特、宏伟或复杂。只要它们带来一点快乐，那就有意义。你怎么想？~
END
  ++ ~我明白你为什么想学那么多东西。发明、跳舞、做糖……都是为给人们的生活添点快乐。~ + ROM-10-8
  ++ ~想让人快乐是一回事，可你自己呢？若让你想，什么会让你满足？~ + ROM-10-9
  ++ ~我觉得我开始头疼。不是糖，就是这突如其来的哲学。~ + ROM-10-10

CHAIN BC0AURA2 ROM-10-8
~看？你懂我。我做的东西也许太复杂难懂，可我并不复杂。真的，一点也不。~
EXTERN BC0AURA2 ROM-10-11

CHAIN BC0AURA2 ROM-10-9
~什么会让我快乐？嗯……我想这不难说。甚至不是我够不到的。~
EXTERN BC0AURA2 ROM-10-11

CHAIN BC0AURA2 ROM-10-10
~哎呀，抱歉。这本来就该是休息。可你若不要糖，我收回来。嘿，我也爱甜食。~
EXTERN BC0AURA2 ROM-10-11

CHAIN BC0AURA2 ROM-10-11
~也许下次我给你做顿正经饭？我的专长是甜点，可素食菜我也挺行。只是别让我做科祖库拉的菜。若除了茶和甜点之外，我可能真会毒死人。~
= ~说到茶，你要不要也来点，压压甜味？我做了个小装置，路上也能轻松泡。回头给你看。~
EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",22)~ THEN BC0AURA2 ROM-11
~“哼—哼—哼—哼……”~ [C0BLANK]
END
  ++ ~你心情好像很好。~ + ROM-11-1
  ++ ~怎么了？有什么好事？~ + ROM-11-2
  ++ ~嘘。你会招人注意。~ + ROM-11-0

CHAIN BC0AURA2 ROM-11-0
~哦……抱歉。我太吵了吗？我这就停。~
EXIT

CHAIN BC0AURA2 ROM-11-1
~我只是……就是这样。我真没法解释。最近我就是比平时更开心。~
= ~嗯，也许有特别原因。毕竟我们最近相处更多了。那超出我能指望的。~
END
  ++ ~你随时可以要求更多。~ + ROM-11-3
  ++ ~我也喜欢待在你身边。~ + ROM-11-4
  ++ ~听着，关注你开始让我烦了。我希望你别理我。~ + ROM-11-5

CHAIN BC0AURA2 ROM-11-2
~不？没什么特别的，你若好奇。你问我为什么看着高兴，我……~
EXTERN BC0AURA2 ROM-11-1

CHAIN BC0AURA2 ROM-11-3
~嘿嘿……不，我不能。我觉得偶尔晚上有你帮忙、能跟你聊聊天就已经很受优待了……就算我想做更多，我……~
EXTERN BC0AURA2 ROM-11-6

CHAIN BC0AURA2 ROM-11-4
~你这样想我就放心了。我不想觉得自己太黏人或浪费你时间……就算我想跟你多做点什么，我觉得你有比我的感受更重要的事要想。~
EXTERN BC0AURA2 ROM-11-6

CHAIN BC0AURA2 ROM-11-5
~哦，我……我明白了。对不起，<CHARNAME>。我早该意识到自己过头了。从今往后……我不会再浪费你时间。~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BC0AURA2 ROM-11-6
~若不算太过分，<CHARNAME>……我对你算有帮助，还是负担？不是说我在路上贡献多少。我是说……嗯，你知道我意思。情感上，作为朋友……或者你当我是什么。~
END
  ++ ~你帮了太多忙。没有你的乐观与支持，我不会是现在这样。~ + ROM-11-7
  ++ ~嗯，你有时是有点压人……可我知道你只是想帮忙。我能接受你现在的样子。~ + ROM-11-8
  ++ ~说实话，你黏着我那样真让我烦躁。你若别理我，我会更高兴。~ + ROM-11-5

CHAIN BC0AURA2 ROM-11-7
~你不知道那对我多重要。我开始怀疑自己是不是太自私，总想把自己留在你视线里。~
EXTERN BC0AURA2 ROM-11-9

CHAIN BC0AURA2 ROM-11-8
~我原担心自己太急着求你注意……可我很高兴你不为这怪我。~
EXTERN BC0AURA2 ROM-11-9

CHAIN BC0AURA2 ROM-11-9
~虽说我为我们在变亲近而高兴，我也一直担心我从中得到的比你多。你为我做了那么多，你还有力量、有伟大的命运在前头。~
= ~我尽力了，可我是那个力不从心、尽力想融入的人。所以我虽……爱得到你的注意，我常觉得自己不配。~
= ~话说回来，也许我又像往常一样想多了。我真的很喜欢你，<CHARNAME>，我希望……也许你对我也有同样感觉。~
END
  ++ ~我当然有。你对我很重要。~ + ROM-11-10
  ++ ~我觉得你没看见自己的长处。你身上有许多我佩服的地方。~ + ROM-11-10
  ++ ~你的友谊对我很重要，奥拉，可仅此而已。希望你能理解。~ + ROM-11-11
  ++ ~别那样看我。我不觉得我们像你以为的那么亲近。~ + ROM-11-5

CHAIN BC0AURA2 ROM-11-10
~<CHARNAME>……哦，这正是我想听的。我只是没料到你会真把我看成配得上你的人。~
END
IF ~OR(10)
	Global("AerieRomanceActive","GLOBAL",1)
	Global("AnomenRomanceActive","GLOBAL",1)
	Global("JaheiraRomanceActive","GLOBAL",1)
	Global("ViconiaRomanceActive","GLOBAL",1)
	Global("RasaadRomanceActive","GLOBAL",1)
	Global("DornRomanceActive","GLOBAL",1)
	Global("NeeraRomanceActive","GLOBAL",1)
	Global("HexxatRomanceActive","GLOBAL",1)
  Global("YoshimoRomanceActive","GLOBAL",1)
  Global("YoshimoRomanceActive","GLOBAL",2)~ + ROM-11-CONFLICT
IF ~True()~ + ROM-11-12

CHAIN BC0AURA2 ROM-11-11
~……我明白。我感激你对我这么坦白，我知道你不想伤我。那我们就保持现在这样，做朋友。我会学着对此满足。~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BC0AURA2 ROM-11-CONFLICT
~其实，虽然我不该……我确实开始有点嫉妒。有时我看你跟别的同伴说话，就……嗯，我不愿相信有人跟你比我更近。~
= ~可若真有，请别觉得非得瞒我。我希望现在就知道，趁还不算太晚。~
END
  ++ ~我确实对另一个人有感情……可我仍想培养我们的友谊，奥拉。请别怀疑这点。~ + ROM-11-11
  + ~!Global("YoshimoRomanceActive","GLOBAL",1)
     !Global("YoshimoRomanceActive","GLOBAL",2)~ + ~没有别人比我更看重，不是你想的那种。我保证。~ + ROM-11-12
  + ~OR(2)
     Global("YoshimoRomanceActive","GLOBAL",1)
     Global("YoshimoRomanceActive","GLOBAL",2)~ + ~没有别人比我更看重，不是你想的那种。我保证。~ + ROM-11-12-YR

CHAIN BC0AURA2 ROM-11-12
~那……我能抱你一下吗？我觉得你早就需要一个了……那也会让我更高兴。~
END
  ++ ~就抱一下？我以为你会想更进一步。~ + ROM-11-13
  ++ ~当然。过来。~ + ROM-11-14
  ++ ~现在不行。也许以后。~ + ROM-11-15
  ++ ~不，谢谢。我没心情。~ + ROM-11-15

CHAIN BC0AURA2 ROM-11-12-YR
~没有别人？可我以为……你和吉野……你们俩不是互相关心吗？~
END
  + ~Global("YoshimoRomanceActive","GLOBAL",1)~ + ~我们是好朋友，可那跟我看你的方式不同。~ DO ~SetGlobal("YoshimoRomanceActive","GLOBAL",3)~ + ROM-11-12-YR-1
  + ~Global("YoshimoRomanceActive","GLOBAL",2)~ + ~我们……确实。可我也很在意你。~ + ROM-11-12-YR-2
  ++ ~我想你误会了。他和我……我们认识都还没多久。~ DO ~SetGlobal("YoshimoRomanceActive","GLOBAL",3)~ + ROM-11-12-YR-1
  ++ ~也许……可我没法定我更在意谁……你还是他。~ + ROM-11-12-YR-2
  ++ ~那无所谓。我在意你跟我一样多。这有什么错？~ + ROM-11-12-YR-2

CHAIN BC0AURA2 ROM-11-12-YR-1
~哦，那……是这样。我一定又想多了。也许我是在嫉妒……这根本不像我。可话说回来，这些事也都不像平常的我。~
EXTERN BC0AURA2 ROM-11-12

CHAIN BC0AURA2 ROM-11-12-YR-2
~不，我……我做不到，<CHARNAME>，不能这样。~
= ~对不起，<CHARNAME>。我挑错了时候把这些想法推给你。这对你们俩都不公平……尤其明显你多想着他。~
= ~我的感情……不会变。可我不想逼你做决定，不是现在——我不能做那么自私的事。我对你的这份情……光是拥有就够了。将来怎样……那由你决定。~
= ~我们别再提这个了，<CHARNAME>……等你知道自己要什么再说。谢谢你听我。~
DO ~SetGlobal("C0AuraRomanceYRGlob","GLOBAL",1)~ EXIT

CHAIN BC0AURA2 ROM-11-13
~嗯……我不反对，可一步一步来。再说，我觉得我还没胆子要求更多。还没有。那，你还不快过来？~
EXTERN BC0AURA2 ROM-11-14

CHAIN BC0AURA2 ROM-11-14
~唉……你真暖，<CHARNAME>。我可以就这样待一辈子。~
= ~可惜我们不能，对吧？唉……至少现在我知道那是什么感觉了。而且我……很期待我们前头还有什么。~
EXIT

CHAIN BC0AURA2 ROM-11-15
~好。可这选择仍摆在你面前，<CHARNAME>。你连问都不用。你需要我时，我就在。~
EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",24)~ THEN BC0AURA2 ROM-12
~嗯……~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2RomanceTalk","GLOBAL",1)~
= ~穆……穆菲？你……你在哪儿？我醒来时你通常都在这儿……*哈欠*~
= ~嘿，<CHARNAME>？你看见穆菲了吗……？我到处都找不到他……~
END
  ++ ~别担心。他就在我这儿。~ + ROM-12-1
  ++ ~你那铁松鼠看来决定改跟我睡了。~ + ROM-12-1
  ++ ~给，把他拿走。我们没时间浪费，收拾东西吧。~ + ROM-12-0

CHAIN BC0AURA2 ROM-12-0
~好，把他交给我……现在听好，穆菲，你要睡在<CHARNAME>旁边，至少告诉我一声，行吗？*戳戳*~
EXIT

CHAIN BC0AURA2 ROM-12-1
~哦。有意思……我想他以前从没这样过。他很少喜欢我以外的人……~
= ~也许这是个征兆，<CHARNAME>。这么短时间我们就这么亲近，他大概知道你多值得我信。~
= ~不过看他那样依着你，我还是忍不住有点嫉妒。~
END
  ++ ~告诉你，我醒来发现他贴在我脸上，可真吓了一跳。~ + ROM-12-2
  ++ ~我一直好奇，奥拉……穆菲到底是怎么回事？你别的造物都没他这么像活的。~ + ROM-12-3
  ++ ~给，把他拿回去。还有告诉他，从今往后待在他主人身边。~ + ROM-12-0

CHAIN BC0AURA2 ROM-12-2
~嘿嘿……抱歉。我尽力把他造得尽量好抱，可说到底他还是黄铜和齿轮……嗯，至少他身体是。我希望他一点没让你不舒服。~
END
  ++ ~“他身体”？你是说他不只是块钟表机械？~ + ROM-12-3
  ++ ~你把他拿回去吧。希望他别再爬我脸上。~ + ROM-12-0

CHAIN BC0AURA2 ROM-12-3
~我没跟你说过吗？他是付丧神……一种妖怪、灵体，会附在器物上。我在科祖库拉遇见他、为他造这具身体的经过挺有故事……你若感兴趣，随时问我，我可以讲全过程。~
DO ~SetGlobal("C0AuraBG2MuffyStory","GLOBAL",1)~
= ~总之，我都没料到他这回会决定跟别人睡。可若那是你，<CHARNAME>，我倒不该太意外。到这份上，我觉得我们几乎分不开了。~
EXTERN BC0AURA2 ROM-12-0

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",26)~ THEN BC0AURA2 ROM-13
~我正在想，<CHARNAME>……~ [C0BLANK]
END
  ++ ~想什么？~ + ROM-13-2
  ++ ~你总在想。~ + ROM-13-1
  ++ ~你什么时候不想？偶尔你该学着珍惜当下。~ + ROM-13-1
  ++ ~现在不行，奥拉。~ + ROM-13-0

CHAIN BC0AURA2 ROM-13-0
~哦，好。那我睡前再告诉你。~
EXIT

CHAIN BC0AURA2 ROM-13-1
~我不是……好吧，那大概是真的。可这回不一样。听我说完！~
EXTERN BC0AURA2 ROM-13-2

CHAIN BC0AURA2 ROM-13-2
~我们前头还有长路，可它终究得结束，对吧？而且……假定一切顺利，我们肯定会再走一趟，对吧？这一回，是我们自己选的。~
= ~我们不该想想下一趟旅程去哪儿吗？也许……就我们两个？你想去哪儿都行，从北到南，从东到西。你选，我乐意跟着你。~
END
  ++ ~你真计划得那么远？你就*那么*有信心我们会成功。~ + ROM-13-3
  ++ ~那由你决定。我拖着你去处理我所有的问题，我觉得让你来选才公平。~ + ROM-13-4
  ++ ~我想去的地方各式各样。冰封北地，或深水城、卡林珊，甚至更远……~ + ROM-13-5
  ++ ~回家怎么样？我的，还有你的。我想亲眼看看兰坦。~ + ROM-13-6
  ++ ~现在真不是谈这个的时候，奥拉。我们也许都走不到那么远。~ + ROM-13-7

CHAIN BC0AURA2 ROM-13-3
~嗯……我当然有信心。我为什么不该有？怀疑我们的机会就像怀疑你，你不知道吗？我见过的事够多，知道绝不该赌你输。永远不。~
EXTERN BC0AURA2 ROM-13-4

CHAIN BC0AURA2 ROM-13-4
~你若真不知道去哪儿，也许我能提个建议？冰风谷和十镇。我想看看我祖母那么有热情写下的那趟冒险。~
EXTERN BC0AURA2 ROM-13-8

CHAIN BC0AURA2 ROM-13-5
~我会很兴奋去北地。不只因为那是我没经历过的……还因为我想看我能不能循着我祖母密涅瓦的足迹，她最伟大的冒险就在那儿。~
EXTERN BC0AURA2 ROM-13-8

CHAIN BC0AURA2 ROM-13-6
~哦，那不用说……我已向家人和朋友承诺，有一天会介绍你给他们。可在之前，趁我们还保有冒险心态，还有几处景致要看，你不觉得吗？~
EXTERN BC0AURA2 ROM-13-4

CHAIN BC0AURA2 ROM-13-7
~*叹气* 我知道。虽说扫兴，我还没排除所有可能。可同时，我不会怀疑你，看过我们一起经历的一切之后不会。~
EXTERN BC0AURA2 ROM-13-8

CHAIN BC0AURA2 ROM-13-8
~说不准会发生什么，可我选择乐观。就算我知道我们俩总有可能遭遇可怕的事，我相信我们的力量。就像我祖母密涅瓦和她的队伍多年前克服了一切试炼。~
= ~撇开那个，我……很震惊，<CHARNAME>。我径自谈我们一起将来的旅程，你竟一点不觉得不自然。就像你本来就预料会这样。~
END
  ++ ~嗯，为什么不？如你之前说的，我们现在几乎分不开了。~ + ROM-13-9
  ++ ~你觉得我们就道个别，然后就完了？我以为我们很亲近。~ + ROM-13-10
  ++ ~我没真想过那个。我只想继续冒险。~ + ROM-13-11

CHAIN BC0AURA2 ROM-13-9
~……哦。嘿嘿，你说得对。我真傻，怎么会忘？~
EXTERN BC0AURA2 ROM-13-12

CHAIN BC0AURA2 ROM-13-10
~不，不！我当然不否认我们现在比普通同伴更亲近。一直以来都是我想到更进一步……~
EXTERN BC0AURA2 ROM-13-12

CHAIN BC0AURA2 ROM-13-11
~嗯，只要你不排除我跟着你、不管你走多少趟冒险这想法……那对我就够了。~
EXTERN BC0AURA2 ROM-13-12

CHAIN BC0AURA2 ROM-13-12
~那就说定了？这趟之后，下一趟我们还在一起？我已经开始期待了。~
= ~我知道这……这一切……不会永远持续。那是我们凡人必须接受的。可还是……若真是如此，我想尽量充分利用。我想拥有所有最棒的回忆来跟你分享。~
= ~你已给了我所能要求的一切。~
EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",28)~ THEN BC0AURA2 ROM-14
~<CHARNAME>，我想跟你谈件事。这回真的很重要……至少对我。希望对你也是。~ [C0BLANK]
END
  ++ ~嗯？~ + ROM-14-1
  ++ ~那说吧。我听着。~ + ROM-14-1
  ++ ~非得现在吗？~ + ROM-14-2

CHAIN BC0AURA2 ROM-14-1
~我们在一起有一阵了。它在我人生里不算很长，可对我……它也许成了最重要的。一点一点，我已忘了没有你在身边、跟你说话、被你握着手、听我把心倒空是什么滋味……我也不想去想象。~
= ~所以，我不如现在就说……因为你用所有支持给了我勇气。我……完全爱上你了，<CHARNAME>。而且……不管怎样，我准备把余生献给你，不管那意味着什么。若你能接受我，接受我所有的样子，也接受我没有的样子。~
= ~你的感觉跟我不同也没关系。我的心已做了选择，可不管你怎么答……我只想知道。~
END
  ++ ~我也爱你，奥拉。我想你已经明白。~ + ROM-14-3
  ++ ~那这就是我的回答。（吻她）~ + ROM-14-4
  ++ ~对不起，奥拉，我在意你……可不是那种方式。~ + ROM-14-5

CHAIN BC0AURA2 ROM-14-2
~是。我尽量不说太长、太戏剧。可你得听……求你。~
EXTERN BC0AURA2 ROM-14-1

CHAIN BC0AURA2 ROM-14-3
~我……我是。我只是不敢相信自己的逻辑告诉我的。我还不是我想成为的那个人……那个有勇气用几句聪明话表白、然后像我想的那样吻你的人。~
= ~你愿意……替我做到吗，<CHARNAME>？我想了好久了。~
END
  ++ ~当然。过来。~ + ROM-14-4
  ++ ~其实……现在不行。我需要些时间理清感情。~ + ROM-14-7

CHAIN BC0AURA2 ROM-14-4
~嗯……终于……~
EXTERN BC0AURA2 ROM-14-7

CHAIN BC0AURA2 ROM-14-5
~我……明白。那是你的感受，我改不了……我想我的感情也不会变，好一阵都不会。可我会把它留在心里……不管怎样，我仍能跟你拥有某些形式的快乐。~
= ~求你……别让这事隔在我们之间。我会一直在这儿支持你，不管得用什么方式。~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BC0AURA2 ROM-14-6
~哦。当然，不急……反正最重要的话我已听到了。剩下的……大概随时间来吧。~
EXTERN BC0AURA2 ROM-14-7

CHAIN BC0AURA2 ROM-14-7
~我高兴得不得了，<CHARNAME>，别在意眼泪……我只是需要发泄出来，像我姐姐们以前教我的。~
= ~嘿嘿，我现在已经又是平常的我了。可一切不会完全一样了，对吧？如今都会更好。那是我们俩的新未来。~
END
  ++ ~是。一起。~ + ROM-14-8
  ++ ~那我们去面对它吧。~ + ROM-14-8
  ++ ~走吧。我们前头还有长路。~ + ROM-14-8

CHAIN BC0AURA2 ROM-14-8
~是……~
= ~我会走在你身边，<CHARNAME>，不是你身后，再也不是……我想我再也不需要犹豫了。~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",2)~ EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",30)~ THEN BC0AURA2 ROM-15
~我最近一直在想我祖母。密涅瓦·格利默夏恩，一位传奇冒险者，也许连我们的壮举都让她相形见绌。~ [C0BLANK]
= ~虽说我从没见过她，我父亲有时会跟我讲她的故事。他自己关于她的记忆也不多，因为她在他还年轻时离开兰坦去冒险了……可关于她的传说每隔几年仍会传回我们家乡。~
END
  ++ ~我听说她在一代之前算是北地的英雄。~ + ROM-15-1
  ++ ~听来你很敬佩她。~ + ROM-15-2
  ++ ~你觉得她也许还在某处？她很可能还活着。~ + ROM-15-3

CHAIN BC0AURA2 ROM-15-1
~对，正是。你知道她在那趟远征里也跟贝尔海费特打过吗？隔了这么久，你们俩竟打过同一个敌人，真让我措手不及。~
EXTERN BC0AURA2 ROM-15-4

CHAIN BC0AURA2 ROM-15-2
~我确实……我佩服她作为选择探索岛屿之外世界的兰坦人，独自成就了那么多，也佩服过她那种人生所需的勇气。我只希望她从没忘记自己是我们的族人。~
EXTERN BC0AURA2 ROM-15-4

CHAIN BC0AURA2 ROM-15-3
~*叹气* 谁知道。若她还在，我希望她至少回家一次。至少为我爸爸。有时他生日会收到来自世界各地的礼物，却没有寄件人……可那是她也许还记得自己曾在兰坦生活过的唯一线索。~
EXTERN BC0AURA2 ROM-15-4

CHAIN BC0AURA2 ROM-15-4
~我从没见过她，可我愿意想象自己许多方面像她……想到这时，我就想，她是否也在旅途中爱上了谁，就像我一样？~
END
  ++ ~我觉得很可能。我们是有感情的生灵。我们多数人寻求爱，或至少某种与他人的牵系。尤其那些过孤独冒险生活的人。~ + ROM-15-5
  ++ ~那她跟你祖父的关系呢？你知道些什么吗？~ + ROM-15-6
  ++ ~若她像你，身边也有个像我的人陪着？我能想象他们就像我们。~ + ROM-15-7

CHAIN BC0AURA2 ROM-15-5
~我也这么觉得。我知道某种程度上，在随时可能结束的人生里寻求亲密不合逻辑……可我们忍不住，也许也不该忍。那正是让我们成为活的生灵、而非构造体的部分。~
EXTERN BC0AURA2 ROM-15-7

CHAIN BC0AURA2 ROM-15-6
~我只知道一点。她当初把第一次婚姻当作责任而非选择。就算她努力维持，最终仍破裂……她离开去追自己的梦。~
= ~后来我祖父亚瑟·迪内尔斯特兰德再婚，有了两个孩子……之后他和第二任妻子在外域探访时因一场悲惨事故葬身海上。~
EXTERN BC0AURA2 ROM-15-7

CHAIN BC0AURA2 ROM-15-7
~我爸爸凯罗斯以前把祖母写的书当睡前故事读。书里没清楚描写她在北地追随的那位英雄是谁，后来许多版本都填满各自的解读……可我愿意想象他们很像你。~
= ~这样我就能想，我们走到一起不只是一个幸运的巧合。可那也只是我的妄想……就算一切纯是运气，我仍只有感激。~
= ~你想过有一天会有人写下我们的故事吗，<CHARNAME>？~
END
  ++ ~毫无疑问。我打赌伏罗已经动笔了，说不定连结局都自己编好了。~ + ROM-15-8
  ++ ~我觉得我们的故事值得被讲出来。~ + ROM-15-9
  ++ ~但愿没有。我不想要那种注意。~ + ROM-15-10
  ++ ~你不打算像你祖母那样自己写？~ + ROM-15-11
  ++ ~也许会有，也许不会。我两种都不在意。~ + ROM-15-9

CHAIN BC0AURA2 ROM-15-8
~哦……说到他，你旅途中确实遇见过他，对吧？若再见到他，我们得告诉他别编太多。~
EXTERN BC0AURA2 ROM-15-9

CHAIN BC0AURA2 ROM-15-9
~嗯，就算有人写下我们的传说，就算像我读的那故事一样充满自由发挥……至少我永远知道全部真相。我还能享有把它全藏给自己的特权……嘿嘿。~
EXIT

CHAIN BC0AURA2 ROM-15-10
~说实话，我也拿不定主意。若有一天有人被我们的故事激励，那也许不错……可我想我会有点难为情。~
EXTERN BC0AURA2 ROM-15-9

CHAIN BC0AURA2 ROM-15-11
~我想过，可，呃……我现在若真去写，不确定适不适合给人读。我大概只会用最谄媚的方式写你，别的什么都不写。~
EXTERN BC0AURA2 ROM-15-9

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",32)~ THEN BC0AURA2 ROM-16
~我真是个幸运的人，对吧？~ [C0BLANK]
END
  ++ ~你什么意思？~ + ROM-16-1
  ++ ~你才刚发现？~ + ROM-16-1
  ++ ~你当然是。毕竟你有我。~ + ROM-16-2
  ++ ~现在不行，奥拉。~ + ROM-16-0

CHAIN BC0AURA2 ROM-16-0
~对……抱歉。我不必把一切都想通。有时光知道事实就够。~
EXIT

CHAIN BC0AURA2 ROM-16-1
~我只是在回想我的人生。发生过的一切，好坏都算……~
= ~从前我从没觉得自己是多幸运的人。我过去不止一个黑暗时刻，有些记忆我希望自己没有……可每一次，似乎都总有东西作为回报赐给我。~
= ~我离开兰坦去看世界时，本可能葬身海里……可相反，科祖库拉一位好心的女祭司救了我，待我如女儿。我遭受了巨大失去，却因此到了剑湾遇见你。后来我跟你分开……只为再相逢，跟你比从前更亲近。~
= ~这不真是幸运吗？不只是免于悲剧，而是每次都能从中变得更好、更强。~
END
  ++ ~你描述的不是运气。是无论面对什么苦都撑过去的决心。~ + ROM-16-3
  ++ ~也许。我觉得若我们都能免于某些受的痛，会更好。~ + ROM-16-4
  ++ ~我猜你确实很幸运。想想我也一样。我人生里挑战很多，可好事更多。~ + ROM-16-5
  ++ ~这不值得想。我们能做的只是接受人生中发生的一切，好坏都算。~ + ROM-16-6

CHAIN BC0AURA2 ROM-16-2
~嗯，这不用说。那是最幸运的部分。可就算我最看重它，仍不止于此。~
EXTERN BC0AURA2 ROM-16-1

CHAIN BC0AURA2 ROM-16-3
~若要说决心，<CHARNAME>，我觉得没人能赢过你。你的人生是一串无尽的麻烦，可你总能越过这一切继续向前。~
EXTERN BC0AURA2 ROM-16-7

CHAIN BC0AURA2 ROM-16-4
~我想不管哪样，归根到底都是希望。我们可以希望生活尽量善待我们，同时，在事情看着最糟时……我们仍能希望会有某样东西……或某个人在那儿让一切变好。不管要多久。~
EXTERN BC0AURA2 ROM-16-7

CHAIN BC0AURA2 ROM-16-5
~嘿嘿，我同意。我知道我们许多日子被血、死与痛围绕……可不知怎么，我们仍有力量不仅撑下去，还能在小事里找到慰藉，让生活亮些。像甜点、跳舞，或在难走时有人可抱。~
EXTERN BC0AURA2 ROM-16-7

CHAIN BC0AURA2 ROM-16-6
~你说得对。我能感激我人生变成这样，可就算不是这样……我也仍得继续。只是若我人生里没有你，我大概不会这么快乐。~
EXTERN BC0AURA2 ROM-16-7

CHAIN BC0AURA2 ROM-16-7
~你知道，我从没真想过放弃……一次都没有。就算在大冰海被丽华老师救起、忘了自己是谁时……就算那时，我也一直试着用给我的名字与人生把破碎的自己拼回去，直到想起我有爱我的人，有可回去的地方。~
= ~所以……<CHARNAME>，你也绝不能放弃，好吗？我不想你忘记你身后有……或身边有想让你的人生尽量充满爱与喜悦、如你应得的那样的人。最要紧的是我。~
END
  ++ ~别担心。我不会放弃，我还有那么多理由要快乐。~ + ROM-16-8
  ++ ~你一直担心我把感情憋着？那很贴心，可你真不必。~ + ROM-16-9
  ++ ~有些日子我希望我的人生不是这样，可有你在这儿支持，会容易些。~ + ROM-16-10
  ++ ~够了，奥拉。你不该自称懂我的感受。没人能懂。~ + ROM-16-11

CHAIN BC0AURA2 ROM-16-8
~那我们俩都一样。毕竟伴侣就是为此，对吧？我们会为彼此继续战斗，直到不必再战的那天。然后我们并肩坐下，互相分享快乐。~
EXTERN BC0AURA2 ROM-16-12

CHAIN BC0AURA2 ROM-16-9
~我正盼着那个，可我还得确认……你太强了，<CHARNAME>，强到让我嫉妒……可同时，最强的人最难看出何时最需要帮助。~
EXTERN BC0AURA2 ROM-16-12

CHAIN BC0AURA2 ROM-16-10
~那正是我在这儿的原因。我也许又小又脆，可你若需要，我会尽力成为你可倚靠的人……毕竟我不能总靠你。~
EXTERN BC0AURA2 ROM-16-12

CHAIN BC0AURA2 ROM-16-11
~不，我绝不会那么说。我真的爱你，<CHARNAME>，可我可能永远不能完全懂你……许多方面，你对我和对所有人都仍是谜。我一点也不介意。可我在这儿帮忙，若我觉得能帮，我就会帮。~
EXTERN BC0AURA2 ROM-16-12

CHAIN BC0AURA2 ROM-16-12
~……来，让我抱你一会儿。也许我的运气会顺便蹭到你身上……我绝对没拿这个当借口。~
= ~感觉怎样？~
END
  ++ ~感觉很好。我只希望它能久一点。~ + ROM-16-13
  ++ ~不够。再过来，让我好好抱抱你。~ + ROM-16-14
  ++ ~谢谢你陪着我。我最爱你这颗体贴的心。~ + ROM-16-15
  ++ ~好了，够了。我一天的甜头吃够了。~ + ROM-16-16

CHAIN BC0AURA2 ROM-16-13
~那……再来一次？世界不会那么快把我们撇下。~
EXTERN BC0AURA2 ROM-16-17

CHAIN BC0AURA2 ROM-16-14
~不，不……好吧。我只希望你别养成习惯。肺里的气被挤空了，我大概帮不上你什么。~
== BC0AURA2 IF ~Global("C0AuraKnowsBG1","GLOBAL",1) !InParty("IMOEN2")~ THEN ~*叹气* 你快跟爱蒙一样糟了……我已开始怕她回来后会是什么样。~
== BC0AURA2 IF ~Global("C0AuraKnowsBG1","GLOBAL",1) InParty("IMOEN2")~ THEN ~*叹气* 你快跟爱蒙一样糟了……我奇怪我怎么还没被你们俩闷死。~
EXTERN BC0AURA2 ROM-16-17

CHAIN BC0AURA2 ROM-16-15
~而我……还因为不止那些爱你。可也许有一天，你更多长处也会传到我身上，嗯？~
EXTERN BC0AURA2 ROM-16-17

CHAIN BC0AURA2 ROM-16-16
~那……我猜你没心情尝我最新那批甜点了？我觉得比上次做得好多了。嘿嘿……~
EXTERN BC0AURA2 ROM-16-17

CHAIN BC0AURA2 ROM-16-17
~那，回现实世界吧。很难期待更多冲突与战斗，可如今成功对我比以往更重要，所以我会继续尽力。为你，<CHARNAME>……~
EXIT

/// BRYNNLAW

CHAIN IF ~Global("C0AuraBG2BrynnlawTalk","GLOBAL",1)~ THEN C0AURA2J BRYNNLAW
~我们终于能下船了？哦……谢天谢地……我不知道还能不能多撑一天船。就算这地方看着脏乱危险，至少知道我们不会被它吞掉，也算松了口气。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2BrynnlawTalk","GLOBAL",2)~
END
  ++ ~对不起，让你经历那个，奥拉。我知道你对海有可怕的记忆。~ + BRYNNLAW-1
  ++ ~同意。我也不喜欢待在船上……我怕淹死这念头。~ + BRYNNLAW-2
  ++ ~我原希望你能最终克服对海上旅行的恐惧。~ + BRYNNLAW-3
  ++ ~振作起来。现在是你绝不能在我面前垮掉的时候。~ + BRYNNLAW-0

CHAIN C0AURA2J BRYNNLAW-0
~我……我不会，<CHARNAME>。我是说垮掉。我知道我们来这儿对你多重要……我不会让它拖累我们。~
EXTERN C0AURA2J BRYNNLAW-8

CHAIN C0AURA2J BRYNNLAW-1
~我以为过了这么久、我长进这么多，也许它不会那么吓我了……就算有可能再经历像上次淹死那样可怕的事，我也够能干，这次能找到出路……可我连办法都想不出来。我只是一直发抖。~
== C0AURA2J IF ~OR(2)
Global("C0AuraRomanceActive","GLOBAL",1)
Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~我很高兴整趟旅程你都在我身边，<CHARNAME>。不然，也许我又会崩掉。我想我能想到的唯一解法，就是有你在护着我。~
== C0AURA2J ~我该更强，<CHARNAME>。我知道我比从前强。为什么这种事还拖住我？我是不是让你失望了？~
END
  ++ ~有些事不是靠力量就能克服的，奥拉。创伤就是其一。~ + BRYNNLAW-4
  ++ ~总有些事超出你能承受。那没什么可羞愧的。~ + BRYNNLAW-4
  ++ ~别那么想。你很强。我知道你很强。有一天你能把这抛在身后。不必是现在。~ + BRYNNLAW-4
  ++ ~你若继续这样抽搭，那是的。我对你失望。~ + BRYNNLAW-5

CHAIN C0AURA2J BRYNNLAW-2
~你也这样？我原有点担心，这种事就足以动摇我，会让你失望……说来怪，我很高兴知道你跟我没那么不同。~
EXTERN C0AURA2J BRYNNLAW-1

CHAIN C0AURA2J BRYNNLAW-3
~我……我也希望如此……~
EXTERN C0AURA2J BRYNNLAW-1

CHAIN C0AURA2J BRYNNLAW-4
~我——谢谢你，<CHARNAME>，那有用。我只是需要点鼓励……我会没事，真的。我熬过来了，这回身边还有朋友。~
= ~不管我在经历什么，我担心爱蒙在那座……幽禁所里可能面对好几倍糟的事。光是看那座塔就让我害怕。~
= ~别让我拖你后腿，<CHARNAME>。我承诺过陪你走完这事，我现在不会成累赘。~
END
  + ~OR(2)
Global("C0AuraRomanceActive","GLOBAL",1)
Global("C0AuraRomanceActive","GLOBAL",2)~ + ~过来。让我抱你一会儿，等你不再发抖。~ + BRYNNLAW-6
  ++ ~没事。我们已经到了，急着往前也不保证能解决什么。~ + BRYNNLAW-7
  ++ ~爱蒙重要，你也重要。你需要多久复原，我们就花多久。~ + BRYNNLAW-7
  ++ ~那就走吧。我们浪费的时间够多了。~ + BRYNNLAW-8

CHAIN C0AURA2J BRYNNLAW-5
~我……对不起……~
EXIT

CHAIN C0AURA2J BRYNNLAW-6
~是……求你……~
= ~嘿嘿……你像一剂魔法药，<CHARNAME>。也许我该研究你而不是研究别的。~
EXTERN C0AURA2J BRYNNLAW-9

CHAIN C0AURA2J BRYNNLAW-7
~我会没事……我只需深呼吸几下……再走一走把紧张甩掉。~
EXTERN C0AURA2J BRYNNLAW-9

CHAIN C0AURA2J BRYNNLAW-8
~是……我们该继续。~
= ~……我勇敢……我勇敢。我勇敢。~
EXIT

CHAIN C0AURA2J BRYNNLAW-9
~看？我已经恢复正常了。从前，连这也许会让我受不了。走吧，<CHARNAME>。爱蒙在等着。~
EXIT

/// SPELLHOLD

CHAIN IF ~Global("C0AuraBG2SpellholdTalk","GLOBAL",1)~ THEN C0AURA2J SPELLHOLD
~这……这地方从里面看更糟，<CHARNAME>。它不该存在……不该是现在这样。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2SpellholdTalk","GLOBAL",2)~
END
  ++ ~你说得对。这地方更像用来折磨人，而非康复。~ + SPELLHOLD-1
  ++ ~魔法危险。总得有东西把她们控制住。~ + SPELLHOLD-2
  ++ ~我们现在没时间谈这个，奥拉。找到爱蒙，离开这儿。~ + SPELLHOLD-0

CHAIN C0AURA2J SPELLHOLD-0
~好。~
EXTERN C0AURA2J SPELLHOLD-6

CHAIN C0AURA2J SPELLHOLD-1
~不管一个法师多危险，他们仍该被当作人……而非危险野兽或实验品。这全错了。~
EXTERN C0AURA2J SPELLHOLD-3

CHAIN C0AURA2J SPELLHOLD-2
~我理解，<CHARNAME>，真的，我懂，可……就算法师也不只是他们的魔法。而束缚……不该这样处理。~
EXTERN C0AURA2J SPELLHOLD-3

CHAIN C0AURA2J SPELLHOLD-3
~我们兰坦也有收容所……忏悔圣所。我从没见过它是什么样，每次我问父亲，他都会沉默……可就算如此，我希望它跟这儿一点也不像。我永远不想把自己的族人想得那么糟。~
= ~那是给创新变得太危险的人的最终手段，就算那时，他们仍有权保留自由意志……我们有些学术著作就是在它的厅堂里写成的，可这儿……看来谁被带进来都无所谓。~
= ~每个人看着都好茫然，要么彻底被打垮，要么碎了……我恨这地方，<CHARNAME>。我恨它的一切。~
END
  ++ ~我从没听你说过恨什么，奥拉。从你的角度，一定真有那么糟。~ + SPELLHOLD-4
  ++ ~是极端，可我觉得这种地方的想法是必要的恶。否则，我们也许只是在放任更糟的事。~ + SPELLHOLD-5
  ++ ~我们不会久留。一找到爱蒙，我们就离开。~ + SPELLHOLD-6

CHAIN C0AURA2J SPELLHOLD-4
~该有个允许的限度，越线的人有时会危险。可若能帮，就该帮。这……我看不出这儿有帮任何人的意思。~
EXTERN C0AURA2J SPELLHOLD-6

CHAIN C0AURA2J SPELLHOLD-5
~我们又怎么知道这种地方不会只让他们更糟？万一他们被迫永远留在这儿？那不吓人吗？~
EXTERN C0AURA2J SPELLHOLD-6

CHAIN C0AURA2J SPELLHOLD-6
~我们……我们走吧，<CHARNAME>。我不知道我更想要哪个，是离开这儿还是把它全炸了……唯一拦着我的，是这些可怜的灵魂。我希望他们仍有机会。~
EXIT

/// UNDERDARK

CHAIN IF ~Global("C0AuraBG2RomanceDrowTalk","GLOBAL",1)~ THEN BC0AURA2 ROM-DROW
~哦，我们终于有点自己的时间。在这些卓尔面前装成别人真累。你撑得怎么样，<CHARNAME>？~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2RomanceDrowTalk","GLOBAL",2)~
END
  ++ ~我也想问同样的话。我更担心你撑得怎么样。~ + ROM-DROW-1
  ++ ~别担心我。我会带我们过去。~ + ROM-DROW-2
  ++ ~没我想的那么糟。也许因为我们是女的。~ + ROM-DROW-3
  ++ ~现在别说。也许有人在听。~ + ROM-DROW-0

CHAIN BC0AURA2 ROM-DROW-0
~对，你说得对。可这也许是这地方少有的机会，所以你休息时让我陪着你，好吗？~
EXTERN BC0AURA2 ROM-DROW-9

CHAIN BC0AURA2 ROM-DROW-1
~我？我看着不太好吗？那就糟了。也许我太用力维持凶脸了。唉，这根本不像我。~
EXTERN BC0AURA2 ROM-DROW-4

CHAIN BC0AURA2 ROM-DROW-2
~我明白，<CHARNAME>。你知道我从没停止相信你。~
EXTERN BC0AURA2 ROM-DROW-4

CHAIN BC0AURA2 ROM-DROW-3
~我猜我们该庆幸。呵……好像我还需要被提醒自己幸运似的。~
EXTERN BC0AURA2 ROM-DROW-4

CHAIN BC0AURA2 ROM-DROW-4
~不过别管我。我更担心你，不只眼下处境。就算经历了幽禁所那场可怕折磨之后，你几乎都没好好歇过。而你真睡时……我看得出那也从来不容易。~
= ~我不会叫你别硬撑，因为我确定你知道自己能承受什么，可永远别忘了我在旁边，会尽我所能帮你，好吗？~
END
  ++ ~我真意外，奥拉。我以为你会更害怕，需要我来鼓励你。~ + ROM-DROW-5
  ++ ~谢谢你。我一直有像你这样的人支持，真是福气。~ + ROM-DROW-6
  ++ ~你这么说，我真开始想念你平常那可爱的样子了。~ + ROM-DROW-7
  ++ ~只是别放松警惕。只要在这儿，我们就不安全。~ + ROM-DROW-0

CHAIN BC0AURA2 ROM-DROW-5
~嗯，谁说我不怕？可对，我觉得认识你之后我勇敢多了。也不像起初那样得靠你给勇气。如今我得做得更好，好让你也能反过来靠我。~
EXTERN BC0AURA2 ROM-DROW-8

CHAIN BC0AURA2 ROM-DROW-6
~嘻嘻，知道我对你跟对我一样重要，是我最爱听的话。~
EXTERN BC0AURA2 ROM-DROW-8

CHAIN BC0AURA2 ROM-DROW-7
~唉，这副样子根本不像我，对吧？我本希望这回能摆出冷静疏离的模样，可我知道平常快乐的我才最适合我。~
EXTERN BC0AURA2 ROM-DROW-8

CHAIN BC0AURA2 ROM-DROW-8
~*叹气* 我等不及再见到太阳，也等不及摆脱这伪装。我几乎已经习惯你的新模样，它自有它的美，尤其我还能从你的表情认出你，可我已经开始想念真正的你。~
= ~嗯，现在我们也没办法，对吧？前头还有任务，一旦出了这房间，就又要变回你当女主人、我当仆人。不过在之前……~
EXTERN BC0AURA2 ROM-DROW-9

CHAIN BC0AURA2 ROM-DROW-9
~在这儿我们可以做自己，至少一会儿。我们也许不能信别人，可我们永远能信彼此，那永远不会变。~
DO ~RestParty()~ EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipLetter","GLOBAL",2)~ THEN C0AUSPE1 friend-letter
~致奥瑞莉亚·格利默夏恩女士的信，由塞里菲娜·铜鳞女士自安科里尔直送。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2FriendshipLetter","GLOBAL",3)~
== C0AURA2J ~哦！兰坦来的旁观者信使！我都想不起上次见到是什么时候了。~
END
  ++ ~你们族人用眼魔当信使？~ EXTERN C0AURA2J friend-letter-1
  ++ ~塞里菲娜·铜鳞？我猜是你的熟人。~ EXTERN C0AURA2J friend-letter-2
  ++ ~看来他们给你送东西来了。~ EXTERN C0AURA2J friend-letter-3

CHAIN C0AURA2J friend-letter-1
~不只是随便哪种眼魔，<CHARNAME>。旁观者是守序的生灵、出色的守卫。贡德教团会雇它们送特别重要的东西。~
EXTERN C0AURA2J friend-letter-3

CHAIN C0AURA2J friend-letter-2
~那是我朋友塞莉。她扮成侏儒时用塞里菲娜·铜鳞这个化名。自我介绍成“赤铜龙塞里萨莱瑞克森”不太实用。不过她也可能就那么做，只为看人反应。~
EXTERN C0AURA2J friend-letter-3

CHAIN C0AURA2J friend-letter-3
~你说有塞莉的东西？那我收下。~
== C0AUSPE1 ~很好，女士。一封密封信，于预定日期无误送达，状况与启运时完全一致。~
== C0AURA2J ~谢谢！现在，若我记得没错，应该有一张回执和送达证明要我签，对吧？~
== C0AUSPE1 ~请签这里。~
== C0AURA2J ~好了……哦，也给你几枚硬币当辛苦费。~
== C0AUSPE1 ~非常感谢，女士。祝您日安。~
DO ~EscapeArea()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2FriendshipLetter","GLOBAL",3)~ THEN C0AURA2J friend-letter2
~嗯，一封普通信件我通常不指望这种信使，可塞莉一向有点怪。我很想知道她怎么说服祭司们允许的……以她的性子，多半是耍了什么花招。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2FriendshipLetter","GLOBAL",4)~
== C0AURA2J ~好，我大概该看看她写了什么，对吧？只要把这信筒打开……~
END
  ++ ~那到底怎么开？~ EXTERN C0AURA2J friend-letter2-1
  ++ ~嗯，快弄吧。~ EXTERN C0AURA2J friend-letter2-1
  ++ ~你可以回头自己弄。~ EXTERN C0AURA2J friend-letter2-0

CHAIN C0AURA2J friend-letter2-0
~哦。我本来还想提议我们一起读塞莉的信，可你若没兴趣……那我留着自己有空时看。~
EXIT

CHAIN C0AURA2J friend-letter2-1
~这类金属信筒是为保护信件免受任何环境侵蚀，也确保只有懂窍门的兰坦人能打开。不过这设计有点怪……一定是塞莉自己拼的，所以我想不会那么简单。~
= ~这算是她的癖好。她跟别的赤铜龙一样，一有机会就爱耍把戏。这东西更像某种“机关盒”……所以我得先解开，才能进去看她的信。~
= ~嗯……看看……若我把顶部转三次，那底部就该……啊，好了。现在只要拉这环，然后……~
= ~哦，真聪明，塞莉，可我不会这么轻易认输……我该能把槽往左推两格……再下移一格……右一格……下三、左一、右一……~
= ~啊哈！现在……让我看看……然后她还加了把锁。好，该拿撬锁工具了……~
= ~*咔*~ [AMB_D21]
= ~好了。哦，她当然也把钥匙跟信一起放里面了。总之，现在取出来了，该读了。~
END
  ++ ~你不更想私下读吗？~ EXTERN C0AURA2J friend-letter2-2
  ++ ~那我们一起读。~ EXTERN C0AURA2J friend-letter2-3
  ++ ~我对里面写什么没兴趣。你自己读。~ EXTERN C0AURA2J friend-letter2-0

CHAIN C0AURA2J friend-letter2-2
~其实我更想让你跟我一起读。事实上，你名字很可能会出现在这里。我写给家里的信里写了你许多。~
EXTERN C0AURA2J friend-letter2-3

CHAIN C0AURA2J friend-letter2-3
~好，看看……嗯，塞莉的字进步多了。我们花了好久教她正经写字，好让她真被学院录取，所以很高兴她还没把一切忘光。~
= ~那我就念出来。*咳* “致我最爱的同学，奥拉……”~
DO ~ClearAllActions()
StartCutSceneMode()
CreateCreatureObjectOffset("C0ACERI2","C0Aura",[10.-20])
Wait(2)
PlaySong(%C0AUROM%)
ActionOverride("C0ACERI",StartDialogNoSet(Player1))~ EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipLetter","GLOBAL",4)~ THEN C0ACERI2 friend-letter3
~你过得怎样？我几乎想说已经过了永恒，可对我，我们在桑巴尔学院赖床的日子还像昨天。我猜对龙来说，确实不算久。可我想你！~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2FriendshipLetter","GLOBAL",5)~
== C0ACERI2 ~我确定你没有一天不学新东西。我拼的这一版信筒对你肯定不成问题。以防万一，我还特意把钥匙也送去了，或者说，若我能找到它在哪儿的话……~
== C0AURA2J ~……~
== C0AURA2J ~……真的，塞莉？好，下一行。~
== C0ACERI2 ~大姐朱诺要我告诉你她问好，还要确认你吃得好、没忘记按时睡觉而不是通宵干活。露娜叫你千万别死掉……可我知道她说这话时脸红了，嘿嘿。我甚至从奥尔利尔岛的埃里那儿弄到消息！他想让你看看他学了多少魔法，等你回家跟你比一比。哦，还有别忘了凯罗斯叔叔和吉莉安婶婶。他们都在等你回家，可也希望你想待多久就待多久。~
== C0ACERI2 ~你上路以来寄回兰坦的每封信我都读了。真不敢信这么几年你就经历了这么多！这让我想变回真身飞过去加入你，可我确定一到那儿就不想回来了，而第一工坊绝不会准我长期休假。也许我该再造一个等身复制品当替身，然后再溜出去？你觉得呢？~
== C0AURA2J ~*叹气* 她玩这套永远玩不腻……~
== C0ACERI2 ~哦，莉罗也想留点地方写，所以我现在把笔交给她。对，我写这信时她就站在我背后，只为在我又写十几页时拦住我。~
== C0AURA2J ~莉罗……~
END
  ++ ~又一位你的朋友？~ EXTERN C0AURA2J friend-letter3-1
  ++ ~接着说。~ EXTERN C0AURA2J friend-letter3-2

CHAIN C0AURA2J friend-letter3-1
~是……我最亲近的之一。她其实是我远亲……可对我，她跟我任何一个姐姐一样亲，甚至更亲。我几乎跟她一起长大，我们还一起上了学院。~
EXTERN C0AURA2J friend-letter3-2

CHAIN C0AURA2J friend-letter3-2
~让我看看……哦，你看这里的字迹完全不同，哈哈。~
DO ~ClearAllActions()
StartCutSceneMode()
CreateCreatureObjectOffset("C0LIRO2","C0Aura",[-10.-20])
Wait(2)
ActionOverride("C0LIRO",StartDialogNoSet(Player1))~ EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipLetter","GLOBAL",5)~ THEN C0LIRO2 friend-letter4
~希望你安好，也享受你的旅途，奥拉。我一直等着欢迎你回家，可我希望你做你觉得最有意义的事。~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2FriendshipLetter","GLOBAL",6)~
== C0LIRO2 ~我的状况在稳定好转。如今我能更常出门晒晒太阳……有时甚至能沿海岸散步。我想让你知道，好让你在外头不必为我担心。我知道时机对了我们会再相见。~
== C0LIRO2 ~我一直在看你寄来的所有图纸，它们一如既往地巧妙。它们激励我多去几趟工坊，趁我觉得身体能走那么远时把没完成的项目收尾……再多些时间，我也许连“霹雳”都能准备好测试。倒不是我这弱身子能像你那样带它去冒险……可至少知道它做得成，能让我安心。~
== C0LIRO2 ~塞莉一直缠着我，让我把心里的忧虑说出来，尽管我不想给你添负担。可她说得有理，所以我写一点……戴达罗斯叔叔过去一年干得特别拼。听他的建议，我一直跟你父母住在向日葵之家，因为他如今很少回家。~
== C0LIRO2 ~凯罗斯叔叔一直叫我别担心，因为叔叔知道自己什么最好，他的工作全是为了兰坦……可我还是忍不住担心。他试着瞒我，可我看得出……我知道别人看不出，可自我母亲过世，一直是他在照顾我，我比谁都更了解他。~
== C0LIRO2 ~我知道你帮不上多少忙，奥拉，可把这些写下来，知道你会读到、会在意，确实让我好受些。等你回家，我们要办场庆祝，好好一起分享所有故事。你、我、塞莉、你姐姐们、那对双胞胎……我已经开始期待了。~
== C0LIRO2 ~我们都想你。尤其是我。可我读你的信时，就觉得你就在我身边。那就足够了。~
== C0ACERI2 ~还有，你绝不许不带那位传奇<PRO_HIMHER>本人回家一趟，<CHARNAME>！关于<PRO_HIMHER>的故事让我们全家都坐立不安！~
== C0LIRO2 ~对不起，奥拉，莉罗抢了笔一瞬间写了那句。可我的想法跟她一样。~
== C0AURA2J IF ~OR(2) Global("C0AuraRomanceActive","GLOBAL",1) Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~“就像我们说的，我们读了*所有*信，连那些……让我……”呀！~
== C0ACERI2 IF ~OR(2) Global("C0AuraRomanceActive","GLOBAL",1) Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~连那些让我这种人都脸红的信！嘿嘿，我打赌你读这时她就站在你旁边。我们为你俩加油！~
== C0LIRO2 IF ~OR(2) Global("C0AuraRomanceActive","GLOBAL",1) Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~对不起，我拦不住莉罗写那句。可我也好奇……而且不止一点嫉妒。~
== C0LIRO2 ~我们向你致以最深的爱，我会祈求奇迹缔造者的祝福永远护你。~
== C0AURA2J ~——你的永恒之友，莉罗与塞莉。哦，她们还是老样子……过了这么久，我刚开始担心她们会因为我离开太久而怨我。~
END
  ++ ~这信真甜。~ EXTERN C0AURA2J friend-letter4-1
  ++ ~你有几位了不起的朋友。~ EXTERN C0AURA2J friend-letter4-1
  ++ ~终于完了？我们在这儿站够久了。~ EXTERN C0AURA2J friend-letter4-2

CHAIN C0AURA2J friend-letter4-1
~嘿嘿，是吧？我希望你能亲自见见他们，<CHARNAME>……也许有一天，等这一切过去。~
EXTERN C0AURA2J friend-letter4-2

CHAIN C0AURA2J friend-letter4-2
~谢谢你听我念完这些，<CHARNAME>……身边有个新朋友分享我的快乐，让这事更好。~
= ~哦，等等。还有附言……~
= ~“我随信装了些达拉利的顶级糖果。我打赌你一直馋着，所以我放了你最爱的那种——草莓奶油夹心、外裹糖霜的巧克力松露”……！~
= ~哦，我太想念这些了……给，你也来一颗，<CHARNAME>。~
END
 ++ ~那我就不客气了。~ + friend-letter4-3
 ++ ~当然。~ + friend-letter4-3
 ++ ~不了，谢谢。我不爱甜食。~ + friend-letter4-4

CHAIN C0AURA2J friend-letter4-3
~嗯，真棒，对吧？你哪天一定得来安科里尔，亲眼看看达拉利的糖果铺，<CHARNAME>。~
EXTERN C0AURA2J friend-letter4-5

CHAIN C0AURA2J friend-letter4-4
~嗯？那，算你亏了。那我就多吃点……嘻嘻。~
EXTERN C0AURA2J friend-letter4-5

CHAIN C0AURA2J friend-letter4-5
~我会把信收好……好，走吧。等我真能实现回家的计划，前头还有长路。~
DO ~ActionOverride("C0LIRO",DestroySelf())
ActionOverride("C0ACERI",DestroySelf())~ EXIT

// ToB

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBSaradush","GLOBAL",1)~ THEN BC0AUR25 tob-pocketplane
~又是暴力与战争……跟你在一起就没个完，对吧，<CHARNAME>？我无法想象那会是轻松的人生，命运告诉你“你该去的地方”正好在另一场战斗中央。~
DO ~SetGlobal("C0AuraToBSaradush","GLOBAL",2)~
END
++ ~可不是嘛。~ + tob-saradush-1
++ ~大概这就是身为神裔的代价。~ + tob-saradush-1
++ ~在我看来，有人的地方需要我，那正是我该去的地方。~ + tob-saradush-2
++ ~我不太介意。那只是变强的又一步。~ + tob-saradush-3
++ ~现在不是时候。我们先专心躲炮弹，再谈。~ + tob-saradush-0

CHAIN BC0AUR25 tob-saradush-0
~哦……你说得对。反正我耳朵已经嗡得厉害。我们该找掩护……如果真有的话。~
EXIT

CHAIN BC0AUR25 tob-saradush-1
~我在路上走太久了，也许已忘了安宁是什么样。而且说实话，就算我能再有它……不知怎么，它也不再对劲了。~
= ~我们打到这么远，做了这么多，聚了这么多力量，我不知道离开这种人生还对不对。若我们不在这儿为这一切破坏做点什么，谁会？~
END
  ++ ~你若一直那么想，会被责任压垮的。~ + tob-saradush-4
  ++ ~总会有别的英雄。有人会面对同样艰难的挑战。他们也许变得比我们更强。~ + tob-saradush-5
  ++ ~我懂你的感觉。我不确定自己还能再适应平静生活，这想法让人不舒服。~ + tob-saradush-6

CHAIN BC0AUR25 tob-saradush-2
~不，我懂你。只要知道我在帮人，我不介意事情难。可还是……~
EXTERN BC0AUR25 tob-saradush-1

CHAIN BC0AUR25 tob-saradush-3
~大概也有那层。若我们能足够强，也许就能防止这样的悲剧发生。~
EXTERN BC0AUR25 tob-saradush-1

CHAIN BC0AUR25 tob-saradush-4
~我知道，我知道，这感觉是错的，甚至有点傲慢。我们不是神……嗯，反正我永远不会是。~
EXTERN BC0AUR25 tob-saradush-6

CHAIN BC0AUR25 tob-saradush-5
~而我在想，有一天他们会不会也在进行我们此刻这场对话？~
EXTERN BC0AUR25 tob-saradush-6

CHAIN BC0AUR25 tob-saradush-6
~也许我只是变得执迷。可我一直想帮人，若我没用上我所有的本事与知识，我就觉得自己做得不够。历来如此，我也从没觉得这想法有错……可我从没料到会得到如今这么多。~
= ~如今我得到了，我只觉得……累。我知道有些人会为这么强而兴奋。可我不是。我就是停不下来想我接下来能做什么、该做什么。~
= ~就像现在。我看见这些人，害怕、受伤、不知所措……我就想帮他们。我还不知道怎么做，可我停不下来想有没有法子。~
END
  ++ ~我们会救他们。不管得做什么。~ + tob-saradush-7
  ++ ~我担心你干活想事都太拼。~ + tob-saradush-8
  ++ ~能不能做到不由我们定。我们尽力就好。~ + tob-saradush-9

CHAIN BC0AUR25 tob-saradush-7
~希望如此……比担忧更糟的，是想到我们尽力了却仍失败。我希望不会到那一步……~
EXTERN BC0AUR25 tob-saradush-9

CHAIN BC0AUR25 tob-saradush-8
~也许。可我觉得我从没停止那么做，<CHARNAME>。你知道我除了尽力之外没法满足。~
EXTERN BC0AUR25 tob-saradush-9

CHAIN BC0AUR25 tob-saradush-9
~我很高兴你在这儿，<CHARNAME>。就算现在的我，我也不觉得能独自应付这个。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBSiegeCamp","GLOBAL",1)~ THEN BC0AUR25 tob-siege
~嗯，我们到了……就在战场中央，准备对付你那……呃，巨大、可怕的巴尔后裔哥哥。~
DO ~SetGlobal("C0AuraToBSiegeCamp","GLOBAL",2)~
== BC0AUR25 IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~自龙矛堡之后，我们就没一起打过真正的仗了，对吧，<CHARNAME>？我猜这回若活着出去，我真能开始自称老兵了，哈哈……~
== BC0AUR25 ~这话也许完全不像我，<CHARNAME>，可……碰碰拳，就当讨个彩头？谁知道呢，也许这正是我们需要的信心。~
END
  ++ ~我没想到你信这种事。~ EXTERN BC0AUR25 tob-siege-1
  ++ ~当然，为什么不。~ EXTERN BC0AUR25 tob-siege-2
  ++ ~你别当真。~ EXTERN BC0AUR25 tob-siege-3
  ++ ~现在真不是犯傻的时候。~ EXTERN BC0AUR25 tob-siege-4

CHAIN BC0AUR25 tob-siege-1
~我不……嗯，以前不信。可我也没料到自己会被你带着参加这种半神式的冒险，你知道？~
EXTERN BC0AUR25 tob-siege-5

CHAIN BC0AUR25 tob-siege-2
~好了！行，我满身干劲了。祝我们打赢，<CHARNAME>！~
EXIT

CHAIN BC0AUR25 tob-siege-3
~我是认真的！当然，也许有点不太合适，可谁知道这场打完会怎样？~
EXTERN BC0AUR25 tob-siege-5

CHAIN BC0AUR25 tob-siege-4
~对……那就动手吧。~
EXIT

CHAIN BC0AUR25 tob-siege-5
~那？我想我看见敌人朝我们来了。这也许是我们喘口气的最后几秒……一次……两次？~
END
  ++ ~好，来吧。~ EXTERN BC0AUR25 tob-siege-2
  ++ ~我看冒险终于把你弄疯了。~ EXTERN BC0AUR25 tob-siege-6
  ++ ~别这样。专心取胜。~ EXTERN BC0AUR25 tob-siege-4

CHAIN BC0AUR25 tob-siege-6
~嘿嘿，是吗？也许……可你知道，那感觉也不太坏。~
EXTERN BC0AUR25 tob-siege-4

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBSwordTalk","GLOBAL",1)~ THEN BC0AUR25 tob-swordtalk
~*喘* *吸* 哈……啊……！*喘气* *吸气*……~
= ~挥剑……我精通了那么多东西，可我还是不行……可我必须继续试。~
DO ~SetGlobal("C0AuraToBSwordTalk","GLOBAL",2)~
END
  ++ ~你在练剑？还拿你叔叔的剑。~ + tob-swordtalk-1
  ++ ~别练了，去歇着。那种打法留给受过训的人。~ + tob-swordtalk-0

CHAIN BC0AUR25 tob-swordtalk-0
~我……不。再来一点。你去歇吧，<CHARNAME>。我不会一直这样。~
DO ~RestParty()~ EXIT

CHAIN BC0AUR25 tob-swordtalk-1
~我还在试着驾驭这把剑，<CHARNAME>……就像戴达罗斯叔叔那样。它完全随我的念头而动，像为我的手而生……可我就是还不能完全懂它。~
= ~从前我对剑术从没兴趣……我唯一受过的指导来自丽华老师，她曾提过剑是意志的延伸，挥剑时必须带着意图……可直到我看见叔叔愿意做的事，我才明白她真正的意思。~
= ~我叔叔跟我一样恨冲突与死亡，<CHARNAME>，我知道。而若我们被教导去恨它，那一定还有无数像我们一样的人有同样感受，本不该亲身遭它……可总得有人去面对。不是所有人都能躲。~
= ~我知道。所以我叔叔才选择打造并精通一把剑，尽管他心底最深处希望自己永远不必拔它……如今那把剑在我手里。我得为同样的责任准备好。~
END
  ++ ~你不必。你像任何人一样有权享有安宁。~ + tob-swordtalk-2
  ++ ~那不代表你得用同样方式承担那责任。~ + tob-swordtalk-3
  ++ ~随你。可你若休息、恢复力气，表现会更好。~ + tob-swordtalk-0

CHAIN BC0AUR25 tob-swordtalk-2
~就像其他人一样……可我想为其他人守住那份安宁，<CHARNAME>。我想……我现在有那力量。我只是需要明白……那些有过同样感受的人当时是什么样。~
EXTERN BC0AUR25 tob-swordtalk-3

CHAIN BC0AUR25 tob-swordtalk-3
~这把剑也许永远不是我真想要的答案，可……我不能再只靠我熟悉的东西，<CHARNAME>，不能了。我得面对自己的弱点、去理解它们，就算不能克服。~
= ~请别为我担心。我知道自己的限度，既然知道眼下什么要紧，我不会逼自己太狠，<CHARNAME>，可……我还有长路要走。我想护住我在意的东西，用我叔叔没机会找到的方式。~
DO ~RestParty()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBNearEnd","GLOBAL",1)~ THEN BC0AUR25 tob-nearend
~等哪天这一切结束……我会在自己床上醒来，准备收拾行装继续听你指挥，<CHARNAME>……然后我得提醒自己你已经不在了。~
DO ~SetGlobal("C0AuraToBNearEnd","GLOBAL",2)~
= ~我会想你。~
END
  ++ ~我也会想你。~ + tob-nearend-1
  ++ ~就算这一切之后，我们仍能一起旅行。~ + tob-nearend-2
  ++ ~谢谢你一路支持我。~ + tob-nearend-1
  ++ ~现在别多愁善感。不是时候。~ + tob-nearend-0

CHAIN BC0AUR25 tob-nearend-0
~我知道这也许不是最好的时候……可我需要说出来。就这样。我很高兴一路跟着你走到这里。~
EXIT

CHAIN BC0AUR25 tob-nearend-1
~越接近终点，继续走在你身边就越觉得奇怪……据我所知，这些时刻也许就是最后的几次。你注定要成就更伟大的事。~
= ~这让你害怕吗，<CHARNAME>？还是你期待将来的一切？~
END
  ++ ~两者都有点。~ + tob-nearend-3
  ++ ~我只是累了。这些我从没想要过。~ + tob-nearend-4
  ++ ~成神之路在等我。我欣喜若狂。~ + tob-nearend-5
  ++ ~我不知道。~ + tob-nearend-6

CHAIN BC0AUR25 tob-nearend-2
~我……我想那样。可谁知道你的将来会怎样，<CHARNAME>？~
EXTERN BC0AUR25 tob-nearend-4

CHAIN BC0AUR25 tob-nearend-3
~听着虽不合逻辑，可我想我明白。你所知的人生也许永远改变……那既让人兴奋也让人恐惧。~
EXTERN BC0AUR25 tob-nearend-6

CHAIN BC0AUR25 tob-nearend-4
~命运把神性这么重的担子强加给你，真残酷，<CHARNAME>。不过就我而言，至少松了口气它给了我们相识的机会。~
EXTERN BC0AUR25 tob-nearend-6

CHAIN BC0AUR25 tob-nearend-5
~那是我大概永远无法领会的奖赏，<CHARNAME>。就算我不确定自己会喜欢，某种意义上我仍……羡慕你。若那是你追求的，我希望它会让你快乐。~
EXTERN BC0AUR25 tob-nearend-6

CHAIN BC0AUR25 tob-nearend-6
~我没资格告诉你你的命运是好是坏，<CHARNAME>。可我能保证我一直支持你到这里，现在也不会停。~
= ~我们走了这么远，战斗、活下来，学到任何书或讲课都教不了的东西……还结下了也许一生不会再有的友谊。~
= ~谢谢你的一切。就算我们分开，距离远到无法衡量……我知道你的一部分会永远与我同在。~
END
  ++ ~我们永远不会隔那么远。我随时准备来帮你，或只是你若想再见面。~ + tob-nearend-7
  ++ ~我会永远珍惜我们的友谊。就算我成了神，那也不会变。~ + tob-nearend-8
  ++ ~我没那么深的感情，可你一直是个有用的盟友。~ + tob-nearend-9
  ++ ~够了。等我们把事情了结，再多愁善感。~ + tob-nearend-10

CHAIN BC0AUR25 tob-nearend-7
~你也是！你若真来兰坦，我一定把我一直在做的一切，还有我故乡所有了不起的地方都展示给你！~
EXTERN BC0AUR25 tob-nearend-10

CHAIN BC0AUR25 tob-nearend-8
~嘿嘿，我想没多少人能吹嘘自己被未来的神看重。我不是爱要求太多的人，可也许偶尔给点眷顾的迹象，好让我知道你在想着我，行吗？~
EXTERN BC0AUR25 tob-nearend-10

CHAIN BC0AUR25 tob-nearend-9
~你对我的看法不如我对你深，我也不介意。不管你出于什么愿意一直让我跟着你，都不改变我多感激你。~
EXTERN BC0AUR25 tob-nearend-10

CHAIN BC0AUR25 tob-nearend-10
~我们会赢，<CHARNAME>。我会尽一切为你求成。现在，以及你需要我的任何时候。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBLoveTalk","GLOBAL",2)~ THEN BC0AUR25 tob-rom-1
~一场战斗刚完，又进下一场……到头来总得靠我们。~ [C0BLANK]
DO ~IncrementGlobal("C0AuraToBLoveTalk","GLOBAL",1)~
= ~我猜好好歇一歇、享一刻安宁从来就不在选项里，对吧？我原希望经历这一切之后能跟你平静相处一阵。~
END
  ++ ~我们迟早会有机会。~ + tob-rom-1-1
  ++ ~我也这么想。~ + tob-rom-1-2
  ++ ~我倒觉得我们得到的那点舒适已超出预期。~ + tob-rom-1-3
  ++ ~现在没时间谈这个，奥拉。~ + tob-rom-1-0

CHAIN BC0AUR25 tob-rom-1-0
~对……你说得对。我们找个更安全的地方。~
EXIT

CHAIN BC0AUR25 tob-rom-1-1
~希望如此……我一直梦想有一天我们能去某个美丽的世外桃源，就我们两个浪漫出游……远离这一切流血。~
EXTERN BC0AUR25 tob-rom-1-4

CHAIN BC0AUR25 tob-rom-1-2
~嗯，这也不算什么新鲜事了……再说，我都跟你下过地狱又回来了。还能糟到哪去？~
EXTERN BC0AUR25 tob-rom-1-4

CHAIN BC0AUR25 tob-rom-1-3
~*叹气* 嗯，那一直是你的正常生活……对我也是，自我签下这一切。不过我一点也不后悔……嘿嘿。~
EXTERN BC0AUR25 tob-rom-1-4

CHAIN BC0AUR25 tob-rom-1-4
~我没天真到以为这么快就全结束了，可……我真的很喜欢待在苏达尼斯尔。光是终于能跟你相处、不必担心被追杀或等着下一场战斗，我就很开心。~
= ~就一起坐在桌边平静吃顿饭，牵你的手走过城区，经过宫殿时跟艾尔希姆女王打招呼……经历了这一切之后，那像一场梦。~
= ~也许我只是被一点舒适惯坏了，可我们还能再有的，对吧，<CHARNAME>？~
END
  ++ ~当然会。这趟旅程之后，我们有的是时间。~ + tob-rom-1-5
  ++ ~谁知道呢？什么都可能发生。~ + tob-rom-1-6
  ++ ~我不能保证。我的命运、我父亲的王座在等着。~ + tob-rom-1-7
  ++ ~等我们确定今天不会死，再想将来吧，奥拉。走吧。~ + tob-rom-1-0

CHAIN BC0AUR25 tob-rom-1-5
~我期待那一天。不再有战斗，身后不再有尸体，没有怪物或恶人索我们的命……只有你和我。我最想要那个……那为什么我想它时却不能开心？~
EXTERN BC0AUR25 tob-rom-1-8

CHAIN BC0AUR25 tob-rom-1-6
~是……什么都*可能*发生……连我全心盼望的事也可能永远不成真。~
EXTERN BC0AUR25 tob-rom-1-8

CHAIN BC0AUR25 tob-rom-1-7
~我真希望你不会那么说……过了这么久，我一直能把你当一个人看，我也因此爱你，<CHARNAME>。可我不能忘记你不止如此，就算那不是你的选择。~
EXTERN BC0AUR25 tob-rom-1-8

CHAIN BC0AUR25 tob-rom-1-8
~*叹气* 我这么沮丧，一定是这些混乱压到我身上了。我本该是你的支柱，<CHARNAME>，不是拖你下去的那个。~
= ~我在想别的……外头别的巴尔后裔，是否也在经历同样的事。有多少人只想要正常生活，却一再被残忍夺走机会。~
= ~你想过吗，<CHARNAME>？想他们？~
END
  ++ ~我有时想过。若他们有些就像我，若我们本可做朋友，甚至做真正的兄妹。~ + tob-rom-1-9
  ++ ~跟这里的那些、跟一生被追杀的那些比……我会说自己是幸运的之一。~ + tob-rom-1-9
  ++ ~我从没想过别的巴尔后裔，没有。~ + tob-rom-1-11
  ++ ~我只把他们看作我通往力量之路的障碍。~ + tob-rom-1-10
  ++ ~现在想那个太晚了。~ + tob-rom-1-11

CHAIN BC0AUR25 tob-rom-1-9
~想到我们，想到我们一起走了多远，我就开始想他们身边是否也有类似的人……而那些恶的、我们正在对抗的，若在他们需要时身边有对的人，事情会不会不同。~
EXTERN BC0AUR25 tob-rom-1-11

CHAIN BC0AUR25 tob-rom-1-10
~我……我明白。我想你这么想也说得通。就算你们同出一父，他们从不是你人生的一部分……也许那算公平……~
EXTERN BC0AUR25 tob-rom-1-11

CHAIN BC0AUR25 tob-rom-1-11
~我想到头来也无所谓。别的巴尔后裔挑起了这场战争，如今我们得反击，不管喜不喜欢。~
= ~若这将是重要的一战，<CHARNAME>，也许甚至最后一战……我会为你尽一切……也为我们的将来。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBLoveTalk","GLOBAL",4)~ THEN BC0AUR25 AURA-POST-WRAITH
~我……我做了什么，<CHARNAME>？我为什么……毁了这么多？~ [C0BLANK]
DO ~IncrementGlobal("C0AuraToBLoveTalk","GLOBAL",1)~
END
  ++ ~发生的一切都不是你的错。~ + AURA-POST-WRAITH-1
  ++ ~那只是个把戏，奥拉。一个残忍邪恶的把戏。~ + AURA-POST-WRAITH-1
  ++ ~我不知道。~ + AURA-POST-WRAITH-1

CHAIN BC0AUR25 AURA-POST-WRAITH-1
~我知道。我不该信那些话一个字。可我怎么做得到？那些可怕阴暗的情绪来自我自己。我自己的心把武器交给了它们来伤我。~
= ~我几乎能佩服那些阴影的把戏玩得多好……它们用我无论靠逻辑还是情感都无法自卫的方式攻击我……~
= ~它们的意图全是假的，可我无法否认它们说的有理……或者，也许是我自己的罪疚浮上来了。我一直把它埋着，相信自己做的事是对的。就算有那么多死，那么多受伤的人……~
= ~<CHARNAME>……我配被救回来吗？若多年前我的身体沉进海里，事情会不会更好？~
END
 ++ ~不，奥拉。你绝不能那么想。你老师给你生命，是因为她相信你配；她为你而死，是因为她觉得你值得。~ EXTERN BC0AUR25 AURA-POST-WRAITH-2
 ++ ~有些事超出我们的控制，奥拉。你不能为每件出错的事后悔。尽力做最好的你就好。~ EXTERN BC0AUR25 AURA-POST-WRAITH-2
 ++ ~那是个问题……也是你得背的担子。我帮不了你。~ EXTERN BC0AUR25 AURA-POST-WRAITH-3

CHAIN BC0AUR25 AURA-POST-WRAITH-2
~我……我知道那才是该有的想法。我若不然，就是背叛所有曾在意我的人的记忆。我需要……我需要相信自己……~
EXTERN BC0AUR25 AURA-POST-WRAITH-3

CHAIN BC0AUR25 AURA-POST-WRAITH-3
~哦……我为什么要让那可怕的幻影这样影响我？！啊！我该更好的……~
= ~至少我有你，<CHARNAME>。不然我觉得我应付不了刚发生的事。谢谢你一直当我的支柱……一直。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBLoveTalk","GLOBAL",6)~ THEN BC0AUR25 tob-rom-2
~那……我猜我们赢了。围城破了，我们放倒了那巨人，可……我们真赢了吗，<CHARNAME>？~ [C0BLANK]
DO ~IncrementGlobal("C0AuraToBLoveTalk","GLOBAL",1)~
= ~我知道我们光是活着就该高兴。萨拉杜什发生的事也不怪我们。可我还是忍不住觉得我们仍输了。~
= ~我们……做了能做的，对吧？<CHARNAME>，告诉我这已是我们能做到的最好。~
END
  ++ ~我想那么说，奥拉。可我觉得跟你一样茫然。~ + tob-rom-2-1
  ++ ~我们毁了那邪恶的源头。萨拉杜什没了，可至少不会再有下一个重蹈它的命运。~ + tob-rom-2-2
  ++ ~那不是我们该操心的。我们赢了这一仗，那才要紧。~ + tob-rom-2-3
  ++ ~我累了，奥拉。现在别拿这个烦我。~ + tob-rom-2-0

CHAIN BC0AUR25 tob-rom-2-0
~……对不起。~
EXIT

CHAIN BC0AUR25 tob-rom-2-1
~我猜这对我们俩都是个警钟，嗯？~
EXTERN BC0AUR25 tob-rom-2-4

CHAIN BC0AUR25 tob-rom-2-2
~对。你说得对，我也一直这么告诉自己，可……~
EXTERN BC0AUR25 tob-rom-2-4

CHAIN BC0AUR25 tob-rom-2-3
~至少我们在混乱扩散前止住了它。要是我们能……~
EXTERN BC0AUR25 tob-rom-2-4

CHAIN BC0AUR25 tob-rom-2-4
~我——我不该贬低我们这场胜利。可听说萨拉杜什陷落时……我忍不住回想，怀疑这是不是我们第一次真正失败。~
= ~我们过去也输过几次，可从没到无法挽回的地步。每一次我们都杀回胜利，我开始觉得自己无敌。我开始相信只要我们在一起，就能克服一切。~
= ~可我们不能总赢，对吧？不管我们变得多强，我们没法无处不在、每次都救场。我觉得我忘了这点。~
END
  ++ ~我明白。这么短时间我们走了这么远，忘了自己的限度。~ + tob-rom-2-5
  ++ ~到处都有人受苦死去。我们不能指望阻止世上每一桩恶。~ + tob-rom-2-6
  ++ ~怪敌人，别怪自己。我们做了能做的。~ + tob-rom-2-7
  ++ ~有一天那会变。等这一切结束，我会有力量保护所有人。~ + tob-rom-2-8

CHAIN BC0AUR25 tob-rom-2-5
~真可笑，<CHARNAME>。我以为自己学到了前所未有的东西，可某个时刻我已忘掉最基本的课。若不是，也许我现在心不会这么痛。~
EXTERN BC0AUR25 tob-rom-2-9

CHAIN BC0AUR25 tob-rom-2-6
~不，我们不能。可这回太近了……闭上眼，我还在想若事情稍有不同……若我们更快些，若、万一……~
EXTERN BC0AUR25 tob-rom-2-9

CHAIN BC0AUR25 tob-rom-2-7
~我不想怪谁恨谁，<CHARNAME>。我只是……我只是不想再看到这样的结局。~
EXTERN BC0AUR25 tob-rom-2-9

CHAIN BC0AUR25 tob-rom-2-8
~可那种力量真存在吗？我不太确定。~
EXTERN BC0AUR25 tob-rom-2-9

CHAIN BC0AUR25 tob-rom-2-9
~我觉得自己好蠢，<CHARNAME>。我还在读书时，会梦想一个真正和平的世界，人人都能安然歇息……可我开始明白那样的世界不可能存在。~
= ~连神也不会有那力量……连他们也会失败、犯错，甚至死去。若不是这样……我们周围这些破坏就根本不会发生。~
= ~可就算我知道我想要的最终结果不可能……不知为何，我仍停不下来想尽力让它成真。这不傻吗？~
END
  ++ ~不。你已把许多事变得更好，那有意义。~ + tob-rom-2-10
  ++ ~别放弃。接受某件事不可能，不像你。~ + tob-rom-2-11
  ++ ~以为人人都想要和平世界才傻。~ + tob-rom-2-12

CHAIN BC0AUR25 tob-rom-2-10
~那有意义吗，<CHARNAME>？我真改变过什么吗？或改变过谁？~
END
  ++ ~嗯……那我呢？~ + tob-rom-2-13
  ++ ~那得你自己想明白。~ + tob-rom-2-14

CHAIN BC0AUR25 tob-rom-2-11
~……~
= ~你说得对。我在干什么，这么想？若我能达成想要的一半结果，剩下的又有什么关系？~
= ~谢谢你，<CHARNAME>。我不知道你怎么总知道该说什么来让我振作……可我永远不会把这当成理所当然。~
= ~可我现在不该让我的问题挡我们的路。走吧，<CHARNAME>。别的巴尔后裔不会永远等。~
EXIT

CHAIN BC0AUR25 tob-rom-2-12
~我听着是有点傲慢，对吧？我在这儿谈什么完美世界，好像人人都想要同一样东西。~
EXTERN BC0AUR25 tob-rom-2-14

CHAIN BC0AUR25 tob-rom-2-13
~我……~
EXTERN BC0AUR25 tob-rom-2-11

CHAIN BC0AUR25 tob-rom-2-14
~*叹气* 算了。我答不了自己的问题，也不想浪费你时间，<CHARNAME>。走吧。有真正要紧的事要操心。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBLoveTalk","GLOBAL",8)~ THEN BC0AUR25 tob-rom-3
~嘿，<CHARNAME>？能聊一会儿吗？我想问问你感觉怎样。~ [C0BLANK]
END
  ++ ~我没事。你呢？这几周对你尤其难。~ + tob-rom-3-1
  ++ ~别担心我。~ + tob-rom-3-2
  ++ ~我感觉不太好。前头的挑战只会更难，而我累坏了。~ + tob-rom-3-3
  ++ ~别理我。~ + tob-rom-3-0

CHAIN BC0AUR25 tob-rom-3-0
~可是——~
= ~……~
= ~好。~
EXIT

CHAIN BC0AUR25 tob-rom-3-1
~不，它——是。是的，确实如此。它一直压着我。不是我的疑虑，而是想着那些疑虑也许在拖我后腿、让我成负担。这是关于你，不是我。~
EXTERN BC0AUR25 tob-rom-3-4

CHAIN BC0AUR25 tob-rom-3-2
~我怎么能不担心你？你肩上扛着世界的重量，而我——我还让你也听我的忧虑，只往上加了分量。~
EXTERN BC0AUR25 tob-rom-3-4

CHAIN BC0AUR25 tob-rom-3-3
~我知道。人人都累了，都盼这一切快结束，而我……除了守在你身边、确保你不孤单，我帮不上多少。~
EXTERN BC0AUR25 tob-rom-3-4

CHAIN BC0AUR25 tob-rom-3-4
~我最近更常陪着你，既为说话，也为了亲近、触碰……起初我是为自己想要，可越想，我越想起你也一样需要。~
= ~至少……我愿意相信那也是你想要的。也许这一切到头来只是为缓解我的自我怀疑，所以我得知道……你还需要我吗，<CHARNAME>？~
END
  ++ ~这话从哪来的？我当然还需要你！~ + tob-rom-3-5
  ++ ~我永远需要你。可太依赖你对你不公平。~ + tob-rom-3-6
  ++ ~你是怕我会抛下你？~ + tob-rom-3-7
  ++ ~我不知道。~ + tob-rom-3-8

CHAIN BC0AUR25 tob-rom-3-5
~我……我只是想确认。就这样。~
EXTERN BC0AUR25 tob-rom-3-8

CHAIN BC0AUR25 tob-rom-3-6
~不，它不会……永远不会太多。只要你跟我在一起，我愿为你做任何事……~
EXTERN BC0AUR25 tob-rom-3-8

CHAIN BC0AUR25 tob-rom-3-7
~我信你，<CHARNAME>。我永远不想你有别的想法。~
EXTERN BC0AUR25 tob-rom-3-8

CHAIN BC0AUR25 tob-rom-3-8
~你经历了那么多，受的苦超出任何人该受的……而在这里，本该重视你感受的时候，大家似乎只在乎你的命运、你会不会屈服于神血……~
= ~我不想看你受伤，<CHARNAME>，更不想你把一切都自己憋着。就算别人不，我也会一直按你本来的样子看你……我会在这儿听你、让你有可倚靠的人、或紧紧抱着你……若那是你需要的。~
END
  ++ ~我……我想我确实需要那个。~ + tob-rom-3-9
  ++ ~谢谢，可我真的没事。~ + tob-rom-3-10
  ++ ~你这么看我？软弱又依赖人？~ + tob-rom-3-11

CHAIN BC0AUR25 tob-rom-3-9
~那我就给你需要的，<CHARNAME>……什么都行。你至少该得到这些。~
EXIT

CHAIN BC0AUR25 tob-rom-3-10
~你若相信自己的力量，<CHARNAME>，那我也相信。可你若哪天需要什么……我随时准备抱紧你，告诉你一切都会好。~
EXIT

CHAIN BC0AUR25 tob-rom-3-11
~不！我绝不会……你比我能做到的强多了。我不……觉得需要有人在身边是软弱的迹象。~
END
  ++ ~对不起，那话说错了。我也许真需要有人靠得近。~ + tob-rom-3-9
  ++ ~我明白。可我不需要。~ + tob-rom-3-10
  ++ ~我的路通向神性，奥拉。我不能永远靠别人。~ + tob-rom-3-12

CHAIN BC0AUR25 tob-rom-3-12
~我明白，可我希望——~
= ~……~
= ~对不起。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBLoveTalk","GLOBAL",10)~ THEN BC0AUR25 tob-rom-4
~你对将来有梦想吗，<CHARNAME>？~ [C0BLANK]
END
  ++ ~当然有。谁没有？~ + tob-rom-4-1
  ++ ~你想听听吗？~ + tob-rom-4-2
  ++ ~眼下事情太多，我怕连想将来都顾不上。~ + tob-rom-4-3
  ++ ~不太有。命运总挡路，我的计划似乎从来成不了什么。~ + tob-rom-4-3

CHAIN BC0AUR25 tob-rom-4-1
~你会告诉我吗？哪怕是最小或最荒唐的事……我一直很好奇。你想要什么，<CHARNAME>？~
END
  ++ ~我打算继续冒险，当然，只要还能。~ + tob-rom-4-4
  ++ ~等这一切结束，我绝对准备安定下来。这辈子刺激我受够了。~ + tob-rom-4-5
  ++ ~我想我终于想看看你故乡。你跟我说了那么多兰坦的事，我也该亲自去一趟了。~ + tob-rom-4-6
  ++ ~就说它牵涉到你、我，还有许多花和一大群观众。~ + tob-rom-4-7
  ++ ~去取我应得的神之权柄。我还能注定做什么？~ + tob-rom-4-8

CHAIN BC0AUR25 tob-rom-4-2
~我很乐意。~
EXTERN BC0AUR25 tob-rom-4-1

CHAIN BC0AUR25 tob-rom-4-3
~我猜那是真的。每次你想换个方向，总有不可避免的东西把你引向别人期待你走的路……那一定很难。~
= ~不过，假设这一切结束后你能做任何想做的事……就当逗我开心。你能想出点什么吗？~
EXTERN BC0AUR25 tob-rom-4-1

CHAIN BC0AUR25 tob-rom-4-4
~经历了这一切，你还没体验够？我有点羡慕。我猜你从一开始就注定如此。~
EXTERN BC0AUR25 tob-rom-4-9

CHAIN BC0AUR25 tob-rom-4-5
~我也想。哪怕只一小段……能有终于平静共度的时光，现在简直是幻想。~
EXTERN BC0AUR25 tob-rom-4-9

CHAIN BC0AUR25 tob-rom-4-6
~哦。那，你若想要，我当然一定得跟你去……我等不及让你见见我全家。他们会喜欢你。~
EXTERN BC0AUR25 tob-rom-4-10

CHAIN BC0AUR25 tob-rom-4-7
~嘿，你是在暗示——哦，<CHARNAME>！现在想那个还太早，你不知道吗？我觉得脸都烧起来了……可我不能说不喜欢这主意……~
EXTERN BC0AUR25 tob-rom-4-10

CHAIN BC0AUR25 tob-rom-4-8
~我猜我没资格去理解那对你意味着什么，<CHARNAME>……我不注定有那种伟大。~
EXTERN BC0AUR25 tob-rom-4-9

CHAIN BC0AUR25 tob-rom-4-9
~我只是希望……希望永远有我的位置，在你身边。就算只是继续跟着你的足迹。那就够了。~
END
  ++ ~你比那更重要。我要你在我身边，不是我身后。~ + tob-rom-4-10
  ++ ~你在怀疑？你不该。我对你的感情没变，也永远不会变。~ + tob-rom-4-10
  ++ ~很难说会发生什么。我们一起的时光虽重要，我有一天也许不得不离开你。~ + tob-rom-4-11

CHAIN BC0AUR25 tob-rom-4-10
~我想知道的就这些。我觉得没有比看到这一切结束更想要的了，<CHARNAME>。~
EXTERN BC0AUR25 tob-rom-4-12

CHAIN BC0AUR25 tob-rom-4-11
~我知道。我……想过这趟旅程结束后可能发生的每件事。连我最怕的也想过。~
EXTERN BC0AUR25 tob-rom-4-12

CHAIN BC0AUR25 tob-rom-4-12
~因为……我也有自己的梦。我还有那么多想做的事，而每一件里都有你。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBLoveTalk","GLOBAL",12)~ THEN BC0AUR25 tob-rom-5
~嘻嘻……~ [C0BLANK]
END
  ++ ~你终于又笑了。~ + tob-rom-5-1
  ++ ~什么让你心情这么好？~ + tob-rom-5-2

CHAIN BC0AUR25 tob-rom-5-1
~我最近不像我自己吗？我猜……~
EXTERN BC0AUR25 tob-rom-5-3

CHAIN BC0AUR25 tob-rom-5-2
~没什么。我只是……觉得开心。~
EXTERN BC0AUR25 tob-rom-5-3

CHAIN BC0AUR25 tob-rom-5-3
~我一直在想很多事。想我们谈过的，想那些战斗，赢过的和等着我们的……可今天我想到另一件也曾被教过的事。~
= ~有时，当你觉得被该做的事压垮时，你该试着珍惜触手可及的东西……我一直在想是谁教我这个，然后我明白了……那是丽华老师的话。~
= ~我失忆、觉得在世界里迷路时，满脑子都是试着记起一切，又为自己记不起而懊恼。我一点没帮到自己……只是让自己受苦。~
= ~所以，就像那些我只在森林里散步、看周围美景的日子……我想我该花点时间珍惜我现在拥有的。比如……有你在我身边。~
END
  ++ ~活在当下是好事，可把将来放在心上也没错。~ + tob-rom-5-4
  ++ ~我很高兴你能撑住。你最近很难。~ + tob-rom-5-5
  ++ ~你若感觉好些，那就够了。尽量保持。~ + tob-rom-5-6

CHAIN BC0AUR25 tob-rom-5-4
~我知道，我知道。就算我想，也停不下来想象可能发生什么。可现在，我不想那个。~
EXTERN BC0AUR25 tob-rom-5-6

CHAIN BC0AUR25 tob-rom-5-5
~你不也一样，甚至更甚？那是我心里另一件事……我想，若我能再快乐起来，也许你也能。~
EXTERN BC0AUR25 tob-rom-5-6

CHAIN BC0AUR25 tob-rom-5-6
~<CHARNAME>，我能……牵你的手一会儿吗？就为牵而牵，没别的。~
END
  ++ ~当然。~ + tob-rom-5-7
  ++ ~我觉得你需要的不止那个。让我抱抱你。~ + tob-rom-5-8
  ++ ~现在不行，奥拉。我需要点空间。~ + tob-rom-5-9

CHAIN BC0AUR25 tob-rom-5-7
~我很高兴有这机会跟你在一起。不管发生什么，我们已经共有的……已意味着一切。~
EXIT

CHAIN BC0AUR25 tob-rom-5-8
~哎哟！嘿嘿，你真知道怎么让我好受，<CHARNAME>。这样真好……~
EXTERN BC0AUR25 tob-rom-5-7

CHAIN BC0AUR25 tob-rom-5-9
~好。可是，<CHARNAME>？~
EXTERN BC0AUR25 tob-rom-5-7

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBLoveTalk","GLOBAL",14)~ THEN BC0AUR25 tob-rom-6
~我最近一直在想兰坦。我们在这战火中央时，我的同胞正忙着努力改进将来。~ [C0BLANK]
= ~到如今我几乎像活过两个不同的世界。你觉得他们知道这边发生的事吗，<CHARNAME>？~
END
  ++ ~我想他们会知道。~ + tob-rom-6-1
  ++ ~怎么忽然提这个？~ + tob-rom-6-2
  ++ ~也许不知道。我们离兰坦很远。~ + tob-rom-6-3
  ++ ~现在请别把时间浪费在闲聊上，奥拉。~ + tob-rom-6-0

CHAIN BC0AUR25 tob-rom-6-0
~好。随你。~
EXIT

CHAIN BC0AUR25 tob-rom-6-1
~至少他们很可能听到消息了。我们没那么封闭，不会无视海那边发生的一切。尤其若那有可能改变世界。~
EXTERN BC0AUR25 tob-rom-6-2

CHAIN BC0AUR25 tob-rom-6-2
~我只是觉得这一切多奇怪。我们在这儿为性命与将来拼杀。这几乎就是我们的整个世界。可……在某处远方，我们亲近的人也许正过他们的日子，对这一切混乱毫不知情。~
= ~等这一切结束，我回家也许会发现一切照常运转，没有我也一样……而我都说不清事情是不是变了，因为我变得太多。~
= ~你怎么想，<CHARNAME>？你觉得你能回烛堡，像从前那样生活，像什么都没变？~
END
  ++ ~我不觉得。就算那儿一切照旧，我也变得太不一样了。~ + tob-rom-6-4
  ++ ~也许不能。可那不代表我不会再属于烛堡。~ + tob-rom-6-5
  ++ ~你呢？你担心自己会不合兰坦族人的群？~ + tob-rom-6-6
  ++ ~等回家重新成为选项时再谈这个。~ + tob-rom-6-7

CHAIN BC0AUR25 tob-rom-6-3
~我们确实很远，对吧？这一路我一直在想我故乡……到如今我离得太远，只能想象那儿现在怎样。~
EXTERN BC0AUR25 tob-rom-6-2

CHAIN BC0AUR25 tob-rom-6-4
~那也是我怕的。我好想安科里尔……可我也担心就算回去，一切……市场、船，甚至我家的老宅……都会让我觉得陌生奇怪。~
EXTERN BC0AUR25 tob-rom-6-6

CHAIN BC0AUR25 tob-rom-6-5
~希望如此。故乡对我们的意义也许变了，可……让它们重要的东西不会变。~
EXTERN BC0AUR25 tob-rom-6-6

CHAIN BC0AUR25 tob-rom-6-6
~我不怕在兰坦会觉得不自在。我永远有家人——母亲、父亲、朱诺、露娜、埃里、双胞胎……他们全都会接纳、欢迎我，不管我变了多少。我有他们中的位置，这事实不会变。~
= ~就算如此……我想我再不能回去过从前那种无忧生活了……既然我若愿意就能成就那么多。既然我能造出改变世界的东西……~
= ~等这一切结束，<CHARNAME>，我想回家。不只因为我想它，还因为我觉得我得为族人尽我的本分。我希望你跟我一起去。~
END
  ++ ~我当然会。我们各方面都是搭档，对吧？~ + tob-rom-6-8
  ++ ~我也希望你能跟我去烛堡。~ + tob-rom-6-9
  ++ ~只因为那对你重要。~ + tob-rom-6-10
  ++ ~万一我不能呢？~ + tob-rom-6-11

CHAIN BC0AUR25 tob-rom-6-7
~你若愿意，<CHARNAME>。你说得对，想眼下要紧的更重要。~
EXIT

CHAIN BC0AUR25 tob-rom-6-8
~是……最好的搭档，还更多。~
EXTERN BC0AUR25 tob-rom-6-12

CHAIN BC0AUR25 tob-rom-6-9
~我怎么会不想？就算它不是大多数学者愿付出一切去进的大图书馆……我仍想了解养育你的地方。~
EXTERN BC0AUR25 tob-rom-6-12

CHAIN BC0AUR25 tob-rom-6-10
~你才是我看重的，<CHARNAME>。我不想成你的负担，我只是……想终于做一次改变。~
EXTERN BC0AUR25 tob-rom-6-12

CHAIN BC0AUR25 tob-rom-6-11
~我……我说的是“我希望”。我不能确知会发生什么，可我的希望不会变。~
= ~……也许你该当我什么都没说，<CHARNAME>。对不起。~
EXIT

CHAIN BC0AUR25 tob-rom-6-12
~至于从现在到那时的路……嗯，这趟旅程结束后我们会有很多自己的时间，对吧？嘿嘿……~
= ~也许我们甚至能一起去科祖库拉，让我到丽华老师墓前致意……我觉得若我们熬过这一切，我终于能昂起头告诉她，我成就了值得骄傲的事。~
= ~而且……我知道她会高兴看到我找到像你这样的人守在身边。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBLoveTalk","GLOBAL",16)~ THEN BC0AUR25 tob-rom-7
~*沙沙*……<DAYANDMONTH>，<YEAR>。~ [C0BLANK]
= ~按我日志，这是今天的日期。我没告诉过你，可我一直记录着一切。细到最微处。以防……我得某天说服自己这一切不是梦。~
= ~感觉旅程很长，其实不然。只是那段时间发生了太多事……对吧？~
END
  ++ ~差不多是普通人一辈子该经历的量。~ + tob-rom-7-1
  ++ ~你还没对冒险厌倦吧？~ + tob-rom-7-2
  ++ ~我不知道。有些日子我觉得我们的人生过得太快。~ + tob-rom-7-3
  ++ ~我现在太累，谈不了这个，奥拉。~ + tob-rom-7-0

CHAIN BC0AUR25 tob-rom-7-0
~好。我不想我的想法再给你添负担……别放在心上。~
EXIT

CHAIN BC0AUR25 tob-rom-7-1
~我觉得不止一辈子。有时我觉得我这两年做的事，足以让之前几十年完全作废。~
EXTERN BC0AUR25 tob-rom-7-4

CHAIN BC0AUR25 tob-rom-7-2
~不……我不确定？也许有一点……不是说我受够了，只是……~
EXTERN BC0AUR25 tob-rom-7-4

CHAIN BC0AUR25 tob-rom-7-3
~这我也没法争。我们冒险里有我想永远继续下去的部分。可还是……~
EXTERN BC0AUR25 tob-rom-7-4

CHAIN BC0AUR25 tob-rom-7-4
~*叹气* 我只是觉得不公平。没人该被迫经历这么多，你，还有任何巴尔后裔都不该。~
= ~你知道，我昨晚做了个梦。我又在家里。父母、姐姐们、叔叔……都在。我并没忘记这一切，可……说来怪，一切就像我离家之前。~
= ~唯一的差别是你。在那儿，当我以为自己刚醒来下床、这人生才是梦时……我发现你在我身边。而那感觉那么寻常。~
= ~我……真的很想要那个，<CHARNAME>。我知道事情也许永远不会如我记忆中的样子，可还是……我想有机会得到安宁，我想要你在那儿跟我一起过。~
= ~你——你能向我保证吗，<CHARNAME>？有一天我们能拥有那个吗？~
END
  ++ ~我确定。我们会赢，然后终于能一起选择我们要过的人生。~ + tob-rom-7-5
  ++ ~我希望那由我定，可我得接受命运给我安排的一切。~ + tob-rom-7-6
  ++ ~有个王座在等我，奥拉。我不能那么轻易放弃。~ + tob-rom-7-7
  ++ ~想那么远还太早。我们先专心熬过眼前。~ + tob-rom-7-0

CHAIN BC0AUR25 tob-rom-7-5
~……~
= ~我信你。~
EXTERN BC0AUR25 tob-rom-7-8

CHAIN BC0AUR25 tob-rom-7-6
~我知道。不管发生什么，我永远不会怪你或记恨。可如我所说……只是不公平。~
EXTERN BC0AUR25 tob-rom-7-8

CHAIN BC0AUR25 tob-rom-7-7
~若那才要紧……我会尽力帮你实现你自己的梦，<CHARNAME>。你的幸福比我的更重要。~
EXTERN BC0AUR25 tob-rom-7-8

CHAIN BC0AUR25 tob-rom-7-8
~总之……我们只能继续向前，尽力而为。我永远不能忘自己是什么——研究者。我得接受结果，就算那不是我要的……~
= ~别为我担心，<CHARNAME>。继续往前看。我会支持你到最后。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBLoveTalk","GLOBAL",18)~ THEN BC0AUR25 tob-rom-8
~我真没想到偏偏在这时候收到祖母的消息。我还以为再没什么能让我意外了……~ [C0BLANK]
DO ~IncrementGlobal("C0AuraToBLoveTalk","GLOBAL",1)~
= ~我一辈子都想见她，那位父亲总在说的传奇冒险者……我却从没找到半点踪迹。如今反倒是她找到了我。~
= ~我有许多想当面跟她说，既为我自己，也为我父亲，他很想她。有很长一段时间我怀疑她是否知道我的存在……可我猜她以自己的方式在照看我。~
END
  ++ ~你想见她那么久，她为什么不来见你？~ + tob-rom-8-1
  ++ ~她竟能跟埃尔明斯特交好，真让我佩服。~ + tob-rom-8-2
  ++ ~她留给你的东西很强大。我猜那意味着她希望你平安。~ + tob-rom-8-3

CHAIN BC0AUR25 tob-rom-8-1
~谁知道？她一向自由不羁。我不觉得她想让谁失望……可她总把下一趟冒险放在一切之前。~
EXTERN BC0AUR25 tob-rom-8-4

CHAIN BC0AUR25 tob-rom-8-2
~嘿嘿，你想象不到，<CHARNAME>。她如今大概已走遍全世界。若有人说认识她，我问起来也不会意外。~
EXTERN BC0AUR25 tob-rom-8-4

CHAIN BC0AUR25 tob-rom-8-3
~我知道，我知道。这些是传奇法器——我从她书里描述的样子认出来了。只是她竟压不住流浪癖，亲自送来，真让人懊恼。~
EXTERN BC0AUR25 tob-rom-8-4

CHAIN BC0AUR25 tob-rom-8-4
~我在想她对一切究竟知道多少……可她卷入的事也许跟我们经历的同样伟大。所以也许她觉得这些曾帮过她的东西也能帮我。~
= ~有时我想那故事……这些法器最初出自的那个故事，我就忍不住想象她……和她追随的那个人……就像我们。他们并肩行走、战斗，在最轻松的时刻一起笑，需要彼此时互相依靠。~
= ~也许他们甚至像我们一样相爱……你能想象吗，<CHARNAME>？若我们真是一个更伟大故事的续篇，有同样的牵系与结局？~
END
  ++ ~那扯得有点远。~ + tob-rom-8-5
  ++ ~若我们跟那故事里的英雄这么像，我倒能想象。~ + tob-rom-8-6
  ++ ~那故事有好结局吗？~ + tob-rom-8-7
  ++ ~也许我们的故事不会是最后一个。~ + tob-rom-8-8
  ++ ~够了。我们在这儿待够久了。~ + tob-rom-8-9

CHAIN BC0AUR25 tob-rom-8-5
~也许……嘿嘿，可若真有这种巧合，我也不介意……若那其实不是某种更伟大的东西在安排一切。~
EXTERN BC0AUR25 tob-rom-8-9

CHAIN BC0AUR25 tob-rom-8-6
~有时我想我们几乎一样……我没我祖母那么无忧无虑，可这趟旅程让我看到我也许比自己想的更像她。~
EXTERN BC0AUR25 tob-rom-8-9

CHAIN BC0AUR25 tob-rom-8-7
~那取决于你读的是哪个版本……可我宁愿相信原版最终对每个人都有完美结局。~
EXTERN BC0AUR25 tob-rom-8-9

CHAIN BC0AUR25 tob-rom-8-8
~也许不会……那我想知道下一个故事会是什么样？我们也会在里面有份吗？~
EXTERN BC0AUR25 tob-rom-8-9

CHAIN BC0AUR25 tob-rom-8-9
~走吧，<CHARNAME>。我跟着你，我们一起为这故事找到理想的结局。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBLoveTalk","GLOBAL",20)~ THEN PLAYER1 tob-final
~你感到一双手臂从背后环住你，她的手握住你的手，然后一张脸贴在你背上。~ [C0BLANK]
DO ~IncrementGlobal("C0AuraToBLoveTalk","GLOBAL",1)~
== C0AUR25J ~嗯……~
END
  ++ ~嘿，怎么了？~ EXTERN C0AUR25J tob-final-1
  ++ ~你不必抱那么紧。我又不会走。~ EXTERN C0AUR25J tob-final-1a
  ++ ~放开。这样我没法动。~ EXTERN C0AUR25J tob-final-1

CHAIN C0AUR25J tob-final-1
~求你留下……就现在。别让我放开你。~
= ~我只是……想再感觉你靠得近，<CHARNAME>。我不想忘记那是什么感觉……毕竟谁知道我还能有几次机会？~
= ~哦，我本不想给你看我这一面……可我受不了了……想到你可能消失，而我要到太晚才发现……有时我连觉都难睡，或者醒来就害怕身边看不到你……~
= ~对不起，<CHARNAME>。真对不起。我没坚强到能接受，就算我该……~
END
  ++ ~我不在乎成神，奥拉。我在乎你。~ EXTERN C0AUR25J tob-final-3
  ++ ~你就那么担心我会取巴尔的王座？~ EXTERN C0AUR25J tob-final-2
  ++ ~我说过，我不会离开你。~ EXTERN C0AUR25J tob-final-3
  ++ ~也许你说得对。我们剩下的共处时间不会多了。~ EXTERN C0AUR25J tob-final-3

CHAIN C0AUR25J tob-final-1a
~保证你不会？至少现在，我还能……~
EXTERN C0AUR25J tob-final-1

CHAIN C0AUR25J tob-final-2
~我不只是担心。我是害怕，<CHARNAME>……我以为自己克服了所有旧恐惧，可如今我生出新的，而我不能……不能独自对抗它。~
EXTERN C0AUR25J tob-final-3

CHAIN C0AUR25J tob-final-3
~<CHARNAME>，我要你留下。自从认识你，我就无法想象你真的不在了会是什么样。~
= ~旅程快结束了，我还有那么多没跟你一起做……我想带你去看我故乡，想一起造艘飞艇从天空看诸国度其余地方，想往东走、在科祖库拉牵手走过樱园，就我们两个……~
= ~我会那么快乐……我也希望你一样，一样快乐。我学到了那么多，那些我从没想过可能的东西……凭我如今所有，我能改变世界，可你前头要面对的那件事，偏偏是我唯一给不了的！~
= ~我……我知道这自私……所以我才一直不想说……可我不……我不想……~
END
  ++ ~嘘……没事，一切都会没事……我会一直在你身边。~ EXTERN C0AUR25J tob-final-4
  ++ ~我也矛盾。可我不能否认我也想要摆在我面前的东西。~ EXTERN C0AUR25J tob-final-5
  ++ ~说不准一切结束后会发生什么。可你要知道，我会永远爱你。~ EXTERN C0AUR25J tob-final-6
  ++ ~对不起。我不能放弃成神的机会，走到这一步之后不能。~ EXTERN C0AUR25J tob-final-7
  
CHAIN C0AUR25J tob-final-4
~我信你。我永远不会停止相信你，<CHARNAME>，永远。可还是……~
EXTERN C0AUR25J tob-final-7

CHAIN C0AUR25J tob-final-5
~等——等等，<CHARNAME>，让我说完。还有更多我想让你知道……~
EXTERN C0AUR25J tob-final-7

CHAIN C0AUR25J tob-final-6
~我……我也爱你，<CHARNAME>。不管变多少、发生什么……我永远不会停止爱你。~
EXTERN C0AUR25J tob-final-7

CHAIN C0AUR25J tob-final-7
~就算我不想失去你，我仍希望你做你认为对的事。若真有人要你成神，那是重大的责任……你若愿意，能做那么多好事。我想不出还有谁更配。~
= ~而且……我不愿想象，可谁说你一定有得选？我……我来不只是抱你哭，<CHARNAME>，哪怕那才是我最想做的……我只想让你安心，不管发生什么，我都不会怪你。~
= ~所以……所以我现在就说，而不是等到那时候，若你甚至有资格选……若我不能再跟我人生中最重要的人共度更多时间，我会珍惜我们已有的，以及前头这短短一段。~
= ~所以……请别让我拦着你要的任何东西。你若因为我做了后悔的选择，我会恨自己。只要我还能……我就在这儿支持你，尽我所能。因为……你是我比什么都爱的那个人。~
END
  ++ ~你对我比什么都重要，奥拉。我为什么会拿你换任何东西，哪怕是神性？~ + tob-final-8
  ++ ~信我。我会做对的选择。~ + tob-final-9
  ++ ~我不会忘记或抛下你。就算我成了神，那也不会变。~ + tob-final-10
  ++ ~谢谢你。一直有像你这样的人在身边，我真幸运。~ + tob-final-11

CHAIN C0AUR25J tob-final-8
~你——你不会？哈……哈哈……那会是我最大的成就……一个值得为之放弃永生与力量的人。我会乐意把自己当世上最幸运的姑娘。~
EXTERN C0AUR25J tob-final-11

CHAIN C0AUR25J tob-final-9
~你当然会，<CHARNAME>……我也不指望别的……~
EXTERN C0AUR25J tob-final-11

CHAIN C0AUR25J tob-final-10
~我知道。就算不会再一样……我知道你会永远记得我。光是永远被记得，就能让我有点开心。~
EXTERN C0AUR25J tob-final-11

CHAIN C0AUR25J tob-final-11
~我……终于把这些心事卸下来，我松了口气。我一直拖着脚等这一刻……可不再了。我再没有什么拦着我，<CHARNAME>。我陪你到最后，不管那是什么。~
EXIT