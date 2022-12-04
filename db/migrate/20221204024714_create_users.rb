class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password
      t.belongs_to :student
      t.belongs_to :teacher
      t.timestamps
    end
  end
end
