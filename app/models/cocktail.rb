class Cocktail < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :doses, :dependent => :destroy
  has_many :ingredients, :dependent => :destroy
  # validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
  # has_many :reviews,
  # validates_associated :reviews

end
