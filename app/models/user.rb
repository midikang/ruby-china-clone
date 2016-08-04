class User < ActiveRecord::Base
  validates_presence_of :email, :name, :passwd
  has_attached_file :avatar,
    :default_style => :normal,
    :styles => {
      :small => "16x16#",
      :normal => "48x48#",
      :large => "80>",
    },
    #:url => "#{APP_CONFIG['upload_url']}/:class/:attachment/:hashed_path/:id_:style.jpg",
    #:path => "#{APP_CONFIG['upload_root']}/:class/:attachment/:hashed_path/:id_:style.jpg",
    :default_url => "images/avatar/:style.jpg"

  STATE = {
    :normal => 1,
    :blocked => 2
    }
end
