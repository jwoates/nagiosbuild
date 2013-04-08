require 'spec_helper'

describe "servers/new" do
  before(:each) do
    assign(:server, stub_model(Server,
      :server_use => "MyString",
      :server_name => "MyString",
      :server_alias => "MyString",
      :server_address => "MyString",
      :hostgroup_id => 1
    ).as_new_record)
  end

  it "renders new server form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => servers_path, :method => "post" do
      assert_select "input#server_server_use", :name => "server[server_use]"
      assert_select "input#server_server_name", :name => "server[server_name]"
      assert_select "input#server_server_alias", :name => "server[server_alias]"
      assert_select "input#server_server_address", :name => "server[server_address]"
      assert_select "input#server_hostgroup_id", :name => "server[hostgroup_id]"
    end
  end
end
