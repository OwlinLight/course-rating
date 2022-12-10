class AddGroupIdToPresentations < ActiveRecord::Migration[7.0]
  def change
    add_column :presentations, :group_id, :integer, index: true
  end
end
