class CreateCombos < ActiveRecord::Migration[5.2]
  def change
    create_table :combos do |t|
      t.string :input
      t.string :result

      t.timestamps
    end
  end
end
