# テーブル設計

## users テーブル

| Column             | Type   | Options                            |
| ------------------ | ------ | ---------------------------------- |
| last_name          | string | null: false                        |
| first_name         | string | null: false                        |
| email              | string | null: false,unique:true            |
| encrypted_password | string | null: false                        |
| birthday           | date   | null: false                        |
| phone              | string | null: false                        |

### Association

- 
- 
- 

## store テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| store_name         | string     | null: false                    |
| postal_code        | text       | null: false                    |
| prefecture_id      | integer    | null: false                    |
| city               | string     | null: false                    |
| address            | string     | null: false                    |
| building           | string     | null: false                    |
| tel                | string     | null: false                    |
| person             | string     | null: false                    |

### Association

- 
- has_many :comments
- has_one  :order

## informations テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| store_name         | string     | null: false                    |
| postal_code        | string     | null: false                    |
| prefecture_id      | integer    | null: false                    |
| city               | string     | null: false                    |
| address            | string     | null: false                    |
| building           | string     | null: false                    |
| tel                | string     | null: false                    |
| area_id            | integer    | null: false                    |
| genre_id           | integer    | null: false                    |
| budget_id          | integer    | null: false                    |
| room_id            | integer    | null: false                    |
| drink_style_id     | integer    | null: false                    |
| food_style_id      | integer    | null: false                    |
| space_id           | integer    | null: false                    |
| location_id        | integer    | null: false                    |
| service_id         | integer    | null: false                    |
| food_id            | integer    | null: false                    |
| drink_id           | integer    | null: false                    |
| store              | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item


## receipts テーブル

| Column    | Type       | Options                        |
| ----------| ---------- | ------------------------------ |
| price     | string     | null: false                    |
| date      | string     | null: false                    |
| time      | string     | null: false                    |
| name      | string     | null: false                    |
| user      | references | null: false, foreign_key: true |
| store     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :store

## reservations テーブル

| Column    | Type       | Options                        |
| ----------| ---------- | ------------------------------ |
| name      | string     | null: false                    |
| date      | string     | null: false                    |
| time      | string     | null: false                    |
| user      | references | null: false, foreign_key: true |
| store     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :store

## comments テーブル

| Column    | Type       | Options                        |
| ----------| ---------- | ------------------------------ |
| text      | text       | null: false                    |
| user      | references | null: false, foreign_key: true |
| store     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item

