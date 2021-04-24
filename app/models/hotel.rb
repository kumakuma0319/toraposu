class Hotel < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :name
    validates :price
    validates :facilities
    validates :image
    validates :check_in_hour
    validates :check_in_minutes
    validates :check_out_hour
    validates :check_out_minutes
    validates :adress
  end
end
