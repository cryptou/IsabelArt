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

class Dynasty < ActiveRecord::Base
  attr_accessible :name, :description, :date_starts, :date_ends
  translates :name, :description
  globalize_accessors :locale => [:en, :fr, :es], :attributes => [:name, :description]
  has_many :products
end
