class Person

  # Required & Special!!!
  def initialize(first_name, last_name)
    # "Instance Variables"
    @first_name = first_name
    @last_name  = last_name
    @awake      = true
    @tail       = false
  end

  # READER
  def first_name
    @first_name
  end

  # READER
  def last_name
    @last_name
  end

  # WRITER
  def first_name=(first_name)
    @first_name = first_name
  end

  # WRITER
  def last_name=(last_name)
    @last_name = last_name
  end

  # Regular Instance Method
  def full_name
    "#{ first_name } #{ last_name }"
  end

  def greetings
    if @awake
      if @tail
        '(bounces away)'
      else
        "Hi, my name is #{ full_name }"
      end
    else
      'Zzzzz'
    end
  end

  def slumber
    @awake = false
  end

  def wake
    @awake = true
  end

  def mutate
    @tail = true
  end

end
