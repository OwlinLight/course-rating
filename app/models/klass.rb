class Klass < ApplicationRecord
    belongs_to :teacher, class_name: "User"
    has_many :student, class_name: "User"
end
