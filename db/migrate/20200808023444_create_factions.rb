class CreateFactions < ActiveRecord::Migration[6.0]
  def change
    create_table :factions do |t|
      t.string :name_faction, limit: 30
      t.integer :rebel?

      t.timestamps
    end
  end
end
