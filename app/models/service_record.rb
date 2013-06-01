class ServiceRecord < ActiveRecord::Base
  belongs_to :service_type

  validates :service_type_id, :presence => true
  validates :mileage, :presence => true, :numericality => true
end
