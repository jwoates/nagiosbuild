require 'spec_helper'

describe "servers/index" do
  before(:each) do
    assign(:servers, [
      stub_model(Server,
        :server_use => "Server Use",
        :server_name => "Server Name",
        :server_alias => "Server Alias",
        :server_address => "Server Address",
        :hostgroup_id => 1
      ),
      stub_model(Server,
        :server_use => "Server Use",
        :server_name => "Server Name",
        :server_alias => "Server Alias",
        :server_address => "Server Address",
        :hostgroup_id => 1
      )
    ])
  end

  it "renders a list of servers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Server Use".to_s, :count => 2
    assert_select "tr>td", :text => "Server Name".to_s, :count => 2
    assert_select "tr>td", :text => "Server Alias".to_s, :count => 2
    assert_select "tr>td", :text => "Server Address".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
