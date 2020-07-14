class AirbenderApi

  def affiliation_resp(nation)
    affiliation_resp = conn.get("characters?affiliation=#{nation}")
    JSON.parse(affiliation_resp.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com/api/v1/')
  end

end
