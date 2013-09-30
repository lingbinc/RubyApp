class User < ActiveRecord::Base
  attr_accessible :id, :name, :password
end
