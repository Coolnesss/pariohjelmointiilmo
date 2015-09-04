class AddMaxToAika < ActiveRecord::Migration
  def change
    add_column :aikas, :max, :integer
  end
end
