class Command < ActiveRecord::Base
  attr_accessible :command_check, :command_description
  
  has_many :services

  validates :command_check, :presence => true
  validates :command_description, :presence => true

end
