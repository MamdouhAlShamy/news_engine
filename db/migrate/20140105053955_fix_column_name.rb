class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :users, :LastUpdateTime, :last_update_time
  end
end
