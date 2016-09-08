class CreateStory < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.column :name, :string
      t.column :image, :string

      t.timestamps
    end
  end
end
