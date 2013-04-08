require 'spec_helper'

describe Server do
  it "can be instantiated" do
    Server.new.should be_an_instance_of(Server)
  end

  it { should belong_to(:hostgroup) }
  
  it { should validate_uniqueness_of(:server_address) }
  it { should validate_uniqueness_of(:server_name) }

  it { should validate_format_of(:server_address).with('123.12.12.123') }


end