class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :user_id
      t.string :note
      t.string :date

      t.timestamps

    end
  end
end
