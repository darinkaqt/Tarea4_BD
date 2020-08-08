class CreateComponentInMachines < ActiveRecord::Migration[6.0]
  def change
    create_table :component_in_machines do |t|
      t.references :component, null: false, foreign_key: true
      t.references :machine, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
