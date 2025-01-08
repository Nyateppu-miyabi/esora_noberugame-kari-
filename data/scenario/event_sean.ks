*event_sean

[cm ]
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
[chara_config ptext="chara_name_area" talk_focus="brightness"]

;このゲームで登場するキャラクターを宣言
;nanase
[chara_new  name="nanase" storage="chara/nanase/main_img1.png" jname="えそらちゃん" width="700" height="700"]
;キャラクターの表情登録
[chara_face name="nanase" face="happy"  storage="chara/nanase/main_img2.png" ]


[eval exp="f.esora_like = 0" ]

[chara_mod name="nanase" face="default" ]
#えそらちゃん
まずは5月から！[p]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[bg storage="room.jpg" time="1000"]
[anim layer="message0" time="700" opacity="225" ]
[wait time="1000" ]
[cm]
5月はヒロイン3人とも学校での日常パートだよ！[p]
本当はそれぞれのパートがあるんだけど...[r]
3パートもやるのは大変だから1パートだけやるね！[p]
早速選択肢を出すよ～[p]
まだ2時間目終わりだけど、お腹空いたな～[r]何か食べ物持ってませんか？[p]
[glink  color="blue" size="28"  x="360"  width="500"  y="200"  text="焼きそばパン"   target="*5gatu1" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="300"  text="パクチーのスナック菓子"   target="*5gatu2" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="400"  text="ガム"  target="*5gatu3" ]
[s]

*5gatu1
#えそらちゃん
[chara_mod  name="nanase" face="happy"]
学校で食べるパンといったらこれですよね！ありがとうございます！[p]
[chara_mod name="nanase" face="default"]
[eval exp="f.esora_like = f.esora_like + 2"]
@jump target="*next_6gatu"

*5gatu2
#えそらちゃん
・・・なんですか、そのお菓子...[l][r]
てか、それ食べ物ですか？人が食べるようなものじゃないですよ[p]
[eval exp="f.esora_like = f.esora_like - 1"]
@jump target="*next_6gatu"

*5gatu3
#えそらちゃん
ごまかしにはなりますよね～いただきます～[r]
[font  size="20"  ]（お腹を満たしたかったな...）[resetfont][p]
[eval exp="f.esora_like = f.esora_like + 1"]
@jump target="*next_6gatu"


*next_6gatu
#えそらちゃん
次に6月！[p]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[bg storage="6gatu.jpg" time="1000"]
[anim layer="message0" time="700" opacity="225" ]
[wait time="1000" ]
[cm]
6月は同級生ちゃんこと、花菜ちゃんとのストーリーだよ！[p]
6月は林間学校パートで、もう流れも決まってます！[r]
詳しい内容は別パートを見てね！[p]
ただ当初は修学旅行の予定だったから今回はそのシチュでいきます！[p]
それじゃあ選択肢を出すね[p]
ここの料理美味しかったですね～！あなたは特にどれが好きでした？[p]
[glink  color="blue" size="28"  x="360"  width="500"  y="200"  text="鯛の活け造り"   target="*6gatu1" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="300"  text="イナゴの佃煮"   target="*6gatu2" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="400"  text="お吸い物"  target="*6gatu3" ]
[s]

*6gatu1
#えそらちゃん
[chara_mod  name="nanase" face="happy"]
あなたもですか！ぼくもです！迫力あってすごかったですよね！[p]
[chara_mod name="nanase" face="default"]
[eval exp="f.esora_like = f.esora_like + 2"]
@jump target="*next_7gatu"

*6gatu2
#えそらちゃん
え、あれですか...ま、まぁ美味しかったですよね～...[l][r]
[font  size="20"  ]見た目がちょっと苦手でしたけど...[resetfont][p]
[eval exp="f.esora_like = f.esora_like - 1"]
@jump target="*next_7gatu"

*6gatu3
#えそらちゃん
お吸い物ですか～出汁が効いてて美味しかったですよね～[p]
[eval exp="f.esora_like = f.esora_like + 1"]
@jump target="*next_7gatu"



*next_7gatu
#えそらちゃん
今度は7月！[p]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[bg storage="okuzyou_yoru.jpg" time="1000"]
[anim layer="message0" time="700" opacity="225" ]
[wait time="1000" ]
[cm]
7月は後輩ちゃんこと、星ちゃんとのストーリーだよ！[p]
7月は部活パートで、もう流れも決まってます！[r]
詳しい内容は別パートを見てね！[p]
それじゃあ選択肢いっくよ～！[p]
天体観測のお供に何持ってきました？[p]
[glink  color="blue" size="28"  x="360"  width="500"  y="200"  text="ビール"   target="*7gatu1" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="300"  text="ポテトチップス"   target="*7gatu2" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="400"  text="金平糖"  target="*7gatu3" ]
[s]

*7gatu1
#えそらちゃん
一応舞台は高校生達の物語なので...飲酒は...[p]
[eval exp="f.esora_like = f.esora_like - 1"]
@jump target="*next_8gatu"

*7gatu2
#えそらちゃん
夜のポテチって背徳感あっていいですよね～！[p]
[eval exp="f.esora_like = f.esora_like + 1"]
@jump target="*next_8gatu"

*7gatu3
#えそらちゃん
[chara_mod  name="nanase" face="happy"]
お星さま食べてるみたい！いいもの持ってきましたね～！[p]
[chara_mod name="nanase" face="default"]
[eval exp="f.esora_like = f.esora_like + 2"]
@jump target="*next_8gatu"



*next_8gatu
#えそらちゃん
お次は8月！[p]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[bg storage="8gatu.jpg" time="1000"]
[anim layer="message0" time="700" opacity="225" ]
[wait time="1000" ]
[cm]
8月はどの子とのイベントにするか選択できるよ！[p]
選ぶ子によって、海か夏祭りになる予定だよ！[p]
水着の衣装がもう考えられてるから全員海パートの可能性もあるけど...[r]今回は夏祭りでいきます！[p]
どの屋台から行きます？[p]
[glink  color="blue" size="28"  x="360"  width="500"  y="200"  text="フライドポテト"   target="*8gatu1" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="300"  text="りんご飴"   target="*8gatu2" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="400"  text="激辛ヤンニョムチキン"  target="*8gatu3" ]
[s]

*8gatu1
#えそらちゃん
お祭りのフライドポテトってちょっと塩加減が強くて、そこがいい[r]ですよね～！[p]
[eval exp="f.esora_like = f.esora_like + 1"]
@jump target="*next_9gatu"

*8gatu2
#えそらちゃん
[chara_mod  name="nanase" face="happy"]
やっぱりお祭りに来たらりんご飴ですよね！[p]
おじさん！りんご飴10個ください！[p]
[chara_mod name="nanase" face="default"]
[eval exp="f.esora_like = f.esora_like + 2"]
@jump target="*next_9gatu"

*8gatu3
#えそらちゃん
え、激辛ですか...？ぼ、ぼくは買うの遠慮しておくので...[l][r]
[font  size="20"  ]様子見て大丈夫そうなら一個貰おう...[resetfont][p]
[eval exp="f.esora_like = f.esora_like - 1"]
@jump target="*next_9gatu"


*next_9gatu
#えそらちゃん
さてさて9月！[p]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[bg storage="9gatu.jpg" time="1000"]
[anim layer="message0" time="700" opacity="225" ]
[wait time="1000" ]
[cm]
9月は先輩ちゃんこと、セレナちゃんとのパートだよ！[p]
このパートは体育祭準備のパートで、もう流れも決まってます！[r]
詳しい内容は別パートを見てね！[p]
今回は準備じゃなくて、体育祭当日を想定して選択肢を出します！[p]
ぼくのためにお弁当作ってきてくれたのですよね？[r]何作ってきてくれたんですかー？[p]
[glink  color="blue" size="28"  x="360"  width="500"  y="200"  text="玉子焼き"   target="*9gatu1" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="300"  text="きんぴごぼう"   target="*9gatu2" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="400"  text="そうめん"  target="*9gatu3" ]
[s]

*9gatu1
#えそらちゃん
[chara_mod  name="nanase" face="happy"]
やったー！好きなお弁当のおかずランキング一位！トップオブトップ！[p]
[chara_mod name="nanase" face="default"]
[eval exp="f.esora_like = f.esora_like + 2"]
@jump target="*next_10gatu"

*9gatu2
#えそらちゃん
なかなか渋いですね～！甘辛くて好きですよ！[p]
[eval exp="f.esora_like = f.esora_like + 1"]
@jump target="*next_10gatu"

*9gatu3
#えそらちゃん
お、おぉ、そうめんですか！すごいの持ってきましたね...！[p]
[eval exp="f.esora_like = f.esora_like - 1"]
@jump target="*next_10gatu"


*next_10gatu
#えそらちゃん
続きまして10月！[p]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[bg storage="10gatu.jpg" time="1000"]
[anim layer="message0" time="700" opacity="225" ]
[wait time="1000" ]
[cm]
10月は文化祭！[p]
このパートからは３人から選べるようにする予定だよ！[r]
12月以降も全部同じようになります！[p]
[chara_mod  name="nanase" face="happy"]
まぁ今はぼくだけに集中してくださいね！[p]
[chara_mod name="nanase" face="default"]
それじゃあ食べに行きましょ～！[p]
[glink  color="blue" size="28"  x="360"  width="500"  y="200"  text="オムライス"   target="*10gatu1" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="300"  text="緑色のアイス"   target="*10gatu2" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="400"  text="アサイーボウル"  target="*10gatu3" ]
[s]

*10gatu1
#えそらちゃん
[chara_mod  name="nanase" face="happy"]
メイド喫茶でオムライス！萌え萌えキュン♡[p]
[chara_mod name="nanase" face="default"]
[eval exp="f.esora_like = f.esora_like + 2"]
@jump target="*next_12gatu"

*10gatu2
#えそらちゃん
抹茶アイスだけしか売ってないなんてめず[font size="25"]ら[resetfont][font size="20" ]し[resetfont][font size="15" ]い[resetfont]...[p]
[font size="50" ]これパクチーじゃねぇか！！[resetfont][p]
[eval exp="f.esora_like = f.esora_like - 1"]
@jump target="*next_12gatu"

*10gatu3
#えそらちゃん
今ダイエット食で流行ってますよね～食べてみたかったんですよ～[p]
[eval exp="f.esora_like = f.esora_like + 1"]
@jump target="*next_12gatu"




*next_12gatu
#えそらちゃん
時は流れ、12月！[p]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[bg storage="12gatu.png" time="1000"]
[anim layer="message0" time="700" opacity="225" ]
[wait time="1000" ]
[cm]
12月と言えばクリスマス！[p]
クリスマスの食べ物と言えば！[p]
[glink  color="blue" size="28"  x="360"  width="500"  y="200"  text="カラフルなパクチーサラダ"   target="*12gatu1" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="300"  text="チーズフォンデュ"   target="*12gatu2" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="400"  text="ローストチキン"  target="*12gatu3" ]
[s]

*12gatu1
#えそらちゃん
あ、じゃあ私は食べないので一人でクリスマスをお過ごしください[p]
[eval exp="f.esora_like = f.esora_like - 1"]
@jump target="*next_1gatu"

*12gatu2
#えそらちゃん
やったことなかったですけど、クリスマスにチーズフォンデュも[r]おしゃれでいいですね！[p]
[eval exp="f.esora_like = f.esora_like + 1"]
@jump target="*next_1gatu"

*12gatu3
#えそらちゃん
[chara_mod  name="nanase" face="happy"]
そうそう！持ち手に飾りのついてるローストチキンをかぶりついて[r]食べる！[p]
最高にクリスマスって感じですよね！[p]
[chara_mod name="nanase" face="default"]
[eval exp="f.esora_like = f.esora_like + 2"]
@jump target="*next_1gatu"



*next_1gatu
#えそらちゃん
やってきました1月！[p]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[bg storage="1gatu.png" time="1000"]
[anim layer="message0" time="700" opacity="225" ]
[wait time="1000" ]
[cm]
1月は初詣！あけましておめでとう！[p]
[chara_mod  name="nanase" face="happy"]
おっせちっ♪おっせちっ♪おっせちっ♪[p]
[glink  color="blue" size="28"  x="360"  width="500"  y="200"  text="（オードブルを出す）"   target="*1gatu1" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="300"  text="（お寿司を出す）"   target="*1gatu2" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="400"  text="（重箱を出す）"  target="*1gatu3" ]
[s]

*1gatu1
#えそらちゃん
[chara_mod name="nanase" face="default"]
おっせち...じゃないですけど、色んなものをみんなで食べれていい[r]ですよね！
[font  size="20"  ]あ、エビは入ってる、ラッキー[resetfont][p]
[eval exp="f.esora_like = f.esora_like + 1"]
@jump target="*next_2gatu"

*1gatu2
#えそらちゃん
[chara_mod name="nanase" face="default"]
おっせち...ま、まぁ豪華ですし...！全然嬉しいですよ...！[p]
[eval exp="f.esora_like = f.esora_like - 1"]
@jump target="*next_2gatu"

*1gatu3
#えそらちゃん
[chara_mod  name="nanase" face="happy"]
おっせちー！まずはエビでしょ？それから黒豆に～！栗きんとん！[r]あとあと～伊達巻きも！[p]
[chara_mod name="nanase" face="default"]
[eval exp="f.esora_like = f.esora_like + 2"]
@jump target="*next_2gatu"



*next_2gatu
#えそらちゃん
これがラストの月イベだよ！2月！[p]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[bg storage="2gatu.jpg" time="1000"]
[anim layer="message0" time="700" opacity="225" ]
[wait time="1000" ]
[cm]
2月といえばバレンタイン！[p]
[chara_mod  name="nanase" face="happy"]
もちろん「[sideDot]ア[sideDot]レ」用意してますよね？[p]
[glink  color="blue" size="28"  x="360"  width="500"  y="200"  text="巨大手作りチョコ"   target="*2gatu1" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="300"  text="ホワイトチョコ詰め合わせ"   target="*2gatu2" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="400"  text="板チョコ"  target="*2gatu3" ]
[s]

*2gatu1
#えそらちゃん
わかってますね～！手作りだし巨大！ありがとうございます！[p]
[chara_mod name="nanase" face="default"]
[eval exp="f.esora_like = f.esora_like + 2"]
@jump target="*next_koyu"

*2gatu2
#えそらちゃん
[chara_mod name="nanase" face="default"]
た、たくさんホワイトチョコが...！？[l][r]
う、嬉しいですけど...思ってたのとなんか違う...[p]
[eval exp="f.esora_like = f.esora_like - 1"]
@jump target="*next_koyu"

*2gatu3
#えそらちゃん
ふふっ、もしかして朝買ってきましたね？でも、用意してくれただけで嬉しいですよ！[p]
[chara_mod name="nanase" face="default"]
[eval exp="f.esora_like = f.esora_like + 1"]
@jump target="*next_koyu"



*next_koyu
#えそらちゃん
そして最後は固有イベント！[p]
これは好感度が一定以上だと発生するよ[p]
[chara_mod  name="nanase" face="happy"]
今回は絶対発生する仕様ってことで、ぼくに付き合ってね！[p]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[bg storage="koyu.jpg" time="1000"]
[anim layer="message0" time="700" opacity="225" ]
[wait time="1000" ]
[cm]
[chara_mod name="nanase" face="default"]
じゃあ固有イベント始めるね！[p]
ディナーを予約してくれてありがとう！どんなコースを用意して[r]くれたの？[p]
[glink  color="blue" size="28"  x="360"  width="500"  y="200"  text="フレンチ"   target="*koyu1" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="300"  text="スイーツ"   target="*koyu2" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="400"  text="エスニック料理"  target="*koyu3" ]
[s]

*koyu1
#えそらちゃん
[chara_mod  name="nanase" face="happy"]
わぁ！嬉しい！いつもよりもオシャレしてきてよかったです！[p]
あ、ワインもお願いしまーす！[p]
え？高校生達が主役の舞台だからやめとけって？[l][r]ぼくは別に飲めるからいいんだもーん！[p]
[chara_mod name="nanase" face="default"]
[eval exp="f.esora_like = f.esora_like + 2"]
@jump target="*next_3gatu"

*koyu2
#えそらちゃん
スイーツのコースなんてあるのですか！？珍しくて楽しみになって[r]きました...！[p]
[eval exp="f.esora_like = f.esora_like + 1"]
@jump target="*next_3gatu"

*koyu3
#えそらちゃん
えっと...その...緑のあれは入ってないですよね...？[p]
ちょっと食べる前ですけど、お腹の調子が悪くなってきたような...[l][r]
帰ってもいいですか...？[p]
[eval exp="f.esora_like = f.esora_like - 1"]
@jump target="*next_3gatu"



*next_3gatu
#えそらちゃん
ついにやってきました3月！[p]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[bg storage="3gatu.jpg" time="1000"]
[anim layer="message0" time="700" opacity="225" ]
[wait time="1000" ]
[cm]
3月はもちろん卒業式！ついに告白の日がやってきました[p]
さぁ、どの子にするか選んでね！[p]
[glink  color="blue" size="28"  x="360"  width="500"  y="200"  text="えそらちゃん"   target="*last" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="300"  text="ナナセちゃん"   target="*last" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="400"  text="慧空ナナセ"  target="*last" ]
[if exp="f.esora_like === 20" ]
[glink  color="blue" size="28"  x="1020"  width="100"  y="400"  text="？？？"  target="*last2" ]
[endif]
[s]

*last
#えそらちゃん
[chara_mod  name="nanase" face="happy"]
まぁ全部一緒なんですけどね！[p]
[chara_mod name="nanase" face="default"]
じゃあ結果を発表しますね...！[p]
今回の結果は...[p]
[if exp="f.esora_like >= 15" ]
[chara_mod  name="nanase" face="happy"]
おめでとうございます！ハッピーエンドです！[l][r]
かなり好感度が高いです！[p]

[elsif exp="f.esora_like >= 12" ]
惜しい...！あと一息でハッピーエンドでした...！[l][r]
ほんとあともう少しです...！[p]

[elsif exp="f.esora_like >= 1" ]
まだまだですね～バッドエンドです！[l][r]
もっと好感度を気にしましょう！[p]

[else]
全然ダメです！バッドエンドです！[l][r]
好感度0！逆にすごいです...[p]
[endif]
[chara_mod  name="nanase" face="happy"]
これでシステムはバッチリですね！[p]
[chara_mod name="nanase" face="default"]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]

@jump storage="scene1.ks" target="*select_part1"  


*last2
#えそらちゃん
お！この選択肢を選べたということは...[p]
[chara_mod  name="nanase" face="happy"]
おめでとうございます！好感度最高です！[l][r]
ぼくのこと分かってますね～！嬉しいですね～！[p]
こういう隠しエンドも作れたら楽しそうですよね！[p]
これでシステムはバッチリですね！[p]
[chara_mod name="nanase" face="default"]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]

@jump storage="scene1.ks" target="*select_part1"
