class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :photos
  
  validates :name, presence: true, length: { maximum: 50, minimum: 3}
  validates :address, presence: true
  validates :description, presence: true
end
