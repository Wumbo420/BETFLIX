class Movie < ApplicationRecord
  has_many :comment,dependent: :destroya
end
