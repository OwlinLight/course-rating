class Presentation < ApplicationRecord
  # TODO: teacher should assign presentation to GROUP or USER
  # belongs_to :event
  # Temperorily user
  belongs_to :group, optional: true
  belongs_to :student, optional: true
  has_many :surveys
  has_many :students, class_name: "User", through: :surveys
end
