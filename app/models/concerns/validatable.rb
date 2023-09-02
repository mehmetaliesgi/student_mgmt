module Validatable 
  extend ActiveSupport::Concern

  included do
    validates :name, :description, presence: :true
    validates :name, uniqueness: true
    validates :description, length: {minimum:20, maximum:520}
  end

end