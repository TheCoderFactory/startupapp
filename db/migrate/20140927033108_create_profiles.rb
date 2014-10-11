class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :picture
      t.string :city
      t.string :country
      t.string :phone
      t.date :dob
      t.string :tagline
      t.text :info
      t.string :website
      t.string :twitter
      t.string :facebook
      t.string :linkedin
      t.string :google_plus
      t.references :user, index: true

      t.timestamps
    end
  end
end
