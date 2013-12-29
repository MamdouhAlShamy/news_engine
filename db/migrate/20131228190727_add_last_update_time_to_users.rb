class AddLastUpdateTimeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :LastUpdateTime, :datetime
  end
end
