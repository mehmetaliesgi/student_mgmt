class Student < ApplicationRecord
  has_many :blogs
  has_and_belongs_to_many :courses
  has_many :student_projects
  has_many :projects, through: :student_projects 

  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: :true
  validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Geçersiz e-posta formatı" }
  validates :first_name, :last_name, length: {minimum:2, maximum:20}

  after_create :display_student_age
  def display_student_age
    if self.date_of_birth.present?
      age = Date.today.year - self.date_of_birth.year
      puts "========= Age of student is #{age} =============="
    else
      puts "Age can not be calculated without date_of_birth"
    end
  end

end
