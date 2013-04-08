require 'spec_helper'

describe "hostgroups/new" do
  before(:each) do
    assign(:hostgroup, stub_model(Hostgroup,
      :host_name => "MyString",
      :host_alias => "MyString"
    ).as_new_record)
  end

  it "renders new hostgroup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hostgroups_path, :method => "post" do
      assert_select "input#hostgroup_host_name", :name => "hostgroup[host_name]"
      assert_select "input#hostgroup_host_alias", :name => "hostgroup[host_alias]"
    end
  end
end
