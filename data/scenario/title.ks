
[cm]

@clearstack
@bg storage ="title.png" time=100
@wait time = 200

*start 
[playbgm storage="main_bgm.ogg" ]

[button x=135 y=260 graphic="title/button_start.png" enterimg="title/button_start2.png"  target="gamestart"]
[button x=135 y=410 graphic="title/button_load.png" enterimg="title/button_load2.png" role="load" ]
[button x=135 y=560 graphic="title/button_config.png" enterimg="title/button_config2.png" role="sleepgame" storage="config.ks" ]

[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="scene1.ks"



