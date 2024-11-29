;ティラノスクリプトサンプルゲーム

*start

[cm]
[clearfix]
[start_keyconfig]


[bg storage="bg.png" time="100"]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore frame="massage_box_blue.png" margint="70" marginl="40" marginr="40" marginb="55" opacity="225" ]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" size=30 bold=true x=200 y=520]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;nanase
[chara_new  name="nanase" storage="chara/nanase/main_img1.png" jname="えそらちゃん" width="700" height="700"]
;キャラクターの表情登録
[chara_face name="nanase" face="happy"  storage="chara/nanase/main_img2.png" ]


;キャラクター登場
[chara_show  name="nanase"]
#???
[sideDot]小[sideDot]惑[sideDot]星[sideDot]え[sideDot]そ[sideDot]らからやってきた異星人！[p]
野望は宇宙掌握のVTuber！[p]
えそらちゃんこと、慧空ナナセと申します！[p]
#えそらちゃん
これは今計画している「恋愛ノベルゲーム」のシステム例だよ！[p]
これからどんなシステムを考えているか、試しにやっていくよ～！[p]
準備はいい？[p]

[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="300"  text="いいよ！"  target="*select1"  ]
[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="400"  text="ちょっと待って！"  target="*select2"  ]
[s  ]

*select1
[chara_mod  name="nanase" face="happy"  ]
#えそらちゃん
それじゃあいくよ！[p]
@jump target="*common"

*select2
[chara_mod  name="nanase" face="happy"  ]
#えそらちゃん
それじゃあいくよ！（強制）[p]
@jump target="*common"

*common
#えそらちゃん
[chara_mod name="nanase" face="default"]

まずは、どんなノベルゲームなのか説明していくね！[p]
今回目指しているゲームは、恋愛シミュレーションの[r]
「[underLine]ギ[underLine]ャ[underLine]ル[underLine]ゲ[underLine]ー」だよ[p]
攻略対象は3人で、それぞれにえそらちゃんの要素がすこーしだけ[r]含まれているんだ[p]
物語の舞台は「[underLine]高[underLine]校[underLine]の[underLine]学[underLine]園[underLine]も[underLine]の」で、高校の名前は「[ruby text="え"]英[ruby text="そら" ]空高校」って[r]いう中高一貫の私立学校だよ[p]
主人公はそこに転校してきた高校2年生！平均的な感じで、物語の最初になんやかんやあって天文部に入って生徒会副会長になるよ！[p]
それじゃあ攻略対象の子たちを1人ずつ、簡単な出会いのシーンも[r]踏まえて見て行こうか！[p]
@jump storage="deai_sean.ks" target="*deai_sean"  

*next_common
[anim layer="message0" time="700" opacity="225" ]
[wait time="1000" ]
[cm]
#えそらちゃん
[chara_mod  name="nanase" face="happy"]
それじゃあ、ここからは「どんなゲームシステムで考えているのか」という話をしていくよ！[p]
[chara_mod name="nanase" face="default"]

まず1年間の物語の予定で、オープニングの4月とエンディングの3月を[r]除いて、全部で12イベントを予定しているよ[p]
5～10月、12～2月と固有フラグイベントを予定していて、5月だけは[r]ヒロイン全員とのイベントが発生するよ！[p]
その他の月は会う人が決まっていたり、自分で選択したり...[r]
と色々なパターンがあるから後で説明するね！[p]
固有フラグイベントっていうのは、好感度が一定以上超えたら発生する特別なイベントなんだ！[p]
そして3月に主人公が告白するイベントが発生するんだ[p]
好感度にかかわらず、ヒロイン3人から1人を選ぶことができるよ[p]
そして、好感度によって「ハッピーエンド」と「バッドエンド」が[r]決まるんだ！[p]
1人につき2つのエンド、つまり最低でも6エンドあることは決まって[r]います！[p]
どんな話になるかは定期的にみんなで会議しながら決めているから、[r]ぜひ配信に来て参加してね！[p]
とりあえず、これはデモ版だから、なんとなくシステムを理解して[r]もらうために...[p]
[chara_mod name="nanase" face="happy"]
ぼくがヒロインになるから、簡単にゲームを体験していこー！[p]

@jump storage="event_sean.ks" target="*event_sean"  


*end_talk
[bg storage="bg.png" time="1000"]
[anim layer="message0" time="700" opacity="225" ]
[wait time="1000" ]
[cm]
#えそらちゃん
いかがでしたか？[p]
現時点で決まっているゲームシステムはこんなところです！[p]
まだまだ決まってないことも多いし、今回体験してもらった流れから[r]ガラッと変わるかもしれません[p]
でも、絶対にいいゲームになると思うので、ぜひみんなの力を合わせて[r]作り上げましょう！
[font  size="15"]それにこれ作ってる人がもっとシステム覚えたらもっと色々なことも...！[resetfont][p]
というわけで！[l][r]
今回のゲームはここまでにしたいと思います！[p]
プレイして下さってありがとうございました！[l][r]
また次回の改良版でお会いしましょう！[p]
[chara_mod  name="nanase" face="happy"]
[font size="40"]
おつナナでした～！[p]
[resetfont]
[chara_hide name="nanase" ]
@layopt layer="message" visible=false
[hidemenubutton]

@jump storage="title.ks"
[s]
