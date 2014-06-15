class UsersTaskLists < ActiveRecord::Base
  has_many :tasklist
  has_many :users
end
