class User < ActiveRecord::Base
  validates_presence_of :email, :name, :passwd

  STATE = {
    :normal => 1,
    :blocked => 2
    }
end
