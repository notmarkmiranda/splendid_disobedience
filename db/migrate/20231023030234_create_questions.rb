class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.references :pool, null: false, foreign_key: true
      t.string :body
      t.string :description

      t.timestamps
    end
  end
end
