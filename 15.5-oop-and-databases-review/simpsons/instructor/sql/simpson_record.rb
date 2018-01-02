class SimpsonRecord

  def self.all
    rows = $db.execute("select * from #{self}s;")
    result = []
    rows.each do |row|
      result << self.new(row[0], row[1], row[2])
    end
    result
  end

end