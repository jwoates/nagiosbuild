class Hostgroup < ActiveRecord::Base
  attr_accessible :host_alias, :host_name

  validates :host_name, 
            :format => { :with => /\A[a-z0-9\-\_.]+\z/, :message => 'Only lowercase letters, ".", "\-", and "\_" allowed' }

  validates :host_alias, :uniqueness => true

  has_many :servers
  has_many :services
  has_many :commands, :through => :services

  validates_associated :servers, :services

end