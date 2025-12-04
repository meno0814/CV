class CreateEducationalBackgrounds < ActiveRecord::Migration[7.2]
  def change
    create_table :educational_backgrounds do |t|
      t.string :educational_level
      t.string :course
      t.string :school
      t.date :date_attended
      t.date :date_graduated
      t.references :personal_info, null: false, foreign_key: true

      t.timestamps
    end
  end
end
