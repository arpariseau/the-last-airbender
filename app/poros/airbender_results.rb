class AirbenderResults

  def get_nation(nation_param)
    nation = nation_param.split("_")
    nation.map {|word| word.capitalize}.join("+")
  end

  def affiliation_results(nation)
    service = AirbenderApi.new
    service.affiliation_resp(nation)
  end

end
