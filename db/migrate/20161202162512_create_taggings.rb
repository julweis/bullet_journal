class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :note_id
      t.integer :list_id

      t.timestamps

    end
  end
end