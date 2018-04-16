json.array! @products, partial: 'products/product', as: :product
+div class="row">
  <% @orders.each do |order| %>
    <div class="col-sm-2 col-md-4">
      <h1>
        Order # <%= order.id %>:
        <%= link_to order.product.name, order.product %>
      </h1>
      <p><%= order.product.description %></p>
      <strong>$ <%= order.product.price %></strong>
      <a><%= link_to 'Show', order %></a>
    </div><!-- /col -->
  <% end %>
</div>
