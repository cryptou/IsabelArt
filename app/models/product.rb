# == Schema Information
#
# Table name: products
#
#  id         :integer         not null, primary key
#  price      :decimal(, )
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
end
