require 'spec_helper'

describe "hostgroups/index" do
  before(:each) do
    assign(:hostgroups, [
      stub_model(Hostgroup,
        :host_name => "Host Name",
        :host_alias => "Host Alias"
      ),
      stub_model(Hostgroup,
        :host_name => "Host Name",
        :host_alias => "Host Alias"
      )
    ])
  end

  it "renders a list of hostgroups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Host Name".to_s, :count => 2
    assert_select "tr>td", :text => "Host Alias".to_s, :count => 2
  end
end
