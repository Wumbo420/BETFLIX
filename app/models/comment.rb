class Comment < ApplicationRecord
  belongs_to :movie
  validates :comment, :name, presence: true

end
