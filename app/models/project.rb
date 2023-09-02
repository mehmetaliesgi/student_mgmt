class Project < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true, length: {minimum:10, maximum:1000}
  
  has_many :student_projects
  has_many :students, through: :student_projects
end
