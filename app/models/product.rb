class Product < ApplicationRecord
  belongs_to :owner, class_name: "User"
  belongs_to :category
  has_many :bookings

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
