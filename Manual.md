## 格式

### 遊戲內
/m `Bot展示名稱` `指令`

> /m MyNullBot show exp

### 終端機內
-`指令`

> -show exp

如果打錯指令, 可能會跑出指令表 / 單個指令說明
<br><br/>
## 指令列表
- #### 自動攻擊
    - [`attack`](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E8%87%AA%E5%8B%95%E6%94%BB%E6%93%8A-attack) 啟動自動攻擊
    
    - [`attack stop`](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E8%87%AA%E5%8B%95%E6%94%BB%E6%93%8A-attack) 停止自動攻擊
    
- #### 自動放置樹苗
    - [`place`](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E8%87%AA%E5%8B%95%E6%94%BE%E7%BD%AE%E6%96%B9%E5%A1%8A-place) 啟動自動放置
    
    - [`place stop`](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E8%87%AA%E5%8B%95%E6%94%BE%E7%BD%AE%E6%96%B9%E5%A1%8A-place) 停止自動放置
    
- #### 視覺化背包
    - [`inv spit`](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E8%A6%96%E8%A6%BA%E5%8C%96%E8%83%8C%E5%8C%85-inv) 將背包的物品"依序"放入大箱子中的第1到36格
    
    - [`inv eat`](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E8%A6%96%E8%A6%BA%E5%8C%96%E8%83%8C%E5%8C%85-inv) 將大箱子中的第1到36格的物品"依序"放入背包
    
- #### 漏斗衣櫃
    - [`put on`](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E6%BC%8F%E6%96%97%E8%A1%A3%E6%AB%83-put) 將最近漏斗4格的盔甲穿上(第5格是副手)
    
    - [`put off`](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E6%BC%8F%E6%96%97%E8%A1%A3%E6%AB%83-put) 把衣服和副手物品脫下到最近漏斗

- #### 挖菌絲石工人
    - [`smalldig`](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E6%8C%96%E7%9F%B3%E5%B7%A5%E4%BA%BA-smalldig) 開始一系列運作
    
    - [`smalldig stop`](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E6%8C%96%E7%9F%B3%E5%B7%A5%E4%BA%BA-smalldig) 停止一系列運作
    
- #### 循環宣傳功能
    - [`ads`](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E5%BE%AA%E7%92%B0%E5%AE%A3%E5%82%B3%E5%8A%9F%E8%83%BD-ads) 開啟/關閉循環宣傳功能
    
- #### 展示功能
    - [`show exp`](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E5%B1%95%E7%A4%BA%E5%8A%9F%E8%83%BD-show) 展示bot經驗
    
- #### 計時器
    - [`timer`]() 開始/停止計時
    
    - [`timer see`]() 查看目前計時經過時間
    
- #### 終端機頻道管理
    - [`chm`](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E7%B5%82%E7%AB%AF%E6%A9%9F%E9%A0%BB%E9%81%93%E7%AE%A1%E7%90%86-chm-channelmanager) 展示頻道狀態
    
- #### 參數修改器
    - [`change`](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E5%8F%83%E6%95%B8%E4%BF%AE%E6%94%B9%E5%99%A8-change) 查看所有可調整參數目前數值
    
    - [`change [參數] [新數值]`](https://github.com/AsherJingkongChen/NullBot/blob/main/docs/Description.md#%E5%8F%83%E6%95%B8%E4%BF%AE%E6%94%B9%E5%99%A8-change) 更新某參數數值

- #### 可能有用的測試指令
    - `q` /invsee
    
    - `effect` /effect status
    
    - `sb64` /shop_exp shulker_box 64
    
    - `sb64give` Ctrl+Q
    
    - `fwn` ↓
    
    - `stack` Shift+用力點地板
