module OrdersHelper
  def order_state(state)
	case state
	when :in_queue
	 "Waiting for processing"
	when :in_delivery
	 "In delivery"
	when :delivered
	 "Delivered"
	when :canceled
	 "Canceled"
	when :filled, :in_progress
	 "In progress"
	end
  end
end
