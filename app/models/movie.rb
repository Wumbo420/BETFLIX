class Movie < ApplicationRecord
  has_one_attached :poster
  has_many :comments,
  :dependent => :destroy
  validates :title, :rating, :genres,:desc, presence: true


end
