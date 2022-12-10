class AddGroupsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :class_id

      t.timestamps
    end

    # Add a foreign key to reference the "classes" table
    add_foreign_key :groups, :classes
  end
end