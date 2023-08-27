class Course < ApplicationRecord
  has_and_belongs_to_many :students

  validates :name, :description, presence: :true
  validates :name, uniqueness: true
  validates :description, length: {minimum:20, maximum:520}
end5
