# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
## stores テーブル
|種類|column|type|options|
|:---:|:---:|:---:|:---:|
|店名|store_name|string|null: false|
|メールアドレス|email|string|null: false|
|パスワード|password|string|null: false|
### Association
- has_many workers
- has_many users
- has_many reservations

## workersテーブル
|種類|column|type|options|
|:---:|:---:|:---:|:---:|
|担当者|workers_name|string|null: false|
||store|references|foreign_key: true,null: false|
### Association
- has_many users
- has_many reservations

## usersテーブル
|種類|column|type|options|
|:---:|:---:|:---:|:---:|
|苗字|family_name|string|null: false|
|名前|first_name|string|null: false|
|苗字(かな)|family_name_kana|string|null: false|
|名前(かな)|first_name_kana|string|null: false|
|メールアドレス|email|string|null: false|
|年齢|age|integer|null: false|
|電話番号|number|string|null: false|
||store|references|foreign_key: true,null: false|
| |worker|references|null: false,foreign_key: true|
### Association
- has_many reservations
- belongs_to worker
- belongs_to store

## reservationsテーブル
|種類|column|type|options|
|:---:|:---:|:---:|:---:|
|日時|date|date|null: false|
|所要時間|time|integer|null: false|
|金額|charge|integer|null: false|
||store|references|foreign_key: true,null: false|
| |workers|references|null: false,foreign_key: true|
| |user|references|null: false,foreign_key: true|
### Association
- belongs_to store
- belongs_to user
- belongs_to worker

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
