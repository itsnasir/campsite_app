class CreateActivityChildren < ActiveRecord::Migration
  def change
    create_table :activity_children do |t|
      t.integer :child_id
      t.integer :activity_id

      t.timestamps null: false
    end
  end
end
