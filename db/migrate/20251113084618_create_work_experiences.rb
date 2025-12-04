class CreateWorkExperiences < ActiveRecord::Migration[7.2]
  def change
    create_table :work_experiences do |t|
      t.string :company_name
      t.string :position
      t.date :start_date
      t.date :end_date
      t.references :personal_info, null: false, foreign_key: true

      t.timestamps
    end
  end
end
