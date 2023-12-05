class Dog < ApplicationRecord
    validates :name, :age, :enjoys, :image, length: {minimum: 10}, presence: true
end
