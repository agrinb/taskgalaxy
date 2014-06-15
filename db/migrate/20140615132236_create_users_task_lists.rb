class CreateUsersTaskLists < ActiveRecord::Migration
  def change
    create_table :users_task_lists do |t|
      t.integer :user_id
      t.integer :tasklist_id

      t.timestamps
    end
    add_index :users_task_lists, :user_id
    add_index :users_task_lists, :tasklist_id
  end
end
