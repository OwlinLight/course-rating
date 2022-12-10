class AddSurveysTable < ActiveRecord::Migration[7.0]
  def change
    create_table :surveys do |t|
      t.integer :rating
      t.string :comment
      t.integer :student_id
      t.integer :presentation_id

      t.timestamps
    end

    # Add foreign keys to reference the "users" and "presentations" tables
    add_foreign_key :surveys, :users, column: :student_id
    add_foreign_key :surveys, :presentations
  end
end