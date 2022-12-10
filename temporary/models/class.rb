class Class < ApplicationRecord
  belongs_to :teacher
  has_many :events
end
