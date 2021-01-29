class Appointment < ApplicationRecord
  has_and_belongs_to_many :schedules
  validates :date, presence: true
  validates :start_time, format: {with: /\A\d+\z/}
  validates :end_time, format: {with: /\A\d+\z/}
  validates :name, format: {with: /\A[a-zA-Z\s]+\z/}
end
