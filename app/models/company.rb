class Company < ActiveRecord::Base
  has_many :addresses
  has_many :contacts
  has_many :services
  belongs_to :user

	define_index do
		indexes :title, :sortable => true
		indexes :overview
		has created_at, updated_at
	end

end
