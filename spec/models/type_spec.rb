# == Schema Information
#
# Table name: types
#
#  id         :integer         not null, primary key
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'spec_helper'

describe Type do
  before do
    @type = Type.new
    @type.title = "Terracotta"
    @type.description = "Awesome Terracotta is awesome"
  end

  subject { @type }

  it { should respond_to(:title) }
  it { should respond_to(:description) }
  it { should be_valid }

  describe "when name is not present" do
    before { @type.title = " " }
    it { should_not be_valid }
  end

  describe "when description is not present" do
    before { @type.description = " " }
    it { should_not be_valid }
  end
end
