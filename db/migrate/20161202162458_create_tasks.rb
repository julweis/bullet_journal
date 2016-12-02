class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task
      t.string :task_signifier
      t.string :task_status
      t.integer :user_id
      t.date :date

      t.timestamps

    end
  end
end
