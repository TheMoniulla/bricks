class CreateBrickType < ActiveRecord::Migration
  def change
    create_table :brick_types do |t|
      t.string :name
      t.timestamps
    end
  end
end
