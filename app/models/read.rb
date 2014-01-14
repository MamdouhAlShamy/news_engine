class Read < ActiveRecord::Base
  belongs_to :user
  belongs_to :story
  attr_accessible :user_id, :story_id
  
  validates_uniqueness_of :user_id, :scope => :story_id
end
