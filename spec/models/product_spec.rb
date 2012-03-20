# == Schema Information
#
# Table name: products
#
#  id         :integer         not null, primary key
#  price      :integer
#  display    :boolean
#  sold       :boolean
#  country_id :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  type_id    :integer
#  dynasty_id :integer
#

require 'spec_helper'

describe Product do
  before do
    @product = Product.new
    @product.title = "Fat Lady"
    @product.description = "Very Fat Lady"
    @product.price = 2000
    @product.display = true
    @product.sold = false
    @product.country_id = 1
    @product.dynasty_id = 1
    @product.type_id = 1
  end

    subject { @product }
    it { should respond_to :title_en}
    it { should respond_to :description_en }

    it { should respond_to :dynasty_id }
    it { should respond_to :country_id }

    it { should respond_to :display }
    it { should respond_to :price }
    it { should respond_to :type_id }

    describe "when title is not present" do
      before { @product.title = " " }
      it { should_not be_valid}
    end

    describe "when description is not present" do
      before { @product.description = " " }
      it { should_not be_valid }
    end

    describe "when price is not present" do
      before { @product.price = nil }
      it { should_not be_valid }
    end

    describe "when display option is not present" do
      before { @product.display = nil }
      it { should_not be_valid }
    end

    describe "when sold attribute is nil" do
      before { @product.sold = nil }
      it { should_not be_valid }
    end

    describe "when it doesn't belong to any country" do
      before { @product.country_id = nil }
      it { should_not be_valid }
    end

    describe "when it doesn't belong to any type" do
      before { @product.type_id = nil }
      it { should_not be_valid }
    end

    describe "when product belongs to China but not to any dynasty" do
      before do 
        @product.country_id = 1
        @product.dynasty_id = nil
      end

      it { should_not be_valid }
    end

    describe "when product belongs to a country other than China and belongs to no dynasty" do
      before do
        @product.country_id = 2
        @product.dynasty_id = nil
      end

      it { should be_valid }
    end
end
