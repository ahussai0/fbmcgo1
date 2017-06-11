class Agent < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :appointments, :dependent => :destroy
  has_many :leads, :dependent => :destroy
  has_many :zipcodes, :dependent => :nullify
  belongs_to :agency, :required => false
  validates :lastname, :presence => true
  validates :firstname, :presence => true
  validates :code, :presence => true
end
