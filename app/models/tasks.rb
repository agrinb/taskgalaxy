class Tasks < ActiveRecord::Base
  belongs_to :tasklist
  has_one :user
end
