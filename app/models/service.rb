class Service < ActiveRecord::Base
  attr_accessible :hostgroup_id, :service_definition, :service_use

  belongs_to :hostgroup
  belongs_to :command

end