class CreateChildrenChecks < ActiveRecord::Migration
  def change
    create_table :children_checks do |t|
      t.integer :child_id
      t.integer :activity_id
      t.string :category #can be in/out
      t.datetime :timestamp

      t.timestamps null: false
    end

    add_index :children_checks, :child_id
    add_index :children_checks, :activity_id
    add_index :children_checks, :category
  end
end
