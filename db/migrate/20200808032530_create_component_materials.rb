class CreateComponentMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :component_materials do |t|
      t.references :component, null: false, foreign_key: true
      t.references :material, null: false, foreign_key: true
      t.integer :quantity
      t.string :measure_unit, limit: 10

      t.timestamps
    end
  end
end
