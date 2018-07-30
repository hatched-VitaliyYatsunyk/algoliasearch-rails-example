class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string  :sku
      t.string  :store_number
      t.string  :description
      t.decimal :regular_price
      t.string  :dept_code
      t.decimal :sale_price
      t.integer :sale_qty
      t.datetime  :promo_start_date
      t.datetime  :promo_end_date
      t.integer :promo_min_qty
      t.integer :promo_limit_qty
      t.integer :promo_buy_qty
      t.integer :promo_get_qty
      t.string  :promo_tag
      t.string  :family_sale_code
      t.decimal :tax_pct
      t.decimal :bottle_deposit
      t.boolean :cool
      t.string  :brand_name
      t.string  :product_name
      t.integer :size
      t.string  :uom
      t.boolean :scale_flag
      t.string  :how_to_sell
      t.decimal :avg_weight
      t.string  :wgt_selector
      t.string  :item_location

      t.timestamps null: false
    end
  end
end
