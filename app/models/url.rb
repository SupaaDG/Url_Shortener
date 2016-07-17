class Url < ApplicationRecord
  validates :full, uniqueness: true
  validates :short, uniqueness: true
end
