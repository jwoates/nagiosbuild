require 'spec_helper'

describe "commands/index" do
  before(:each) do
    assign(:commands, [
      stub_model(Command,
        :command_description => "Command Description",
        :command_check => "Command Check"
      ),
      stub_model(Command,
        :command_description => "Command Description",
        :command_check => "Command Check"
      )
    ])
  end

  it "renders a list of commands" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Command Description".to_s, :count => 2
    assert_select "tr>td", :text => "Command Check".to_s, :count => 2
  end
end
