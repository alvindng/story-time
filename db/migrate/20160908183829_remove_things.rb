class RemoveThings < ActiveRecord::Migration[5.0]
  def change
    drop_table :images
    add_column :contributions, :image, :string
  end
end
