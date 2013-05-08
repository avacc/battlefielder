class RemoveSquadIdFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :squad_id
  end

  def down
  end
end
