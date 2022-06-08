class TableRelations < ActiveRecord::Migration[7.0]
  def change
    change_table :donations do |t|
      remove_column :donations, :category_id
      t.belongs_to :category, index: true
    end
  end
end
