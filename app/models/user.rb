class User < ActiveRecord::Base
has_secure_password
validates :email, :name, presence: true
validates :email, uniqueness: true

def username
   username = self.name + " " + self.email
end

def age
    age = ((Date.current - self.dob) / 365).to_i
end

end
