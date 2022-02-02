class User < ApplicationRecord
  validates_uniqueness_of :username
  scope :all_except, ->(user) { where(:id => user.id) }
end
