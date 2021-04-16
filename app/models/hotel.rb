class Hotel < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :name
    validates :price
    validates :facilities
    validates :image
    validates :check_in
    validates :check_out
  end
end
