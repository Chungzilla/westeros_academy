class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :photo
      t.string :username
      t.string :email
      t.string :password
      t.references :house_id
      t.references :userable, polymorphic: true

      t.timestamps
    end
  end
end

