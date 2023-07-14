class Category < ApplicationRecord
    has_many :products

    validates :description, presence: true, length: {minimum: 3}
end
