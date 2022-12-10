class User < ApplicationRecord

  validates :email, uniqueness: { message: "This email address is already in use. Please choose a different one." }

  has_many :surveys
  has_many :presentations, through: :surveys
  # belongs_to :group

  # Include the has_secure_password method in the User model
  has_secure_password

  def teacher?
    self.character == 'teacher'
  end

  def student?
    self.character == 'student'
  end


end
