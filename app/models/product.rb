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

class Product < ActiveRecord::Base
  attr_accessible :title, :description, :price, :display, :country_id, :type_id, :dynasty_id
  translates :title, :description
  globalize_accessors :locale => [:en, :fr, :es], :attributes => [:title, :description]
  
  belongs_to :country
  belongs_to :type
  belongs_to :dynasty

  validates_presence_of :title, :description, :price, :country_id, :type_id
  validates :display, :sold, inclusion: { in: [true, false], message: "require true or false value" }
  validate :chinese_products_must_belong_to_a_dynasty

  def chinese_products_must_belong_to_a_dynasty
    valid = country_id != 1 || dynasty_id.present?
    errors.add(:dynasty_id, "a product from China should have a dynasty") unless  valid
  end
end
