class AddCategoryIdForPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :category, null: false
  end
end
