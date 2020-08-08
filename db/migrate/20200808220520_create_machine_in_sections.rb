class CreateMachineInSections < ActiveRecord::Migration[6.0]
  def change
    create_table :machine_in_sections do |t|
      t.references :machine, null: false, foreign_key: true
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
