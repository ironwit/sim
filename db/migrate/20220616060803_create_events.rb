class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :subject
      t.text :body
      t.integer :strayed_id
      t.integer :rescuer_id
      t.integer :state
      t.string :gps

      t.timestamps
    end
    add_foreign_key :events, :users, column: :strayed_id, primary_key: "id"
    add_foreign_key :events, :users, column: :rescuer_id, primary_key: "id"
  end
end
