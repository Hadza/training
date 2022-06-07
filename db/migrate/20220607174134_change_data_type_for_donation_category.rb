# Change data type for category_id to bigint
class ChangeDataTypeForDonationCategory < ActiveRecord::Migration[7.0]
  def change
    change_table :donations do |t|
      t.change :category, :bigint, null: false, using: 'Category::bigint'
      add_foreign_key :donations, :categories, column: :category
    end
  end
end
