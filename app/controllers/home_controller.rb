class HomeController < ApplicationController
  def index

  	if params['search-keywords']
  		@search = Company.search do
			fulltext params['search-keywords']
		end
		@companies = @search.results
  	end
  	  	
  end

end
