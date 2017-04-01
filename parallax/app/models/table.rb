class Table < ApplicationRecord
  has_many :meals
  has_many :beverages
end
