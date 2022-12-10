class Presentation < ApplicationRecord
  # TODO: teacher should assign presentation to GROUP or USER
  # belongs_to :event
  # Temperorily user
  has_many :students, class_name: "User", through: :surveys
end
