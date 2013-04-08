require 'spec_helper'

describe "commands/new" do
  before(:each) do
    assign(:command, stub_model(Command,
      :command_description => "MyString",
      :command_check => "MyString"
    ).as_new_record)
  end

  it "renders new command form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => commands_path, :method => "post" do
      assert_select "input#command_command_description", :name => "command[command_description]"
      assert_select "input#command_command_check", :name => "command[command_check]"
    end
  end
end
