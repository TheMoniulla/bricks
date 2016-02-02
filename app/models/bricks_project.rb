class BricksProject < ActiveRecord::Base
  validates :quantity, presence: true
  validates :brick_id, uniqueness: {scope: :project_id}

  belongs_to :project
  belongs_to :brick

  def to_s
    "#{brick} x #{quantity}"
  end
end


