class CreateSurveys < ActiveRecord::Migration[7.0]
  def change
    create_table :surveys do |t|
      t.integer :score
      t.text :comment
      t.boolean :submitted
      t.references :event, null: false, foreign_key: true
      t.references :audience, null: false, foreign_key: true
      t.references :presenter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
