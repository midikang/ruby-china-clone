# ruby-china.org website clone
(Just learn to create this site from zero)

## create scaffold

- user
- section
- nodes
- topics
- reply
- counter

### scaffold commands
```
rails g scaffold user email passwd name location bio website avatar_file_name state:integer qq last_logined_at:datetime tagline
rails g scaffold section name sort:integer
rails g scaffold node name section:references sort:integer topics_count:integer summary
rails g scaffold topic title node:references body:text user:references replies_count:integer last_reply_user_id:integer replied_at:datetime source
rails g scaffold reply topic:references body:text user:references state:integer source
rails g scaffold counter key value
```
### db:migrate
rake db:migrate