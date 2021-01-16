class Product < ApplicationRecord
	belongs_to :category
	validates :name, presence: true
	validates :price, presence: true
	self.per_page = 5
end
