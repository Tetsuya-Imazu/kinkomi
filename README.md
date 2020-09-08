# 筋コミ

筋コミは筋トレ動画の投稿、閲覧ができるアプリケーションを作成しました。
ユーザーを登録すると筋トレ動画を投稿できるようになります。自身の投稿は
編集と削除をすることができます。

## 接続先情報

(https://kinkomi.herokuapp.com/)

## 開発環境

Ruby / Ruby on Rails / MySQL / GitHub / Heroku / Visual Studio Code / Trello

## テスト用アカウント

email: test@test.com
password: test1234

## 利用方法

WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。
接続先およびログイン情報については、上記の通りです。

### 投稿方法

テストアカウントでログイン→ヘッダーの「新着投稿」横のメニューボタン押下→「投稿する」ボタン押下
→投稿内容入力→投稿

## 目指した課題解決

筋トレ初心者の「何から始めたらいいか分からない」「長続きしない」などの課題を解決したいと考えたからです。同じ悩みを持った境遇の人達がこのアプリケーションを通じてコミュニケーションを取り合い、トレーニングをすることによって筋トレを習慣化することができると考えました。

## 要件定義

(https://docs.google.com/spreadsheets/d/1hXcy_4E3Z2YypzKF_VYKTmtZ6fKb6eT9wE5SRJv3sI4/edit?usp=sharing)

## アプリの特徴

(https://gyazo.com/14d06de8aeb48fef62d8035808d62532)
1. ヘッダーのハンバーガーメニューを押下→投稿するボタン

(https://gyazo.com/f984b309f04a7a8eafaf950b07ae72bb)
2. 投稿する際にカテゴリーを選択します

(https://gyazo.com/62e9e4d08b814bb782934dd492517241)
3. 1のメニュー内にカテゴリーごとに投稿が保存されているので、その日鍛えたい部位の投稿を見ることができます。

## 実装予定の機能

1. 画像投稿対応（食事メニューの投稿、ダイエットの経過報告ができるようにしたいと考えています）
2. プロフィール・フォロー機能（そのユーザーが筋トレ歴何年なのかを確認でき、自分の体に合ったトレーニングをチョイスすることができると考えています）


# テーブル設計

## usersテーブル

| Column                | Type   | Options     |
| --------------------- | ------ | ----------- |
| nickname              | string | null: false |
| email                 | string | null: false |
| password              | string | null: false |
| password_confirmation | string | null: false |

### Association

- has_many :posts
- has_many :likes
- has_many :comments

## postsテーブル

| Column  | Type | Options     |
| ------- | ---- | ----------- |
| name    | text | null: false |
| description | text | null: false |
| category_id | integer | null: false |
| video   | text | null: false |

### Association

- has_many :comments
- has_many :likes
- has_many :users

## commentsテーブル

| Column  | Type | Options     |
| ------- | ---- | ----------- |
| text    | text | null: false |
| user_id | references | foreign_key: true |
| menu_id | references | foreign_key: true |

### Association

- belongs_to :post
- belongs_to :user

## likesテーブル

| Column  | Type | Options     |
| ------- | ---- | ----------- |
| user_id | integer |          |
| post_id | integer |          |

### Association

- belongs_to :post
- belongs_to :user


[ER図](https://drive.google.com/file/d/1PgJF4qmbfMJnBsp96xo6_IBshyWK8fhz/view?usp=sharing)
)

