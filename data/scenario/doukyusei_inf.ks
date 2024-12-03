*doukyusei_inf

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
[chara_new  name="doukyuusei" storage="chara/doukyuusei/doukyuusei.png" jname="花菜" ]



[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[bg storage="room.jpg" time="1000"]
[chara_show name="doukyuusei" top="1"]
[anim layer="message0" time="700" opacity="225" ]
[wait time="1000" ]
[cm]
@jump target="*doukyusei_inf_select" 


*doukyusei_inf_select
#えそらちゃん
どのことについて知りたいですか？[p]

[glink  color="blue" size="28"  x="360"  width="500"  y="100"  text="花菜の詳細・告白イベントについて"   target="*doukyusei_inf_1" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="200"  text="5月イベントについて"  target="*doukyusei_inf_2" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="300"  text="花菜のイベント月（6月）について"  target="*doukyusei_inf_3" ]
[glink  color="blue" size="28"  x="360"  width="500"  y="400"  text="終わる"  target="*doukyusei_inf_fin" ]
[s]


*doukyusei_inf_1
#えそらちゃん
花菜ちゃんの詳細と告白イベントについて、一緒に話していきますね！[p]
また簡単な紹介からしますね～[p]
本名は[font color="pink" edge=black][ruby text="もも" color=black]桃[ruby text="せ" color=black]瀬　[ruby text="は" color=black]花[ruby text="な" color=black]菜[resetfont]
[r]高校2年生で、主人公と同じクラスだよ[p]
性格は元気で明るいキュートな女の子って感じです！[p]
そして、花菜ちゃんの一番重要な要素が...！[p]
[font size="40"]主人公の幼馴染なのです！[resetfont][p]
花菜ちゃんは主人公がクラスに入ってきたときに気付いているけど、[r]主人公は気づいてないんだよね...[p]
ストーリーの進行中は幼馴染ってことを匂わせていって、[r]告白のタイミングでカミングアウトする予定だよ[p]
そんな告白のシーンなんだけど、過去の2人のエピソードが回想されるよ[p]
2人は一緒の幼稚園でした。[r]花菜ちゃんは一人でシロツメクサの花冠を作っていました。[p]
そんなところに悪ガキがやってきて花冠を壊してしまいます。[p]
そこへ主人公がやってきて、泣いていた花菜ちゃんを助けてあげます。[r]
主人公は不器用ながら花冠を流してあげます。[p]
そんな主人公の優しさに花菜ちゃんは惚れて告白します。[p]
しかし、主人公はその場では返事を濁してしまいます。[r]
そして返事をしっかりしないまま主人公は引っ越してしまいました。[p]
・・・と過去のお話はそんなところですね～！[p]
そして現在、今度は主人公から告白しています。[p]
そんな状況に花菜ちゃんはこう言います！[p]
#花菜
あの時とは逆だね、あの時は私から告白したんだよ？覚えてる？[p]
#えそらちゃん
このセリフはハッピーエンドでもバットエンドでも言われるよ[p]
ハッピーエンドでは照れながら、バットエンドでは蔑みながら言います[p]
ハッピーエンドはそのまま2人で過去を懐かしみながら結ばれ、[r]最後はシロツメクサの花畑のカットへ行きます[p]
ちなみに、なんでシロツメクサなの？って点ですが、クローバーの[r]花言葉が「約束」「私のものになって」であったり、[p]
シロツメクサ自体の花言葉が「私を忘れないで」「誠の愛」[r]「真実の友情」というのがあるからだよ！[p]
そしてバットエンドですが、主人公が過去のことを覚えておらず、[r]花菜ちゃんの気持ちも変わってしまいます...[p]
#花菜
今更なんなの[p]
#えそらちゃん
と蔑まれ、結ばれることなくバッドエンドへ行ってしまいます...[p]
という感じが花菜ちゃんの詳細と告白イベントの内容だよ！[p]
[wait time="1000" ]
@jump target="*doukyusei_inf_select" 


*doukyusei_inf_2
#えそらちゃん
5月のイベントについて話していきますね！[p]
出会いのシーンにも少し関係あるのですが、花菜ちゃんは学級委員長をやっています！[p]
可愛くてしっかりものな花菜ちゃんはクラスでも人気者で人望も[r]あります！[p]
そのため、4月には主人公の校舎案内役を買って出ます[r]
[font size="20"]幼馴染で主人公が好きっていうのもあるけど...[resetfont][p]
5月はそんな花菜ちゃんのちょこっと職権乱用（？）しているところが[r]見られるイベントです！[p]
内容は「席替えで隣の席になる」というものです。[p]
新学期から1か月経ち、[p]
#花菜
先生！そろそろ席替えがしたいです～！[p]
#えそらちゃん
という話になります。[p]
決め方はくじ引きで、その準備と主催は花菜ちゃんがします。[p]
理由はもちろん学級委員長だからです。他意はないですよ？[p]
・・・まぁ建前で、実は花菜ちゃんは主人公と隣になれるように細工[r]しちゃいます。[p]
まず花菜ちゃんが最初に引き、自分の席を確定させます。[r]
席の場所は窓際の一番後ろの席の右隣です。[p]
人気者な花菜ちゃんの隣になりたい！と主人公以外の男子たちは躍起になります。[p]
みんな引いていき、最後に引くのは主人公。引いた結果は...！[p]
窓際の一番後ろの席！[p]
みんなが新しい席についてから花菜ちゃんが一言！[p]
#花菜
わー！主人公くん！よろしくー！[p]
#えそらちゃん
そこで選択肢が3つ出ます。1個ずつ説明していくね！[p]
まずは「う～～ん...よろしく...」という選択肢です。[r]
この微妙な反応はもちろん好感度ダウンです。[p]
次は「窓際の一番後ろなんてラッキー！」という選択肢です。[r]
席は喜んでくれたので、これは好感度ダウンはせず変化なしです。[p]
最後は「委員長が隣でよかったー！」です。[r]この選択肢を選んだ時点で好感度アップします。そして、[p]
#花菜
でしょでしょー！幸運だね～なんでも頼ってくれて良いからね！[p]
#えそらちゃん
と言ってくれます！そしてまた選択肢が出ます。今回は2つです。[p]
「頼りにしてるよ、苦労ばっかりかけるけどよろしく」と[r]
「委員長が隣で[sideDot]い[sideDot]い[sideDot]ん[sideDot]調[sideDot]子ー！なんつて[font size="24"]w[resetfont]」の2択です。[p]
「頼りに～」の方はさらに好感度アップ、寒いダジャレは好感度[r]変わらず、という結果になります。[p]
明らかな寒いダジャレに隠れているけど、実は「苦労ばっかり」にも[r]ダジャレが隠れているんだ[p]
花菜ちゃんはシロツメクサをキーにしているため、「[ruby text="ク"]苦[ruby text="ロー" ]労[ruby text="バー"]ばっかり」という伏線になっています[p]
[chara_mod  name="nanase" face="happy"]
よくできてるでしょ！この案（ダジャレ含めて）はえそらちゃんが[r]考えたんだよ！[p]
[chara_mod name="nanase" face="default"]
ちなみにこの時点では細工していることは匂わせないで隠すつもり[r]だよ！[p]
こんな感じの内容が5月イベントになります！[p]
[wait time="1000" ]
@jump target="*doukyusei_inf_select" 


*doukyusei_inf_3
#えそらちゃん
花菜ちゃんのイベント月についてですね！[p]
花菜ちゃんの専用イベントがある月は6月になっています！[p]
まだ詳しい内容は決まってないのですが...今までの会議の話だと多分[r]修学旅行になる予定だよ[p]
今後詳しい内容の会議があるからぜひ参加してね！[p]
[wait time="1000" ]
@jump target="*doukyusei_inf_select" 


*doukyusei_inf_fin
#えそらちゃん
分かりました！では最初の場所に戻りますね！[p]
[anim layer="message0" time="700" opacity="0" ]
[wait time="1000" ]
[chara_hide name="doukyuusei" ]
[bg storage="bg.png" time="1000"]
[anim layer="message0" time="700" opacity="225" ]
[wait time="1000" ]
[cm]

@jump storage="scene1.ks" target="*select_part2"  