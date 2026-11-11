CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L0Will",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL0Will1","GLOBAL",0)~ THEN L0WILLB C0AuraWill1
~奥拉，看我时请别那样使劲眯眼。说实话，那让我有点不自在。~ [C0BLANK]
DO ~SetGlobal("C0AuraL0Will1","GLOBAL",1)~
== BC0AURA2 ~哦！对不起，那有点无礼，是吧？我只是从没有过一位能让我看穿的同伴。~
== L0WILLB ~说得对。我想我这样已经够久了，久到忘了这有多不寻常。~
== BC0AURA2 ~嘻嘻。你一点也不奇怪，威尔。等我习惯了你没有影子、不用呼吸进食这件事之后，你身上就没什么古怪的了。你不觉得自己跟还活着的时候有什么两样吧？~
== L0WILLB ~不，没有那么严重。要说，我操心的事确实少了，可我依然记得、也依然爱着我生前所爱的一切。这就够了。~
== BC0AURA2 ~我提过没有，我平常其实怕鬼怕得要命？不过不是你。我不觉得你可怕。~
== L0WILLB ~谢谢。~
EXIT

CHAIN
IF ~InParty("L0Will")
Range("L0Will",15)
!StateCheck("L0Will",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL0Will1","GLOBAL",1)~ THEN BC0AURA2 C0AuraWill1
~威尔，我有个问题想问你……一个魂灵怎么知道什么时候该走了？~ [C0BLANK]
DO ~SetGlobal("C0AuraL0Will1","GLOBAL",2)~
== L0WILLB ~我觉得我不是回答这个问题最合适的人，奥拉。我还没感到那种往生后的召引。~
== BC0AURA2 ~哦，我明白了……所以那就是说，并没有什么东西强行把你留在此地。没有挥之不去的悔恨，也没有未了的愿望？~
== L0WILLB ~凡有生命者——不过我大概只是比喻意义上的“活”——都会有悔恨，奥拉。可我不是亡魂，也不是任何靠蛮力把自己留在这个位面的存在。我想正因如此，我才没有发疯，也没有变成怪物。~
== BC0AURA2 ~这……其实很说得通。可不知道自己什么时候才能最终安息，这不奇怪吗？~
== L0WILLB ~也许有一点。可我知道我的时限总会到。在那之前，我很高兴与朋友为伴；而这样的状态让我能尽力帮忙，能帮多久就帮多久。~
EXIT

CHAIN
IF ~InParty("L0Will")
Range("L0Will",15)
!StateCheck("L0Will",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL0WillToB","GLOBAL",0)~ THEN BC0AUR25 C0AuraWillToB
~这一切结束后，你会回到自己的坟里去，对吧，威尔？~ [C0BLANK]
DO ~SetGlobal("C0AuraL0WillToB","GLOBAL",1)~
== L0WIL25B ~我会再游荡一阵，不过最终我会回去。我还能去哪儿？~
== BC0AUR25 ~可是……有没有可能它再也维持不了你？你已经与<CHARNAME>的位面相绑，所以……~
== L0WIL25B ~哦，可我没说我要回去维持自己的存在。我觉得跟你们同行，我已经做成了一件要紧的事。若非要就此安息，现在也跟任何时候一样合适。~
== BC0AUR25 ~也许……那样最好……可我还是会想念你。~
== L0WIL25B ~也许，要是我还记得这一切，无论下一站到哪儿……我也会想念你。~
== BC0AUR25 ~那条路我还记得……等有机会，我会为你种些彼岸花。算是供奉……也好让后来找到你的人知道，这里安息着一位好友，一个温柔的魂灵。~
== L0WIL25B ~那就多谢了。~
EXIT