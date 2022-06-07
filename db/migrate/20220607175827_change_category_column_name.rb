# Renaming category column to category_id to better reflect the model.
class ChangeCategoryColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :donations, :category, :category_id
  end
end
