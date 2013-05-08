class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :time
      t.integer :squad_id

      t.timestamps
    end
  end
end
