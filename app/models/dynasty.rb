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

  validates_presence_of :name, :description, :date_starts, :date_ends
  validate :start_must_be_before_end_date

  def begins # returns the year
    :date_starts.year
  end

  def ends # returns the year
    :date_ends.year
  end

  def start_must_be_before_end_date
    valid = date_starts && date_ends && date_starts < date_ends
    errors.add(:date_starts, "must be before end date") unless valid 
  end
end
