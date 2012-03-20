# == Schema Information
#
# Table name: countries
#
#  id         :integer         not null, primary key
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'spec_helper'

describe Country do
  before do
    @country = Country.new
    @country.name_en = "China"
    @country.name_fr  = "Chine"
    @country.name_es = "China"
  end
  
  subject { @country }
  it { should respond_to(:name) }
  it { should respond_to(:name_en) }
  it { should respond_to(:name_fr) }
  it { should respond_to(:name_es) }

  it { should be_valid }

  describe "when name is not present" do
    before { @country.name = " " }

    it { should_not be_valid }
  end

  # describe "when name is already taken" do        # uniqueness broken by globalize3s
  #   before do
  #     country_with_same_name = Country.new
  #     country_with_same_name.name_en = "China"
  #     country_with_same_name.save
  #   end

  #   it { should_not be_valid }
  # end
end
