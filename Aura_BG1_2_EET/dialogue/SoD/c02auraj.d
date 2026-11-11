BEGIN C02AURAJ

CHAIN IF ~!Global("C02AuraWasInBG1","GLOBAL",1)
Global("C02AuraTalk","GLOBAL",2)~ THEN C02AURAJ t1a
~<CHARNAME>，你肯把我收在羽翼下真好心，虽然我不是战士。希望我没有拖累你。~ [C0BLANK]
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)~
END
++ ~没事。我让你加入，是因为你需要保护。~ + t1a.1
++ ~你不是不能自保。你在怕什么？~ + t1a.2
++ ~只要确保你出得上力，不然就滚出去。明白吗？~ + t1a.3

CHAIN C02AURAJ t1a.1
~你真是慷慨，<CHARNAME>。考虑到，嗯……我几乎没指望过。~
END
IF ~!Alignment(Player1,MASK_EVIL)~ EXTERN C02AURAJ t1a.4
IF ~Alignment(Player1,MASK_EVIL)~ EXTERN C02AURAJ t1a.5

CHAIN C02AURAJ t1a.2
~确实，我一直能克服那些躲不开的威胁，可是……~
END
IF ~!Alignment(Player1,MASK_EVIL)~ EXTERN C02AURAJ t1a.4
IF ~Alignment(Player1,MASK_EVIL)~ EXTERN C02AURAJ t1a.5

CHAIN C02AURAJ t1a.3
~对——对，我明白了。只——只是……~
END
IF ~!Alignment(Player1,MASK_EVIL)~ EXTERN C02AURAJ t1a.4
IF ~Alignment(Player1,MASK_EVIL)~ EXTERN C02AURAJ t1a.5

CHAIN C02AURAJ t1a.4
~我听说过……关于你的各种事，我在博德之门的时候。关于你和你……和那个恶徒萨雷沃克的关系。知道你到底是谁之后，我不确定该期待什么，可是……你看着像是个善良的人，而且你这么快就肯接纳我……~
EXTERN C02AURAJ t1a.6

CHAIN C02AURAJ t1a.5
~我听说过……关于你的各种事，我在博德之门的时候。关于你和你……和那个恶徒萨雷沃克的关系。知道你到底是谁之后，我不确定该期待什么，可是……既然你肯接纳我，那你不至于是那么坏的人……~
EXTERN C02AURAJ t1a.6

CHAIN C02AURAJ t1a.6
~我只是……不想给你任何理由去怀疑我，或把我当成累赘。若我要跟着你走，我希望配得上你的信任。~
END
++ ~你想得太多了。同伴之间互相信任本就是自然的事。~ + t1a.7
++ ~不必考虑这些。我不会只按一个人对我的用处来评判他。~ + t1a.7
++ ~到时候看吧。你有的是机会证明自己。~ + t1a.8
++ ~给我一个怀疑你的理由，我就让你后悔。~ + t1a.9

CHAIN C02AURAJ t1a.7
~听你这么说，我信心多了不少。谢谢你，<CHARNAME>。希望我们相处得好。~
EXIT

CHAIN C02AURAJ t1a.8
~嗯……我会尽力不让你失望。~
EXIT

CHAIN C02AURAJ t1a.9
~不——不必那样。我也许没有你要求的那么能干，可我一定尽力。~
EXIT

CHAIN IF ~Global("C02AuraWasInBG1","GLOBAL",1)
Global("C02AuraTalk","GLOBAL",2)~ THEN C02AURAJ t1b
~哈哈……真不敢相信我们分开这么久，又这么快跟你一起上路了，<CHARNAME>。虽然这次情形不同，我很高兴能回来。~ [C0BLANK]
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)~
END
++ ~很高兴你回来。没有你，茶会都变得没那么有意思了。~ + t1b.1
++ ~你当初为什么要走？我以为你在我身边旅行是快乐的。~ + t1b.2
++ ~我带你上路不是为了旧情。你来是要有用，不是来聊天。~ + t1b.x

CHAIN C02AURAJ t1b.x
~对……我明白。~
DO ~SetGlobal("C02AuraTalk","GLOBAL",-1)~ EXIT

CHAIN C02AURAJ t1b.1
~嘿嘿，还好我给你留下了这样的印象。嗯，现在我回来了，我们可以……不过现在大概不是办茶会的时候。但茶还是有的，你要是哪天有兴趣。~
EXTERN C02AURAJ t1b.2

CHAIN C02AURAJ t1b.2
~抱歉把你留在博德之门。可你看着乐意留下，我也不好在你没兴趣的情况下要求你跟我北上。~
= ~我想去深水城，见见那些过去跟我家乡做过生意的本地商会，运气好的话还能见到凯尔本·黑杖大人。之后我大概就启程回乡了，除非有什么迷人的传言又把我拉回路上。~
= ~如今十字军挡在路上，这些大概一时都办不成了。不过要是早知道你会跟他们作战，我无论如何都会来帮忙。~
END
++ ~我想爱蒙也会很高兴再见到你。~ + t1b.3
++ ~嗯，我很高兴我们有这机会一起旅行，趁着它还在。~ + t1b.4
++ ~别多愁善感。你只是个方便的盟友。~ + t1b.x

CHAIN C02AURAJ t1b.3
~我……一直想问。爱蒙到底出了什么事？她绝不会自愿在这趟旅途中离开你。~
END
++ ~十字军在公爵府里给她下了毒。她还在那儿养伤。~ + t1b.5
++ ~我们……遭到了凯拉·阿金特的刺客袭击。~ + t1b.5
++ ~不关你的事。要说完了，那就走吧。~ + t1b.8

CHAIN C02AURAJ t1b.4
~嗯。我也这么想。~
EXTERN C02AURAJ t1b.3

CHAIN C02AURAJ t1b.5
~什——什么？索——索娜，那……那太可怕了。我……我本以为不会这样，毕竟光辉女士的名声……我是说，她现在是我们的敌人，可是……~
= ~现在我更后悔离开了。你本还可以用上我的帮助。我以为你会安全，可我错了。~
END
++ ~对巴尔之子来说，哪儿都不安全。~ + t1b.6
++ ~过去的事就过去了。重要的是我们现在联手了。~ + t1b.7
++ ~够了。我们有比聊天更重要的事要做。~ + t1b.8

CHAIN C02AURAJ t1b.6
~嗯……你说得对。一定很难受吧，如今知道这事的不只是你亲近的人了……可要是有安慰的话，我仍把你当朋友。~
EXTERN C02AURAJ t1b.7

CHAIN C02AURAJ t1b.7
~若十字军威胁到你，<CHARNAME>，我会尽我所能帮你终结它。这是我欠你的。~
EXIT

CHAIN C02AURAJ t1b.8
~好……我知道我们没多少空闲站在这儿无所事事。带路吧，<CHARNAME>。我尽力。~
EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",4)~ THEN C02AURAJ t2
~这——这地方真瘆人……这么黑，不知你看不看得见，我在这儿腿都在抖。~ [C0BLANK]
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)~
END
++ ~冷静。我就在你身边。~ + t2.1
++ ~我自己也不怎么喜欢黑暗。~ + t2.2
++ ~你要是胆小到应付不了，那就走。~ + t2.3
++ ~没时间为你的恐惧耽误。想办法克服。~ + t2.x

CHAIN C02AURAJ t2.x
~好——好吧……我试试……~
EXIT

CHAIN C02AURAJ t2.1
~我知道，可是……！这还是很吓人。谁知道角落里藏着什么？~
EXTERN C02AURAJ t2.4

CHAIN C02AURAJ t2.2
~真——真的？我，呃，不知道那该怎么算安慰。我是说，要是有什么东西能吓到你，那我该是什么感觉？~
EXTERN C02AURAJ t2.4

CHAIN C02AURAJ t2.3
~我——我没那么怕，<CHARNAME>，可在这种黑地方，我忍不住有点发毛。~
EXTERN C02AURAJ t2.4

CHAIN C02AURAJ t2.4
~看那儿那个怪影——啊！它动了！~
END
++ ~大概只是只老鼠什么的。~ + t2.5
++ ~哪儿？哪儿？~ + t2.6
++ ~小声点！你会招来真危险的东西。~ + t2.7
++ ~*叹气* 随便吧……~ + t2.8

CHAIN C02AURAJ t2.5
~真——真的？也许你说得对。~
EXTERN C02AURAJ t2.8

CHAIN C02AURAJ t2.6
~那——那儿！你没看见……哦。它不见了。不见了！~
EXTERN C02AURAJ t2.8

CHAIN C02AURAJ t2.7
~哦……你说得有理。呀……~
EXTERN C02AURAJ t2.8

CHAIN C02AURAJ t2.8
~……~
= ~*轻笑*~
END
++ ~现在有什么好笑的？~ + t2.9
++ ~你没事吧？~ + t2.9
++ ~哦不！你被附身了吗？~ + t2.10

CHAIN C02AURAJ t2.9
~没什么。我只是在想……我居然会怕墙上的影子，明明经历过远比这糟的事。这说不通，对吧？~
= ~嗯，倒也有点说得通。毕竟我宁愿这些影子就是我最该担心的事，而不是……算了，说已经过去的事没意义。~
END
+ ~Global("C02AuraWasInBG1","GLOBAL",1)~ + ~你还在想之前跟斋藤的那次遭遇？~ + t2.11
++ ~这很怪，可我能理解一点。~ + t2.12
++ ~只要你别让这些孩子气的恐惧挡我们的路。~ + t2.13
++ ~你说完了吗？该走了。~ + t2.14

CHAIN C02AURAJ t2.10
~不……没有！我没事。只是……~
EXTERN C02AURAJ t2.9

CHAIN C02AURAJ t2.11
~嗯……想到我害怕了那么久的会面就在不久前结束了，真怪……顺带说，这还得谢你。要不是你，我大概不会在这儿。~
EXTERN C02AURAJ t2.12

CHAIN C02AURAJ t2.12
~不过，我不能让这些孩子气的恐惧阻我前行。尤其是你在倚靠我的时候，<CHARNAME>。~
END
IF ~Global("C02AuraRomanceActive","GLOBAL",1)~ EXTERN C02AURAJ t2.15
IF ~!Global("C02AuraRomanceActive","GLOBAL",1)~ EXIT

CHAIN C02AURAJ t2.13
~别担心。我不会让那种事发生。~
END
IF ~Global("C02AuraRomanceActive","GLOBAL",1)~ EXTERN C02AURAJ t2.15
IF ~!Global("C02AuraRomanceActive","GLOBAL",1)~ EXIT

CHAIN C02AURAJ t2.14
~哦……对，当然。我会紧跟在你后面。~
EXIT

CHAIN C02AURAJ t2.15
~其实……光是靠近你，就足够让我更有信心。如果你能直面一切，不管心里怕不怕……那我也受到鼓舞要这样做。~
= ~我很高兴听你这么说，<CHARNAME>，真的。你有那么多我……在一个女人身上钦佩的品质。~
END
++ ~你对我只有这些感觉吗？~ + t2.16
++ ~唉，你真好心。可你真不必把我捧得那么高。~ + t2.17
++ ~这话好听，可我们真得走了。~ + t2.14
++ ~随便。我对你的称赞，或者你别的什么话，都没兴趣。~ + t2.18

CHAIN C02AURAJ t2.16
~你——你是说……*脸红* 你到底是什么意思，<CHARNAME>？~
END
++ ~我就是问我问的那个。你对我只是钦佩，还是别的？~ + t2.19
++ ~你还喜欢我什么？老实说。~ + t2.19
++ ~唉，你现在脸全红了。多可爱。~ + t2.19

CHAIN C02AURAJ t2.17
~好，好。我知道了，少来点英雄崇拜。不过我说的每句都是真心的。~
EXIT

CHAIN C02AURAJ t2.18
~哦……我——我明白了。~
DO ~SetGlobal("C02AuraTalk","GLOBAL",-1)~ EXIT

CHAIN C02AURAJ t2.19
~……哦，我都不知道该说什么了。你这么一逗，我完全措手不及，<CHARNAME>……我们现在先别急，好吗？再说，考虑到我们在什么地方，这也太不合适了。~
= ~走吧。这事以后再说。~
EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",6)~ THEN C02AURAJ t3
~我能问你件事吗，<CHARNAME>？你……对自己作为领袖有信心吗？~ [C0BLANK]
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)~
END
++ ~怎么说起这个？~ + t3.1
++ ~当然有。我为什么会没有？~ + t3.2
++ ~不总是，可我该做的就做。你为什么问？~ + t3.1
++ ~我要有什么疑虑，不会跟你讲。~ + t3.x

CHAIN C02AURAJ t3.1
~我只是在想我们上次聊的话，想我怎么讲自己的恐惧、还说你勇敢……可我越想越好奇，你就从没有过恐惧或疑虑吗？哪怕一点点？~
END
++ ~会恐惧是凡人本性。我为什么会不同？~ + t3.3
++ ~也许我有。我和所有人一样容易起疑。~ + t3.3
+ ~Gender(Player1,MALE)~ + ~疑虑和恐惧是下等人的事。我在它们之上。~ + t3.4
+ ~Gender(Player1,FEMALE)~ + ~疑虑和恐惧是下等女人的事。我在它们之上。~ + t3.4
++ ~就算有，我也不会跟你这样的外人谈。~ + t3.x

CHAIN C02AURAJ t3.2
~嗯，答得真快。我不知道自己在期待什么。~
EXTERN C02AURAJ t3.1

CHAIN C02AURAJ t3.3
~可你与——不，我不是那个意思。你并不太算……凡人，对吧？还是说这没差别？~
END
++ ~我大半辈子都自认是个普通的<PRO_RACE>。我的神血没有改变这一点。~ + t3.5
++ ~是的，有差别。它确实给了我一种别人没有的自信。~ + t3.4
++ ~我不知道。也许有。我不让情绪决定我怎么行事。~ + t3.4
++ ~我的私人感受不关你的事。~ + t3.x

CHAIN C02AURAJ t3.4
~那里面也有种力量，我想。我不能说我懂了……可某种程度上我仍能尊重它。就算听着有点傲慢……我也不能真怪你。~
EXTERN C02AURAJ t3.6

CHAIN C02AURAJ t3.5
~嘿嘿……你真这么想，还是只想显得谦虚？嗯，不管怎样……想到不管你血管里流着什么血，你都没那么不同，这挺有意思。~
EXTERN C02AURAJ t3.6

CHAIN C02AURAJ t3.6
~谢谢你抽时间，<CHARNAME>。你本没义务站在这儿回答我的问题，可你还是答了。我很感激。~
EXIT

CHAIN C02AURAJ t3.x
~好吧。当我什么都没说。~
EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",8)~ THEN C02AURAJ t4
~让我看看……聚合草、接骨木莓、柠檬香蜂草，还有……没有那个，一点姜也行……哦，我再加点蜂蜜，为什么不呢。~ [C0BLANK]
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)~
END
++ ~你在干什么，奥拉？~ + t4.1
+ ~OR(3)
Class(Player1,RANGER_ALL)
Class(Player1,DRUID_ALL)
CheckStatGT(Player1,14,INT)~ + ~这听着像是某种药茶。是做什么用的？~ + t4.2
++ ~你在那边鼓捣什么，小声点。~ + t4.0

CHAIN C02AURAJ t4.0
~抱歉，<CHARNAME>。我不是想打扰你。~
DO ~SetGlobal("C02AuraTalk","GLOBAL",-1)~ EXIT

CHAIN C02AURAJ t4.1
~呀！哦，是你，<CHARNAME>。抱歉我跳起来了，我太专心在写的东西上。希望我没打扰你。~
END
++ ~一点没有。我只是好奇。你在写茶的配方吗？~ + t4.2
+ ~OR(3)
Class(Player1,RANGER_ALL)
Class(Player1,DRUID_ALL)
CheckStatGT(Player1,14,INT)~ + ~若我没记错，那些材料大多有药性。~ + t4.2
++ ~这看着像是某种草药清单。你在准备什么？~ + t4.2
++ ~小声点就行。不必让别人听见我们。~ + t4.0

CHAIN C02AURAJ t4.2
~我在写下能弄到的一种特别茶的材料。有些这里找不到的材料，我不得不做些替换，可它应该还是有效……~
END
++ ~对什么有效？你需要这茶做什么？~ + t4.3
++ ~这不是你在为我们这群人准备吧？~ + t4.3
++ ~这种时候真适合办茶会吗？~ + t4.4
++ ~我不在乎。你自己收着就行。~ + t4.0

CHAIN C02AURAJ t4.3
~这不是食谱。是处方。给我……我自己的。不是给别人的。~
END
++ ~处方？像是，治什么病的？~ + t4.5
++ ~我不知道你还有病。~ + t4.5
++ ~我不想知道。~ + t4.0

CHAIN C02AURAJ t4.4
~不，我……嗯，我确实喜欢喝茶休息，可自从加入队伍，我连想都没想过。跟那无关。~
EXTERN C02AURAJ t4.3

CHAIN C02AURAJ t4.5
~别担心，<CHARNAME>，没那么糟。这方子不是治病的，只是个……预防。~
= ~我不喜欢谈这个，可我家族有过一段……这么说吧，身体不好的历史。也许是遗传，可我认识很多亲戚生下来就虚弱。头痛、体弱、呼吸困难……~
= ~我弟弟埃里达努斯最糟……他天生是术士，年轻时因为过度使用魔法常晕倒……就算成年了，他仍然相当脆弱。~
= ~我年轻时也很病弱，可多亏家里和贡德祭司们的及早照看，我算是大体恢复，只是从来不如我几个姐姐强壮结实。这方子是我父母为我写的，希望能改善我的身体。~
= ~可我还缺一样关键的东西——向日葵花瓣。别的都能找到替代，可没有向日葵，我不知这茶还能有多少用。~
END
++ ~为什么要向日葵？它们有什么特别？~ + t4.6
++ ~也许我能帮你想想办法。~ + t4.7
++ ~那祝你好运。~ + t4.7

CHAIN C02AURAJ t4.6
~我不确定。要是我对家族这种遗传病知道得更多，或许能解释，可我只知道向日葵有某种东西既能治它、又能压住它。所以我家族养成了种向日葵的传统，也选了它当家徽。~
EXTERN C02AURAJ t4.7

CHAIN C02AURAJ t4.7
~也许要求有点多，可是……我有一袋我家族特制的向日葵种子。要是你哪天能找到让它们快点长起来的人，我会感激不尽。~
END
+ ~CheckStatGT(Player1,15,WIS)
!Class(Player1,SHAMAN)
Class(Player1,DRUID_ALL)~ + ~我能借助自然之力，用魔法催发这些种子。只需一小会儿。~ + t4.10
+ ~InParty("Jaheira")~ + ~贾希拉，你觉得你能用魔法催发这些种子吗？~ EXTERN BDJAHEIJ t4.jah1
+ ~!Dead("Jaheira")
Global("bd_jaheira_join","global",1)~ + ~也许贾希拉能帮忙。我去问她。~ DO ~GiveItemCreate("c02asack",Player1,1,0,0)~ + t4.8
++ ~我尽力而为。~ DO ~GiveItemCreate("c02asack",Player1,1,0,0)~ + t4.8
++ ~别指望。~ DO ~GiveItemCreate("c02asack",Player1,1,0,0)~ + t4.9

CHAIN C02AURAJ t4.8
~谢谢你，<CHARNAME>。~
EXIT

CHAIN BDJAHEIJ t4.jah1
~以自然之意志催发这些种子再简单不过。等我一下。~
DO ~FadeFromColor([30.0],0)
PlaySound("EFF_P18")
CreateVisualEffectObject("icraisei",Myself)
TakePartyItem("c02asack")
DestroyItem("c02asack")
GiveItemCreate("c02asunf",Player1,1,0,0)~
== C02AURAJ ~成——成功了！你太厉害了，贾希拉！还有你，<CHARNAME>！谢谢，太谢谢你们了！~
END
++ ~不客气。~ EXTERN C02AURAJ t4.11
++ ~现在你可以把它们加进药里了，对吧？~ EXTERN C02AURAJ t4.11
++ ~别这么兴奋。这不算什么。~ EXTERN C02AURAJ t4.11

CHAIN C02AURAJ t4.9
~不过，要是我们遇上什么人，希望你会想着去问一声。先说谢了，<CHARNAME>。~
EXIT

CHAIN C02AURAJ t4.10
~你能？哦，太好了！给你，拿着种子。我想看着魔法发生！~
DO ~FadeFromColor([30.0],0)
PlaySound("EFF_P18")
CreateVisualEffectObject("icraisei",Myself)
TakePartyItem("c02asack")
DestroyItem("c02asack")
GiveItemCreate("c02asunf",Player1,1,0,0)~
= ~成——成功了！你太厉害了，<CHARNAME>！谢谢，太谢谢你了！~
END
++ ~不客气。~ + t4.11
++ ~现在你可以把它们加进药里了，对吧？~ + t4.11
++ ~别这么兴奋。这对我算不了什么。~ + t4.11

CHAIN C02AURAJ t4.11
~它——它们完美。我花一会儿把它们加进药里……~
DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("c0aufade")~ EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",10)~ THEN C02AURAJ t5
~谢谢你给的向日葵，<CHARNAME>。现在我能做出足够我撑完这趟远征的药茶了。~ [C0BLANK]
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1) TakePartyItem("c02asunf") DestroyItem("c02asunf")~
= ~呃……泡制的时候还剩了几朵花，我不知道该怎么处理……就放进玻璃罐里了。就算成了这个样子……我还是觉得它们很美。我想把它们送给你，算是我谢你的方式。~
END
++ ~确实很美。谢谢你，奥拉。~ + t5.1
++ ~你好像真的很喜欢向日葵。~ + t5.2
++ ~一罐死掉的植物？不用了。~ + t5.x

CHAIN C02AURAJ t5.x
~哦。我明白了……原来你是这么想的。好吧。抱歉打扰你。~
DO ~SetGlobal("C02AuraTalk","GLOBAL",-1)~ EXIT

CHAIN C02AURAJ t5.1
~不客气。它们于你或许不如于我那么重要，可我希望至少能给你带来一点欢愉。~
EXTERN C02AURAJ t5.2

CHAIN C02AURAJ t5.2
~我爱向日葵。花瓣能做茶，叶和茎有药性，种子是营养的零嘴……但最要紧的是，我就是觉得它们美。它们那种明亮的颜色和暖意，就是……让我高兴。~
= ~哦——我在说什么？你大概觉得我很傻，明明有仗要打，却在这儿谈花。~
END
++ ~我一点也不觉得傻。这些花对你显然意义重大。~ + t5.3
++ ~确实有点傻气，可我不介意。~ + t5.4
++ ~也许有一点。我们回去办事吧。~ + t5.5
++ ~你的废话够了。我烦透了浪费时间听这些。~ + t5.x

CHAIN C02AURAJ t5.3
~嗯……确实。我总把它们和我珍视的东西连在一起。家、家人、朋友……光是看着那些花，我就想起我生命中一切美好的事。~
EXTERN C02AURAJ t5.4

CHAIN C02AURAJ t5.4
~我只是想……以那些向日葵的形式，跟你分享一点我的快乐，我想。能再见到它们真好。~
END
IF ~Global("C02AuraRomanceActive","GLOBAL",1)~ EXTERN C02AURAJ t5.6
IF ~!Global("C02AuraRomanceActive","GLOBAL",1)~ EXTERN C02AURAJ t5.7

CHAIN C02AURAJ t5.5
~嗯，你说得大概对。我不该再占你更多时间了。走吧，<CHARNAME>。~
EXIT

CHAIN C02AURAJ t5.6
~还有……嗯，把那些花给你，我希望有一天我们若分开，你看着它们时会想起我……这也许是痴心妄想，可这念头确实让我安心。~
EXTERN C02AURAJ t5.7

CHAIN C02AURAJ t5.7
~嘿嘿……我想你已经听我说得够久了。我不该再耽误我们接下来的事。走吧，<CHARNAME>。~
EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",12)~ THEN C02AURAJ t6
~不知家里现在怎么样。我已经好几年没见过他们了。~ [C0BLANK]
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)~
END
++ ~你一定很想他们。~ + t6.1
++ ~到底是几年了？~ + t6.2
++ ~别指望我给你同情。~ + t6.3
++ ~我现在没兴趣听你感慨，奥拉。~ + t6.x

CHAIN C02AURAJ t6.x
~哦……我只是自言自语，<CHARNAME>。别在意。~
EXIT

CHAIN C02AURAJ t6.1
~我在意。我太想他们了，想得心疼。~
EXTERN C02AURAJ t6.4

CHAIN C02AURAJ t6.2
~快五年了……两年在世界各地旅行，近三年住在科祖库拉。侏儒虽然命长，可离开最牵挂的人，五年就像永恒。~
EXTERN C02AURAJ t6.1

CHAIN C02AURAJ t6.3
~啊，我——我忘了你自己家里的事。我想聊我家的事听着不近人情。~
= ~你若想我别说了，我不会怪你。~
END
++ ~不，继续说。我为刚才的重话道歉。~ + t6.4
++ ~我倒希望你停。~ + t6.3a
++ ~永远闭嘴吧。~ + t6.3b

CHAIN C02AURAJ t6.3a
~好。就当我没提过。对不起。~
EXIT

CHAIN C02AURAJ t6.3b
~……~
= ~我明白。我只是……以为我们能做朋友。~
DO ~SetGlobal("C02AuraTalk","GLOBAL",-1)~ EXIT

CHAIN C02AURAJ t6.4
~你把那些向日葵给我之后，我想起了老家，想起了家里每一个人。我想是那气味勾起的。太熟悉了。~
= ~我在科祖库拉被冲上岸时，大部分记忆都没了……我真觉得自己只是个空壳。我笑不出来，哭不出来，连微笑都不行……就像没有了那些我珍视之事的记忆，我的情感也不存在了。~
= ~当我第一次想起什么时的喜悦……当丽华小姐像姐姐们那样刮我鼻子的时候……就像又重生了一次。我在她怀里哭到再也哭不出来，可是……一旦有了那种感觉，我就再也放不下。~
END
++ ~可那样活着一定很可怕。像一幅缺了关键一块、却不知缺什么的拼图。~ + t6.5
++ ~等我们打垮十字军，你会回兰坦去看他们吗？~ + t6.6
++ ~至少你还有记忆以外的东西可以抓住。~ + t6.7
++ ~我宁愿你别说了。这……听得我不舒服。~ + t6.3a
++ ~够了。你的话我一个字都不想再听。永远。~ + t6.3b

CHAIN C02AURAJ t6.5
~一点一点找回记忆，是种又苦又甜的感觉。我不知道还能怎么解释……可我绝不想让你经历那样的事。太残忍了。~
EXTERN C02AURAJ t6.7

CHAIN C02AURAJ t6.6
~我——聊到这个，我现在真的很想回去。也许我还能和家人、和我的发明安静地过一阵子……我别无所求。~
EXTERN C02AURAJ t6.7

CHAIN C02AURAJ t6.7
~你从没跟我说过葛立安的事。若伤口还新，我能理解，可也许你至少能告诉我……他对你好吗？你想他吗？~
END
+ ~Global("C02AuraRomanceActive","GLOBAL",1)~ + ~两样都是，非常。~ + t6.8
+ ~!Global("C02AuraRomanceActive","GLOBAL",1)~ + ~两样都是，非常。~ + t6.9
+ ~Global("C02AuraRomanceActive","GLOBAL",1)~ + ~直到他走了我才明白。那是我后悔以那种方式收场的关系之一。~ + t6.8
+ ~!Global("C02AuraRomanceActive","GLOBAL",1)~ + ~直到他走了我才明白。那是我后悔以那种方式收场的关系之一。~ + t6.9
++ ~我恨葛立安。他死了我很高兴。~ + t6.10
++ ~我对他没什么强烈的感觉。~ + t6.10
++ ~你说得对，伤口还新。我不想谈。~ + t6.3a
++ ~我不跟你谈这个。今天不谈，永远不谈。~ + t6.3b

CHAIN C02AURAJ t6.8
~……太对不起了。我——（她紧紧抱住你）~
END
++ ~嘿……嘿，过了，奥拉。~ + t6.8a
++ ~谢谢。~ + t6.8b
++ ~别碰我！~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ + t6.8c

CHAIN C02AURAJ t6.8a
~我——对不起。我想我是感受到了你的悲伤，一时承受不住。我仍看得出那很痛，可是……还是。我不该那样做。~
END
++ ~没事。只是别这样突然吓我。~ + t6.8d
++ ~你是好意。我只是不习惯那种关切。~ + t6.8d
++ ~我珍视你的友谊，奥拉，可是……我希望我们就停在这儿。~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ + t6.8d
++ ~别再那样了。~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ + t6.8d

CHAIN C02AURAJ t6.8b
~你——*抽鼻子* 你不用谢我，<CHARNAME>。不用为安慰我在乎的人道谢。~
EXTERN C02AURAJ t6.11

CHAIN C02AURAJ t6.8c
~哦……我明白，那样不对……~
EXTERN C02AURAJ t6.8a

CHAIN C02AURAJ t6.8d
~嗯……你已经说得很清楚了。我明白。~
EXTERN C02AURAJ t6.11

CHAIN C02AURAJ t6.9
~对不起。我看得出那一定还在痛。~
EXTERN C02AURAJ t6.11

CHAIN C02AURAJ t6.10
~为什么——不。我不该问。你大概有你的理由。~
EXTERN C02AURAJ t6.11

CHAIN C02AURAJ t6.11
~在我失去丽华小姐之前，那五年里我最接近母亲的人……我唯一经历过的失去，是我叔叔埃利乌斯。我从不知道失去一个一直在你身边的人是什么痛。所以，不管你对葛立安是什么感觉，我……仍然难过。~
END
++ ~你叔叔是怎么死的？~ + t6.12
++ ~你为什么跟我说这个？~ + t6.13
++ ~够了。这事不说了。~ + t6.14

CHAIN C02AURAJ t6.12
~火药事故。那时贡德赐我们知识不久，出错是常有的……太惨了。我不想谈。~
EXTERN C02AURAJ t6.13

CHAIN C02AURAJ t6.13
~我……不知道自己为什么说这些。也许只是我想靠找共同点来拉近关系……也许没用，可这是我会的唯一办法。~
= ~也许我们就到此为止。谈失去只能带我们到这么远。不管怎样……谢谢你听我说。~
EXIT

CHAIN C02AURAJ t6.14
~好——好吧，<CHARNAME>。谢谢你把这场谈话维持这么久。~
EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",14)~ THEN C02AURAJ t7
~你知道吗，我从没想过我会对战争和打斗说这种话，可我其实……开始觉得有意思了。事实上非常有意思。这不奇怪吗？~ [C0BLANK]
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)~
END
++ ~听你这么说我很高兴。~ + t7.1
++ ~我以为你讨厌冲突。什么变了？~ + t7.2
++ ~确实很奇怪。我一点也没觉得有意思。~ + t7.3
++ ~别说了。我不想听。~ + t7.x

CHAIN C02AURAJ t7.x
~哦……抱歉。~
DO ~SetGlobal("C02AuraTalk","GLOBAL",-1)~ EXIT

CHAIN C02AURAJ t7.1
~我不确定是你的影响，还是……就是你这个人，可我正与自己和解。我更容易原谅自己了，也能从生活仍能带来的每一点欢乐中得到安慰。~
= ~所以……谢谢你，<CHARNAME>。谢谢你带我走这趟旅程，谢谢你一路听我说话、支持我。谢谢你做真正的朋友。~
END
++ ~只是朋友？没有别的？~ + t7.6
++ ~不客气。~ + t7.4
++ ~这是提前的告别吗？~ + t7.5
++ ~随便。管住嘴就行。~ + t7.x

CHAIN C02AURAJ t7.2
~这很惊人，我知道……我还是不喜欢它，可也许我已经麻木了，或者……我学会了从好的部分里找安慰。~
EXTERN C02AURAJ t7.1

CHAIN C02AURAJ t7.3
~一点都没有？若是流血和死亡压得你难受，我能理解，可是……就算那样，人也能从朋友那里得到安慰。~
EXTERN C02AURAJ t7.1

CHAIN C02AURAJ t7.4
~我不知道这一切何时结束，可我们分开时，我会最想念你。若之后再相见，我希望自己已成为更配得上你友谊的人。~
END
+ ~Global("C02AuraRomanceActive","GLOBAL",1)~ + ~你已经远超配做我朋友的地步了……还更多。~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",2)~ + t7.6
+ ~Global("C02AuraRomanceActive","GLOBAL",1)~ + ~那对我来说已经够了。~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ EXIT
+ ~Global("C02AuraRomanceActive","GLOBAL",1)~ + ~收起来吧。你已经说得够多了。~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ EXIT
IF ~!Global("C02AuraRomanceActive","GLOBAL",1)~ EXIT

CHAIN C02AURAJ t7.5
~不——嗯，也许吧，要是我们的冒险比我预想的更早结束，或者我们中有一个没能活下来……不过这种事大概不该提……~
EXTERN C02AURAJ t7.4

CHAIN C02AURAJ t7.6
~我——呃，我没想到你是那样看我的……~
= ~不，那是谎话。我想我心里有一部分一直都知道。所以我才这么依恋你……我只是不敢承认。不敢对你承认，也不敢对自己承认……~
= ~在今天之前，我会觉得自己太怯弱、配不上你，可自从我学会了接受命运给我的恩赐……哈哈，我就再没理由假装了。~
= ~我真的、真的很喜欢你，<CHARNAME>。你不只是美，你坚强、勇敢、热烈……我希望自己成为的一切。~
END
++ ~你已经是那样的人了，奥拉。接受这一点吧。~ + t7.7
++ ~你不需要那些。我本来就喜欢你现在的样子。~ + t7.7
++ ~不用再多说了。过来。~ + t7.8

CHAIN C02AURAJ t7.7
~不，肯定不会！哈哈……可我想你不会骗我。~
EXTERN C02AURAJ t7.8

CHAIN C02AURAJ t7.8
~……*轻笑*~
= ~真奇怪。我们的战斗比以前更难了，可现在……我没有比这更幸福的时候。~
EXIT

CHAIN IF ~Global("C02AuraTalk","GLOBAL",16)~ THEN C02AURAJ t8
~我们……我们真要从那道传送门跳进地狱，对吧？这不全是场大噩梦？~ [C0BLANK]
DO ~IncrementGlobal("C02AuraTalk","GLOBAL",1)~
END
+ ~Global("C02AuraRomanceActive","GLOBAL",2)~ + ~恐怕不是。~ + t8.1
+ ~!Global("C02AuraRomanceActive","GLOBAL",2)~ + ~恐怕不是。~ + t8.2
++ ~你怕吗？~ + t8.3
++ ~（捏她一下）~ + t8.4
+ ~Global("C02AuraRomanceActive","GLOBAL",2)~ + ~是的。最好动手吧。~ + t8.1
+ ~!Global("C02AuraRomanceActive","GLOBAL",2)~ + ~是的。最好动手吧。~ + t8.2
++ ~现在不行，奥拉。~ + t8.0

CHAIN C02AURAJ t8.0
~那好吧。我留到我们熬过这一切之后。当然，假设我们能熬过去……呃，我是说，当然能！~
END
IF ~Global("C02AuraRomanceActive","GLOBAL",2)~ EXTERN C02AURAJ t8.9
IF ~!Global("C02AuraRomanceActive","GLOBAL",2)~ EXTERN C02AURAJ t8.10

CHAIN C02AURAJ t8.1
~嘿嘿……对，你说得对。要真是噩梦，你就不会在这儿跟我一起面对了。~
EXTERN C02AURAJ t8.2

CHAIN C02AURAJ t8.2
~你知道吗，这很怪，可是……就算现在眼睁睁盯着地狱，我也不怕了，不再怕了。有你在的时候不怕。~
= ~你觉得呢，<CHARNAME>？你觉得我变强了吗？现在最关键的时候，你能倚靠我吗？~
END
+ ~!Global("C02AuraRomanceActive","GLOBAL",2)~ + ~我会把命交给你。~ + t8.5
+ ~Global("C02AuraRomanceActive","GLOBAL",2)~ + ~我会把命交给你……还有更多。~ + t8.5
++ ~你远胜我们初遇时的你。哎，你看着连个子都高了。~ + t8.6
++ ~只要你能像倚靠领袖那样倚靠我就行。~ + t8.7
++ ~我怀疑，可看起来我别无选择，对吧？~ + t8.x

CHAIN C02AURAJ t8.3
~嗯……~
END
IF ~Global("C02AuraRomanceActive","GLOBAL",2)~ EXTERN C02AURAJ t8.1
IF ~!Global("C02AuraRomanceActive","GLOBAL",2)~ EXTERN C02AURAJ t8.2

CHAIN C02AURAJ t8.4
~哎哟！~
= ~……我想也是。*叹气*~
EXTERN C02AURAJ t8.2

CHAIN C02AURAJ t8.5
~那好。我们去的地方，只会有我们几个人。你大概不得不这样。*轻笑*~
EXTERN C02AURAJ t8.8

CHAIN C02AURAJ t8.6
~嘿嘿，那不可能。或者……可能？我确实觉得自己长了，不论比方说还是字面上。不管怎样，这念头很甜。~
EXTERN C02AURAJ t8.8

CHAIN C02AURAJ t8.7
~当然能。永远能。~
EXTERN C02AURAJ t8.8

CHAIN C02AURAJ t8.8
~很高兴遇见你，<CHARNAME>。既然认识了你，我再不想待在别处。呃，就算这意味着跳进一个不保证能回来的地狱深渊……~
END
+ ~Global("C02AuraRomanceActive","GLOBAL",2)~ + ~我也再不想身边有别人。~ + t8.9
+ ~!Global("C02AuraRomanceActive","GLOBAL",2)~ + ~我也再不想身边有别人。~ + t8.10
+ ~Global("C02AuraRomanceActive","GLOBAL",2)~ + ~谢谢你的支持。这让事情轻松多了。~ + t8.9
+ ~!Global("C02AuraRomanceActive","GLOBAL",2)~ + ~谢谢你的支持。这让事情轻松多了。~ + t8.10
++ ~随便。你只是后援。别碍事。~ + t8.x

CHAIN C02AURAJ t8.9
~嗯，也许是热，我的脸全红了……嘿嘿。我几乎想吻你，可这会儿似乎不太合适，对吧？~
EXTERN C02AURAJ t8.10

CHAIN C02AURAJ t8.10
~嗯，再拖也没意义了，对吧？动手吧！~
EXIT

CHAIN C02AURAJ t8.x
~哦。原来是这样……那我就不烦你了。不过我仍会跟着你，为了我欠你的一切。走吧，<CHARNAME>。~
END
IF ~Global("C02AuraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ EXIT
IF ~!Global("C02AuraRomanceActive","GLOBAL",2)~ EXIT

EXTEND_TOP BDJAHEIR 86
+ ~Global("C02AuraTalk","GLOBAL",9)
PartyHasItem("c02asack")~ + ~这些向日葵种子是我从奥拉那儿拿的。她需要向日葵花瓣做药茶来养身子。你能帮忙吗？~ + jaheira.sunflower1
END

CHAIN BDJAHEIR jaheira.sunflower1
~哼。她本来自来找我更合理，不过……我猜她大概还因为我变身的能力而怕我。也罢，我用德鲁伊魔法把这些种子快快催发栽育。只需一刻……~
DO ~FadeFromColor([30.0],0)
PlaySound("EFF_P18")
CreateVisualEffectObject("icraisei",Myself)
TakePartyItem("c02asack")
DestroyItem("c02asack")
GiveItemCreate("c02asunf",Player1,1,0,0)~
= ~……好了。成了。经过这一程，它们略微干枯，可够药用。~
EXIT

EXTEND_TOP BDONORO 0
+ ~Global("C02AuraTalk","GLOBAL",9)
PartyHasItem("c02asack")~ + ~你看着像德鲁伊。你能用魔法帮我催发这些向日葵种子吗？~ + onoroth.sunflower1
END

CHAIN BDONORO onoroth.sunflower1
~向日葵种子，你说？让我看看。~
= ~嗯……是的，看着健康。我能做，可这种魔法要我耗不少。给我两千金币，我就替你栽育这些种子。~
END
+ ~PartyGoldGT(1999)~ + ~金币在这儿。~ DO ~TakePartyGold(2000)~ + onoroth.sunflower2
+ ~!PartyGoldGT(1999)~ + ~我身上现在没那么多金币。~ + 2
++ ~两千金币？！我另找人。再见。~ + 2

CHAIN BDONORO onoroth.sunflower2
~好。用不了多久。~
DO ~FadeFromColor([30.0],0)
PlaySound("EFF_P18")
CreateVisualEffectObject("icraisei",Myself)
TakePartyItem("c02asack")
DestroyItem("c02asack")
GiveItemCreate("c02asunf",Player1,1,0,0)~
= ~给。借自然之佑，你的向日葵种子已长成了。拿去走吧。我得歇息。~
EXIT

//////////////////////////////////////////////////////////////////////////////////
///////////////////////////////INTERJECTIONS//////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

// Ammon

INTERJECT BDAMMON 0 C0AuraBDAMMON0
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~那些听着像某种预言药水的成分。不知她要用它做什么……~
EXTERN BDAMMON 1

// Andrus

I_C_T BDANDRUS 3 C0AuraBDANDRUS
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦哦，这可不妙。这种残留物不经魔法辅助，没法迅速稳定下来。而且也没有安全的处理办法……~
END

// Barghest

I_C_T2 BDBARGHE 8 C0AuraBDBARGHE8
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~那本该是鼓舞人心的话吗？那很瘆人。~
END

// Belegarm

CHAIN IF WEIGHT #-1 ~Global("C02AuraTrollbaneArrow","GLOBAL",2)~ THEN BDBELEGA belegarm.trollbane
~那个侏儒姑娘……兰坦来的那个，跟我说了她一直在做的屠魔箭。我打赌我们每天能补上二十支。~
DO ~AddStoreItem("bdbelega","c0auaro4",20,6)
SetGlobal("C02AuraTrollbaneArrow","GLOBAL",3)~
= ~我有几个炼金术士在调屠魔毒，可你得替我还这笔开销。整批三千金币。~
COPY_TRANS BDBELEGA 1

EXTEND_TOP BDBELEGA 1
+ ~GlobalTimerExpired("C02AuraTrollbaneTimer","GLOBAL")
PartyGoldGT(2999)~ + ~我想买二十支屠魔箭。~ DO ~SetGlobalTimer("C02AuraTrollbaneTimer","GLOBAL",ONE_DAY) GiveItemCreate("c0auaro4",Lasttalkedtoby(Myself),20,0,0) TakePartyGold(3000)~ EXTERN BDBELEGA belegarm.trollbane2
+ ~GlobalTimerExpired("C02AuraTrollbaneTimer","GLOBAL")
!PartyGoldGT(2999)~ + ~我想买二十支屠魔箭。~ EXTERN BDBELEGA belegarm.trollbane3
END

CHAIN BDBELEGA belegarm.trollbane2
~二十支屠魔箭给你。三千金币。~
= ~还要别的吗？~
COPY_TRANS BDBELEGA 1

CHAIN BDBELEGA belegarm.trollbane3
~你身上现在没有三千金币。等你有钱再来。不然就别浪费我时间。~
COPY_TRANS BDBELEGA 1

// Bellowgulp

I_C_T BDBELLOW 2 C0AuraBDBELLOW2
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~你好，深石之亲！我一直想见见我地下的同族。能问你的名字吗？~
END

I_C_T BDBELLOW 3 C0AuraBDBELLOW3
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~“调配者”？你是说……它帮你调配药水？怎么做到的？~
== BDBELLOW ~嗯，你看，它的孢子和体内液体有炼金特性。它在自己身体里把药水做成，然后，呃……“排泄”出来。~
== C02AURAJ ~呃！那……真恶心……可又很迷人。我几乎好奇到想多了解一点。~
== BDBELLOW ~一切都很复杂，至少他是这么说的。你最好自己去问他，小姐。呃……前提是你懂孢子语。至于你，<SIRMAAM>，要来瓶药水吗？~
END

// Bridgefort

I_C_T BDBF1 1 C0AuraBDBF11
== C02AURAJ IF ~IsValidForPartyDialogue("C0Aura")~ THEN ~负——负能量……不管十字军向我们扔了什么，它都在抽走我们的生命力。这可不妙……~
END

EXTEND_TOP BDWYNAN 7 #4
+ ~IsValidForPartyDialogue("C0Aura")~ + ~奥拉。你能提出什么有用的办法吗？~ EXTERN C02AURAJ bdwynan7
END

CHAIN C02AURAJ bdwynan7
~负能量不属于这个位面……它会危害这里所有人，先是伤者，然后是好的人。我们得赶快驱除源头。~
= ~那一定是被奥术强行引来的。我们需要原版法术卷轴来反推它的效果。~
COPY_TRANS BDWYNAN 8

EXTEND_BOTTOM BDWYNAN 14
+ ~IsValidForPartyDialogue("C0Aura") Class("C0Aura",MAGE_ALL)~ + ~正是。你愿意来动手吗，奥拉？~ EXTERN C02AURAJ bdwynan14
END

CHAIN C02AURAJ bdwynan14
~我尽力。大家退后！驱散邪恶魔法时会发生什么，谁也说不准……~
DO ~SetGlobal("BD_SDD200","GLOBAL",3)
SetGlobal("BD2100GL","GLOBAL",3)
SetGlobal("bd_sdd200_c0aura","bd2100",1)
StartCutSceneMode()
ClearAllActions()
StartCutSceneEx("c0cutgl1",FALSE)~ EXIT

// Clovista

EXTEND_TOP BDCLOVIS 3 #4
+ ~IsValidForPartyDialogue("C0Aura")~ + ~你看着异常感兴趣，奥拉。有什么话要说？~ DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2) SetGlobal("bd_sdd301_clovista_skill","global",2)~ EXTERN C02AURAJ bdclovis1
END

CHAIN C02AURAJ bdclovis1
~我不擅长近身打斗，可是经验教过我：个子矮的时候，举高挥刀不值当。你会太快把自己累垮。~
== BDCLOVIS ~我在操练时确实累得很快。我以为我需要更多训练。~
== C02AURAJ ~你要是利用自己的个头，会长进更快。攻腿。等他们倒下，打脸就容易了。~
EXTERN BDCLOVIS 5
/*
// Coldhearth Lair

CHAIN IF WEIGHT #-1 ~Global("C02AuraColdhearthLair","bd1200",1)~ THEN C02AURAJ coldhearth
~嗯呃……有点不对劲……几乎是熟悉的……~ [C0BLANK]
DO ~SetGlobal("C02AuraColdhearthLair","bd1200",2)~
END
++ ~怎么了，奥拉？~ + coldhearth.1
++ ~你没事吧？哪里伤得重吗？~ + coldhearth.1
++ ~你现在可别在我面前倒下。~ + coldhearth.1

CHAIN C02AURAJ coldhearth.1
~不……我没事，<CHARNAME>。我只是脑袋里突然一阵剧痛……像是我正想记起什么重要的事……~
= ~不知为什么，可是……那些管子、那些笔记……就像我来过这地方，或者某个一模一样的地方……一样骇人。可我就是想不起来。~
END
+ ~Global("C02AuraWasInBG1","GLOBAL",1) CheckStatGT(Player1,9,INT)~ + ~说起来，你提过你遭遇海难、最后到了科祖库拉时失去了记忆。有没有可能你还缺着一些记忆？~ + coldhearth.2
+ ~OR(2)
!Global("C02AuraWasInBG1","GLOBAL",1)
!CheckStatGT(Player1,9,INT)~ + ~会不会是你忘了过去某件重要的事？~ + coldhearth.2
++ ~随便。别让一点头痛碍事就行。~ + coldhearth.3
++ ~快点恢复，不然我把你落下。~ + coldhearth.3

CHAIN C02AURAJ coldhearth.2
~有可能，可是……以前我失忆时，过去任何相关的东西都会在我心里激起反应，可这次，我……没法……看清……~
= ~唉，没用。也许只是空气太臭，可我完全没法集中。希望过些时候会想起来。~
EXIT

CHAIN C02AURAJ coldhearth.3
~对——对不起，<CHARNAME>，我马上跟上。~
EXIT
*/
// Dog

I_C_T BDDOGW01 0 C0AuraBDDOGW01
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*喵*~
== C02AURAJ ~哦，不。冷静，可可酱，那只狗一定是个好家伙，一辈子没追过猫……~
== BDDOGW01 ~*嗅嗅*~
== C02AURAJ ~嘿，把你的鼻子从我包里拿开！~
END

I_C_T BDJAHEIJ 29 C0AuraBDJAHEIJ29
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~我，呃，不觉得兰坦的水井鸡是你想的那个样子，贾希拉……~
END

// Dosia

EXTEND_TOP BDDOSIA 13 #4
+ ~IsValidForPartyDialogue("C0Aura")~ + ~你懂些医术，对吧，奥拉？有什么建议吗？~ EXTERN C02AURAJ bddosia11
END

CHAIN C02AURAJ bddosia11
~嗯……我们可以试试黑刺李树皮。附近的林子看着气候合适。它不是立时见效的药，可至少能阻止病情恶化。~
DO ~SetGlobal("bd_sdd302_uncommon_cold","global",2)
SetGlobal("bd_sdd302_blackthorn","global",1)
AddJournalEntry(%aura_sod_blackthorn_quest%,QUEST)~ EXTERN BDDOSIA 16

// Elandro

I_C_T BDELANDR 17 C0AuraBDELANDR17
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~魔眼怪！这座堡垒里的魔法一定在吸食这里人们的情绪！这真的、真的很糟！~
END

// Ettin

ADD_TRANS_TRIGGER BDETTIN 8 ~!IsValidForPartyDialog("C0Aura")~

EXTEND_TOP BDETTIN 8
+ ~IsValidForPartyDialog("C0Aura")~ + ~呃，我真不想要你的缠腰布。不过谢了。不，求你。穿着吧。~ EXTERN C02AURAJ bdettin1
+ ~IsValidForPartyDialog("C0Aura")~ + ~你在干什么……不，不。我不用看这个。~ EXTERN C02AURAJ bdettin2
+ ~IsValidForPartyDialog("C0Aura")~ + ~遮住自己，怪物！我快吐了。~ EXTERN C02AURAJ bdettin1
END

CHAIN C02AURAJ bdettin1
~……哦。恶。~
END
IF ~IsValidForPartyDialogue("SAFANA")~ EXTERN BDSAFANJ 206
IF ~!IsValidForPartyDialogue("SAFANA")~ EXTERN BDETTIN 9

CHAIN C02AURAJ bdettin2
~……哦。恶。~
END
IF ~IsValidForPartyDialogue("GLINT")~ EXTERN BDGLINTJ 79
IF ~!IsValidForPartyDialogue("GLINT")~ EXTERN BDETTIN 9

// Floss & Gurgle

I_C_T2 BDFLOSS 27 C0AuraBDFLOSS27
== BDFLOSS ~也拿上这个，<PRO_RACE>。是小鱼，很好吃的零嘴。弗洛斯说多了话总是饿。你一定也饿。~
DO ~GiveItemCreate("c02afish",Player1,1,0,0)~
END

// Glint

I_C_T BDGLINT 18 C0AuraBDGLINT18
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~你父亲叫加德纳？我是说，加德纳森？不，太简单了。你何不自己说？~
END

// Gnaler and Kambolder

I_C_T BDGNALER 3 C0AuraBDGNALER3
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~唉，真可爱。你们俩去好好冒险吧。~
END

// Discount Black Pits

I_C_T BDTCRWD2 0 C0AuraBDTCRWD20
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呼……*哼气* 呃？！有人说松鼠？~
END

// Imoen

EXTEND_BOTTOM BDIMOEN 104
+ ~Global("C0Aura_party_epilogue","global",1)~ + ~我从没想过奥拉会在我最需要的时候消失。~ EXTERN BDIMOEN bdimoen1
END

EXTEND_BOTTOM BDIMOEN 109
+ ~Global("C0Aura_party_epilogue","global",1)~ + ~我从没想过奥拉会在我最需要的时候消失。~ EXTERN BDIMOEN bdimoen1
END

CHAIN BDIMOEN bdimoen1
~我以为她也肯帮忙，可是……我一直没找到她。听说她往南去了，可不管什么原因，我不知道。也许我们还会再碰上她。~
EXTERN BDIMOEN 119

// Irina

I_C_T2 BDIRINA 48 C0AuraBDIRINA48
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*吸气* 天哪！那不对……可太可爱了！~
END

// Isabel

I_C_T BDISABEL 35 C0AuraBDISABEL35
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*轻笑* 是有点……~
END

// Kruntur

I_C_T BDKRUNTU 8 C0AuraBDKRUNTU8
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哇！有自我意识的盔甲？这倒新鲜。~
END

// Ladle

I_C_T BDLADLE 5 C0AuraBDLADLE5
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~大勺？叫这种名字的侏儒可不是天天能遇到。你怎么得来的？~
== BDLADLE ~嗯，你看，我老娘在一家饭馆干活，还有……呃，这故事挺丢人的。别问了。~
END

// Map Guard

I_C_T BDMAPGUA 2 C0AuraBDMAPGUA2
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*嘘* 我趁守卫分神时把地图描了一份。现在我们可以不管它了。~
DO ~SetGlobal("bd_map_fence","global",3)
GiveItemCreate("bdmisc24","C0Aura",1,0,0)
TriggerActivation("map_table",FALSE)~
END

// Phossey

I_C_T2 BDPHOSSE 3 C0AuraBDPHOSSE3
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~…… …… *不自在地挪动身体*~
END

// Poisoned Crusader

EXTEND_BOTTOM BDPCRUS 3 #6
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ + ~奥拉？你能看看吗？~ EXTERN BDPCRUS bdpcrus
END

EXTEND_BOTTOM BDPCRUS 7 #5
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ + ~奥拉？你能看看吗？~ EXTERN BDPCRUS bdpcrus
END

CHAIN BDPCRUS bdpcrus
~嗯哼。我已经在看了。~
= ~哦……这……可不妙。不管这毒是什么，它已经跟他们的血流融为一体了。我无能为力。这需要专门的解药。~
EXTERN BDPCRUS 6

// Potion of Sleep

ADD_TRANS_TRIGGER BDBELT 10 ~Global("C02AuraPoisonedSupplies","GLOBAL",0)~ DO 2

EXTEND_TOP BDBELT 10 #3
+ ~Global("bd_poison","bd0035",1)
Global("bd_MDD1001_morale","global",1)
GlobalGT("C02AuraPoisonedSupplies","GLOBAL",0)~ + ~我被要求去毒害龙矛堡里十字军的补给。可我选择了用无痛安眠药将他们催眠，好让双方都少死人。我对盟友与敌人都以慈悲相待。~ DO ~IncrementGlobal("bd_trial_hero","bd0035",1)
IncrementGlobal("bd_trial_evil","bd0035",-1)
IncrementGlobal("bd_trial_case","bd0035",1)
SetGlobal("bd_poison","bd0035",2)~ EXTERN BDBELT 11
END

CHAIN IF WEIGHT #-1 ~Global("C02AuraPoison","GLOBAL",1)~ THEN C02AURAJ poison
~<CHARNAME>……关于那桩毒药……德兰西先生在的时候我不想说什么，可要是你宁愿让十字军失能、又不重创他们，我有个主意。~ [C0BLANK]
DO ~SetGlobal("C02AuraPoison","GLOBAL",2)~
END
++ ~你说，我听着。~ + poison.1
+ ~PartyHasItem("bdpotn01")~ + ~不必。敌人受什么罪，我毫不在意。~ + poison.0
+ ~Global("bd_MDD1001_morale","global",1)~ + ~我不打算靠诡计赢这场战争，奥拉。~ + poison.3

CHAIN C02AURAJ poison.0
~我……我不喜欢这听着的意思，不过……我想这由你决定。~
EXIT

CHAIN C02AURAJ poison.1
~嗯，我是这么想的……不用毒药，我可以做一种安眠药，用在十字军的补给上。等真正开战时，但愿他们都会昏过去、打不动了。~
= ~仗会好打些，双方流的血也会少些。这难道不是更好的选择吗？~
END
++ ~这主意其实很好。就按你说的办。~ + poison.2
+ ~PartyHasItem("bdpotn01")~ + ~我觉得这比十字军配得的更慈悲了。我用毒药。~ + poison.0
+ ~Global("bd_MDD1001_morale","global",1)~ + ~不。我们光明正大、堂堂正正地跟十字军打。~ + poison.3

CHAIN C02AURAJ poison.2
~那我去炼金术士的帐篷一趟，马上回来。~
DO ~FadeFromColor([30.0],0) TakePartyItem("bdpotn01") DestroyItem("bdpotn01") GiveItemCreate("c02apotn",Player1,1,0,0) SetGlobal("bd_MDD1001_morale","global",1)~
= ~给。我想浓度调对了，所以非常非常强。就算在水里稀释几滴，也够让人睡上一个钟头左右。~
EXIT

CHAIN C02AURAJ poison.3
~好……我想你最懂。~
EXIT

// Rat

I_C_T BDFRAT 3 C0AuraBDFRAT3
== C02AKOKO IF ~See("c02akoko")~ THEN ~*喵*~ [CAT01]
== C02AURAJ IF ~IsValidForPartyDialog("C0Aura")~ THEN ~嗯？可可酱？~
== C02AURA IF ~!IsValidForPartyDialog("C0Aura")~ THEN ~嗯？可可酱？~
== C02AKOKO ~*喵——呜！*~ [FAMCAT01]
== BDFRAT ~吱——！~
== C02AURAJ IF ~IsValidForPartyDialog("C0Aura")~ THEN ~哦！呃，我最好把他带得远——远的。等你跟那只，呃，老鼠说完话。~
== C02AURA IF ~!IsValidForPartyDialog("C0Aura")~ THEN ~哦！呃，我最好把他带得远——远的。等你跟那只，呃，老鼠说完话。~
END

// Rhonda

I_C_T BDGLINTJ 47 C0AuraBDGLINT47
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~唉，这是你表亲，格林特？她真可爱。呃，算了。我什么都没说……~
END

I_C_T BDGLINTJ 48 C0AuraBDGLINT48
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~唉，这是你表亲，格林特？她真可爱。呃，算了。我什么都没说……~
END

I_C_T BDRHONDA 1 C0AuraBDRHONDA1
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~太可怕了！真不敢相信他们会这么残忍……~
END

I_C_T BDRHONDA 2 C0AuraBDRHONDA2
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~太可怕了！真不敢相信他们会这么残忍……~
END

// Rhino beetle

I_C_T BDJAHEIJ 27 C0AuraBDJAHEIJ27
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦哦！看它多大！不可爱吗？~
END

CHAIN IF ~AreaCheck("BD0114")
Global("BD_POINT6","BD0114",2)~ THEN C02AURAJ rhinobeetle
~哦哦！看它多大！不可爱吗？~ [C0BLANK]
COPY_TRANS BDJAHEIJ 27

// Schael

EXTEND_TOP BDSCHAEL 40 #4
+ ~OR(2)
Global("SOD_fromimport","global",1)
BeenInParty("C0Aura")
Global("C02AuraSchael","GLOBAL",0)~ + ~奥拉呢？她应该不难找。~ DO ~SetGlobal("C02AuraSchael","GLOBAL",1)~ EXTERN BDSCHAEL bdschael
END

CHAIN BDSCHAEL bdschael
~嗯……我最近的情报提到那个兰坦侏儒和她的机械保镖离开了博德之门……奇怪的是，往北去了。据我所记，兰坦群岛在南方。~
== BDSCHAEL ~也许她正在往深水城去；既然我们计划与深水城的部队会合，远征队很可能在路上遇到她。找到她之后，她或许愿意重新加入你。~
COPY_TRANS BDSCHAEL 40

// Scrying Pool

I_C_T BDSCRY 0 C0AuraBDSCRY
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~一池探视法阵……这么强的很罕见。建这地方的那位法师一定很有本事。~
== BDSCRY ~……~ 
END

// Strunk

INTERJECT BDSTRUNK 3 C0AuraBDSTRUNK3
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~那——那太残忍了！你强行把元素精魂从它们的故乡位面拉来、束缚在这里？它们憎恨这样！~
EXTERN BDSTRUNK 5

// Takos

I_C_T BDTAKOS 0 C0AuraBDTAKOS
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呃，看那家旅店的样子，我都不确定你还剩门可关……~
== BDTAKOS ~我说过我们打烊了。~
END

// Thrix the Profane

EXTEND_BOTTOM BDTHRIX 21
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 22 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 23 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 24 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 26
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 27 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 28 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 29 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 30
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 31 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 32 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 33 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 34
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 35 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 36 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 37 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 38
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 39 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 40 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 41 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 42
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 43 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 44 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 45 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 46
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 47 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 48 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 49 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 50
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 51 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 52 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 53 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 54
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 55 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 56 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 57 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 58
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 59 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 60 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 61 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 62
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 63 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 64 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 65 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 66
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 67 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 68 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 69 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 70
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 71 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 72 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 73 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 74
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 75 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 76 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 77 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 78
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 79 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 80 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 81 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 82
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 83 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 84 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 85 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 90
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 91 #3
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 92 #5
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 93 #8
IF ~Global("C02_Saved_Aura","bd4500",0)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager1
END

CHAIN BDTHRIX ThrixWager1
~兰坦工艺的天才对斯里克斯来说必定是宝贵的资产。是的，她很合适。你怎么说，巴尔之子？~
END
++ ~我接受你的条件，魔鬼。出你的谜题吧，若我输了，我就把奥拉让给你。~ DO ~SetGlobal("C02AuraSacrifice","bd4500",1) SetGlobal("bd_thrix_sacrifice_companion","global",1)~ EXTERN BDTHRIX 116
+ ~OR(2) Global("C02AuraRomanceActive","GLOBAL",1) Global("C02AuraRomanceActive","GLOBAL",2)~ + ~别把奥拉说得像件物品，恶魔！她对我来说远不止如此，对你永远也不会是。~ DO ~SetGlobal("C02_Saved_Aura","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN C02AURAJ ThrixWager2
+ ~!Global("C02AuraRomanceActive","GLOBAL",1) !Global("C02AuraRomanceActive","GLOBAL",2)~ + ~你要求得太多了，恶魔。奥拉的灵魂太珍贵，我不能拿它冒险。换一个。~ DO ~SetGlobal("C02_Saved_Aura","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN C02AURAJ ThrixWager2
++ ~若有人肯这样牺牲朋友，那才真是个糟糕的<PRO_MANWOMAN>。若我答不出你的谜题，你就带走我，放他们继续上路。同意吗？~ EXTERN BDTHRIX 113
++ ~我不玩你这套扭曲的把戏，魔鬼。让开，否则付出代价。~ EXTERN BDTHRIX 12

CHAIN C02AURAJ ThrixWager2
~谢了，<CHARNAME>……可是……你为什么会考虑跟这头野兽做交易？~
== BDTHRIX ~哼。你太残忍了，竟不肯把这么一颗有用的小脑袋给斯里克斯。他本还想扩建他的拷问室。也罢……~
END
IF ~RandomNum(4,1)~ EXTERN BDTHRIX 78
IF ~RandomNum(4,2)~ EXTERN BDTHRIX 79
IF ~RandomNum(4,3)~ EXTERN BDTHRIX 80
IF ~RandomNum(4,4)~ EXTERN BDTHRIX 81

EXTEND_BOTTOM BDTHRIX 118
IF ~Global("C02AuraSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 119
IF ~Global("C02AuraSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 120
IF ~Global("C02AuraSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 121
IF ~Global("C02AuraSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 122
IF ~Global("C02AuraSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Aura")~ EXTERN BDTHRIX ThrixWager4
END

CHAIN BDTHRIX ThrixWager4
~嗯……斯里克斯已经看见了。毁灭与征服的机械，让斯里克斯的敌人俯首。来吧，小姑娘，到你的新主人这儿来。~
END
++ ~抱歉，奥拉。我想我不够聪明，没能答对。~ DO ~SetGlobal("C02_thrix_mark_Aura","global",1)~ EXTERN C02AURAJ ThrixWager5
++ ~我不这么认为。要被制伏的只有你，恶魔！~ EXTERN BDTHRIX 10

CHAIN C02AURAJ ThrixWager5
~不！勾玉……天上的精灵……护佑我……~
DO ~SetGlobal("bd_thrix_plot","global",11)~ EXTERN BDTHRIX 140

// Tristian

EXTEND_BOTTOM BDTRISTI 14
+ ~IsValidForPartyDialogue("C0Aura")~ + ~奥拉。~ EXTERN C02AURAJ bdtristi
END

CHAIN C02AURAJ bdtristi
~我听说过科罗尼尔，可从没下过……不过要是它跟普通象棋差不多，那也不会太难，对吧？~
EXTERN BDTRISTI 15

// Trollbane Arrow

CHAIN IF WEIGHT #-1 ~Global("C02AuraTrollbaneArrow","GLOBAL",1)~ THEN C02AURAJ trollbane
~要打巨魔的话，<CHARNAME>，你也许该带上这些箭。~ [C0BLANK]
DO ~SetGlobal("C02AuraTrollbaneArrow","GLOBAL",2)
GiveItemCreate("c0auaro4",Player1,5,0,0)~
= ~得知我们要穿过巨魔爪森林后，我就一直在做它们。箭里灌了屠魔毒，一种对付巨魔的毒。若进了它们的血流，就能阻止它们再生。~
END
++ ~很方便。谢谢你，奥拉。~ + trollbane.1
++ ~你还有更多吗？~ + trollbane.1
++ ~这才是我留你在队里的理由。~ + trollbane.1

CHAIN C02AURAJ trollbane.1
~我已经跟军需官贝勒加姆过了一遍炼金流程。他会尽快补货。不过材料不便宜，你得付钱。~
= ~我要说的就这些。我们可以继续走了。~
EXIT

// Vichand

EXTEND_TOP BDVICHAN 8 #5
+ ~IsValidForPartyDialogue("C0Aura")~ + ~奥拉，你觉得你能说服他吗？~ EXTERN C02AURAJ bdvichan
END

CHAIN C02AURAJ bdvichan
~您好，先生。呃……您看，我是兰坦来的奇械师，研究魔法已有几年了，还有……我想问问，您能不能给我一个机会，研究您用的那个法术？也许我能用它做出某种奇术发明，助十字军一臂之力。我会感激不尽。~
== BDVICHAN ~嗯。~
== C02AURAJ ~拜托了？~
EXTERN BDVICHAN 10

// Vidyadhar

EXTEND_TOP BDVIDYAD 9 #5
+ ~IsValidForPartyDialogue("C0Aura")~ + ~奥拉，有什么想法吗？~ EXTERN C02AURAJ bdvidyad
END

CHAIN C02AURAJ bdvidyad
~蜜蜂，当然。这不简单吗？~
EXTERN BDVIDYAD 10

// Voidstone

CHAIN IF WEIGHT #-1 ~Global("C02AuraVoidstone","GLOBAL",1)~ THEN C02AURAJ voidstone
~那些石头……负能量法石碎片。我能看看吗？~ [C0BLANK]
END
++ ~我不明白你为什么想看，不过去吧。~ + voidstone.1
++ ~当然。随你便。呃，不是字面那种随你便。~ + voidstone.1
++ ~快点。我宁愿它们不在我眼前。~ + voidstone.1

CHAIN C02AURAJ voidstone.1
~真……真邪恶……可它们有点……意思。要是我能取一小点残留样本……~
= ~呃。谢谢你抽时间，<CHARNAME>。给，拿回去吧。我不需要了。~
END
++ ~你打算拿那些粉末做什么？~ + voidstone.2
++ ~说清楚。~ + voidstone.2
++ ~我本想问你打算做什么，可我猜你反正也要说。~ + voidstone.2

CHAIN C02AURAJ voidstone.2
~没什么阴险的。我只是想也许能把它们做成某种爆炸武器。不过我只需要那些粉末。有这些我能做不少。~
= ~我一次做不了太多。太耗我的材料了……更别说还很危险。每次炼金只能做一枚。不过它威力很大，这我能保证。~
DO ~SetGlobal("C02AuraVoidstone","GLOBAL",2) AddXPObject("C0Aura",500)~ EXIT

// Wilhelmina

I_C_T BDWILHEL 0 C0AuraBDWILHEL0
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~萝卜汁？这可真是得慢慢习惯的口味……~
== BDWILHEL ~你说呢？给你来一杯萝卜汁？~
END

I_C_T BDWILHEL 1 C0AuraBDWILHEL1
== C02AURAJ IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~我……呃，以为我们在说萝卜，不是仙馔。除非萝卜汁有什么我从没读到过的神奇疗效……~
END

// Ulori

EXTEND_TOP BDULORI 3
+ ~PartyHasItem("c0auaro4")~ + ~看见这个了吗？这是火箭，里面灌满屠魔毒。你再动一下，我就把它捅进你那臭皮肉里。~ EXTERN BDULORI C0AuraULORI
END

CHAIN BDULORI C0AuraULORI
~啊啊啊！火，坏！把火拿离乌洛里！我什么都听你的！~
COPY_TRANS BDULORI 5

// "Koko-chan"

CHAIN IF WEIGHT #-1 ~AreaCheck("bd3000")
Global("C0_koko_coaliton_camp","bd3000",1)~ THEN C02AKOKO koko
~*喵*~ [CAT01]
DO ~SetGlobal("C0_koko_coaliton_camp","bd3000",2)~
END
IF ~IsValidForPartyDialog("C0Aura")~ EXTERN C02AURAJ koko.inparty
IF ~!IsValidForPartyDialog("C0Aura")~ EXTERN C02AURA koko.notinparty

CHAIN C02AURAJ koko.inparty
~嗯？可可酱？你想出去？好，给你。~
== C02AURAJ ~反正这地方现在大概很适合让他待着。围攻龙矛堡结束前，营地都会在这儿。看看这么多老鼠！~
END
++ ~我相信有些士兵也会乐意有他在旁边。~ EXTERN C02AURAJ koko.1
++ ~看来他在这儿会安全。~ EXTERN C02AURAJ koko.1
++ ~你确定他想留下？~ EXTERN C02AURAJ koko.2
++ ~谢天谢地。你们两个真让人受不了。~ EXTERN C02AURAJ koko.3

CHAIN C02AURAJ koko.1
~嗯，大概吧。我感觉我们接下来要去的地方会比以往更危险。倒不是说之前的地方不危险。~
EXTERN C02AURAJ koko.4

CHAIN C02AURAJ koko.2
~嗯……我不知道。要是他觉得该走了，他会走。可这由他。我想他其实不会。这儿有吃的有住的，他为什么要走？~
EXTERN C02AURAJ koko.4

CHAIN C02AURAJ koko.3
~呸。恨猫的家伙。坏蛋。~
EXTERN C02AURAJ koko.4

CHAIN C02AURAJ koko.4
~乖乖的，可可酱，好吗？不认得路就别乱跑。我还是会来看你的，好吗？好，再见！~
== C02AKOKO ~*喵*~ [CAT01]
EXIT

CHAIN IF WEIGHT #-1 ~AreaCheck("bd3000")
Global("C0_koko_coaliton_camp","bd3000",2)~ THEN C02AKOKO koko2
~*喵*~ [CAT01]
END
IF ~IsValidForPartyDialog("C0Aura") Global("C02_koko_give_gift","GLOBAL",1)~ EXTERN C02AURAJ koko2.2 
IF ~!IsValidForPartyDialog("C0Aura") See("C0Aura") Global("C02_koko_give_gift","GLOBAL",1)~ EXTERN C02AURA koko2.3
IF ~!See("C0Aura") Global("C02_koko_give_gift","GLOBAL",1)~ + koko2.4
IF ~!PartyHasItem("c02afish")~ EXIT
+ ~PartyHasItem("c02afish")~ + ~（给可可一条沙丁鱼）~ DO ~SetGlobalTimer("C02_koko_gift_timer","GLOBAL",ONE_DAY)
TakePartyItem("c02afish") DestroyItem("c02afish")~ + koko2.1

CHAIN C02AKOKO koko2.1
~*嗅嗅*~
= ~（猫把沙丁鱼大口吞下，呼噜着亲昵地蹭你的腿。）~
EXIT

CHAIN C02AURAJ koko2.2
~你手里是什么，可可酱？嘿，它要给你，<CHARNAME>！~
EXTERN C02AKOKO koko2.4

CHAIN C02AURA koko2.3
~你手里是什么，可可酱？嘿，它要给你，<CHARNAME>！~
EXTERN C02AKOKO koko2.4

CHAIN C02AKOKO koko2.4
~（猫从嘴里吐出一样亮闪闪的东西落在你脚边。它似乎想让你收下。）~
DO ~SetGlobal("C02_koko_give_gift","GLOBAL",2) GiveItemCreate("c02aring",Player1,1,0,0)~ EXIT

CHAIN C02AURA koko.notinparty
~嗯？可可酱？你想出去？好，给你。~
== C02AURA ~反正这地方现在大概很适合让他待着。围攻龙矛堡结束前，营地都会在这儿。看看这么多老鼠！~
END
++ ~我相信有些士兵也会乐意有他在旁边。~ EXTERN C02AURA koko.a1
++ ~看来他在这儿会安全。~ EXTERN C02AURA koko.a1
++ ~你确定他想留下？~ EXTERN C02AURA koko.a2
++ ~谢天谢地。你们两个真让人受不了。~ EXTERN C02AURA koko.a3

CHAIN C02AURA koko.a1
~嗯，大概吧。我感觉我们接下来要去的地方会比以往更危险。倒不是说之前的地方不危险。~
EXTERN C02AURA koko.a4

CHAIN C02AURA koko.a2
~嗯……我不知道。要是他觉得该走了，他会走。可这由他。我想他其实不会。这儿有吃的有住的，他为什么要走？~
EXTERN C02AURA koko.a4

CHAIN C02AURA koko.a3
~呸。恨猫的家伙。坏蛋。~
EXTERN C02AURA koko.a4

CHAIN C02AURA koko.a4
~乖乖的，可可酱，好吗？别跑得离我太远。玩得开心！~
== C02AKOKO ~*喵*~ [CAT01]
EXIT

APPEND C02AURAJ

// SEES BEAR

IF ~Global("C0AuraHatesBears","GLOBAL",1)~ ihatebears
SAY ~呀啊啊！~
++ ~什么？！怎么了？~ DO ~SetGlobal("C0AuraHatesBears","GLOBAL",3)~ + ihatebears2
END

IF ~~ ihatebears2
SAY ~熊——熊——熊！是——是熊！哦不，它看见我们了！呀，我们快跑，<CHARNAME>！~
+ ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ + ~这是保证熊能追上你的最快办法，奥拉。遇到熊不该跑，否则它会把你当成猎物。~ + ihatebears5
++ ~你怕*熊*？~ + ihatebears3
++ ~我也不喜欢熊。你说得对，我们跑！~ + ihatebears4
END

IF ~~ ihatebears3
SAY ~别——别拿这个开玩笑。你不知道……在科祖库拉，人们说山里有吃人的熊。我这么小，它一口就能吞了我！哦，该死，我干嘛要说出来？这下我一整天都要想那画面了……~
IF ~~ + ihatebears4
END

IF ~~ ihatebears4
SAY ~哦哦，太迟了，我想它朝我们来了。你——你待在前面，<CHARNAME>，我站你后面。好射箭，当——当然不是要逃跑！~
IF ~~ EXIT
END

IF ~~ ihatebears5
SAY ~你——你说得轻松，熊才不会追你！我肯定在熊眼里已经是份可口的小点心了……*发抖*~
IF ~~ + ihatebears4
END

IF ~Global("C0AuraHatesBears","GLOBAL",2)~ ihatebearsagain
SAY ~呀啊啊！~
++ ~什么？！怎么了？~ DO ~SetGlobal("C0AuraHatesBears","GLOBAL",3)~ + ihatebearsagain2
END

IF ~~ ihatebearsagain2
SAY ~熊——熊——熊……是——~
++ ~熊？~ + ihatebearsagain3
++ ~别告诉我你还在怕熊？！~ + ihatebearsagain3
++ ~*叹气*~ + ihatebearsagain3
END

IF ~~ ihatebearsagain3
SAY ~为——为什么我们走到哪儿都有又大又吓人的熊？！~
IF ~~ EXIT
END

// SPIRIT BEAR

IF ~Global("C0AuraSummonedBears","GLOBAL",1)~ spiritbear
SAY ~呀！闹鬼和熊已经够糟了！现在还是熊的鬼魂？你就不能召点更可爱的东西吗？~
IF ~~ DO ~SetGlobal("C0AuraSummonedBears","GLOBAL",2)~ EXIT
END

// DRAGON

IF ~Global("C02AuraMorenthene","GLOBAL",2)~ dragontalk
SAY ~呼！那条龙比塞莉可怕多了，多了，多了。哦，我想她了……~
++ ~塞莉？~ DO ~SetGlobal("C02AuraMorenthene","GLOBAL",3)~ + dragontalk1
++ ~随便吧……~ EXIT
END

IF ~~ dragontalk1
SAY ~哦，塞莉是条赤铜龙。她全名叫塞里萨莱瑞克森——我们都简称她塞莉。她是我在兰坦最好的朋友之一。我们一起上学！~
++ ~你跟一条龙一起上学？~ + dragontalk2
+ ~!CheckStatGT(Player1,16,INT)~ + ~塞——里——萨……什么？~ + dragontalk3
+ ~CheckStatGT(Player1,16,INT)~ + ~“星辰与火焰的闪耀之光”？~ + dragontalk4
++ ~我连试都不试去念它。~ + dragontalk5
END

IF ~~ dragontalk2
SAY ~其实我们第一次见面是在校外。有一天我碰见了她的家，要是你知道赤铜龙怎么安置住处……嗯，总之，我跟她讲了学院的事，她觉得去上学挺好玩。~
IF ~~ + dragontalk6
END

IF ~~ dragontalk3
SAY ~塞里萨莱瑞克森！一开始有点难念，可你一旦上手，它念起来挺顺口。~
IF ~~ + dragontalk6
END

IF ~~ dragontalk4
SAY ~正是！我想你一定很懂龙语，<CHARNAME>。~
IF ~~ + dragontalk6
END

IF ~~ dragontalk5
SAY ~我不怪你。可我喜欢念它。这名字真是太精致了！~
IF ~~ EXIT
END

IF ~~ dragontalk6
SAY ~我真想知道塞莉这些年过得怎么样。她那么聪明，我打赌她早用学院学到的本事把家彻底重建了。下次去看她，我想我没法不靠帮忙就解开她的谜题……~
= ~哎，我想我说得久了点。现在这时候和地方，不适合我回忆往事，对吧？~
IF ~~ EXIT
END

// THRIX

IF ~Global("C02AuraSacrifice","bd4500",1)~ ThrixTalk0
SAY ~你……你……我信过你！可……可你就这样利用我？~
+ ~!Global("C02_thrix_mark_Aura","global",1)~ + ~我是在诈他。我并没真打算把你给那魔鬼。~ DO ~SetGlobal("C02AuraSacrifice","bd4500",2)~ + ThrixTalk2
+ ~Global("C02_thrix_mark_Aura","global",1)~ + ~我是在诈他。我并没真打算把你给那魔鬼。~ DO ~SetGlobal("C02AuraSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("C02_thrix_mark_Aura","global",1)~ + ~对不起，奥拉。~ DO ~SetGlobal("C02AuraSacrifice","bd4500",2)~ + ThrixTalk3
+ ~Global("C02_thrix_mark_Aura","global",1)~ + ~对不起，奥拉。~ DO ~SetGlobal("C02AuraSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("C02_thrix_mark_Aura","global",1)~ + ~我的灵魂比你的值钱得多，侏儒。记住这点。~ DO ~SetGlobal("C02AuraSacrifice","bd4500",2)~ + ThrixTalk4
+ ~Global("C02_thrix_mark_Aura","global",1)~ + ~我的灵魂比你的值钱得多，侏儒。记住这点。~ DO ~SetGlobal("C02AuraSacrifice","bd4500",2)~ + ThrixTalk1
END

IF ~~ ThrixTalk1
 SAY ~我……我不会就这么让他带走我。绝不。我相信丽华小姐和精魂们赐我的庇佑。可你……我再也不会信你。~
IF ~OR(2)
Global("C02AuraRomanceActive","GLOBAL",1)
Global("C02AuraRomanceActive","GLOBAL",2)~ + ThrixTalk5
IF ~!Global("C02AuraRomanceActive","GLOBAL",1)
!Global("C02AuraRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ ThrixTalk2
 SAY ~嗯……你确实解开了谜题。也许你就是那么信自己，可是……我从没想过你会冒那样的险。~
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk3
 SAY ~你是真的吗？我……我想信你。我真的很想。我从没想过你会对任何人做那种事，更别说是对我……~
IF ~~ + ThrixTalk6
END

IF ~~ ThrixTalk4
 SAY ~是，我会记住。我会一直记住。~
IF ~OR(2)
Global("C02AuraRomanceActive","GLOBAL",1)
Global("C02AuraRomanceActive","GLOBAL",2)~ + ThrixTalk5
IF ~!Global("C02AuraRomanceActive","GLOBAL",1)
!Global("C02AuraRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ ThrixTalk5
 SAY ~不管我们曾经有什么……不，不管我以为我们有什么……都结束了。~
IF ~~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ ThrixTalk6
 SAY ~我们……走吧。也许我现在只是太震动了，可我只想忘了这事曾经发生过。~
IF ~~ EXIT
END

// Reputation warning

IF ~Global("C02AuraReputationWarning","GLOBAL",1)~ reputation
 SAY ~我……我只是想说，我不喜欢你带路的方式，<CHARNAME>。我知道战时有些事不同，可你总该试着……仁慈一点？~
 ++ ~你说得对。我也许得重新考虑今后的做法。谢谢你讲出看法。~ DO ~SetGlobal("C02AuraReputationWarning","GLOBAL",2)~ + reputation.1
 ++ ~战时没有仁慈的余地。最好快点学会这点。~ DO ~SetGlobal("C02AuraReputationWarning","GLOBAL",2)~ + reputation.2
 ++ ~别把我当成什么仁慈的人。跟着我是你自己的选择。~ DO ~SetGlobal("C02AuraReputationWarning","GLOBAL",2)~ + reputation.3
 ++ ~不，我不行。还有，别叫我雪莉。~ DO ~SetGlobal("C02AuraReputationWarning","GLOBAL",2)~ + reputation.4
END

IF ~~ reputation.1
SAY ~哦，我……没想到这么容易。很高兴你在听，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ reputation.2
SAY ~也许你说得对，可是……眼看着事情发生、却只能站着，这一点也不会好受。也许我们就是不适合一起旅行，若真是这样，我们很快就得分开。我希望不至于到那一步。~
IF ~~ EXIT
END

IF ~~ reputation.3
SAY ~你说得有道理，可是……若我犯了错，那我迟早得承认。若真到了那一步，我别无选择，只能跟你分开。~
IF ~~ EXIT
END

IF ~~ reputation.4
SAY ~好。只是……继续这样下去，我在这儿待不久。我觉得有必要把这点说清楚。~
IF ~~ EXIT
END

// PID

IF ~GlobalGT("bd_plot","global",0)
!AreaCheck("BD0120")
!AreaCheck("BD0130")
IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])~ THEN BEGIN pid
 SAY ~进展如何？~ [C0BLANK]
 + ~Global("C02AuraTalk","GLOBAL",9) PartyHasItem("c02asunf")~ + ~我把你要的向日葵弄来了。~ DO ~SetGlobal("C02AuraTalk","GLOBAL",10) RealSetGlobalTimer("C02AuraTalkTimer","GLOBAL",TWELVE_HOURS)~ + sunflowers
 + ~OR(2)
 Global("C02AuraRomanceActive","GLOBAL",1)
 Global("C02AuraRomanceActive","GLOBAL",2)~ + ~（调情）~ + flirt
 + ~OR(2) Global("C02AuraBurstOrb","GLOBAL",0)
 GlobalTimerExpired("C0AuraBurstOrbTimer","GLOBAL")~ + ~你有爆裂球给我吗？~ DO ~SetGlobal("C02AuraBurstOrb","GLOBAL",1) SetGlobalTimer("C0AuraBurstOrbTimer","GLOBAL",THREE_DAYS) GiveItemCreate("c0autt01",Player1,1,0,0)~ + makeburstorb
 ++ ~能谈谈吗？~ + pidtalk
 + ~HasItem("c02aucat","c0aura")
 Global("C0AuraStopKitty","LOCALS",0)~ + ~希望你跟你那只猫说话能小点声。~ DO ~SetGlobal("C0AuraStopKitty","LOCALS",1)~ + stopkitty
 + ~HasItem("c02aucat","c0aura")
 !Global("C0AuraStopKitty","GLOBAL",0)~ + ~你想的话，可以再跟你那只猫说话了。~ DO ~SetGlobal("C0AuraStopKitty","GLOBAL",0)~ + rekitty
 + ~Global("C0AuraTalkStopped","GLOBAL",0)~ + ~我想让你停一阵子别再来找我说话。~ DO ~SetGlobal("C0AuraTalkStopped","GLOBAL",1)~ + notalk
 + ~!Global("C0AuraTalkStopped","GLOBAL",0)~ + ~你要是想再跟我说话，我不介意。~ DO ~SetGlobal("C0AuraTalkStopped","GLOBAL",0)~ + retalk
 ++ ~我觉得你的声音有点问题。~ + stringfix
 ++ ~我眼下什么都不需要。~ EXIT
END

IF ~~ pid.2
 SAY ~好。还有别的吗？~
 + ~Global("C02AuraTalk","GLOBAL",9) PartyHasItem("c02asunf")~ + ~我把你要的向日葵弄来了。~ DO ~SetGlobal("C02AuraTalk","GLOBAL",10) RealSetGlobalTimer("C02AuraTalkTimer","GLOBAL",TWELVE_HOURS)~ + sunflowers
 + ~OR(2)
 Global("C02AuraRomanceActive","GLOBAL",1)
 Global("C02AuraRomanceActive","GLOBAL",2)~ + ~（调情）~ + flirt
 + ~OR(2) Global("C02AuraBurstOrb","GLOBAL",0)
 GlobalTimerExpired("C0AuraBurstOrbTimer","GLOBAL")~ + ~你有爆裂球给我吗？~ DO ~SetGlobal("C02AuraBurstOrb","GLOBAL",1) SetGlobalTimer("C0AuraBurstOrbTimer","GLOBAL",THREE_DAYS) GiveItemCreate("c0autt01",Player1,1,0,0)~ + makeburstorb
 ++ ~能谈谈吗？~ + pidtalk
 + ~HasItem("c02aucat","c0aura")
 Global("C0AuraStopKitty","LOCALS",0)~ + ~希望你跟你那只猫说话能小点声。~ DO ~SetGlobal("C0AuraStopKitty","LOCALS",1)~ + stopkitty
 + ~HasItem("c02aucat","c0aura")
 !Global("C0AuraStopKitty","GLOBAL",0)~ + ~你想的话，可以再跟你那只猫说话了。~ DO ~SetGlobal("C0AuraStopKitty","GLOBAL",0)~ + rekitty
 + ~Global("C0AuraTalkStopped","GLOBAL",0)~ + ~我想让你停一阵子别再来找我说话。~ DO ~SetGlobal("C0AuraTalkStopped","GLOBAL",1)~ + notalk
 + ~!Global("C0AuraTalkStopped","GLOBAL",0)~ + ~你要是想再跟我说话，我不介意。~ DO ~SetGlobal("C0AuraTalkStopped","GLOBAL",0)~ + retalk
 ++ ~我觉得你的声音有点问题。~ + stringfix
 ++ ~我眼下什么都不需要。~ EXIT
END

IF ~~ sunflowers
SAY ~哦……谢谢你！它——它们完美。我花一会儿把它们加进药里……~
IF ~~ DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("c0aufade")~ EXIT
END

IF ~~ makeburstorb
SAY ~对，给你，玩得开心。小心点！~
IF ~~ EXIT
END

IF ~~ stopkitty
SAY ~哦，我太吵了吗？抱歉……~
IF ~~ EXIT
END

IF ~~ rekitty
SAY ~好！~
IF ~~ EXIT
END

IF ~~ notalk
SAY ~嗯，这可真没礼貌。唉！~
IF ~~ EXIT
END

IF ~~ retalk
SAY ~好吧。只因为你请求得好。~
IF ~~ EXIT
END

IF ~~ stringfix
 SAY ~呃。我得想想怎么处理这个。*咳* “啦——啦啦——啦——啦……”~
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("c0areset")~ EXIT 
END

// Talk

IF ~~ pidtalk
SAY ~当然……谈什么？~
	+ ~Global("C02AuraPID1","GLOBAL",0) HasItem("c02aucat","C0Aura")~ + ~那只猫你从哪儿弄来的？~ DO ~SetGlobal("C02AuraPID1","GLOBAL",1)~ + pid1
	+ ~Global("C02AuraPID1","GLOBAL",1)~ + ~你喜欢猫吗，奥拉？~ DO ~SetGlobal("C02AuraPID1","GLOBAL",2)~ + pid1.1
	+ ~Global("C02AuraPID2","GLOBAL",0)~ + ~你那张弓是把有意思的武器。是你设计的吗？~ DO ~SetGlobal("C02AuraPID2","GLOBAL",1)~ + pid2
	+ ~Global("C02AuraPID2","GLOBAL",1)~ + ~你的弓为什么叫“太阳射手”？~ DO ~SetGlobal("C02AuraPID2","GLOBAL",2)~ + pid2.1
	++ ~你现在对这局势怎么看？~ + pid3
	+ ~NumInPartyAliveGT(2)~ + ~我能问你某个同伴的事吗？~ + pid4
	+ ~GlobalGT("C02AuraTalk","GLOBAL",0)
	   Global("C0AuraStartRomance","GLOBAL",0)
	   Global("C0AuraRomanceActive","GLOBAL",1)~ + ~我得问一句，奥拉……你对我有意思吗？~ + pid5
	+ ~Global("C02AuraRomanceActive","GLOBAL",1)
	   Global("C02AuraLovePoem","GLOBAL",1)
	   PartyHasItem("c02apoem")~ + ~这首诗是你写的吗，奥拉？~ DO ~SetGlobal("C02AuraLovePoem","GLOBAL",2)~ + pid6
	+ ~Global("C02AuraRomanceActive","GLOBAL",1)~ + ~奥拉，我对你给我的这种关注没兴趣。我珍视我们的友谊，可我希望就停在这儿。~ + pid.breakrom1
	+ ~Global("C02AuraRomanceActive","GLOBAL",2)~ + ~奥拉，我想结束我们的关系。~ + pid.breakrom2
	++ ~我还想问别的事。~ + pid.2
	++ ~再想想，现在不了。~ + pid.end
END

IF ~~ pid.breakrom1
SAY ~我——好，如果你确定。你说的是真心话……对吧？~
++ ~是。我是真心的。~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ + pid.breakrom1.1
++ ~不，算了。我不知道自己在想什么。~ + pid.nobreakrom
END

IF ~~ pid.breakrom1.1
SAY ~那就只是朋友。没有别的。~
IF ~~ EXIT
END

IF ~~ pid.breakrom2
SAY ~你——就算你说了那一切之后？~
++ ~是。我是真心的。~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ + pid.breakrom2.1
++ ~不……我改主意了。我不能。~ + pid.nobreakrom
END

IF ~~ pid.breakrom2.1
SAY ~……~
= ~好——好吧。你的……你的幸福优先。~
IF ~~ EXIT
END

IF ~~ pid.nobreakrom
SAY ~别——别说这种话吓我，<CHARNAME>。~
IF ~~ EXIT
END

IF ~~ pid.end
SAY ~既然你这么说。~
IF ~~ EXIT
END

IF ~~ pid1
SAY ~哦，可可酱？我离开博德之门不久就捡到他了。他躲在一座烧毁的房子的灰烬里。大概是十字军干的……我看见他们留下的旗子。~
= ~我不知道他有没有主人，可也许他主人在逃难时把他丢下了。可怜的东西。我只是喂了他一条鱼，他就一直跟着我。我不忍心赶他走。~
= ~我不确定能养他多久。带一只可怜的小猫走这么危险的旅途，实在不安全。可在这地方，我上哪儿找个肯收留猫的人？~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid1.1
SAY ~嗯。我是说，松鼠仍是我的最爱，就像这儿的小穆菲，可我家里不许松鼠在屋里乱跑。家里有只棕色小虎斑猫陪着我。我对这些毛茸茸的小家伙就生了怜爱。~
= ~不知那只小猫如今还在我们家里游荡吗。要还在，现在该是只大猫了。~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid2
SAY ~太阳射手？嗯——不过那更多是合力做出来的。原设计是我画的，可那些复杂的部分多半是父母帮我做的。~
= ~看见眼睛高度这个小小的环了吗？那是帮我聚焦瞄准的。分开的关节能减轻我开弓时手臂的负担，也让我不打仗时能把弓折起来，便于携带。~
= ~在兰坦，我们管它叫机械复合弓。它通常在战场上不算很实用的武器，因为零件太多容易坏、射偏的几率也更高，可秘银的柔韧与坚固避开了这一点。不过秘银不便宜，所以造这张弓很费钱。~
= ~我父母为了保我平安付出了很多……所以我每天练这张弓，直到每一箭都不虚发。~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid2.1
SAY ~卡拉图有个民间传说……从前，天空不只是一个太阳，而是十个，它们灼热的光与热烤焦大地、烧尽田野。旱灾与饥荒吞噬了人间，人几乎失去了希望。~
= ~一位英雄弓手为终结这暴政，取来他那张能射落神明的弓，向天空举弓，射落了除一个之外的所有太阳，让世界回归自然的秩序。为惩罚他射杀她九个孩子，天神夺走了英雄的挚爱，将她囚在月亮上，诅咒她作为月神永世孤独。~
= ~英雄悲痛之下去寻世间最高的山，在山巅守候余生。每年的每一夜，他都向夜空射出一支光之箭，希望他的讯息有一天能传到挚爱那里，引她回家。~
= ~那个传说就是我给这张弓取名的由来……太阳射手。我被讲的那个故事里有某种东西……那份爱与忠贞，启发了我。~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid3
SAY ~你是说我们对抗十字军的事？让我想想……~
IF ~GlobalGT("bd_plot","global",0)
GlobalLT("bd_plot","global",65)~ + pid3.1
IF ~GlobalGT("bd_plot","global",64)
GlobalLT("bd_plot","global",199)~ + pid3.2
IF ~GlobalGT("bd_plot","global",198)
GlobalLT("bd_plot","global",390)~ + pid3.3
IF ~GlobalGT("bd_plot","global",389)
GlobalLT("bd_plot","global",500)~ + pid3.4
IF ~GlobalGT("bd_plot","global",499)
GlobalLT("bd_plot","global",590)~ + pid3.5
IF ~GlobalGT("bd_plot","global",589)~ + pid3.6
END

IF ~~ pid3.1
SAY ~我是说，我才跟你不久，可是……我想最好的办法就是继续往前走？~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid3.2
SAY ~若十字军抓到我，我大概会被逼着造武器去打桥堡。很高兴你先找到了我。~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid3.3
SAY ~面对这么多老练的士兵，我有点格格不入……可我会尽力。~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid3.4
SAY ~我们快到终点了，对吧？既然都走到这一步，我相信你能带我们走到最后。~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid3.5
SAY ~阿弗纳斯果然跟我预想的一样骇人……可你需要我，我仍会面对它。~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid3.6
SAY ~还有什么可说？我们赢了。庆祝吧！~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4
SAY ~当然……哪一个？~
+ ~InParty("Baeloth")~ + ~你觉得贝洛怎么样？~ + pid4.baeloth
+ ~InParty("Corwin")~ + ~你觉得科温怎么样？~ + pid4.corwin
+ ~InParty("Dorn")~ + ~你觉得多恩怎么样？~ + pid4.dorn
+ ~InParty("C0Drake")~ + ~你觉得德雷克怎么样？~ + pid4.drake
+ ~InParty("Dynaheir")~ + ~你觉得狄娜希尔怎么样？~ + pid4.dynaheir
+ ~InParty("Edwin")~ + ~你觉得埃德温怎么样？~ + pid4.edwin
+ ~InParty("X3Emily")~ + ~你觉得艾米莉怎么样？~ + pid4.emily
+ ~InParty("Glint")~ + ~你觉得格林特怎么样？~ + pid4.glint
+ ~InParty("X3Helga")~ + ~你觉得海尔加怎么样？~ + pid4.helga
+ ~InParty("Jaheira")~ + ~你觉得贾希拉怎么样？~ + pid4.jaheira
+ ~InParty("X3Kale")~ + ~你觉得凯尔怎么样？~ + pid4.kale
+ ~InParty("Khalid")~ + ~你觉得卡立德怎么样？~ + pid4.khalid
+ ~InParty("Mkhiin")~ + ~你觉得姆基恩怎么样？~ + pid4.mkhiin
+ ~InParty("Minsc")~ + ~你觉得明斯克怎么样？~ + pid4.minsc
+ ~InParty("Neera")~ + ~你觉得妮拉怎么样？~ + pid4.neera
+ ~InParty("Rasaad")~ + ~你觉得拉沙德怎么样？~ + pid4.rasaad
+ ~InParty("X3Rec")~ + ~你觉得记录者怎么样？~ + pid4.recorder
+ ~InParty("Safana")~ + ~你觉得萨法娜怎么样？~ + pid4.safana
+ ~InParty("C0Sirene")~ + ~你觉得塞琳怎么样？~ + pid4.sirene
+ ~InParty("L#1DVER")~ + ~你觉得维尔莎怎么样？~ + pid4.verr
+ ~InParty("Viconia")~ + ~你觉得维康妮亚怎么样？~ + pid4.viconia
+ ~InParty("X3Vien")~ + ~你觉得维恩赛怎么样？~ + pid4.vienxay
+ ~InParty("Voghiln")~ + ~你觉得沃吉恩怎么样？~ + pid4.voghiln
++ ~其实我还有别的事想说。~ + pidtalk
++ ~算了。我们走吧。~ EXIT
END

IF ~~ pid4.baeloth
SAY ~嘿嘿……他很怪，可跟他说话太有趣了。光是听就能听到好多绝妙的头韵。~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.corwin
SAY ~自从我加入，科温队长对我一直格外公道……可她非常严厉，很难交谈。我在她旁边总忍不住紧张。~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.dorn
SAY ~我……我不喜欢他，<CHARNAME>……我们真需要他留下来为我们作战吗？~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.drake
SAY ~他比我以为的博学得多。我不知他那一半学问是从哪儿学来的……~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.dynaheir
SAY ~狄娜希尔女士是位好老师，也是强大的榜样。我很敬重她。~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.edwin
SAY ~嘿嘿，他外表刻薄，可几句恭维、加上恰当的眼神，我就能从他那儿掏出不少魔法小知识。~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.emily
SAY ~~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.glint
SAY ~哦，我喜欢他的穿着品味。蓝头发让我想起我可爱的弟弟。当然，他人也不错。~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.helga
SAY ~~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.jaheira
SAY ~我——我敬重她，可我不敢接近她，因为……嗯，你知道……她会变成熊。~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.kale
SAY ~~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.khalid
SAY ~自从遇见卡立德，他救我的次数数不清。我不愿用别人换他的位置。~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.mkhiin
SAY ~我——抱歉，可她让我有点发怵。不是因为她是哥布林，是她跟精魂交谈的本事。那让我不安。~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.minsc
SAY ~明斯克这么大个子，人却非常温和。不过我觉得布布从我身上还闻得到可可酱的气味，它都不让我摸它了……*叹气*~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.neera
SAY ~我喜欢她。不过她的风格对我口味来说太不可预测了。它不遵循任何常规的魔法或现实法则，这让我心烦……~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.rasaad
SAY ~我很敬重他。他练身体的劲头跟我练脑子一样足。~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.recorder
SAY ~~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.safana
SAY ~她漂亮，可她永远不会把我当平等的人看。我知道。~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.sirene
SAY ~我欠她很多。既因为战场上她护了我那么多次，也因为战场外她对我的支持。~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.verr
SAY ~他是只又大又凶的猫。我都不确定他把我当平等的人。~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.viconia
SAY ~我真想看她快乐一次。她笑起来其实很美……至少我能想象那样子。~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.vienxay
SAY ~~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid4.voghiln
SAY ~呃，他有点怪，不过我想他还算好人。只是我看不出他想要什么……~
++ ~我明白了。我还有别的事想问。~ + pidtalk
++ ~目前就这些。~ + pid.end
END

IF ~~ pid5
SAY ~什……什么？那——那是……那问题很难答，<CHARNAME>，尤其是你这样突然丢给我……~
++ ~我没听到“不”字……~ + pid5.1
++ ~那我猜你确实喜欢我？~ + pid5.1
++ ~我没耐心应付这个。你对自己的感觉没把握，那我就没兴趣。~ + pid5.x
END

IF ~~ pid5.x
SAY ~哦。嗯……我想你说得有理。对不起。~
IF ~~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ pid5.1
SAY ~*叹气* 你真是在往我身上使劲堆，是吧，<CHARNAME>……~
= ~既然明显到你这样问我，我想完全否认也没意义。可是……~
= ~我——我想反问的是……如果我真有意思呢？你会对我有意思吗？~
++ ~当然。我真的很喜欢你，奥拉。~ + pid5.2
++ ~抱歉，可是……我没有。不过我仍愿保有你的友谊。~ + pid5.3
++ ~你以为我会对像你这样的人有意思？别自作多情。~ + pid5.x
END

IF ~~ pid5.2
SAY ~嘿嘿……你知道吗，听到这话……让我不知所措，可我很高兴。若你说的是真心话，那我们该尽快谈谈。那会让我更高兴。~
IF ~~ EXIT
END

IF ~~ pid5.3
SAY ~没关系，<CHARNAME>。你若把我当朋友，那我就是朋友。不多不少。~
IF ~~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ pid6
SAY ~我——等等，什么？*吸气*~
= ~天哪——我一定是把它掉了……呀！~
= ~你不该看到的！那太糟了，我旅行时一时兴起乱写的，还有……呃，我平时写得比这好得多，我发誓。~
++ ~冷静，我喜欢它。没想到你还有这一手。~ + pid6.1
++ ~所以你确实为我写了这首情诗？我受宠若惊。~ + pid6.2
++ ~还能再打磨，可重要的是心意。~ + pid6.1
++ ~收回去。我不想再看到你写这种东西。~ + pid6.x
END

IF ~~ pid6.x
SAY ~我——好吧。我道歉。~
IF ~~ DO ~SetGlobal("C02AuraRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ pid6.1
SAY ~说到俳句我只是个门外汉，那绝对不是我会自豪的东西。我宁愿你永远没看过——~
IF ~~ + pid6.3
END

IF ~~ pid6.2
SAY ~我——这不是情诗，谁说——~
IF ~~ + pid6.3
END

IF ~~ pid6.3
SAY ~——哦，这太尴尬了。给我！~
++ ~不行。我要把它裱起来挂到墙上。~ + pid6.4
++ ~你不介意的话，我要留着。这是你对我心意的甜蜜纪念。~ + pid6.4
++ ~好吧，给你。~ DO ~TakePartyItem("c02apoem") DestroyItem("c02apoem")~ + pid6.5
++ ~拿走，走开。我不想要你这种关注。~ + pid6.x
END

IF ~~ pid6.4
SAY ~呃，你现在在逗我，我脸都热起来了。你太坏了！~
IF ~~ EXIT
END

IF ~~ pid6.5
SAY ~*揉皱* *捏碎* 我们就当你没见过那个，我要写一首好得多的来补偿你。好吧？~
++ ~好。我期待地等着。~ + pid6.6
++ ~随便。~ + pid6.6
END

IF ~~ pid6.6
SAY ~好。笔、羊皮纸。该让创作的灵感流出来了……~
IF ~~ EXIT
END


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
+ ~OR(3) Class(Player1,MAGE_ALL) Class(Player1,SORCERER) Class(Player1,BARD_ALL) RandomNum(3,1)~ + ~（用魔法给她表演一番）~ + f6.1
+ ~OR(3) Class(Player1,MAGE_ALL) Class(Player1,SORCERER) Class(Player1,BARD_ALL) RandomNum(3,2)~ + ~（用魔法给她表演一番）~ + f6.2
+ ~OR(3) Class(Player1,MAGE_ALL) Class(Player1,SORCERER) Class(Player1,BARD_ALL) RandomNum(3,3)~ + ~（用魔法给她表演一番）~ + f6.3
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
SAY ~嘿——嘿！放我下来！我不喜欢高——处！~
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
SAY ~*轻笑*~ [AURAu]
IF ~~ EXIT
END

IF ~~ f4.2
SAY ~唔！（她吐了吐舌头，假装不服气）~
IF ~~ EXIT
END

IF ~~ f4.3
SAY ~小——小——小心……我要打喷嚏了！~
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
SAY ~嘿——嘿——嘿——嘿！你会伤到根的！停下——！~
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
SAY ~呀，别挠腋下，挠哪儿都别——啊哈哈！~
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
SAY ~（她眨了眨眼——你能感到她的紧张，像是本能地要退后一步，可她却闭上眼接受了你的亲昵。）~
IF ~~ EXIT
END

IF ~~ f13.3
SAY ~（你的嘴唇轻轻触上她温暖的鼻梁。你退开时，奥拉直视着你的眼睛，嘴唇紧张地颤着。）~
IF ~~ EXIT
END
END