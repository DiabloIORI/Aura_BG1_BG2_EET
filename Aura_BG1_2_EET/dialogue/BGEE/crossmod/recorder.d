CHAIN IF ~InParty("C0Aura")
InParty("X3Rec")
See("C0Aura") 
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!See([ENEMY])
Global("CrossAuraRec","LOCALS",0)~ THEN X3RecB AuRecBanter1
~你去过科祖库拉，奥拉？他们真的用符号写字吗？~
DO ~SetGlobal("CrossAuraRec","LOCALS",1)~
== BC0Aura ~是……其实不止如此。有时一个字就能表达一个词……也可以是一组叫作“假名”的音节。然后还有各种字体、各种方言……全都非常复杂。我自己其实只掌握了塞奈方言。~
== X3RecB ~听起来真是种不寻常的语言。我懂的其他语言——精灵语、天界语、龙语——似乎都更遵循一般的语言规则。~
== BC0Aura ~哦，龙语？那门我还在学基础。我的精灵语有点荒疏，矮人语倒还不错。~
== X3RecB ~父亲重新装订的那些书里，从没有关于矮人语的记载。也许哪天我们可以交换各自所知，互相学一点？~
== X3RecB ~要是，呃，可以的话？我知道你总忙着鼓捣你的东西。~
== BC0Aura ~哦，一点也不！我是说，我确实花很多时间在工作上，可我总能抽出些时间跟你一起学。那会又有趣又叫人兴奋。~
EXIT 

CHAIN IF ~InParty("C0Aura")
InParty("X3Rec")
See("C0Aura") 
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!See([ENEMY])
Global("CrossAuraRec","LOCALS",0)~ THEN X3RecB AuRecBanter2
~奥拉，科祖库拉的音乐是什么样子？我听过一个故事，还读过一卷歌册，可……我从来没亲眼见过的人来印证我学到的东西。~
DO ~SetGlobal("CrossAuraRec","LOCALS",2)~
== BC0Aura ~那非常非常……嗯……说“独特”最合适。连看着跟这片土地上的乐器差不多的东西，用法也不一样。我见过一个节庆，有位演奏者在吹“尺八”——一种竹笛——可他是竖着吹的，不像你们那样横着。~
== BC0Aura ~科祖库拉的音乐与他们的文化和信仰紧紧相连，所以我看到的那位吹笛人是位戴草笠的僧人……那就像一只罩在脸上的篮子。~
== X3RecB ~呃，他们头上顶着篮子到处走？那真怪。~
== BC0Aura ~是。起初我也觉得有些习俗怪得很，可……那时我没多少记忆，所以就渐渐习惯了。丽花小姐给我缝了一件正合我身的礼式和服那天，我高兴极了。~
== X3RecB ~我很想照我这份歌册弹一曲。只还得再练练，免得丢人……~
== BC0Aura ~嘿嘿，我相信你很快就能掌握。我等不及想听了。~
EXIT 

CHAIN IF ~InParty("C0Aura")
InParty("X3Rec")
See("C0Aura") 
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!See([ENEMY])
Global("CrossAuraRec","LOCALS",0)~ THEN X3RecB AuRecBanter3
~呃，奥拉？你还想听那首歌吗？我想现在够稳当了，我可以边演奏边走动。~
DO ~SetGlobal("CrossAuraRec","LOCALS",3)~
== BC0Aura ~对，当然！来吧，记录者！~
== X3RecB ~……~ [X3RFL4]
== BC0Aura ~*鼓掌* 真美！这跟我记得的三池殿风格大不相同，也许你学的是来自别的地区的版本。~
== X3RecB ~哦？我倒没想到这一层。记进档案之前，我先记一笔。谢谢你听我吹奏，奥拉。~
EXIT 