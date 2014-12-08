class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :team_id
      t.integer :article_id
      t.integer :goals

      t.timestamps
    end
  end
end
