class Agency < ApplicationRecord
  has_many :agents, :dependent => :nullify
  has_many :appointments, :dependent => :nullify
  has_many :leads, :dependent => :nullify
  has_many :zipcodes, :dependent => :nullify
  validates :code, :presence => true
end
