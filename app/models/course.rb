class Course < ApplicationRecord
  include Validatable

  has_and_belongs_to_many :students

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "id", "name", "updated_at"]
  end
end
