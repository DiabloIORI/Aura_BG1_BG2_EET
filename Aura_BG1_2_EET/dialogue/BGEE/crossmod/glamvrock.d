CHAIN IF ~InParty("GV#DAVE")
See("GV#DAVE")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("GV#DAVE",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGV#DaveBanter1","GLOBAL",0)~ THEN BC0Aura AURA-DAVE-1
~那，戴夫，让我确认一下我的理解。你要是以任何方式亵渎塔洛斯，就会被一道闪电劈中？~
DO ~SetGlobal("C0AuraGV#DaveBanter1","GLOBAL",1)~
== BGV#DAVE ~……你眼里那种光，让我不想回答这个问题。~
== BC0AURA ~只是，我对兰坦最后的记忆，是我们正大步朝电力驱动的工具和载具迈进。想象一辆能自己跑、不用马拉的大车！~
== BC0AURA ~唯一的麻烦，是找到可靠又高效的法子来发出那种电。要是我们把你塞进某个隔间，然后你开始说些比如，我不知道……“塔洛斯是个又大又蠢的——”~
== BGV#DAVE ~啊——不不不！~
== BC0AURA ~哎呀！差点。谢谢你。~
== BC0AURA ~可你明白我的意思吧？我们只要接上一个某种电容储能单元，就能有个无限的能源！~
== BGV#DAVE ~你是说，在它把我彻底弄死之前那些宝贵而短暂的时刻里，无限？~
== BC0AURA ~哦。对。哈哈。你说得这么随意，我都忘了那真会伤到你。~
== BC0AURA ~也许做个按固定间隔施放治疗药水的装置……？啊，可那样成本超过收益。算了，只是想想。~
== BGV#DAVE ~我倒希望能说一句“抱歉让你失望”。~
== BC0AURA ~不，没关系。热力学定律是拗不过的，不过偶尔试试也挺好玩。~
EXIT

CHAIN IF ~InParty("GV#FLAR")
See("GV#FLAR")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("GV#FLAR",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGV#FlaraBanter1","GLOBAL",0)~ THEN BC0Aura AURA-FLARA-1
~弗拉拉，要是不算太冒犯，你介意让我在你身上做些测试吗？我想查清这些龙的事到底是不是真的。~
DO ~SetGlobal("C0AuraGV#FlaraBanter1","GLOBAL",1)~
== BGV#FLAR ~这没得商量，侏儒。你要是打算“做测试”，就冲找解药去做，否则别做。别拿你那些歪门邪道的好奇心来探我戳我。~
== BC0AURA ~嗯……理论上，我可以省掉些步骤，可要是结果证明你真是个人类——~
== BGV#FLAR ~我不是！~
== BC0AURA ~我知道，我知道，可只是假设……要是我给你一样东西，能解掉一道不受欢迎的变形附魔，而你其实没被变形过，那后果可能是灾难性的。你可能余生都是一团软泥，或者更糟。~
== BC0AURA ~所以……呃……从科学和伦理的角度看，要是我能亲眼确认……呃……~
== BGV#FLAR ~……~
== BC0AURA ~或者我们就当我没提过。那也行。~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("GV#FLAR",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGV#FlaraBanter2","GLOBAL",0)~ THEN BGV#FLAR AURA-FLARA-2
~侏儒，你该明白，你虽有那股创新的劲头，至今却还没做出一样简单魔法仿不出来的东西。~
DO ~SetGlobal("C0AuraGV#FlaraBanter2","GLOBAL",1)~
== BC0AURA ~你要知道，魔法一点也不简单。只因为你对它有天分……~
== BGV#FLAR ~啊，对，你是为我之下那些更简单的生灵操劳。也罢，让我们从你的层次来辩。是，有人觉得魔法不可解，学上多年连个小戏法都使不出。那又怎样？这样的天赋凭什么白送？让挣扎淘汰掉不配的人吧。~
== BC0AURA ~有许多“配得上”的人照样学不了魔法，弗拉拉。那些请不起老师的穷人，或者用形状与色彩思考、而非死记公式的画家……我不觉得谁该只因为天资不合，就被迫活在中世纪。~
== BGV#FLAR ~哦？可你照样把你宝贵的技术藏起来，怕它被误用，于是你就成了判定谁配、谁不配的法官。你凭什么决定这种事，嗯？~
== BC0AURA ~我……我从没说过我是……~
== BGV#FLAR ~别这么畏缩，姑娘。你是建造者，是创始者。决定是你的*权利*。不过，如我所说，魔法本就已经包含你想造的一切：一件无所不能的工具，却不给那些既无财力、又无智力驾驭它的人。可以说，你是在重造轮子。~
== BC0AURA ~衡量一个人，不止看财力和智力。我希望有一天你能看见这一点。~
EXIT

CHAIN IF ~InParty("GV#LITT")
See("GV#LITT")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("GV#LITT",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGV#LittlunBanter1","GLOBAL",0)~ THEN BC0Aura AURA-LITTLUN-1
~小家伙？你父亲那份讲抛射物的手稿……我什么时候能读一读吗？~
DO ~SetGlobal("C0AuraGV#LittlunBanter1","GLOBAL",1)~
== BGV#LITT ~唔。这倒是头一回。多数人听我说要给他们念一段，都当成威胁。~
== BC0AURA ~要我说，那是他们的损失！任何这样专心研究的人，都值得跟他学。~
== BGV#LITT ~我得先警告你，他有时候屁股翘得老高。他没被人叫作洞穴探险家，真是稀奇。~
== BC0AURA ~哈哈，我敢打赌，还比不上某些兰坦学者。你早晚会学会把那股装模作样滤掉。~
== BGV#LITT ~那就给你。好好看着它，行吗？世上就这一本。~
== BC0AURA ~别担心。在托瑞尔上，没有什么比一本书更让我上心的了。~
== BC0AURA ~对，穆菲，除了你。这不用说。~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("GV#LITT",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGV#LittlunBanter2","GLOBAL",0)~ THEN BGV#LITT AURA-LITTLUN-2
~我这件打得更狠。~
DO ~SetGlobal("C0AuraGV#LittlunBanter2","GLOBAL",1)~
== BC0AURA ~我这件用途更广。~
== BGV#LITT ~我这件更结实。必要时我能拿它当棍子使。~
== BC0AURA ~嗯，我这件是用法术造的局部电场，把目标磁化，吸来更多箭。也包括你的。~
== BGV#LITT ~不知道那是什么意思，那就不算。照我看，你就是在编词。我这件可是古董。瞧这暗色桃花心木的漆面，那含蓄的金边。你那件全是光秃秃的噱头。工程是有的，艺术在哪儿？~
== BC0AURA ~工程也是艺术！而且我这件能造治疗箭。~
== BGV#LITT ~那挺妙，直到你把它们跟你平常用的箭混在一起，朝敌人射出去。~
== BC0AURA ~那只发生过一次！我吸取教训了！统计上的离群值该在整个模型里忽略掉！~
== BGV#LITT ~是是是。笑话归笑话，这的确是件好手艺。你该为自己骄傲。~
== BC0AURA ~哎哟，谢谢！~
EXIT

CHAIN IF ~InParty("GV#MOID")
See("GV#MOID")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("GV#MOID",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGV#MoidreBanter1","GLOBAL",0)~ THEN BC0Aura AURA-MOIDRE-1
~莫伊德，那头盔有时候不闷得慌吗？~
DO ~SetGlobal("C0AuraGV#MoidreBanter1","GLOBAL",1)~
== BGV#MOID ~要只是“有时候”，那就叫人松口气了。~
== BC0AURA ~要是你想喘得顺一点，我可以做些调整。只要在关键位置加几个通风口，帮空气流通就行。~
== BC0AURA ~呃。那完全不会影响防护。所以……~
== BGV#MOID ~可你还在踮着脚试探。这说明你不确定我会不会愿意让你做。~
== BGV#MOID ~那我得先把它摘下来。对吧？~
== BC0AURA ~我……我得钻进里面去，是的。就一个钟头左右。那是很简单的——~
== BGV#MOID ~谢谢。不用。~
== BC0AURA ~莫伊德……不管那头盔底下你不想让我看见的是什么，我保证我不会——~
== BGV#MOID ~你是个心善的人，奥拉。去找个配得上你的人吧。~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("GV#VYND",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGV#VyndBanter1","GLOBAL",0)~ THEN BGV#VYND AURA-VYND-1
~好啊好啊，奥拉。你的运势落到你膝头上了，是吧？准备好戳破那帮富贵精英的泡泡了？~
DO ~SetGlobal("C0AuraGV#VyndBanter1","GLOBAL",1)~
== BC0AURA ~我——我？你这话是什么意思？~
== BGV#VYND ~这不明显吗？博德之门给安姆脸色看，战争的谣言在锅里咕嘟。那场仗要由平民去打，他们从没学过念卷轴、挥魔杖。而你在这儿，准备把火与雷放到他们脏兮兮的指尖上。你，我这台粉头发的小小死亡机器，快要做个很有钱的侏儒了。~
== BC0AURA ~我不会变成别的什么，我就是我。我不想这场仗发生，要是真打起来，我绝不想我的发明掺在里头。~
== BGV#VYND ~那是你真信的，还是只是你对外人说的？你刻那些符文的时候，脑子里到底在想什么？“好吧，我知道最近几十件都用来把强盗烧成滋滋作响的肉炭了，可也许*这一回*……”~
== BC0AURA ~强盗就是劫匪和杀人犯，自卫没有错。战争的伤亡者只是些男男女女，奉命去做他们认为保护家园、保护家人必须做的事。那是不同的事，我知道你聪明到看得清，所以……你想证明什么？我发不发财，你在意什么？~
== BGV#VYND ~我不想用问题回答一个问题，可为什么觉得能干该得回报的人反倒是我疯了？~
== BC0AURA ~我每天都能从工作里得到回报。你只是看不见。~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("GV#VYND",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraGV#VyndBanter2","GLOBAL",0)~ THEN BGV#VYND AURA-VYND-2
~奥拉，你知道耐瑟瑞尔人是怎么灭亡的故事吗？~
DO ~SetGlobal("C0AuraGV#VyndBanter2","GLOBAL",1)~
== BGV#VYND ~等等，我在说什么？书里就写着呢。你当然读过。~
== BC0AURA ~你是我认识的人里唯一一个，能把“博学”说得像句骂人的话……~
== BGV#VYND ~就像一滴毒药落进一罐蜂蜜，对吧？这是我的诸多本事之一。~
== BGV#VYND ~尽量想象一下。你肯定见过画家对那一切的始作俑者的描绘。骄傲、鲁莽的卡尔萨斯。想象他盗取神明之力、遮灭世上魔法、让他那些浮空之城坠入尘土时，脸上是什么样子。他杀了千百万人，永久毁了一个帝国，而这一切都是用手上已有的东西做的。没有什么进口的精致技术，没有什么惊人的新发明。只有血、汗和疯狂。~
== BGV#VYND ~你要是以为自己一个人、只要不让别人碰你的玩具，就能把人从他们自己手里救出来；你那层层不安底下，藏着一副好大的自大。~
== BC0AURA ~你和从那个故事里学到的，大不相同，维恩德。~
== BGV#VYND ~是吗？那就说来听听。~
== BC0AURA ~不管好坏，一个人就能改变一切。~
EXIT
