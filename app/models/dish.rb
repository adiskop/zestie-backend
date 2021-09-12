class Dish < ApplicationRecord
    belongs_to :cuisine
    has_many :comments
    belongs_to :user

    validates :name, :user, :cuisine, presence: true
end
