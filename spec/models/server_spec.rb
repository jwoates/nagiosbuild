require 'spec_helper'

describe Server do
  it "can be instantiated" do
    Server.new.should be_an_instance_of(Server)
  end

  it "can be saved successfully" do
    Server.create.should be_persisted
  end
end