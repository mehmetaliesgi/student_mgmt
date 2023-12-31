class Blog < ApplicationRecord
  belongs_to :student

  validates :title, :content, presence: :true
  validates :title, uniqueness: true
  validates :content, length: {minimum:20, maximum:520}

  def full_name
    "#{student.first_name} #{student.last_name}"
  end

  def name_with_email
    "#{full_name} / #{student.email}"
  end

  def self.ransackable_attributes(auth_object = nil)
    ["content", "created_at", "student_id", "title", "updated_at"]
  end

end
