# This migration comes from spree_handling_fees (originally 20140719203455)
class AddHandlingTotalToLineItemsAndShipmentsAndOrders < ActiveRecord::Migration
  def change
    add_column :spree_line_items, :handling_total, :decimal, precision: 10, scale: 2, default: 0.0
    add_column :spree_shipments, :handling_total, :decimal, precision: 10, scale: 2, default: 0.0
    add_column :spree_orders, :handling_total, :decimal, precision: 10, scale: 2, default: 0.0
  end
end
