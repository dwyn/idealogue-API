Idealogue

Store app ideas (primarily for Flatiron students???)
Ideas can belong to multiple sections
Ideas can be favorited / starred
Ideas should be detailed in technologies and description


## Technologies I am considering
  - graphql
  - postgresql
  - devise
  - react
  - redux?
  - activeadmin


Flatiron's Sections
CLI
Sinatra
Rails
JavaScript
React / Redux

## Models
User
  username: string
  first_name: string
  last_name: string
  email: string
  uid: string

  has_many: :ideas
  has_many: :reviews

Idea
  enums? [:draft, :published]
  title: string
  description: text
  user_id: int
  section_id: int

  has_many: :idea_sections
  has_many: :reviews
  has_many: :ideas_technologies
  has_many: :sections, through: :idea_sections
  has_many: :technologies, through: :ideas_technologies


IdeasSection
  belongs_to: section
  belongs_to: idea

Section
How to place constraints on a table / model
  title: string
  description: text

  has_many: :idea_sections
  has_many: :ideas, through: :ideas_sections
  has_many: :users, through: :ideas

IdeasTechnology
  belongs_to: :idea
  belongs_to: :technology

Technology
  title: string
  docs_link: string

  has_many: :ideas_technologies
  has_many: :ideas, through: :ideas_technologies

Review
  star: int

  belongs_to: :ideas
  belongs_to: :users