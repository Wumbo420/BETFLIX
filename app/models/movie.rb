class Movie < ApplicationRecord
  has_many :comment,dependent: :destroy
end
