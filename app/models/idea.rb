class Idea < ApplicationRecord
  belongs_to :user
  has_many :ideas_sections
  has_many :sections, through: :ideas_sections
  # belongs_to :section
  # has_many: :reviews
  # has_many: :ideas_technologies
  # has_many: :technologies, through: :ideas_technologies

end
