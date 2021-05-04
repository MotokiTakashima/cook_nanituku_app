class AddRecipeToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :recipe, :string
  end
end
