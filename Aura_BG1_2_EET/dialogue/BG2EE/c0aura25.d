
APPEND C0AURA25

IF ~Global("C0AuraSummoned","GLOBAL",1)~ AURA-TOB-JOIN
SAY ~哇——哇——哇！不是我干的……等等……不，不是我。那是——哦。嘿，<CHARNAME>。~
+ ~Global("C0AuraRomanceActive","GLOBAL",2)~ + ~嗨，奥拉。~ DO ~SetGlobal("C0AuraSummoned","GLOBAL",2)~ + AURA-TOB-JOIN-ROM
+ ~!Global("C0AuraRomanceActive","GLOBAL",2)~ + ~嗨，奥拉。~ DO ~SetGlobal("C0AuraSummoned","GLOBAL",2)~ + AURA-TOB-JOIN-1
++ ~你见到我好像不太惊讶。~ DO ~SetGlobal("C0AuraSummoned","GLOBAL",2)~ + AURA-TOB-JOIN-2
++ ~冷静点。是我把你召来的。~ DO ~SetGlobal("C0AuraSummoned","GLOBAL",2)~ + AURA-TOB-JOIN-3
END

IF ~~ AURA-TOB-JOIN-ROM
SAY ~你把我丢下可不够意思，你知道的。你知道我有多担心吗？就像……算了。别再这样了。~
IF ~~ + AURA-TOB-JOIN-4
END

IF ~~ AURA-TOB-JOIN-1
SAY ~我们有不少事要聊，是吧？~
IF ~~ + AURA-TOB-JOIN-4
END

IF ~~ AURA-TOB-JOIN-2
SAY ~嗯，你知道……干我这行的，得随时准备好应对意外。再说，现在我都不确定还有什么能让我惊讶了。~
IF ~~ + AURA-TOB-JOIN-4
END

IF ~~ AURA-TOB-JOIN-3
SAY ~我想也是。大概这就是巴尔之子那点神力的一部分吧？~
IF ~~ + AURA-TOB-JOIN-4
END

IF ~~ AURA-TOB-JOIN-4
SAY ~总之，怎么了？你需要帮手吗？我听说你那边挺乱的。~
++ ~你到底听说了什么？~ + AURA-TOB-JOIN-5
+ ~!Global("C0AuraRomanceActive","GLOBAL",2)~ + ~我需要你帮忙，奥拉。你愿意加入我吗？~ + AURA-TOB-JOIN-6
+ ~Global("C0AuraRomanceActive","GLOBAL",2)~ + ~我需要你帮忙，奥拉。你愿意加入我吗？~ + AURA-TOB-JOIN-ROM-2
++ ~就在这儿等着。需要你时我会叫你。~ + AURA-TOB-JOIN-7
END

IF ~~ AURA-TOB-JOIN-5
SAY ~哦，你知道的……什么巴尔之子之间的战争、预言应验、我们所知的世界末日……至少有些人这么说。~
= ~有时候这些我真有点吃不消。毕竟我只是个兰坦来的普通发明家。话虽如此，你要是需要我……嗯，我很乐意帮忙把这团乱局了结。~
+ ~!Global("C0AuraRomanceActive","GLOBAL",2)~ + ~那就加入我，我们一起了结它。~ + AURA-TOB-JOIN-6
+ ~Global("C0AuraRomanceActive","GLOBAL",2)~ + ~那就加入我，我们一起了结它。~ + AURA-TOB-JOIN-ROM-2
++ ~先在这儿等一会儿。我需要你时会回来。~ + AURA-TOB-JOIN-7
END

IF ~~ AURA-TOB-JOIN-6
SAY ~当然！我不确定像我这样一个小侏儒能对付我们要面对的东西多少，可我会尽全力帮你！~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ AURA-TOB-JOIN-ROM-2
SAY ~你连问都不用问。我最想待的地方就是这儿，<CHARNAME>。走吧！~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ AURA-TOB-JOIN-7
SAY ~你要我在这阴森森的地方等着？嗯——好吧……我想我就坐在这儿鼓捣东西，等你来接我。我在哪儿都能干活。~
IF ~~ DO ~MoveToPointNoInterrupt([2307.1171]) Face(0)~ EXIT
END

IF ~Global("C0AuraSummoned","GLOBAL",2)~ AURA-TOB-JOIN-ME
SAY ~哦，你回来了！这是说要收拾东西走了？~
++ ~是的。~ + AURA-TOB-JOIN-ME-1
++ ~还没有。~ + AURA-TOB-JOIN-ME-2
END 

IF ~~ AURA-TOB-JOIN-ME-1
SAY ~好！我就跟在你后面。~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ AURA-TOB-JOIN-ME-2
SAY ~哎，好吧。~
IF ~~ EXIT
END

END

APPEND C0AUR25P

IF ~!Global("C0AuraRomanceActive","GLOBAL",2) Global("KickedOut","LOCALS",0)~ AURA-TOB-KICKED
SAY ~嘿，你确定不再需要我了？我还是很想尽力帮忙。~
++ ~是我弄错了。求你，别走。~ DO ~JoinParty()~ EXIT
+ ~AreaCheck("AR4500")~ + ~就在这儿等一会儿。~ DO ~SetGlobal("KickedOut","LOCALS",1) MoveToPointNoInterrupt([2307.1171]) Face(0)~ + AURA-TOB-KICKED-1
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~我送你回位面口袋……在那儿等我。~ DO ~SetGlobal("KickedOut","LOCALS",1)
CreateVisualEffectObject("spdimndr",Myself)
CreateVisualEffectObject("spdimndr","c0auin3")
Wait(2)
MoveBetweenAreas("AR4500",[2307.1171],0)
ActionOverride("C0AUIN3",MoveBetweenAreas("AR4500",[2327.1151],0))~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~就在这儿等一会儿。~ DO ~SetGlobal("KickedOut","LOCALS",1)~ + AURA-TOB-KICKED-1
END

IF ~Global("C0AuraRomanceActive","GLOBAL",2) Global("KickedOut","LOCALS",0)~ AURA-TOB-KICKED
SAY ~啊……你知道除非你觉得那样才对，我绝不会离开你，<CHARNAME>，所以我会等你，等你回来接我……你会回来的，是吧？~
++ ~我说错了。我最想让你待的地方就是这儿。~ DO ~JoinParty()~ EXIT
+ ~AreaCheck("AR4500")~ + ~我当然会。就在这儿等我。~ DO ~SetGlobal("KickedOut","LOCALS",1) MoveToPointNoInterrupt([2307.1171]) Face(0)~ + AURA-TOB-KICKED-1
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~我送你回位面口袋……在那儿等我。~ DO ~SetGlobal("KickedOut","LOCALS",1)
CreateVisualEffectObject("spdimndr",Myself)
CreateVisualEffectObject("spdimndr","c0auin3")
Wait(2)
MoveBetweenAreas("AR4500",[2307.1171],0)
ActionOverride("C0AUIN3",MoveBetweenAreas("AR4500",[2327.1151],0))~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~我当然会。就在这儿等我。~ DO ~SetGlobal("KickedOut","LOCALS",1)~ + AURA-TOB-KICKED-1
END

IF ~~ AURA-TOB-KICKED-1
SAY ~好……我不喜欢干坐着，可你既然确定……你回来时我还会在这儿。~
IF ~~ EXIT
END

IF ~Global("KickedOut","LOCALS",1)~ AURA-TOB-REJOIN
SAY ~怎么样？我猜你不需要帮手？或者来个机巧玩意儿？~ [AURAf]
++ ~我看两样都来点吧。加入我，奥拉。~ DO ~JoinParty()~ EXIT
++ ~再等一会儿。~ + AURA-TOB-REJOIN-1
END 

IF ~~ AURA-TOB-REJOIN-1
SAY ~哎，好吧……~
IF ~~ EXIT
END

END