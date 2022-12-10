class Survey < ApplicationRecord
  belongs_to :presentation
  belongs_to :student, class_name: "User"

  validates :rating, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 10,
    message: "Rating must be an integer between 1 and 10"
  }
end
