require 'spec_helper'

describe Hostgroup do
  it "can be instantiated" do
    Hostgroup.new.should be_an_instance_of(Hostgroup)
  end

  it "can be saved successfully" do
    Hostgroup.create.should be_persisted
  end
end