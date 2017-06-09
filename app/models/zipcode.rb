class Zipcode < ApplicationRecord
  belongs_to :agent
  belongs_to :agency, :required => false
end
