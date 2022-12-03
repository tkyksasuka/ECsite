class Order < ApplicationRecord
  belongs_to :custmer

  has_many :order_details, dependent: :destroy



end
