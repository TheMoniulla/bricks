class CreateBrickColor < ActiveRecord::Migration
  def change
    create_table :brick_colors do |t|
      t.string :name
      t.timestamps
    end
  end
end
