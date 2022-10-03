class AddTitleToCategory < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :title, :string, null: false
  end
end
