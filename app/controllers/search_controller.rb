class SearchController < ApplicationController
  def index
    results = AirbenderResults.new
    nation = results.get_nation(params[:nation])
    @characters = results.affiliation_results(nation)
  end
end
