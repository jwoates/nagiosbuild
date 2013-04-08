class Server < ActiveRecord::Base
  attr_accessible :hostgroup_id, :server_address, :server_alias, :server_name, :server_use
end
