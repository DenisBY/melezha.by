class Company < ActiveRecord::Base
  belongs_to :address
  belongs_to :contact
  belongs_to :service

	define_index do
		indexes :title, :sortable => true
		indexes :overview
		has created_at, updated_at
	end


  searchable do
	  text :title
	  text :overview
	  text :address
	  text :service
	  text :contact
	end
end
