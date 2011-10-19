class Ticket < ActiveRecord::Base
  # Associations
  belongs_to :project
  
  # Validations
  validates :title, :presence => true
  validates :description, :presence => true, :length => {:minimum => 10}
end
