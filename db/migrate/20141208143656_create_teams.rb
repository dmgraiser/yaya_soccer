class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :article_id
      t.integer :wins
      t.integer :loses

      t.timestamps
    end
  end
end
