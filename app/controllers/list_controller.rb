class ListController < ApplicationController
	
	def list
		@companies_all = Company.order('id desc').all
		@companies_total = Company.last
	end

end
