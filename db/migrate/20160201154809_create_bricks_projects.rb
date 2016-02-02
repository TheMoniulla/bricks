class CreateBricksProjects < ActiveRecord::Migration
  def change
    create_table :bricks_projects do |t|
      t.integer :project_id
      t.integer :brick_id
      t.integer :quantity
      t.timestamps
    end
  end
end
