class User < ApplicationRecord
    has_secure_password

    has_many :cuisines
    has_many :dishes
    has_many :comments
end
