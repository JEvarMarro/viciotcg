class CreateCards < ActiveRecord::Migration[8.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :number
      t.integer :cost
      t.integer :power
      t.string :tags
      t.integer :counter
      t.string :trigger
      t.string :description

      t.timestamps
    end
  end
end
