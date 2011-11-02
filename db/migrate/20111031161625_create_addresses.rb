class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :address2
      t.references :company

      t.timestamps
    end

  add_index :addresses, :company_id
  end
end
