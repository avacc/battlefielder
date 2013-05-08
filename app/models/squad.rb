class Squad < ActiveRecord::Base
  belongs_to :leader, :class_name => User
  has_and_belongs_to_many :users, :uniq => true
  has_many :games
  accepts_nested_attributes_for :games
  validates :leader, :presence => true

  attr_accessible :leader_id, :name
end
