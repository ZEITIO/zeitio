class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :logo_large
      t.string :logo_small
      t.text :description
      t.integer :size
      t.string :email
      t.string :location
      t.integer :industry_id
      t.string :subdomain

      t.timestamps
    end
  end
end
