require 'spec_helper'

describe "services/show" do
  before(:each) do
    @service = assign(:service, stub_model(Service,
      :service_use => "Service Use",
      :service_definition => "Service Definition",
      :hostgroup_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Service Use/)
    rendered.should match(/Service Definition/)
    rendered.should match(/1/)
  end
end
