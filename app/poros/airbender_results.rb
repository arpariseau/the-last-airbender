class AirbenderResults

  def get_nation(nation_param)
    nation = nation_param.split("_")
    nation.map {|word| word.capitalize}.join("+")
  end

  def affiliation_results(nation)
    service = AirbenderApi.new
    char_results = service.affiliation_resp(nation)
    char_results.map do |character|
      Character.new(character)
    end
  end

end
