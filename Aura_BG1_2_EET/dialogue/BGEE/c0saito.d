BEGIN C0SAITO

CHAIN IF ~Global("C0AuraQuest","GLOBAL",7)~ THEN C0SAITO saito
~……~
== C0AURAP ~斋——斋藤……先生。~
DO ~SetGlobal("C0AuraQuest","GLOBAL",8)~
== C0SAITO ~……~
== C0AURAP ~好久……不见了，是吧？~
== C0SAITO ~近卫。要是我早知道你有胆来面对我，我就不会牺牲那么多部下去抓你。~
== C0AURAP ~不……我一向就是个懦夫。可我不能让我的朋友为我的怯懦付出代价。~
== C0SAITO ~当然。这一定就是你宣誓效忠的外夷。<CHARNAME>，烛堡的……要是我没弄错。~
END
++ ~你知道我的名字？~ + saito.1
++ ~不必管我。我只是来看着事情怎么演。~ + saito.1
++ ~那么一直想杀我们的人就是你。~ + saito.1

CHAIN C0SAITO saito.1
~我对你已了解得够多，足以认你是个值得对付的威胁。外夷的事本与我无关，可我有好几个部下死在你手上，这等冒犯不易宽恕。~
= ~不过……近卫选择独自来见我，好让你不受伤害，而我的荣誉要求我收刀……只要你不给我拔刀的理由。为了你自己，我希望你珍惜性命，退到一旁。近卫与我的仇怨，与你无关。~
END
++ ~你威胁了奥拉。这就足够让它与我有关。~ + saito.2
++ ~你派了刺客之后，这话就太空了。~ + saito.2
++ ~知道了。那我就站在这儿听着，是吧？~ + saito.2
++ ~我不在乎你们的仇怨，可你试图杀我，这账你得付。~ + saito.2

CHAIN C0SAITO saito.2
~近卫无疑把我描画成无情的杀手。我不否认——我刀上沾的血，远比你能想象的更多。~
= ~可你不是武士，无权评判我，我也不会向一个不懂武者荣誉的外夷解释自己。~
== C0AURAP ~什么荣誉，斋藤先生？那道让你背弃“道”的荣誉？那道让你拔刀砍倒丽花小姐的荣誉？~
== C0SAITO ~你以为丽花大人真是无辜之人？你何其狂妄，被无知蒙了眼还自以为站在正理一边。~
== C0AURAP ~什——什么？你对丽花小姐知道些什么？~
== C0SAITO ~哼。果然，丽花大人什么都没对你说实话。也罢。那我就来点醒你。~
== C0SAITO ~很久以前，天镜丽花走的与我同一条路。可当我们主君最需要她时，她把“道”置于效忠之誓之上。主君亡后，她抛弃武者的骄傲，像懦夫一样逃走。~
== C0SAITO ~就连我以她本人和她最珍视之物相胁，她也拒绝向我举刀。她自愿献出性命，却也因此在我灵魂上下了恶咒。只要她的力量尚存，我便不能在家乡的土上以刀行凶。~
== C0AURAP ~你——你在撒谎……你说的不可能……~
== C0SAITO ~没有主君的武士，不过是一把待售的刀。连这个都没有，他……就什么都不是。正因如此，我才走在这片肮脏的异邦土地上，而我的仆从仍在科祖库拉继续对诸神的战争。唯有丽花大人残余的力量——就封在你戴的那枚勾玉里——能解我们的咒。~
== C0AURAP ~丽花小姐的勾玉……？~
== C0SAITO ~不错。把它给我，我以荣誉起誓，我会回科祖库拉继续我的战争，你再也见不到我。~
== C0AURAP ~不！我不能给你。~
== C0SAITO ~别犯傻，近卫。你记得我说过的话吗？我不能在家乡的土上举刀。在这远离科祖库拉的地方，咒缚管不住我。你若不交出勾玉，我就砍倒你，从你尸身上取走。~
== C0AURAP ~就算要我的命，我也不能。你会解掉束缚，继续你的屠杀。丽花小姐绝不会允许！~
== C0SAITO ~……~
== C0SAITO ~那就如此吧。我很遗憾事必如此，但我不会退让。拔出你的武器。~
== C0AURAP ~住手……斋藤先生，别再往前一步。别逼我动手……求你。~
== C0SAITO ~你竟敢威胁我，近卫？也许你以为身边这些人能与我的家臣匹敌，可他们会为这个与你站在一起吗？~
DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("c0acut_2")~ EXIT
	  
CHAIN IF ~Global("C0AuraQuest","GLOBAL",8)~ THEN C0SAITO saito2
~你还想冲突吗？如你所见，我准备周全。在这异邦多流些外夷的血，我并不以为耻，但我知道你宁愿少死人。~
DO ~SetGlobal("C0AuraQuest","GLOBAL",9)~
== C0AURAP ~我……我——~
END
++ ~不。别听他的，奥拉。这一战我们能赢。~ EXTERN C0AURAP saito2.1
++ ~你以为人多就够？你不知道自己在跟谁打交道。~ EXTERN C0AURAP saito2.1
++ ~这些我都不在乎，可没人威胁了我还能全身而退。该死了。~ EXTERN C0AURAP saito2.1

CHAIN C0AURAP saito2.1
~对不起，斋藤先生……我看真的没有别的办法了……~
== C0AURAP ~……起源，烈火，涤净。炽炎爆！~
DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("c0acut_4")~ EXIT

CHAIN IF ~Global("C0AuraQuest","GLOBAL",9)~ THEN C0SAITO saito3
~我明白了……你为我布下这华丽的陷阱。真是了不起，近卫……我完全没料到。这一定就是你们这族人引以为傲的武器……用你们的话叫什么？“烟粉”？~
== C0AURAP ~没错。你已经见过了，斋藤先生……第一次，也是最后一次。~
== C0SAITO ~可你低估了我。如你所见，我还活得好好的。你只有这一次机会……而你失手了。~
== C0AURAP ~不……还不是时候。<CHARNAME>还站在我身边。我要相信<PRO_HIMHER>。斋藤先生……对不起。该结束这一切了。~
== C0SAITO ~很好。我斋藤忠桥在战阵上从未尝过败绩。手持此刀，我刀锋所向，几近无敌。来吧，蠢货们，有胆就来面对我。~
DO ~ActionOverride("C0Aura",JoinParty())
ActionOverride("C0Aura",SetGlobal("%KICKED_OUT%","LOCALS",0))
ActionOverride("cutspy",DestroySelf())
Enemy()
ActionOverride("c0aukagu",Enemy())
ActionOverride("c0auayak",Enemy())
ActionOverride("c0aumizu",Enemy())
ActionOverride("c0aukuon",Enemy())~ EXIT