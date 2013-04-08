require 'spec_helper'

describe "servers/show" do
  before(:each) do
    @server = assign(:server, stub_model(Server,
      :server_use => "Server Use",
      :server_name => "Server Name",
      :server_alias => "Server Alias",
      :server_address => "Server Address",
      :hostgroup_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Server Use/)
    rendered.should match(/Server Name/)
    rendered.should match(/Server Alias/)
    rendered.should match(/Server Address/)
    rendered.should match(/1/)
  end
end
