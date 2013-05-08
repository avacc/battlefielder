class CreateJoinTableUsersSquads < ActiveRecord::Migration
  def up
    create_table :squads_users, :id => false do |t|
      t.integer :user_id
      t.integer :squad_id
    end
  end

  def down
    drop_table :squads_users
  end
end
