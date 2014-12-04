class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.boolean :publishable
      t.string :video
      t.text :part1
      t.string :quiz1
      t.string :q1answer
      t.string :q1wrong1
      t.string :q1wrong2
      t.text :part2
      t.string :quiz2
      t.string :q2answer
      t.string :q2wrong1
      t.string :q2wrong2
      t.text :part3
      t.string :quiz3
      t.string :q3answer
      t.string :q3wrong1
      t.string :q3wrong2

      t.timestamps
    end
  end
end
