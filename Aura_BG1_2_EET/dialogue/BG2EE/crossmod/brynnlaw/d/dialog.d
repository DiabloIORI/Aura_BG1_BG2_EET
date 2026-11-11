I_C_T O#ROSLIN 14 C0AuraBackBrynnlaw1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~又要出海？而且还是回到那座可怕的收容所？唉……都跑了这么多趟了，再多一趟又算什么？再说，到这份上，我经历过的比这糟多了。~
END

I_C_T O#SION 6 C0AuraBackBrynnlaw2
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~这故事我好像听过……在哪儿来着？哦，对了！我祖母那本书里，讲北方的。~
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraImoenCrossmodBrynnlaw","GLOBAL",1)~ THEN BC0AURA2 C0AuraImoenSpellhold
~爱蒙？~ [C0BLANK]
DO ~SetGlobal("C0AuraImoenCrossmodBrynnlaw","GLOBAL",2)~
== BIMOEN2 ~嗯？怎么了？~
== BC0AURA2 ~要不要抱一下？~
== BIMOEN2 ~哎哟，你在担心我。真贴心，不过我会没事的。不过要是你也让我捏捏你的脸，我可能会要一个抱抱……~
== BC0AURA2 ~得了，说正经的。~
== BIMOEN2 ~好，好。~
== BIMOEN2 ~我不会硬撑着说这不疼。这真的很糟，我不装。不过我原以为会更难熬——我怕我一踏进这里，两条腿就会软掉。~
== BIMOEN2 ~我想我已经习惯受苦了。至少这回不用独自面对。这一次，身边有朋友，我也知道自己来这里是为了做对的事。~
== BC0AURA2 ~只要你不是在硬撑就好。要是我觉得你把痛藏在笑容后头，爱蒙，我就让你坐下，坐到我认定你没事为止。~
== BIMOEN2 ~哎哟，这话够狠。有时候我还真想念你那副怯生生、好欺负的样子。不过你这一面也挺可爱的。~
== BC0AURA2 ~嘻嘻……~
== BIMOEN2 ~抱抱先欠着吧。等我们从这儿出去，我才觉得自己挣到了它。不过你的手我先握一会儿。~
== BC0AURA2 ~当然。~
EXIT
