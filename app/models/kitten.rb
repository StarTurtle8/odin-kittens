class Kitten < ApplicationRecord
  validates :name, :age, :cuteness, :softness, presence: true
  validates :name, length: { minimum: 2 }
end
