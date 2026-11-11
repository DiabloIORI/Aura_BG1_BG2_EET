
//////////////////////////////////////////////////////////////////////////////////
///////////////////////////////INTERJECTIONS//////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

// Banters

I_C_T BMINSC 86 C0AuraBMINSC96
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~松鼠，在哪儿？哦，哦，我想我也看见了！穆菲，看！……啊，它们跑了。~
== BJAHEIR ~*叹气*~
END

I_C_T2 BJAN 38 C0AuraBJAN38
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦，螺母和螺栓，又来了……~
END

I_C_T2 BJAN 87 C0AuraBJAN87
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~……呃。~
END

I_C_T2 BMINSC 3 C0AuraBMINSC3
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦。呃，其实，那里面有些也许是……你知道，想想还是算了，我什么都没说。不。不是我！*吹哨*~
END

I_C_T2 BNEERA 120 C0AuraBJAN87
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦，哦，草莓酱！我想念我母亲以前烤的新鲜草莓挞。阿诺门，求——求你了？~
END

// Autocannon

CHAIN IF WEIGHT #-1 ~Global("C0AuraAutocannon","GLOBAL",1)~ THEN C0AURA2J autocannon
~哦，我差点忘了！我该给你看看我包裹里那件那么重要的东西，对吧？也许正是你感兴趣的。~
DO ~SetGlobal("C0AuraAutocannon","GLOBAL",2)~
END
++ ~对，我好奇。~ + autocannon.1
++ ~那是什么？~ + autocannon.1
++ ~你何不另找个时间给我看？~ + autocannon.0

CHAIN C0AURA2J autocannon.0
~嗯，好吧……好，我想布置起来是有点费劲。你若不想要解释，那等时机合适，我直接给你看它做什么。那是件了不起的作品！~
DO ~AddSpecialAbility("c0au#sp1")~ EXIT

CHAIN C0AURA2J autocannon.1
~嘿嘿。我想解释比装起来还费时间，那就看好了！~
DO ~StartCutSceneMode()
MoveToPoint([432.296])
Wait(1)
CreateVisualEffectObject("spnwchrm",Myself)
Wait(1)
CreateCreatureObjectEffect("c0au#at1","spcrtwpn",Myself)
Wait(2)
StartDialogueNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraAutocannon","GLOBAL",2)~ THEN C0AURA2J autocannon1
~哈哈！我呈上：兰坦自动炮！那是一台自触发的构造体，能以极快速度向目标开，呃，开火。我等材料等了好久才造出一台！~
DO ~SetGlobal("C0AuraAutocannon","GLOBAL",3)~
= ~它跟我平常带在身边的构造体有点不同。我用的是跟陷阱一样的触发机构，所以极适合设伏、向敌人倾泻火力。唯一的问题是它一耗尽动力就停。之后我得修它，趁我们休息时让它再能上战场。~
= ~我父亲说他从祖母密涅瓦那里学会怎么造它们。那是很老的设计，可仍有效。你随时想，我都能在真实环境里再布置一次给你看。~
DO ~ActionOverride("C0au#at1",DestroySelf())
AddSpecialAbility("c0au#sp1")~ EXIT

// Bridge District

CHAIN IF WEIGHT #-1 ~Global("C0AuraBridgeDistrict","GLOBAL",1)~ THEN C0AURA2J bridge
~我们到集市了……我真喜欢桥区。这些声音、海的气味……不完全像我故乡安科里尔，可很接近。~
DO ~SetGlobal("C0AuraBridgeDistrict","GLOBAL",2)~
= ~看见那边那个摊子了吗？我跟你一起之前，一周会去那儿两次，占点地方，替人写信挣些硬币。~
END
  ++ ~你靠写信谋生？我还以为你会用手艺做更赚钱的事。~ EXTERN C0AURA2J bridge-1
  ++ ~听着不算坏。我想会有不少人愿意花钱请人代笔。~ EXTERN C0AURA2J bridge-2
  ++ ~别沉在回忆里。我们有活要干。~ EXTERN C0AURA2J bridge-0

CHAIN C0AURA2J bridge-0
~好，知道了。~
EXIT

CHAIN C0AURA2J bridge-1
~嗯……我不能随便把行当的秘密讲出去，你知道。我只是想提供有用的服务，而不只是挣金币。~
EXTERN C0AURA2J bridge-2

CHAIN C0AURA2J bridge-2
~这儿有不少人从没学过写字，或者学的词不够写出一封自己满意的信，可他们仍想联系远方重要的人……起初多半只是副业，可过了一阵我开始喜欢它。~
= ~有些客人有挺有意思的故事。我不是想多管闲事、探人私事，你别误会！可那让事情有趣多了。~
= ~更别说五弦琴就在那儿。老板塞缪尔喜欢我，我收摊后请我喝酒。当然是不含酒精的……我真喝不了酒。~
= ~我们若不忙，何不进去看看？他们还有个很棒的戏台……你有时该看看他们的演出。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraTanner","GLOBAL",1)~ THEN C0AURA2J tanner
~这是……~ [C0BLANK]
= ~那个……那个*禽兽*般的男人……这都是他干的？~
= ~<CHARNAME>，我们不能让他逃掉。没人……*没人*该被允许干了这种事还逍遥！~
DO ~SetGlobal("C0AuraTanner","GLOBAL",2)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("InteractAura","LOCALS",0)
InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)
RandomNum(2,1)~ THEN BERTRAND bertrand
~嗯，你说呢，甜美的小天使？想不想在草堆里滚一滚？~
DO ~SetGlobal("InteractAura","LOCALS",2)~
== C0AURA2J ~呃。谢了，不用……~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraThalia","LOCALS",0)
InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)
RandomNum(2,1)~ THEN FFWENCH thalia
~奥拉！见到你真是让眼睛都舒服了。希望一切都好。~
DO ~SetGlobal("C0AuraThalia","LOCALS",2)~
== C0AURA2J ~哦，是的！一切都好，塔莉亚。谢谢你问。~
== FFWENCH ~嗯，别当陌生人。你比这些粗人好相处多了。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraSamuel","GLOBAL",0)
Range("C0Aura",15)
InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN FFBART C0AuraSamuel
~哟，这不是从这儿到谷区最甜美的侏儒吗！你好吗，奥拉？我好久没荣幸招待你了！~
DO ~SetGlobal("C0AuraSamuel","GLOBAL",1)~
== C0AURA2J ~你好，塞缪尔！抱歉我近来没来。~
== FFBART ~嗯，既然你来了，让我再谢你一次，上月你帮下面戏台出的那些力。~
== C0AURA2J ~不，一点不！能帮印记剧团是我的荣幸，而且我真没做多少……~
== FFBART ~你肯定在开玩笑，亲爱的！阿斯卡特拉能修机械、还能弄烟火的人，我一只手数得过来，没一个比得上你的本事。剧团肯定也同意我！~
== C0AURA2J ~哦……*轻笑* 你太客气了，塞缪尔。就一次，你知道？我甚至没机会跟任何演员本人说话……~
== FFBART ~啊……我该代他们道歉，他们一直没机会来集市摊子亲自谢你。尤其雷利斯女士想见你，可剧团近来出了些麻烦……~
== C0AURA2J ~我明白。能被这么有名望的剧团认可，就已经是一切了。我是他们演出的忠实戏迷。~
== FFBART ~雷利斯女士把这个留给你，作谢礼，万一你哪天来。她说她不接受拒绝，所以你现在连想都别想推辞，否则我得亲自去找她求她原谅。*笑*~
== C0AURA2J ~雷利斯·沙伊送的……礼物……？天哪，我不敢信！谢谢你，塞缪尔！我会永远珍藏！~
DO ~GiveItemCreate("clck07","C0Aura",1,0,0)~
== FFBART ~你确定不要我拿最好的香料葡萄酒引诱你一下？刚从阿拉贝尔运来的！~
== C0AURA2J ~哦不，我不能。我很想，可我一碰酒就犯困。给我来点清淡的吧，谢谢。~
== FFBART ~随你。那就照常，一杯冰镇樱桃茶加蜂蜜。这杯算店里请！~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraElephantSkin","GLOBAL",1)~ THEN C0AURA2J AURA-ELEPHANT-HIDE
~你知道，我觉得我以前见过这东西。除非……等等，让我仔细看看。不，我*绝对*见过这东西。~ [C0BLANK]
DO ~SetGlobal("C0AuraElephantSkin","GLOBAL",2)~
END
++ ~是什么？~ + AURA-ELEPHANT-HIDE-1

CHAIN C0AURA2J AURA-ELEPHANT-HIDE-1
~象皮。你见过大象吗，<CHARNAME>？它们巨大，有长鼻子、大角、大耳朵……还会发出这种声音，像：“叭——啦——！”~
= ~不，等等，不是那样。更像……~
= ~哦，算了，这不是重点。总之，大象不是随处能见的野兽。我知道兰坦曾有过*一头*大象，那是某个行会用荒唐的价钱从扎卡拉进口的。~
= ~而……*嗅* 这块皮处理过，所以肯定是来自某件外套之类。~
= ~我看我们该去问问本地的剥皮匠和制革匠。谁处理过这么稀罕的东西，肯定记得。~
DO ~SetGlobal("MerchantHide","GLOBAL",1)
AddJournalEntry(%Aura_Quest_Skinner_Entry%,QUEST)~  EXIT

INTERJECT MERCHANT 15 C0AuraBridgeMerchant
== MERCHANT IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~索利克莓用来——~
== C0AURA2J ~*倒吸一口气* 咕哝莓派！~
== MERCHANT ~是，正是。本地一家面包房用它们做，正如这位小姐说的，他们的招牌咕哝莓派。很好吃，可他们现在关门了。这是这莓子的淡季。~
EXTERN MERCHANT 12

I_C_T2 REEDLE 0 C0AuraReedle
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*嗅* 呸！这鱼腥味让我想起我故乡的海岸。嗯，我在想可可酱会不会喜欢这儿的海鲜？~
END

INTERJECT NEB 5 C0AuraNebEncounter
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~孩——你……你！我记得你，恶心的杀人犯！~
== NEB ~嘻嘻……我们又见面了，漂亮。你是来加入孩子们的吗？嘻……嘻……~
DO ~Enemy()~
== C0AURA2J ~我盼这刻盼了好久。你这恶心的渣滓……尝尝这个！~
== NEB ~呃——？~
== C0AURA2J ~Caelum, Iustitia, Invocare！~
DO ~SetInterrupt(FALSE)
StartCutSceneMode()
CutSceneId("C0Aura")
CreateCreature("chwraith",[687.236],SWW)
CreateCreature("chwraith",[542.203],SEE)
CreateCreature("chwraith",[492.385],NNE)
CreateCreature("chwraith",[553.472],N)
Wait(1)
ForceSpellRES("C0ARUNE5","NEB")
SmallWait(5)
DisplayStringHead("NEB",%EEEAAAAAAHHHH!%)
Kill("NEB")
Wait(3)
EndCutSceneMode()
SetInterrupt(TRUE)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraNebEncounter","GLOBAL",1)~ THEN C0AURA2J C0AURA-POST-NEB
~哈……哈……哦，我……我真这么做了？~
DO ~SetGlobal("C0AuraNebEncounter","GLOBAL",2)~
END
++ ~反应真够大的。我没想到你有这一手。~ + C0AURA-POST-NEB-1
++ ~哇。真是……哇。~ + C0AURA-POST-NEB-1
++ ~你要能多来几次就好了。~ + C0AURA-POST-NEB-1
++ ~干得好。那渣滓活该。~ + C0AURA-POST-NEB-2

CHAIN C0AURA2J C0AURA-POST-NEB-1
~我，呃……那挺尴尬的。我不是故意做到那地步，我只是太生气，我，嗯……~
EXTERN C0AURA2J C0AURA-POST-NEB-3

CHAIN C0AURA2J C0AURA-POST-NEB-2
~是……他活该。可我不是故意做到那地步，我只是太生气，我，嗯……~
EXTERN C0AURA2J C0AURA-POST-NEB-3

CHAIN C0AURA2J C0AURA-POST-NEB-3
~我控制不住自己。一认出他是谁，我体内有什么就断了，然后我对他放了全力的一记天降裁决，还有……哦，我从没想过我能这么暴力！~
= ~就……假装你没看见我这一面，好吗，<CHARNAME>？~
EXIT

I_C_T RAELIS 33 C0AuraRAELIS33
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呃……这，呃……戏通常比这好多了，我保证！~
END

I_C_T RAELIS 37 C0AuraRAELIS37
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~雷——雷利斯·沙伊？~
== RAELIS ~是，我就是……可等等，你不就是不久前来用你的手艺好心帮剧团的那个小姑娘？~
== C0AURA2J ~对——对，是我，雷利斯女士！我——我——我是奥拉·格利默夏恩。我是你的大戏迷——我，我是说，我是你戏的大戏迷！*脸红*~
== RAELIS ~谢谢你，孩子。我要有办法好好谢你就好了，可唉，剧团如今这样，我只能说抱歉，我能给的只有这些话……~
END

I_C_T YUSUF 2 C0AuraYUSUF2
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~你——你在做什么？！她跟这事无关！~
END

I_C_T FFRECEP 0 C0AuraFFRECEP0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~去吧，<CHARNAME>，印记剧团的演出值每一枚硬币！~
END

I_C_T HAERDA 109 C0AuraHAERDA109
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呀，这是相当恶毒的精神控制魔法。做这事的人无疑是附魔大师，<CHARNAME>，小心。~
END

// Brynnlaw/Spellhold

I_C_T PPSAEM 14 C0AuraArrivedBrynnlaw
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呃，那……跟我预想的一样糟。看这岛的样子，事情也不像要变好……~
END

I_C_T PPSAEM 53 C0AuraArrivedBrynnlaw
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呃，那……跟我预想的一样糟。看这岛的样子，事情也不像要变好……~
END

I_C_T PPSAEM2 19 C0AuraPPSAEM219
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~要么再渡一次海，要么去幽暗地域这种地方……我两个都讨厌，<CHARNAME>，可不管你选哪个，我都会尽力。~
END

I_C_T2 PPSAILOR 0 C0AuraPPSAILOR0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~不——不……不！我们得下船……我们得下这船，在……在……之前！~
END

I_C_T PIRKID01 0 C0AuraPIRKID010
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~看好你的口袋，<CHARNAME>！他——~
END

I_C_T PPAPHRIL 0 C0AuraPPAPHRIL0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦，天哪……能看到多元宇宙无尽的位面，可过程中却受这么多苦……我不知道该羡慕她还是可怜她。~
END

I_C_T JANJ 152 C0AuraJANJ152
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呃，你确定是黑杖大人让你叔叔失常的吗，扬？听着他一开始就有点螺丝松了。~
END

I_C_T PPCOWLED 1 C0AuraPPCOWLED1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~他不对劲。单调的语调、没有生气的眼睛……这满是附魔魔法的味道。~
END

I_C_T PPDILI 0 C0AuraPPDILI0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~我——我——我不……~
== PPDILI ~*轻笑* 你真逗，女士！你的眼睛和嘴为什么张那么大？你也不比我高多少。你跟我玩吗？~
== C0AURA2J ~<CHARNAME>，这太过分了。我不管魔法多危险，没人该被这样把孩子关起来！~
END

I_C_T PPIRENI1 4 C0AuraPPIRENI14
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~这地方处处病态又错误，<CHARNAME>。人不该在这种地方被当作试验品。~
END

I_C_T PPTIAX 6 C0AuraPPTIAX6
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~提亚克斯？可你为什么在这儿？嗯，再想想……我想这也不那么奇怪……~
END	

I_C_T PPSTAT01 5 C0AuraPPSTAT015
== C0AURA2J IF ~!IsGabber("C0Aura") InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦，干得好。我觉得我没法这么轻松把十二个全答对。~
END

I_C_T2 PPWANEV 5 C0AuraPPWANEV5
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呃……全弄清楚？我每读一行这鬼话，就觉得脑子在慢慢枯萎……等等，要么我也开始疯了，要么这里面有某种密码……~
== C0AURA2J ~……不。我绝对是疯了。还看见猴子。~
END

I_C_T YOSHJ 113 C0AuraYOSHJ113
== C0AURA2J IF ~!GlobalGT("C0AuraYoshimo2","GLOBAL",4) InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~什——什么？吉野，你怎么能？~
END

I_C_T YOSHJ 113 C0AuraYOSHJ113
== C0AURA2J IF ~GlobalGT("C0AuraYoshimo2","GLOBAL",4) InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~吉——吉野……？不……不，不可能……~
END

I_C_T YOSHIMOX 0 C0AuraYOSHIMOX0
== C0AURA2J IF ~Global("C0AuraYoshimo2","GLOBAL",4) InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~你为什么要这么做，吉野？~
DO ~SetGlobal("C0AuraYoshimoBetrayal","GLOBAL",1)~
== YOSHIMOX ~小奥拉……求你别。我不能停手。我已等得太久了。~
== C0AURA2J ~我知道……在这一切之前很久，我就知道你在藏秘密，尽管我们是朋友……就算那时，我也想相信你会在觉得时机对时告诉我。~
== YOSHIMOX ~……~
== YOSHIMOX ~你太天真了，奥拉。你以为爱瑞尼库斯会随便挑个蠢货去取得<CHARNAME>的信任？我说的每一句话、在你们身边做的每一件事，都为了导向这个结局。跟你交朋友，自然也只是达成目的的另一手段。~
== C0AURA2J ~我——我不信你。你从不想事情变成这样。你现在也不想。~
== YOSHIMOX ~你凭什么以为自己知道——~
== C0AURA2J ~我只是……不明白。我们信过你。为什么……为什么你不能信我们？<CHARNAME>本会帮你……*我们*本会帮你。~
== YOSHIMOX ~够了！求你……够了。~
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraYoshimoBetrayalTalk","GLOBAL",1)~ THEN C0AURA2J C0AURA-YOSHIMOB
~……~ [C0BLANK]
DO ~SetGlobal("C0AuraYoshimoBetrayalTalk","GLOBAL",2)~
= ~……什么时候？我们的苦难什么时候结束，<CHARNAME>？~
END
  ++ ~对不起，奥拉。我希望事情能有不同结局。~ + C0AURA-YOSHIMOB-1
  ++ ~你对吉野之死的处理比我预想的要好。~ + C0AURA-YOSHIMOB-2
  ++ ~我不知道。可这一切总该有个尽头。~ + C0AURA-YOSHIMOB-3
  ++ ~事已至此。我们能做的只有向爱瑞尼库斯复仇。~ + C0AURA-YOSHIMOB-4

CHAIN C0AURA2J C0AURA-YOSHIMOB-1
~我也一样。可我们无能为力，<CHARNAME>。我已经接受了。~
EXTERN C0AURA2J C0AURA-YOSHIMOB-2

CHAIN C0AURA2J C0AURA-YOSHIMOB-2
~我……我已经接受了关于吉野的真相。听到他说的那些……我知道他的背叛一定从里面毁了他，就像毁了我们一样。~
== C0AURA2J ~若爱瑞尼库斯真从一开始就慑令他……那吉野这些时候大概一直过着不由自己的生活。而也许……死在<CHARNAME>手里，是他很久以来能做的第一个选择。~
== C0AURA2J ~这……是他能恢复一丝荣誉的唯一办法。也许你无法这样看，<CHARNAME>……我也不怪你。他参与对你做的事……不可原谅。可他自己也知道。~
== C0AURA2J ~*叹气* 我需要些时间想这一切。对不起，<CHARNAME>。就算他背叛了我们……我到现在仍在意他。~
== C0AURA2J IF ~!GlobalGT("YoshimoBodhiServant","GLOBAL",0) PartyHasItem("miscbu")~ THEN ~我们把他的心带给伊尔马特的祭司吧，<CHARNAME>。你若能原谅他……也许他还有机会得到安宁。~
== C0AURA2J IF ~!GlobalGT("YoshimoBodhiServant","GLOBAL",0) !PartyHasItem("miscbu")~ THEN ~带走他的心，<CHARNAME>。我们该……把它带给伊尔马特的祭司。你若能原谅他……也许他还有机会得到安宁。~
== C0AURA2J IF ~GlobalGT("YoshimoBodhiServant","GLOBAL",0) !PartyHasItem("miscbu")~ THEN ~而且……他的心毁了。他也许再没有救赎的机会了……永远。我知道他对你多重要，<CHARNAME>……对不起。我太、太对不起了……~
EXIT

CHAIN C0AURA2J C0AURA-YOSHIMOB-3
~我想相信……可我们还要看多少这种事？我们刚……又失去一个朋友。而且……我们什么也做不了。~
EXTERN C0AURA2J C0AURA-YOSHIMOB-2

CHAIN C0AURA2J C0AURA-YOSHIMOB-4
~是……复仇会了结一切。可复仇能让死者复生吗？能抹去折磨我们的一切吗？~
EXTERN C0AURA2J C0AURA-YOSHIMOB-2

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2RomanceSlayerTalk","GLOBAL",1)~ THEN C0AURA2J C0AURA-ROM-SLAYER
~你看着……脸色好白，<CHARNAME>。你睡过觉吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2RomanceSlayerTalk","GLOBAL",2)~
END
  ++ ~没。没怎么睡。~ + C0AURA-ROM-SLAYER-1
  ++ ~我又做了噩梦。也许是至今最糟的一次。~ + C0AURA-ROM-SLAYER-2
  ++ ~离我远点。我现在……不能让你靠近我。~ + C0AURA-ROM-SLAYER-1
  ++ ~没什么。我们走吧。~ + C0AURA-ROM-SLAYER-0

CHAIN C0AURA2J C0AURA-ROM-SLAYER-0
~不可能没什么。若你觉得需要对我撒谎，那一定是真正可怕的事，<CHARNAME>。~
= ~可……我现在不想逼你。那我等你准备好再说。只答应我你会说。~
EXIT

CHAIN C0AURA2J C0AURA-ROM-SLAYER-1
~你又做噩梦了，对吧？~
EXTERN C0AURA2J C0AURA-ROM-SLAYER-3

CHAIN C0AURA2J C0AURA-ROM-SLAYER-2
~我就知道。你……能跟我说说吗？~
END
  ++ ~我梦到我里面的邪恶。它变成爱蒙的样子，叫我把自己交给它。~ + C0AURA-ROM-SLAYER-3
  ++ ~我……我又变身了，杀光了所有人。朋友敌人都一样。我甚至杀了你……~ + C0AURA-ROM-SLAYER-3
  ++ ~求你别叫我回想。我只想忘掉……~ + C0AURA-ROM-SLAYER-4
  ++ ~我里面的神性本质给我力量。我受诱惑想接受。~ + C0AURA-ROM-SLAYER-5
  ++ ~我不想谈。我们有更重要的事要担心。~ + C0AURA-ROM-SLAYER-6

CHAIN C0AURA2J C0AURA-ROM-SLAYER-3
~我……就怕会是这样。从我看见杀戮者从你身上浮现，我就知道它不会只困扰我们一次。~
= ~你不想要它，对吧？虽然那么吓人……更让我害怕的是看见它发生时你多痛苦。~
END
  ++ ~你了解我，奥拉。你知道我一点也不想这样。~ + C0AURA-ROM-SLAYER-7
  ++ ~我不想。我想忘掉它发生过……~ + C0AURA-ROM-SLAYER-4
  ++ ~我不确定……考虑这一切，我不能否认我想要更多力量。~ + C0AURA-ROM-SLAYER-5
  ++ ~别管我。我没事。~ + C0AURA-ROM-SLAYER-6

CHAIN C0AURA2J C0AURA-ROM-SLAYER-4
~我也希望……我希望我们能避开这一切。~
EXTERN C0AURA2J C0AURA-ROM-SLAYER-7

CHAIN C0AURA2J C0AURA-ROM-SLAYER-5
~<CHARNAME>……~
= ~想要力量本身没什么错。尤其……对你这样的人。可重要的是代价……你一个人走到现在这么远。你不能向它屈服，现在不能。你若想要力量把自己从这些痛苦中救出来……我们可以一起去寻找。会有别的路。~
EXTERN C0AURA2J C0AURA-ROM-SLAYER-7

CHAIN C0AURA2J C0AURA-ROM-SLAYER-6
~我……我懂。我知道你不想谈……我也不想。可让我在你身边待一会儿……直到你能再感到温暖。~
EXIT

CHAIN C0AURA2J C0AURA-ROM-SLAYER-7
~我每天都希望我们都能过上正常快乐的生活……可你却只被灌满了痛苦。可我知道你仍会继续战斗……你就是那种人。~
= ~别放弃，<CHARNAME>。我永远不想看到你放弃。~
END
  ++ ~我不会，奥拉。只要你还跟我在一起。~ + C0AURA-ROM-SLAYER-8
  ++ ~你说得对。我需要些鼓励。~ + C0AURA-ROM-SLAYER-8
  ++ ~好。那我们现在能准备走了吗？~ + C0AURA-ROM-SLAYER-9

CHAIN C0AURA2J C0AURA-ROM-SLAYER-8
~嘿嘿……我在这儿就是为了这个，你知道。确保你生活里还有些正面的东西。~
EXTERN C0AURA2J C0AURA-ROM-SLAYER-9

CHAIN C0AURA2J C0AURA-ROM-SLAYER-9
~我知道我们不能永远这样……可我们慢慢来。你需要安慰时，尽可以靠着我。~
EXIT

EXTEND_BOTTOM PPIMOEN 0
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~你认不出奥拉？得了吧，你们俩是最好的朋友。你看不见她吗？~ EXTERN C0AURA2J C0AuraPPIMOEN0
END

CHAIN C0AURA2J C0AuraPPIMOEN0
~<CHARNAME>，出大事了，大事不好……她的眼神那么遥远、受伤、没有生气！我从没见过哪种魔法或药水能让人变成这样。我……我不知道我能做什么！~
END
IF ~~ EXTERN PPIMOEN 1

I_C_T IMOEN2 22 C0AuraIMOEN222
== C0AURA2J IF ~!IsGabber("C0Aura") InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>，你不能！她需要你。我——我以前也陷进过更糟的境地。让我自己找路出去。我大概比她的机会大些。~
END

I_C_T TOKCRE01 0 C0AuraTOKCRE010
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~嗯……这种机器在我家乡的学校里很常见。我们通常把它们跟玩具和糖果放在一起。我在想这一台怎么到了这儿……？~
END

INTERJECT Player1 3 C0AuraSpellholdDizzy
== C0AURA2J IF ~InParty("C0Aura") Range("C0Aura",15) !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN
~哇，哇。慢点，<CHARNAME>，你快倒了。你头怎么样？要药吗？你何不坐下让我给你检查一下？还是说——~
END
++ ~不，不，我没事。我只是有点晕。~ EXTERN C0AURA2J C0AuraSpellholdDizzy.1
++ ~我不确定那是什么。就好像有一瞬间我不是我自己。~ EXTERN C0AURA2J C0AuraSpellholdDizzy.2
++ ~别娇惯我。这点小挫折拖不慢我。~ EXTERN C0AURA2J C0AuraSpellholdDizzy.3

CHAIN C0AURA2J C0AuraSpellholdDizzy.1
~你确定没事？我可以给你熬点治慢性头疼的药，若有帮助。要不来点汤？~
EXTERN C0AURA2J C0AuraSpellholdDizzy.4

CHAIN C0AURA2J C0AuraSpellholdDizzy.2
~那听着不妙。我听说精神和身体压力能引起各种症状，可从没见过刚才那样……~
EXTERN C0AURA2J C0AuraSpellholdDizzy.4

CHAIN C0AURA2J C0AuraSpellholdDizzy.3
~嗯……好吧。你这么刺人，我想我不该烦你。~
EXTERN C0AURA2J C0AuraSpellholdDizzy.4

CHAIN C0AURA2J C0AuraSpellholdDizzy.4
~来，喝点这个。也许能让你舒服些？若还有别的我能做，就说一声。~
DO ~GiveItemCreate("c0apot01",Player1,1,0,0)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraSeesCrushTrap","GLOBAL",1)~ THEN C0AURA2J C0AURA-CRUSH-TRAP
~停下！别动……我们前面有个致命机关！待着别动，我马上处理！~
DO ~SetGlobal("C0AuraSeesCrushTrap","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
TriggerActivation("crtrap1",FALSE)
TriggerActivation("crtrap2",FALSE)
MoveToPoint([2139.795])
AddExperienceParty(3500)
PlaySound("ACT_09")
SmallWait(1)
MoveToPoint([2016.708])
AddExperienceParty(3500)
PlaySound("ACT_09")
Wait(1)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraSeesCrushTrap","GLOBAL",2)~ THEN C0AURA2J C0AURA-CRUSH-TRAP-2
~好，都处理好了……太危险了。错一步，就可能有人被压成肉泥！~
DO ~SetGlobal("C0AuraSeesCrushTrap","GLOBAL",3)~
== IMOEN2J IF ~InParty("IMOEN2") InMyArea("IMOEN2")~ THEN ~……你得教我怎么弄。~
== C0AURA2J IF ~InParty("IMOEN2") InMyArea("IMOEN2")~ THEN ~啊……啊哈哈……等我们再见天日，我一定教。总之……~
== C0AURA2J ~这地方是恐怖之屋，<CHARNAME>……显然没人被指望活着离开。我们得尽可能警觉。~
EXIT

INTERJECT PLAYER1 5 C0AuraFirstSlayerChange1
== C0AURA2J IF ~InParty("C0Aura") Range("C0Aura",15) !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~那——那是我这辈子见过最恐怖的东西！我——我以前见过那怪物，<CHARNAME>！那是杀戮者，巴尔的化身！~
== C0AURA2J ~动荡之年有过各种关于它暴行的恐怖传说，可我从没想到它真像他们说的那么强、那么凶！你体内那点巴尔的污秽……怎么能这样影响你？~
== C0AURA2J ~我——我不知道说什么，<CHARNAME>……这一切都太、太不对了！~
EXIT

// ROMANCE CONTENT: the second slayer change

INTERJECT Player1 7 C0AuraSecondSlayerChange0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) OR(2) Global("C0AuraRomanceActive","GLOBAL",1) Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~睡不着，嗯……我不怪你。我也很难合眼……来，我煮了些淡紫茶帮我们放松。不算什么，可……<CHARNAME>，怎么了？~
END
++ ~奥拉，快走开。我没法阻止这东西伤你！~ EXTERN C0AURA2J C0AuraSecondSlayerChange1
++ ~小心，奥拉！又来了！~ EXTERN C0AURA2J C0AuraSecondSlayerChange1
++ ~跑！现在！~ EXTERN C0AURA2J C0AuraSecondSlayerChange1

CHAIN C0AURA2J C0AuraSecondSlayerChange1
~呀。看来你嗓子也没了。若有蜂蜜柠檬水能缓解，可我没有……什么？不……不，不不不！~
DO ~SetGlobal("C0AuraSecondSlayerChange","GLOBAL",1)
ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~
EXIT

INTERJECT Player1 10 C0AuraSlayerSurvived1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) OR(2) Global("C0AuraRomanceActive","GLOBAL",1) Global("C0AuraRomanceActive","GLOBAL",2) Global("C0AuraSecondSlayerChange","GLOBAL",1)~ THEN ~这——这是噩梦，噩梦……可怕的噩梦……*抽泣*~
= ~为什么……为什么这些事非得落到你头上？你为什么非得这样受苦？~
DO ~SetGlobal("DrowTalk","GLOBAL",5)~ EXIT

EXTEND_BOTTOM Player1 10
IF ~Dead("C0Aura") Global("C0AuraSecondSlayerChange","GLOBAL",1)~ EXTERN Player1 12
END

// Bodhi

EXTEND_BOTTOM BODHIAMB 5
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraRomanceActive","GLOBAL",2) Global("C0AuraVampire","GLOBAL",0)~ EXTERN BODHIAMB C0AuraKidnap
END

CHAIN BODHIAMB C0AuraKidnap 
~你跟着来，是希望取回对你珍贵的东西。我说，你越这样下去，失去的越多。~
== BODHIAMB ~比如这个衰弱的小侏儒。那么弱，那么可怜……难怪她像寄生虫一样攀住你。我若把她从你身边撕走，你会受多少苦，我倒想知道？~
== C0AURA2J ~我不怕你。只要<CHARNAME>还需要我在身边，我就不怕。~
== BODHIAMB ~我不要你的恐惧，小姑娘。我要的远、远更糟……~
== C0AURA2J ~不！~
== C0AURA2J ~天津神，国津神，
与八百万众神同在，
请听吾祈，
谨请谨请，奉祈……~
END
IF ~~ DO ~SetGlobal("C0AuraVampire","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("C0ABODHI",FALSE)~ EXIT

CHAIN IF WEIGHT #-1
~Global("C0AuraVampire","GLOBAL",1)~ THEN BODHIAMB C0AuraBodhiKidnap
~这是什么？！~ [C0AUBO1]
DO ~SetGlobal("C0AuraVampire","GLOBAL",2)~
== C0AURA2J ~……~
END
  ++ ~奥拉！你在做什么？~ EXTERN BODHIAMB C0AuraBodhiKidnap.1
  ++ ~你敢碰她，波蒂！~ EXTERN BODHIAMB C0AuraBodhiKidnap.1

CHAIN BODHIAMB C0AuraBodhiKidnap.1
~可恶的异邦邪术！我保证你会为此永远受苦，侏儒。可我要先让你看着<CHARNAME>受苦。~
COPY_TRANS BODHIAMB 5

CHAIN IF WEIGHT #-1 ~Global("C0AuraVampire","GLOBAL",2)~ THEN C0AURA2J AURA-VAMPIRE
~什么……发生了什么，<CHARNAME>？那些吸血鬼……波蒂去哪儿了？~ [C0BLANK]
DO ~SetGlobal("C0AuraVampire","GLOBAL",3)~
END
  ++ ~你不记得你怎么开始发光，还不知从哪儿召来一个灵体护住你？~ + AURA-VAMPIRE-1
  ++ ~不重要。我只高兴你平安。~ + AURA-VAMPIRE-1
  ++ ~那一整套，我想不是你本意吧。~ + AURA-VAMPIRE-1

CHAIN C0AURA2J AURA-VAMPIRE-1
~我……我记得我在祈祷……我念了些驱邪灵的咒，然后……我不知道。~
= ~我想我听到一个声音……它说它在履行誓约，如今职责已尽……我感到某种温暖。然后我听到的就是你在叫我。~
= ~这一切太奇怪了。我一点也没料到会发生，我仍不知道为什么会这样，可是……嗯？~
DO ~ClearAllActions()
StartCutSceneMode()
CreateVisualEffectObject("C0AMAGF1",Myself)
ApplySpellRES("C0AMAGF2",Myself)
TransformItem("c0amaga1","c0amaga3")
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraVampire","GLOBAL",3)~ THEN C0AURA2J AURA-VAMPIRE2
~丽华小姐的勾玉……在发光。而且它有点不同了。就像它醒了。~ [C0BLANK]
DO ~SetGlobal("C0AuraVampire","GLOBAL",4)~
END
  ++ ~是那股力量护住了你？~ + AURA-VAMPIRE2-1
  ++ ~我会永远感激，尽管我从没见过她。~ + AURA-VAMPIRE2-1
  ++ ~你走运。事情本可能糟得多。~ + AURA-VAMPIRE2-1

CHAIN C0AURA2J AURA-VAMPIRE2-1
~也许她一直知道……她知道我还会面对更多危险，所以留下这最后的礼物，在我需要的时候护住我，哪怕她已不在……~
= ~……谢谢你。~
= ~我准备好了，<CHARNAME>。这力量……我不确定为什么，可我知道我也能用它护住你。我们一起打倒这邪恶。~
EXIT

I_C_T C6BODHI 0 C0AuraC6BODHI0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~你……这一切对你都是场游戏，对吧？好，不管你以为我们在玩什么，我们现在就把它结束！~
END

// City Gates

INTERJECT JANJ 87 C0AuraJAN87
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~牛奶浴有什么不好？暖暖的……对皮肤又那么好……嗯……~
EXTERN JANJ 88

I_C_T GRVLCH01 0 C0AuraCRVLCH010
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哇！一个几百岁的巫妖在这种地方做什么？~
== GRVLCH01 ~湮灭吧。~
END

// City-of-Caverns

INTERJECT SAHPR1 1 C0AuraSAHPR11
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~沙——沙华鱼人，那些鲨鱼头的海魔……我在读过的怪兽志里认得它们。我——我……可我从没听过这样的语言……~
EXTERN SAHPR1 2

INTERJECT SAHKNG01 17 C0AuraSAHPR117
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>，我……我——~
END
  + ~OR(2)
     Global("C0AuraRomanceActive","GLOBAL",1)
     Global("C0AuraRomanceActive","GLOBAL",2)~ + ~我在这儿，奥拉。你不用怕。我们已不在水里。你跟我在一起很安全。~ EXTERN C0AURA2J C0AuraSahuagin
  ++ ~奥拉，你脸色好白！怎么了？~ EXTERN C0AURA2J C0AuraSahuagin
  ++ ~哦，神啊，掉进海里一定影响到你了。我该怎么做？~ EXTERN C0AURA2J C0AuraSahuagin
  ++ ~别偏偏挑现在在鲨鱼人面前让我丢脸，奥拉……~ EXTERN C0AURA2J C0AuraSahuagin

CHAIN C0AURA2J C0AuraSahuagin
~我，我，我——！~
DO ~SetGlobal("C0AuraSahuaginFears","GLOBAL",1)~
== SAHKNG01 ~这是什么？那个格外瘦小的似乎抖得格外厉害。我可以说，就像钩上的面包虫。（嘻嘻！）她若没法听你的命令，也许你可以把她留在这儿当个小点心，嗯？~
END
  ++ ~闭嘴！你敢那样说她！~ EXTERN SAHKNG01 C0AuraSahuagin.1
  ++ ~挑战可以等等！我得先照顾我的同伴。~ EXTERN SAHKNG01 C0AuraSahuagin.1
  ++ ~我需要你振作起来，奥拉。现在不是在我面前崩溃的时候！~ EXTERN SAHPR1 C0AuraSahuagin.2

CHAIN SAHKNG01 C0AuraSahuagin.1
~（嘻嘻！）你胆子不小，奇怪的<PRO_RACE>。算你走运我现在心情宽容。否则……~
== SAHPR1 ~我的王……求你。这事交给我。不会耽误您太久。~
EXTERN SAHPR1 C0AuraSahuagin.2

CHAIN SAHPR1 C0AuraSahuagin.2
~别担心，<PRO_RACE>。接受我们王的挑战，你的同伴会在我亲自保护之下。只要你成功，她不会受任何伤害——我以鲨父之名起誓。我们的事业需要你，让你的人受伤而激怒你，对我们双方都没好处。~
END
  ++ ~好。看来我别无选择，只能信你的话，女祭司。~ DO ~ActionOverride("C0Aura",LeaveParty()) ActionOverride("C0Aura",ApplySpellRES("C0AQEF27",Myself))~ EXTERN SAHKNG01 C0AuraSahuagin.3
  ++ ~好……请照顾好她。她极怕溺水。~ DO ~ActionOverride("C0Aura",LeaveParty()) ActionOverride("C0Aura",ApplySpellRES("C0AQEF27",Myself))~ EXTERN SAHKNG01 C0AuraSahuagin.3
  ++ ~不。我谁都不信。我们现在就走，否则你们全死！~ EXTERN SAHKNG01 22

CHAIN SAHKNG01 C0AuraSahuagin.3
~总算！我刚要决定我宁愿要一顿饭而不是娱乐。那么，进圈里去吧，快滚！~
COPY_TRANS SAHKNG01 17

INTERJECT SAHKNG01 24 C0AuraSAHKNG0124
== SAHKNG01 IF ~GlobalGT("C0AuraSahuaginFears","GLOBAL",0)~ THEN ~哦，当然，你的同伴还给你了……毫发无伤，正如我们更明智的女祭司承诺的。可惜，她看着真可口。~
DO ~SetGlobal("C0AuraSahuaginFears","GLOBAL",3) ActionOverride("C0Aura",ApplySpellRES("C0AQEF28",Myself)) ActionOverride("C0Aura",JoinParty())~
== SAHPR1 ~她仍在发抖，可她如今应该能回应你了，地面的<PRO_RACE>。去吧。~
== C0AURA2J ~我……抱歉给你惹了麻烦，<CHARNAME>。我……现在没事了。真的。~
END
  ++ ~你确定？若你还没缓过来，不必掩饰。~ EXTERN C0AURA2J C0AuraSahuagin.4
  ++ ~不是你的错。船上的事对你一定是创伤。~ EXTERN C0AURA2J C0AuraSahuagin.4
  ++ ~归队就得了。~ EXTERN SAHKNG01 C0AuraSahuagin.5

CHAIN C0AURA2J C0AuraSahuagin.4
~我们……我们晚点再谈，<CHARNAME>。我……我刚才是注意着情况的，别看那样子。我知道我们有任务。~
EXTERN SAHKNG01 C0AuraSahuagin.5

CHAIN SAHKNG01 C0AuraSahuagin.5
~是，是，真感人，诸如此类。你们的心配上小鱼一定好吃……可总之，回到正事。我们刚才说到哪儿？哦，对。（嘻嘻！）塞尼提伊利赢了。~
EXTERN SAHBAR03 2

I_C_T SAHBEH01 2 C0AuraSAHBEH012
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~一个观察者！我以前见过……它们是机械境的守序生物，不是恶性的。有些甚至在兰坦为贡德教团做事。~
== SAHBEH01 ~兰坦，嗯？那个满是侏儒和人类、搞些古怪实验的小岛？我听说我的同族被他们雇去送特别重要又危险的货。~
== SAHBEH01 ~那些是低阶的，可老实说，我宁愿干他们的活。至少*他们*能跑各处、见人，一边送你们兰坦聪明脑袋里出来的最抢手的小玩意儿。比盯着一个死气沉沉、毫无表情的箱子几千年有意思多了。他们真能拿到报酬？~
== C0AURA2J ~是，不过我始终没弄清他们的薪水到底用来干什么。~
== SAHBEH01 ~哦，你会吃惊的。就连我们也不是不享受夜生活。唉……~
== SAHBEH01 ~*咳* 我该停止白日梦了。我还有活要干，尽管无聊得要命。我说到哪儿了？~
END

EXTEND_BOTTOM SAHBEH01 27
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraBeholder","GLOBAL",0)~ EXTERN C0AURA2J C0AuraSAHBEH27
END

CHAIN C0AURA2J C0AuraSAHBEH27
~嘿，等等，我有个想法。他叫你守“箱子”，没说守里面的东西，对吧？~
DO ~SetGlobal("C0AuraBeholder","GLOBAL",1)~
EXTERN SAHBEH01 33

EXTEND_BOTTOM SAHBEH01 34
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ EXTERN C0AURA2J C0AuraSAHBEH34
END

CHAIN C0AURA2J C0AuraSAHBEH34
~可要是……我们按基本逻辑来……*你*打开它，而我只是非常非常小心、完全没碰箱子就拿到了里面的东西……你会允许吗？呃，当然，理论上。~
EXTERN SAHBEH01 35

CHAIN IF WEIGHT #-1 ~Global("C0AuraSahuaginFears","GLOBAL",4)~ THEN C0AURA2J AURA-SAHUAGIN
~……呃……~ [C0BLANK]
DO ~SetGlobal("C0AuraSahuaginFears","GLOBAL",5)~
== C0AURA2J ~……对不起。~
END
  ++ ~你已经说过了。~ + AURA-SAHUAGIN-1
  ++ ~不是你的错。~ + AURA-SAHUAGIN-2
  ++ ~你会没事吧？~ + AURA-SAHUAGIN-3
  ++ ~嗯，至少你现在说话有条理了。~ + AURA-SAHUAGIN-4
  ++ ~好在你恢复了。否则你也许已经成鱼食了。~ + AURA-SAHUAGIN-4
  ++ ~随便。我们只管想办法出去。~ + AURA-SAHUAGIN-0

CHAIN C0AURA2J AURA-SAHUAGIN-0
~对……我们还活着。那说明我没时间站在那儿自怨自艾、拖累大家。~
= ~我就跟在你后面。只是……给我一点时间。~
EXIT

CHAIN C0AURA2J AURA-SAHUAGIN-1
~我再说一遍。我也许得一直说，直到这种下沉的失望感消失。~
EXTERN C0AURA2J AURA-SAHUAGIN-4

CHAIN C0AURA2J AURA-SAHUAGIN-2
~是的。~
EXTERN C0AURA2J AURA-SAHUAGIN-4

CHAIN C0AURA2J AURA-SAHUAGIN-3
~……我不知道。~
EXTERN C0AURA2J AURA-SAHUAGIN-4

CHAIN C0AURA2J AURA-SAHUAGIN-4
~我试过了，<CHARNAME>。请信我，我真的试了。我没天真到以为自己那么快就战胜了创伤，可我以为凭我自以为的成长，至少能控制住自己。~
= ~你经历过糟得多的事，我全看在眼里……我帮不上忙，可至少可以不成为你的又一个负担。我需要不让这么小的事挡我的路。可我连这个都做不到。~
= ~太对不起了。~
END
  + ~OR(2)
     Global("C0AuraRomanceActive","GLOBAL",1)
     Global("C0AuraRomanceActive","GLOBAL",2)~ + ~我不要你道歉。我要你好好的。要抱一下吗？~ + AURA-SAHUAGIN-8
  ++ ~小事？我们本可能全死，奥拉。我们每一个人。你害怕有充分理由。~ + AURA-SAHUAGIN-5
  ++ ~没事了。你活着，在呼吸，现在还能说出来。那仍需要勇气。~ + AURA-SAHUAGIN-6
  ++ ~你现在还能这样自省，算你走运。~ + AURA-SAHUAGIN-7
  ++ ~够了。你若真觉得对不起，就尽一切去弥补。光说解决不了什么。~ + AURA-SAHUAGIN-0

CHAIN C0AURA2J AURA-SAHUAGIN-5
~我知道。这说得通，我只是……仍没法原谅自己。看看你，失去了那么多还在往前走。我还希望能做到那样。~
EXTERN C0AURA2J AURA-SAHUAGIN-10

CHAIN C0AURA2J AURA-SAHUAGIN-6
~我会继续试，<CHARNAME>。我忍不住觉得这次我辜负了你……可总有一天，我知道我能走过这一关。~
EXTERN C0AURA2J AURA-SAHUAGIN-10

CHAIN C0AURA2J AURA-SAHUAGIN-7
~你大概说得对。再说，只要我还能呼吸，我就能继续尽力。毕竟我现在不只对自己负责。~
EXTERN C0AURA2J AURA-SAHUAGIN-10

CHAIN C0AURA2J AURA-SAHUAGIN-8
~不，我不该——~
= ~……好。求你。~
END
  ++ ~过来。~ + AURA-SAHUAGIN-9

CHAIN C0AURA2J AURA-SAHUAGIN-9
~谢谢，<CHARNAME>。我不知道没有你我该怎么办……~
EXTERN C0AURA2J AURA-SAHUAGIN-10

CHAIN C0AURA2J AURA-SAHUAGIN-10
~我现在好多了，<CHARNAME>。谢谢你耐心对我。你要不在这儿，我大概正缩在某个洞里，如果还没被吃掉的话……嘿嘿。烂笑话，可我总得做点什么缓和气氛。~
= ~既然我又能想清楚了……这地方真了不起，你不觉得吗？就算沙华鱼人那么……残暴，他们也一起建出了宏伟的东西。水面上有多少人敢说见过这样的城市？~
END
  ++ ~我想不多。~ + AURA-SAHUAGIN-11
  ++ ~我很高兴你恢复得能再聊些琐事了。~ + AURA-SAHUAGIN-12
  ++ ~但愿我们能活着把故事讲出去。~ + AURA-SAHUAGIN-11

CHAIN C0AURA2J AURA-SAHUAGIN-11
~我年轻时画画多得多……那时还没见过诸国度真正什么样，我只有想象。我画的一切都是抽象的，跟真相完全不同……可有一次，我竟在脑子里画过一个有点像这里的地方。~
= ~至少我有个白日梦比我想的更接近现实。总之……我们走，去看看其余部分。~
EXIT

CHAIN C0AURA2J AURA-SAHUAGIN-12
~嗯，你该知道了……我跟别人一样有时会低落，可让我一直低落才是难事。~
EXTERN C0AURA2J AURA-SAHUAGIN-11

I_C_T SAHPR1 52 C0AuraSAHPR152
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("C0AuraSahuaginFears","GLOBAL",0)~ THEN ~我……呃，得谢谢你，女祭司……为刚才。要不是你在<CHARNAME>不在时照顾我，我大概会非常危险。~
== SAHPR1 ~不必谢我，地面的侏儒。谢鲨父吧，你正属于被选入他预言的人。你若想表示感激，现在就可以协助我们完成它。~
END

// Copper Coronet

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)
Name("C0Aura",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM madamnin-aura
~问候您，我的<LADYLORD>。我是宁夫人，我在此确保您有人愉快相伴。您对陪伴有兴趣吗，我的<LADYLORD>？~
== C0AURA2J ~不！我——我是说，不，谢谢。~
EXIT

CHAIN IF WEIGHT #-1 ~!NumTimesTalkedTo(0)
Name("C0Aura",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM madamnin-aura
~那么……您今晚想要个伴吗？~
== C0AURA2J ~不！我——我是说，不，谢谢。~
EXIT

CHAIN IF WEIGHT #-1 ~InPartySlot(LastTalkedToBy,0) InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)
OR(2)
Global("C0AuraRomanceActive","GLOBAL",1)
Global("C0AuraRomanceActive","GLOBAL",2)~ THEN MADAM madamnin
~问候您，我的<LADYLORD>。我是宁夫人，我在此确保您有人愉快相伴。您对陪伴有兴趣吗，我的<LADYLORD>？~
== C0AURA2J ~不。请别烦她。我想我没耐心再礼貌地请求第二次。~
EXTERN MADAM 17

// Cowled Wizards

I_C_T COWENF2 4 C0AuraCOWENF24
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~小心，<CHARNAME>……据我所听，兜帽法师利用他们对魔法的管控能拿什么就拿什么。~
END

// de'Arnise Keep

CHAIN IF WEIGHT #-1 ~AreaCheck("ar1302")
Global("C0AuraDeArniseKeep","GLOBAL",0)~ THEN C0AURA2J DEARNISE-HOLD
~*嗅* 没错，是巨魔。没别的东西能臭成这样。~
DO ~SetGlobal("C0AuraDeArniseKeep","GLOBAL",1)~
END
+ ~Global("C0AuraDruidGrove","GLOBAL",1)~ + ~你手上还有那种屠魔箭吗？~ + DEARNISE-HOLD-1
+ ~!Global("C0AuraDruidGrove","GLOBAL",1)~ + ~有什么能帮我们对付它们的东西吗？~ + DEARNISE-HOLD-2

CHAIN C0AURA2J DEARNISE-HOLD-1
~*轻笑* 当然。~
DO ~SetGlobal("C0AuraDeArniseKeep","GLOBAL",1) GiveItemCreate("c0auaro4",Myself,20,0,0)~ EXIT

CHAIN C0AURA2J DEARNISE-HOLD-2
~算我们走运，我总随身带一点屠魔液以防万一。在哪儿……啊，找到了！只要涂到箭头上……好！~
= ~我们碰上那些丑东西时，就能用一支射它们，它们就再也起不来。可惜除不掉那股味。~
DO ~GiveItemCreate("c0auaro4",Myself,20,0,0)~ EXIT

I_C_T2 KPGLAI01 0 C0AuraKPGLAI01
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>！我探到一股强烈的附魔魔法！这人一定中了某种魅惑！~
END

// Docks District

CHAIN IF WEIGHT #-1 ~Global("C0AuraDocksDistrict","GLOBAL",1)~ THEN C0AURA2J AURA-DOCKS
~呀，是码头区……肯定不是城里我最喜欢的地方。~
= ~人们说这是城里最危险的地方之一……平常我不带几瓶隐形药水都不敢来。可跟你在一起，我想我不必太担心。~
DO ~SetGlobal("C0AuraDocksDistrict","GLOBAL",2)~
END
++ ~真的？别的危险地方在哪儿？~ + AURA-DOCKS-1
++ ~你对这区这么熟，对一个不喜欢它的人来说。~ + AURA-DOCKS-2
++ ~随便。我们尽量少待。走吧。~ EXIT

CHAIN C0AURA2J AURA-DOCKS-1
~他们说墓园区半夜会有死者从地里爬出来……我希望只是故事。光墓穴里满是虫就够糟了。~
= ~我进去过一两次。不——不是去偷东西，你若在想这个！我只是好奇……兰坦可没有这么奢华的陵墓。~
EXTERN C0AURA2J AURA-DOCKS-3

CHAIN C0AURA2J AURA-DOCKS-2
~我尽量夜里不来这儿。不过有几个我感兴趣的地方，比如欧格玛神殿……有时我只是喜欢在近海处走走、吹吹风。~
= ~可别太近……一想到身处大片水域，我仍会发抖。可我家乡安科里尔是座海滨镇……所以它让我有点想起家。~
EXTERN C0AURA2J AURA-DOCKS-3

CHAIN C0AURA2J AURA-DOCKS-3
~说正事……怕你还不知道，<CHARNAME>，我认识一个在这区干活的人。他叫克伦威尔，是个极好的铁匠。我认识他不久，可我看他造的一切都精美。~
== C0AURA2J IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~其实我不久前把一样东西留在他那儿。“迅翼”……斋藤先生的旧刀。就算有那些黑暗记忆，我也舍不得丢……可我不懂传统兵器，所以找克伦威尔帮忙保养。~
== C0AURA2J IF ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~其实我不久前把一样东西留在他那儿。一把卡拉图的刀。它属于一个……我曾认识的友人。我不懂传统兵器，所以找克伦威尔帮忙保养。~
== C0AURA2J ~我一直想去看看它，若可以，我们也许能去瞧瞧。谁知道呢，也许我们还有别的东西能让他替我们拼起来。~
END
IF ~~ EXTERN C0AURA2J AURA-DOCKS-4
IF ~OR(3)
PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ EXTERN C0AURA2J AURA-DOCKS-EQUALIZER
IF ~OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ EXTERN C0AURA2J AURA-DOCKS-GESEN
IF ~OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ EXTERN C0AURA2J AURA-DOCKS-SILVERSWORD
IF ~OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ EXTERN C0AURA2J AURA-DOCKS-WAVE
IF ~PartyHasItem("scrlag")~ EXTERN C0AURA2J AURA-DOCKS-CROM
IF ~OR(2)
PartyHasItem("scaleb")
PartyHasItem("scaler")~ EXTERN C0AURA2J AURA-DOCKS-DRAGON
IF ~PartyHasItem("misc12")~ EXTERN C0AURA2J AURA-DOCKS-ANKHEG
IF ~PartyHasItem("misc5k")~ EXTERN C0AURA2J AURA-DOCKS-ILLITHIUM

CHAIN C0AURA2J AURA-DOCKS-EQUALIZER
~我确定你若把那块均衡者给他看，他会知道怎么弄。前提是我们凑齐所有部分。~
EXTERN C0AURA2J AURA-DOCKS-4

CHAIN C0AURA2J AURA-DOCKS-GESEN
~我确定你若把那块盖森弓给他看，他会知道怎么弄。我很想看看它跟我的太阳射手比如何。~
EXTERN C0AURA2J AURA-DOCKS-4

CHAIN C0AURA2J AURA-DOCKS-SILVERSWORD
~我确定你若把那块吉斯剑给他看，他会知道怎么弄。前提是我们凑齐所有部分。~
EXTERN C0AURA2J AURA-DOCKS-4

CHAIN C0AURA2J AURA-DOCKS-WAVE
~我确定你若把那块波涛戟给他看，他会知道怎么弄。前提是我们凑齐所有部分。~
EXTERN C0AURA2J AURA-DOCKS-4

CHAIN C0AURA2J AURA-DOCKS-CROM
~我确定你若把那卷矮人卷轴给他看，他会知道怎么弄。我完全读不懂，可我确定他能。~
EXTERN C0AURA2J AURA-DOCKS-4

CHAIN C0AURA2J AURA-DOCKS-DRAGON
~我确定你若把那些龙鳞给他看，他会知道怎么弄。我知道他以前处理过这类材料。~
EXTERN C0AURA2J AURA-DOCKS-4

CHAIN C0AURA2J AURA-DOCKS-ANKHEG
~我确定你若把那块臭烘烘的旧安克赫壳给他看，他会知道怎么弄。他的本事大概比贝雷戈斯特的泰罗姆大师还强。~
EXTERN C0AURA2J AURA-DOCKS-4

CHAIN C0AURA2J AURA-DOCKS-ILLITHIUM
~我见他对各种金属都能下手。秘银、精金、伊里锡姆……嘿，我们身上现在就有些伊里锡姆。我确定他能用它造出了不起的东西。~
EXTERN C0AURA2J AURA-DOCKS-4

CHAIN C0AURA2J AURA-DOCKS-4
~不过就算我们没东西给他做，去打个招呼也好。他家在最东南边。~
= ~只是小心……影贼管着这城这一片……至少我听说是。~
EXIT

CHAIN IF WEIGHT #-1 
~InParty("C0Aura")
Range("C0Aura",15)
RandomNum(2,1)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraCelvan","AR0300",0)~ THEN CELVAN AURA-CELVAN
~从前有个了不起的侏儒，
离家远去游四方，
她在东方寻得安宁，
直到导师之死令其中断，
她便踏上寻求真相的旅程！~
DO ~SetGlobal("C0AuraCelvan","AR0300",1)~
== C0AURA2J ~你怎么知道这么多？我猜你也知道我的未来？……嘿，回来！~
END CELVAN 1

CHAIN IF WEIGHT #-1 
~Global("C0AuraCromwell","GLOBAL",0)
Range("C0Aura",15)
InParty("C0Aura")~ THEN WSMITH01 AURA-CROMWELL
~呃？你不是……~
== C0AURA2J ~你好，克伦威尔！又是我。~
DO ~SetGlobal("C0AuraCromwell","GLOBAL",1)~
== WSMITH01 ~啊，这不是带着了不起构造体的聪明丫头吗。又见你真好。我猜你是来取你留给我那把漂亮刀的吧？~
== C0AURA2J ~嗯，这不是唯一的原因，可我确实想问问。它……~
== WSMITH01 ~是，它在这儿，丫头。好刀，没多少活儿要做，不过跟所有兵器一样，精修一下没坏处。~
DO ~GiveItemCreate("C0AUSW02","C0AURA",1,0,0)~
== C0AURA2J IF ~NumTimesTalkedTo(0)
!IsGabber(Player1)
!IsGabber("C0Aura")~ ~谢谢你，克伦威尔。顺便，这是<GABBER>，我的一位同伴。我们来用上你的大师手艺。~
== C0AURA2J IF ~NumTimesTalkedTo(0)
OR(2)
IsGabber("C0Aura")
IsGabber(Player1)~ ~顺便，这是<CHARNAME>，我的领队。我们来用上你的大师手艺。~
END
IF ~!NumTimesTalkedTo(0)~ EXTERN WSMITH01 58
IF ~NumTimesTalkedTo(0) !IsGabber("C0Aura")~ EXTERN WSMITH01 5
IF ~NumTimesTalkedTo(0) IsGabber("C0Aura")~ DO ~SetGabber(Player1)~ EXTERN WSMITH01 5

EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("C0AUSW02")~ EXTERN WSMITH01 CROMWELL0
END
  
CHAIN WSMITH01 CROMWELL0
~啊，我认得这一把……这是那位年轻姑娘奥拉的东方刀，不是吗？~
END
    IF ~Global("C0AuraCromwellSwordForgeFirst","GLOBAL",0)~ EXTERN WSMITH01 CROMWELL1
    IF ~!Global("C0AuraCromwellSwordForgeFirst","GLOBAL",0)
        PartyHasItem("C0AUSW02")
        !PartyHasItem("MISC6M")
        !PartyHasItem("MISC6Z")~ EXTERN WSMITH01 CROMWELL2
    IF ~!Global("C0AuraCromwellSwordForgeFirst","GLOBAL",0)
        PartyHasItem("C0AUSW02")
        PartyHasItem("MISC6M")
        PartyHasItem("MISC6Z")~ EXTERN WSMITH01 CROMWELL3

CHAIN WSMITH01 CROMWELL1
~其实，我看见护手上的刻字时，才想起我认识铸它的人，你信吗。我学这门手艺时也走过不少地方，见过别的名匠，其中一个我记得很清楚，是卡拉图血统。~
== WSMITH01 ~名字又长又难念，叫什么来着……“新五郎·武通·无双”，我想。他是我见过最傲慢的人之一，可他锻这些东方刀的本事无疑无人能比。不过，我从没放弃找机会压他一头。自从我看见这把刀，我就一直在琢磨，我想我有办法了。~
== C0AURA2J IF ~InParty("C0Aura") Range("C0Aura",15)~ THEN ~真的？那你需要什么材料，克伦威尔？~
END
    IF ~PartyHasItem("C0AUSW02")
        OR(2)
        !PartyHasItem("MISC6M")
        !PartyHasItem("MISC6Z")~ EXTERN WSMITH01 CROMWELL2
    IF ~PartyHasItem("C0AUSW02")
        PartyHasItem("MISC6M")
        PartyHasItem("MISC6Z")~ EXTERN WSMITH01 CROMWELL3

CHAIN WSMITH01 CROMWELL2
~你若找到一颗贝尔朱里尔宝石和一颗恶魔之心，虽然这要求难得很，我就能把风暴之力注入这把刀。那人锻的刃比任何凡人之手都锋利，可没有哪把刃比闪电的一击更利。~
EXTERN WSMITH01 CROMWELLNO

CHAIN WSMITH01 CROMWELL3  
~我看你有一颗贝尔朱里尔，还有一颗恶魔之心。借宝石的自然之能与恶魔的狂怒，我能把风暴之力注入这把刀。那人锻的刃比任何凡人之手都锋利，可没有哪把刃比闪电的一击更利。这活得八千枚金币。~
END
    + ~PartyGoldLT(8000)~ + ~我没有足够的金币。~ EXTERN WSMITH01 CROMWELLNO
    + ~PartyGoldGT(7999)~ + ~听着不错。动手吧。~ DO ~SetGlobal("C0AuraCromwellSwordUpgrade","ar0334",1)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(8000)
                                                 TakePartyItemNum("C0AUSW02",1)
                                                 DestroyItem("C0AUSW02")
                                                 TakePartyItemNum("MISC6M",1)
                                                 DestroyItem("MISC6M")
                                                 TakePartyItemNum("MISC6Z",1)
                                                 DestroyItem("MISC6Z")
                                                 DestroyGold(8000)~ EXTERN WSMITH01 56
    ++ ~这次不了。还有什么？~ EXTERN WSMITH01 CROMWELLNO

CHAIN IF WEIGHT #-1 ~GlobalGT("C0AuraCromwellSwordUpgrade","ar0334",0)~ THEN WSMITH01 CROMWELL4 
~嗯，拿去吧，我的朋友。好好用。你若再碰上别的有意思的东西，知道该往哪儿送，是吧？~
DO ~SetGlobal("C0AuraCromwellSwordUpgrade","ar0334",0)~ EXIT

CHAIN WSMITH01 CROMWELLNO
~那么，我们来看看你还带了什么，嗯？~
COPY_TRANS WSMITH01 13

I_C_T ARAN 40 C0AuraARAN40
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~一座“法师与有才之人的”收容所？听着不祥……而且糟、糟透了。~
END

EXTEND_BOTTOM ARAN 42
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraShipFear","GLOBAL",0)~ DO ~SetGlobal("C0AuraShipFear","GLOBAL",1)~ EXTERN C0AURA2J SHIPFEAR
END

CHAIN C0AURA2J SHIPFEAR
~*打颤* 又是海……~
END
  + ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~你对海上旅行有不好的经历。你会没事吗？~ + SHIPFEAR-1
  + ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~我知道你不喜欢，可这趟旅程我需要你坚强。~ + SHIPFEAR-1
  + ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~若船这么让你害怕，你可以留下。~ + SHIPFEAR-1
  + ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~一切还好吗，奥拉？~ + SHIPFEAR-2
  + ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~你怎么了？~ + SHIPFEAR-2

CHAIN C0AURA2J SHIPFEAR-1
~我……我会没事的，<CHARNAME>。我不能让个人的问题拖住你。你也别开口说要我留下、自己一个人去冒险！~
EXTERN ARAN SHIPFEAR-3

CHAIN C0AURA2J SHIPFEAR-2
~只是……我在船上没什么好经历。多年前我差点在一条船上送了命……可我得走过去。~
EXTERN C0AURA2J SHIPFEAR-1

CHAIN ARAN SHIPFEAR-3
~我保证会尽力为怕水路的人提供最好的安置。可我怕这是抵达你们目的地的唯一办法。~
EXTERN ARAN 43

I_C_T2 WSMITH01 8 C0AuraWSMITH018
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~克伦威尔是真正的手艺大师。我们见面前不久，我这台构造体的大部分强化都是他画的图。说到打铁，我从没见过比他更好的。~
END

I_C_T BOOTER 3 C0AuraBOOTER3
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~不人道……他在享受自己给别的生灵造成的痛苦。<CHARNAME>，我们走吧。我想我再也受不了了。~
END

I_C_T2 RENFELD 6 C0AuraRENFELD6
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~我从没见过这么恶毒的毒。我们若不能把这位可怜人送到安全处，他几小时内就会死！~
END

I_C_T HLSKULL 0 C0AuraHLSKULL0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~等——等等，<CHARNAME>！碰可能有诅咒的东西前总要小心——哦，太晚了……~
END

I_C_T MAEVAR 1 C0AuraMAEVAR1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~多么残忍的手段……~
END

I_C_T DOGHMA 0 C0AuraDOGHMA0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*嗅* 哦，我多爱在长途跋涉一天后呼吸这熟悉的墨与羊皮纸味！~
== DOGHMA ~的确。你在此逗留时，请不必犹豫，尽管浏览我们丰富的知识。~
END

// Drizzt

I_C_T C6BRUEN1 9 C0AuraDrizzt2
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~……粉色有什么不好？~
END

I_C_T2 C6DRIZZ1 37 C0AuraDrizzt3
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦，我们真要跟厅堂同伴并肩作战了！希望有人把这一役写进下一部史诗。~
END

// Druid Grove

CHAIN IF WEIGHT #-1 ~AreaCheck("ar1900")
Global("C0AuraDruidGrove","GLOBAL",0)~ THEN C0AURA2J DRUID-GROVE
~哦天。你闻到那味了吗，<CHARNAME>？空气里那股像腐肉一样的臭味？~
DO ~SetGlobal("C0AuraDruidGrove","GLOBAL",1)~
END
+ ~OR(3)
CheckStatGT(Player1,15,INT)
Class(Player1,RANGER_ALL)
Class(Player1,DRUID_ALL)~ + ~巨魔。这臭味不会错。~ + DRUID-GROVE-1
+ ~!CheckStatGT(Player1,15,INT)
!Class(Player1,RANGER_ALL)
!Class(Player1,DRUID_ALL)~ + ~那又怎样？~ + DRUID-GROVE-2

CHAIN C0AURA2J DRUID-GROVE-1
~是啊。我真恨那些东西。~
END
+ ~Global("C0AuraDeArniseKeep","GLOBAL",1)~ + ~你手上还有那种屠魔箭吗？~ + DEARNISE-HOLD-1
IF ~!Global("C0AuraDeArniseKeep","GLOBAL",1)~ EXTERN C0AURA2J DRUID-GROVE-3

CHAIN C0AURA2J DRUID-GROVE-2
~那意味着巨魔。我真恨那些东西。~
END
+ ~Global("C0AuraDeArniseKeep","GLOBAL",1)~ + ~你手上还有那种屠魔箭吗？~ + DEARNISE-HOLD-1
IF ~!Global("C0AuraDeArniseKeep","GLOBAL",1)~ EXTERN C0AURA2J DRUID-GROVE-3

CHAIN C0AURA2J DRUID-GROVE-3
~算我们走运，我总随身带一点屠魔液以防万一。在哪儿……啊，找到了！只要涂到箭头上……好！~
= ~我们碰上那些丑东西时，就能用一支射它们，它们就再也起不来。可惜除不掉那股味。~
DO ~GiveItemCreate("c0auaro4",Myself,20,0,0)~ EXIT

INTERJECT TRRAK01 0 C0AuraTRRAK010
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~等等，等等等等，<CHARNAME>！我感到这村舍每个角落都有幻象！而且……在这位老妇人身上最强！哦……我知道了！是罗刹魔法！小心！~
EXTERN TRRAK01 3

I_C_T2 DRUSH 9 C0AuraDRUSH9
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦，呃！恶心！我的除臭喷雾在哪儿？我用光了？偏偏在我们需要的时候！啊！~
END

I_C_T2 CEFALD04 3 C0AuraCEFALD04
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~不！你为什么要这样做？这不过是对自然秩序的摧毁！我不能留在这儿看！~
DO ~LeaveParty()
EscapeArea()~ END

// Edwin

I_C_T EDWINJ 10 C0AuraEDWINJ10
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~这是个可怕的主意。~
END

// Elhan

I_C_T C6ELHAN2 28 C0AuraC6ELHAN228
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~精灵的古老家园……就这样被毁了……被一个人？~
END

// Government District

CHAIN IF WEIGHT #-1 ~Range("C0Aura",15)
InParty("C0Aura")
RandomNum(2,2)
Global("C0AuraOriona","LOCALS",0)~ THEN ORIONA AURA-ORIONA
~哎哟，你真是个可爱的小娃娃。我要是有时间，就把你带回我的宅子，跟我的其他珍藏一起摆在展示架上。~
DO ~SetGlobal("C0AuraOriona","LOCALS",1)~
== C0AURA2J ~呃……我*想*那是夸奖？~
EXIT

EXTEND_BOTTOM VALYGARJ 117
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ EXTERN C0AURA2J aura-notolger
END

CHAIN C0AURA2J aura-notolger
~别这么做，<CHARNAME>……不管法师们要什么，那都不是正义，我知道。~
COPY_TRANS VALYGARJ 117

INTERJECT TOLGER 84 C0AuraTOLGER84
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~这太可怕了……我——我没法看这个。也没法再看你，<CHARNAME>，再也。我受够了！~
END
IF ~OR(2)
Global("C0AuraRomanceActive","GLOBAL",1)
Global("C0AuraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~ EXTERN VALYGARJ 118
IF ~!Global("C0AuraRomanceActive","GLOBAL",1)
!Global("C0AuraRomanceActive","GLOBAL",2)~ DO ~LeaveParty()
EscapeArea()~ EXTERN VALYGARJ 118

I_C_T2 SCSARLES 11 C0AuraSCSARLES11
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~两——两——两百磅？！<CHARNAME>，你知道光弄到能放进手掌心的伊里锡姆有多难吗？哦，这会是场噩梦……~
END

I_C_T CORNEIL 9 C0AuraCORNEIL9
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~五——五千？！就为了使用魔法的权利？这简直是抢劫！~
== CORNEIL ~这就是施展法术这项特权所需的价钱。要就要，不要就走。~
END

I_C_T MARIA 5 C0AuraMARIA5
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦不，多可怕……没什么比亲近的家人更重要，现在这样……可怜的凯尔东爵士。~
END

I_C_T VICG1 2 C0AuraVICG12
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*倒吸一口气* 他们要把人活活烧死，<CHARNAME>！多可怕！~
END

// Graveyard District

I_C_T ANOMENJ 150 C0AuraANOMENJ150
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~这一定很难。若有人杀了我的姐妹……我不知道轮到我时会怎么做。至少……我想知道全部真相。~
END

I_C_T TIRDIR 2 C0AuraTIRDIR2
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~太可怕了……我想不出多少比这更痛苦的受苦方式。为什么有人要做这么毫无意义的残忍事？~
END

I_C_T2 WELLYN 10 C0AuraWELLYN10
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~我想这是我们能为他的最好结果了。可怜的孩子。安息吧……~
END

I_C_T2 LESTER 5 C0AuraLESTER5
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哇。我还以为我曾叔祖盖博就够疯了。~
END

I_C_T2 BHCRYPT 0 C0AuraBHCRYPT0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~我猜一句“对不起！”也帮不上忙？~
END

// Hell

I_C_T PLAYER1 25 C0AuraEnteringHell1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦……我感到自己沉进某种言语无法描述的黑暗可怕之物！我唯一能听见的是你的声音，就跟着它，然后……好吧，我在这儿。我很高兴找到了你。~
END

I_C_T HELLJON 7 C0AuraThirdBattleWithIrenicus1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~我从不为结束一条生命而兴奋……可那要面对自己罪业因果的灵魂，将是你的，爱瑞尼库斯！~
== C0AURA2J IF ~Global("C0AuraRomanceActive","GLOBAL",2) GlobalGT("C0AuraRomanceYRGlob","GLOBAL",0)~ THEN ~至于吉野……我一定让他的灵魂得到安宁，哪怕为此得往你身上射进一千支箭！~
END

I_C_T HELLJON 8 C0AuraThirdBattleWithIrenicus1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~我从不为结束一条生命而兴奋……可那要面对自己罪业因果的灵魂，将是你的，爱瑞尼库斯！~
== C0AURA2J IF ~Global("C0AuraRomanceActive","GLOBAL",2) GlobalGT("C0AuraRomanceYRGlob","GLOBAL",0)~ THEN ~至于吉野……我一定让他的灵魂得到安宁，哪怕为此得往你身上射进一千支箭！~
END

I_C_T HELLJON 9 C0AuraThirdBattleWithIrenicus1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~我从不为结束一条生命而兴奋……可那要面对自己罪业因果的灵魂，将是你的，爱瑞尼库斯！~
== C0AURA2J IF ~Global("C0AuraRomanceActive","GLOBAL",2) GlobalGT("C0AuraRomanceYRGlob","GLOBAL",0)~ THEN ~至于吉野……我一定让他的灵魂得到安宁，哪怕为此得往你身上射进一千支箭！~
END

I_C_T HELLJON 10 C0AuraThirdBattleWithIrenicus1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~我从不为结束一条生命而兴奋……可那要面对自己罪业因果的灵魂，将是你的，爱瑞尼库斯！~
== C0AURA2J IF ~Global("C0AuraRomanceActive","GLOBAL",2) GlobalGT("C0AuraRomanceYRGlob","GLOBAL",0)~ THEN ~至于吉野……我一定让他的灵魂得到安宁，哪怕为此得往你身上射进一千支箭！~
END

// Jansens

CHAIN IF WEIGHT #-1 ~Global("C0AuraKylie","GLOBAL",0) InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN KYLIE1 kylie
~哦，奥拉！你要走了吗？~
DO ~SetGlobal("C0AuraKylie","GLOBAL",1)~
== C0AURA2J ~嗯。我要跟我朋友<CHARNAME>去冒险一阵。~
== KYLIE1 ~啧，啧。真可惜。这城里能一起混的好侏儒姑娘太少了。尤其是一个在美食上品味这么好的。~
== C0AURA2J ~唉，谢谢，凯莉。我也得谢你的招待。要不是你的手艺，我永远不知道安姆的芜菁汤这么好吃。~
== KYLIE1 ~嗯，活着回来，我就给你做一顿全芜菁宴，随你吃！哦，我差点忘了——给，这是给你的。我把你交给我卖的那些零件在集市上卖了个好价钱。谢谢你帮我们家。~
DO ~GiveGoldForce(50)~
== C0AURA2J ~没问题，凯莉。我很高兴帮上忙。~
== KYLIE1 ~早点回来！哦，走前别忘了带上这颗好运芜菁！~
DO ~Face(SW)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraKylie","GLOBAL",1) IsGabber("C0Aura")~ THEN KYLIE1 kylie2
~嘿，奥拉！上路前不来颗芜菁吗，嗯？~
EXIT

CHAIN IF WEIGHT #-1 ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) !Global("C0AuraBG2Quest3","GLOBAL",5) Global("C0AuraMaJansen","LOCALS",0)~ THEN MAJAN majansen
~啊，这不是亲爱的小奥拉吗。难得见你出门走动。这些是你的朋友？~
DO ~SetGlobal("C0AuraMaJansen","LOCALS",1)~
== C0AURA2J ~是，简森太太。我要跟他们一起旅行一阵。谢谢你这么久收留我。~
== MAJAN ~不用谢我，亲爱的。你的故事和发明让我们有了个愉快的客人。希望我侄子没烦你。~
== C0AURA2J ~不，一点不！皮可帮了大忙。我不在时他能照看工坊。~
== MAJAN IF ~IsValidForPartyDialog("Jan")~ THEN ~我看你终于也见着我扬了！希望你好好相处，小子。~
== JANJ IF ~IsValidForPartyDialog("Jan")~ THEN ~是，妈。哎呀，凭我们合力想出的更高效耕作方案，我们的芜菁成本利润比会大幅提升，只是时间问题，你看着吧。~
== MAJAN ~好，好。那么，你来还有别的事吗？~
END
IF ~InParty("Jan")
Detect("Jan")
Global("JanLissaPlot","GLOBAL",6)~ EXTERN C0AURA2J majansen.1
IF ~True()~ EXTERN C0AURA2J majansen.2

CHAIN IF WEIGHT #-1 ~Global("C0AuraMaJansen","LOCALS",1) IsGabber("C0Aura")~ THEN MAJAN majansen2
~<DAYNIGHTALL>好，亲爱的。我们家永远欢迎你。~
EXIT

CHAIN C0AURA2J majansen.1
~是，简森太太，还有件事，可……嗯，我想你最好跟扬说。~
EXTERN MAJAN 0

CHAIN C0AURA2J majansen.2
~我想没有，简森太太。我们这就走。~
== MAJAN ~那再见，丫头。记得回来看看，好吗？我们家门永远为你开。~
EXIT

CHAIN IF WEIGHT #-1 ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraTat","LOCALS",0)~ THEN TAT tat
~我的小猫能打赢你的小猫。~
DO ~SetGlobal("C0AuraTat","LOCALS",1)~
== C0AURA2J ~我——呃，我不确定想拿可可酱去试。回头见，塔特。~
== TAT ~噗——！~
EXIT

CHAIN IF WEIGHT #-1 ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraTot","LOCALS",0)~ THEN TOT tot
~嘿，嘿，是奥拉！让你的松鼠耍把戏给我看！来个烟火怎么样？~
DO ~SetGlobal("C0AuraTot","LOCALS",1)~
== C0AURA2J ~嘿嘿。抱歉，托特。今天没把戏。我忙。~
== TOT ~唉。好吧，那我去揪塔特的鼻子。~
EXIT

I_C_T JAN 1 C0AuraJAN1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~蔬菜贩子，嗯……等等，你不是皮可的堂亲吗？~
== JAN ~小腌瓜鼻子？他回城了？我猜这说明他给那鞋匠当助手那段没赚到什么，跟之前那二十来份零工一样。那家伙跟任何比他大的人都干不长。我猜他现在又在四处找下一条出路？可怜的小子。~
== C0AURA2J ~其实，皮可在家里帮了大忙。顺便，你母亲一直在打听你。~
== JAN ~啊，是，我一直想回家看看。可惜，我说过，市场跌得比一辆缺了轮子的芜菁车还快，而我一直忙得不可开交，替那些需要一点简森家招牌特产的倒霉冒险者跑腿。嗯，那是芜菁之后的招牌，可唉，芜菁贩子这高贵行当如今不受赏识了。~
END

I_C_T2 GERHAR 20 C0AuraGERHAR20
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呃……别管他，<CHARNAME>。简森太太说格哈特脑子一直有点怪。我尽量不下来这儿。~
END

I_C_T JAN 3 C0AuraJAN3
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~闪光爆破者——呃，我是说，大师？这名字有点太直白，你不觉得？我会取个更……诗意的。~
END

I_C_T TRGUARD 1 C0AuraTRGUARD1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~嘿——呃，没什么。抱歉。~
END

I_C_T TRAX 16 C0AuraTRAX16
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~什——你到底在干什么，<CHARNAME>？维护那种落后的法律……~
END

I_C_T BEELOO 0 C0AuraBEELOO0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*轻笑*“芜菁男孩”？~
END

I_C_T LISSA 4 C0AuraLISSA4
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~我……我不敢信有父亲会这样伤害自己的孩子。多残忍。~
END

I_C_T LISSA 10 C0AuraLISSA10
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~这……不，抱歉，我不该插手。可这一切都显得不对。~
END

// Neera

I_C_T OHNREGI 25 C0AuraOHNREGI25
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~一……一块砖？~
== OHNREGI ~是。一块砖。我挑了能找到的最大最重的一块。没人打得过砖头。~
END

// Planar Sphere

I_C_T MGAPPR01 2 C0AuraMGAPPR012
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~嘿！这是什么态度？~
END

CHAIN IF WEIGHT #-1 ~!Dead("Lavok")
Global("C0AuraLavok","GLOBAL",1)~ THEN C0AURA2J C0AuraLavok
~我……拉沃克大师？关于这本书……~
DO ~SetGlobal("C0AuraLavok","GLOBAL",2)~
== LAVOK ~那是……？啊，《伊玛斯卡魔像制造手册》？嗯——嗯……看见它，我脑子里满是那些我献给寻访失落之地知识的宝贵时光……为保存古老社会的智慧所费的心力……让它活过来……~
== LAVOK ~……拿去吧，姑娘，尽管拿。你若能让它比一个垂死老人更有价值，那就值得……~
== C0AURA2J ~谢——谢谢你……~
== LAVOK ~不过，再次看见它，而且是在一位奇械师手里——我看得出你是——更不必说……我想起一位老通信人，很久以前……她有个极好奇的头脑，被对支配这世界之力量的知识渴求所驱使……她把这用在冶金学上……~
== LAVOK ~那侏儒叫什么来着……？唉，我想不起来。看来我身体的缓慢死亡已影响我最遥远的记忆残迹。我只记得几个世纪前读过她的巨著。我怀疑还有副本存世……~
== LAVOK ~无论如何，没多少时间浪费在这些事上。去吧，找到我们回家的路。时间要紧。去！~
EXIT

I_C_T VALYGARJ 107 C0AuraVALYGARJ107
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*叹气* Omnia mors aequat……一个真正卓越的头脑就这样终结了。我知道他一定做过可怕的事，可还是……我很高兴他最后得到了些安宁。~
== VALYGARJ ~若在几天前，我会说你这种想法天真，奥拉，可现在……现在我没那么确定了。~
END

I_C_T VALYGARP 2 C0AuraVALYGARJ107
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*叹气* Omnia mors aequat……一个真正卓越的头脑就这样终结了。我知道他一定做过可怕的事，可还是……我很高兴他最后得到了些安宁。~
== VALYGARJ ~若在几天前，我会说你这种想法天真，奥拉，可现在……现在我没那么确定了。~
END

// Planar Prison

INTERJECT PBHUNT01 3 C0AuraPBHUNT013
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~这……这已不是主物质界了，<CHARNAME>。我们在某种……异位面维度里！~
EXTERN PBHUNT01 7

I_C_T2 PTHRAL01 1 C0AuraPTHRAL011
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~多可怕！他们的项圈在扭他们的心智，把他们变成不情愿的奴隶！我们能做点什么救他们吗……？~
END

// Slums District

I_C_T COHRVALE 0 C0AuraCOHRVALE0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呀！~
END

I_C_T2 GIRL1 1 C0AuraGIRL11
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~可怜的姑娘……我希望她自由之后能平安。~
END

I_C_T2 SLILMAT 16 C0AuraSLILMAT16
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦，哎哟……那看着真疼。你没事吧，<CHARNAME>？你若不想留淤青，我有些药膏……~
END

I_C_T GIRL2 0 C0AuraGIRL20
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~他们……他们把一个小姑娘跟那些野兽关在一个笼子里？这太邪恶了！~
END

I_C_T SEWSW 4 C0AuraSEWSW
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~真迷人！一道谜题，当然，可谁出的？你觉得我们能找到这四样东西、解开答案吗，<CHARNAME>？这里显然有个秘密等着被发现。~
END

I_C_T SEWSW 5 C0AuraSEWSW
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~真迷人！一道谜题，当然，可谁出的？你觉得我们能找到这四样东西、解开答案吗，<CHARNAME>？这里显然有个秘密等着被发现。~
END

CHAIN IF WEIGHT #-1 ~Range("C0Aura",15)
InParty("C0Aura")
IfValidForPartyDialogue("C0Aura")
RandomNum(2,2)
Global("C0AuraWaylane","LOCALS",0)~ THEN WAYLANE AURA-WAYLANE
~你！嘿，你！那个穿可爱行头的小侏儒！~
DO ~SetGlobal("C0AuraWaylane","LOCALS",1)~
== C0AURA2J ~嗯？哦，你在说我？~
== WAYLANE ~是，你！看见这颗顶好的球了吗？只要五百枚金币，它就归你！你说呢？~
== C0AURA2J ~哦，那魔法球！它突然出现在这儿后，我一直好奇。你知道怎么进去吗？~
== WAYLANE ~当……当然！有……有个口令，我只要一点点钱就告诉你。你哪儿都找不到更好的价！~
== C0AURA2J ~嗯，不过……我有种不祥的感觉，那东西若真裂开，会有可怕的事发生。就像那些故事：怪船从天而降，门一开，外域的怪物涌出来占满世界。可我确定那只是吓人的故事……~
== WAYLANE ~呃……那不会真发生吧？再想想，也许靠这东西这么近不是个好主意……~
== C0AURA2J ~抱歉，跑题了。价钱是多少来着？我私房钱也许刚好够。~
== WAYLANE ~呃，这提议……暂且搁置……对。我得花点时间想个更好的说辞。大概也得找个更安全的地方站着……~
EXIT

CHAIN IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Name("C0Aura",LastTalkedToBy)
Global("C0AuraSalvanas","GLOBAL",0)~ THEN SALVANAS AURA-SALVANAS
~哟，你好啊，我的小粉花。我想我以前在这儿没见过你这样的小甜心。~
DO ~SetGlobal("C0AuraSalvanas","GLOBAL",1)~
== C0AURA2J ~你说什么？~
== SALVANAS ~啊，能在这破地方发现侏儒可爱之美的典范，我真是有福。若我们在月光下共处，我会吟一曲热情的夜曲！~
== C0AURA2J ~哇……你还真爱听自己说话，对吧？~
== SALVANAS ~啊，可我更愿一位美丽少女听我说话。能否赏我片刻你的注意？~
== C0AURA2J ~呃，谢谢，可我想我不……~
== SALVANAS ~好了好了，不用害羞，亲爱的。让我握住你的手，然后——*嗷*！~
== C0AURA2J ~嘿！穆菲，我跟你说了多少次不许咬人？~
== SALVANAS ~哎哟……~
== C0AURA2J ~我——我真的很抱歉……他有时会这样。~
== SALVANAS ~看来这位美人有她的侠义骑士守护荣誉。*叹气* 我的心在滴血……我可怜的手指也是。~
EXIT

CHAIN IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Name("C0Aura",LastTalkedToBy)
Global("C0AuraSalvanas","GLOBAL",1)~ THEN SALVANAS AURA-SALVANAS
~哦，呃，又见到你了，我甜美的小姐。她的铜骑士还栖在她肩上……*叹气*~
== C0AURA2J ~啊哈哈……呃，希望你能原谅穆菲。你的手指怎么样？~
== SALVANAS ~仍旧疼，所有寻常药方都被它拒绝，亲爱的。我怕只有美人一触——哪怕轻轻一下——才能治。~
== C0AURA2J ~我确定我有能治好它的药。真的！~
== SALVANAS ~*叹气* 算了。~
== SALVANAS IF ~See(Player1) OR(2) Global("C0AuraRomanceActive","GLOBAL",1) Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~不过……我一直好奇，既然你跟你同样可爱的领队那么亲近……你们俩莫非是一对？~
DO ~SetGlobal("C0AuraSalvanas","GLOBAL",2)~
== C0AURA2J IF ~See(Player1) OR(2) Global("C0AuraRomanceActive","GLOBAL",1) Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~嗯？哦，呃……你要那样看也行，我想……~
== SALVANAS IF ~See(Player1) OR(2) Global("C0AuraRomanceActive","GLOBAL",1) Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~不，一点不是。我明白怎么回事了。好，这只忙碌的蜜蜂知道别去招惹宁可要蝴蝶的花！小人儿，我谦卑地求你原谅。~
EXIT

// Suldanessellar

I_C_T PLAYER1 16 C0AuraIrenicusIsDead1
== C0AURA2J IF ~InParty("C0Aura") Range("C0Aura",15) !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~就——就这样？~
END

I_C_T SUDEMIN 32 C0AuraSUDEMIN32
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~外面有那么多苦难……<CHARNAME>，为了你自己，也为了……我们尽力而为吧。~
END

// Temple District

I_C_T TCYRANDO 2 C0AuraTCYRANDO2
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~嘿，别失去信心。人类与侏儒的恋情在兰坦不算罕见，而且你有一颗诗人的心。我想你有机会！~
== TCYRANDO ~嘿嘿……我会想想。谢谢。~
END

I_C_T HLSION 0 C0AuraHLSION0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~那些守卫法阵？我——我进这儿时就觉得不对。我想我们不该轻视这些人。~
END

I_C_T CLTCUT01 4 C0AuraCLTCUT014
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呃！多可怕！~
END

I_C_T TIRLANA 15 C0AuraTIRLANA15
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~唉，我在想哪天会不会有人用言语和诗把我打动得神魂颠倒。嘻嘻……那一天啊。~
END

I_C_T2 JANJ 133 C0AuraJANJ133
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*轻笑* 我希望我在兰坦的教授们讲贡德的故事能那么有意思。哪怕完全荒唐也好。~
END

// Trademeet

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("C0Aura",LastTalkedToBy)~ EXTERN TRGYP02 g1
END

CHAIN TRGYP02 g1
~你是珍视过去、却无限望向未来的人。你的才华将是对这世界的祝福，年轻的奇械师。我能给的忠告不多，只有忠于你善良的本性，丢掉心中的疑虑。~
== C0Aura2J ~哦……一位守龙算命人也对我说过同样的话。这不可能是巧合吧？~
EXIT

CHAIN IF WEIGHT #-1
~Name("C0Aura",LastTalkedToBy)
Global("c0rininaura","LOCALS",0)~ THEN TRGYP03 AURA-RININ
~你头上那是松鼠吗，矮个子女士？是你的吗？母亲不让我养宠物。它为什么那么亮？它咬人吗？~
DO ~SetGlobal("c0rininaura","LOCALS",1)~
== C0AURA2J ~不，穆菲是个好孩子。我确定他不会。嘿，你想摸摸他吗？~
== TRGYP03 ~想！~
EXIT

I_C_T NEEBER 10 C0AuraNEEBER10
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~你知道，我想同意，可，呃……算了。说出我在想什么不礼貌。~
END

I_C_T EDWINJ 40 C0AuraEDWINJ40
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~嗯，若这能安慰你，埃德温，我不觉得你慌乱时脸看着有多凶。只是挺好笑。哦，就像现在这样！~
== EDWINJ ~我很难决定哪个小鬼更烦人，这个还是我们身边已经有的那个厚脸皮的！~
END

// Tree of Life

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraTreeOfLife","GLOBAL",0) !Global("C0AuraRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 TREEOFLIFE
END

CHAIN PLAYER1 TREEOFLIFE
~奥拉，这个来自远方的、永远乐观善良的侏儒，已全心投入你的事业。你在想，她的勇气够不够应付这最后一战。~
DO ~SetGlobal("C0AuraTreeOfLife","GLOBAL",1)~
END
++ ~奥拉，你还有家人和家在等你。你真想在这儿丢掉性命吗？~ EXTERN C0AURA2J TREEOFLIFE.1
++ ~你从不是为这些暴力而生的，奥拉，而爱瑞尼库斯将是我们最难的一战。你不必让自己涉险。~ EXTERN C0AURA2J TREEOFLIFE.1
++ ~你准备好拿出全力面对我们前面的东西了吗，奥拉？这一战决定一切。~ EXTERN C0AURA2J TREEOFLIFE.1

CHAIN C0AURA2J TREEOFLIFE.1
~你是我认识的最好的朋友和老师，<CHARNAME>。就算我没你那么勇敢，看见爱瑞尼库斯对你和所有人做的事……不，我现在不能离开你。不管会发生什么，我都留下来陪你。~
END
COPY_TRANS PLAYER1 33

EXTEND_TOP PLAYER1 33 #1
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraTreeOfLife","GLOBAL",0) Global("C0AuraRomanceActive","GLOBAL",2)~ 
EXTERN PLAYER1 TREEOFLIFEROM
END

CHAIN PLAYER1 TREEOFLIFEROM
~奥拉：她给了你信任、友谊，还有更多……同经喜与悲之后，你们俩比以往任何时候都更亲近。她目不转睛地回望你，努力显得尽可能自信。~
DO ~SetGlobal("C0AuraTreeOfLife","GLOBAL",1)~
END
++ ~奥拉，我——~ EXTERN C0AURA2J TREEOFLIFEROM.1

CHAIN C0AURA2J TREEOFLIFEROM.1
~嘻嘻……你什么都不用说，<CHARNAME>。没事……没事的。~
= ~我——呃……嗯，我没想到我们的大时刻偏偏会在这地方。我现在要对你说的话……我本留着等对的时候，可看来现在不说就永远没机会了，对吧？~
= ~从我们相识起，你就一直用一切把我拉着……你的一切。你那么勇敢、坚定、美丽……哪怕最艰难的时候，你仍跟往常一样坚强。~
= ~我一直钦佩你这一点。而最后我……完全爱上你，大概是不可避免的。我只是……不敢承认，因为像我这样又矮、又怯、又依赖别人的人……怎么配得上你？~
= ~可我不再在乎那些了。我们接下来要去的地方，我知道你需要我，所以我跟你去。也许我能活着再见家乡，也许不能……可没关系，只要我能多陪你一会儿。~
= ~所以……你不用再为我担心，<CHARNAME>。我不怕。只要你在，我再也不会害怕。我们去让你完整，之后……我们会有全世界的时间属于我们。~
COPY_TRANS PLAYER1 33

// Umar Hills

CHAIN IF WEIGHT #-1 ~Global("C0AuraUmarHills","GLOBAL",1)~ THEN C0AURA2J C0AURA-UMARHILLS
~我们能让这村子恢复些安宁，真好……既然它回到了该有的样子，我才能真正欣赏它多朴素可爱。~ [C0BLANK]
DO ~SetGlobal("C0AuraUmarHills","GLOBAL",2)~
= ~山和房屋的样式不同，可我在科祖库拉时感到的同一种田园气息。人也是……谦卑、勤劳，可也各有自己的故事。~
= ~*叹气* 这让我希望自己还在那儿，沿海走走，跟渔民待着……嘿，<CHARNAME>。你觉得钓鱼怎么样？我突然很想钓。~
END
  ++ ~你想去钓鱼？~ + C0AURA-UMARHILLS-1
  ++ ~当然，我喜欢钓鱼。~ + C0AURA-UMARHILLS-2
  ++ ~我不介意，可我从没钓过。~ + C0AURA-UMARHILLS-3
  ++ ~现在不行，奥拉。~ + C0AURA-UMARHILLS-0

CHAIN C0AURA2J C0AURA-UMARHILLS-0
~哦……好吧。真可惜。~
DO ~SetGlobal("C0AuraUmarHills","GLOBAL",-1)~ EXIT

CHAIN C0AURA2J C0AURA-UMARHILLS-1
~为什么不去？看那溪多平静安神。你不觉得不歇一歇、玩一会儿是浪费吗？~
END
  ++ ~你这么说的话，那就去。我们抓些鱼。~ + C0AURA-UMARHILLS-2
  ++ ~只有一个小问题……我从没试过钓鱼。~ + C0AURA-UMARHILLS-3
  ++ ~听着像浪费时间。我们走吧。~ + C0AURA-UMARHILLS-0

CHAIN C0AURA2J C0AURA-UMARHILLS-2
~好！我想我看见前面有个好地方……~
== WILSONJ IF ~InParty("WILSON")~ THEN ~低吼。~
== C0AURA2J IF ~InParty("WILSON")~ THEN ~哦，而且你不能跟我们一起去，熊先生！休想！~
== C0AURA2J ~我包里有对折叠钓竿，我们只要抓些鱼饵就齐了！~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([30.0],0)
Wait(2)
ActionOverride(Player1,JumpToPoint([3532.608]))
ActionOverride(Player1,Face(NWW))
JumpToPoint([3519.632])
Face(NWW)
MoveViewObject(Player1,INSTANT)
FadeFromColor([30.0],0)
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN C0AURA2J C0AURA-UMARHILLS-3
~哦，别担心。我几乎刚学走路就开始练钓鱼了，所以我能教你！~
== WILSONJ IF ~InParty("WILSON")~ THEN ~低吼。~
== C0AURA2J IF ~InParty("WILSON")~ THEN ~哦，而且你不能跟我们一起去，熊先生！休想！~
== C0AURA2J ~我有一对钓竿，只要找些鱼饵……~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([30.0],0)
Wait(2)
ActionOverride(Player1,JumpToPoint([3532.608]))
ActionOverride(Player1,Face(NWW))
JumpToPoint([3519.632])
Face(NWW)
MoveViewObject(Player1,INSTANT)
FadeFromColor([30.0],0)
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraUmarHills","GLOBAL",2)~ THEN C0AURA2J C0AURA-UMARHILLS2
~你看见它们了吗，<CHARNAME>？就顺着水流游？我想我们找不到更好的地方了。~ [C0BLANK]
END
IF ~See("MADULF") Global("OgreAlliance","GLOBAL",1)~ EXTERN UHOGRE01 C0AURA-UMARHILLS2-MADULF
IF ~OR(2) !See("MADULF") !Global("OgreAlliance","GLOBAL",1)~ EXTERN C0AURA2J C0AURA-UMARHILLS2-1

CHAIN C0AURA2J C0AURA-UMARHILLS2-1
~看看我们一起能抓多少！~
DO ~SetGlobal("C0AuraUmarHills","GLOBAL",3)~
END
  ++ ~我有个更好的主意。看看我们谁抓得多！~ + C0AURA-UMARHILLS2-2
  ++ ~嗯，我跟着你。你在这上头似乎更有经验。~ + C0AURA-UMARHILLS2-3
  ++ ~随便。至少吃饭不愁。快点弄完吧。~ + C0AURA-UMARHILLS2-4

CHAIN C0AURA2J C0AURA-UMARHILLS2-2
~哦，要这么来？嘿嘿，你最好别后悔。我在渔镇长大的，我赌我钓鱼的年头比你活的还长！~
EXTERN C0AURA2J C0AURA-UMARHILLS2-4

CHAIN C0AURA2J C0AURA-UMARHILLS2-3
~好，我先教你动作……然后就是等鱼上钩。主要靠耐心。还有一条有力的胳膊。~
EXTERN C0AURA2J C0AURA-UMARHILLS2-4

CHAIN C0AURA2J C0AURA-UMARHILLS2-4
~把饵挂上钩，抛出去，然后……来了！~
END
IF ~Global("C0AuraUmarHillsMadulfFish","GLOBAL",1)~ DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([30.0],0)
Wait(2)
ActionOverride("MADULF",JumpToPoint([3628.547]))
ActionOverride("MADULF",Face(SE))
FadeFromColor([30.0],0)
Wait(2)
StartDialogNoSet(Player1)~ EXIT
IF ~!Global("C0AuraUmarHillsMadulfFish","GLOBAL",1)~ DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([30.0],0)
Wait(2)
FadeFromColor([30.0],0)
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN UHOGRE01 C0AURA-UMARHILLS2-MADULF
~嗯。朋友<PRO_RACE>要抓鱼？也许……也许马杜夫能加入？马杜夫刚在跟同伴商量晚饭吃什么。~
END
  ++ ~当然可以。~ DO ~SetGlobal("C0AuraUmarHillsMadulfFish","GLOBAL",1)~ EXTERN UHOGRE01 C0AURA-UMARHILLS2-MADULF-1
  ++ ~自己找地方，马杜夫。~ EXTERN UHOGRE01 C0AURA-UMARHILLS2-MADULF-2

CHAIN UHOGRE01 C0AURA-UMARHILLS2-MADULF-1
~谢谢你，<PRO_RACE>。马杜夫去另一边钓。马杜夫不会给<PRO_RACE>或朋友添麻烦。~
EXTERN C0AURA2J C0AURA-UMARHILLS2-1

CHAIN UHOGRE01 C0AURA-UMARHILLS2-MADULF-2
~哦。那太可惜。马杜夫明白。你和朋友想单独待着。~
EXTERN C0AURA2J C0AURA-UMARHILLS2-1

CHAIN IF WEIGHT #-1 ~Global("C0AuraUmarHills","GLOBAL",3)~ THEN C0AURA2J C0AURA-UMARHILLS3
~第一条！一点没花多久。~ [C0BLANK]
DO ~SetGlobal("C0AuraUmarHills","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
Wait(1)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraUmarHills","GLOBAL",4)~ THEN C0AURA2J C0AURA-UMARHILLS4
~哦，这条漂亮。干得好，<CHARNAME>！~ [C0BLANK]
DO ~SetGlobal("C0AuraUmarHills","GLOBAL",5)
ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
Wait(1)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraUmarHills","GLOBAL",5)~ THEN C0AURA2J C0AURA-UMARHILLS5
~看看！我们抓得比我想的还多。照这速度，我们得放掉一些。带不了这么多。再说，会臭。~ [C0BLANK]
= ~哦！又有一条在咬。这条我来，看着！~
= ~哦，它挣得真厉害。我还是要逮到你……~
= ~天哪，这条真有力。我赌它很大。我不确定我能……呀！~
END
  ++ ~我来帮你！~ + C0AURA-UMARHILLS5-1
  ++ ~（什么也不做）~ + C0AURA-UMARHILLS5-2

CHAIN C0AURA2J C0AURA-UMARHILLS5-1
~哇……就算我们两个人！这一定是什么怪物……继续拉，<CHARNAME>！我们把它拖累！~
== UHOGRE01 IF ~Global("C0AuraUmarHillsMadulfFish","GLOBAL",1)~ THEN ~马杜夫帮忙！马杜夫跟<PRO_RACE>一起握竿！~
== C0AURA2J ~再一点点……来，来……好！收线，快！~
END
IF ~Global("C0AuraUmarHillsMadulfFish","GLOBAL",1)~ DO ~SetGlobal("C0AuraUmarHills","GLOBAL",6)
ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([20.0],0)
Wait(1)
ActionOverride("MADULF",JumpToPoint([3579.605]))
ActionOverride("MADULF",Face(W))
FadeFromColor([20.0],0)
Wait(1)
StartDialogNoSet(Player1)~ EXIT
IF ~!Global("C0AuraUmarHillsMadulfFish","GLOBAL",1)~ DO ~SetGlobal("C0AuraUmarHills","GLOBAL",6)
ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
Wait(1)
StartDialogNoSet(Player1)~ EXIT

CHAIN C0AURA2J C0AURA-UMARHILLS5-2
~哦不。哦不不不不不！呀——！~
DO ~SetGlobal("C0AuraUmarHills","GLOBAL",7)
ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
Wait(1)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraUmarHills","GLOBAL",6)~ THEN C0AURA2J C0AURA-UMARHILLS6
~看那个！真巨大！我没想到能抓到这种个头的。~ [C0BLANK]
DO ~GiveItemCreate("C0AFISH2",Player1,0,0,0) SetGlobal("C0AuraUmarHills","GLOBAL",8)~
= ~给，<CHARNAME>。你拿着。毕竟是我们一起抓的，你该得同样的功劳。再说，它很重。~
EXTERN C0AURA2J C0AURA-UMARHILLS8

CHAIN IF WEIGHT #-1 ~Global("C0AuraUmarHills","GLOBAL",7)~ THEN C0AURA2J C0AURA-UMARHILLS7
~嗯……那真尴尬。~ [C0BLANK]
DO ~SetGlobal("C0AuraUmarHills","GLOBAL",8)~
= ~它跑了……连我的竿一起。现在我还全身湿透。*叹气*~
END
  ++ ~看来你得练练肌肉。~ + C0AURA-UMARHILLS7-1
  ++ ~抱歉。我以为你抓住了。~ + C0AURA-UMARHILLS7-2
  ++ ~哈哈哈哈哈！~ + C0AURA-UMARHILLS7-3

CHAIN C0AURA2J C0AURA-UMARHILLS7-1
~看来是。该拿些哑铃出来了，我想……~
EXTERN C0AURA2J C0AURA-UMARHILLS8

CHAIN C0AURA2J C0AURA-UMARHILLS7-2
~我也真以为我抓住了。那本够我得意好几天的。算了……~
EXTERN C0AURA2J C0AURA-UMARHILLS8

CHAIN C0AURA2J C0AURA-UMARHILLS7-3
~哦，别笑！好像我还没被羞辱够似的……*撅嘴*~
EXTERN C0AURA2J C0AURA-UMARHILLS8

CHAIN C0AURA2J C0AURA-UMARHILLS8
~……嘿嘿。真有意思。我想不起上次有机会只是放松、开心玩是什么时候了……~
== UHOGRE01 IF ~Global("C0AuraUmarHillsMadulfFish","GLOBAL",1)~ THEN ~马杜夫也抓到不少大的。马杜夫想，马杜夫的朋友会很高兴。~
== C0AURA2J ~你觉得怎么样，<CHARNAME>？~
END
  ++ ~太好了。我们以后得再来。~ + C0AURA-UMARHILLS8-1
  ++ ~还行吧。~ + C0AURA-UMARHILLS8-2
  ++ ~我想我不喜欢钓鱼。可至少我们不愁吃。~ + C0AURA-UMARHILLS8-2

CHAIN C0AURA2J C0AURA-UMARHILLS8-1
~是，当然！若可以，我们把这当成常事吧。~
EXTERN C0AURA2J C0AURA-UMARHILLS8-2

CHAIN C0AURA2J C0AURA-UMARHILLS8-2
~谢谢你花时间陪我玩这个，<CHARNAME>。几乎就像我又跟家人在一起了。~
= ~可我们不能永远待在这儿，对吧？走吧。以后我们还有很多机会再来。~
END
IF ~Global("C0AuraUmarHillsMadulfFish","GLOBAL",1)~ DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([30.0],0)
Wait(2)
ActionOverride("MADULF",JumpToPoint([3288.721]))
ActionOverride("MADULF",Face(S))
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()~ EXIT
IF ~!Global("C0AuraUmarHillsMadulfFish","GLOBAL",1)~ DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([30.0],0)
Wait(2)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()~ EXIT

EXTEND_BOTTOM IMNBOOK1 0
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraBookMerchant","GLOBAL",0)~ DO ~SetGlobal("C0AuraBookMerchant","GLOBAL",1)~
EXTERN C0AURA2J C0AuraBookMerchant
END

CHAIN C0AURA2J C0AuraBookMerchant
~唉……我还真希望也能找到点新东西读。真可惜。~
== IMNBOOK1 ~同好藏书人，嗯？我这儿倒也留了些私人的读物，不过大多是更随意的类型。~
== IMNBOOK1 ~比如这本。《幸运的莉拉与翡翠溪》。“幸运的莉拉”童书系列第三卷，我猜源自兰坦。~
== C0AURA2J ~哦……啊，“幸运的莉拉”？那，呃，勾起回忆了，啊哈哈……~
== IMNBOOK1 ~其实这些书不比它们娱乐的小家伙们年长多少。据脚注，只连载不到二十年。著绘者是，呃，谁来着……？~
== C0AURA2J ~……“奥瑞莉亚·怀特”……~
== IMNBOOK1 ~啊，对。奥瑞莉亚·怀特，就是这名字。她的来历不多，据我所知。人们只知道她是兰坦作者。~
== C0AURA2J ~嗯，这，呃，没错。就连兰坦人也不怎么谈，呃，谈她。先生，你觉得“幸运的莉拉”怎么样？~
== IMNBOOK1 ~嗯，我有些同行会觉得这些读起来太幼稚，可老实说，我觉得它们朴素又迷人，很讨喜。那些故事、那些插图！那位画师真把灵魂放进了作品。~
== C0AURA2J ~呃，哈哈。谢——我是说，这真有意思。~
== IMNBOOK1 ~你知道，小人儿，你看着跟封面上的女主角没那么不同。至少头发几乎是同一种粉色。我猜你不是读着这些书长大的吧？~
== C0AURA2J ~那，嗯，大概是那么回事，我想？啊哈哈……不管怎样，这些故事我很熟。不过我现在一本都没带着。~
== IMNBOOK1 ~那么，就让我把这本书送给你作礼物。它们在孩子们中间很抢手，价钱不算什么，对我不算损失，我跟你保证。~
DO ~GiveItemCreate("c0abook4","c0aura",1,0,0)~
== C0AURA2J ~哦……谢谢你！哇，这真怀旧……~
== IMNBOOK1 ~一路保重，朋友们。~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraMimic","GLOBAL",1)~ THEN C0AURA2J AURA-MIMIC
~*嘟囔* 早该知道……蠢拟形怪，呃……上一只差点把我脑袋咬下来……啊，头发上全是胶……*咕哝*~
DO ~SetGlobal("C0AuraMimic","GLOBAL",2)~
EXIT

I_C_T UHKID03 2 C0AuraUHKID032
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*叹气* 我记得父母给我第一套工具时我多高兴。那时我大到不会割伤自己了。可刀剑和麦酒是不是太早了点？~
END

I_C_T JUGJER01 28 C0AuraJUGJER0128
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦不！他的护符在失效！请退后！~
END

I_C_T VALYGAR 4 C0AuraVALYGAR8
== C0AURA2J IF ~Global("hiredbycowled","GLOBAL",1) InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~所以他们才雇我们？我——我知道我们答应做法师们要求的事，可这就是不对！~
END

I_C_T VALYGAR 8 C0AuraVALYGAR8
== C0AURA2J IF ~Global("hiredbycowled","GLOBAL",1) InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~所以他们才雇我们？我——我知道我们答应做法师们要求的事，可这就是不对！~
END

I_C_T VALYGAR 12 C0AuraVALYGAR8
== C0AURA2J IF ~Global("hiredbycowled","GLOBAL",1) InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~所以他们才雇我们？我——我知道我们答应做法师们要求的事，可这就是不对！~
END

I_C_T2 UHINN01 25 C0AuraUHINN0125
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*嗅* 怪了，这墨闻着是新的……~
END

// Underdark

CHAIN IF WEIGHT #-1 ~Global("C0AuraImprisonmentDevice","GLOBAL",1)~ THEN C0AURA2J C0AURA-IMPRISONMENT
~嗯……这东西是什么？它含着惊人数量的奥术之力。<CHARNAME>，你在这儿等等，让我仔细看看。~ [C0BLANK]
DO ~SetGlobal("C0AuraImprisonmentDevice","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
MoveToPoint([1991.1991])
SmallWait(1)
Face(N)
Wait(1)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraImprisonmentDevice","GLOBAL",2)~ THEN C0AURA2J C0AURA-IMPRISONMENT-2
~嗯……这挺吓人。我若没弄错，<CHARNAME>，这是某种囚禁装置。非常强大、非常难的法术。而且，它似乎有某种潜在的魔法能量，意味着里面大概关着一个人……或者好几个人。~ [C0BLANK]
DO ~SetGlobal("C0AuraImprisonmentDevice","GLOBAL",3)~
END
  ++ ~有什么办法能放出被关着的人吗？囚禁是可怕的命运。~ + C0AURA-IMPRISONMENT-2-1
  ++ ~说到囚禁，我猜你是指某种魔法牢笼，而不是字面意义上里面塞着人。~ + C0AURA-IMPRISONMENT-2-2
  ++ ~这东西先别管。我们不能冒险乱碰魔法装置，放出危险的东西。~ + C0AURA-IMPRISONMENT-2-0

CHAIN C0AURA2J C0AURA-IMPRISONMENT-2-0
~也许你说得对……可惜我们没法带走它。若有机会，我想多研究它一阵。~
EXIT

CHAIN C0AURA2J C0AURA-IMPRISONMENT-2-1
~我同意。我想放他们出来够容易。这些面似乎设计成一碰就启动，大概会放出被囚的灵魂。~
EXTERN C0AURA2J C0AURA-IMPRISONMENT-2-3

CHAIN C0AURA2J C0AURA-IMPRISONMENT-2-2
~哦，没有某种魔法辅助，没人能在里面活下来。囚禁是可怕、可怕的魔法。好在，这东西似乎只要碰一下那些面，就能放出里面的人。~
EXTERN C0AURA2J C0AURA-IMPRISONMENT-2-3

CHAIN C0AURA2J C0AURA-IMPRISONMENT-2-3
~话虽如此，里面是什么生物就说不准了。而且若他们被关得够久，认知功能也许不那么……稳定。我想没人该被这样关着，可就算如此，放他们出来也不完全安全。~
= ~怎么做由你决定，<CHARNAME>。不过我细看之下，这装置这一侧有些有意思的刻痕……我想是某种符文。嗯……也许我抄到纸上能多懂一些。~
DO ~GiveItemCreate("scrl9s",Myself,1,0,0)~
= ~好了！现在我更能看懂了——是一段法术的咒文……我想是用卓尔语写的。好在我温习过语言，重要的部分我译出来了。也许有用，<CHARNAME>。~
== VICONIJ IF ~InParty("VICONIA") InMyArea("VICONIA")~ THEN ~你最好小心处理，<CHARNAME>。哪怕轻微误译——我完全预料会有——也可能造成灾难性后果。~
EXIT

I_C_T AERIEJ 146 C0AuraAERIEJ146
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~艾黎……没事的。你不是一个人，朋友们在这儿陪你面对。我们都害怕，可我们会挺过去，好吗？~
== AERIEJ ~你——你说得对，奥拉。我确定这对每个人都不容易，所以我得……保持冷静。可有大家在身边真的有用……真的。~
END

EXTEND_TOP UDSVIR01 2
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ + ~奥拉，你知道他们在说什么吗？~ EXTERN C0AURA2J C0AuraSvirfneblin
END

CHAIN C0AURA2J C0AuraSvirfneblin
~我不熟这种方言……可我想他们想知道我们的来意。我们该表明无害。~
EXTERN UDSVIR01 0

INTERJECT UDSILVER 9 C0AuraUDSILVER9
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~我这一生，我想从没见过比这更美的东西……~
EXTERN UDSILVER 58

INTERJECT UDPHAE01 61 C0AuraUDPHAE0161
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~你——你要我们屠杀我的地底亲——我是说，侏儒？这太邪恶了！~
EXTERN UDPHAE01 62

I_C_T UDTRAP06 1 C0AuraUDTRAP061
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~他看着那么年轻。我不敢信有人能残忍到把他关进那……东西里。~
END

I_C_T UDSILVER 34 C0AuraUDSILVER34
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呃，哇……这完全诡异。长高就是这种感觉吗？~
END

I_C_T UDDUER03 0 C0AuraUDDUER030
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦……那可不友善。我只听得懂几句地底通用语，可里面肯定有几个粗鲁的词。~
END

EXTEND_BOTTOM UDDROW07 9
IF ~IsValidForPartyDialogue("C0Aura")~ EXTERN C0AURA2J C0AuraMerinid
END

CHAIN C0AURA2J C0AuraMerinid
~“别扔”……等等，不对。是“别在草屋里藏王座”？我觉得我听过这个……~
EXTERN UDDROW07 11

I_C_T UDSVIR03 7 C0AuraUDSVIR037
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~你是我的同族，不管多疏远……光凭这一点我就愿意帮忙。~
END

I_C_T UDSVIR03 27 C0AuraUDSVIR0327
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~不。不！这太残暴了！我一点也不想参与！~
DO ~LeaveParty()
EscapeArea()~ END

I_C_T UDSOLA01 101 C0AuraUDSOLA01101
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~求你别让我们干这个，<CHARNAME>。也许我们把他送走，就能跟斯维尔夫内布林谈谈，找办法让他们安宁……值得一试……~
== UDSOLA01 ~你在那边嘀咕什么，雌性？我倒高兴赶紧把这烦人的任务了结，越快越好。~
END

INTERJECT UDSVIR08 0 C0AuraUDSVIR080
== C0AURA2J IF ~Global("SolaufeinJob","GLOBAL",7)
InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ood tera……daer'laa vas，亲——亲——我是说，深侏儒。你懂我们的话吗？我们为和平而来。~
EXTERN UDSVIR08 2

I_C_T2 UDSVIR08 1 C0AuraUDSVIR081
== C0AURA2J IF ~IsValidForPartyDialog("Jan")
Global("SolaufeinJob","GLOBAL",7)~ THEN ~我——我不敢信我们在干这个！这些……这些是我们正在杀的我的同族！~
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraUnderdarkBloodStuff","GLOBAL",1)~ THEN C0AURA2J C0AURA-UNDERDARK-BLOOD
~哦，想起来，<CHARNAME>……我们还有从幽暗地域怪物身上取的血，对吧？~ [C0BLANK]
DO ~SetGlobal("C0AuraUnderdarkBloodStuff","GLOBAL",2)~
= ~我想我们既已离开那地方，它对我们没多大用了，可……既然别的用不上了，也许我能拿它做点什么。这不会花太多时间……~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ABLOOD")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraUnderdarkBloodStuff","GLOBAL",2)~ THEN C0AURA2J C0AURA-UNDERDARK-BLOOD2
~好了。这些药水看着不太好看，我怀疑味道也不会好，可它们非常强。你肯定知道怎么用。~ [C0BLANK]
DO ~SetGlobal("C0AuraUnderdarkBloodStuff","GLOBAL",3)~
EXIT

// Unseeing Eye

INTERJECT GAAL 4 C0AuraGAAL4
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~一——一个眼魔？那当然是强大又有智慧的生灵，可神？~
EXTERN GAAL 9

// Waukeen's Promenade

CHAIN IF WEIGHT #-1 ~See("C0Aura")
InParty("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
RandomNum(2,1)
Global("C0AuraMurtlen","AR0700",0)~ THEN MURTLEN murtlen
~你！你在这儿被坑过吗？我赌你有！~
DO ~SetGlobal("C0AuraMurtlen","AR0700",1)~
== C0AURA2J ~我？嘿嘿，我一直以自己的眼力为傲，看得出好货色……呃，好货。我要不是这么忙，倒乐意给你上几课，教你怎么正确估价。~
EXIT

ADD_TRANS_TRIGGER KGENIE1 3 ~OR(3) !InParty("C0Aura") !InMyArea("C0Aura") StateCheck("C0Aura",CD_STATE_NOTVALID)~ DO 0 1 2 3 4 5

EXTEND_BOTTOM KGENIE1 3
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ + ~王子二十岁，公主三十岁。~ EXTERN C0AURA2J AURA-KALAH-GENIE-1
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ + ~王子四十岁，公主三十岁。~ EXTERN C0AURA2J AURA-KALAH-GENIE-1
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ + ~王子三十岁，公主四十岁。~ DO ~AddexperienceParty(19500)~ EXTERN C0AURA2J AURA-KALAH-GENIE-2
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ + ~王子三十岁，公主二十岁。~ EXTERN C0AURA2J AURA-KALAH-GENIE-1
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ + ~他们俩同岁。~ EXTERN C0AURA2J AURA-KALAH-GENIE-1
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ + ~我实在不知道。~ EXTERN C0AURA2J AURA-KALAH-GENIE-3
END

CHAIN C0AURA2J AURA-KALAH-GENIE-1
~不，等等，<CHARNAME>。王子该是三十岁，公主四十岁，对吧？~
DO ~AddexperienceParty(19500)~ EXTERN KGENIE1 7

CHAIN C0AURA2J AURA-KALAH-GENIE-2
~哦，干得好。这题可不容易解。~
EXTERN KGENIE1 7

CHAIN C0AURA2J AURA-KALAH-GENIE-3
~嗯，让我想想……我若没弄错，那王子该是三十，公主四十，对吧？~
DO ~AddexperienceParty(19500)~ EXTERN KGENIE1 7

I_C_T AERIE 27 C0AuraAERIE27
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~嗯……那就能解释很多了。这里一切都辐射着幻象魔法。可这种无法驱散、强大到让你的感官把幻象当真的幻象，不是谁能随便造出来的。~
END

I_C_T GERETH 2 C0AuraGERETH2
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呃，据我所知，没有哪个食谱要火蜥蜴粉……除非你想让你的孩子得一场非常、非常严重的烧心。~
== GERETH ~哼！那是个……秘方……对，就是这样。在我家族血脉里代代相传。秘到没别人听过。你不懂火蜥蜴粉的烹饪用法，一点也不奇怪。~
END

I_C_T KALAH2 4 C0AuraKALAH24
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~这——这怪物曾是我的同族？我不敢信……~
END

I_C_T SHOP08 0 C0AuraSHOP080
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~哦，这本不错。我猜你没有《伏罗魔法万物指南》吧？我那本旧书都快散架了。~
== SHOP08 ~那本书在本地当权者眼里不怎么受待见，小姐，可……呃，我想我也许存了一两本。我去后面找时，你想看看我别的书吗？~
END

I_C_T SCJERLIA 12 C0AuraSCJERLIA12
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~嗯……我不能说我喜欢这主意，可……我想不出别的办法弄到足够的真伊里锡姆，去满足那位自命不凡的画家。~
END

// WILSON!

I_C_T WILSON 0 C0AuraWILSON0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*发抖*~
== WILSON ~低吼。~
END

CHAIN IF WEIGHT #-1 ~IsGabber("C0Aura")~ THEN WILSON AURA-WILSON-NOPARTY
~低吼？~
== C0AURA2J ~呀！别过来！~
== WILSON ~低吼……~
DO ~ActionOverride("C0Aura",RunAwayFrom("WILSON",20))~ EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("Wilson")
Global("C0AuraWilsonConflict","GLOBAL",2)~ THEN C0AURA2J wilsonconflict
~当——当真？~
DO ~SetGlobal("C0AuraWilsonConflict","GLOBAL",3)
SetGlobalTimer("C0AuraWilsonRestTalkTimer","GLOBAL",ONE_DAY)~
= ~……不，<CHARNAME>。就是……不。~
END
++ ~什么？~ + wilsonconflict.1
++ ~我完全不知道你在说什么。~ + wilsonconflict.1
+ ~!Race(Player1,HALFLING)
!Race(Player1,DWARF)
!Race(Player1,GNOME)~ + ~你*为什么*躲在我腿后面？~ + wilsonconflict.1
+ ~OR(3)
Race(Player1,HALFLING)
Race(Player1,DWARF)
Race(Player1,GNOME)~ + ~你*为什么*躲在我后面？~ + wilsonconflict.1
++ ~是。真可惜。~ + wilsonconflict.1

CHAIN C0AURA2J wilsonconflict.1
~你不会真指望我跟他……跟*他*往同一个方向走！看看他！~
== WILSONJ ~呜？~
== C0AURA2J ~呃！别——别对我“呜”，不管那是什么意思！离——离我远点！~
END
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~哦。我忘了你怕熊怕得要命。~ + wilsonconflict.2
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~我看你那蠢恐惧症还在。~ + wilsonconflict.2
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~我看不出问题在哪儿……~ + wilsonconflict.3
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~解释一下怎么回事。现在。~ + wilsonconflict.3

CHAIN C0AURA2J wilsonconflict.2
~我不敢信你真让一头又大又响的*熊*加入我们，明知我恨那些丑东西！你是拿这当恶作剧吗？~
== WILSONJ ~……哼。吼。~
== C0AURA2J ~啊！看他的嘴。看他的*牙*！看他多生气！他在想怎么吃我，我知道！~
EXTERN WILSONJ wilsonconflict.4

CHAIN C0AURA2J wilsonconflict.3
~我——我恨熊！兰坦从没让我应付过这种可怕东西，可自从我离开，就到处都碰见，糟透了！现在你告诉我得跟一头称兄道弟？~
== WILSONJ ~呜？哼。~
== C0AURA2J ~呃！就看他的嘴！看那些大牙！看口水从他嘴唇往下滴！他在想怎么吃我，我知道！~
EXTERN WILSONJ wilsonconflict.4

CHAIN WILSONJ wilsonconflict.4
~嗅？吼。呜嗷！~
== C0AURA2J ~啊啊啊啊！我——我受不了了！把他弄走，趁他还没决定拿我当小点心！~
END
++ ~回家吧，奥拉。你显然完全不适合冒险。~ EXTERN C0AURA2J wilsonconflict.5
++ ~抱歉，我口才了得的朋友威尔森，可我真的、真的很需要奥拉。你得回树林去。~ EXTERN WILSONJ wilsonconflict.6

CHAIN C0AURA2J wilsonconflict.5
~真的？真的？~
= ~好，算了！我猜你更喜欢这头又大又肥又丑的……熊，胜过喜欢我！我收拾东西回家！~
== WILSONJ ~低吼。~
END
++ ~你……想让她留下？~ EXTERN WILSONJ wilsonconflict.5a
++ ~她想走，威尔森。~ EXTERN WILSONJ wilsonconflict.5a
++ ~我无所谓。你们快点决定。~ EXTERN WILSONJ wilsonconflict.5a

CHAIN WILSONJ wilsonconflict.5a
~嗅嗅。吼。~
== C0AURA2J ~……~
== WILSONJ ~……~
== C0AURA2J ~你——你发誓我睡觉时不会咬我脚趾？~
== WILSONJ ~吼。~
== C0AURA2J ~你不会舔我脸？~
== WILSONJ ~哼。~
== C0AURA2J ~你不会吃我头发？~
== WILSONJ ~咳咳。*干呕声*~
== C0AURA2J ~……~
== C0AURA2J ~好，算了。只是任何时候都跟我保持十尺距离。我分不清你跟一头不友善的熊。~
END
++ ~谢天谢地，解决了。~ EXTERN C0AURA2J wilsonconflict.7
++ ~你们俩能不能别再浪费我时间？~ EXTERN C0AURA2J wilsonconflict.7

CHAIN WILSONJ wilsonconflict.6
~呜？！吼……~
== C0AURA2J ~哦，那真松了口气。有一刻我以为你真会为一头熊把我甩了。~
== WILSONJ ~嗅嗅……~
== C0AURA2J ~别那样看我，我不会要你的！~
== WILSONJ ~吼？嗅。~
== C0AURA2J ~呃！快走开！~
== WILSONJ ~……嗅。~
== C0AURA2J ~……~
== WILSONJ ~……~
== C0AURA2J ~螺——螺母和螺栓！我不敢信一头熊能做出这种小狗眼！好吧，走的时候别靠我太近！~
END
++ ~谢天谢地，解决了。~ EXTERN C0AURA2J wilsonconflict.7
++ ~你们俩能不能别再浪费我时间？~ EXTERN C0AURA2J wilsonconflict.7

CHAIN C0AURA2J wilsonconflict.7
~穆菲若被吃掉，我——我会找你算账，<CHARNAME>！~
== WILSONJ ~低吼。~
EXIT

// WINDSPEAR HILLS

CHAIN IF WEIGHT #-1 ~Global("C0AuraOrcishCookbook","GLOBAL",1)~ THEN C0AURA2J wilsonconflict
~呃！我想我从没这么庆幸自己是吃素的。~
DO ~SetGlobal("C0AuraOrcishCookbook","GLOBAL",2)~
EXIT

I_C_T FIRWLF01 0 C0AuraFIRWLF01
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~呼！这儿闻着像湿狗。~
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraPerfectSunshooter","GLOBAL",1)~ THEN C0AURA2J C0AuraSunshooter
~好了。过了这么久，终于完成了……完美的太阳射手。我从没想过能看到这一天。~ [C0BLANK]
DO ~SetGlobal("C0AuraPerfectSunshooter","GLOBAL",2)~
== C0AURA2J ~我觉得自己该更高兴些，可我满脑子想的都是，我们打了多少仗才逼我把这个做完。我感到愧疚。既为我把这张弓经历的一切，也为我没能像它应得的那样欣赏它。~
END
  ++ ~真美。你该为自己造出的东西骄傲。~ + C0AuraSunshooter-1
  ++ ~武器怎么用，由持用者决定。只要你知道什么是对的，就不该为带着这张弓羞耻。~ + C0AuraSunshooter-2
  ++ ~既然这意味着你更有用，我就满意了。~ + C0AuraSunshooter-0

CHAIN C0AURA2J C0AuraSunshooter-0
~是，我想我也该满意。走吧，<CHARNAME>。我该尽快试一试。~
EXIT

CHAIN C0AURA2J C0AuraSunshooter-1
~我是。这是第一件我亲手参与制造的武器，到如今，它从没离开过我身边。~
EXTERN C0AURA2J C0AuraSunshooter-3

CHAIN C0AURA2J C0AuraSunshooter-2
~我不羞耻。我知道我们走的路，是我们能做到的最好。我也不会为这张弓羞耻。它为我做了这么多之后，不会。~
EXTERN C0AURA2J C0AuraSunshooter-3

CHAIN C0AURA2J C0AuraSunshooter-3
~我只是想起戴达罗斯叔叔第一次给我看成品的那天……那时我多天真，连它沾满血的样子都想象不出。~
= ~奇怪的是，尽管我知道会用它打我不喜欢的仗，我从没想过有一天我会真的放下它。如今它像我的伙伴……所以我才努力把它做到最好。~
= ~虽然我不兴奋，可我……还是高兴。若这意味着我能为你做更多，那我成功就是好事。也许这正是我当初想把它做到完美的全部理由。~
= ~我觉得完美太阳射手的诞生，你也该记一功，你不觉得吗，<CHARNAME>？嘿嘿。~
EXIT