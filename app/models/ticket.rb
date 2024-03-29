class Ticket < ActiveRecord::Base
  # Associations
  belongs_to :project
  belongs_to :user
  
  # Validations
  validates :title, :presence => true
  validates :description, :presence => true, :length => {:minimum => 10}
end
