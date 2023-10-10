class CreatePools < ActiveRecord::Migration[7.0]
  def change
    create_table :pools do |t|
      t.string :name
      t.string :description
      t.datetime :locked_at

      t.timestamps
    end
  end
end
