class CreateExtras < ActiveRecord::Migration[5.0]
  def change
    create_table :extras do |t|
      t.string :equipment, null: false
      t.float :cost, null: false

      t.timestamps(null: false)
    end
  end
end
