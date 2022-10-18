class Employee < ActiveRecord::Base
belongs_to :store
validates :first_name, presence: true
validates :last_name, presence: true
validates :hourly_rate, numericality: true,numericality: { greater_than: 40, less_than_or_equal_to: 200 }
 validates_associated :store


end
