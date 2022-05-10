class Reservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :movie_title
      t.string :show_date
      t.string :show_time
      t.decimal :ticket_price
      
      t.timestamps
    end
  end
end
