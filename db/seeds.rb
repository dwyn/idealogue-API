#! 1 delete all existing instances in db
#! Reset all ids / primary keys
#! Create all parents first!
#! Create children after


model_array = [User, Section, Idea, IdeasSection]
model_array.each do |model|
  model.destroy_all
  model.reset_pk_sequence
end

30.times do
  User.create!(
    email: Faker::Internet.email,
    password: "password"
  )
end
p "#{User.count} Users generated."

section_array = ["CLI", "Sinatra", "Rails", "JavaScript", "React"]
section_array.each do |section|
  Section.create!(
    title: section,
    description: Faker::Hipster.sentence
  )
end
p "#{Section.count} Sections generated."

30.times do
  Idea.create!(
    user_id: Faker::Number.between(from: User.first.id, to: User.last.id),
    title: Faker::Hipster.word,
    description: Faker::Hipster.sentence
  )
end
p "#{Idea.count} Ideas generated."

50.times do
  IdeasSection.create!(
    idea_id: Faker::Number.between(from: Idea.first.id, to: Idea.last.id),
    section_id: Faker::Number.between(from: Section.first.id, to: Section.last.id),
  )
end
p "#{IdeasSection.count} Ideas have been added to a section."