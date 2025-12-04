class CreateContactInfos < ActiveRecord::Migration[7.2]
  def change
    create_table :contact_infos do |t|
      t.string :address
      t.string :phone_number
      t.string :link
      t.string :email
      t.references :personal_info, null: false, foreign_key: true

      t.timestamps
    end
  end
end
