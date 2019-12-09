# README

  サッカー好きのための、プロサッカーの情報や考察の投稿アプリです。

### 制作理由

  個人的にサッカーが好きで、たくさんの人とサッカーに関する情報を共有したいと考え作ろうと思いました。
  ※12/9現在、まだ制作中です。

### 苦労している点

  Dockerでの開発環境の構築をやってみたいと思い、Dockerの勉強中です。
  ローカル環境での構築には成功しましたが、本番環境へのデプロイはまだという段階です。
  デプロイはECSを使って行う予定ですが、目下苦戦中です。。。


## users

|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|
|profile_image|string||

### Association

- has_many :topics
- has_many :comments

## topics

|Column|Type|Options|
|------|----|-------|
|title|string||
|text|text||

### Association

- has_many :images
- has_many :comments

## images

|Column|Type|Options|
|------|----|-------|
|image|string||

### Association

- belongs_to :topic

## comments

|Column|Type|Options|
|------|----|-------|
|comment|text||

### Association

- belongs_to :user
- belongs_to :topic