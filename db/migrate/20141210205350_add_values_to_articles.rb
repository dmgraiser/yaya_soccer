class AddValuesToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :team_id, :integer
    add_column :articles, :player_id, :integer
  end
end
