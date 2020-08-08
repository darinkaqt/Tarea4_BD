class CreateMachines < ActiveRecord::Migration[6.0]
  def change
    create_table :machines do |t|
      t.string :model, limit: 30
      t.string :type, limit: 45
      t.string :description, limit: 100

      t.timestamps
    end
  end
end
