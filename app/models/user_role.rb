class UserRole < ActiveRecord::Base
  attr_accessible :name

  has_many :users
  
  validates :name, presence: true
end
