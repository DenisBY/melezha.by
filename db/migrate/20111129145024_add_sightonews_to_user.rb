class AddSightonewsToUser < ActiveRecord::Migration
  def change
    add_column :users, :news, :boolean, :default => true
  end
end
