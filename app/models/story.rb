class Story < ActiveRecord::Base
  has_many :reads
  has_many :users, through: :reads
attr_accessible :about_attributes, :story_id, :category_id, :provider_id, :title, :details, :img, :url, :created_at, :updated_at,:relate1,:relate2, :LastUpdateTime
end
