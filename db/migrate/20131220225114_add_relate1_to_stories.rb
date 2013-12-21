class AddRelate1ToStories < ActiveRecord::Migration
  def change
    add_column :stories, :relate1, :integer
  end
end
