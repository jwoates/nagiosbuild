class Server < ActiveRecord::Base
  attr_accessible :hostgroup_id, :server_address, :server_alias, :server_name, :server_use

  belongs_to :hostgroup

  validates :server_name, :uniqueness => true
  
  validates :server_address,
              :presence => true,
              :uniqueness => true,
              :format => { :with => /^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/, :message => 'invalid IP'}
end

