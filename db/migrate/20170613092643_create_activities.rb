class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :campsite_id

      t.timestamps null: false
    end

    add_index :activities, :campsite_id
  end
end
