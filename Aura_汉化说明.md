# Aura（Aura_BG1_2_EET）汉化说明

- 模组：**Aura for BG1/BG2/EET**（The Artisan 出品，三合一版）
- 路径：`E:\GitHub\Aura_BG1_BG2_EET\Aura_BG1_2_EET`
- 汉化方式：**就地改写源文件**（本模组正文几乎全部硬编码在 `dialogue\*.d` 与 `lib\*.tpa` 的 `~...~` 里，无法走"新增 `tra\schinese` 同名 tra"的常规路子）
- `Setup-Aura_BG1_2_EET.tp2`：**未改动**（13,038 B，原样）
- 每个被改的源文件旁边都留有同名 `.bak` 原始备份

---

## 一、成果规模

| 项 | 数值 |
| --- | --- |
| 源文件（`.d` / `.tpa` / `.tph` / `.tra`）总量 | 123 个 |
| 含中文的文件 | **82 个** |
| 中文正文总量 | **约 33.6 万汉字** |
| 抽取到的不重复原文条目 | 12,902 条（16,539 处出现） |
| 残留英文 | 仅剩脚本代码、安装日志、物品槽位串、拉丁咒语（详见第五节） |

## 二、tra 层（7 个文件，`tra\english\` 与 `tra\schinese\` 同步中文）

`lib\aura_bg1.tpa` 第 572–573 行的 `ADD_JOURNAL … USING ~%MOD_FOLDER%/tra/english/setup.tra~` **把路径硬编码成 `english`**，所以两份都必须中文：

- `tra\english\SETUP.TRA`（16 条：BG1 主线日志 10 条、天镜丽花 2 条、意外盟友 2 条、奥拉生平传记 1 篇）
- `tra\english\BG2\journal.TRA`（16 条：剥皮者凶案、以经验为信 8 条、欲求和平先备战争 5 条、标题 2 条）
- `tra\english\emily.tra`（24 条，艾米莉闲聊）
- `tra\english\kale.tra`（20 条，卡莱闲聊）
- `tra\english\vienxay.tra`（9 条，维恩赛挑衅）
- `tra\english\worldmap.TRA`、`tra\english\BG2\worldmap.TRA`（各 1 条，地区名）
- `tra\schinese\` 下全部同名中文副本（`LANGUAGE ~Schinese~` 分支指向这里）

## 三、lib 层（全部就地改）

- `aura_kit.tpa`（175,790 B）：职业名与说明（奇械师 / 幻术师／奇械师 / 女祭司／奇械师）、升级菜单（炼金 - 标准药水 / 爆炸物 / 高级药水）、法术矩阵 UI 串
- `aura_items.tpa`（67,037 B）：全部物品名与 STATISTICS 描述块
- `aura_sod.tpa`（8,765 B）：龙矛围攻相关内容
- `aura_bg1.tpa`（67/67 条）：BG1 奥拉传记三段、樱色皮甲、`I Hate Bears!`、忍者系 NPC 名（凛光 / 迷 / 小太郎 / 斋藤忠桥 / 吹雪 / 卡古土 / 妖 / 蛟 / 空音明道）、冰水晶、奇怪的信、奥拉留字条、吹雪的记录
- `aura_bg2.tpa`（498 条 + 4 篇长尾声）：法术名与说明、物品名与完整属性块、NPC 与生物名、音效台词、升级菜单、档案（Dossier）四篇、**BG2 四段结局长文**（独自远行 / 与伊莫恩同行 / 与 <CHARNAME> 成婚 / <CHARNAME> 登神）
- `crossmod.tpa`（26 条安装日志）与 `crossmod_bg1.tpa`（12 条安装日志）
- `aura_resources.tpa`：`Infusion: Blades/Bludgeon/Piercer/Missiles/Flames/Frost/Acid/Lightning` → 注能：刃 / 钝击 / 穿刺 / 飞弹 / 烈焰 / 冰霜 / 酸蚀 / 闪电
- `effects\poison_weapon.tpa`（淬毒武器）、`effects\analyze.tpa`（分析）、`dialogue\BG2EE\crossmod\verrsza\verrsza.tpa`（织法护手、木炭烟幕弹）

## 四、对话层

**主线 19 个 `.d`**：`dialogue\BGEE\`（`c0auraj.d`、`bc0aura.d`、`c0aura.d`、`c0aurap.d`、`c0fubuki.d`、`c0saito.d`）、`dialogue\SoD\`（`c02auraj.d`、`c02aura.d`）、`dialogue\BG2EE\`（`bc0aur25.d`、`c0aur25j.d`、`bc0aura2.d`、`c0aura2.d`、`c0aura2j.d`、`dialog.d`、`bg2talk.d`、`c0aura25.d`、`c0au01tk.d`、`fatesp.d`）、`dialogue\c0auin3.d`、`dialogue\c0aubow.d`、`dialogue\misc48_swap.d`、`artificer\dialogue\c0aualch.d`

**crossmod 对话 40 个 `.d`**（全部译尽）：
`ascension`、`brynnlaw`、`dvaradime`、`fade`、`faldorn`、`foundling`、`lhannd`、`ooze_lounge`、`paina`、`sellswords`、`sirene`、`skie`（含 `eddard.d`）、`skitia`、`southern_edge`、`tangled_oak`、`totdg`、`verrsza\verr.d`、`walahnan`、`whin_hill`、`will`、`xan`、`xzele`、`yeslick`、`yoshimo_romance`、`yoshimo_remorse`、`yvette`（以上 BG2EE）；`drake`、`emily`、`glamvrock`、`helga`、`isra`、`kale`、`recorder`、`sirene`、`sotsc`、`vienxay`、`white`、`verrsza`（以上 BGEE）
其中打油诗、`*拍拍*` `*呼噜*` `*啪 啪 啪*` `*剪*` `*拽*` 等拟声与括号旁白（`（拍拍她的头）`、义桑的"眼角余光"旁白）也都译了。

## 五、刻意保留英文的部分（非游戏内显示文本）

- `lib\au_sequencer_menu.tpa`（82 处）、`worldmap\add_worldmap_tbl.tpa`（42 处）：JS 代码与 2DA 补丁脚本
- `lib\a7#add_kit_ex.tpa`、`lib\fl#add_kit_ee.tpa`、`lib\functions.tph`：工具库报错信息与参数名
- `CHAN09 * HELM07 BAG20 …`、`C0Aura C0Aura2P …`：生物装备槽位表与文件名列表（代码）
- `SPLPROT.2DA - Stat out of Bounds.`：安装期 2DA 校验警告
- `dialogue\BG2EE\c0aura2j.d` 的 `Caelum, Iustitia, Invocare！`：拉丁语咒语，按惯例保留原文（感叹号已改为全角）
- `lib\aura_bg1.tpa` 的 `Installing content for Siege of Dragonspear...` 已改为中文"正在安装《龙矛围攻》内容……"

## 六、编码与格式

- 全部源文件：**UTF-8 无 BOM**，换行保持原样（CRLF 未归一）
- `~` 一律保持半角英文波浪号，`~` 之内使用中文全角标点
- 原有多行结构（`↵↵` 空行、日志条目的段落间隔）逐条核对保留
- WeiDU 变量原样保留：`<CHARNAME>`、`<PRO_HISHER>`、`<PRO_MANWOMAN>`、`<PRO_RACE>`、`<SIRMAAM>` 等
- 未改任何脚本动作、`Global()`、`SetGlobal()`、`StartDialogueNoSet()` 之类的代码行

## 七、安装相关

1. 先按 `Aura_crossmod与安装顺序.md` 里的 5 步顺序装前置 NPC mod，再装 Aura，crossmod 才会生效。
2. 语言选 **Schinese**；存档文本写入 `lang\zh_CN\dialog.tlk` 需为 UTF-8。
3. 若安装报 `ERROR: No translation provided for @N`，说明所选语言的 tra 编号断档——本模组已把 `tra\english` 与 `tra\schinese` 都补齐，不应再出现。
4. 装完若发现个别台词仍是英文，多半是 `items\` / `spells\` / `creatures\` 预编译文件里的 strref（二进制，未逐条核）；把该文件删掉让 WeiDU 重新编译即可。

## 八、备份与回滚

- 每个被改文件旁有 `<文件名>.bak`；把 `.bak` 覆盖回原名即可恢复英文原版。
- 译表分片（可复用的中文对照）在 `C:\Users\yuyou\.doubao\lark-chats\2026-11-09\new-chat-1\aura\`，`_zh_u_a.tsv` ～ `_zh_u_em.tsv` 等 127 个。

## 九、术语对照（摘）

档案 / 监察官 / 阿斯克勒庇俄斯·科瓦尔 / 莉莉安·科瓦尔 / 拉菲莉亚枯萎症 / 哈鲁阿 / 波西亚 / 《炼金术二十七论》 / 卡里迪乌斯·米拉索斯·马格努森 / 奥瑞莉亚·密涅瓦·伊芙琳·格利默夏恩（奥瑞莉亚） / 戴达罗斯·迪内尔斯特兰德 / 格拉菲拉·迪内尔斯特兰德 / 凯罗斯·格利默夏恩 / 莉罗 / 桑巴尔学院 / 第十一工坊（兵器设计） / 第四工坊（生涯工艺） / 艾罗奇 / 奥库卢斯 / 执法者 / 吉尔伯特·阿巴坦杰洛 / 里斯·斯普罗克特 / 密涅瓦·格利默夏恩 / 太阳射手 / 泰坦 / 极终会 / 以经验为信 / 欲求和平，先备战争 / 皮可·詹森 / 朱诺 / 露娜 / 埃利达努斯 / 菲洛 / 莉塔

物品法术：洞察护手 / 巨人之锤 / 机关锤 / 烟粉 / 撬棍 / 火焰·霜冻·大地·电击·奥术水晶 / 泰坦之瓶 / 奥拉的狂野浪涌增幅器 / 急速浪涌 / 毒之裹·毒之霾·毒之爆 / 赤铜龙吐息 / 齿轮坠击 / 燃烧之冠 / 火焰之冠"维尔-索恩" / 裂魂 / 魂刃"空诸所有" +5 / 嗜血者 / 第三只眼 / 首读之戒：圣者学者 / 许愿石 / 贵族之刃 / 电击刃 / 睿智 / 感电 / 幽霜之牙 +4 / 无限之钥 +3 / 迅雷 +3 / 冬之长弓"白雪" +3 / 余烬之矛 +2 / 烈焰之帷——"因纳兹-卡瓦" / 织发斗篷 / 处女们的哀嚎 / 织法护手 / 木炭烟幕弹 / 淬毒武器 / 分析

属性块固定译法：`属性数据：` / `装备能力：` / `充能能力：` / `战斗能力：` / `防御等级：` / `零级命中值` / `伤害类型` / `速度值` / `擅长类型` / `类型：单手·双手` / `需求：` / `重量` / `对抗……豁免：+N` / `持续时间：` / `特殊：` / `免疫恐惧` / `副手零级命中值：+4` / `通过对吐息武器豁免（-2）` / `不禁止施法` / `每回合回复 N 点生命值`
