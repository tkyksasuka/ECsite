class OrderDetail < ApplicationRecord
  belongs_to :item
  belongs_to :order

  enum making_status: { impossible: 0, waitting: 1, create: 2, complete: 3 }

end
