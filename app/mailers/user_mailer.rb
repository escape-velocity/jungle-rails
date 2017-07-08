class UserMailer < ApplicationMailer
default from: 'no-reply@jungle.com'
 
  def receipt_email(order)
    @order = order
    @order_product = @order.line_items
    mail(to: @order.email, subject:"Your order with Jungle: Order ##{@order.id}")
  end
end
