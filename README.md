# AluTimer
ボスバーにゼロ埋めのタイマーを表示するだけのデータパック。

![image](https://user-images.githubusercontent.com/85728971/223311860-18afdd3a-1dbb-4055-a71c-8cc179902eac.png)

## 想定環境
Minecraft JE 1.19 ~

## コマンド
タイマーは1~7までの7つ用意されていて、それぞれ独立して実行される。
<br>

### タイマーの時間の設定
初期設定は600秒=10分となっている。タイマー開始前にスコアを変更する事ができる。単位は秒

```mcfunction
scoreboard players set set timer.1 600
```
<br>

### タイマーの名前
タイマーのカウントダウンより前に自由に名前を付けることができる。

```mcfunction
data modify storage alu_timer 1.name set value '{"text":"タイマーの名前"}'
```

|動作|コマンド|
|--|--|
|カウントダウン|```/function alu_timer:cd/```|
|開始|```/function alu_timer:1/start```|
|一時停止|```/function alu_timer:1/pause```|
|再開|```function alu_timer:1/resume```|
|残り時間の変更(tick)|```/scoreboard players set cal timer.1 1200```|
|停止|```/function alu_timer:1/end```|
