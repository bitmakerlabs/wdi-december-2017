class Character < SimpsonRecord

  attr_accessor :id, :name, :actor_id

  def initialize(id, name, actor_id)
    @id       = id
    @name     = name
    @actor_id = actor_id
  end

  def catchphrases
    catchphrases_array = []
    result = $db.execute("select * from catchphrases where character_id = #{@id};")
    result.each do |row|
      catchphrases_array << Catchphrases.new(row[0], row[1], row[2])
    end
    catchphrases_array
  end

  def catchphrase
    catchphrases.sample
  end

  def self.find_by_name(name)
    result = $db.execute("select * from characters where name = '#{name}';")
    character = result.first
    Character.new(character[0], character[1], character[2])
  end

end
