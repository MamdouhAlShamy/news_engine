class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :category_id
      t.integer :provider_id
      t.text :name
      t.string :rss_url
      t.string :img

      t.timestamps
    end
  end
end
