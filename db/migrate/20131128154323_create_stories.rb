class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.integer :story_id
      t.integer :provider_id
      t.integer :category_id
      t.text :title
      t.text :details
      t.string :img
      t.string :url

      t.timestamps
    end
  end
end
