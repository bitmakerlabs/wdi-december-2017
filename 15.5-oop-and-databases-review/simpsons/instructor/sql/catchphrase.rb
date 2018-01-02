class Catchphrase < SimpsonRecord

  attr_accessor :id, :phrase, :character_id

  def initialize(id, phrase, character_id)
    @id           = id
    @phrase       = phrase
    @character_id = character_id
  end

end
