class Hotel < ApplicationRecord
  belongs_to :user
  has_many_attached :images

  with_options presence: true do
    validates :name
    validates :price
    validates :facilities
    validates :images
    validates :check_in_hour
    validates :check_in_minutes
    validates :check_out_hour
    validates :check_out_minutes
    validates :adress
  end
end
