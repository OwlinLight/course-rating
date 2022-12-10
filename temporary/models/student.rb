class Student < ApplicationRecord
  has_one :user
  # before_create :generate_profile

  belongs_to :group

  # def generate_profile
  #   self.build_user
  # end
end
