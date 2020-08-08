class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name, limit: 25
      t.string :lastname, limit: 30
      t.integer :age
      t.references :planet, null: false, foreign_key: true
      t.references :faction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
