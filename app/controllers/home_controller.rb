class HomeController < ApplicationController
  def index

  	if params['search-keywords'] != "" and params['search-keywords'] != nil
  		@search = Company.search do
			fulltext params['search-keywords']
		end
		@companies = @search.results
  	end
  	  	
  end

end
