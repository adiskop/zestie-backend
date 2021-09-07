MODELS

## _USER_

### Attributes

name
username
password

has_many :dishes, through: :cuisines




## _DISH_

### Attributes

name
picture
ingredients
directions
cook_time
yield

belongs_to :cuisine





## _CUISINE_

### Attributes

country
picture

has_many :dishes





## _COMMENT_

### Attributes

content

belongs_to :user
belongs_to :dish