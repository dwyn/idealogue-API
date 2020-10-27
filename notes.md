Idealogue

Store app ideas (primarily for Flatiron students???)
Ideas can belong to multiple sections
Ideas can be favorited / starred
Ideas should be detailed in technologies and description

Lucid Charts:
https://lucid.app/invitations/accept/6459db82-0ae6-44ab-837e-0e90c87d9224


## Technologies I am considering
  - graphql 
    --> https://evilmartians.com/chronicles/graphql-on-rails-1-from-zero-to-the-first-query

    --> https://rubyonrails.org/
    --> https://www.howtographql.com/graphql-ruby/0-introduction/

  - postgresql
  - devise --> https://github.com/heartcombo/devise#getting-started
  - react
  - redux?
  - activeadmin --> https://activeadmin.info/0-installation.html
  - rspec --> https://github.com/rspec/rspec-rails
  - material UI


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