class CreateChildrenActivities < ActiveRecord::Migration
  def change
    create_table :children_activities do |t|
      t.integer :child_id
      t.integer :activity_id

      t.timestamps null: false
    end

    add_index :children_activities, :child_id
    add_index :children_activities, :activity_id
  end
end
