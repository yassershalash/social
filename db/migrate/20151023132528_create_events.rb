class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :venue
      t.string :time
      t.integer :needed
      t.integer :joined
      t.string :description
      t.references :user, index: true

      t.timestamps
    end
  end
end
