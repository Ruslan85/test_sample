class Micropost < ActiveRecord::Base
  attr_accessible :body, :email
end
