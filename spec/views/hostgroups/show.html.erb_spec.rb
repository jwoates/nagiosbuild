require 'spec_helper'

describe "hostgroups/show" do
  before(:each) do
    @hostgroup = assign(:hostgroup, stub_model(Hostgroup,
      :host_name => "Host Name",
      :host_alias => "Host Alias"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Host Name/)
    rendered.should match(/Host Alias/)
  end
end
