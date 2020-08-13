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

- has_many :posts, through: :favorite
- has_many :favorites
- has_many :comments

## postsテーブル

| Column  | Type | Options     |
| ------- | ---- | ----------- |
| content | text | null: false |
| image   | text |             |
| video   | text |             |

### Association

- has_many :comments
- has_many :favorites
- has_many :users, through: :favorite

## commentsテーブル

| Column  | Type | Options     |
| ------- | ---- | ----------- |
| content | text | null: false |
| user_id | references | foreign_key: true |
| menu_id | references | foreign_key: true |

### Association

- belongs_to :post
- belongs_to :user

## favoriteテーブル

| Column  | Type | Options     |
| ------- | ---- | ----------- |
| user_id | references | foreign_key: true |
| menu_id | references | foreign_key: true |

### Association

- belongs_to :post
- belongs_to :user



This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
