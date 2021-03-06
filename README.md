# Trouver
<img src="https://user-images.githubusercontent.com/76669464/113236119-451fb400-92df-11eb-8eb3-d03fbcf7a836.png" alt="img" align="center">


## サイト概要
旅行の1日の日程を管理するアプリです。  
予定を立てても順番通りにいかないことも多いと思うので、やりたいことを自由に移動させて気ままな旅ライフをサポートします。  
いろんな人たちと旅の記憶や見どころを共有してみてください！

### サイトテーマ
「ちいさな発見も大事にする」サイト

### テーマを選んだ理由
xx:xx ◯◯に行く  
xx:yy △△へ移動  
...  
のような予定表だと思わぬ掘り出し場があったときに予定が練り直しにくい！と感じているかたも多いのではないでしょうか？  
Trouverは 気ままに旅を楽しむ + やり忘れをなくす ために予定を動かして自由度の高い予定表を作成できる機能を持ったwebアプリケーションになっております。
また投稿機能も備え、旅の最中にふらりと道を外れたら意外と良い場所があった！という体験を共有し、旅ライフを盛り上げられればと考えこのアプリケーションを作りました。


### ターゲットユーザ
旅行が好きな人、柔軟に計画を変えたい人

### 主な利用シーン
旅行に行けない間に他の方の投稿を眺めたりすることで次の旅行のプランにつなげることができる。
旅行中に1日の流れを一目でわかるように、急なアクシデントが起こっても自分のペースで楽しめる計画づくりに利用していただけます。

## 設計書
[テーブル定義書](https://docs.google.com/spreadsheets/d/1dEdgay9_17TdhS86fL5NNz_GVxSBzqoNvfXdN3fBZXk/edit?usp=sharing)
[ER図](https://drive.google.com/file/d/16swp0ExnWR12Az9YPqEz2Fh6hv6M00Ue/view?usp=sharing)

* ユーザー登録/ログイン機能(devise)
* 投稿機能
   * 画像投稿機能(ImageMagick, refile-mini_magick)
   * 動画の表示(youtube)
* 検索機能
* SNS認証機能
* ブックマーク/お気に入り機能
* 日程表(Ajax)

## 機能一覧
<https://docs.google.com/spreadsheets/d/1wtoO4Gqmq-3DD85Eyp4Ur_n9ePESO568cGIGGAifYLE/edit?usp=sharing>

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby(2.6.3),SQL
- フレームワーク：Ruby on Rails(5.2.5)
- JSライブラリ：jQuery
- IDE：Cloud9

## 使用素材
[Logo Garden](https://www.logogarden.com)

