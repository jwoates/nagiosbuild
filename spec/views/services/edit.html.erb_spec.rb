require 'spec_helper'

describe "services/edit" do
  before(:each) do
    @service = assign(:service, stub_model(Service,
      :service_use => "MyString",
      :service_definition => "MyString",
      :hostgroup_id => 1
    ))
  end

  it "renders the edit service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => services_path(@service), :method => "post" do
      assert_select "input#service_service_use", :name => "service[service_use]"
      assert_select "input#service_service_definition", :name => "service[service_definition]"
      assert_select "input#service_hostgroup_id", :name => "service[hostgroup_id]"
    end
  end
end
