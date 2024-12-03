*kouhai_inf

[cm ]
[clearfix]
[start_keyconfig]

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

;ヒロイン
[chara_new name="kouhai" storage="chara/kouhai/kouhai.png" jname="星" ]



[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[bg storage="room.jpg" time="1000"]
[chara_show name="kouhai" top="1"]
[anim layer="message0" time="700" opacity="225" ]
[wait time="1000" ]
[cm]

@jump target="*kouhai_inf_select" 


*kouhai_inf_select
#えそらちゃん
どのことについて知りたいですか？[p]

[glink  color="blue" size="28"  x="360"  width="500"  y="100"  text="星の詳細・告白イベントについて"   target="*kouhai_inf_1" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="200"  text="5月イベントについて"  target="*kouhai_inf_2" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="300"  text="星のイベント月（7月）について"  target="*kouhai_inf_3" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="400"  text="終わる"  target="*kouhai_inf_fin" ]
[s]


*kouhai_inf_1
#えそらちゃん
星ちゃんの詳細と告白イベントについて、一緒に話していきますね！[p]
また簡単な紹介からしますね～[p]
本名は[font color="yellow" edge=black][ruby text="くろ" color=black]黒[ruby text="さき" color=black]咲　[ruby text="ひかり" color=black]星[resetfont][r]
高校1年生で、中等部からの内部進学生だよ[p]
性格はしっかりものでクールなツンデレ[r]
そして部活は天文部に所属しているよ[p]
ただこの天文部、先輩が卒業しちゃって今は部員が1人、廃部の危機に[r]直面しているんだ...[p]
なんで星ちゃんが天文部にいるのかは、お兄ちゃんの影響があるんだ[p]
[ruby text="ほし"]星好きの3歳差の兄の影響で[ruby text="ほし"]星が好きになり、よく2人で[ruby text="ほし"]星を見つける[r]勝負をしていたよ[p]
そんな兄が英空高校の天文部を作ったんだ！[p]
部活を存続させるためには部員を増やす必要がある、そのために成果をあげて宣伝しよう！と星ちゃんは考えます[p]
また兄は昔から「新しい[ruby text="ほし"]星が欲しい！」という夢を持っていたため、[p]
星ちゃんも新しい[ruby text="ほし"]星を見つけることが夢であり、成果にしようと[r]しています[p]
という感じが星ちゃんの詳細になります[p]
ここからは告白イベントについて話していきます！[p]
告白方法は天文部の部室で、主人公自作のプラネタリウムをつけて告白します。[p]
まずは告白が成功するパターンについて説明していきますね～[p]
天井に映し出された星々の中に、ひと際目立つ星座の線で「ＬＯＶＥ」の文字が...！[p]
[layopt layer="1" visible="true" ]
[image layer="1" x="550" y="300" storage="../fgimage/mirror_LOVE.png" time="500"]
と思いきや、作る際に反転させるのを間違い、画像のような反転した「ＬＯＶＥ」が映し出されます[p]
こんなポンミスをしちゃいましたが、切り替えてまじめに告白をします[p]
[freeimage layer="1" time="500"]
#主人公
似合わないことするもんじゃぁないね。好きです。[r]付き合ってください。[p]
#えそらちゃん
星ちゃんはその告白にOKを出します！[p]
その後、2人はプラネタリウムで[ruby text="ほし"]星を見ます。[p]
二人はいい雰囲気になり、キスしようとします...！[p]
しかし、頭がゴツンとぶつかってしまい、その場では笑いあって[r]シーンを終えます。[p]
後日、隕石がぶつかって新しい星ができるところを撮影しニュースに[r]なります！[p]
ぶつかって出会った二人の始まりと重なり、幸せな形で結ばれましたとさ。[p]
めでたしめでたし！[p]
というのがハッピーエンドのほうになります。[p]
次はバッドエンドについてですが、このルートではしっかりと自作[r]プラネタリウムで「ＬＯＶＥ」が映し出されます[p]
そして主人公が告白の一言！[p]
#主人公
この[sideDot]惑[sideDot]星で君とワク[sideDot]ワ[sideDot]ク[sideDot]生活を送りたい！[sideDot]星のように輝く君が[sideDot]ほ[sideDot]しい！[p]
#えそらちゃん
その言葉に星ちゃん一言！[p]
#星
きもっ...[p]
#えそらちゃん
・・・と結ばれることなくエンディングを迎えます。[p]
こんな感じの内容が星ちゃんの詳細と告白イベントの内容だよ！[p]
[wait time="1000" ]
@jump target="*kouhai_inf_select" 


*kouhai_inf_2
#えそらちゃん
5月のイベントについて話していきますね！[p]
5月は天文部の活動になります！[p]
部活の軽い詳細的には、週一回に部室か屋上、または野外での活動に[r]なります。[p]
このイベントでの内容は部室での座学です！[r][ruby text="ほし"]星の知識はほぼない主人公に後輩ちゃんが教えてくれます。[p]
まず最初にいきなりクイズが出されます。[p]
#星
5月に見える星座で代表的なものと言えばなんでしょうか！[p]
#主人公
ギョウ座[p]
#星
[playse storage="../sound/onaka.mp3" ]
[wait time="1000" ]
・・・[p]
ち、違います...！[p]
正解は北斗七星です！[p]
#えそらちゃん
お腹を鳴らしながら星ちゃんが教えてくれます。かわいらしいですね！[p]
その後、授業をして最後に復習テストが出されます。[p]
#星
問題です！5月に見える星座で代表的なものと言えば北斗七星ですが、[r]北斗七星は何座の一部でしょうか？[p]
#えそらちゃん
ここで好感度分岐の選択になります。[p]
1つ目は「土下座」です。言わずもがな好感度ダウンです。[r]その回答に星ちゃんの反応は[p]
#星
正座して反省してください[p]
#えそらちゃん
本当に好感度ダウンか微妙ですが、ダジャレを交えて返してくれます。[p]
次の選択肢は「おおいぬ座！」です。これは「惜しい...！」と言って[r]くれますが、好感度に変動はありません。[p]
最後の選択肢は「おおぐま座！」です。この選択肢を選んだ時点で[r]好感度アップです！[p]
この選択肢を選ぶと次のように言ってくれます。[p]
#星
正解！では、おおぐま座に対してこぐま座もある、〇か×か[p]
#えそらちゃん
「×」を選ぶと好感度変更なし、「〇」と答えるとさらに好感度が[r]あがり、[p]
#星
おお！[sideDot]こ[sideDot]ん[sideDot]ぐ[sideDot]まっちゅれーしょん！[p]
#えそらちゃん
とダジャレで返してくれます。星ちゃんノッてますね～[p]
こんな感じの内容が5月イベントになります！[p]
[wait time="1000" ]
@jump target="*kouhai_inf_select" 


*kouhai_inf_3
#えそらちゃん
星ちゃんのイベント月についてですね！[p]
星ちゃんの専用イベントがある月は7月になっています！[p]
まだ詳しい内容は決まってないのですが...今までの会議の話だと多分[r]部活パートになる予定だよ[p]
今後詳しい内容の会議があるからぜひ参加してね！[p]
[wait time="1000" ]
@jump target="*kouhai_inf_select" 


*kouhai_inf_fin
#えそらちゃん
分かりました！では最初の場所に戻りますね！[p]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[chara_hide name="kouhai" ]
[bg storage="bg.png" time="1000"]
[anim layer="message0" time="700" opacity="225" ]
[wait time="1000" ]
[cm]

@jump storage="scene1.ks" target="*select_part2"  