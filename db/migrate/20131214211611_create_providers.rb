class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.integer :provider_id
      t.string :name
      t.string :url
      t.string :img

      t.timestamps
    end
  end
end
