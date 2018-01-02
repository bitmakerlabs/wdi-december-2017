class Character

  attr_reader :id, :name

  def initialize(id, name)
    @id           = id
    @name         = name
    @catchphrases = []
  end

  def add_catchphrase(phrase)
    @catchphrases << Catchphrase.new(phrase)
  end

  def speak
    catchphrases = Catchphrase.where('character_id', @id)
    return unless catchphrases.any?
    catchphrases.sample.phrase
  end

  def self.all
    rows = $db.execute "select * from characters;"

    rows.map do |row|
      Character.new(row[0], row[1])
    end
  end

  def self.find_by(column, value)
    rows      = $db.execute "select * from characters where #{column} = '#{value}'"
    row       = rows.first
    Character.new(row[0], row[1])
  end

end
