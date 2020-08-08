class CreateComponents < ActiveRecord::Migration[6.0]
  def change
    create_table :components do |t|
      t.string :description, limit: 100
      t.integer :resistance_impact

      t.timestamps
    end
  end
end
