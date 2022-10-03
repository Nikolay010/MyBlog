class Category < ApplicationRecord
    has_many :posts

    validates :title, presence: true, uniqueness: true
end
