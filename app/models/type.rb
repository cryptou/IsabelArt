# == Schema Information
#
# Table name: types
#
#  id         :integer         not null, primary key
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Type < ActiveRecord::Base
  attr_accessible :title, :description
  translates :title, :description
  globalize_accessors :locale => [:en, :fr, :es], :attributes => [:title, :description]
  has_many :products

  validates_presence_of :title, :description
end
