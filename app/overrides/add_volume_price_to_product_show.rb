Deface::Override.new(virtual_path: 'spree/products/_cart_form',
  name: 'add_volume_price_to_product_show',
  insert_after: 'div.add-to-cart-form-general-availability',
  text: "
    <hr>
    <%= render partial: 'spree/products/volume_pricing', locals: { product: @product } %>
  ")
