class AddEventsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.integer :class_id

      t.timestamps
    end

    # Add a foreign key to reference the "classes" table
    add_foreign_key :events, :classes
  end
end