class CreateDonations < ActiveRecord::Migration[7.0]
  def change
    create_table :donations do |t|
      t.text :name
      t.text :description
      t.text :category
      t.boolean :claimed, default: false

      t.timestamps
    end
    add_column :donations, :donor_id, :bigint, null: false
    add_column :donations, :donee_id, :bigint
    add_foreign_key :donations, :users, column: :donor_id
    add_foreign_key :donations, :users, column: :donee_id
  end
end
