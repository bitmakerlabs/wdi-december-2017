class Catchphrase

  attr_reader :phrase

  def initialize(id, phrase)
    @id     = id
    @phrase = phrase
  end

  def self.all
    rows = $db.execute "select * from catchphrases;"

    rows.map do |row|
      Catchphrase.new(row[0], row[1])
    end
  end

  def self.where(column, value)
    rows = $db.execute "select * from catchphrases where #{column} = '#{value}'"

    rows.map do |row|
      Catchphrase.new(row[0], row[1])
    end
  end

end
