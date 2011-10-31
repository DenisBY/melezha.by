class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :title
      t.text :overview
      t.references :address
      t.references :contact
      t.references :service

      t.timestamps
    end
    add_index :companies, :address_id
    add_index :companies, :contact_id
    add_index :companies, :service_id
  end
end
