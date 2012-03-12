# == Schema Information
#
# Table name: categories
#
#  id         :integer         not null, primary key
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Category < ActiveRecord::Base
	attr_accessible :title, :description
	translates :title, :description
	globalize_accessors :locales => [:en, :fr, :es], :attributes => [:title, :description]
end