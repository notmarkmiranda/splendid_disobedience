class CreateOptions < ActiveRecord::Migration[7.1]
  def change
    create_table :options do |t|
      t.references :question, null: false, foreign_key: true
      t.string :body, null: false
      t.boolean :correct, null: true

      t.timestamps
    end
  end
end
