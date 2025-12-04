class AddUsernameAndPasswordToPersonalInfos < ActiveRecord::Migration[7.2]
  def change
    add_column :personal_infos, :username, :string
    add_column :personal_infos, :password_digest, :string
  end
end
