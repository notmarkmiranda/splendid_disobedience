class AddStatusToPools < ActiveRecord::Migration[7.0]
  def change
    add_column :pools, :status, :integer, default: 0

    Pool.update_all(status: 0)
  end
end
