Yelp
Business Page
Search / filters
Reviews / ratings
Map
Bonus: Mark reviews funny, cool, useful etc.
Bonus: Profile
Bonus: Friends

# Schema
## Users
| column name     | data type | details                   |
|-----------------|-----------|---------------------------|
| id              | integer   | not null, primary key     |
| firstname       | string    | not null                  |
| lastname        | string    | not null                  |
| nickname        | string    | not null                  |
| avatar_url      | string    | not null                  |
| email           | string    | not null, indexed, unique |
| session_token   | string    | not null, indexed, unique |
| password_digest | string    | not null                  |
| created_at      | datetime  | not null                  |
| updated_at      | datetime  | not null                  |

## Restaurant
| column name    | data type| details               |
|----------------|----------|-----------------------|
| id             | integer  | not null              |
| state          | string   | not null              |
| zip            | number   | not null              |
| city           | string   | not null              |
| street         | country  | not null              |
| address        | string   | not null              |
| phone          | string   | not null              |
| website        | string   | not null              |
| average rating | float    | not null              |
| price range    | float    | not null              |
| create_at      | datetime | not null              |
| updated_at     | datetime | not null              |

## Open Hours
| column name   | data type| details  |
|---------------|----------|----------|
| restaurant_id | integer  | not null |
| day_of_week   | integer  | not null |
| open_time     | integer  | not null |
| close_time    | integer  | not null |
| created_at    | datetime | not null |
| updated_at    | datetime | not null |

## Food Type
| column name   |data type| not null |
|---------------|---------|----------|
| restaurant_id | integer | not null |
| type          | string  | not null |
| created_at    | integer | not null |
| updated_at    | integer | not null |

## Extra Business Info
| restaurant_id | integer  | details  |
|---------------|----------|----------|
| label         | string   | not null |
| value         | string   | not null |
| created_at    | datetime | not null |
| updated_at    | datetime | not null |

## Photos
| column name   |data type | details  |
|---------------|----------|----------|
| restaurant_id | integer  |          |
| review_id     | integer  |          |
| user_id       | integer  | not null |
| description   | text     | not null |
| image_url     | string   | not null |
| created_at    | datetime | not null |
| updated_at    | datetime | not null | 

## Reviews
| column_name | data_type | details  |
|-------------|-----------|----------|
| user_id     | integer   | not null |
| date        | datetime  | not null |
| num_stars   | float     | not null |
| content     | text      | not null |
| num_useful  | float     | not null |
| created_at  | datetime  | not null |
| updated_at  | datetime  | not null |