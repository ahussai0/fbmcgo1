class Lead < ApplicationRecord
  belongs_to :agent
  belongs_to :agency
  has_many :appointments, :dependent => :destroy
  validates :zip, :presence => true
  validates :status, :presence => true
  validates :state, :presence => true
  validates :lastname, :presence => true
  validates :firstname, :presence => true
  validates :city, :presence => true
  validates :agent_id, :presence => true
  validates :agency_id, :presence => true
  validates :address, :presence => true
  
end
