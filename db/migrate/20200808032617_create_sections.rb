class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.string :coordinate, limit: 5
      t.string :specialization, limit: 20

      t.timestamps
    end
  end
end
