Spree::BaseHelper.module_eval do

  def link_to_cart(text = nil)

    text = text ? h(text) : Spree.t('cart')
    css_class = nil

    if simple_current_order.nil? or simple_current_order.item_count.zero?
      text = "<div class='cart-amount'>(0)<span class='shopping-cart'></span></div>"
      css_class = 'empty'
    else
      text = "<div class='cart-amount'>(#{simple_current_order.item_count_with_decimal})<span class='glyphicon glyphicon-shopping-cart'></span></div>"
      css_class = 'full'
    end

    link_to text.html_safe, spree.cart_path, :class => "cart-info #{css_class}"
  end

end
