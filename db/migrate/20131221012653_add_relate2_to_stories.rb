class AddRelate2ToStories < ActiveRecord::Migration
  def change
    add_column :stories, :relate2, :integer
  end
end
