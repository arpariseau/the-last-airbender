class Character
  attr_reader :id, :allies, :enemies,
              :photoUrl, :name, :affiliation

  def initialize(char_hash)
    @id = char_hash[:_id]
    @allies = char_hash[:allies]
    @enemies = char_hash[:enemies]
    @photoUrl = char_hash[:photoUrl]
    @name = char_hash[:name]
    @affiliation = char_hash[:affiliation]
  end
end
