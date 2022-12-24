class User < ApplicationRecord
    before_save { self.email = email.downcase }
    validates :name, presence: true, length: { minimum:9, maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { minimum:10, maximum: 25 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
    has_secure_password  # provides:
    # The ability to save a securely hashed password_digest attribute to the database 
    # A pair of virtual attributes21 (password and password_confirmation), including presence validations upon object creation and a validation requiring that they match
    # An authenticate method that returns the user when the password is correct (and false otherwise)
    validates :password, presence: true, length: { minimum: 6,maximum: 25 }
end
