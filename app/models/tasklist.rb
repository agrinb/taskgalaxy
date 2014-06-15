class TaskList < ActiveRecord::Base
   has_many :tasks, dependent: :destroy
   has_many :users, through: :users_task_lists
end
