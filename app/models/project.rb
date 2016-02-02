class Project < ActiveRecord::Base
  validates :name, presence: true

  has_many :bricks_projects
  has_many :bricks, through: :bricks_projects

  def to_s
    name
  end
end