CHAIN
IF ~InParty("l#2sdskie")
Range("l#2sdskie",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("l#2sdskie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2SDSkie","GLOBAL",0)~ THEN L#2SDSKB banter1
~奥拉，这一路走下来，你是怎么让头发和衣裳一直这么干净的？我得费好大劲才不沾灰，可你像是天生就能把脏东西弹开似的！~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2SDSkie","GLOBAL",1)~
== BC0AURA2 ~主要是我带的兰坦护肤品，不过我自己也还是时不时得收拾一下。斯基，你是不习惯自己照顾自己吗？~
== L#2SDSKB ~嗯……我一直在学，可你知道我是从什么样的日子过来的。以前这些事都有人替我做。~
== BC0AURA2 ~*叹气* 对，我猜就是这类事。不如我教你怎么做才省力？~
== L#2SDSKB ~我想我也不能老是半心半意地对付。可我也要些你的特制东西！~
== BC0AURA2 ~好。不过先从最基本的开始。这里头没什么取巧的法子，斯基！再说，等你自己开始有了成果，苦功也能让人痛快。~
EXIT

CHAIN
IF ~InParty("L#2sdskie")
Range("L#2sdskie",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2sdskie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2SDSkie","GLOBAL",1)~ THEN L#2SDSKB banter2
~谢谢你帮我适应这么多事，奥拉。你说得对——能自己解决些小问题，感觉真好。~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2SDSkie","GLOBAL",2)~
== BC0AURA2 ~嘿嘿，不客气，斯基。我现在被泼水的次数少了，这算是进步。~
== L#2SDSKB ~不过我能问你一件事吗？你在兰坦到底是什么身份？你看着挺宽裕的，那……你算贵族吗？说起来，你们族人到底有没有传统意义上的贵族？~
== BC0AURA2 ~我们……算是，也算不是。你要是问我们有没有那种享有威望与财富的显赫家族，那……有。只是我们更愿意把自己社会看作一个任人唯才的地方，好让每个兰坦人都愿意去拼，把自己的名字写进有记载的历史。~
== L#2SDSKB ~要我说，你已经到了那一步，恐怕还过了。我想不出你的族人里有谁比你更聪明。~
== BC0AURA2 ~你会这么想，可你没见过有些最了不起的兰坦人是以什么被记住的。再说……被人供起来，本来就不合我的性子。只要能让别人的日子好过些，我就高兴了。~
EXIT

CHAIN
IF ~InParty("L#2SDSkie")
Range("L#2SDSkie",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2SDSkieToB","GLOBAL",0)~ THEN BC0AUR25 bantertob
~那等我们办完事，就要回博德之门了，对吧，斯基？你期待回家吗？~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2SDSkieToB","GLOBAL",1)~
== L#2SD25B ~唉，我看也只能这样了，是啊。不然我父亲大概会派整个焰拳来找我，把我绑上车押回家去，根本不管我愿意不愿意。~
== L#2SD25B ~我只是希望他能明白，我不再只是个需要人照顾的娇小姐，我能做到更多。我已经证明过了，而且不止这些！可话又说回来……他再怎么专横……我也不能整天让他为我操心到又多长白发。~
== BC0AUR25 ~那……大概就是最纯粹的父爱吧。~
== L#2SD25B ~也是最让人透不过气的！我在他眼里还有长大的那一天吗？我不再只是“银盾小姐”了。凭我做的事，我早就挣得被看作英雄的资格了。~
== BC0AUR25 ~嗯，也许要是……等等，我这儿有样东西给你……啊，找到了！要是可以的话，假如你见到大公爵们，我希望你能把这个交给他们。~
== L#2SD25B ~这是什么？我该现在看吗，还是那种“绝密传信”，不是给寻常眼睛看的？~
== BC0AUR25 ~斯基，我看起来像间谍头子吗？这只是一些改造穿过城内外那条引水渠的图样。我记得上次去的时候，那套工程有多老旧……要是他们把这些图样用上，大家就有望喝到更干净的水。~
== L#2SD25B ~更别说这还会让更多人有机会找到更安全、报酬更好的活计。不过你确定就这样把这么有价值的东西送给城里？我以为兰坦是不该这么轻易把知识送人的。~
== BC0AUR25 ~要是能让人们的日子好过些……我就担这个险。再说我把它交给你了，你觉得眼下这时机不合适，就由你来定。~
== L#2SD25B ~哇，你可真是一点也不留情……放心，我一定让这东西落到我能信得过的人手里。我也会让公爵们知道这是你写的。~
EXIT
