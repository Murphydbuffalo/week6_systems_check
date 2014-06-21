class AddBodyToReviews < ActiveRecord::Migration
  def up
    add_column :reviews, :body, :string, null: false
  end

  def down
    remove_column :reviews, :body
  end
end
