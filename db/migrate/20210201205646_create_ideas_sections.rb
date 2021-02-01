class CreateIdeasSections < ActiveRecord::Migration[6.1]
  def change
    create_table :ideas_sections do |t|
      t.belongs_to :section, null: false, foreign_key: true
      t.belongs_to :idea, null: false, foreign_key: true

      t.timestamps
    end
  end
end
