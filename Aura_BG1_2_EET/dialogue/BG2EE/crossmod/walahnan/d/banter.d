CHAIN
IF ~InParty("L#2Walah")
Range("L#2Walah",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2Walah",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2Walahnan","GLOBAL",0)~ THEN L#2WHB banter1
~奥拉，我有个问题……不，说请求更准确……呃……~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2Walahnan","GLOBAL",1)~
== BC0AURA2 ~嗯？我听着呢。~
== L#2WHB ~那是你的头发。你怎么能一直让它这么……有光泽、这么干净，哪怕过的是这种出汗又不干净的冒险日子？有什么秘诀吗？什么兰坦特制皂？~
== BC0AURA2 ~嗯，我确实用自己特制的皂……不过没什么秘诀，瓦拉南。就是打沫、冲洗、好好梳。可梳的时候头发得干！我用了一点点魔法加快这个过程。~
== L#2WHB ~其实我也一样。可我怎么也弄不出同样的效果，我试过了。我的头发和胡子就是会沾上……每一粒该死的脏东西，怎么躲都躲不掉。你就不能帮我一点点吗？~
== BC0AURA2 ~嗯……唔……~
== L#2WHB ~什么？抱歉，我可不太喜欢莫名其妙被人盯着。怪尴尬的。~
== BC0AURA2 ~抱歉，我只是得凑近看看……你试过干喷护发吗？~
== L#2WHB ~干喷？还有这种东西？~
== BC0AURA2 ~哦，对。那是个好用又长效的护发法子，值得一试。或者来点发油……嗯，我得想想哪个最合适……~
== L#2WHB ~我等着呢，盼得很。也许终于有那么一天，我不用老想去挠胡子。~
EXIT

CHAIN
IF ~InParty("L#2Walah")
Range("L#2Walah",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2Walah",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2Walahnan","GLOBAL",0)~ THEN L#2WHB banter2
~我注意到你的穆菲老想靠近普卢姆普斯，奥拉。不过我觉得普卢姆普斯不太喜欢他。~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2Walahnan","GLOBAL",1)~
== BC0AURA2 ~哦，抱歉，瓦拉南。我得看紧他些。也许是因为那团黏泥。~
== L#2WHB ~那……黏泥？那跟这事有什么关系？~
== BC0AURA2 ~穆菲特别着迷于把脏东西擦干净。我敢肯定他前世是只阿卡纳米。那是用舌头清理脏东西的妖怪。~
== L#2WHB ~呃。我能理解要保持干净，可我不会用嘴碰任何脏东西。~
== BC0AURA2 ~也许穆菲是想替普卢姆普斯擦一擦？他大概以为自己是在帮忙。~
== L#2WHB ~我信他是好意。不过，呃，我还是该从今往后尽量把这两位分开。普卢姆普斯看着恼了，这让他……说得客气些，变得难以预料。他一生气会出什么事，准没好事。~
EXIT

CHAIN
IF ~InParty("L#2Walah")
Range("L#2Walah",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2Walah",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2Walahnan","GLOBAL",0)~ THEN BC0AUR25 bantertob
~瓦拉南，我能问你几个关于时序魔法的学术问题吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2Walahnan","GLOBAL",1)~
== L#2WH25B ~*你*要从*我*这儿学东西？唔，我倒觉得该感到荣幸似的。问吧。~
== BC0AUR25 ~我只是好奇，魔法究竟能影响到什么程度，影响时间的流逝和推动它的事件？~
== L#2WH25B ~我……觉得这我没法回答，奥拉。关于时间，我——或者说任何一位时序法师——都还有很多没弄懂。据我所知，改变过去以影响现在还做不到，可谁知道在……呃，在未来呢？~
== BC0AUR25 ~只是……我被告知过很多次，这类理论荒唐透顶。“你改变不了过去，否则你早就改了。”你知道吧？我们称之为悖论。光是试着合乎逻辑地想它，就能让人头昏。~
== L#2WH25B ~“杀死自己的祖父”那桩，是，我知道。我没法用完全合乎逻辑的方式解释，不过这么想吧：你做的每件事都在改变未来，哪怕只是很小的一点。我们所处的当下对我们而言只有一个，可外头或许还有无数个。~
== L#2WH25B ~比如某一世里，你昨晚没吃晚饭，又饿着肚子打了下一仗，改变了战局；或者某一世里，我们现在没进行这场谈话。我们的过去并非只有一条。这么说吧，你要是改了自己过去里的某事，那就不再是“你的”过去了。~
== BC0AUR25 ~这么想倒有点道理……那么时序魔法所做的，可以说就是伸手去够那些别的“可能”？~
== L#2WH25B ~你可以把那个当成最简单的想头，是的。它相当复杂。不过只要它能帮我去掉袍子上的污渍、不用等就能长出好吃的果子，我对自己懂的这些就满意了。~
== BC0AUR25 ~嘿嘿，说得有理。我想解开多元宇宙的奥秘，未必总能带来最大的快乐。谢谢你给我长见识。~
EXIT
