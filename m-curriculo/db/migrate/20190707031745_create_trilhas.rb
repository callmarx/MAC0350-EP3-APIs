class CreateTrilhas < ActiveRecord::Migration[5.2]
  def change
    create_table :trilhas do |t|
      t.string :nome, null: false

      t.timestamps
    end
  end
end
