class AddKlassesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :klasses do |t|
      t.string :name
      t.integer :teacher_id

      t.timestamps
    end

    # Add a foreign key to reference the "users" table
    add_foreign_key :klasses, :users, column: :teacher_id
  end
end