This page gives you a quick overview of what you need to do to start using Paperclip. You can also check out [this swanky demo app](https://github.com/thoughtbot/paperclip_demo), too.

In your model:

``` ruby
  class User < ActiveRecord::Base
    attr_accessible :avatar
    has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  end
```

In your migrations:

``` ruby
  class AddAvatarColumnsToUsers < ActiveRecord::Migration
    def self.up
      add_attachment :users, :avatar
    end

    def self.down
      remove_attachment :users, :avatar
    end
  end
```

(Or you can use migration generator: `rails generate paperclip user avatar`)

In your edit and new views:

``` rhtml
  <%= form_for @user, :url => users_path, :html => { :multipart => true } do |form| %>
    <%= form.file_field :avatar %>
  <% end %>
```

In your controller:

``` ruby
  def create
    @user = User.create( params[:user] )
  end
```

In your show view:


``` rhtml
  <%= image_tag @user.avatar.url %>
  <%= image_tag @user.avatar.url(:medium) %>
  <%= image_tag @user.avatar.url(:thumb) %>
```

To detach a file, simply set the attribute to `nil`:

``` ruby
  @user.avatar = nil
  @user.save
```