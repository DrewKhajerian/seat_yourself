class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :party_size
      t.date :date
      t.time :time
      t.references :user
      t.references :retaurant

      t.timestamps
    end
  end
end
