class Student < ApplicationRecord
  belongs_to :group

  validates :buckid, uniqueness: true, presence: true
  validates :lname, presence: true
end
