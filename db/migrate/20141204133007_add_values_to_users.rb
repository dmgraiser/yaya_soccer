class AddValuesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :parental_approval, :boolean
    add_column :users, :editor, :boolean
    add_column :users, :publisher, :boolean
  end
end
