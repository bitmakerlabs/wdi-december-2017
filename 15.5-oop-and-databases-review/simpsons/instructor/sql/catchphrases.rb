class Catchphrases

  attr_accessor :id, :phrase, :character_id

  def initialize(id, phrase, character_id)
    @id           = id
    @phrase       = phrase
    @character_id = character_id
  end

  def self.all
    rows = $db.execute('select * from catchphrases;')
    catchphrases = []
    rows.each do |phrase|
      catchphrases << Catchphrases.new(phrase[0], phrase[1], phrase[2])
    end
    catchphrases
  end

end
