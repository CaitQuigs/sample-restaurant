module ApplicationHelper
  def current_order
    # Use Find by id to avoid potential errors
    @current_order ||= Order.find_by_id(session[:order_id]).presence || Order.new
  end
end
