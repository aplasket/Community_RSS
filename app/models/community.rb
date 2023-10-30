class Community < ApplicationRecord
  validates_presence_of :name, :county, :state, :zip_code
  validates_numericality_of :zip_code
end