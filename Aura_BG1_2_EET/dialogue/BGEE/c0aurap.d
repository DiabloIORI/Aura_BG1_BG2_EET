BEGIN C0AURAP

// Quest

IF ~Global("C0AuraQuest","GLOBAL",7)~ quest
SAY ~<CHARNAME>？你——你来找我了？~
++ ~我不能让你一个人去送死。~ + quest.1
++ ~我当然来了。这是我作为队长的责任。~ + quest.1
++ ~我来看看你究竟打算怎么应付你这个敌人。~ + quest.1
END

IF ~~ quest.1
SAY ~我——不，别过来！别再靠近！~
++ ~什么——~ + quest.2
++ ~别怕——~ + quest.2
++ ~好吧——~ + quest.2
END

IF ~~ quest.2
SAY ~你不明白……退后几步……我马上解释——~
IF ~~ DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut_1")~ EXIT
END

IF ~OR(2)
HappinessLT(Myself,-299)
GlobalGT("C0AuraInsulted","GLOBAL",1)~ THEN BEGIN unhappy
SAY ~你跟他一样坏。我希望我们再也别见。~
IF ~~ DO ~EscapeArea() ActionOverride("C0AUIN3",EscapeArea())~ EXIT
END

IF ~!Dead("C0Saito") Global("%KICKED_OUT%","LOCALS",0)~ THEN BEGIN kicked.1
SAY ~哦，拜托，真的？一个姑娘家独自能做什么？好吧，你要是改主意……我就回友善之臂旅店。宾利叔叔要是有空房，会免费租给我。~
++ ~那就走吧。我再需要你时，会去那儿找你。~ + kicked.2
++ ~先待在这儿吧。我回来接你。~ + kicked.0
++ ~其实，我改主意了。~ + kicked.3
END

IF ~~ kicked.0
SAY ~既然你这么说。~
IF ~~ DO ~LeaveParty() SetGlobal("%KICKED_OUT%","LOCALS",1) ActionOverride("C0AUIN3",MoveGlobalObject(Myself,"C0Aura"))~ EXIT
END

IF ~~ kicked.2
SAY ~好。那就回头见吧。~
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) LeaveParty() EscapeAreaMove("%bg1_eet_symbol%2301",664,960,E) ActionOverride("c0auin3",EscapeAreaMove("%bg1_eet_symbol%2301",621,921,SE))~ EXIT
END

IF ~~ kicked.3
SAY ~哦？好，我没意见。~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~Dead("C0Saito") Global("%KICKED_OUT%","LOCALS",0)~ THEN BEGIN kicked.4
SAY ~哎，你确定？你帮过我，我还欠你一份情，可要是不受欢迎，我也没什么好争的。听着，要是你哪天还需要我帮忙，我就在友善之臂旅店。需要我就来一趟。~
+ ~!PartyHasItem("c0ausw01")~ + ~好。那就那儿见，奥拉。~ + kicked.2
+ ~PartyHasItem("c0ausw01")~ + ~好。那就那儿见，奥拉。~ + kicked.5
+ ~!PartyHasItem("c0ausw01")~ + ~先待在这儿吧。我回来接你。~ + kicked.0
+ ~PartyHasItem("c0ausw01")~ + ~先待在这儿吧。我回来接你。~ + kicked.6
++ ~算了。留在队里吧。~ + kicked.3
END

IF ~~ kicked.5
SAY ~不过还有那把剑的事。我要把它带走。抱歉，我不能再让它落到别人手里第二次，即使是你……总之，回头见。~
IF ~~ DO ~TakePartyItem("c0ausw01") LeaveParty() SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%bg1_eet_symbol%2301",664,960,E) ActionOverride("c0auin3",EscapeAreaMove("%bg1_eet_symbol%2301",621,921,SE))~ EXIT
END

IF ~~ kicked.6
SAY ~不过还有那把剑的事。我要把它带走。抱歉，我不能再让它落到别人手里第二次，即使是你……~
IF ~~ DO ~TakePartyItem("c0ausw01") LeaveParty() SetGlobal("%KICKED_OUT%","LOCALS",1) ActionOverride("C0AUIN3",MoveGlobalObject(Myself,"C0Aura"))~ EXIT
END

// Re-recruiting

IF ~Global("%KICKED_OUT%","LOCALS",1)~ rejoin
SAY ~嘿，你好！我正盼着你来呢，<CHARNAME>。也许你想看看我现在在做的东西……？其实，算了。现在还太粗糙。最好留个惊喜。~
IF ~~ + rejoin.0
END

IF ~~ rejoin.0
SAY ~总之，有什么事我能帮你？~
++ ~你能帮我做些药水吗？~ + potions
+ ~PartyHasItem("c0agem1")~ + ~我想请你看看这块水晶。~ + crystal
++ ~你愿意再跟我一起走吗，奥拉？~ + rejoin.1
++ ~没什么。我这就走了。~ EXIT
END

IF ~~ rejoin.1
SAY ~没问题！给我一秒……穆菲？嘿，你以为你要去哪……哈，抓住你了！来，别闹了，该走了！~
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ potions
SAY ~当然！给我一会儿准备炼金器具。~
IF ~~ DO ~ReallyForceSpellRES("c0aualc",Myself)~ EXIT
END

IF ~~ crystal
SAY ~哦，有意思！它表面简直在往外冒魔法……给我一会儿检查检查。~
IF ~~ DO ~SetGlobal("C0AuraCrystal","GLOBAL",1)
TakePartyItem("c0agem1") DestroyItem("c0agem1") GiveItemCreate("c0autt02",Player1,1,0,0)
ClearAllActions() StartCutsceneMode() StartCutscene("c0aufade")~ EXIT
END

IF WEIGHT #-1 ~Global("C0AuraCrystal","GLOBAL",1)~ THEN BEGIN crystal2
SAY ~我对你找到的那块冰晶做了些实验，结果跟我研究过的异界力量对得上。~
= ~你找到的那块水晶是冰之精粹，来自冰元素侧界。我不确定它怎么到了这个位面，不过大概跟影响那座冰岛的魔法有关。~
= ~不过它本身没什么用。要是手头有材料，我真想用它做出更有意思的东西，可我只能凭现有的东西拼出这个。给，拿着。~
IF ~~ DO ~SetGlobal("C0AuraCrystal","GLOBAL",2)~ + rejoin.0
END