class RemoveGameIdFromUserGames < ActiveRecord::Migration[7.0]
  def change
    remove_column :user_games, :game_id, :integer
  end
end
