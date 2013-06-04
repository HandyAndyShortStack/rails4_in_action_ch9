class Ticket < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  has_many :assets

  attr_accessible :description, :title, :asset, :assets_attributes

  validates :title, :presence => true
  validates :description, :presence => true, :length => { :minimum => 10 }

  accepts_nested_attributes_for :assets
end
