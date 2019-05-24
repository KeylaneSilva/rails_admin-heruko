class CreateCadastros < ActiveRecord::Migration[5.2]
  def change
    create_table :cadastros do |t|
      t.string :brand
      t.string :model
      t.string :board
      t.string :color
      t.float :rental_value
      t.string :note

      t.timestamps
    end
  end
end
