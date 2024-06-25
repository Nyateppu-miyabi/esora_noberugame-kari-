*deai_sean

[cm ]
[clearfix]
[start_keyconfig]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore frame="massage_box_blue.png" margint="55" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" size=30 bold=true x=200 y=520]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area" talk_focus="brightness"]

;このゲームで登場するキャラクターを宣言
;nanase
[chara_new  name="nanase" storage="chara/nanase/main_img1.png" jname="えそら" width="700" height="700"]
;キャラクターの表情登録
[chara_face name="nanase" face="happy"  storage="chara/nanase/main_img2.png" ]

;ヒロイン
[chara_new  name="doukyuusei" storage="chara/doukyuusei/doukyuusei.png" jname="同級生" ]
[chara_new name="kouhai" storage="chara/kouhai/kouhai.png" jname="後輩" ]
[chara_new name="senpai" storage="chara/senpai/senpai.png" jname="先輩" ]



#えそら
まずは同級生ちゃんから！[p]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[bg storage="room.jpg" time="1000"]
[chara_show name="doukyuusei" top="1"]
[anim layer="message0" time="700" opacity="255" ]
[wait time="1000" ]
[cm]
同級生ちゃんは英空高校2年生！...って同級生だから当たり前か～[p]
見ての通りピンク髪のツインテールの子で、キュートで明るく元気な子なんだけど...[p]
実はなんと...[p]
[chara_mod  name="nanase" face="happy"]
[font  size="40"   ]
主人公と幼馴染なのです！[p]
[resetfont]
[chara_mod name="nanase" face="default"]
でも主人公は気づいてないんだよね～[p]
詳しい内容は別資料で説明しているよ[p]
出会いは最初の教室で、主人公とは同じクラス！[p]
入学初日だから主人公を案内するよ！ここで最初の選択肢が出るんだ！[p]

#同級生
よければ私が校舎を案内してあげるよ[p]

[glink  color="blue" size="28"  x="360"  width="500"  y="300"  text="助かる！お願いします！"   target="*doukyuusei1" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="400"  text="申し訳ないし、遠慮しておくよ"  target="*doukyuusei2" ]
[s  ]

*doukyuusei1
#同級生
やった！それじゃあいこっか！[p]
#えそら
[chara_mod  name="nanase" face="happy"]
好感度アップだよ！やったね！[p]
@jump target="*common1"

*doukyuusei2
#同級生
そっか...分かったよ...[p]
#えそら
あらら...好感度ダウン...センスないですね～[p]
そんなあなたでも、同級生ちゃんは無理やり校舎案内をしてくれるよ[p]
@jump target="*common1"


*common1
[chara_mod name="nanase" face="default"]
#えそら
こんな感じで選択肢によって好感度が上がったり、下がったりする（予定）だよ！[p]

じゃあ次は後輩ちゃんを見て行こう！[p]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[chara_hide name="doukyuusei" ]
[bg storage="zyutaku_hiru.jpg" time="1000"]
[chara_show name="kouhai" top="1"]
[anim layer="message0" time="700" opacity="255" ]
[wait time="1000" ]
[cm]

後輩ちゃんは中等部からの内部進学生の1年生だよ！[p]
黒髪の黄色メッシュの子で、性格はクールでツンデレでしっかりもの[p]
天文部に所属しているんだけど、今は部員がこの子だけなんだ...[p]
その詳しい理由は別資料を見てね！[p]
後輩ちゃんとの出会いは通学路！[p]
転校初日から遅刻しそうな主人公と十字路でばったりぶつかっちゃうんだ[p]
[chara_mod  name="nanase" face="happy"]
きゃー！！！なんて王道的な出会いなの！！！[p]
[chara_mod name="nanase" face="default"]
ただそこでは主人公が「ごめんなさい！」というくらいで、特に何も無かったよ[p]

ここでシーンが変わりまして、放課後の屋上になります[p]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[bg storage="okuzyou_hiru.jpg" time="1000"]
[anim layer="message0" time="700" opacity="255" ]
[wait time="1000" ]
[cm]
主人公が屋上に行くとそこには...[p]
天文部の活動をしている後輩ちゃんの姿が...！[p]
[font  size="40"   ]
さぁ！ここで選択肢です！[p]
[resetfont]

#後輩
今、部員私しかいなくて廃部しそうなんです...先輩、星に興味があったら入部しませんか？[p]

[glink  color="blue" size="28"  x="360"  width="500"  y="300"  text="興味あるし、入るよ！"   target="*kouhai1" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="400"  text="別に星に興味ないんだよね..."  target="*kouhai2" ]
[s  ]

*kouhai1
#後輩
ほ、本当ですか？ありがとうございます！[p]
#えそら
[chara_mod  name="nanase" face="happy"]
いい選択しますね～！好感度アップですよー！[p]
@jump target="*common2"

*kouhai2
#後輩
そうですか...残念です...[p]
#えそら
え？廃部とか聞いたのにこっち選びます？？？[r]
好感度ダウンです！[p]
[font  size="20"   ]
まぁどうせあとで強制的に入部させるけど...（ボソッ）[p]
[resetfont]
@jump target="*common2"

*common2
[chara_mod name="nanase" face="default"]
#えそら
後輩ちゃんとの出会いはそんなところですね[p]
じゃあ最後に先輩ちゃんを見に行きましょー！[p]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[chara_hide name="kouhai" ]
[bg storage="rouka.jpg" time="1000"]
[chara_show name="senpai" top="1" ]
[anim layer="message0" time="700" opacity="255" ]
[wait time="1000" ]
[cm]

先輩ちゃんは3年生で、なんと[l][r]
[font  size="40"  ]英空高校の生徒会長なのです！[resetfont][p]
青髪の子で、性格はおっとりめで天然不思議ちゃん[p]
そんな性格なのに生徒会長ってギャップがいいね～[p]
先輩ちゃんとの出会いは、主人公が職員室がどこかと廊下で迷っている時です[p]
困っている様子を見て、主人公に声をかけてくれます[p]
後輩ちゃん同様、この時は主人公が「ありがとうございます！」と言うだけで特に何もないよ[p]
急いでいたからね、仕方ないね[p]

先輩ちゃんとの再会は帰宅途中の道です[p]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[bg storage="zyutaku_yugata.jpg" time="1000"]
[anim layer="message0" time="700" opacity="255" ]
[wait time="1000" ]
[cm]
「今朝はありがとうございました」など少し話していると、家がお隣さんってことを知ります[p]
そこで一緒に帰る流れになり、そのまま会話しながら帰宅します[p]
いい雰囲気ですが...選択肢のお時間です！[p]

#先輩
ねぇ、生徒会に入らない？[p]

[glink  color="blue" size="28"  x="360"  width="500"  y="300"  text="は、入ります！"   target="*senpai1" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="400"  text="ちょ、ちょっと考えさせてください！"  target="*senpai2" ]
[s  ]

*senpai1
#先輩
よかった！明日からよろしくね！[p]
#えそら
[chara_mod  name="nanase" face="happy"]
いい感じですよ～！好感度アップ！[p]
@jump target="*common3"

*senpai2
#先輩
えぇ、分かったわ[p]
#えそら
判断が遅い！（低音ボイス）[r]
好感度ダウン！[p]
[font  size="20"   ]
結局あとで入るけどね...（ボソッ）[p]
[resetfont]
@jump target="*common3"


*common3
[chara_mod name="nanase" face="default"]
#えそら
綺麗で美しい先輩ちゃんとの出会いはこんなところですね[p]

ちなみに、ここの出会いのシーンの選択肢３つの全部を好感度ダウンの方を選んだら...[p]
#
[font size=50 color="red" ]
[delay speed=250]
GAME OVER[p]
[delay speed=30]
[resetfont]

#えそら
ってなるから気を付けてね！[p]
攻略対象の3人との出会いはそんな感じだよ！[p]
[chara_hide name="senpai" ]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[bg storage="bg.png" time="1000"]


@jump storage="scene1.ks" target="*next_common" 