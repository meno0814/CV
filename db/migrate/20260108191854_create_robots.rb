class CreateRobots < ActiveRecord::Migration[7.2]
  def change
    create_table :robots do |t|
      t.string :robot_name
      t.integer :x_coordinate
      t.integer :y_coordinate

      t.timestamps
    end
  end
end
