class CreatePersonalInfos < ActiveRecord::Migration[7.2]
  def change
    create_table :personal_infos do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :extension
      t.date :dob
      t.string :civil_status

      t.timestamps
    end
  end
end
