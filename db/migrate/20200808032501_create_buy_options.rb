class CreateBuyOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :buy_options do |t|
      t.references :material, null: false, foreign_key: true
      t.string :company_name, limit: 20
      t.integer :price
      t.datetime :date

      t.timestamps
    end
  end
end
