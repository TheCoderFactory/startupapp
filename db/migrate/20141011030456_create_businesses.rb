class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :tagline
      t.text :description
      t.string :url
      t.integer :owner_id

      t.timestamps
    end
  end
end
