class Follow < ActiveRecord::Base
attr_accessible :me, :light
  
  validates_uniqueness_of :me, :scope => :light
end
