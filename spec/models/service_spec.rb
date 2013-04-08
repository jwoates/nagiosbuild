require 'spec_helper'

describe Service do
  it "can be instantiated" do
    Service.new.should be_an_instance_of(Service)
  end

  it { should belong_to(:hostgroup) }
  it { should belong_to(:command) }

end
