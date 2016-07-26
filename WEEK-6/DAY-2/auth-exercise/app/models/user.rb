class User < ActiveRecord::Base
  has_secure_password #connects to bcrypt

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true

  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    unless self.role
      self.role = :user #make everyone a user by default at sign up
    end
  end

end
