require 'spec_helper'

describe Hostgroup do
  it "can be instantiated" do
    Hostgroup.new.should be_an_instance_of(Hostgroup)
  end

  it { should have_many(:servers) }
  
  it { should have_many(:services) }

  it { should validate_uniqueness_of(:host_alias) }
  it { should validate_uniqueness_of(:host_name) }

  it { should validate_format_of(:host_name).with('top-level_01_domain.com') }
  it { should validate_format_of(:host_name).not_with('Top Level Domain').with_message('Only lowercase letters, ".", "\-", and "\_" allowed') }

end