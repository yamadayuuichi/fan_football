# README

## users

|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|
|profile_image|string||

### Association

- has_many :topics
- has_many :comments