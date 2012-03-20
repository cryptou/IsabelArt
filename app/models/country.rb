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

  validates_presence_of :name_en, :name_fr, :name_es
  # validates_uniqueness_of :name       #uniqueness broken by globalize3
end
