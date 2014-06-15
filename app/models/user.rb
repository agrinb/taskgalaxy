class User < ActiveRecord::Base
  has_many :tasklists, through: :users_task_lists
end
