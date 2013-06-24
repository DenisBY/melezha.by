module ApplicationHelper

	def tips
		Tip.order("RAND()").limit(1).first
	end
	# @companies_total = Company.last
end
