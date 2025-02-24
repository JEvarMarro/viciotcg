class CreateGameSets < ActiveRecord::Migration[8.0]
  def change
    create_table :game_sets do |t|
      t.string :name
      t.date :release_date

      t.timestamps
    end
  end
end
