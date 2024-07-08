class AddPricePerDayToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :price_per_day, :decimal
  end
end
