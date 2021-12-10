## 重啟後繼續工作

以我來說

我會開著電腦一整天不關機

讓nullbot一直工作

但是bot偶爾會不正常登出

所以設置了自動重連功能

不過重連後bot會忘記上次工作內容

所以我個人設置在登入60秒後 `(60000 ms)`

bot會對自己輸入指令 `attack`

__也就是重連登入後過了1分鐘會啟動自動攻擊__

為了不帶來困擾

這功能預設是關閉的

以下是打開方法

```javascript
//setTimeout(() => {
//    bot.chat(`/m ${bot.username} attack`);
//}, 60000);
```

去掉這3行開頭的 `//` 變成:

```javascript
setTimeout(() => {
    bot.chat(`/m ${bot.username} attack`);
}, 60000);
```

當然可以設置成其他指令

或是讓 `setTimeout()` 執行其他函式
