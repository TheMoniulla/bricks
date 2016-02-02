class CreateBricks < ActiveRecord::Migration
  def change
    create_table :bricks do |t|
      t.integer :brick_type_id
      t.integer :brick_color_id
      t.timestamps
    end
  end
end
