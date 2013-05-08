class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gamer_tag
      t.string :preffered_class
      t.integer :squad_id
      t.string :gender
      t.boolean :battlelog

      t.timestamps
    end
  end
end
