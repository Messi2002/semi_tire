# README

# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :tweets
- has_many :comments


## tweets テーブル

| Column | Type       | Options                        |
| ------ | -----------| ------------------------------ |
| content| text       | null: false                    |
| user   | references | null: false, foreign_key: true |

### Association

- has_many :comments
- belongs_to :user

## comments テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| content| text       | null: false                    |
| user   | references | null: false, foreign_key: true |
| tweet  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :tweet

