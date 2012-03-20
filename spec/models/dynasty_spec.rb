# == Schema Information
#
# Table name: dynasties
#
#  id          :integer         not null, primary key
#  date_starts :date
#  date_ends   :date
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

require 'spec_helper'

describe Dynasty do
  before do
    @dynasty = Dynasty.new
    @dynasty.name_en = "Han Dynasty"
    @dynasty.name_fr = "Dynastie Han"
    @dynasty.name_es = "Dynastia de Han"
    @dynasty.description_en = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
    tempor incididunt ut labore et dolore magna aliqua."
    @dynasty.description_fr = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
    tempor incididunt ut labore et dolore magna aliqua."
    @dynasty.description_es = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
    tempor incididunt ut labore et dolore magna aliqua."
    @dynasty.date_starts = "01/01/-206"
    @dynasty.date_ends = "01/01/220"
  end

  subject { @dynasty }
  it { should respond_to :name }
  it { should respond_to :name_en }
  it { should respond_to :name_fr }
  it { should respond_to :name_es }
  it { should respond_to :description_en }
  it { should respond_to :description_fr }
  it { should respond_to :description_es }
  it { should respond_to :begins }
  it { should respond_to :ends }

  it { should be_valid }

  describe "when name is not present" do
    before { @dynasty.name = " " }
    it { should_not be_valid }
  end

  describe "when description is not present" do
    before { @dynasty.description = " " }
    it { should_not be_valid }
  end

  describe "when date_starts is not present" do
    before { @dynasty.date_starts = " "}
    it { should_not be_valid }
  end

  describe "when date_ends is not present" do
    before { @dynasty.date_ends = " "}
    it { should_not be_valid }
  end

  describe "when date_ends is anterior to date_starts" do
    before do
      @dynasty.date_starts = "01/01/1800"
      @dynasty.date_ends = "01/01/1700"
    end

    it { should_not be_valid }
  end
end
