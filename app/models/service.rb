class Service < ActiveRecord::Base
  attr_accessible :command, :hostgroup, :service_definition, :service_use

  belongs_to :hostgroup
  belongs_to :command

end

# h.services.create(service_use:'generic-service', command:Command.create(command_description:'Check Ping', command_check:'check_nrpe!check_ping'))

