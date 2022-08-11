class User < ApplicationRecord
    validates :username, presence: true, length: { minimun: 2, maximum: 15 },
    uniqueness: { case_sensitive: false }
    has_many :messages
    has_secure_password  #that associated with bcrypt gem
end
