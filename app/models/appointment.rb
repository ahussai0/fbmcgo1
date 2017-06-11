class Appointment < ApplicationRecord
  belongs_to :agent
  belongs_to :agency
  belongs_to :lead
  validates :lead_id, :presence => true
  validates :appt_date, :presence => true
  validates :appt_time, :presence => true
  validates :agent_id, :presence => true
  validates :agency_id, :presence => true

end
