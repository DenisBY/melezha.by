class HomeController < ApplicationController
  def index

  	if params['search-keywords'] != "" and params['search-keywords'] != nil
  		# query = params['search-keywords'].split(/'([^']+)'|"([^"]+)"|\s+|\+/).reject{|x| x.empty?}.map{|x| x.inspect }*' && '
  		query = params['search-keywords']
  		@companies = Company.search query, :star => true, :match_mode => :any
		# @companies = @search.results
  	end
  	  	
  end

end
