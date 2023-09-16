class Project < ApplicationRecord
  include Validatable 

  has_many :student_projects
  has_many :students, through: :student_projects

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "id", "name", "updated_at"]
  end

end
