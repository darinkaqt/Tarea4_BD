class CreateMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :materials do |t|
      t.references :planet, null: false, foreign_key: true
      t.string :name, limit: 50
      t.string :description, limit: 100

      t.timestamps
    end
  end
end
