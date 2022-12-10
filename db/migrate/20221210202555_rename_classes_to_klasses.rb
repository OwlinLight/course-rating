class RenameClassesToKlasses < ActiveRecord::Migration[7.0]

  def rename_class(old_name, new_name)
    rename_table old_name, new_name
  end
  def change
    rename_class :classes, :klasses
  end

end
