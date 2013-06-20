Deface::Override.new(:virtual_path => "spree/payments/_payment", 
                     :name => "add_sermepa_details", 
                     :insert_before => "code[erb-silent]:contains('else')") do
  '<% elsif payment.source_type.to_s.include?("Sermepa") %> 
  <span class="cc-type">
  <%= image_tag "credit_cards/credit_card.gif", :id => "creditcard-sermepa" %>
    <%= Spree.t("payment_states.#{payment.state}") %>
  </span>'
end
