# APP URL
- https://toraposu.herokuapp.com/

# ログイン
- Mail:aaa@aaa.jp
- Password:aaaaaa1

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
| adress             | string     | null: false                    |
| price              | integer    | null: false                    |
| facilities         | text       | null: false                    |
| check_in_hour      | integer    | null: false                    |
| check_in_minutes   | integer    | null: false                    |
| check_out_hour     | integer    | null: false                    |
| check_out_minutes  | integer    | null: false                    |
| others_infomation  | text       | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association
- belongs_to :user