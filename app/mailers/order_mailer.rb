class OrderMailer < ActionMailer::Base
	def send_order(order, user)
		@order = order
		@user = user
		@order_items = @order.order_items
		recipients = [@user.email, "joingamings@gmail.com"]
       	mail(to: recipients, 
       		from: 'postmaster@sandbox7ff6ab263c8b4cceb781cd13d5ec6021.mailgun.org',
       		subject: "Order #{@order.number} completed")
	end
end