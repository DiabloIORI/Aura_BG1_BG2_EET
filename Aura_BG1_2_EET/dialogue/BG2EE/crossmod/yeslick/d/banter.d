CHAIN
IF ~InParty("lk#yeslk")
Range("lk#yeslk",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraLK#Yeslick","GLOBAL",0)~ THEN BLK#YES banter1
~奥拉，你可想过改行打铁？俺觉得那跟奇械的手艺差不远，只是多费些力气。~ [C0BLANK]
DO ~SetGlobal("C0AuraLK#Yeslick","GLOBAL",1)~
== BC0AURA2 ~其实我想过。大裂谷的金矮人曾来兰坦交流学问，我看过他们的作品。很受启发。~
== BLK#YES ~那是什么让你改变了主意，姑娘？你看着是那种一旦起兴就会一头扎进某种活法的人。~
== BC0AURA2 ~嗯，我想那门手艺该留给大师们。再说，看看这双臂膀，耶斯利克。要挥上那么多个时辰的锤子，我根本办不到。几分钟我就得趴地上。~
== BLK#YES ~嘿，那或许是真的。不过你要愿意，俺可以教你几套矮人的经典练习，练练耐力、壮壮筋骨。~
== BC0AURA2 ~呃……这些练习是不是那种“把身体逼到极限”、练到一半就想死的那种？~
== BLK#YES ~哪有！嗯，也许有那么几个年轻人会那样觉得……大概能有一半？~
== BC0AURA2 ~不，不用了，谢谢！我在学院每门课都拿满分，唯独体能训练不行！只要能不回到那些日子，我什么都肯做！~
== BLK#YES ~啊，姑娘，俺就是逗你玩。~
EXIT

CHAIN
IF ~InParty("lk#yeslk")
Range("lk#yeslk",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraLK#Yeslick","GLOBAL",1)~ THEN BLK#YES banter2
~奥拉，你算不算贡德的教士？俺好像没见过你祈祷，也没见你带什么信仰的标记。~
DO ~SetGlobal("C0AuraLK#Yeslick","GLOBAL",2)~
== BC0AURA2 ~那……解释起来很复杂，耶斯利克。要说最省事的说法：我不是虔信者。~
== BLK#YES ~不是吗？俺以为所有兰坦人都信奉奇迹缔造者的教诲。你们祖先相信，他们的一切知识都归功于祂的教导。~
== BC0AURA2 ~这倒是真的，可……自从动荡之年之后，我就一直难以真正归信。~
== BLK#YES ~是因为祂赐给你们族人的烟粉之秘吧？俺摆弄过一件用来发挥它威力的家伙……那些“火器”，俺记得。真真是可怕的毁灭武器。~
== BC0AURA2 ~是……那会儿俺还很年轻，从没见过奇迹缔造者的化身，也不真的明白祂在俺族人中间意味着什么。可俺还记得兰坦因祂的到来变了多少。~
== BLK#YES ~而且……嗯，姑娘，你的看法俺猜得到。神在凡人中间显现，会带来敬畏，也会带来恐惧。~
== BC0AURA2 ~我曾深受鼓舞。可后来我渐渐害怕了。我们得到了一种强大力量的知识……可事情不止一次出了岔子。有人受了伤。我开始怀疑，给我们的东西是否真是好事。~
== BLK#YES ~俺明白，姑娘。不过换个法子想。贡德把知识给了你们族人，是因为信你们配得上。关于新东西的知识，从来不可能没有过失。可兰坦人运用它时，比大多数人都更克制、更有智慧，这一点俺也信。比任何人类社会都强，而且——愿俺族人原谅俺这么说——连矮人也比不上。~
== BLK#YES ~善神并不要求你效忠，不过俺希望你能想一想：你们族人的守护神，是把你们的最好放在心上的，不管犯过什么错。~
== BC0AURA2 ~我……我觉得你说得有理，耶斯利克。谢谢你，我会……想一想。~
EXIT

CHAIN
IF ~InParty("lk#yeslk")
Range("lk#yeslk",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraLK#YeslickToB","GLOBAL",0)~ THEN BC0AURA2 bantertob
~耶斯利克？~
DO ~SetGlobal("C0AuraLK#YeslickToB","GLOBAL",1)~
== BLK#YE25 ~是，姑娘。有什么需要？没伤着哪儿吧？俺说过，要帮忙就得开口，别憋着。~
== BC0AURA2 ~哦，不。俺没事，真的。俺刚才还想问你……等帮完<CHARNAME>这趟，你们就要各走各的了吧？~
== BLK#YE25 ~若克兰格丁的祝福与俺同在、俺这老矮人能活到把这事办完……嗯，那接下来就该俺去料理自己的职责了。~
== BC0AURA2 ~你打算重新建起你的氏族堡吗？~
== BLK#YE25 ~那是头一步，嗯。凭俺如今的力量和财力，俺会一步步确保再不会发生上回那样的惨剧。~
== BC0AURA2 ~愿一切都好，耶斯利克。要是我……或者兰坦任何一位匠人能帮上什么，我们随时听你召唤。我在家乡的影响力，应该够给你需要的一切。~
== BLK#YE25 ~那番心意厚道，奥拉，可矮人的荣誉要求他亲手弥补自己的过失。俺曾让俺的氏族失败过一次，所以必须由俺来复兴他们。~
== BC0AURA2 ~你不是刚说过，需要时就该开口求助吗？~
== BLK#YE25 ~我……俺确实这么说过，嗯。拿俺自己的说教来堵俺的嘴，是吧？嘿。~
== BC0AURA2 ~嗯，俺从你的见识里长进不少。要是能帮上你，那才叫俺高兴。就把这当朋友之义，不是施舍。~
== BLK#YE25 ~嗯，你说得有理。那就这样吧……往后俺说不定还得靠你，奥拉。这趟旅程把你炼成了一位好姑娘。~
EXIT