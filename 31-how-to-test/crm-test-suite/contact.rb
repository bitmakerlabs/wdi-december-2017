class Contact

  @@contacts = []
  @@id = 1

  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id += 1
  end

  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    new_contact
  end

  def self.all
    @@contacts
  end

  def self.find(id)
    @@contacts.find { |contact| contact.id == id }
  end

  def self.find_by(attribute, value)
    if ['first_name', 'last_name', 'email', 'note', 'id'].include?(attribute)
      @@contacts.find { |contact| contact.send(attribute) == value }
    else
      nil
    end
  end

  # Note: Does not reset @@id, like a real ORM.
  def self.delete_all
    @@contacts = []
  end

  def full_name
    "#{ first_name } #{ last_name }"
  end

  def update(attribute, value)
    if attribute == 'first_name'
      self.first_name = value
    elsif attribute == 'last_name'
      self.last_name = value
    elsif attribute == 'email'
      self.email = value
    elsif attribute == 'note'
      self.note = value
    end

  end

  def delete
    @@contacts.delete_if { |contact| contact.id == self.id }
  end

  def id
    @id
  end

  def first_name
    @first_name
  end

  def first_name=(new_fn)
    @first_name = new_fn
  end

  def last_name
    @last_name
  end

  def last_name=(new_ln)
    @last_name = new_ln
  end

  def email
    @email
  end

  def email=(new_email)
    @email = new_email
  end

  def note
    @note
  end

  def note=(new_note)
    @notes = new_note
  end

end
