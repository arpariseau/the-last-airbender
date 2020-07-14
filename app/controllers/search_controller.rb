class SearchController < ApplicationController
  def index
    results = AirbenderResults.new
    @nation = get_nation(params[:nation])
    @characters = results.affiliation_results(@nation.join("+"))
  end

  private

  def get_nation(nation_param)
    nation = nation_param.split("_")
    nation.map {|word| word.capitalize}
  end

end
