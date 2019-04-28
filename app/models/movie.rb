class Movie < ApplicationRecord
  has_one_attached :poster
  has_many :comments,
  :dependent => :destroy


end
