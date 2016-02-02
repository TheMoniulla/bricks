class Brick < ActiveRecord::Base
  validates :brick_type_id, :brick_color_id, presence: true
  validates :brick_type_id, uniqueness: {scope: :brick_color_id}

  belongs_to :brick_color
  belongs_to :brick_type
  has_many :bricks_projects
  has_many :projects, through: :bricks_projects

  def to_s
    "#{brick_type} #{brick_color}"
  end
end