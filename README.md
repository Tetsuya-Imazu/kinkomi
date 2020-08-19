# README

# テーブル設計

## usersテーブル

| Column                | Type   | Options     |
| --------------------- | ------ | ----------- |
| nickname              | string | null: false |
| email                 | string | null: false |
| password              | string | null: false |
| confirmation_password | string | null: false |

### Association

- has_many :posts, through: :like
- has_many :likes
- has_many :comments

## postsテーブル

| Column  | Type | Options     |
| ------- | ---- | ----------- |
| content | text | null: false |
| image   | text |             |
| video   | text |             |

### Association

- has_many :comments
- has_many :likes
- has_many :users, through: :like

## commentsテーブル

| Column  | Type | Options     |
| ------- | ---- | ----------- |
| content | text | null: false |
| user_id | references | foreign_key: true |
| menu_id | references | foreign_key: true |

### Association

- belongs_to :post
- belongs_to :user

## likeテーブル

| Column  | Type | Options     |
| ------- | ---- | ----------- |
| user_id | references | foreign_key: true |
| menu_id | references | foreign_key: true |

### Association

- belongs_to :post
- belongs_to :user

## ER図https://drive.google.com/file/d/1PgJF4qmbfMJnBsp96xo6_IBshyWK8fhz/view?usp=sharing