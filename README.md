# テーブル設計

## users テーブル

| column             | Type   | Options                   |
| -------------------| -------| --------------------------|
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association
- has_many :hotels

## hotels テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| name               | string     | null: false                    |
| check_in           | string     | null: false                    |
| check_out          | string     | null: false                    |
| price              | integer    | null: false                    |
| bed_type           | text       | null: false                    |
| facility           | text       | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association
- belongs_to :user