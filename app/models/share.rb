class Share < ActiveRecord::Base
attr_accessible :user_id, :story_id
  
  validates_uniqueness_of :user_id, :scope => :story_id
end
