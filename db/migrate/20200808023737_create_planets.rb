class CreatePlanets < ActiveRecord::Migration[6.0]
  def change
    create_table :planets do |t|
      t.string :name_local, limit: 45
      t.references :faction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
