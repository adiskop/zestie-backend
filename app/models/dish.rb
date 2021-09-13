class Dish < ApplicationRecord
    belongs_to :cuisine, optional: true
    has_many :comments
    belongs_to :user

    validates :name, :user, presence: true
end
