class AddDirectionToRobots < ActiveRecord::Migration[7.2]
  def change
    add_column :robots, :direction, :string
  end
end
