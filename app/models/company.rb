class Company < ActiveRecord::Base
  belongs_to :address
  belongs_to :contact
  belongs_to :service

  searchable do
	  text :title
	  text :overview
	  text :address
	  text :service
	  text :contact
	end
end
