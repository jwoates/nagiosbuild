require 'spec_helper'

describe Command do
  it { should have_many(:services) }

  it { validate_presence_of(:command_check) }
  it { validate_presence_of(:command_description) }

end
