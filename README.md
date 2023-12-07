# Table design
## Users table

|   COLUMN    |  TYPE  |            OPTIONS            |
|-------------|--------|-------------------------------|
| email       | string | null: false, uniqueness: true |
| password    | string | null: false                   |
| nickname    | string | null: false                   |
| profile     | text   | null: false                   |
| affiliation | text   | null: false                   |
| position    | text   | null: false                   |

### Associations
- has_many :prototypes
- has_many :comments


## Prototypes table

|   COLUMN   |     TYPE     |             OPTIONS            |
|------------|--------------|--------------------------------|
| name       | string       | null: false                    |
| catch_copy | string       | null: false                    |
| concept    | string       | null: false                    |
| user       | references   | null: false, foreign_key: true |


### Associations
- has_one_attached :image
- belongs_to :user
- has_many :comments


## Comments table

|   COLUMN   |     TYPE     |             OPTIONS            |
|------------|--------------|--------------------------------|
| content    | string       | null: false                    |
| user       | references   | null: false, foreign_key: true |
| prototype  | references   | null: false, foreign_key: true |

### Associations
- belongs_to :user
- belongs_to :prototype