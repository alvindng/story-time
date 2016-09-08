class CreateContributions < ActiveRecord::Migration[5.0]
  def change
    create_table :contributions do |t|
      t.column :sentence, :string
      t.column :user, :string
      t.column :story_id, :integer

      t.timestamps
    end
  end
end
