class Blog < ApplicationRecord
  belongs_to :student

  validates :title, :content, presence: :true
  validates :title, uniqueness: true
  validates :content, length: {minimum:20, maximum:520}
end
