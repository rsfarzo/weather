class User < ApplicationRecord
    attr_accessor :remember_token
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

    # Returns the hash digest of the given string.
    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                    BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end

    # Returns a random token.
    def User.new_token
        SecureRandom.urlsafe_base64
    end
 
    
    # Remembers a user in the database for use in persistent sessions.
    def remember
      self.remember_token = User.new_token
      update_attribute(:remember_digest, User.digest(remember_token))
      remember_digest
    end
  
    # Returns a session token to prevent session hijacking.
    # We reuse the remember digest for convenience.
    def session_token
      remember_digest || remember
    end
      # Returns the hash digest of the given string.
  def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # Returns a random token.
  def self.new_token
    SecureRandom.urlsafe_base64
  end

  # Returns true if the given token matches the digest.
  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end
  # Forgets a user.
  def forget
    update_attribute(:remember_digest, nil)
  end
end
