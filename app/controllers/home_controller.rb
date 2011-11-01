class HomeController < ApplicationController
  def index

  	if params['search-keywords'] != "" and params['search-keywords'] != nil
  		@companies = Company.search params['search-keywords'], :star => true
		# @companies = @search.results
  	end
  	  	
  end

end
