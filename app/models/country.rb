# == Schema Information
#
# Table name: countries
#
#  id         :integer         not null, primary key
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Country < ActiveRecord::Base
  attr_accessible :name
  has_many :products

  translates :name
  globalize_accessors :locales => [:en, :fr, :es], :attributes => [:name]
end
