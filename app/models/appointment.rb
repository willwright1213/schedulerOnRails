class Appointment < ApplicationRecord
  has_and_belongs_to_many :schedules
  validates :title, format: {with: /\A[a-zA-Z\s]+\z/}
end
