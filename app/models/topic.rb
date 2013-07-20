class Topic < ActiveRecord::Base
  attr_accessible :description, :title, :url

  has_many :votes, dependent: :destroy

  validates :description, :title, :url, presence: true
end
