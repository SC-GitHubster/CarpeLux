class AddDescriptionToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :description, :string
  end
end
