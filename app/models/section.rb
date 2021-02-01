class Section < ApplicationRecord
  has_many :ideas_sections
  has_many :ideas, through: :ideas_sections
  has_many :users, through: :ideas
end
