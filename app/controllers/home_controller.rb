class HomeController < ApplicationController
  def index

  	if params['q'] != "" and params['q'] != nil
  		# query = params['search-keywords'].split(/'([^']+)'|"([^"]+)"|\s+|\+/).reject{|x| x.empty?}.map{|x| x.inspect }*' && '
  		query = params['q']
  		@companies = Company.search query, :star => true, :match_mode => :extended
		# @companies = @search.results

  	end
  	  	
  	@companies_last = Company.limit(8).order('id desc')

  end

end
