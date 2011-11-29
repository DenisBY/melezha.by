class AddInfoToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :tel, :string
    add_column :companies, :site, :string
    add_column :companies, :skype, :string
    add_column :companies, :icq, :string
    add_column :companies, :fax, :string
    add_column :companies, :email, :string
  end
end
