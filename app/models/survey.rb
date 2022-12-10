class Survey < ApplicationRecord
  belongs_to :presentation
  belongs_to :student, class_name: "User"
end
