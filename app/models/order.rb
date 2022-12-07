class Order < ApplicationRecord
  belongs_to :custmer

  has_many :order_details, dependent: :destroy

  enum payment_method: { credit_card: 0, transfer: 1 }
  enum status: { wait_pay: 0, confirm_pay: 1, create_now: 2, shipping_preparation: 3, sent: 4 }

end
