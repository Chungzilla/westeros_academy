class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :motto
      t.string :photo
      t.sting :colors
      t.string :sigil

      t.timestamps
    end
  end
end
