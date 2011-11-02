class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :title
      t.text :overview
      t.text :addr
      t.text :contact

      t.timestamps
    end

  end
end
