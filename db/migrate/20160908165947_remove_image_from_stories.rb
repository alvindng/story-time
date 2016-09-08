class RemoveImageFromStories < ActiveRecord::Migration[5.0]
  def change
    remove_column :stories, :image
  end
end
