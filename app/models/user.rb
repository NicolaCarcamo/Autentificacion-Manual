class User < ApplicationRecord
    include BCrypt
    has_secure_password
    
    validates :email, presence: true, uniqueness: { case_sensitive: false }
end
