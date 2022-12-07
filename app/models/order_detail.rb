class OrderDetail < ApplicationRecord
  belongs_to :item
  belongs_to :order

  def sum_of_price
    order.price * amount
  end

  def subtotal
    @order_detail = Order_detail.all
    @total_price = 0
    @order_detail.each do |order_detail|
    @total_price += order_detail.price
    end
  end

  enum making_status: { impossible: 0, waitting: 1, create: 2, complete: 3 }

end
