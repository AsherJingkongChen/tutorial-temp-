## 自動攻擊 Attack
參數 | 預設值 | 說明
------- | ----------- | -------
autoattack | setInterval | 間隔物件名
[attackinterval](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E5%8F%83%E6%95%B8) | 550 | 時間間隔(ms)
[attacktargets](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E5%8F%83%E6%95%B8) | ["witch","vindicator",<br/>"vex","pillager","evoker"] | 攻擊目標列表
attack | function | 攻擊函式
attacker | function | 控制函式

### 指令

* attack `攻擊`

> 啟動自動攻擊

* attack stop `攻擊 停止`

> 停止自動攻擊
>
> 調整完用attack stop >> attack刷新參數

<br></br>
## 自動放置樹苗 Place
參數 | 預設值 | 說明
------- | ----------- | -------
placeloop | setInterval | 間隔物件名
[placeinterval](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E5%8F%83%E6%95%B8) | 100 | 時間間隔(ms)
iplaceblock | async | 放置方塊函式<br/>預設放在指標方塊之上
blockplacer | function | 控制函式

### 指令

* place `放置`

> 啟動自動放置

* place stop `放置 停止`

> 停止自動放置
> 
> 調整完用place stop >> place刷新參數<br/>

<br></br>
## 視覺化背包 Inv

參數 | 預設值 | 說明
------- | ----------- | -------
invin | async | 拿取大箱物品函式
invout | async | 放物品到大箱函式
invmanager | function | 控制函式
chest | promise | 大箱子物件

### 指令

* inv spit `物品欄 吐掉`

> 將背包36格的物品"依序"放入<br/>
> 
> 大箱子中的第1到36格<br/>
> 
> __"第28格是慣用手"__


* inv eat `物品欄 吃掉`

> 將大箱子中的第1到36格的物品<br/>
> 
> "依序"放入背包36格<br/>
> 
> __"第28格是慣用手"__

<br></br>
## 漏斗衣櫃 Put

參數 | 預設值 | 說明
------- | ----------- | -------
myequip | async | 穿上漏斗內裝備的函式
myunequip | async | 脫下裝備到漏斗的函式
clothmanager | function | 控制函式
wardrobe | promise | 漏斗物件

### 指令

1. 先`inv spit`吐掉裝備, 清空包包
2. 再`put off`脫掉原本的衣服, 用背包裝到漏斗
3. 最後`put on`穿上新衣服

__否則順序會亂掉, 裝備會穿不上去__

* put on `穿上`

> 將最近漏斗第1~4格的盔甲"無序"穿上<br/>
> 
> 第5格是副手


* put off `脫掉`

> 把衣服和副手物品脫下"無序"丟到最近漏斗裡

<br></br>
## 挖石工人 Smalldig

參數 | 預設值 | 說明
------- | ----------- | -------
smalldigman | function | 控制函式
smalldig | function | 放方塊挖方塊的callback hell
smalldigger | setInterval | 間隔物件
[smalldiggerintv](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E5%8F%83%E6%95%B8) | 300 | 生產方塊間隔(ms)
[smalldigblock](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E5%8F%83%E6%95%B8) | "netherrack" | 放置的方塊"關鍵字"
[smallexceptblock](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E5%8F%83%E6%95%B8) | "\_nylium" | 得到的方塊"關鍵字"
getkeyitem | function(keyword,exceptword) | 取得包包內<br/>帶有關鍵字keyword的物品<br/>忽略名字帶有exceptword的物品
refreshinv | async | 配合smalldig()<br/>從最近"小箱子"補充放置的方塊
damagechecker | function | 定時偵測獄髓鎬耐久度<br/>並到設定的經驗塔修鎬再回來
[expfarm](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E5%8F%83%E6%95%B8) | ["jerry_lu_3","qqppaallzzmm78"] | 經驗塔的warp名稱陣列
dmgchecker | setInterval | 間隔物件
nostalgic | setInterval | 間隔物件

### 指令

__有獨立example bot [`subbot/sdig.js`](https://github.com/AsherJingkongChen/NullBot/blob/main/subbot/sdig.js)__

此功能由 `夏彥` 發想並訂做<br/>

也是為地圖畫材料提供者訂做<br/>

測試用機器的投影檔案 [菌絲石機](https://github.com/AsherJingkongChen/NullBot/blob/main/litematicas/nyliumination.litematic), [混凝土機](https://github.com/AsherJingkongChen/NullBot/blob/main/litematicas/concretation.litematic)

__注意這段 `bot.look(1.57,-1.05)` 表示往-x軸看,__

__俯角60度, 預設是看向漏斗__

__修改方法參考__ [__`bot.look(yaw, pitch)`__](https://www.spigotmc.org/threads/why-is-minecrafts-pitch-and-yaw-system-so-weird.412187/?__cf_chl_jschl_tk__=pmd_D20MOZzWriD926b.Y_nmhzlOGW0VIZ_.Ge1MIyHnYHw-1635589968-0-gqNtZGzNAmWjcnBszQ1R)

* smalldig `小挖`

> 開始放置方塊, 挖掘, 循環, 沒貨自動補, 稿子快爆自動修

* smalldig stop `小挖 停止`

> 小挖壞掉時, 可以手動暫停

<br></br>
## 循環宣傳功能 Ads

參數 | 預設值 | 說明
------- | ----------- | -------
ads | function | 控制函式
adsloop | setInterval | 循環間隔物件
[adsinterval](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E5%8F%83%E6%95%B8) | 610000 | 宣傳間隔(ms)
adsmode | -1 | 關閉狀態:-1／開啟狀態:1
[adslist](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E5%8F%83%E6%95%B8) | ["ads1","ads2","ads3"] | 放置宣傳內容的陣列

### 指令

* ads `廣告`

> 開啟/關閉宣傳功能

<br></br>
## 展示功能 Show

參數 | 預設值 | 說明
------- | ----------- | -------
show | function | 控制函式

### 指令

__統計型功能未完全做好, 等待各位給意見/回饋__

* show exp `展示 經驗`

> 展示bot經驗等級, 經驗值<br/>
>
> 可以做簡易遠端觀察, 看bot是否有好好打怪

<br></br>
## 計時器 Timer

參數 | 預設值 | 說明
------- | ----------- | -------
mytimer | fucntion | 控制函式
timerstart | Date.now() | 取得開始系統時間(ms)
timerend | Date.now()-timerstart | 計算經過時間
timermode | -1 | 關閉狀態:-1／開啟狀態:1

### 指令

可以用來計算效率

* timer `計時器`

> 開始/停止計時

* timer see `計時器 查看`

> 查看目前計時經過時間

<br></br>
## 終端機頻道管理 Chm (ChannelManager)

參數 | 預設值 | 說明
------- | ----------- | -------
channelmanager | function | 管理頻道狀態的函式
[channel](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E5%8F%83%E6%95%B8) | object | 包含頻道狀態的物件

### 頻道名稱, 頻道過濾

在`parameter.json`可修改,

也可以開啟時在終端機用 `change channel [頻道名稱] [1/-1]` 調整

__1是開 / -1是關__

```javascript
"channel": {
    "trade": -1,    [$]
    "gossip": -1,   [@]
    "local": 1,     [C]
    "system": -1,   [S]
    "helper": -1,   [H]
    "highlight": -1,[！]
    "fallout": 1,   [廢土伺服]／[!]
    "private": 1    [收到私訊]
}
```

### 指令

透過終端機操作Bot的玩家,<br/>

你可以打字說話`@請問要怎麼蓋地圖畫`<br/>

或是打服務器的指令`/rtp`,`/money`<br/>

此外, 終端機也可以過濾訊息, 就像`/chat`<br/>

透過 `chm` 可以知道頻道狀態<br/>

也能用 `change` 修改狀態

* chm `(ChannelManager)` `頻道經理`

> 展示頻道狀態

<br></br>
## 參數修改器 Change

參數 | 預設值 | 說明
------- | ----------- | -------
changeparameter | function | 用`fs`模組讀取修改`parameter.json`
change | function | 控制函式, 有很多case

### 參數

在 `parameter.json` 可以看到可調整參數

```javascript
{
    "attackinterval": 550,
    "attacktargets": [
        "witch",
        "vindicator",
        "vex",
        "pillager",
        "evoker"
    ],
    "placeinterval": 100,
    "smalldigblock": "netherrack",
    "smallexceptblock": "_nylium",
    "smalldiggerintv": 300,
    "expwarp": [
        "jerry_lu_3",
        "qqppaallzzmm78"
    ],
    "adsinterval": 610000,
    "adslist": [
        "ads1",
        "ads2",
        "ads3"
    ],
    "channel": {
        "trade": -1,
        "gossip": -1,
        "local": 1,
        "system": -1,
        "helper": -1,
        "highlight": -1,
        "fallout": 1,
        "private": 1
    }
}
```

### 指令

所有可調整參數放在獨立的 `json` 檔案

可以透過 `change` 指令

在遊戲內或終端機上修改 `parameter.json`

不用再到Editor改 (不管哪邊改都會生效)

__時間間隔類型的__

__改完要用指令停止 `setInterval` 間隔物件再指令重啟__

__[newvalue]如果是陣列[“a","b","c"], 參考這格式: `change adslist ads3 ads2 ads1`__

* change `更改`

> 查看所有可調整參數目前數值

* change [parameter] [newvalue] `更改` `參數` `新數值`

> 調整某參數中的參數的數值成為新數值<br/>

* change [parameter] [parameter2] [newvalue] `更改` `參數` `內參數` `新數值`

> 調整某參數中的參數的數值成為新數值<br/>
> 
> 例如 `change channel private -1`<br/>
> 
> 這是因為 `private` 參數是被包在 `channel` 參數中
