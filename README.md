# README

# アプリケーション名<br>
## 「morning-walk」
[![Image from Gyazo](https://i.gyazo.com/b9dbea763bea9592286444911d9d755b.jpg)](https://gyazo.com/b9dbea763bea9592286444911d9d755b)
# アプリケーション概要

朝散歩を習慣化させるためのアプリです<br>
散歩記録を一覧にして、ユーザー同士で交流ができます。<br>
# URL
https://morning-walk.herokuapp.com/

# テスト用アカウント
email 「user1@com」<br>
パスワード 「111aaa」

# 利用方法
## 散歩記録投稿
①トップページのヘッダーから新規登録をする<br>
②散歩記録を投稿ボタンから投稿する<br>（散歩時間とコメント、任意で画像）<br>
## 他のユーザーを励ます
①投稿一覧ページからいいねボタンを押せる<br>
②投稿ページでコメントが投稿できる

# 制作背景
アプリを制作するにあたって、「身近な誰かの課題解決をする事」を目標にしました。<br>
そこで自分の父が抱えている「朝散歩を継続できない」という悩みを解決することにしました。<br>
話を聞く中で、<br>
①散歩仲間がいない<br>
②効果を実感できない<br>
という部分に原因があると分析。<br>
そこで、散歩した記録をカレンダーや数値で可視化でき、他の朝散歩ユーザーと励まし合えるアプリケーションを制作しました。<br>

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1okqhUDbNDVzRCqnddqWx9yc4Apwopo8e3pdwBJBuUjQ/edit

# こだわったポイント
 ## ①散歩記録を可視化
・投稿するとカレンダーに色が塗られ継続率が分かります。<br>
・朝4時~11時までに投稿すると「朝散歩スタンプ」が貰えます。<br>
・散歩日数、散歩時間が表示され実績が分かります。<br>

[![Image from Gyazo](https://i.gyazo.com/a93cf1bded0bd84fb1147e195b05422e.png)](https://gyazo.com/a93cf1bded0bd84fb1147e195b05422e)



## ②ユーザー同士で交流
・コメント機能<br>
・お気に入り機能
[![Image from Gyazo](https://i.gyazo.com/5284ea126703ee826548676247ba9469.jpg)](https://gyazo.com/5284ea126703ee826548676247ba9469)

# 実装した機能
|  機能|  gem |
| ---- | ---- |
| 投稿機能  |    |
|  いいね機能|    |
| コメント機能  |  Action Cable  |
|  ログイン・新規登録|  devise  |
| カレンダー機能 |  simple-calender  |

# 実装予定機能
①ソート機能。投稿一覧でソートができるようにします<br>
②フォロー機能<br>
③歩数計と連動<br>
④javascriptでの画面遷移

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/f53596a758fce9e1d7f43170cc6a8ce8.png)](https://gyazo.com/f53596a758fce9e1d7f43170cc6a8ce8)

# 開発環境
フロントエンド<br>
・HTML<br>
・CSS<br>
・Bootstrap<br>
バックエンド<br>
・Ruby<br>
・Ruby on Rails<br> 
インフラ<br>
・MySQL<br>
・AWS<br>
テキストエディタ<br>
・Visual Studio Code<br>
テスト<br>
・RSpec<br>






