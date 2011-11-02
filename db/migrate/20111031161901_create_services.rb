class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.text :overview
      t.references :company

      t.timestamps
    end

    add_index :services, :company_id
  end
end
