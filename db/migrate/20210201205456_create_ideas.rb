class CreateIdeas < ActiveRecord::Migration[6.1]
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :description
      t.belongs_to :user, null: false, foreign_key: true
      # t.belongs_to :section, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
