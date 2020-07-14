class AirbenderResults

  def affiliation_results(nation)
    service = AirbenderApi.new
    char_results = service.affiliation_resp(nation)
    char_results.map do |character|
      Character.new(character)
    end
  end

end
