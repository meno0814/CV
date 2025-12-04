class CreateSkills < ActiveRecord::Migration[7.2]
  def change
    create_table :skills do |t|
      t.string :type_of_skill
      t.string :level_of_proficiency
      t.references :personal_info, null: false, foreign_key: true

      t.timestamps
    end
  end
end
