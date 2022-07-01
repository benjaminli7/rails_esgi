class Ingredient < ApplicationRecord
    validates :name, presence: true, length: { minimum: 3}
    def to_s
        name
    end
end
