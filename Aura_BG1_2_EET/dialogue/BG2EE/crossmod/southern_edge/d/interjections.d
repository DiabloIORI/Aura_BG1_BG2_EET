I_C_T L#NDAMA 12 C0AuraL#NDAMA12
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~我很高兴你能帮她，<CHARNAME>。这不只是施舍……这是救了两条命。想到有人得这样活着，就叫人难受。~
END

I_C_T2 L#NDANT 0 C0AuraL#NDANT0
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~哇！这才叫个头不寻常的啮齿类！~
END

I_C_T L#NDCAT 0 C0AuraL#NDCAT0
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~哦，小猫！过来，小猫！~
== L#NDCAT ~*嗅嗅* 这一位闻着像是养猫的。对，我想我喜欢她。喵。~
== C0AURA2J ~*拍拍*~
== L#NDCAT ~哦，真好……左边耳朵后头，就挠那儿……*呼噜*~
== C0AURA2J ~别管我，<CHARNAME>。你刚才不是要说什么吗？~
== L#NDCAT ~是，你说吧，<PRO_RACE>……喵。~
END

I_C_T L#NDMAI 4 C0AuraL#NDMAI4
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~靠文字活着的寄生虫？那就是噩梦里的东西……~
END

I_C_T L#NDMAI 62 C0AuraL#NDMAI62
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~哦，这本书归我先！~
END

INTERJECT L#NDNIB 0 C0AuraL#NDNIB0
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura") Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~尼布？查尔斯顿·尼布！剑湾的那位史学家？我上个月读过你研究资料的出版物！~
EXTERN L#NDNIB 1

I_C_T2 L#NDNIB 14 C0AuraL#NDNIB14
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura") Global("C0AuraImportItem4","GLOBAL",1)~ THEN ~*咔* *咔* 哇，它又回到休眠状态了。我重新启动这东西的时候，不是还挨了一道闪电吗？算了……要是能永久解除它的诅咒就好了。~
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraSEParasite","GLOBAL",1)~ THEN C0AURA2J AURA-PARASITE
~唔，哇。所以这应该就是那寄生虫的一块？~ [C0BLANK]
DO ~SetGlobal("C0AuraSEParasite","GLOBAL",2)~
= ~你知道，<CHARNAME>，我平常对书的感觉都不错，可这本……你要是说它是邪恶的，我信。光看着我就起鸡皮疙瘩。~
EXIT