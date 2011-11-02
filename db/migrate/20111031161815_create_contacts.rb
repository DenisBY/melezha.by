class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :type_contact
      t.string :value
      t.references :company

      t.timestamps
    end
  add_index :contacts, :company_id
  end
end
