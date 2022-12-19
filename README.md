# アプリケーション名
### TOLExiT
<br>

# アプリ概要
各々のユーザーが街中のトイレ情報を登録でき、また登録されたトイレ情報を閲覧できるアプリです。
<br>
<br>

# 制作動機
私自身お腹があまり強くなく、外出先で焦りながらトイレを探し回った経験が何度かあります。

そんな時、近くのトイレを探せられるアプリがあったら良いなという思いから本アプリを制作しました。
<br>
<br>

# 使用方法
## トップページの見方
ユーザーが登録したトイレが表示されます。
![トップページ](https://drive.google.com/uc?export=view&id=18ACh3x9QNIAemq_Swwinmgu3LDBF6uon)
<br>
<br>

## トイレ情報の登録方法
![トイレ情報登録画面](https://drive.google.com/uc?export=view&id=1G1sgnd-yOGoC71qNzmZwVcXlxzHc35mk)
<br>
<br>

## トイレ情報詳細ページ
登録したトイレ情報の詳細が表示されます。
![トイレ情報詳細ページ](https://drive.google.com/uc?export=view&id=1UhVS1bV9XE5mkFS3RFc6gwxFgV0oYrNR)
<br>
<br>

## マイページ
![マイページ](https://drive.google.com/uc?export=view&id=18PipOHjjLrIzpNZgV_YvwZADTbRT78mC)
<br>
<br>

# 機能一覧
- ユーザーログイン機能(deviseを使用)
- トイレ情報登録機能
- マップ機能(Google Maps APIを使用)
- レスポンシブ対応

# ER図
![ER図](https://drive.google.com/uc?export=view&id=1G6lvoona0QMEYJToE7fKo_Ni9spF8ZAj)

# 拘った点
- Model, Request, System Specの3種類のテストを用いた開発
- UIの分かりやすさ・使いやすさ(弟に使用してもらい調整を行いました)

# 苦労した点
- System Specにおいて、Seleniumの特性の理解に多くの時間を費やしてしまったこと。
- Google Maps APIにおいて挙動が分からない部分あり、実装に苦戦したこと。
