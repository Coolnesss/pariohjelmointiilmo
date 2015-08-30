class AddIpToOpiskelija < ActiveRecord::Migration
  def change
    add_column :opiskelijas, :ip_address, :string
  end
end
