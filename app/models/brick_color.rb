class BrickColor < ActiveRecord::Base
  validates :name, presence: true

  has_many :bricks

  def to_s
    name
  end
end