class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.integer :buckid
      t.string :fname
      t.string :lname
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
