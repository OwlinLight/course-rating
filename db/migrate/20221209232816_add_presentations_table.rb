class AddPresentationsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :presentations do |t|
      t.string :title
      t.string :description
      t.integer :student_id
      t.integer :event_id

      t.timestamps
    end

    # Add foreign keys to reference the "users" and "events" tables
    add_foreign_key :presentations, :users, column: :student_id
    add_foreign_key :presentations, :events
  end
end