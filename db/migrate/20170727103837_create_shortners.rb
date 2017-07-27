class CreateShortners < ActiveRecord::Migration[5.0]
  def change
    create_table :shortners do |t|
      t.string :url
      t.string :shortned_url
      t.datetime :expiry
      t.timestamps
    end
  end
end
