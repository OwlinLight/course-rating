class User < ApplicationRecord
  has_many :surveys
  has_many :presentations, through: :surveys
  # belongs_to :group
end
