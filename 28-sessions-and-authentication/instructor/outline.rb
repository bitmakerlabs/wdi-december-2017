class User < ApplicationRecord

  def authenticate(submitted_password)
    salt = password_digest[0..1]
    hsp  = password_digest[2..*]
    hsp == hash(submitted_password, salt)
  end

end

def hash(str, salt)
  return operation(str, salt)
end

u = User.find_by(email: params[:email])

if u.authenticate(params[:password])
  # Access Granted
else
  # Access Denied
end
