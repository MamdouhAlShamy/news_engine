class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.integer :me
      t.integer :light

      t.timestamps
    end
  end
end
