class User < ApplicationRecord

  validates :email, uniqueness: { message: "This email address is already in use. Please choose a different one." }

  has_many :surveys, foreign_key: "student_id"
  has_many :presentations, through: :surveys

  belongs_to :klass

  belongs_to :groups, class_name: "Group", optional: true
  validates :group, uniqueness: true, if: -> { groups.present? }

  # Include the has_secure_password method in the User model
  has_secure_password

  def teacher?
    self.character == 'teacher'
  end

  def student?
    self.character == 'student'
  end


end
