class Post < ActiveRecord::Base
  validates :title, presence: true
  # :presence => true
end
